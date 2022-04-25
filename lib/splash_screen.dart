import 'package:calcit/main.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    NavigatetoHome();
    super.initState();
  }

  void NavigatetoHome() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Calculator()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 300,
            ),
            NeumorphicButton(
              onPressed: () {},
              style: NeumorphicStyle(
                depth: 7,
                intensity: 1,
                color: Colors.grey[300],
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
              ),
              child: SizedBox(
                height: 100,
                width: 200,
                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Calc it!',
                        textStyle: const TextStyle(
                          fontSize: 32.0,
                          fontFamily: 'nunito',
                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    totalRepeatCount: 4,
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Butn(optext: '+'),
                Butn(optext: '-'),
                Butn(optext: '/'),
                Butn(optext: 'x')
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Made using ',
                    style: TextStyle(
                        fontFamily: 'nunito',
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  FlutterLogo(
                    size: 20,
                  ),
                  Text(
                    ' with  ❤️',
                    style: TextStyle(
                        fontFamily: 'nunito',
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Butn extends StatelessWidget {
  const Butn({
    Key? key,
    required this.optext,
  }) : super(key: key);

  final String optext;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: () {},
      style: NeumorphicStyle(
        depth: 7,
        intensity: 1,
        color: Colors.grey[300],
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.circle(),
      ),
      child: Container(
        padding: EdgeInsets.all(0),
        height: 28,
        width: 28,
        child: Center(
          child: Text(
            optext,
            style: const TextStyle(
              fontSize: 20,
              fontFamily: 'nunito',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
