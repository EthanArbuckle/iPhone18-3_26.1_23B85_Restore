@interface AVCaptureCoreAnalyticsReporter
+ (int)clientApplicationIDType:(id)a3;
@end

@implementation AVCaptureCoreAnalyticsReporter

+ (int)clientApplicationIDType:(id)a3
{
  if (a3)
  {
    if ([a3 isEqualToString:@"com.apple.camera"])
    {
      return 3;
    }

    else if ([a3 isEqualToString:@"com.apple.camera.CameraMessagesApp"])
    {
      return 4;
    }

    else if ([a3 isEqualToString:@"com.apple.facetime"])
    {
      return 5;
    }

    else if ([a3 isEqualToString:@"com.apple.measure"])
    {
      return 10;
    }

    else if ([a3 isEqualToString:@"com.apple.InCallService"])
    {
      return 23;
    }

    else if ([a3 isEqualToString:@"com.apple.QuickTimePlayerX"])
    {
      return 27;
    }

    else if ([a3 isEqualToString:@"com.apple.Photo-Booth"])
    {
      return 28;
    }

    else if ([a3 isEqualToString:@"com.apple.sidecar.extension.capture"])
    {
      return 33;
    }

    else if ([a3 isEqualToString:@"com.apple.continuitycaptured"])
    {
      return 34;
    }

    else if ([a3 isEqualToString:@"com.apple.DeskCam"])
    {
      return 35;
    }

    else if ([a3 isEqualToString:@"com.apple.replayd"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"replayd"))
    {
      return 44;
    }

    else if ([a3 isEqualToString:@"com.apple.NetworkEndpointPickerUI"])
    {
      return 45;
    }

    else if ([a3 isEqualToString:@"com.apple.Music"])
    {
      return 46;
    }

    else if ([a3 isEqualToString:@"com.apple.biometrickitd"])
    {
      return 48;
    }

    else if ([a3 hasPrefix:@"com.apple."])
    {
      return 2;
    }

    else if ([a3 isEqualToString:@"net.whatsapp.WhatsApp"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"desktop.WhatsApp") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"net.whatsapp.WhatsAppSMB") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"WhatsApp"))
    {
      return 6;
    }

    else if ([a3 isEqualToString:@"com.facebook.Messenger"])
    {
      return 7;
    }

    else if ([a3 isEqualToString:@"com.skype.skype"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.skype.SkypeForiPad"))
    {
      return 8;
    }

    else if ([a3 isEqualToString:@"com.tencent.xin"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.tencent.xinWeChat"))
    {
      return 9;
    }

    else if ([a3 isEqualToString:@"com.burbn.instagram"])
    {
      return 11;
    }

    else if ([a3 isEqualToString:@"com.toyopagroup.picaboo"])
    {
      return 12;
    }

    else if ([a3 isEqualToString:@"com.zhiliaoapp.musically"])
    {
      return 13;
    }

    else if ([a3 isEqualToString:@"com.webex.meeting"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.webex.meetingmanager") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.cisco.squared") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.cisco.squared.intune") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.cisco.webexcalling") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"Cisco-Systems.Spark"))
    {
      return 14;
    }

    else if ([a3 isEqualToString:@"us.zoom.videomeetings"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"us.zoom.xos"))
    {
      return 15;
    }

    else if ([a3 isEqualToString:@"com.google.hangouts"])
    {
      return 16;
    }

    else if ([a3 isEqualToString:@"com.bluejeansnet.Blue-Jeans"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.bluejeansnet.Huddle") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.bluejeansnet.Blue"))
    {
      return 17;
    }

    else if ([a3 isEqualToString:@"com.logmein.gotomeeting"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.logmein.GoToMeeting"))
    {
      return 18;
    }

    else if ([a3 isEqualToString:@"com.logmein.joinme"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.logmein.join.me"))
    {
      return 19;
    }

    else if ([a3 isEqualToString:@"com.herzick.houseparty"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.herzick.mac"))
    {
      return 20;
    }

    else if ([a3 isEqualToString:@"com.cisco.jabberIM"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.cisco.jabberIMintune") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.cisco.JabberGuest") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.cisco.jabberIMbb"))
    {
      return 21;
    }

    else if ([a3 isEqualToString:@"com.microsoft.skype.teams"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.microsoft.teams") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.microsoft.teams2"))
    {
      return 22;
    }

    else if ([a3 isEqualToString:@"com.meetinone.meetinone"])
    {
      return 24;
    }

    else if ([a3 isEqualToString:@"com.google.meetings"])
    {
      return 25;
    }

    else if ([a3 isEqualToString:@"com.tinyspeck.slackmacgap"])
    {
      return 26;
    }

    else if ([a3 isEqualToString:@"com.tencent.tencentmeeting"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.tencent.meeting"))
    {
      return 29;
    }

    else if ([a3 isEqualToString:@"com.hnc.Discord"])
    {
      return 30;
    }

    else if ([a3 isEqualToString:@"com.obsproject.obs-studio"])
    {
      return 31;
    }

    else if ([a3 isEqualToString:@"com.alibaba.DingTalkMac"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.alibaba.DingTalkMacLite"))
    {
      return 32;
    }

    else if ([a3 isEqualToString:@"com.brave.Browser"])
    {
      return 36;
    }

    else if ([a3 isEqualToString:@"com.google.Chrome"])
    {
      return 37;
    }

    else if ([a3 isEqualToString:@"com.microsoft.edgemac"])
    {
      return 38;
    }

    else if ([a3 isEqualToString:@"org.mozilla.firefox"])
    {
      return 39;
    }

    else if ([a3 isEqualToString:@"ru.keepcoder.Telegram"])
    {
      return 40;
    }

    else if ([a3 isEqualToString:@"jp.naver.line.mac"])
    {
      return 41;
    }

    else if ([a3 isEqualToString:@"com.ecamm.EcammLive"])
    {
      return 42;
    }

    else if ([a3 isEqualToString:@"com.reincubate.macos.cam"])
    {
      return 43;
    }

    else if ([a3 isEqualToString:@"com.blackmagic-design.DaVinciCamera"])
    {
      return 47;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    +[AVCaptureCoreAnalyticsReporter clientApplicationIDType:];
    return 0;
  }
}

@end