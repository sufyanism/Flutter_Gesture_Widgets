import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gesture Detector',
      home: GestureDetectorScreen(),
      // home: MyHomePage(),
    );
  }
}

// GestureDetectorScreen() StatefulWidget Method
class GestureDetectorScreen extends StatefulWidget {
  const GestureDetectorScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GestureDetectorScreenState createState() => _GestureDetectorScreenState();
}

// GestureDetectorScreen() StatefulWidget Method extends
class _GestureDetectorScreenState extends State<GestureDetectorScreen> {
  Color color = Colors.black;
  //Text Widget
  Text text = const Text(
    " Default Screens",
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.yellow,
    ),
    maxLines: 3,
  );

  @override
  Widget build(BuildContext context) {
    // Rendering content
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 213, 255, 77),
        centerTitle: true,
        title: const Text('Gesture Detector Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              color = Colors.red;
              text = const Text(
                "OnTap Content",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              );
            });
          },
          onDoubleTap: () {
            setState(() {
              color = Colors.blueAccent;
              text = const Text(
                "OnDoubleTap  Content",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              );
            });
          },
          onLongPress: () {
            setState(() {
              color = Colors.deepOrangeAccent;
              text = const Text(
                "OnLongPress Content",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              );
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(
                    5.0,
                    5.0,
                  ), //Offset
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ],
            ),
            width: 450,
            height: 400,
            child: Center(
              child: text,
            ),
          ),
        ),
      ),
    );
  }
}
