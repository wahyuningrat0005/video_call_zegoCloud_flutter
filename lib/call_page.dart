import 'package:bucinisme/zego_config.dart';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID, required this.userName}) : super(key: key);
  final String callID;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: ZegoConfig
          .appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: ZegoConfig
          .signId, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userName,
      userName: userName,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (contex) => Navigator.of(context).pop(),
    );
  }
}
