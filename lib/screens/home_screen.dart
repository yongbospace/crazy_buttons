import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.black,
                ),
                onPressed: () {
                  print('ElevatedButton');
                },
                child: const Text('ElevatedButton'),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: () {
                  print('OutlinedButton');
                },
                child: const Text('OutlinedButton'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: () {
                  print('TextButton');
                },
                child: const Text('TextButton'),
              ),
              GestureDetector(
                onTap: () {
                  print('GestureDetector');
                },
                child: Container(
                    height: 40,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: const Text(
                      'GestureDetector',
                    )),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  foregroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> state) {
                    return state.contains(MaterialState.pressed)
                        ? Colors.blue
                        : null;
                  }),
                ),
                onPressed: () {
                  print('ElevatedButton');
                },
                child: const Text('ElevatedButton'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
