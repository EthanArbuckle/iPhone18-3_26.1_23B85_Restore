@interface IDSSessionEmbeddedControllerShareSettings
- (BOOL)showUserTermsAndConditions;
- (IDSSessionEmbeddedControllerShareSettings)init;
- (IDSSessionEmbeddedControllerShareSettings)initWithRemoteID:(id)d sessionID:(id)iD andServiceController:(id)controller appleName:(id)name;
- (void)dealloc;
- (void)doAcceptIDSInvitation;
- (void)doDeclineIDSInvitationWithReasonString:(id)string;
- (void)handleTermsAndConditions;
- (void)postInvitationNotification;
- (void)sendSharedSettings;
- (void)userFinishedTermsAndConditions:(id)conditions;
@end

@implementation IDSSessionEmbeddedControllerShareSettings

- (IDSSessionEmbeddedControllerShareSettings)init
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v7 = "[IDSSessionEmbeddedControllerShareSettings init]";
      v8 = 1024;
      v9 = 45;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] init called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 45, "[IDSSessionEmbeddedControllerShareSettings init]", 7, 0, "init called");
  v5.receiver = self;
  v5.super_class = IDSSessionEmbeddedControllerShareSettings;
  return [(IDSSessionEmbeddedControllerBase *)&v5 init];
}

- (void)dealloc
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v6 = "[IDSSessionEmbeddedControllerShareSettings dealloc]";
      v7 = 1024;
      v8 = 55;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] dealloc called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 55, "[IDSSessionEmbeddedControllerShareSettings dealloc]", 7, 0, "dealloc called");
  v4.receiver = self;
  v4.super_class = IDSSessionEmbeddedControllerShareSettings;
  [(IDSSessionEmbeddedControllerBase *)&v4 dealloc];
}

- (IDSSessionEmbeddedControllerShareSettings)initWithRemoteID:(id)d sessionID:(id)iD andServiceController:(id)controller appleName:(id)name
{
  dCopy = d;
  iDCopy = iD;
  controllerCopy = controller;
  nameCopy = name;
  v14 = [(IDSSessionEmbeddedControllerShareSettings *)self init];
  v15 = v14;
  if (v14)
  {
    [(IDSSessionEmbeddedControllerBase *)v14 setInviterID:dCopy];
    [(IDSSessionEmbeddedControllerBase *)v15 setIdsServiceController:controllerCopy];
    [(IDSSessionEmbeddedControllerBase *)v15 setInviterKind:2];
    if (sub_1000423E0())
    {
      v16 = sub_100042E68();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = "[IDSSessionEmbeddedControllerShareSettings initWithRemoteID:sessionID:andServiceController:appleName:]";
        v25 = 1024;
        v26 = 67;
        v27 = 2048;
        v28 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] set inviter kind to AppleCare self = %p", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 67, "[IDSSessionEmbeddedControllerShareSettings initWithRemoteID:sessionID:andServiceController:appleName:]", 7, 0, "set inviter kind to AppleCare self = %p", v15);
    [(IDSSessionEmbeddedControllerBase *)v15 setSessionID:iDCopy];
    if (sub_1000423E0())
    {
      v17 = sub_100042E68();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [iDCopy UTF8String];
        *buf = 136315650;
        v24 = "[IDSSessionEmbeddedControllerShareSettings initWithRemoteID:sessionID:andServiceController:appleName:]";
        v25 = 1024;
        v26 = 70;
        v27 = 2080;
        v28 = uTF8String;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] session ID = %s", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 70, "-[IDSSessionEmbeddedControllerShareSettings initWithRemoteID:sessionID:andServiceController:appleName:]", 7, 0, "session ID = %s", [iDCopy UTF8String]);
    [(IDSSessionEmbeddedControllerShareSettings *)v15 setUseAppleCareName:1];
    if (nameCopy)
    {
      if ([nameCopy isEqualToString:@"AS"])
      {
        [(IDSSessionEmbeddedControllerShareSettings *)v15 setUseAppleCareName:0];
      }

      else if (([nameCopy isEqualToString:@"AC"] & 1) == 0)
      {
        if (sub_1000423E0())
        {
          v19 = sub_100042E68();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v24 = "[IDSSessionEmbeddedControllerShareSettings initWithRemoteID:sessionID:andServiceController:appleName:]";
            v25 = 1024;
            v26 = 78;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] unknown name specifier - using AppleCare", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 78, "[IDSSessionEmbeddedControllerShareSettings initWithRemoteID:sessionID:andServiceController:appleName:]", 7, 0, "unknown name specifier - using AppleCare");
      }
    }

    if (sub_1000423E0())
    {
      v20 = sub_100042E68();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        useAppleCareName = [(IDSSessionEmbeddedControllerShareSettings *)v15 useAppleCareName];
        *buf = 136315650;
        v24 = "[IDSSessionEmbeddedControllerShareSettings initWithRemoteID:sessionID:andServiceController:appleName:]";
        v25 = 1024;
        v26 = 80;
        v27 = 1024;
        LODWORD(v28) = useAppleCareName;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] useAppleCareName %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 80, "[IDSSessionEmbeddedControllerShareSettings initWithRemoteID:sessionID:andServiceController:appleName:]", 7, 0, "useAppleCareName %d", [(IDSSessionEmbeddedControllerShareSettings *)v15 useAppleCareName]);
  }

  return v15;
}

- (void)postInvitationNotification
{
  error = 0;
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [(IDSSessionEmbeddedControllerBase *)self sessionID];
      *buf = 136315650;
      v46 = "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]";
      v47 = 1024;
      v48 = 93;
      v49 = 2080;
      selfCopy = [sessionID UTF8String];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] postInvitationNotification for %s", buf, 0x1Cu);
    }
  }

  sessionID2 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 93, "-[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]", 7, 0, "postInvitationNotification for %s", [sessionID2 UTF8String]);

  if (qword_100070A60 != -1)
  {
    sub_1000439E8();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  inviterIconPath = [(IDSSessionEmbeddedControllerBase *)self inviterIconPath];

  if (inviterIconPath)
  {
    inviterIconPath2 = [(IDSSessionEmbeddedControllerBase *)self inviterIconPath];
    CFDictionaryAddValue(Mutable, @"SBUserNotificationIconImagePath", inviterIconPath2);
  }

  inviterKind = [(IDSSessionEmbeddedControllerBase *)self inviterKind];
  MainBundle = CFBundleGetMainBundle();
  if (inviterKind == 3)
  {
    v11 = @"kSSShareSettingsAppleSupport";
  }

  else
  {
    v11 = @"kSSShareSettings";
  }

  v12 = CFBundleCopyLocalizedString(MainBundle, v11, v11, 0);
  if (v12)
  {
    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v12);
    CFRelease(v12);
  }

  inviterFullName = [(IDSSessionEmbeddedControllerAppleCare *)self inviterFullName];

  if (inviterFullName)
  {
    CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, inviterFullName);
  }

  inviterKind2 = [(IDSSessionEmbeddedControllerBase *)self inviterKind];
  v15 = CFBundleGetMainBundle();
  if (inviterKind2 == 3)
  {
    v16 = @"kSSShareSettingsAppleSupport";
  }

  else
  {
    v16 = @"kSSShareSettings";
  }

  v17 = CFBundleCopyLocalizedString(v15, v16, v16, 0);
  if (v17)
  {
    CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v17);
    CFRelease(v17);
  }

  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  isAppleTV = [idsServiceController isAppleTV];

  inviterKind3 = [(IDSSessionEmbeddedControllerBase *)self inviterKind];
  v21 = CFBundleGetMainBundle();
  if (isAppleTV)
  {
    if (inviterKind3 == 3)
    {
      v22 = @"kSSSelectAcceptShareSettingsAppleSupportAppleTV";
    }

    else
    {
      v22 = @"kSSSelectAcceptShareSettingsAppleTV";
    }
  }

  else if (inviterKind3 == 3)
  {
    v22 = @"kSSTapShareSettingsAppleSupport";
  }

  else
  {
    v22 = @"kSSTapShareSettings";
  }

  v23 = CFBundleCopyLocalizedString(v21, v22, v22, 0);
  if (v23)
  {
    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertMessageKey, v23);
    CFRelease(v23);
  }

  v24 = CFBundleGetMainBundle();
  v25 = CFBundleCopyLocalizedString(v24, @"kSSDecline", @"kSSDecline", 0);
  if (v25)
  {
    v26 = v25;
    CFDictionaryAddValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, v25);
    CFRelease(v26);
  }

  v27 = CFBundleGetMainBundle();
  v28 = CFBundleCopyLocalizedString(v27, @"kSSAccept", @"kSSAccept", 0);
  if (v28)
  {
    v29 = v28;
    CFDictionaryAddValue(Mutable, kCFUserNotificationOtherButtonTitleKey, v28);
    CFRelease(v29);
  }

  CFDictionaryAddValue(Mutable, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
  [(IDSSessionEmbeddedControllerBase *)self setInvitationNotification:CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, Mutable)];
  CFRelease(Mutable);
  invitationNotification = [(IDSSessionEmbeddedControllerBase *)self invitationNotification];
  v31 = sub_1000423E0();
  if (invitationNotification)
  {
    if (v31)
    {
      v32 = sub_100042E68();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v46 = "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]";
        v47 = 1024;
        v48 = 175;
        v49 = 1024;
        LODWORD(selfCopy) = error;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%s:%d] got CFUserNotificationCreate error %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 175, "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]", 7, 0, "got CFUserNotificationCreate error %d", error);
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, [(IDSSessionEmbeddedControllerBase *)self invitationNotification], sub_100026AE4, 0);
    v34 = sub_1000423E0();
    if (RunLoopSource)
    {
      if (v34)
      {
        v35 = sub_100042E68();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v46 = "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]";
          v47 = 1024;
          v48 = 185;
          v49 = 2048;
          selfCopy = self;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%s:%d] adding self %p to pending notifications", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 185, "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]", 7, 0, "adding self %p to pending notifications", self);
      [qword_100070AF8 addObject:self];
      if (sub_1000423E0())
      {
        v36 = sub_100042E68();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [qword_100070AF8 count];
          *buf = 136315650;
          v46 = "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]";
          v47 = 1024;
          v48 = 187;
          v49 = 2048;
          selfCopy = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%s:%d] [gPendingUserNotifications count %lu", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 187, "-[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]", 7, 0, "[gPendingUserNotifications count %lu", [qword_100070AF8 count]);
      v38 = +[NSDate date];
      [(IDSSessionEmbeddedControllerBase *)self setNotificationStartTime:v38];

      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
      v40 = [NSTimer scheduledTimerWithTimeInterval:self target:"userNotificationTimeout:" selector:0 userInfo:0 repeats:28.0];
      [(IDSSessionEmbeddedControllerBase *)self setNotificationTimeoutTimer:v40];

      invitationNotification2 = RunLoopSource;
    }

    else
    {
      if (v34)
      {
        v43 = sub_100042E68();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v46 = "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]";
          v47 = 1024;
          v48 = 180;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to create run loop source for notification", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 180, "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]", 7, 0, "Failed to create run loop source for notification");
      invitationNotification2 = [(IDSSessionEmbeddedControllerBase *)self invitationNotification];
    }

    CFRelease(invitationNotification2);
  }

  else
  {
    if (v31)
    {
      v42 = sub_100042E68();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v46 = "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]";
        v47 = 1024;
        v48 = 172;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%s:%d] failed to create notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 172, "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]", 7, 0, "failed to create notification");
  }
}

- (void)doAcceptIDSInvitation
{
  handledSessionEnd = [(IDSSessionEmbeddedControllerBase *)self handledSessionEnd];
  v4 = sub_1000423E0();
  if (handledSessionEnd)
  {
    if (v4)
    {
      v5 = sub_100042E68();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v11 = "[IDSSessionEmbeddedControllerShareSettings doAcceptIDSInvitation]";
        v12 = 1024;
        v13 = 213;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] session already ended - ignore", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 213, "[IDSSessionEmbeddedControllerShareSettings doAcceptIDSInvitation]", 7, 0, "session already ended - ignore");
  }

  else
  {
    if (v4)
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v11 = "[IDSSessionEmbeddedControllerShareSettings doAcceptIDSInvitation]";
        v12 = 1024;
        v13 = 202;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] user accepted invite", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 202, "[IDSSessionEmbeddedControllerShareSettings doAcceptIDSInvitation]", 7, 0, "user accepted invite");
    [(IDSSessionEmbeddedControllerBase *)self setAppleIDInviteWasAcceptedOrDeclined:1];
    idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
    [idsServiceController inviteWasAccepted:self];

    v8 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000D42C;
    block[3] = &unk_100068CB0;
    block[4] = self;
    dispatch_async(v8, block);
  }
}

- (void)handleTermsAndConditions
{
  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  inviterID = [(IDSSessionEmbeddedControllerBase *)self inviterID];
  v5 = [idsServiceController inviterIsInActiveSession:inviterID];

  if (!v5)
  {
    goto LABEL_17;
  }

  keyExistsAndHasValidFormat = 0;
  if (sub_1000423E0())
  {
    v6 = sub_100042E68();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[IDSSessionEmbeddedControllerShareSettings handleTermsAndConditions]";
      v22 = 1024;
      v23 = 224;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] inviter is in active session", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 224, "[IDSSessionEmbeddedControllerShareSettings handleTermsAndConditions]", 7, 0, "inviter is in active session");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ForceTC", @"com.apple.screensharingserver", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v8 = AppBooleanValue == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (sub_1000423E0())
  {
    v10 = sub_100042E68();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v21 = "[IDSSessionEmbeddedControllerShareSettings handleTermsAndConditions]";
      v22 = 1024;
      v23 = 228;
      v24 = 1024;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] forceTermsAndConditions: %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 228, "[IDSSessionEmbeddedControllerShareSettings handleTermsAndConditions]", 7, 0, "forceTermsAndConditions: %d", v9);
  if (!v9)
  {
    if (sub_1000423E0())
    {
      v16 = sub_100042E68();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v21 = "[IDSSessionEmbeddedControllerShareSettings handleTermsAndConditions]";
        v22 = 1024;
        v23 = 239;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] no need to ask for T&C just send TCAccepted message", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 239, "[IDSSessionEmbeddedControllerShareSettings handleTermsAndConditions]", 7, 0, "no need to ask for T&C just send TCAccepted message");
    idsServiceController2 = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
    [idsServiceController2 sendMessageTCAccepted];
    LOBYTE(showUserTermsAndConditions) = 1;
  }

  else
  {
LABEL_17:
    showUserTermsAndConditions = [(IDSSessionEmbeddedControllerShareSettings *)self showUserTermsAndConditions];
    if (sub_1000423E0())
    {
      v12 = sub_100042E68();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [(IDSSessionEmbeddedControllerBase *)self sessionID];
        uTF8String = [sessionID UTF8String];
        *buf = 136315906;
        v21 = "[IDSSessionEmbeddedControllerShareSettings handleTermsAndConditions]";
        v22 = 1024;
        v23 = 235;
        v24 = 1024;
        v25 = showUserTermsAndConditions;
        v26 = 2080;
        v27 = uTF8String;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] termsConditionsAccepted = %d for %s", buf, 0x22u);
      }
    }

    idsServiceController2 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 235, "-[IDSSessionEmbeddedControllerShareSettings handleTermsAndConditions]", 7, 0, "termsConditionsAccepted = %d for %s", showUserTermsAndConditions, [idsServiceController2 UTF8String]);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D844;
  block[3] = &unk_100068CD8;
  block[4] = self;
  v18 = showUserTermsAndConditions;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)userFinishedTermsAndConditions:(id)conditions
{
  conditionsCopy = conditions;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[IDSSessionEmbeddedControllerShareSettings userFinishedTermsAndConditions:]";
      v13 = 1024;
      v14 = 251;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] userFinishedTermsAndConditions", &v11, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 251, "[IDSSessionEmbeddedControllerShareSettings userFinishedTermsAndConditions:]", 7, 0, "userFinishedTermsAndConditions");
  [(IDSSessionEmbeddedControllerBase *)self stopLiveActivity];
  bOOLValue = [conditionsCopy BOOLValue];

  v7 = sub_1000423E0();
  if (bOOLValue)
  {
    if (v7)
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315394;
        v12 = "[IDSSessionEmbeddedControllerShareSettings userFinishedTermsAndConditions:]";
        v13 = 1024;
        v14 = 255;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] accepted terms and conditions", &v11, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 255, "[IDSSessionEmbeddedControllerShareSettings userFinishedTermsAndConditions:]", 7, 0, "accepted terms and conditions");
    [(IDSSessionEmbeddedControllerShareSettings *)self sendSharedSettings];
    idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
    [idsServiceController removeSession:self andEndIDSSession:0];
  }

  else
  {
    if (v7)
    {
      v10 = sub_100042E68();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315394;
        v12 = "[IDSSessionEmbeddedControllerShareSettings userFinishedTermsAndConditions:]";
        v13 = 1024;
        v14 = 261;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] declined terms", &v11, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 261, "[IDSSessionEmbeddedControllerShareSettings userFinishedTermsAndConditions:]", 7, 0, "declined terms");
    [(IDSSessionEmbeddedControllerShareSettings *)self doDeclineIDSInvitationWithReasonString:@"decline"];
  }
}

- (void)doDeclineIDSInvitationWithReasonString:(id)string
{
  stringCopy = string;
  handledSessionEnd = [(IDSSessionEmbeddedControllerBase *)self handledSessionEnd];
  v6 = sub_1000423E0();
  if (handledSessionEnd)
  {
    if (v6)
    {
      v7 = sub_100042E68();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[IDSSessionEmbeddedControllerShareSettings doDeclineIDSInvitationWithReasonString:]";
        v14 = 1024;
        v15 = 276;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] session already ended - ignore", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 276, "[IDSSessionEmbeddedControllerShareSettings doDeclineIDSInvitationWithReasonString:]", 7, 0, "session already ended - ignore");
  }

  else
  {
    if (v6)
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = "[IDSSessionEmbeddedControllerShareSettings doDeclineIDSInvitationWithReasonString:]";
        v14 = 1024;
        v15 = 270;
        v16 = 2080;
        uTF8String = [stringCopy UTF8String];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] user declined.  reason %s", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 270, "-[IDSSessionEmbeddedControllerShareSettings doDeclineIDSInvitationWithReasonString:]", 7, 0, "user declined.  reason %s", [stringCopy UTF8String]);
    [(IDSSessionEmbeddedControllerBase *)self setAppleIDInviteWasAcceptedOrDeclined:1];
    idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
    sessionID = [(IDSSessionEmbeddedControllerBase *)self sessionID];
    [idsServiceController sendMessageShareSettingsUserDecline:sessionID];

    idsServiceController2 = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
    [idsServiceController2 removeSession:self andEndIDSSession:0];
  }
}

- (void)sendSharedSettings
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[IDSSessionEmbeddedControllerShareSettings sendSharedSettings]";
      v10 = 1024;
      v11 = 281;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] user accepted T&C send system info", &v8, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 281, "[IDSSessionEmbeddedControllerShareSettings sendSharedSettings]", 7, 0, "user accepted T&C send system info");
  v4 = objc_opt_new();
  gatherSystemInfo = [v4 gatherSystemInfo];
  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  sessionID = [(IDSSessionEmbeddedControllerBase *)self sessionID];
  [idsServiceController sendMessageShareStatusResult:sessionID systemInfo:gatherSystemInfo];
}

- (BOOL)showUserTermsAndConditions
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]";
      v31 = 1024;
      v32 = 289;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] show share settings terms and conditions", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 289, "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]", 7, 0, "show share settings terms and conditions");
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      useAppleCareName = [(IDSSessionEmbeddedControllerShareSettings *)self useAppleCareName];
      *buf = 136315650;
      v30 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]";
      v31 = 1024;
      v32 = 292;
      v33 = 1024;
      LODWORD(v34) = useAppleCareName;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] useAppleCareName %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 292, "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]", 7, 0, "useAppleCareName %d", [(IDSSessionEmbeddedControllerShareSettings *)self useAppleCareName]);
  v6 = [NSNumber numberWithBool:[(IDSSessionEmbeddedControllerShareSettings *)self useAppleCareName]^ 1];
  v37[0] = @"isShareSettings";
  v37[1] = @"isAppleSupportRequest";
  v38[0] = &__kCFBooleanTrue;
  v38[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
  v35[0] = SBSUIRemoteAlertOptionViewControllerClass;
  v35[1] = SBSUIRemoteAlertOptionDismissWithHomeButton;
  v36[0] = @"TermsConditionsViewController";
  v36[1] = &__kCFBooleanFalse;
  v35[2] = SBSUIRemoteAlertOptionStatusBarStyle;
  v8 = [NSNumber numberWithInteger:0];
  v36[2] = v8;
  v36[3] = &__kCFBooleanTrue;
  v35[3] = SBSUIRemoteAlertOptionDisableFadeInAnimation;
  v35[4] = SBSUIRemoteAlertOptionUserInfo;
  v36[4] = v7;
  v9 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:5];

  v10 = SBSUIActivateRemoteAlertWithLifecycleNotifications();
  if (sub_1000423E0())
  {
    v11 = sub_100042E68();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v30 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]";
      v31 = 1024;
      v32 = 333;
      v33 = 1024;
      LODWORD(v34) = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] RemoteAlert: %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 333, "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]", 7, 0, "RemoteAlert: %d", v10);
  vsSemaphore = [(IDSSessionEmbeddedControllerBase *)self vsSemaphore];
  v13 = dispatch_time(0, 600000000000);
  v14 = dispatch_semaphore_wait(vsSemaphore, v13);
  v15 = v14 == 0;

  if (v14)
  {
    if (sub_1000423E0())
    {
      v16 = sub_100042E68();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [(IDSSessionEmbeddedControllerBase *)self sessionID];
        uTF8String = [sessionID UTF8String];
        *buf = 136315650;
        v30 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]";
        v31 = 1024;
        v32 = 338;
        v33 = 2080;
        v34 = uTF8String;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms and conditions timeout for %s", buf, 0x1Cu);
      }
    }

    sessionID2 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 338, "-[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]", 7, 0, "terms and conditions timeout for %s", [sessionID2 UTF8String]);

    [(IDSSessionEmbeddedControllerBase *)self stopLiveActivity];
  }

  if (sub_1000423E0())
  {
    v20 = sub_100042E68();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]";
      v31 = 1024;
      v32 = 342;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] woke up from semaphore", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 342, "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]", 7, 0, "woke up from semaphore");
  termsAccepted = [(IDSSessionEmbeddedControllerAppleCare *)self termsAccepted];
  v22 = sub_1000423E0();
  if (termsAccepted)
  {
    if (v22)
    {
      v23 = sub_100042E68();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v30 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]";
        v31 = 1024;
        v32 = 350;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms were accepted", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 350, "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]", 7, 0, "terms were accepted");
  }

  else
  {
    if (v22)
    {
      v24 = sub_100042E68();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        sessionID3 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
        uTF8String2 = [sessionID3 UTF8String];
        *buf = 136315650;
        v30 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]";
        v31 = 1024;
        v32 = 346;
        v33 = 2080;
        v34 = uTF8String2;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms not accepted for %s", buf, 0x1Cu);
      }
    }

    sessionID4 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 346, "-[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]", 7, 0, "terms not accepted for %s", [sessionID4 UTF8String]);

    v15 = 0;
  }

  return v15;
}

@end