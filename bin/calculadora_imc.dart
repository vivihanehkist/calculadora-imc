import 'dart:io';

void main() {
  print("Informe o seu peso (em quilogramas): ");
  var peso = double.parse(stdin.readLineSync() as String);

  print("Informe a sua altura (em metros): ");
  var altura = double.parse(stdin.readLineSync() as String);

  var imc = calcularIMC(peso, altura);
  print("Seu IMC é: $imc");
  interpretarIMC(imc);
}

double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}

void interpretarIMC(double imc) {
  if (imc < 16) {
    print("Magreza grave");
  } else if (imc <= 16 && imc <= 17) {
    print("Magreza moderada");
  } else if (imc < 18.5) {
    print("Magreza leve");
  } else if (imc >= 18.5 && imc < 25) {
    print("Saudável");
  } else if (imc >= 25 && imc < 30) {
    print("Sobrepeso");
  } else if (imc >= 30 && imc < 35) {
    print("Obesidade Grau I");
  } else if (imc >= 35 && imc < 40) {
    print("Obesidade Grau II (severa)");
  } else {
    print("Obesidade Grau III (Mórbida)");
  }
}
