@interface AVCaptureCoreAnalyticsReporter
+ (int)clientApplicationIDType:(id)type;
@end

@implementation AVCaptureCoreAnalyticsReporter

+ (int)clientApplicationIDType:(id)type
{
  if (type)
  {
    if ([type isEqualToString:@"com.apple.camera"])
    {
      return 3;
    }

    else if ([type isEqualToString:@"com.apple.camera.CameraMessagesApp"])
    {
      return 4;
    }

    else if ([type isEqualToString:@"com.apple.facetime"])
    {
      return 5;
    }

    else if ([type isEqualToString:@"com.apple.measure"])
    {
      return 10;
    }

    else if ([type isEqualToString:@"com.apple.InCallService"])
    {
      return 23;
    }

    else if ([type isEqualToString:@"com.apple.QuickTimePlayerX"])
    {
      return 27;
    }

    else if ([type isEqualToString:@"com.apple.Photo-Booth"])
    {
      return 28;
    }

    else if ([type isEqualToString:@"com.apple.sidecar.extension.capture"])
    {
      return 33;
    }

    else if ([type isEqualToString:@"com.apple.continuitycaptured"])
    {
      return 34;
    }

    else if ([type isEqualToString:@"com.apple.DeskCam"])
    {
      return 35;
    }

    else if ([type isEqualToString:@"com.apple.replayd"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"replayd"))
    {
      return 44;
    }

    else if ([type isEqualToString:@"com.apple.NetworkEndpointPickerUI"])
    {
      return 45;
    }

    else if ([type isEqualToString:@"com.apple.Music"])
    {
      return 46;
    }

    else if ([type isEqualToString:@"com.apple.biometrickitd"])
    {
      return 48;
    }

    else if ([type hasPrefix:@"com.apple."])
    {
      return 2;
    }

    else if ([type isEqualToString:@"net.whatsapp.WhatsApp"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"desktop.WhatsApp") & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"net.whatsapp.WhatsAppSMB") & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"WhatsApp"))
    {
      return 6;
    }

    else if ([type isEqualToString:@"com.facebook.Messenger"])
    {
      return 7;
    }

    else if ([type isEqualToString:@"com.skype.skype"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.skype.SkypeForiPad"))
    {
      return 8;
    }

    else if ([type isEqualToString:@"com.tencent.xin"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.tencent.xinWeChat"))
    {
      return 9;
    }

    else if ([type isEqualToString:@"com.burbn.instagram"])
    {
      return 11;
    }

    else if ([type isEqualToString:@"com.toyopagroup.picaboo"])
    {
      return 12;
    }

    else if ([type isEqualToString:@"com.zhiliaoapp.musically"])
    {
      return 13;
    }

    else if ([type isEqualToString:@"com.webex.meeting"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.webex.meetingmanager") & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.cisco.squared") & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.cisco.squared.intune") & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.cisco.webexcalling") & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"Cisco-Systems.Spark"))
    {
      return 14;
    }

    else if ([type isEqualToString:@"us.zoom.videomeetings"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"us.zoom.xos"))
    {
      return 15;
    }

    else if ([type isEqualToString:@"com.google.hangouts"])
    {
      return 16;
    }

    else if ([type isEqualToString:@"com.bluejeansnet.Blue-Jeans"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.bluejeansnet.Huddle") & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.bluejeansnet.Blue"))
    {
      return 17;
    }

    else if ([type isEqualToString:@"com.logmein.gotomeeting"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.logmein.GoToMeeting"))
    {
      return 18;
    }

    else if ([type isEqualToString:@"com.logmein.joinme"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.logmein.join.me"))
    {
      return 19;
    }

    else if ([type isEqualToString:@"com.herzick.houseparty"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.herzick.mac"))
    {
      return 20;
    }

    else if ([type isEqualToString:@"com.cisco.jabberIM"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.cisco.jabberIMintune") & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.cisco.JabberGuest") & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.cisco.jabberIMbb"))
    {
      return 21;
    }

    else if ([type isEqualToString:@"com.microsoft.skype.teams"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.microsoft.teams") & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.microsoft.teams2"))
    {
      return 22;
    }

    else if ([type isEqualToString:@"com.meetinone.meetinone"])
    {
      return 24;
    }

    else if ([type isEqualToString:@"com.google.meetings"])
    {
      return 25;
    }

    else if ([type isEqualToString:@"com.tinyspeck.slackmacgap"])
    {
      return 26;
    }

    else if ([type isEqualToString:@"com.tencent.tencentmeeting"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.tencent.meeting"))
    {
      return 29;
    }

    else if ([type isEqualToString:@"com.hnc.Discord"])
    {
      return 30;
    }

    else if ([type isEqualToString:@"com.obsproject.obs-studio"])
    {
      return 31;
    }

    else if ([type isEqualToString:@"com.alibaba.DingTalkMac"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"com.alibaba.DingTalkMacLite"))
    {
      return 32;
    }

    else if ([type isEqualToString:@"com.brave.Browser"])
    {
      return 36;
    }

    else if ([type isEqualToString:@"com.google.Chrome"])
    {
      return 37;
    }

    else if ([type isEqualToString:@"com.microsoft.edgemac"])
    {
      return 38;
    }

    else if ([type isEqualToString:@"org.mozilla.firefox"])
    {
      return 39;
    }

    else if ([type isEqualToString:@"ru.keepcoder.Telegram"])
    {
      return 40;
    }

    else if ([type isEqualToString:@"jp.naver.line.mac"])
    {
      return 41;
    }

    else if ([type isEqualToString:@"com.ecamm.EcammLive"])
    {
      return 42;
    }

    else if ([type isEqualToString:@"com.reincubate.macos.cam"])
    {
      return 43;
    }

    else if ([type isEqualToString:@"com.blackmagic-design.DaVinciCamera"])
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