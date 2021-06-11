import 'dart:io';

void main(List<String> arguments) {
  print('Hello world');

  PersegiPanjang kotak1, kotak2; //identifier
  double luasKotak1;
  kotak1 = PersegiPanjang(); //objek dari persegipanjang ditunjuk oleh kotak1
  kotak1.panjang = 2;
  kotak1.lebar = 3;

  kotak2 = PersegiPanjang();
  kotak2.panjang = double.tryParse(
      stdin.readLineSync()); //objek dari persegipanjang ditunjuk oleh kotak1
  kotak2.lebar = double.tryParse(stdin.readLineSync());

  luasKotak1 =
      kotak1.hitungLuas(); //kotak1 dihitung lalu disimpan di luasKotak1
  print(luasKotak1 +
      kotak2.hitungLuas()); //kotak2 tidak ditampung, langsung jalan
}

class PersegiPanjang {
  double panjang;
  double lebar;

  double hitungLuas() {
    return panjang * lebar;
  }
}
