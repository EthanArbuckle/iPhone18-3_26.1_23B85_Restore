@interface IDSSessionEmbeddedControllerAppleCare
- (BOOL)showUserTermsAndConditions;
- (id)inviterFullName;
- (void)doAcceptIDSInvitation;
- (void)postInvitationNotification;
- (void)shouldStartScreenSharingSession;
- (void)termsAndConditionsResult:(id)result;
@end

@implementation IDSSessionEmbeddedControllerAppleCare

- (void)postInvitationNotification
{
  error = 0;
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
      sessionID = [idsSession sessionID];
      *buf = 136315650;
      v52 = "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]";
      v53 = 1024;
      v54 = 138;
      v55 = 2080;
      selfCopy = [sessionID UTF8String];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] postInvitationNotification for %s", buf, 0x1Cu);
    }
  }

  idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  sessionID2 = [idsSession2 sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 138, "-[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]", 7, 0, "postInvitationNotification for %s", [sessionID2 UTF8String]);

  if (qword_100070A68 != -1)
  {
    sub_100043A10();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  [(IDSSessionEmbeddedControllerBase *)self addNotificationIconTo:Mutable];
  if (sub_1000423E0())
  {
    v9 = sub_100042E68();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      inviterFullName = [(IDSSessionEmbeddedControllerAppleCare *)self inviterFullName];
      uTF8String = [inviterFullName UTF8String];
      *buf = 136315650;
      v52 = "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]";
      v53 = 1024;
      v54 = 160;
      v55 = 2080;
      selfCopy = uTF8String;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] inviter name %s", buf, 0x1Cu);
    }
  }

  inviterFullName2 = [(IDSSessionEmbeddedControllerAppleCare *)self inviterFullName];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 160, "-[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]", 7, 0, "inviter name %s", [inviterFullName2 UTF8String]);

  if ([(IDSSessionEmbeddedControllerBase *)self inviterKind]!= 3)
  {
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"kSSShareYourScreen" value:&stru_100069830 table:0];
    inviterFullName3 = [(IDSSessionEmbeddedControllerAppleCare *)self inviterFullName];
    v14 = [NSString stringWithFormat:v16, inviterFullName3];

    if (!v14)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  MainBundle = CFBundleGetMainBundle();
  v14 = CFBundleCopyLocalizedString(MainBundle, @"kSSShareYourScreenAppleSupport", @"kSSShareYourScreenAppleSupport", 0);
  if (v14)
  {
LABEL_15:
    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v14);
    CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v14);
    CFRelease(v14);
  }

LABEL_16:
  inviterFullName4 = [(IDSSessionEmbeddedControllerAppleCare *)self inviterFullName];

  if (inviterFullName4)
  {
    CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, inviterFullName4);
  }

  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  isAppleTV = [idsServiceController isAppleTV];

  inviterKind = [(IDSSessionEmbeddedControllerBase *)self inviterKind];
  if (isAppleTV)
  {
    if (inviterKind != 3)
    {
      v25 = +[NSBundle mainBundle];
      v26 = v25;
      v27 = @"kSSSelectAcceptAppleTV";
      goto LABEL_27;
    }

    v22 = CFBundleGetMainBundle();
    v23 = @"kSSSelectAcceptAppleSupportAppleTV";
  }

  else
  {
    if (inviterKind != 3)
    {
      v25 = +[NSBundle mainBundle];
      v26 = v25;
      v27 = @"kSSTapAccept";
LABEL_27:
      v28 = [v25 localizedStringForKey:v27 value:&stru_100069830 table:0];
      inviterFullName5 = [(IDSSessionEmbeddedControllerAppleCare *)self inviterFullName];
      v24 = [NSString stringWithFormat:v28, inviterFullName5];

      if (!v24)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v22 = CFBundleGetMainBundle();
    v23 = @"kSSTapAcceptAppleSupport";
  }

  v24 = CFBundleCopyLocalizedString(v22, v23, v23, 0);
  if (v24)
  {
LABEL_28:
    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertMessageKey, v24);
    CFRelease(v24);
  }

LABEL_29:
  v30 = CFBundleGetMainBundle();
  v31 = CFBundleCopyLocalizedString(v30, @"kSSDecline", @"kSSDecline", 0);
  if (v31)
  {
    v32 = v31;
    CFDictionaryAddValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, v31);
    CFRelease(v32);
  }

  v33 = CFBundleGetMainBundle();
  v34 = CFBundleCopyLocalizedString(v33, @"kSSAccept", @"kSSAccept", 0);
  if (v34)
  {
    v35 = v34;
    CFDictionaryAddValue(Mutable, kCFUserNotificationOtherButtonTitleKey, v34);
    CFRelease(v35);
  }

  CFDictionaryAddValue(Mutable, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
  [(IDSSessionEmbeddedControllerBase *)self setInvitationNotification:CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, Mutable)];
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  invitationNotification = [(IDSSessionEmbeddedControllerBase *)self invitationNotification];
  v37 = sub_1000423E0();
  if (invitationNotification)
  {
    if (v37)
    {
      v38 = sub_100042E68();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v52 = "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]";
        v53 = 1024;
        v54 = 222;
        v55 = 1024;
        LODWORD(selfCopy) = error;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[%s:%d] got error %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 222, "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]", 7, 0, "got error %d", error);
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, [(IDSSessionEmbeddedControllerBase *)self invitationNotification], sub_100026AE4, 0);
    v40 = sub_1000423E0();
    if (RunLoopSource)
    {
      if (v40)
      {
        v41 = sub_100042E68();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v52 = "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]";
          v53 = 1024;
          v54 = 232;
          v55 = 2048;
          selfCopy = self;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%s:%d] adding self %p to pending notifications", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 232, "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]", 7, 0, "adding self %p to pending notifications", self);
      [qword_100070AF8 addObject:self];
      if (sub_1000423E0())
      {
        v42 = sub_100042E68();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [qword_100070AF8 count];
          *buf = 136315650;
          v52 = "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]";
          v53 = 1024;
          v54 = 234;
          v55 = 2048;
          selfCopy = v43;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%s:%d] [gPendingUserNotifications count %lu", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 234, "-[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]", 7, 0, "[gPendingUserNotifications count %lu", [qword_100070AF8 count]);
      v44 = +[NSDate date];
      [(IDSSessionEmbeddedControllerBase *)self setNotificationStartTime:v44];

      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
      v46 = [NSTimer scheduledTimerWithTimeInterval:self target:"userNotificationTimeout:" selector:0 userInfo:0 repeats:28.0];
      [(IDSSessionEmbeddedControllerBase *)self setNotificationTimeoutTimer:v46];

      invitationNotification2 = RunLoopSource;
    }

    else
    {
      if (v40)
      {
        v49 = sub_100042E68();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v52 = "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]";
          v53 = 1024;
          v54 = 227;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to create run loop source for notification", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 227, "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]", 7, 0, "Failed to create run loop source for notification");
      invitationNotification2 = [(IDSSessionEmbeddedControllerBase *)self invitationNotification];
    }

    CFRelease(invitationNotification2);
  }

  else
  {
    if (v37)
    {
      v48 = sub_100042E68();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v52 = "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]";
        v53 = 1024;
        v54 = 219;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%s:%d] failed to create notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 219, "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]", 7, 0, "failed to create notification");
  }
}

- (void)termsAndConditionsResult:(id)result
{
  resultCopy = result;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "[IDSSessionEmbeddedControllerAppleCare termsAndConditionsResult:]";
      v21 = 1024;
      v22 = 247;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] AppleCare termsAndConditionsResult called from viewservice", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 247, "[IDSSessionEmbeddedControllerAppleCare termsAndConditionsResult:]", 7, 0, "AppleCare termsAndConditionsResult called from viewservice");
  v6 = [resultCopy objectForKey:@"result"];

  -[IDSSessionEmbeddedControllerAppleCare setTermsAccepted:](self, "setTermsAccepted:", [v6 BOOLValue]);
  if (sub_1000423E0())
  {
    v7 = sub_100042E68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      termsAccepted = [(IDSSessionEmbeddedControllerAppleCare *)self termsAccepted];
      idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
      sessionID = [idsSession sessionID];
      uTF8String = [sessionID UTF8String];
      *buf = 136315906;
      v20 = "[IDSSessionEmbeddedControllerAppleCare termsAndConditionsResult:]";
      v21 = 1024;
      v22 = 250;
      v23 = 1024;
      v24 = termsAccepted;
      v25 = 2080;
      v26 = uTF8String;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] termsAndConditionsResult:%d  session %s", buf, 0x22u);
    }
  }

  termsAccepted2 = [(IDSSessionEmbeddedControllerAppleCare *)self termsAccepted];
  idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  sessionID2 = [idsSession2 sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 250, "-[IDSSessionEmbeddedControllerAppleCare termsAndConditionsResult:]", 7, 0, "termsAndConditionsResult:%d  session %s", termsAccepted2, [sessionID2 UTF8String]);

  vsSemaphore = [(IDSSessionEmbeddedControllerBase *)self vsSemaphore];

  if (vsSemaphore)
  {
    vsSemaphore2 = [(IDSSessionEmbeddedControllerBase *)self vsSemaphore];
    dispatch_semaphore_signal(vsSemaphore2);

    if (sub_1000423E0())
    {
      v17 = sub_100042E68();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[IDSSessionEmbeddedControllerAppleCare termsAndConditionsResult:]";
        v21 = 1024;
        v22 = 254;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] signaled semaphore", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 254, "[IDSSessionEmbeddedControllerAppleCare termsAndConditionsResult:]", 7, 0, "signaled semaphore");
  }

  if (![(IDSSessionEmbeddedControllerAppleCare *)self termsAccepted])
  {
    if (sub_1000423E0())
    {
      v18 = sub_100042E68();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[IDSSessionEmbeddedControllerAppleCare termsAndConditionsResult:]";
        v21 = 1024;
        v22 = 258;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] Declined terms and conditions, stopping live activity", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 258, "[IDSSessionEmbeddedControllerAppleCare termsAndConditionsResult:]", 7, 0, "Declined terms and conditions, stopping live activity");
    [(IDSSessionEmbeddedControllerBase *)self stopLiveActivity];
  }
}

- (void)doAcceptIDSInvitation
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
      sessionID = [idsSession sessionID];
      *buf = 136315650;
      v12 = "[IDSSessionEmbeddedControllerAppleCare doAcceptIDSInvitation]";
      v13 = 1024;
      v14 = 265;
      v15 = 2080;
      uTF8String = [sessionID UTF8String];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] Called [IDSSession doAcceptIDSInvitation] for %s", buf, 0x1Cu);
    }
  }

  idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  sessionID2 = [idsSession2 sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 265, "-[IDSSessionEmbeddedControllerAppleCare doAcceptIDSInvitation]", 7, 0, "Called [IDSSession doAcceptIDSInvitation] for %s", [sessionID2 UTF8String]);

  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  [idsServiceController inviteWasAccepted:self];

  [(IDSSessionEmbeddedControllerBase *)self doAcceptIDSInvitationWithAVConferenceInfo];
  [(IDSSessionEmbeddedControllerAppleCare *)self setTermsAccepted:0];
  v9 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FBF8;
  block[3] = &unk_100068CB0;
  block[4] = self;
  dispatch_async(v9, block);
}

- (BOOL)showUserTermsAndConditions
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]";
      v28 = 1024;
      v29 = 280;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] Applecare show terms and conditions", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 280, "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]", 7, 0, "Applecare show terms and conditions");
  v34[0] = SBSUIRemoteAlertOptionViewControllerClass;
  v34[1] = SBSUIRemoteAlertOptionDismissWithHomeButton;
  v35[0] = @"TermsConditionsViewController";
  v35[1] = &__kCFBooleanFalse;
  v34[2] = SBSUIRemoteAlertOptionStatusBarStyle;
  v4 = [NSNumber numberWithInteger:0];
  v35[2] = v4;
  v35[3] = &__kCFBooleanTrue;
  v34[3] = SBSUIRemoteAlertOptionDisableFadeInAnimation;
  v34[4] = SBSUIRemoteAlertOptionUserInfo;
  v32 = @"isAppleSupportRequest";
  v5 = [NSNumber numberWithBool:[(IDSSessionEmbeddedControllerBase *)self inviterKind]== 3];
  v33 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v35[4] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:5];

  v8 = SBSUIActivateRemoteAlertWithLifecycleNotifications();
  if (sub_1000423E0())
  {
    v9 = sub_100042E68();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v27 = "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]";
      v28 = 1024;
      v29 = 314;
      v30 = 1024;
      LODWORD(v31) = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] RemoteAlert: %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 314, "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]", 7, 0, "RemoteAlert: %d", v8);
  vsSemaphore = [(IDSSessionEmbeddedControllerBase *)self vsSemaphore];
  v11 = dispatch_time(0, 600000000000);
  v12 = dispatch_semaphore_wait(vsSemaphore, v11);
  v13 = v12 == 0;

  if (v12)
  {
    if (sub_1000423E0())
    {
      v14 = sub_100042E68();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
        sessionID = [idsSession sessionID];
        uTF8String = [sessionID UTF8String];
        *buf = 136315650;
        v27 = "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]";
        v28 = 1024;
        v29 = 319;
        v30 = 2080;
        v31 = uTF8String;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms and conditions timeout for %s", buf, 0x1Cu);
      }
    }

    idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
    sessionID2 = [idsSession2 sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 319, "-[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]", 7, 0, "terms and conditions timeout for %s", [sessionID2 UTF8String]);

    [(IDSSessionEmbeddedControllerBase *)self stopLiveActivity];
  }

  if (sub_1000423E0())
  {
    v20 = sub_100042E68();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]";
      v28 = 1024;
      v29 = 323;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] woke up from semaphore", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 323, "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]", 7, 0, "woke up from semaphore");
  if (![(IDSSessionEmbeddedControllerAppleCare *)self termsAccepted])
  {
    if (sub_1000423E0())
    {
      v21 = sub_100042E68();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        sessionID3 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
        uTF8String2 = [sessionID3 UTF8String];
        *buf = 136315650;
        v27 = "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]";
        v28 = 1024;
        v29 = 326;
        v30 = 2080;
        v31 = uTF8String2;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms not accepted for %s", buf, 0x1Cu);
      }
    }

    sessionID4 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 326, "-[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]", 7, 0, "terms not accepted for %s", [sessionID4 UTF8String]);

    v13 = 0;
  }

  return v13;
}

- (void)shouldStartScreenSharingSession
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[IDSSessionEmbeddedControllerAppleCare shouldStartScreenSharingSession]";
      v14 = 1024;
      v15 = 355;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] check if should show terms", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 355, "[IDSSessionEmbeddedControllerAppleCare shouldStartScreenSharingSession]", 7, 0, "check if should show terms");
  if ([(IDSSessionEmbeddedControllerBase *)self autoAcceptInvitation])
  {
    LOBYTE(showUserTermsAndConditions) = 1;
  }

  else
  {
    if (sub_1000423E0())
    {
      v5 = sub_100042E68();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[IDSSessionEmbeddedControllerAppleCare shouldStartScreenSharingSession]";
        v14 = 1024;
        v15 = 367;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] going to show terms and conditions", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 367, "[IDSSessionEmbeddedControllerAppleCare shouldStartScreenSharingSession]", 7, 0, "going to show terms and conditions");
    showUserTermsAndConditions = [(IDSSessionEmbeddedControllerAppleCare *)self showUserTermsAndConditions];
    if (sub_1000423E0())
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [(IDSSessionEmbeddedControllerBase *)self sessionID];
        uTF8String = [sessionID UTF8String];
        *buf = 136315906;
        v13 = "[IDSSessionEmbeddedControllerAppleCare shouldStartScreenSharingSession]";
        v14 = 1024;
        v15 = 369;
        v16 = 1024;
        v17 = showUserTermsAndConditions;
        v18 = 2080;
        v19 = uTF8String;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] termsConditionsAccepted = %d for %s", buf, 0x22u);
      }
    }

    sessionID2 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 369, "-[IDSSessionEmbeddedControllerAppleCare shouldStartScreenSharingSession]", 7, 0, "termsConditionsAccepted = %d for %s", showUserTermsAndConditions, [sessionID2 UTF8String]);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010708;
  block[3] = &unk_100068CD8;
  block[4] = self;
  v11 = showUserTermsAndConditions;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)inviterFullName
{
  inviterKind = [(IDSSessionEmbeddedControllerBase *)self inviterKind];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (inviterKind == 2)
  {
    v5 = @"kSSAppleCare";
  }

  else
  {
    v5 = @"kSSAppleSupport";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_100069830 table:0];

  return v6;
}

@end