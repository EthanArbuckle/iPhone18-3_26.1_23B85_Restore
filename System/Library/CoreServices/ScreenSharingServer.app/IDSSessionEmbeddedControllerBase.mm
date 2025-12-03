@interface IDSSessionEmbeddedControllerBase
- (BOOL)pauseVideoSending:(BOOL)sending;
- (BOOL)shouldShowDisconnectionUI;
- (IDSSessionEmbeddedControllerBase)init;
- (NSString)inviterIconPath;
- (id)dataForIDSAccept:(id)accept;
- (id)inviteDictionaryForRemoteInviteDictionary:(id)dictionary;
- (id)inviterIDForDisplay;
- (void)SSMediaStreamServerDidDie;
- (void)SSMediaStreamTimeout;
- (void)addNotificationIconTo:(__CFDictionary *)to;
- (void)cleanupSession;
- (void)dealloc;
- (void)doAcceptIDSInvitation;
- (void)doAcceptIDSInvitationWithAVConferenceInfo;
- (void)doDeclineIDSInvitationWithReasonString:(id)string;
- (void)doEndSession;
- (void)postInvitationNotification;
- (void)removeUserNotification;
- (void)sendScreenLockChangeMessage:(BOOL)message;
- (void)serverDiedForConference:(id)conference;
- (void)session:(id)session receivedInvitationAcceptFromID:(id)d;
- (void)session:(id)session receivedInvitationAcceptFromID:(id)d withData:(id)data;
- (void)session:(id)session receivedInvitationCancelFromID:(id)d;
- (void)session:(id)session receivedInvitationCancelFromID:(id)d withData:(id)data;
- (void)session:(id)session receivedInvitationDeclineFromID:(id)d;
- (void)session:(id)session receivedInvitationDeclineFromID:(id)d withData:(id)data;
- (void)session:(id)session receivedSessionEndFromID:(id)d withData:(id)data;
- (void)session:(id)session receivedSessionMessageFromID:(id)d withData:(id)data;
- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error;
- (void)sessionStarted:(id)started;
- (void)shouldStartScreenSharingSession;
- (void)startSendingTheScreen;
- (void)termsAndConditionsResult:(id)result;
- (void)userFinishedTermsAndConditions:(id)conditions;
- (void)userNotificationTimeout:(id)timeout;
@end

@implementation IDSSessionEmbeddedControllerBase

- (IDSSessionEmbeddedControllerBase)init
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[IDSSessionEmbeddedControllerBase init]";
      v15 = 1024;
      v16 = 212;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] init called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 212, "[IDSSessionEmbeddedControllerBase init]", 7, 0, "init called");
  v12.receiver = self;
  v12.super_class = IDSSessionEmbeddedControllerBase;
  v4 = [(IDSSessionEmbeddedControllerBase *)&v12 init];
  if (v4)
  {
    v5 = +[NSUUID UUID];
    uUIDString = [v5 UUIDString];
    [(IDSSessionEmbeddedControllerBase *)v4 setUniqueID:uUIDString];

    [(IDSSessionEmbeddedControllerBase *)v4 setDirection:0];
    v7 = dispatch_semaphore_create(0);
    stopCallIDSemaphore = v4->_stopCallIDSemaphore;
    v4->_stopCallIDSemaphore = v7;

    v9 = dispatch_semaphore_create(0);
    [(IDSSessionEmbeddedControllerBase *)v4 setVsSemaphore:v9];
  }

  if (sub_1000423E0())
  {
    v10 = sub_100042E68();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "[IDSSessionEmbeddedControllerBase init]";
      v15 = 1024;
      v16 = 222;
      v17 = 2048;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] new idssessioncontroller created %p", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 222, "[IDSSessionEmbeddedControllerBase init]", 7, 0, "new idssessioncontroller created %p", v4);
  return v4;
}

- (void)dealloc
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[IDSSessionEmbeddedControllerBase dealloc]";
      v10 = 1024;
      v11 = 228;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] dealloc called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 228, "[IDSSessionEmbeddedControllerBase dealloc]", 7, 0, "dealloc called");
  stopCallIDSemaphore = self->_stopCallIDSemaphore;
  if (stopCallIDSemaphore)
  {
    self->_stopCallIDSemaphore = 0;
  }

  [(IDSSessionEmbeddedControllerBase *)self setVsSemaphore:0];
  [(IDSSessionEmbeddedControllerBase *)self setDatagramConnection:0];
  [(IDSSessionEmbeddedControllerBase *)self setDatagramConnectionManager:0];
  [(IDSSessionEmbeddedControllerBase *)self setVnc:0];
  [(IDSSessionEmbeddedControllerBase *)self setIdsSession:0];
  [(IDSSessionEmbeddedControllerBase *)self setAvConference:0];
  [(IDSSessionEmbeddedControllerBase *)self setInviterID:0];
  [(IDSSessionEmbeddedControllerBase *)self setNotificationStartTime:0];
  notificationTimeoutTimer = [(IDSSessionEmbeddedControllerBase *)self notificationTimeoutTimer];
  [notificationTimeoutTimer invalidate];

  [(IDSSessionEmbeddedControllerBase *)self setNotificationTimeoutTimer:0];
  [(IDSSessionEmbeddedControllerBase *)self setUniqueID:0];
  [(IDSSessionEmbeddedControllerBase *)self setRemoteAVConferenceInviteDictionary:0];
  [(IDSSessionEmbeddedControllerBase *)self setIdsServiceController:0];
  [(IDSSessionEmbeddedControllerBase *)self setSessionID:0];
  if (sub_1000423E0())
  {
    v6 = sub_100042E68();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[IDSSessionEmbeddedControllerBase dealloc]";
      v10 = 1024;
      v11 = 250;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] done with dealloc", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 250, "[IDSSessionEmbeddedControllerBase dealloc]", 7, 0, "done with dealloc");
  v7.receiver = self;
  v7.super_class = IDSSessionEmbeddedControllerBase;
  [(IDSSessionEmbeddedControllerBase *)&v7 dealloc];
}

- (void)addNotificationIconTo:(__CFDictionary *)to
{
  inviterIconPath = [(IDSSessionEmbeddedControllerBase *)self inviterIconPath];
  if (inviterIconPath)
  {
    v6 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, inviterIconPath, kCFURLPOSIXPathStyle, 0);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(to, kCFUserNotificationIconURLKey, v6);
      CFRelease(v7);
    }

    inviterIconPath2 = [(IDSSessionEmbeddedControllerBase *)self inviterIconPath];
    CFDictionaryAddValue(to, @"SBUserNotificationIconImagePath", inviterIconPath2);
  }

  else
  {
    if (sub_1000423E0())
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "[IDSSessionEmbeddedControllerBase addNotificationIconTo:]";
        v12 = 1024;
        v13 = 349;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%s:%d] inviterIconPath is nil, did a subclass override the method?", &v10, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 349, "[IDSSessionEmbeddedControllerBase addNotificationIconTo:]", 3, 0, "inviterIconPath is nil, did a subclass override the method?");
  }
}

- (void)termsAndConditionsResult:(id)result
{
  resultCopy = result;
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[IDSSessionEmbeddedControllerBase termsAndConditionsResult:]";
      v7 = 1024;
      v8 = 366;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%s:%d] termsAndConditionsResult not implemented", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 366, "[IDSSessionEmbeddedControllerBase termsAndConditionsResult:]", 3, 0, "termsAndConditionsResult not implemented");
  exit(1);
}

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
      v39 = "[IDSSessionEmbeddedControllerBase postInvitationNotification]";
      v40 = 1024;
      v41 = 378;
      v42 = 2080;
      selfCopy = [sessionID UTF8String];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] postInvitationNotification for %s", buf, 0x1Cu);
    }
  }

  idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  sessionID2 = [idsSession2 sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 378, "-[IDSSessionEmbeddedControllerBase postInvitationNotification]", 7, 0, "postInvitationNotification for %s", [sessionID2 UTF8String]);

  if (qword_100070A98 != -1)
  {
    sub_100043A38();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"kSSShareYourScreen" value:&stru_100069830 table:0];
  inviterID = [(IDSSessionEmbeddedControllerBase *)self inviterID];
  stringWithSchemeTrimmed = [inviterID stringWithSchemeTrimmed];
  v13 = [NSString stringWithFormat:v10, stringWithSchemeTrimmed];

  CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v13);
  CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v13);
  v14 = SBUserNotificationLockScreenAlertHeaderKey;
  inviterID2 = [(IDSSessionEmbeddedControllerBase *)self inviterID];
  stringWithSchemeTrimmed2 = [inviterID2 stringWithSchemeTrimmed];
  CFDictionaryAddValue(Mutable, v14, stringWithSchemeTrimmed2);

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"kSSTapAccept" value:&stru_100069830 table:0];
  inviterFullName = [(IDSSessionEmbeddedControllerBase *)self inviterFullName];
  v20 = [NSString stringWithFormat:v18, inviterFullName];

  if (v20)
  {
    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertMessageKey, v20);
  }

  v21 = +[NSBundle mainBundle];
  CFDictionaryAddValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, [v21 localizedStringForKey:@"kSSDecline" value:&stru_100069830 table:0]);

  v22 = +[NSBundle mainBundle];
  CFDictionaryAddValue(Mutable, kCFUserNotificationOtherButtonTitleKey, [v22 localizedStringForKey:@"kSSAccept" value:&stru_100069830 table:0]);

  CFDictionaryAddValue(Mutable, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
  [(IDSSessionEmbeddedControllerBase *)self setInvitationNotification:CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, Mutable)];
  CFRelease(Mutable);
  invitationNotification = [(IDSSessionEmbeddedControllerBase *)self invitationNotification];
  v24 = sub_1000423E0();
  if (invitationNotification)
  {
    if (v24)
    {
      v25 = sub_100042E68();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v39 = "[IDSSessionEmbeddedControllerBase postInvitationNotification]";
        v40 = 1024;
        v41 = 414;
        v42 = 1024;
        LODWORD(selfCopy) = error;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%s:%d] got error %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 414, "[IDSSessionEmbeddedControllerBase postInvitationNotification]", 7, 0, "got error %d", error);
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, [(IDSSessionEmbeddedControllerBase *)self invitationNotification], sub_100026AE4, 0);
    v27 = sub_1000423E0();
    if (RunLoopSource)
    {
      if (v27)
      {
        v28 = sub_100042E68();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v39 = "[IDSSessionEmbeddedControllerBase postInvitationNotification]";
          v40 = 1024;
          v41 = 424;
          v42 = 2048;
          selfCopy = self;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%s:%d] adding self %p to pending notifications", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 424, "[IDSSessionEmbeddedControllerBase postInvitationNotification]", 7, 0, "adding self %p to pending notifications", self);
      [qword_100070AF8 addObject:self];
      if (sub_1000423E0())
      {
        v29 = sub_100042E68();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [qword_100070AF8 count];
          *buf = 136315650;
          v39 = "[IDSSessionEmbeddedControllerBase postInvitationNotification]";
          v40 = 1024;
          v41 = 426;
          v42 = 2048;
          selfCopy = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%s:%d] [gPendingUserNotifications count %lu", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 426, "-[IDSSessionEmbeddedControllerBase postInvitationNotification]", 7, 0, "[gPendingUserNotifications count %lu", [qword_100070AF8 count]);
      v31 = +[NSDate date];
      [(IDSSessionEmbeddedControllerBase *)self setNotificationStartTime:v31];

      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
      v33 = [NSTimer scheduledTimerWithTimeInterval:self target:"userNotificationTimeout:" selector:0 userInfo:0 repeats:28.0];
      [(IDSSessionEmbeddedControllerBase *)self setNotificationTimeoutTimer:v33];

      invitationNotification2 = RunLoopSource;
    }

    else
    {
      if (v27)
      {
        v36 = sub_100042E68();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v39 = "[IDSSessionEmbeddedControllerBase postInvitationNotification]";
          v40 = 1024;
          v41 = 419;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to create run loop source for notification", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 419, "[IDSSessionEmbeddedControllerBase postInvitationNotification]", 7, 0, "Failed to create run loop source for notification");
      invitationNotification2 = [(IDSSessionEmbeddedControllerBase *)self invitationNotification];
    }

    CFRelease(invitationNotification2);
  }

  else
  {
    if (v24)
    {
      v35 = sub_100042E68();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v39 = "[IDSSessionEmbeddedControllerBase postInvitationNotification]";
        v40 = 1024;
        v41 = 411;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%s:%d] failed to create notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 411, "[IDSSessionEmbeddedControllerBase postInvitationNotification]", 7, 0, "failed to create notification");
  }
}

- (void)userNotificationTimeout:(id)timeout
{
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSSessionEmbeddedControllerBase userNotificationTimeout:]";
      v7 = 1024;
      v8 = 440;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification timeout", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 440, "[IDSSessionEmbeddedControllerBase userNotificationTimeout:]", 7, 0, "notification timeout");
  [(IDSSessionEmbeddedControllerBase *)self removeUserNotification];
}

- (void)removeUserNotification
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v7 = "[IDSSessionEmbeddedControllerBase removeUserNotification]";
      v8 = 1024;
      v9 = 446;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] remove notification called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 446, "[IDSSessionEmbeddedControllerBase removeUserNotification]", 7, 0, "remove notification called");
  if ([(IDSSessionEmbeddedControllerBase *)self invitationNotification])
  {
    [(IDSSessionEmbeddedControllerBase *)self setNotificationTimedOut:1];
    v4 = CFUserNotificationCancel([(IDSSessionEmbeddedControllerBase *)self invitationNotification]);
    if (sub_1000423E0())
    {
      v5 = sub_100042E68();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v7 = "[IDSSessionEmbeddedControllerBase removeUserNotification]";
        v8 = 1024;
        v9 = 451;
        v10 = 1024;
        v11 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] cancel err = %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 451, "[IDSSessionEmbeddedControllerBase removeUserNotification]", 7, 0, "cancel err = %d", v4);
    [(IDSSessionEmbeddedControllerBase *)self setNotificationTimeoutTimer:0];
  }
}

- (BOOL)shouldShowDisconnectionUI
{
  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  activeSessions = [idsServiceController activeSessions];
  v4 = [activeSessions count] == 1;

  return v4;
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
      v11 = "[IDSSessionEmbeddedControllerBase doAcceptIDSInvitation]";
      v12 = 1024;
      v13 = 467;
      v14 = 2080;
      uTF8String = [sessionID UTF8String];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] Called doAcceptIDSInvitation for %s", buf, 0x1Cu);
    }
  }

  idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  sessionID2 = [idsSession2 sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 467, "-[IDSSessionEmbeddedControllerBase doAcceptIDSInvitation]", 7, 0, "Called doAcceptIDSInvitation for %s", [sessionID2 UTF8String]);

  [(IDSSessionEmbeddedControllerBase *)self setAppleIDInviteWasAcceptedOrDeclined:1];
  [(IDSSessionEmbeddedControllerBase *)self doAcceptIDSInvitationWithAVConferenceInfo];
  [(IDSSessionEmbeddedControllerBase *)self setTermsAccepted:0];
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028EAC;
  block[3] = &unk_100068CB0;
  block[4] = self;
  dispatch_async(v8, block);
}

- (void)userFinishedTermsAndConditions:(id)conditions
{
  bOOLValue = [conditions BOOLValue];
  v5 = sub_1000423E0();
  if (bOOLValue)
  {
    if (v5)
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
        sessionID = [idsSession sessionID];
        *buf = 136315650;
        v23 = "[IDSSessionEmbeddedControllerBase userFinishedTermsAndConditions:]";
        v24 = 1024;
        v25 = 484;
        v26 = 2080;
        uTF8String = [sessionID UTF8String];
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] accepted terms and conditions for %s", buf, 0x1Cu);
      }
    }

    idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
    sessionID2 = [idsSession2 sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 484, "-[IDSSessionEmbeddedControllerBase userFinishedTermsAndConditions:]", 7, 0, "accepted terms and conditions for %s", [sessionID2 UTF8String]);

    [(IDSSessionEmbeddedControllerBase *)self setTermsAccepted:1];
    if ([(IDSSessionEmbeddedControllerBase *)self sessionStartDelegateWasCalled])
    {
      if (sub_1000423E0())
      {
        v11 = sub_100042E68();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          idsSession3 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
          sessionID3 = [idsSession3 sessionID];
          uTF8String2 = [sessionID3 UTF8String];
          *buf = 136315650;
          v23 = "[IDSSessionEmbeddedControllerBase userFinishedTermsAndConditions:]";
          v24 = 1024;
          v25 = 490;
          v26 = 2080;
          uTF8String = uTF8String2;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] sessionstart delegate was already called.  Start sending screen for %s", buf, 0x1Cu);
        }
      }

      idsSession4 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
      sessionID4 = [idsSession4 sessionID];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 490, "-[IDSSessionEmbeddedControllerBase userFinishedTermsAndConditions:]", 7, 0, "sessionstart delegate was already called.  Start sending screen for %s", [sessionID4 UTF8String]);

      [(IDSSessionEmbeddedControllerBase *)self startSendingTheScreen];
    }
  }

  else
  {
    if (v5)
    {
      v17 = sub_100042E68();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        idsSession5 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
        sessionID5 = [idsSession5 sessionID];
        *buf = 136315650;
        v23 = "[IDSSessionEmbeddedControllerBase userFinishedTermsAndConditions:]";
        v24 = 1024;
        v25 = 496;
        v26 = 2080;
        uTF8String = [sessionID5 UTF8String];
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] declined terms.  endsession  %s", buf, 0x1Cu);
      }
    }

    idsSession6 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
    sessionID6 = [idsSession6 sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 496, "-[IDSSessionEmbeddedControllerBase userFinishedTermsAndConditions:]", 7, 0, "declined terms.  endsession  %s", [sessionID6 UTF8String]);

    [(IDSSessionEmbeddedControllerBase *)self doDeclineIDSInvitationWithReasonString:@"UserDeclined"];
  }
}

- (void)doDeclineIDSInvitationWithReasonString:(id)string
{
  stringCopy = string;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [stringCopy UTF8String];
      idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
      sessionID = [idsSession sessionID];
      *buf = 136315906;
      v19 = "[IDSSessionEmbeddedControllerBase doDeclineIDSInvitationWithReasonString:]";
      v20 = 1024;
      v21 = 505;
      v22 = 2080;
      v23 = uTF8String;
      v24 = 2080;
      uTF8String2 = [sessionID UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] doDeclineIDSInvitationWithReasonString: %s for %s", buf, 0x26u);
    }
  }

  uTF8String3 = [stringCopy UTF8String];
  idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  sessionID2 = [idsSession2 sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 505, "-[IDSSessionEmbeddedControllerBase doDeclineIDSInvitationWithReasonString:]", 7, 0, "doDeclineIDSInvitationWithReasonString: %s for %s", uTF8String3, [sessionID2 UTF8String]);

  [(IDSSessionEmbeddedControllerBase *)self setAppleIDInviteWasAcceptedOrDeclined:1];
  v16 = @"REASON";
  v17 = stringCopy;
  v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v13 = sub_100027558(v12);

  idsSession3 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  [idsSession3 declineInvitationWithData:v13];

  [(IDSSessionEmbeddedControllerBase *)self setIdsSessionState:5];
  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  [idsServiceController removeSession:self andEndIDSSession:0];
}

- (void)doAcceptIDSInvitationWithAVConferenceInfo
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      remoteAVConferenceInviteDictionary = [(IDSSessionEmbeddedControllerBase *)self remoteAVConferenceInviteDictionary];
      remoteAVConferenceInviteDictionary2 = [(IDSSessionEmbeddedControllerBase *)self remoteAVConferenceInviteDictionary];
      v6 = [remoteAVConferenceInviteDictionary2 description];
      *buf = 136315906;
      v22 = "[IDSSessionEmbeddedControllerBase doAcceptIDSInvitationWithAVConferenceInfo]";
      v23 = 1024;
      v24 = 516;
      v25 = 2048;
      v26 = remoteAVConferenceInviteDictionary;
      v27 = 2080;
      uTF8String = [v6 UTF8String];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] remote dict %p %s", buf, 0x26u);
    }
  }

  remoteAVConferenceInviteDictionary3 = [(IDSSessionEmbeddedControllerBase *)self remoteAVConferenceInviteDictionary];
  remoteAVConferenceInviteDictionary4 = [(IDSSessionEmbeddedControllerBase *)self remoteAVConferenceInviteDictionary];
  v9 = [remoteAVConferenceInviteDictionary4 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 516, "-[IDSSessionEmbeddedControllerBase doAcceptIDSInvitationWithAVConferenceInfo]", 7, 0, "remote dict %p %s", remoteAVConferenceInviteDictionary3, [v9 UTF8String]);

  remoteAVConferenceInviteDictionary5 = [(IDSSessionEmbeddedControllerBase *)self remoteAVConferenceInviteDictionary];
  v11 = [(IDSSessionEmbeddedControllerBase *)self inviteDictionaryForRemoteInviteDictionary:remoteAVConferenceInviteDictionary5];

  if (sub_1000423E0())
  {
    v12 = sub_100042E68();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 description];
      uTF8String2 = [v13 UTF8String];
      *buf = 136315906;
      v22 = "[IDSSessionEmbeddedControllerBase doAcceptIDSInvitationWithAVConferenceInfo]";
      v23 = 1024;
      v24 = 519;
      v25 = 2048;
      v26 = v11;
      v27 = 2080;
      uTF8String = uTF8String2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] got acceptDictionary %p %s", buf, 0x26u);
    }
  }

  v15 = [v11 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 519, "-[IDSSessionEmbeddedControllerBase doAcceptIDSInvitationWithAVConferenceInfo]", 7, 0, "got acceptDictionary %p %s", v11, [v15 UTF8String]);

  if (v11)
  {
    v16 = [(IDSSessionEmbeddedControllerBase *)self dataForIDSAccept:v11];
    idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
    [idsSession acceptInvitationWithData:v16];

    if (sub_1000423E0())
    {
      v18 = sub_100042E68();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v16 length];
        *buf = 136315650;
        v22 = "[IDSSessionEmbeddedControllerBase doAcceptIDSInvitationWithAVConferenceInfo]";
        v23 = 1024;
        v24 = 524;
        v25 = 2048;
        v26 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] accepted invite  data size %lu", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 524, "-[IDSSessionEmbeddedControllerBase doAcceptIDSInvitationWithAVConferenceInfo]", 7, 0, "accepted invite  data size %lu", [v16 length]);
  }

  else
  {
    if (sub_1000423E0())
    {
      v20 = sub_100042E68();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "[IDSSessionEmbeddedControllerBase doAcceptIDSInvitationWithAVConferenceInfo]";
        v23 = 1024;
        v24 = 527;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%s:%d] no accept dict", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 527, "[IDSSessionEmbeddedControllerBase doAcceptIDSInvitationWithAVConferenceInfo]", 3, 0, "no accept dict");
  }
}

- (void)doEndSession
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = "[IDSSessionEmbeddedControllerBase doEndSession]";
      v11 = 1024;
      v12 = 533;
      v13 = 2048;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] doEndSession %p", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 533, "[IDSSessionEmbeddedControllerBase doEndSession]", 7, 0, "doEndSession %p", self);
  [(IDSSessionEmbeddedControllerBase *)self setStoppingSession:1];
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [(IDSSessionEmbeddedControllerBase *)self sessionID];
      uTF8String = [sessionID UTF8String];
      *buf = 136315650;
      v10 = "[IDSSessionEmbeddedControllerBase doEndSession]";
      v11 = 1024;
      v12 = 536;
      v13 = 2080;
      selfCopy = uTF8String;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] called endSessionWithData for %s", buf, 0x1Cu);
    }
  }

  sessionID2 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 536, "-[IDSSessionEmbeddedControllerBase doEndSession]", 7, 0, "called endSessionWithData for %s", [sessionID2 UTF8String]);

  idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  [idsSession endSessionWithData:0];

  [(IDSSessionEmbeddedControllerBase *)self cleanupSession];
}

- (void)shouldStartScreenSharingSession
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
      sessionID = [idsSession sessionID];
      *buf = 136315650;
      v10 = "[IDSSessionEmbeddedControllerBase shouldStartScreenSharingSession]";
      v11 = 1024;
      v12 = 551;
      v13 = 2080;
      uTF8String = [sessionID UTF8String];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] shouldStartScreenSharingSession called for %s", buf, 0x1Cu);
    }
  }

  idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  sessionID2 = [idsSession2 sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 551, "-[IDSSessionEmbeddedControllerBase shouldStartScreenSharingSession]", 7, 0, "shouldStartScreenSharingSession called for %s", [sessionID2 UTF8String]);

  [(IDSSessionEmbeddedControllerBase *)self setTermsAccepted:1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029CE4;
  block[3] = &unk_100068CB0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)startSendingTheScreen
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v59 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
      v60 = 1024;
      v61 = 562;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] startSendingTheScreen", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 562, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "startSendingTheScreen");
  [(IDSSessionEmbeddedControllerBase *)self setIdsSessionState:3];
  allowsAudioChat = [(IDSSessionEmbeddedControllerBase *)self allowsAudioChat];
  idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  [idsSession setIsMuted:allowsAudioChat ^ 1];

  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  destination = [idsSession2 destination];
  v9 = [idsServiceController datagramConnectionFromIDS:destination];
  [(IDSSessionEmbeddedControllerBase *)self setDatagramConnection:v9];

  if (sub_1000423E0())
  {
    v10 = sub_100042E68();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      datagramConnection = [(IDSSessionEmbeddedControllerBase *)self datagramConnection];
      *buf = 136315650;
      v59 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
      v60 = 1024;
      v61 = 576;
      v62 = 2048;
      v63 = datagramConnection;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] got datagramConnection %p", buf, 0x1Cu);
    }
  }

  datagramConnection2 = [(IDSSessionEmbeddedControllerBase *)self datagramConnection];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 576, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "got datagramConnection %p", datagramConnection2);

  datagramConnection3 = [(IDSSessionEmbeddedControllerBase *)self datagramConnection];

  if (datagramConnection3)
  {
    v14 = [NWConnectionManager alloc];
    datagramConnection4 = [(IDSSessionEmbeddedControllerBase *)self datagramConnection];
    v16 = [(NWConnectionManager *)v14 initWithNWConnection:datagramConnection4];
    [(IDSSessionEmbeddedControllerBase *)self setDatagramConnectionManager:v16];

    if (sub_1000423E0())
    {
      v17 = sub_100042E68();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        datagramConnectionManager = [(IDSSessionEmbeddedControllerBase *)self datagramConnectionManager];
        stateString = [datagramConnectionManager stateString];
        uTF8String = [stateString UTF8String];
        *buf = 136315650;
        v59 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
        v60 = 1024;
        v61 = 584;
        v62 = 2080;
        v63 = uTF8String;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] current state of connection %s", buf, 0x1Cu);
      }
    }

    datagramConnectionManager2 = [(IDSSessionEmbeddedControllerBase *)self datagramConnectionManager];
    stateString2 = [datagramConnectionManager2 stateString];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 584, "-[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "current state of connection %s", [stateString2 UTF8String]);

    datagramConnectionManager3 = [(IDSSessionEmbeddedControllerBase *)self datagramConnectionManager];
    [datagramConnectionManager3 waitForConnection:10000];

    if (sub_1000423E0())
    {
      v24 = sub_100042E68();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        datagramConnectionManager4 = [(IDSSessionEmbeddedControllerBase *)self datagramConnectionManager];
        stateString3 = [datagramConnectionManager4 stateString];
        uTF8String2 = [stateString3 UTF8String];
        *buf = 136315650;
        v59 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
        v60 = 1024;
        v61 = 586;
        v62 = 2080;
        v63 = uTF8String2;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] current state of connection %s", buf, 0x1Cu);
      }
    }

    datagramConnectionManager5 = [(IDSSessionEmbeddedControllerBase *)self datagramConnectionManager];
    stateString4 = [datagramConnectionManager5 stateString];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 586, "-[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "current state of connection %s", [stateString4 UTF8String]);

    datagramConnection5 = [(IDSSessionEmbeddedControllerBase *)self datagramConnection];
    connectionState = [datagramConnection5 connectionState];

    if (connectionState == 3)
    {
      idsServiceController2 = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
      [idsServiceController2 addActiveSession:self];

      [(IDSSessionEmbeddedControllerBase *)self setRemoteAVConferenceInviteDictionary:0];
      idsServiceController3 = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
      [idsServiceController3 createStatusBar];

      idsServiceController4 = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
      [idsServiceController4 createLockScreenNotifier];

      LODWORD(idsServiceController4) = [(IDSSessionEmbeddedControllerBase *)self startOutPaused];
      v35 = sub_1000423E0();
      if (idsServiceController4)
      {
        if (v35)
        {
          v36 = sub_100042E68();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v59 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
            v60 = 1024;
            v61 = 604;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%s:%d] want to start out paused", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 604, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "want to start out paused");
        avConference = self->_avConference;
        callID = self->_callID;
        v57 = 0;
        if ([(AVConference *)avConference setPauseVideo:1 callID:callID error:&v57])
        {
          if (sub_1000423E0())
          {
            v39 = sub_100042E68();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v59 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
              v60 = 1024;
              v61 = 609;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[%s:%d] video should be paused", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 609, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "video should be paused");
        }
      }

      else
      {
        if (v35)
        {
          v47 = sub_100042E68();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v59 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
            v60 = 1024;
            v61 = 612;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%s:%d] not paused at start", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 612, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "not paused at start");
      }

      v48 = objc_alloc_init(VNCServer);
      [(IDSSessionEmbeddedControllerBase *)self setVnc:v48];

      if (sub_1000423E0())
      {
        v49 = sub_100042E68();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = [(IDSSessionEmbeddedControllerBase *)self vnc];
          *buf = 136315650;
          v59 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
          v60 = 1024;
          v61 = 616;
          v62 = 2048;
          v63 = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[%s:%d] allocate screen sharing session %p", buf, 0x1Cu);
        }
      }

      v51 = [(IDSSessionEmbeddedControllerBase *)self vnc];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 616, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "allocate screen sharing session %p", v51);

      v52 = [(IDSSessionEmbeddedControllerBase *)self vnc];
      datagramConnectionManager6 = [(IDSSessionEmbeddedControllerBase *)self datagramConnectionManager];
      [v52 startScreenSharingSession:1 NWConnectionManager:datagramConnectionManager6 sessionController:self];

      if (sub_1000423E0())
      {
        v54 = sub_100042E68();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v59 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
          v60 = 1024;
          v61 = 619;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[%s:%d] t&c accepted", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 619, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "t&c accepted");
      v55 = [(IDSSessionEmbeddedControllerBase *)self vnc];
      [v55 termsAndConditionsAccepted];

      if (sub_1000423E0())
      {
        v56 = sub_100042E68();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v59 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
          v60 = 1024;
          v61 = 621;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[%s:%d] start avc streams", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 621, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "start avc streams");
      mediaStreamController = [(IDSSessionEmbeddedControllerBase *)self mediaStreamController];
      [mediaStreamController start];
    }

    else
    {
      if (sub_1000423E0())
      {
        v41 = sub_100042E68();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          datagramConnectionManager7 = [(IDSSessionEmbeddedControllerBase *)self datagramConnectionManager];
          stateString5 = [datagramConnectionManager7 stateString];
          uTF8String3 = [stateString5 UTF8String];
          *buf = 136315650;
          v59 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
          v60 = 1024;
          v61 = 589;
          v62 = 2080;
          v63 = uTF8String3;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%s:%d] unable to init connection state %s", buf, 0x1Cu);
        }
      }

      mediaStreamController = [(IDSSessionEmbeddedControllerBase *)self datagramConnectionManager];
      stateString6 = [mediaStreamController stateString];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 589, "-[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 5, 0, "unable to init connection state %s", [stateString6 UTF8String]);
    }
  }

  else
  {
    if (sub_1000423E0())
    {
      v40 = sub_100042E68();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v59 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
        v60 = 1024;
        v61 = 579;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%s:%d] unable to get datagram connection", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 579, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 5, 0, "unable to get datagram connection");
  }
}

- (void)session:(id)session receivedInvitationAcceptFromID:(id)d withData:(id)data
{
  dCopy = d;
  v7 = sub_1000273A0(data);
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (sub_1000423E0())
    {
      v13 = sub_100042E68();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationAcceptFromID:withData:]";
        v16 = 1024;
        v17 = 638;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%s:%d] receivedInvitationAcceptFromID with invalid dictionary - ignoring ", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 638, "[IDSSessionEmbeddedControllerBase session:receivedInvitationAcceptFromID:withData:]", 3, 0, "receivedInvitationAcceptFromID with invalid dictionary - ignoring ");
  }

  else
  {
    if (sub_1000423E0())
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [dCopy UTF8String];
        v10 = [v7 description];
        *buf = 136315906;
        v15 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationAcceptFromID:withData:]";
        v16 = 1024;
        v17 = 643;
        v18 = 2080;
        v19 = uTF8String;
        v20 = 2080;
        uTF8String2 = [v10 UTF8String];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] receivedInvitationAcceptFromID fromID:%s data:%s", buf, 0x26u);
      }
    }

    uTF8String3 = [dCopy UTF8String];
    v12 = [v7 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 643, "-[IDSSessionEmbeddedControllerBase session:receivedInvitationAcceptFromID:withData:]", 7, 0, "receivedInvitationAcceptFromID fromID:%s data:%s", uTF8String3, [v12 UTF8String]);
  }
}

- (void)session:(id)session receivedInvitationAcceptFromID:(id)d
{
  dCopy = d;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationAcceptFromID:]";
      v8 = 1024;
      v9 = 648;
      v10 = 2080;
      uTF8String = [dCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] receivedInvitationAcceptFromID fromID:%s", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 648, "-[IDSSessionEmbeddedControllerBase session:receivedInvitationAcceptFromID:]", 7, 0, "receivedInvitationAcceptFromID fromID:%s", [dCopy UTF8String]);
}

- (void)session:(id)session receivedInvitationDeclineFromID:(id)d withData:(id)data
{
  dCopy = d;
  v7 = sub_1000273A0(data);
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (sub_1000423E0())
    {
      v13 = sub_100042E68();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationDeclineFromID:withData:]";
        v16 = 1024;
        v17 = 657;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%s:%d] receivedInvitationDeclineFromID with invalid dictionary - ignoring ", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 657, "[IDSSessionEmbeddedControllerBase session:receivedInvitationDeclineFromID:withData:]", 3, 0, "receivedInvitationDeclineFromID with invalid dictionary - ignoring ");
  }

  else
  {
    if (sub_1000423E0())
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [dCopy UTF8String];
        v10 = [v7 description];
        *buf = 136315906;
        v15 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationDeclineFromID:withData:]";
        v16 = 1024;
        v17 = 662;
        v18 = 2080;
        v19 = uTF8String;
        v20 = 2080;
        uTF8String2 = [v10 UTF8String];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] receivedInvitationDeclineFromID fromID:%s data:%s", buf, 0x26u);
      }
    }

    uTF8String3 = [dCopy UTF8String];
    v12 = [v7 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 662, "-[IDSSessionEmbeddedControllerBase session:receivedInvitationDeclineFromID:withData:]", 7, 0, "receivedInvitationDeclineFromID fromID:%s data:%s", uTF8String3, [v12 UTF8String]);
  }
}

- (void)session:(id)session receivedInvitationDeclineFromID:(id)d
{
  dCopy = d;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationDeclineFromID:]";
      v8 = 1024;
      v9 = 667;
      v10 = 2080;
      uTF8String = [dCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] receivedInvitationDeclineFromID fromID:%s", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 667, "-[IDSSessionEmbeddedControllerBase session:receivedInvitationDeclineFromID:]", 7, 0, "receivedInvitationDeclineFromID fromID:%s", [dCopy UTF8String]);
}

- (void)session:(id)session receivedInvitationCancelFromID:(id)d
{
  dCopy = d;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationCancelFromID:]";
      v8 = 1024;
      v9 = 674;
      v10 = 2080;
      uTF8String = [dCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] receivedInvitationCancelFromID fromID:%s", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 674, "-[IDSSessionEmbeddedControllerBase session:receivedInvitationCancelFromID:]", 7, 0, "receivedInvitationCancelFromID fromID:%s", [dCopy UTF8String]);
}

- (void)session:(id)session receivedInvitationCancelFromID:(id)d withData:(id)data
{
  dCopy = d;
  v7 = sub_1000273A0(data);
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (sub_1000423E0())
    {
      v13 = sub_100042E68();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationCancelFromID:withData:]";
        v16 = 1024;
        v17 = 684;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%s:%d] receivedInvitationCancelFromID with invalid dictionary - ignoring ", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 684, "[IDSSessionEmbeddedControllerBase session:receivedInvitationCancelFromID:withData:]", 3, 0, "receivedInvitationCancelFromID with invalid dictionary - ignoring ");
  }

  else
  {
    if (sub_1000423E0())
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [dCopy UTF8String];
        v10 = [v7 description];
        *buf = 136315906;
        v15 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationCancelFromID:withData:]";
        v16 = 1024;
        v17 = 688;
        v18 = 2080;
        v19 = uTF8String;
        v20 = 2080;
        uTF8String2 = [v10 UTF8String];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] receivedInvitationCancelFromID fromID:%s data:%s", buf, 0x26u);
      }
    }

    uTF8String3 = [dCopy UTF8String];
    v12 = [v7 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 688, "-[IDSSessionEmbeddedControllerBase session:receivedInvitationCancelFromID:withData:]", 7, 0, "receivedInvitationCancelFromID fromID:%s data:%s", uTF8String3, [v12 UTF8String]);
  }
}

- (void)session:(id)session receivedSessionMessageFromID:(id)d withData:(id)data
{
  dCopy = d;
  v7 = sub_1000273A0(data);
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (sub_1000423E0())
    {
      v13 = sub_100042E68();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "[IDSSessionEmbeddedControllerBase session:receivedSessionMessageFromID:withData:]";
        v16 = 1024;
        v17 = 697;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%s:%d] receivedSessionMessageFromID with invalid dictionary - ignoring ", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 697, "[IDSSessionEmbeddedControllerBase session:receivedSessionMessageFromID:withData:]", 3, 0, "receivedSessionMessageFromID with invalid dictionary - ignoring ");
  }

  else
  {
    if (sub_1000423E0())
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [dCopy UTF8String];
        v10 = [v7 description];
        *buf = 136315906;
        v15 = "[IDSSessionEmbeddedControllerBase session:receivedSessionMessageFromID:withData:]";
        v16 = 1024;
        v17 = 701;
        v18 = 2080;
        v19 = uTF8String;
        v20 = 2080;
        uTF8String2 = [v10 UTF8String];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] receivedSessionMessageFromID fromID:%s data:%s", buf, 0x26u);
      }
    }

    uTF8String3 = [dCopy UTF8String];
    v12 = [v7 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 701, "-[IDSSessionEmbeddedControllerBase session:receivedSessionMessageFromID:withData:]", 7, 0, "receivedSessionMessageFromID fromID:%s data:%s", uTF8String3, [v12 UTF8String]);
  }
}

- (void)sessionStarted:(id)started
{
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
      socket = [idsSession socket];
      idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
      sessionID = [idsSession2 sessionID];
      *buf = 136315906;
      v34 = "[IDSSessionEmbeddedControllerBase sessionStarted:]";
      v35 = 1024;
      v36 = 708;
      v37 = 1024;
      *v38 = socket;
      *&v38[4] = 2080;
      *&v38[6] = [sessionID UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] sessionStarted session socket is %d  session is %s", buf, 0x22u);
    }
  }

  idsSession3 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  socket2 = [idsSession3 socket];
  idsSession4 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  sessionID2 = [idsSession4 sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 708, "-[IDSSessionEmbeddedControllerBase sessionStarted:]", 7, 0, "sessionStarted session socket is %d  session is %s", socket2, [sessionID2 UTF8String]);

  if (sub_1000423E0())
  {
    v14 = sub_100042E68();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      idsSession5 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
      destination = [idsSession5 destination];
      uTF8String = [destination UTF8String];
      *buf = 136315650;
      v34 = "[IDSSessionEmbeddedControllerBase sessionStarted:]";
      v35 = 1024;
      v36 = 710;
      v37 = 2080;
      *v38 = uTF8String;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] destination string %s", buf, 0x1Cu);
    }
  }

  idsSession6 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  destination2 = [idsSession6 destination];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 710, "-[IDSSessionEmbeddedControllerBase sessionStarted:]", 7, 0, "destination string %s", [destination2 UTF8String]);

  [(IDSSessionEmbeddedControllerBase *)self setSessionStartDelegateWasCalled:1];
  if (started && (-[IDSSessionEmbeddedControllerBase idsSession](self, "idsSession"), v20 = objc_claimAutoreleasedReturnValue(), [v20 destination], v21 = objc_claimAutoreleasedReturnValue(), v21, v20, v21))
  {
    if (sub_1000423E0())
    {
      v22 = sub_100042E68();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v34 = "[IDSSessionEmbeddedControllerBase sessionStarted:]";
        v35 = 1024;
        v36 = 722;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] session is valid", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 722, "[IDSSessionEmbeddedControllerBase sessionStarted:]", 7, 0, "session is valid");
    if ([(IDSSessionEmbeddedControllerBase *)self termsAccepted])
    {
      if (sub_1000423E0())
      {
        v23 = sub_100042E68();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v34 = "[IDSSessionEmbeddedControllerBase sessionStarted:]";
          v35 = 1024;
          v36 = 726;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms were already accepted", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 726, "[IDSSessionEmbeddedControllerBase sessionStarted:]", 7, 0, "terms were already accepted");
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002BAB0;
      block[3] = &unk_100068CB0;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    if (sub_1000423E0())
    {
      v24 = sub_100042E68();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [(IDSSessionEmbeddedControllerBase *)self description];
        uTF8String2 = [v25 UTF8String];
        idsSession7 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
        socket3 = [idsSession7 socket];
        *buf = 136315906;
        v34 = "[IDSSessionEmbeddedControllerBase sessionStarted:]";
        v35 = 1024;
        v36 = 735;
        v37 = 2080;
        *v38 = uTF8String2;
        *&v38[8] = 1024;
        *&v38[10] = socket3;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%s:%d] sessionStarted bad session: session=%s, socket=%d", buf, 0x22u);
      }
    }

    v29 = [(IDSSessionEmbeddedControllerBase *)self description];
    uTF8String3 = [v29 UTF8String];
    idsSession8 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 735, "-[IDSSessionEmbeddedControllerBase sessionStarted:]", 3, 0, "sessionStarted bad session: session=%s, socket=%d", uTF8String3, [idsSession8 socket]);
  }
}

- (void)session:(id)session receivedSessionEndFromID:(id)d withData:(id)data
{
  sessionCopy = session;
  dCopy = d;
  v10 = sub_1000273A0(data);
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (sub_1000423E0())
    {
      v20 = sub_100042E68();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "[IDSSessionEmbeddedControllerBase session:receivedSessionEndFromID:withData:]";
        v23 = 1024;
        v24 = 751;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%s:%d] receivedSessionEndFromID with invalid dictionary - ignoring ", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 751, "[IDSSessionEmbeddedControllerBase session:receivedSessionEndFromID:withData:]", 3, 0, "receivedSessionEndFromID with invalid dictionary - ignoring ");
  }

  else
  {
    if (sub_1000423E0())
    {
      v11 = sub_100042E68();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [dCopy UTF8String];
        v13 = [v10 description];
        uTF8String2 = [v13 UTF8String];
        sessionID = [sessionCopy sessionID];
        *buf = 136316162;
        v22 = "[IDSSessionEmbeddedControllerBase session:receivedSessionEndFromID:withData:]";
        v23 = 1024;
        v24 = 755;
        v25 = 2080;
        v26 = uTF8String;
        v27 = 2080;
        v28 = uTF8String2;
        v29 = 2080;
        uTF8String3 = [sessionID UTF8String];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] SESSION END receivedSessionEndFromID %s data: %s for session %s", buf, 0x30u);
      }
    }

    uTF8String4 = [dCopy UTF8String];
    v17 = [v10 description];
    uTF8String5 = [v17 UTF8String];
    sessionID2 = [sessionCopy sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 755, "-[IDSSessionEmbeddedControllerBase session:receivedSessionEndFromID:withData:]", 7, 0, "SESSION END receivedSessionEndFromID %s data: %s for session %s", uTF8String4, uTF8String5, [sessionID2 UTF8String]);
  }

  [(IDSSessionEmbeddedControllerBase *)self cleanupSession];
}

- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error
{
  endedCopy = ended;
  errorCopy = error;
  if (sub_1000423E0())
  {
    v10 = sub_100042E68();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [endedCopy sessionID];
      uTF8String = [sessionID UTF8String];
      v13 = [errorCopy description];
      *buf = 136316162;
      v18 = "[IDSSessionEmbeddedControllerBase sessionEnded:withReason:error:]";
      v19 = 1024;
      v20 = 763;
      v21 = 2080;
      v22 = uTF8String;
      v23 = 1024;
      reasonCopy = reason;
      v25 = 2080;
      uTF8String2 = [v13 UTF8String];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] SESSION END sessionEnded:session %s withReason:%d error:%s", buf, 0x2Cu);
    }
  }

  sessionID2 = [endedCopy sessionID];
  uTF8String3 = [sessionID2 UTF8String];
  v16 = [errorCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 763, "-[IDSSessionEmbeddedControllerBase sessionEnded:withReason:error:]", 7, 0, "SESSION END sessionEnded:session %s withReason:%d error:%s", uTF8String3, reason, [v16 UTF8String]);

  [(IDSSessionEmbeddedControllerBase *)self cleanupSession];
}

- (void)SSMediaStreamServerDidDie
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[IDSSessionEmbeddedControllerBase SSMediaStreamServerDidDie]";
      v6 = 1024;
      v7 = 771;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%s:%d] SSMediaStreamServerDidDie - end session", &v4, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 771, "[IDSSessionEmbeddedControllerBase SSMediaStreamServerDidDie]", 3, 0, "SSMediaStreamServerDidDie - end session");
  [(IDSSessionEmbeddedControllerBase *)self doEndSession];
}

- (void)SSMediaStreamTimeout
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[IDSSessionEmbeddedControllerBase SSMediaStreamTimeout]";
      v6 = 1024;
      v7 = 777;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] SSMediaStreamTimeout - end session", &v4, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 777, "[IDSSessionEmbeddedControllerBase SSMediaStreamTimeout]", 7, 0, "SSMediaStreamTimeout - end session");
  [(IDSSessionEmbeddedControllerBase *)self doEndSession];
}

- (void)cleanupSession
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
        v26 = "[IDSSessionEmbeddedControllerBase cleanupSession]";
        v27 = 1024;
        v28 = 823;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] session already handled", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 823, "[IDSSessionEmbeddedControllerBase cleanupSession]", 7, 0, "session already handled");
  }

  else
  {
    if (v4)
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [(IDSSessionEmbeddedControllerBase *)self sessionID];
        *buf = 136315650;
        v26 = "[IDSSessionEmbeddedControllerBase cleanupSession]";
        v27 = 1024;
        v28 = 785;
        v29 = 2080;
        uTF8String = [sessionID UTF8String];
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] cleanup session %s", buf, 0x1Cu);
      }
    }

    sessionID2 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 785, "-[IDSSessionEmbeddedControllerBase cleanupSession]", 7, 0, "cleanup session %s", [sessionID2 UTF8String]);

    [(IDSSessionEmbeddedControllerBase *)self setHandledSessionEnd:1];
    idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
    [idsSession setDelegate:0 queue:0];

    [(IDSSessionEmbeddedControllerBase *)self removeUserNotification];
    v10 = [(IDSSessionEmbeddedControllerBase *)self vnc];

    if (v10)
    {
      v11 = [(IDSSessionEmbeddedControllerBase *)self vnc];
      [v11 stopUDPSend];
    }

    avConference = [(IDSSessionEmbeddedControllerBase *)self avConference];

    if (avConference)
    {
      avConference2 = [(IDSSessionEmbeddedControllerBase *)self avConference];
      [avConference2 stopCallID:self->_callID];

      if (sub_1000423E0())
      {
        v14 = sub_100042E68();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "[IDSSessionEmbeddedControllerBase cleanupSession]";
          v27 = 1024;
          v28 = 799;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] going to wait for semaphore", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 799, "[IDSSessionEmbeddedControllerBase cleanupSession]", 7, 0, "going to wait for semaphore");
      stopCallIDSemaphore = self->_stopCallIDSemaphore;
      v16 = dispatch_time(0, 1000000000);
      v17 = dispatch_semaphore_wait(stopCallIDSemaphore, v16);
      v18 = sub_1000423E0();
      if (v17)
      {
        if (v18)
        {
          v19 = sub_100042E68();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v26 = "[IDSSessionEmbeddedControllerBase cleanupSession]";
            v27 = 1024;
            v28 = 802;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] callid timeout", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 802, "[IDSSessionEmbeddedControllerBase cleanupSession]", 7, 0, "callid timeout");
      }

      else
      {
        if (v18)
        {
          v20 = sub_100042E68();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v26 = "[IDSSessionEmbeddedControllerBase cleanupSession]";
            v27 = 1024;
            v28 = 805;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] semaphore did not time out", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 805, "[IDSSessionEmbeddedControllerBase cleanupSession]", 7, 0, "semaphore did not time out");
      }

      avConference3 = [(IDSSessionEmbeddedControllerBase *)self avConference];
      [avConference3 setDelegate:0];

      [(IDSSessionEmbeddedControllerBase *)self setAvConference:0];
    }

    notificationTimeoutTimer = [(IDSSessionEmbeddedControllerBase *)self notificationTimeoutTimer];
    [notificationTimeoutTimer invalidate];

    [(IDSSessionEmbeddedControllerBase *)self setNotificationTimeoutTimer:0];
    mediaStreamController = [(IDSSessionEmbeddedControllerBase *)self mediaStreamController];
    [mediaStreamController stop];

    [(IDSSessionEmbeddedControllerBase *)self stopLiveActivity];
    [(IDSSessionEmbeddedControllerBase *)self setIdsSessionState:6];
    idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
    [idsServiceController removeSession:self andEndIDSSession:0];
  }
}

- (id)inviteDictionaryForRemoteInviteDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [dictionaryCopy description];
      v7 = strlen([v6 UTF8String]);
      v8 = [dictionaryCopy description];
      *buf = 136316162;
      v58 = "[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]";
      v59 = 1024;
      v60 = 843;
      v61 = 2048;
      v62 = dictionaryCopy;
      v63 = 2048;
      v64 = v7;
      v65 = 2080;
      uTF8String = [v8 UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] remote invite %p length %lu %s", buf, 0x30u);
    }
  }

  v9 = [dictionaryCopy description];
  v10 = strlen([v9 UTF8String]);
  v11 = [dictionaryCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 843, "-[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]", 7, 0, "remote invite %p length %lu %s", dictionaryCopy, v10, [v11 UTF8String]);

  v12 = [dictionaryCopy valueForKey:@"AVCNegotiatorInfo"];
  v13 = [v12 objectForKeyedSubscript:@"audioOffer"];
  v14 = [v12 objectForKeyedSubscript:@"videoOffer"];
  if (sub_1000423E0())
  {
    v15 = sub_100042E68();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v58 = "[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]";
      v59 = 1024;
      v60 = 847;
      v61 = 2048;
      v62 = v13;
      v63 = 2048;
      v64 = v14;
      v65 = 2048;
      uTF8String = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] audiooffer %p  videoOffer %p negotiatorInfo %p", buf, 0x30u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 847, "[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]", 7, 0, "audiooffer %p  videoOffer %p negotiatorInfo %p", v13, v14, v12);
  v16 = [v12 objectForKeyedSubscript:@"sessionID"];
  if (sub_1000423E0())
  {
    v17 = sub_100042E68();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v16 length];
      *buf = 136315906;
      v58 = "[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]";
      v59 = 1024;
      v60 = 850;
      v61 = 2048;
      v62 = v16;
      v63 = 2048;
      v64 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] uuidData %p length %lu", buf, 0x26u);
    }
  }

  v53 = v14;
  v54 = v13;
  v56 = dictionaryCopy;
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 850, "-[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]", 7, 0, "uuidData %p length %lu", v16, [v16 length]);
  v52 = v16;
  v19 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v16, "bytes")}];
  v50 = [SSAVCMediaStreamController alloc];
  idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  v21 = [v12 objectForKeyedSubscript:@"viewerToServerAudioKey"];
  v22 = [v12 objectForKeyedSubscript:@"serverToViewerAudioKey"];
  v23 = [v12 objectForKeyedSubscript:@"viewerToServerVideoKey"];
  v24 = [v12 objectForKeyedSubscript:@"serverToViewerVideoKey"];
  v25 = [v12 objectForKeyedSubscript:@"audioOffer"];
  v26 = [v12 objectForKeyedSubscript:@"videoOffer"];
  v27 = v12;
  v28 = v26;
  v55 = v27;
  v29 = [v27 objectForKeyedSubscript:@"sessionID"];
  v51 = v19;
  LOBYTE(v49) = 0;
  v30 = [(SSAVCMediaStreamController *)v50 initWithIDSSession:idsSession avcClientName:@"SafeViewScreenShare" audioEncryptionKeyViewerToServer:v21 audioEncryptionKeyServerToViewer:v22 video1EncryptionKeyViewerToServer:v23 video1EncryptionKeyServerToViewer:v24 audioOffer:v25 videoOffer:v28 sessionID:v29 supports60FPS:v49 mediaStreamSessionUUID:v19 delegate:self];
  [(IDSSessionEmbeddedControllerBase *)self setMediaStreamController:v30];

  selfCopy = self;
  mediaStreamController = [(IDSSessionEmbeddedControllerBase *)self mediaStreamController];

  if (mediaStreamController)
  {
    v33 = +[NSMutableDictionary dictionary];
    mediaStreamController2 = [(IDSSessionEmbeddedControllerBase *)selfCopy mediaStreamController];
    audioAnswer = [mediaStreamController2 audioAnswer];
    [v33 setObject:audioAnswer forKeyedSubscript:@"audioAnswer"];

    mediaStreamController3 = [(IDSSessionEmbeddedControllerBase *)selfCopy mediaStreamController];
    videoAnswer = [mediaStreamController3 videoAnswer];
    [v33 setObject:videoAnswer forKeyedSubscript:@"videoAnswer"];

    v38 = [v33 objectForKeyedSubscript:@"videoAnswer"];
    bytes = [v38 bytes];
    v40 = [v33 objectForKeyedSubscript:@"videoAnswer"];
    sub_100042C68("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 871, "-[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]", 7, "video answer", bytes, [v40 length]);

    v41 = v56;
    v43 = v53;
    v42 = v54;
    v44 = v52;
    if (sub_1000423E0())
    {
      v45 = sub_100042E68();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v58 = "[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]";
        v59 = 1024;
        v60 = 872;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[%s:%d] created accept dict", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 872, "[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]", 7, 0, "created accept dict");
    v46 = v55;
  }

  else
  {
    v46 = v55;
    v41 = v56;
    v42 = v54;
    v44 = v52;
    if (sub_1000423E0())
    {
      v47 = sub_100042E68();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v58 = "[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]";
        v59 = 1024;
        v60 = 876;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%s:%d] error setting up audio and video negotiators", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 876, "[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]", 7, 0, "error setting up audio and video negotiators");
    [(IDSSessionEmbeddedControllerBase *)self doEndSession];
    v33 = 0;
    v43 = v53;
  }

  return v33;
}

- (id)dataForIDSAccept:(id)accept
{
  acceptCopy = accept;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "[IDSSessionEmbeddedControllerBase dataForIDSAccept:]";
      v27 = 1024;
      v28 = 883;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] dataForIDSAccept", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 883, "[IDSSessionEmbeddedControllerBase dataForIDSAccept:]", 7, 0, "dataForIDSAccept");
  v6 = objc_alloc_init(NSMutableDictionary);
  [v6 setObject:acceptCopy forKeyedSubscript:@"AVCAnswer"];

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v7 = +[NSProcessInfo processInfo];
  v8 = v7;
  if (v7)
  {
    [v7 operatingSystemVersion];
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  v9 = (v22 << 16) | (v23 << 8) | v24;
  if (sub_1000423E0())
  {
    v10 = sub_100042E68();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v26 = "[IDSSessionEmbeddedControllerBase dataForIDSAccept:]";
      v27 = 1024;
      v28 = 893;
      v29 = 1024;
      LODWORD(v30) = (v22 << 16) | (v23 << 8) | v24;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] osvers %x", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 893, "[IDSSessionEmbeddedControllerBase dataForIDSAccept:]", 7, 0, "osvers %x", v9);
  v11 = [NSNumber numberWithUnsignedInt:v9];
  [v6 setObject:v11 forKeyedSubscript:@"osVersion"];

  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  osTypeString = [idsServiceController osTypeString];

  if (osTypeString)
  {
    [v6 setObject:osTypeString forKeyedSubscript:@"osType"];
  }

  if (sub_1000423E0())
  {
    v14 = sub_100042E68();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v6 description];
      uTF8String = [v15 UTF8String];
      *buf = 136315650;
      v26 = "[IDSSessionEmbeddedControllerBase dataForIDSAccept:]";
      v27 = 1024;
      v28 = 900;
      v29 = 2080;
      v30 = uTF8String;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] accept dict %s", buf, 0x1Cu);
    }
  }

  v17 = [v6 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 900, "-[IDSSessionEmbeddedControllerBase dataForIDSAccept:]", 7, 0, "accept dict %s", [v17 UTF8String]);

  v21 = 0;
  v18 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:&v21];
  if (v21)
  {
    if (sub_1000423E0())
    {
      v19 = sub_100042E68();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "[IDSSessionEmbeddedControllerBase dataForIDSAccept:]";
        v27 = 1024;
        v28 = 906;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[%s:%d] could not serialize dictionary", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 906, "[IDSSessionEmbeddedControllerBase dataForIDSAccept:]", 3, 0, "could not serialize dictionary");
  }

  return v18;
}

- (BOOL)pauseVideoSending:(BOOL)sending
{
  sendingCopy = sending;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v11 = "[IDSSessionEmbeddedControllerBase pauseVideoSending:]";
      v12 = 1024;
      v13 = 916;
      v14 = 1024;
      v15 = sendingCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] pause video %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 916, "[IDSSessionEmbeddedControllerBase pauseVideoSending:]", 7, 0, "pause video %d", sendingCopy);
  mediaStreamController = [(IDSSessionEmbeddedControllerBase *)self mediaStreamController];
  v7 = mediaStreamController;
  if (sendingCopy)
  {
    [mediaStreamController pause];
  }

  else
  {
    [mediaStreamController resume];
  }

  v8 = [(IDSSessionEmbeddedControllerBase *)self vnc];
  [v8 sendPauseMessage:sendingCopy];

  return 1;
}

- (void)sendScreenLockChangeMessage:(BOOL)message
{
  messageCopy = message;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IDSSessionEmbeddedControllerBase sendScreenLockChangeMessage:]";
      v9 = 1024;
      v10 = 930;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] send lock change message", &v7, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 930, "[IDSSessionEmbeddedControllerBase sendScreenLockChangeMessage:]", 7, 0, "send lock change message");
  v6 = [(IDSSessionEmbeddedControllerBase *)self vnc];
  [v6 sendScreenLockChangeMessage:messageCopy];
}

- (NSString)inviterIconPath
{
  if ([(IDSSessionEmbeddedControllerBase *)self inviterKind]== 2)
  {
    return @"/System/Library/CoreServices/ScreenSharingServer.app/AppleCare.png";
  }

  else
  {
    return @"/System/Library/CoreServices/ScreenSharingServer.app/AppleSupport.png";
  }
}

- (id)inviterIDForDisplay
{
  inviterID = [(IDSSessionEmbeddedControllerBase *)self inviterID];
  stringWithSchemeTrimmed = [inviterID stringWithSchemeTrimmed];

  return stringWithSchemeTrimmed;
}

- (void)serverDiedForConference:(id)conference
{
  conferenceCopy = conference;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[IDSSessionEmbeddedControllerBase serverDiedForConference:]";
      v11 = 1024;
      v12 = 964;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%s:%d] serverDiedForConference delegate called.  Server will exit.", &v9, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 964, "[IDSSessionEmbeddedControllerBase serverDiedForConference:]", 3, 0, "serverDiedForConference delegate called.  Server will exit.");
  sub_1000430F0(0, 0, 0.0, 0.0);
  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];

  if (idsServiceController)
  {
    idsServiceController2 = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
    viewServicePID = [idsServiceController2 viewServicePID];

    if (viewServicePID != -1)
    {
      kill(viewServicePID, 15);
    }
  }

  exit(0);
}

@end