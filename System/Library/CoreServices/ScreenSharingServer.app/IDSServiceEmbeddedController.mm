@interface IDSServiceEmbeddedController
+ (id)sharedIDServiceController;
- (BOOL)inviteValidForThisOS:(id)s;
- (BOOL)inviterIsInActiveSession:(id)session;
- (BOOL)validInviteDictionary:(id)dictionary;
- (BOOL)validateRedwoodRequestDictionary:(id)dictionary account:(id)account fromID:(id)d error:(id *)error;
- (IDSServiceEmbeddedController)init;
- (id)activeViewerStatusString;
- (id)datagramConnectionFromIDS:(id)s;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)addActiveSession:(id)session;
- (void)askToOpenURLTimeout:(id)timeout;
- (void)askToResumeTimeout:(id)timeout;
- (void)askToToCopyToPasteboardTimeout:(id)timeout;
- (void)checkIfNoSessions;
- (void)closeAllSessions;
- (void)createLockScreenNotifier;
- (void)createStatusBar;
- (void)dealloc;
- (void)exitTimerCallback:(id)callback;
- (void)initScreenSharingIDSService;
- (void)initViewServiceHelper;
- (void)inviteWasAccepted:(id)accepted;
- (void)pauseResumeResult:(id)result;
- (void)pidNotification:(id)notification;
- (void)postAskToCopyToPasteboardNotification;
- (void)postAskToOpenURLNotification;
- (void)postAskToResumeNotification;
- (void)postShowUserMessageNotification;
- (void)postViewerPausedMessageNotification;
- (void)removeAskToCopyToPasteboardNotification;
- (void)removeAskToOpenURLNotification;
- (void)removeSession:(id)session andEndIDSSession:(BOOL)sSession;
- (void)removeShowUserMessageNotification;
- (void)removeUserAskToResumeNotification;
- (void)removeViewerPausedNotification;
- (void)requestUserInfo;
- (void)sendMessageInviteAccepted:(id)accepted sessionID:(id)d service:(id)service;
- (void)sendMessageInviteDisplayed:(id)displayed sessionID:(id)d service:(id)service;
- (void)sendMessageInviteIgnored:(id)ignored sessionID:(id)d service:(id)service error:(id)error;
- (void)sendMessageShareSettingsUserDecline:(id)decline;
- (void)sendMessageShareStatusResult:(id)result systemInfo:(id)info;
- (void)sendMessageShareStatusResultInfo:(id)info sessionID:(id)d service:(id)service systemInfo:(id)systemInfo;
- (void)sendMessageShareStatusUserDeclined:(id)declined sessionID:(id)d service:(id)service;
- (void)sendMessageStatusMessage:(id)message sessionID:(id)d service:(id)service status:(id)status;
- (void)sendMessageTCAccepted;
- (void)sendMessageTCAccepted:(id)accepted sessionID:(id)d service:(id)service;
- (void)sendServiceMessage:(id)message destination:(id)destination service:(id)service;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier sentBytes:(int64_t)bytes totalBytes:(int64_t)totalBytes;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingPendingMessageOfType:(int64_t)type fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)service:(id)service linkedDevicesChanged:(id)changed;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
- (void)serviceAllowedTrafficClassifiersDidReset:(id)reset;
- (void)serviceSpaceDidBecomeAvailable:(id)available;
- (void)sessionState:(id)state;
- (void)showMessageToUser:(id)user;
- (void)showUserMessageTimeout:(id)timeout;
- (void)showViewerPausedTimeout:(id)timeout;
- (void)termsAndConditionsResult:(id)result;
@end

@implementation IDSServiceEmbeddedController

+ (id)sharedIDServiceController
{
  v2 = qword_100070A70;
  if (!qword_100070A70)
  {
    if (sub_1000423E0())
    {
      v3 = sub_100042E68();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315394;
        v8 = "+[IDSServiceEmbeddedController sharedIDServiceController]";
        v9 = 1024;
        v10 = 200;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] init shared service controller", &v7, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 200, "+[IDSServiceEmbeddedController sharedIDServiceController]", 7, 0, "init shared service controller");
    v4 = objc_alloc_init(IDSServiceEmbeddedController);
    v5 = qword_100070A70;
    qword_100070A70 = v4;

    v2 = qword_100070A70;
  }

  return v2;
}

- (IDSServiceEmbeddedController)init
{
  v7.receiver = self;
  v7.super_class = IDSServiceEmbeddedController;
  v2 = [(IDSServiceEmbeddedController *)&v7 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    [(IDSServiceEmbeddedController *)v2 setActiveSessions:v3];

    [(IDSServiceEmbeddedController *)v2 setPendingSession:0];
    v4 = dispatch_semaphore_create(0);
    url_sem = v2->url_sem;
    v2->url_sem = v4;

    v2->_osTransactionLock = 0;
    [(IDSServiceEmbeddedController *)v2 setViewServicePID:0xFFFFFFFFLL];
    objc_storeStrong(&qword_100070A78, v2);
  }

  return v2;
}

- (void)initScreenSharingIDSService
{
  [(IDSServiceEmbeddedController *)self initViewServiceHelper];
  idsService = [(IDSServiceEmbeddedController *)self idsService];

  if (!idsService)
  {
    xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100068DC0);
    v4 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.safeview"];
    [(IDSServiceEmbeddedController *)self setIdsService:v4];

    idsService2 = [(IDSServiceEmbeddedController *)self idsService];
    [idsService2 addDelegate:self queue:&_dispatch_main_q];

    if (sub_1000423E0())
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        idsService3 = [(IDSServiceEmbeddedController *)self idsService];
        *buf = 136315650;
        v10 = "[IDSServiceEmbeddedController initScreenSharingIDSService]";
        v11 = 1024;
        v12 = 239;
        v13 = 2048;
        v14 = idsService3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] setup safeview service %p", buf, 0x1Cu);
      }
    }

    idsService4 = [(IDSServiceEmbeddedController *)self idsService];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 239, "[IDSServiceEmbeddedController initScreenSharingIDSService]", 7, 0, "setup safeview service %p", idsService4);
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v12 = COERCE_DOUBLE(service);
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  serverReceivedTime = [context serverReceivedTime];
  [serverReceivedTime timeIntervalSinceNow];
  v18 = v17;

  if (sub_1000423E0())
  {
    v19 = sub_100042E68();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
      v151 = 1024;
      v152 = 269;
      v153 = 2048;
      v154 = 0.0 - v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] incoming message sent %f seconds ago", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 269, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "incoming message sent %f seconds ago", 0.0 - v18);
  v20 = sub_1000423E0();
  if (v18 < -45.0)
  {
    if (v20)
    {
      v21 = sub_100042E68();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
        v151 = 1024;
        v152 = 272;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] message rejected", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 272, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "message rejected");
LABEL_56:
    v39 = 0;
    v40 = 0;
LABEL_57:
    v41 = 0;
    goto LABEL_58;
  }

  if (v20)
  {
    v22 = sub_100042E68();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      idsService = [(IDSServiceEmbeddedController *)self idsService];
      *buf = 136315906;
      v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
      v151 = 1024;
      v152 = 276;
      v153 = 2048;
      v154 = v12;
      v155 = 2048;
      v156 = idsService;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] service = %p  self.idsService %p", buf, 0x26u);
    }
  }

  idsService2 = [(IDSServiceEmbeddedController *)self idsService];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 276, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "service = %p  self.idsService %p", *&v12, idsService2);

  exitTimer = [(IDSServiceEmbeddedController *)self exitTimer];
  [exitTimer invalidate];

  [(IDSServiceEmbeddedController *)self setExitTimer:0];
  _os_nospin_lock_lock();
  osTransaction = [(IDSServiceEmbeddedController *)self osTransaction];

  if (!osTransaction)
  {
    v27 = os_transaction_create();
    [(IDSServiceEmbeddedController *)self setOsTransaction:v27];

    if (sub_1000423E0())
    {
      v28 = sub_100042E68();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        [(IDSServiceEmbeddedController *)self osTransaction];
        v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 136315650;
        v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
        v151 = 1024;
        v152 = 285;
        v153 = 2048;
        v154 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%s:%d] transaction %p", buf, 0x1Cu);
      }
    }

    osTransaction2 = [(IDSServiceEmbeddedController *)self osTransaction];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 285, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "transaction %p", osTransaction2);
  }

  _os_nospin_lock_unlock();
  if (sub_1000423E0())
  {
    v31 = sub_100042E68();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = COERCE_DOUBLE([dCopy UTF8String]);
      *buf = 136315650;
      v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
      v151 = 1024;
      v152 = 289;
      v153 = 2080;
      v154 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] service message received from %s", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 289, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "service message received from %s", [dCopy UTF8String]);
  v33 = [(IDSServiceEmbeddedController *)self validInviteDictionary:messageCopy];
  v34 = sub_1000423E0();
  if ((v33 & 1) == 0)
  {
    if (v34)
    {
      v60 = sub_100042E68();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        v62 = COERCE_DOUBLE([sanitizedFromID UTF8String]);
        *buf = 136315650;
        v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
        v151 = 1024;
        v152 = 294;
        v153 = 2080;
        v154 = v62;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "[%s:%d] invalid invite dictionary from %s - ignoring", buf, 0x1Cu);
      }
    }

    sanitizedFromID2 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 294, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "invalid invite dictionary from %s - ignoring", [sanitizedFromID2 UTF8String]);

    goto LABEL_56;
  }

  if (v34)
  {
    v35 = sub_100042E68();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [messageCopy description];
      v37 = COERCE_DOUBLE([v36 UTF8String]);
      *buf = 136315650;
      v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
      v151 = 1024;
      v152 = 297;
      v153 = 2080;
      v154 = v37;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%s:%d] inviteOptions: %s", buf, 0x1Cu);
    }
  }

  v38 = [messageCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 297, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "inviteOptions: %s", [v38 UTF8String]);

  v39 = 0;
  v40 = 0;
  v41 = 0;
  if ([(IDSServiceEmbeddedController *)self inviteValidForThisOS:messageCopy])
  {
    v40 = [messageCopy objectForKeyedSubscript:@"com.apple.private.applecare"];
    v42 = IDSCopyAddressDestinationForDestination();
    [(IDSServiceEmbeddedController *)self setSanitizedFromID:v42];

    sanitizedFromID3 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    isEmailAddress = [sanitizedFromID3 isEmailAddress];

    if (isEmailAddress)
    {
      sanitizedFromID4 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      v46 = IDSCopyIDForEmailAddress();
      [(IDSServiceEmbeddedController *)self setSanitizedFromID:v46];
    }

    sanitizedFromID5 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    isPhoneNumber = [sanitizedFromID5 isPhoneNumber];

    if (isPhoneNumber)
    {
      sanitizedFromID6 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      v50 = IDSCopyIDForPhoneNumber();
      [(IDSServiceEmbeddedController *)self setSanitizedFromID:v50];
    }

    if (sub_1000423E0())
    {
      v51 = sub_100042E68();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        sanitizedFromID7 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        v53 = COERCE_DOUBLE([sanitizedFromID7 UTF8String]);
        *buf = 136315650;
        v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
        v151 = 1024;
        v152 = 317;
        v153 = 2080;
        v154 = v53;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[%s:%d] self.sanitizedFromID %s", buf, 0x1Cu);
      }
    }

    sanitizedFromID8 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 317, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "self.sanitizedFromID %s", [sanitizedFromID8 UTF8String]);

    keyExistsAndHasValidFormat = 0;
    if (sub_100022828())
    {
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AllowAny", @"com.apple.screensharingserver", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v56 = AppBooleanValue == 0;
      }

      else
      {
        v56 = 1;
      }

      v57 = !v56;
      if (sub_1000423E0())
      {
        v58 = sub_100042E68();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
          v151 = 1024;
          v152 = 327;
          v153 = 1024;
          LODWORD(v154) = v57;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[%s:%d] allowAny: %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 327, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "allowAny: %d", v57);
      v59 = v57 ^ 1;
    }

    else
    {
      v59 = 1;
    }

    v64 = [messageCopy objectForKeyedSubscript:@"cmd"];
    v39 = v64;
    if (v64 && (([v64 isEqualToString:@"alreadyAccepted"] & 1) != 0 || objc_msgSend(v39, "isEqualToString:", @"alreadyDeclined")))
    {
      v143 = accountCopy;
      if (sub_1000423E0())
      {
        v65 = sub_100042E68();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
          v151 = 1024;
          v152 = 333;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "[%s:%d] got message accepted or declined elsewhere", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 333, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "got message accepted or declined elsewhere");
      pendingSession = [(IDSServiceEmbeddedController *)self pendingSession];

      if (!pendingSession)
      {
        if (sub_1000423E0())
        {
          v102 = sub_100042E68();
          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v151 = 1024;
            v152 = 352;
            _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "[%s:%d] no pending share settings session", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 352, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "no pending share settings session");
        goto LABEL_57;
      }

      v67 = [messageCopy objectForKeyedSubscript:@"sessionID"];
      pendingSession2 = [(IDSServiceEmbeddedController *)self pendingSession];
      sessionID = [pendingSession2 sessionID];
      v70 = v67;
      LODWORD(v67) = [sessionID isEqualToString:v67];

      if (!v67)
      {
        v74 = v70;
        accountCopy = v143;
        if (sub_1000423E0())
        {
          v103 = sub_100042E68();
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v151 = 1024;
            v152 = 349;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "[%s:%d] not current session", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 349, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "not current session");
        goto LABEL_146;
      }

      pendingSession3 = [(IDSServiceEmbeddedController *)self pendingSession];
      appleIDInviteWasAcceptedOrDeclined = [pendingSession3 appleIDInviteWasAcceptedOrDeclined];

      v73 = sub_1000423E0();
      if (appleIDInviteWasAcceptedOrDeclined)
      {
        v74 = v70;
        accountCopy = v143;
        if (v73)
        {
          v75 = sub_100042E68();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v151 = 1024;
            v152 = 346;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "[%s:%d] local session was already accepted or declined", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 346, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "local session was already accepted or declined", v129);
        goto LABEL_146;
      }

      v74 = v70;
      accountCopy = v143;
      if (v73)
      {
        v109 = sub_100042E68();
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
        {
          v110 = COERCE_DOUBLE([v74 UTF8String]);
          *buf = 136315650;
          v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
          v151 = 1024;
          v152 = 341;
          v153 = 2080;
          v154 = v110;
          _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "[%s:%d] remove session %s", buf, 0x1Cu);
        }
      }

      [v74 UTF8String];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 341, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "remove session %s");
LABEL_145:
      pendingSession4 = [(IDSServiceEmbeddedController *)self pendingSession];
      [pendingSession4 doEndSession];

      [(IDSServiceEmbeddedController *)self setPendingSession:0];
LABEL_146:

      goto LABEL_57;
    }

    v76 = [v39 isEqualToString:@"endSession"];
    v77 = sub_1000423E0();
    if (v76)
    {
      if (v77)
      {
        v78 = sub_100042E68();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
          v151 = 1024;
          v152 = 357;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "[%s:%d] got endsession message", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 357, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "got endsession message");
      pendingSession5 = [(IDSServiceEmbeddedController *)self pendingSession];

      if (!pendingSession5)
      {
        if (sub_1000423E0())
        {
          v104 = sub_100042E68();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v151 = 1024;
            v152 = 371;
            _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "[%s:%d] no pending share settings session", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 371, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "no pending share settings session");
        goto LABEL_57;
      }

      v144 = accountCopy;
      v80 = [messageCopy objectForKeyedSubscript:@"sessionID"];
      pendingSession6 = [(IDSServiceEmbeddedController *)self pendingSession];
      sessionID2 = [pendingSession6 sessionID];
      v83 = v80;
      LODWORD(v80) = [sessionID2 isEqualToString:v80];

      v84 = sub_1000423E0();
      v74 = v83;
      if (!v80)
      {
        accountCopy = v144;
        if (v84)
        {
          v107 = sub_100042E68();
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            v108 = COERCE_DOUBLE([v74 UTF8String]);
            *buf = 136315650;
            v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v151 = 1024;
            v152 = 368;
            v153 = 2080;
            v154 = v108;
            _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "[%s:%d] unknown sessionid  %s", buf, 0x1Cu);
          }
        }

        [v74 UTF8String];
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 368, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "unknown sessionid  %s");
        goto LABEL_146;
      }

      accountCopy = v144;
      if (v84)
      {
        v85 = sub_100042E68();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          v86 = COERCE_DOUBLE([v74 UTF8String]);
          *buf = 136315650;
          v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
          v151 = 1024;
          v152 = 363;
          v153 = 2080;
          v154 = v86;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "[%s:%d] endsession for %s", buf, 0x1Cu);
        }
      }

      [v74 UTF8String];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 363, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "endsession for %s");
      goto LABEL_145;
    }

    if (v77)
    {
      v87 = sub_100042E68();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
        v151 = 1024;
        v152 = 375;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "[%s:%d] unknown cmd", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 375, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "unknown cmd");
    v88 = sub_1000423E0();
    if (v40)
    {
      v145 = v59;
      if (v88)
      {
        v89 = sub_100042E68();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          sanitizedFromID9 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
          v141 = COERCE_DOUBLE([sanitizedFromID9 UTF8String]);
          activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
          v92 = [activeSessions count];
          *buf = 136315906;
          v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
          v151 = 1024;
          v152 = 379;
          v153 = 2080;
          v154 = v141;
          v155 = 2048;
          v156 = v92;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "[%s:%d] sanitized from %s  active session count %lu", buf, 0x26u);
        }
      }

      sanitizedFromID10 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      uTF8String = [sanitizedFromID10 UTF8String];
      activeSessions2 = [(IDSServiceEmbeddedController *)self activeSessions];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 379, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "sanitized from %s  active session count %lu", uTF8String, [activeSessions2 count]);

      sanitizedFromID11 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      v147 = 0;
      v97 = [(IDSServiceEmbeddedController *)self validateRedwoodRequestDictionary:v40 account:accountCopy fromID:sanitizedFromID11 error:&v147];
      v41 = v147;

      if (sub_1000423E0())
      {
        v98 = sub_100042E68();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
          v151 = 1024;
          v152 = 382;
          v153 = 1024;
          LODWORD(v154) = v97;
          _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "[%s:%d] result %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 382, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "result %d", v97);
      if ((v97 & 1) == 0)
      {
        if (sub_1000423E0())
        {
          v99 = sub_100042E68();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
          {
            v100 = COERCE_DOUBLE([dCopy UTF8String]);
            *buf = 136315650;
            v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v151 = 1024;
            v152 = 386;
            v153 = 2080;
            v154 = v100;
            _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "[%s:%d] Not a valid request: %s", buf, 0x1Cu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 386, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "Not a valid request: %s", [dCopy UTF8String]);
        if (v145)
        {
          if (sub_1000423E0())
          {
            v101 = sub_100042E68();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
              v151 = 1024;
              v152 = 390;
              _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "[%s:%d] ignore", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 390, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "ignore");
          goto LABEL_58;
        }

        v106 = 0;
LABEL_148:
        if (![v39 isEqualToString:@"share"])
        {
          goto LABEL_58;
        }

        v140 = v106;
        v112 = [messageCopy objectForKeyedSubscript:@"sessionID"];
        if (sub_1000423E0())
        {
          v113 = sub_100042E68();
          if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
          {
            v114 = COERCE_DOUBLE([v112 UTF8String]);
            *buf = 136315650;
            v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v151 = 1024;
            v152 = 408;
            v153 = 2080;
            v154 = v114;
            _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "[%s:%d] share settings sessionID = %s", buf, 0x1Cu);
          }
        }

        v142 = v112;
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 408, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "share settings sessionID = %s", [v112 UTF8String]);
        [v40 objectForKeyedSubscript:@"AppleName"];
        v115 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v146 = v115;
        if (sub_1000423E0())
        {
          v116 = sub_100042E68();
          if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
          {
            uTF8String2 = [*&v115 UTF8String];
            *buf = 136315906;
            v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v151 = 1024;
            v152 = 411;
            v153 = 2048;
            v154 = v115;
            v155 = 2080;
            v156 = uTF8String2;
            _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "[%s:%d] appleNameSpecifier %p  %s", buf, 0x26u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 411, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "appleNameSpecifier %p  %s", *&v115, [*&v115 UTF8String]);
        pendingSession7 = [(IDSServiceEmbeddedController *)self pendingSession];

        if (pendingSession7)
        {
          if (sub_1000423E0())
          {
            v119 = sub_100042E68();
            if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
            {
              pendingSession8 = [(IDSServiceEmbeddedController *)self pendingSession];
              inviterID = [pendingSession8 inviterID];
              v130 = COERCE_DOUBLE([inviterID UTF8String]);
              pendingSession9 = [(IDSServiceEmbeddedController *)self pendingSession];
              idsSession = [pendingSession9 idsSession];
              sessionID3 = [idsSession sessionID];
              uTF8String3 = [sessionID3 UTF8String];
              *buf = 136315906;
              v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
              v151 = 1024;
              v152 = 416;
              v153 = 2080;
              v154 = v130;
              v155 = 2080;
              v156 = uTF8String3;
              _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "[%s:%d] Ignoring invitation -- pendingSession already active from: %s %s", buf, 0x26u);
            }
          }

          pendingSession10 = [(IDSServiceEmbeddedController *)self pendingSession];
          inviterID2 = [pendingSession10 inviterID];
          uTF8String4 = [inviterID2 UTF8String];
          pendingSession11 = [(IDSServiceEmbeddedController *)self pendingSession];
          idsSession2 = [pendingSession11 idsSession];
          sessionID4 = [idsSession2 sessionID];
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 416, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "Ignoring invitation -- pendingSession already active from: %s %s", uTF8String4, [sessionID4 UTF8String]);

          v124 = v142;
          if (!v140)
          {
            goto LABEL_168;
          }

          sanitizedFromID12 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
          [(IDSServiceEmbeddedController *)self sendMessageInviteIgnored:sanitizedFromID12 sessionID:v142 service:*&v12 error:@"Ignore_PendingInvite"];
        }

        else
        {
          v126 = [IDSSessionEmbeddedControllerShareSettings alloc];
          sanitizedFromID13 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
          v127 = [(IDSSessionEmbeddedControllerShareSettings *)v126 initWithRemoteID:sanitizedFromID13 sessionID:v142 andServiceController:self appleName:*&v115];
          [(IDSServiceEmbeddedController *)self setPendingSession:v127];

          v124 = v142;
          [(IDSServiceEmbeddedController *)self setIsShareSettings:1];
          if (v140)
          {
            sanitizedFromID14 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
            [(IDSServiceEmbeddedController *)self sendMessageInviteDisplayed:sanitizedFromID14 sessionID:v142 service:*&v12];
          }

          sanitizedFromID12 = [(IDSServiceEmbeddedController *)self pendingSession];
          [sanitizedFromID12 postInvitationNotification];
        }

LABEL_168:
        goto LABEL_58;
      }
    }

    else
    {
      if (v88)
      {
        v105 = sub_100042E68();
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
          v151 = 1024;
          v152 = 397;
          _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "[%s:%d] no dictionary", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 397, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "no dictionary");
      v41 = 0;
      if (v59)
      {
        v40 = 0;
        goto LABEL_58;
      }
    }

    v106 = 1;
    goto LABEL_148;
  }

LABEL_58:
  [(IDSServiceEmbeddedController *)self checkIfNoSessions];
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  sessionCopy = session;
  dCopy = d;
  contextCopy = context;
  keyExistsAndHasValidFormat = 0;
  exitTimer = [(IDSServiceEmbeddedController *)self exitTimer];
  [exitTimer invalidate];

  [(IDSServiceEmbeddedController *)self setExitTimer:0];
  _os_nospin_lock_lock();
  osTransaction = [(IDSServiceEmbeddedController *)self osTransaction];

  if (!osTransaction)
  {
    v17 = os_transaction_create();
    [(IDSServiceEmbeddedController *)self setOsTransaction:v17];

    if (sub_1000423E0())
    {
      v18 = sub_100042E68();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        osTransaction2 = [(IDSServiceEmbeddedController *)self osTransaction];
        *buf = 136315650;
        v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
        v197 = 1024;
        v198 = 457;
        v199 = 2048;
        v200 = osTransaction2;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] transaction %p", buf, 0x1Cu);
      }
    }

    osTransaction3 = [(IDSServiceEmbeddedController *)self osTransaction];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 457, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "transaction %p", osTransaction3);
  }

  _os_nospin_lock_unlock();
  if (sub_1000423E0())
  {
    v21 = sub_100042E68();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [dCopy UTF8String];
      *buf = 136315650;
      v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
      v197 = 1024;
      v198 = 461;
      v199 = 2080;
      v200 = uTF8String;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] inviteReceivedForSession from %s", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 461, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "inviteReceivedForSession from %s", [dCopy UTF8String]);
  if (sub_1000423E0())
  {
    v23 = sub_100042E68();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [contextCopy length];
      *buf = 136315650;
      v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
      v197 = 1024;
      v198 = 464;
      v199 = 2048;
      v200 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] invite context size %lu", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 464, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "invite context size %lu", [contextCopy length]);
  v25 = sub_1000273A0(contextCopy);
  v26 = IDSCopyAddressDestinationForDestination();
  [(IDSServiceEmbeddedController *)self setSanitizedFromID:v26];

  sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  isEmailAddress = [sanitizedFromID isEmailAddress];

  if (isEmailAddress)
  {
    sanitizedFromID2 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    v30 = IDSCopyIDForEmailAddress();
    [(IDSServiceEmbeddedController *)self setSanitizedFromID:v30];
  }

  sanitizedFromID3 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  isPhoneNumber = [sanitizedFromID3 isPhoneNumber];

  if (isPhoneNumber)
  {
    sanitizedFromID4 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    v34 = IDSCopyIDForPhoneNumber();
    [(IDSServiceEmbeddedController *)self setSanitizedFromID:v34];
  }

  v35 = [(IDSServiceEmbeddedController *)self validInviteDictionary:v25];
  v36 = sub_1000423E0();
  if (v35)
  {
    if (v36)
    {
      v37 = sub_100042E68();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [v25 description];
        uTF8String2 = [v38 UTF8String];
        *buf = 136315650;
        v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
        v197 = 1024;
        v198 = 485;
        v199 = 2080;
        v200 = uTF8String2;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%s:%d] inviteOptions: %s", buf, 0x1Cu);
      }
    }

    v40 = [v25 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 485, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "inviteOptions: %s", [v40 UTF8String]);

    if ([(IDSServiceEmbeddedController *)self inviteValidForThisOS:v25])
    {
      v41 = [v25 objectForKeyedSubscript:@"com.apple.private.applecare"];
      v183 = sessionCopy;
      if (sub_100022828())
      {
        AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AllowAny", @"com.apple.screensharingserver", &keyExistsAndHasValidFormat);
        if (keyExistsAndHasValidFormat)
        {
          v43 = AppBooleanValue == 0;
        }

        else
        {
          v43 = 1;
        }

        v44 = !v43;
        if (sub_1000423E0())
        {
          v45 = sub_100042E68();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
            v197 = 1024;
            v198 = 499;
            v199 = 1024;
            LODWORD(v200) = v44;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[%s:%d] allowAny: %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 499, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "allowAny: %d", v44);
        v46 = v44 ^ 1;
      }

      else
      {
        v46 = 1;
      }

      v52 = sub_1000423E0();
      if (v41)
      {
        if (v52)
        {
          v53 = sub_100042E68();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            sanitizedFromID5 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
            v55 = v41;
            uTF8String3 = [sanitizedFromID5 UTF8String];
            activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
            v58 = [activeSessions count];
            *buf = 136315906;
            v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
            v197 = 1024;
            v198 = 504;
            v199 = 2080;
            v200 = uTF8String3;
            v41 = v55;
            v201 = 2048;
            v202 = v58;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[%s:%d] sanitized from %s  active session count %lu", buf, 0x26u);
          }
        }

        sanitizedFromID6 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        uTF8String4 = [sanitizedFromID6 UTF8String];
        activeSessions2 = [(IDSServiceEmbeddedController *)self activeSessions];
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 504, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "sanitized from %s  active session count %lu", uTF8String4, [activeSessions2 count]);

        sanitizedFromID7 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        LODWORD(activeSessions2) = [(IDSServiceEmbeddedController *)self inviterIsInActiveSession:sanitizedFromID7];

        if (activeSessions2)
        {
          sessionCopy = v183;
          if (sub_1000423E0())
          {
            v63 = sub_100042E68();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              sanitizedFromID8 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
              uTF8String5 = [sanitizedFromID8 UTF8String];
              *buf = 136315650;
              v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
              v197 = 1024;
              v198 = 507;
              v199 = 2080;
              v200 = uTF8String5;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "[%s:%d] Ignoring invitation.  Session already established with fromID %s.", buf, 0x1Cu);
            }
          }

          sanitizedFromID9 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 507, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "Ignoring invitation.  Session already established with fromID %s.", [sanitizedFromID9 UTF8String]);

          goto LABEL_43;
        }

        v68 = [v41 objectForKeyedSubscript:@"aaToken"];
        if (v68)
        {
          v180 = v41;
          sessionCopy = v183;
          if (sub_1000423E0())
          {
            v69 = sub_100042E68();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              uTF8String6 = [v68 UTF8String];
              *buf = 136315650;
              v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
              v197 = 1024;
              v198 = 514;
              v199 = 2080;
              v200 = uTF8String6;
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "[%s:%d] aaToken %s", buf, 0x1Cu);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 514, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "aaToken %s", [v68 UTF8String]);
          if (sub_1000423E0())
          {
            v71 = sub_100042E68();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
              v197 = 1024;
              v198 = 515;
              _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "[%s:%d] live monitoring request - ignore", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 515, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "live monitoring request - ignore");
          [(IDSServiceEmbeddedController *)self checkIfNoSessions];
LABEL_73:

          v72 = v180;
LABEL_74:

          goto LABEL_43;
        }

        v179 = v46;
        sanitizedFromID10 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        v190 = 0;
        v74 = [(IDSServiceEmbeddedController *)self validateRedwoodRequestDictionary:v41 account:accountCopy fromID:sanitizedFromID10 error:&v190];
        v182 = v190;

        if (sub_1000423E0())
        {
          v75 = v41;
          v76 = sub_100042E68();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
            v197 = 1024;
            v198 = 521;
            v199 = 1024;
            LODWORD(v200) = v74;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "[%s:%d] result %d", buf, 0x18u);
          }

          v41 = v75;
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 521, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "result %d", v74);
        if ((v74 & 1) == 0)
        {
          if (sub_1000423E0())
          {
            v77 = sub_100042E68();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              uTF8String7 = [dCopy UTF8String];
              *buf = 136315650;
              v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
              v197 = 1024;
              v198 = 525;
              v199 = 2080;
              v200 = uTF8String7;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "[%s:%d] Not a valid request: %s", buf, 0x1Cu);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 525, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "Not a valid request: %s", [dCopy UTF8String]);
          if (v179)
          {
            v180 = v41;
            sessionCopy = v183;
            if (sub_1000423E0())
            {
              v79 = sub_100042E68();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                v197 = 1024;
                v198 = 529;
                _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "[%s:%d] decline", buf, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 529, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "decline");
            v193[0] = @"REASON";
            v193[1] = @"ERROR";
            v194[0] = @"TokenAuthenticationFailed";
            v80 = [v182 description];
            v81 = v80;
            v82 = &stru_100069830;
            if (v80)
            {
              v82 = v80;
            }

            v194[1] = v82;
            v83 = [NSDictionary dictionaryWithObjects:v194 forKeys:v193 count:2];
            v84 = sub_100027558(v83);
            [v183 declineInvitationWithData:v84];

            [(IDSServiceEmbeddedController *)self checkIfNoSessions];
            goto LABEL_73;
          }
        }

        v85 = [v41 objectForKeyedSubscript:@"appleName"];
        if (sub_1000423E0())
        {
          v86 = sub_100042E68();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            uTF8String8 = [(__CFString *)v85 UTF8String];
            *buf = 136315650;
            v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
            v197 = 1024;
            v198 = 539;
            v199 = 2080;
            v200 = uTF8String8;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "[%s:%d] appleNameSpecifier:  %s", buf, 0x1Cu);
          }
        }

        v177 = v74;
        v178 = v85;
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 539, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "appleNameSpecifier:  %s", [(__CFString *)v85 UTF8String]);
      }

      else
      {
        if (v52)
        {
          v67 = sub_100042E68();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
            v197 = 1024;
            v198 = 543;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "[%s:%d] no dictionary", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 543, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "no dictionary");
        if (v46)
        {
          [(IDSServiceEmbeddedController *)self checkIfNoSessions];
          sessionCopy = v183;
          v51 = serviceCopy;
          goto LABEL_44;
        }

        v177 = 0;
        v178 = 0;
        v182 = 0;
      }

      v88 = +[MCProfileConnection sharedConnection];
      v89 = [v88 effectiveBoolValueForSetting:MCFeatureRemoteScreenObservationAllowed];

      if (v89 == 2)
      {
        if (sub_1000423E0())
        {
          v90 = sub_100042E68();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
            v197 = 1024;
            v198 = 556;
            _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "[%s:%d] ignoring invitation because allowRemoteScreenObservation restriction set", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 556, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "ignoring invitation because allowRemoteScreenObservation restriction set");
      }

      v91 = +[MCProfileConnection sharedConnection];
      v92 = [v91 effectiveBoolValueForSetting:MCFeatureScreenShotAllowed];

      if (v92 == 2)
      {
        sessionCopy = v183;
        if (sub_1000423E0())
        {
          v93 = sub_100042E68();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
            v197 = 1024;
            v198 = 563;
            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "[%s:%d] ignoring invitation because allowScreenShot restriction set", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 563, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "ignoring invitation because allowScreenShot restriction set");
      }

      else
      {
        sessionCopy = v183;
        if (v89 != 2)
        {
          pendingSession = [(IDSServiceEmbeddedController *)self pendingSession];

          v181 = v41;
          if (!pendingSession)
          {
            v188 = 0u;
            v189 = 0u;
            v186 = 0u;
            v187 = 0u;
            activeSessions3 = [(IDSServiceEmbeddedController *)self activeSessions];
            allValues = [activeSessions3 allValues];

            obj = allValues;
            v111 = [allValues countByEnumeratingWithState:&v186 objects:v192 count:16];
            if (v111)
            {
              v112 = v111;
              v175 = *v187;
              while (2)
              {
                for (i = 0; i != v112; i = i + 1)
                {
                  if (*v187 != v175)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v114 = *(*(&v186 + 1) + 8 * i);
                  if (sub_1000423E0())
                  {
                    v115 = sub_100042E68();
                    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
                    {
                      inviterID = [v114 inviterID];
                      uTF8String9 = [inviterID UTF8String];
                      *buf = 136315650;
                      v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                      v197 = 1024;
                      v198 = 590;
                      v199 = 2080;
                      v200 = uTF8String9;
                      _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "[%s:%d] active session %s", buf, 0x1Cu);
                    }
                  }

                  inviterID2 = [v114 inviterID];
                  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 590, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "active session %s", [inviterID2 UTF8String]);

                  inviterID3 = [v114 inviterID];
                  sanitizedFromID11 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                  v121 = [inviterID3 isEqualToString:sanitizedFromID11];

                  if (v121)
                  {
                    sessionCopy = v183;
                    if (sub_1000423E0())
                    {
                      v140 = sub_100042E68();
                      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                      {
                        sanitizedFromID12 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                        uTF8String10 = [sanitizedFromID12 UTF8String];
                        *buf = 136315650;
                        v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                        v197 = 1024;
                        v198 = 593;
                        v199 = 2080;
                        v200 = uTF8String10;
                        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "[%s:%d] Ignoring invitation.  Session already established with fromID %s.", buf, 0x1Cu);
                      }
                    }

                    sanitizedFromID13 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 593, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "Ignoring invitation.  Session already established with fromID %s.", [sanitizedFromID13 UTF8String]);

                    v51 = serviceCopy;
                    if (v177)
                    {
                      sanitizedFromID14 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                      sessionID = [v183 sessionID];
                      [(IDSServiceEmbeddedController *)self sendMessageInviteIgnored:sanitizedFromID14 sessionID:sessionID service:serviceCopy error:@"Ignore_AlreadyInSession"];
                    }

                    [(IDSServiceEmbeddedController *)self checkIfNoSessions];

                    goto LABEL_114;
                  }
                }

                v112 = [obj countByEnumeratingWithState:&v186 objects:v192 count:16];
                if (v112)
                {
                  continue;
                }

                break;
              }
            }

            sessionCopy = v183;
            if (sub_1000423E0())
            {
              v122 = sub_100042E68();
              if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
              {
                v123 = [v25 description];
                uTF8String11 = [v123 UTF8String];
                *buf = 136315650;
                v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                v197 = 1024;
                v198 = 601;
                v199 = 2080;
                v200 = uTF8String11;
                _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "[%s:%d] inviteOptions %s", buf, 0x1Cu);
              }
            }

            v125 = [v25 description];
            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 601, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "inviteOptions %s", [v125 UTF8String]);

            v126 = [v25 objectForKeyedSubscript:@"avconference"];
            if (v126)
            {
              v127 = v126;
              v128 = [v126 objectForKeyedSubscript:@"AVCNegotiatorInfo"];
              v129 = sub_1000423E0();
              if (v128)
              {
                v176 = v128;
                if (v129)
                {
                  v130 = sub_100042E68();
                  if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v197 = 1024;
                    v198 = 611;
                    _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "[%s:%d] AVConference negotiator info available", buf, 0x12u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 611, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "AVConference negotiator info available");
                if (sub_1000423E0())
                {
                  v131 = sub_100042E68();
                  if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
                  {
                    activeSessions4 = [(IDSServiceEmbeddedController *)self activeSessions];
                    v133 = [activeSessions4 count];
                    *buf = 136315650;
                    v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v197 = 1024;
                    v198 = 619;
                    v199 = 2048;
                    v200 = v133;
                    _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "[%s:%d] active session count %lu", buf, 0x1Cu);
                  }
                }

                activeSessions5 = [(IDSServiceEmbeddedController *)self activeSessions];
                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 619, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "active session count %lu", [activeSessions5 count]);

                activeSessions6 = [(IDSServiceEmbeddedController *)self activeSessions];
                v136 = [activeSessions6 count];

                obja = v136;
                if (v136)
                {
                  if (sub_1000423E0())
                  {
                    v137 = sub_100042E68();
                    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                      v197 = 1024;
                      v198 = 623;
                      _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "[%s:%d] auto accept invite", buf, 0x12u);
                    }
                  }

                  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 623, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "auto accept invite");
                  if (v177)
                  {
                    sanitizedFromID15 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                    sessionID2 = [v183 sessionID];
                    [(IDSServiceEmbeddedController *)self sendMessageAutoAccept:sanitizedFromID15 sessionID:sessionID2 service:serviceCopy];
                  }
                }

                else
                {
                  [(IDSServiceEmbeddedController *)self setSessionPaused:0];
                  [(IDSServiceEmbeddedController *)self setScreenPausedBeforeLock:0];
                }

                v169 = [IDSSessionEmbeddedControllerAppleCare alloc];
                if (sub_1000423E0())
                {
                  v148 = sub_100042E68();
                  if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
                  {
                    sessionPaused = [(IDSServiceEmbeddedController *)self sessionPaused];
                    *buf = 136315650;
                    v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v197 = 1024;
                    v198 = 640;
                    v199 = 1024;
                    LODWORD(v200) = sessionPaused;
                    _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "[%s:%d] start out paused %d", buf, 0x18u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 640, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "start out paused %d", [(IDSServiceEmbeddedController *)self sessionPaused]);
                if (sub_1000423E0())
                {
                  v150 = sub_100042E68();
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v197 = 1024;
                    v198 = 642;
                    v199 = 1024;
                    LODWORD(v200) = v177;
                    _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "[%s:%d] isValidatedRedwoodRequest %d", buf, 0x18u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 642, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "isValidatedRedwoodRequest %d", v177);
                if (v177)
                {
                  sanitizedFromID16 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                  sessionID3 = [v183 sessionID];
                  [(IDSServiceEmbeddedController *)self sendMessageInviteDisplayed:sanitizedFromID16 sessionID:sessionID3 service:serviceCopy];
                }

                if (sub_1000423E0())
                {
                  v153 = sub_100042E68();
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
                  {
                    uTF8String12 = [(__CFString *)v178 UTF8String];
                    *buf = 136315650;
                    v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v197 = 1024;
                    v198 = 646;
                    v199 = 2080;
                    v200 = uTF8String12;
                    _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "[%s:%d] appleNameSpecifier %s", buf, 0x1Cu);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 646, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "appleNameSpecifier %s", [(__CFString *)v178 UTF8String]);
                keyExistsAndHasValidFormat = 0;
                v155 = CFPreferencesGetAppBooleanValue(@"UseAppleCareName", @"com.apple.screensharingserver", &keyExistsAndHasValidFormat);
                v167 = v127;
                if (keyExistsAndHasValidFormat)
                {
                  v156 = v155;
                  if (sub_1000423E0())
                  {
                    v157 = sub_100042E68();
                    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315650;
                      v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                      v197 = 1024;
                      v198 = 652;
                      v199 = 1024;
                      LODWORD(v200) = v156;
                      _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "[%s:%d] AppleCare name flag %d", buf, 0x18u);
                    }
                  }

                  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 652, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "AppleCare name flag %d", v156);

                  if (v156)
                  {
                    v158 = @"AC";
                  }

                  else
                  {
                    v158 = @"AS";
                  }
                }

                else
                {
                  v158 = v178;
                }

                v159 = v169;
                sanitizedFromID17 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                v178 = v158;
                v166 = v158;
                LOBYTE(v165) = [(IDSServiceEmbeddedController *)self sessionPaused];
                v127 = v167;
                v161 = [(IDSSessionEmbeddedControllerAppleCare *)v159 initWithRemoteID:sanitizedFromID17 session:v183 direction:1 inviteDictionary:v167 andServiceController:self autoAcceptInvite:obja != 0 startOutPaused:v165 appleName:v166];
                [(IDSServiceEmbeddedController *)self setPendingSession:v161];

                if (sub_1000423E0())
                {
                  v162 = sub_100042E68();
                  if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
                  {
                    pendingSession2 = [(IDSServiceEmbeddedController *)self pendingSession];
                    *buf = 136315650;
                    v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v197 = 1024;
                    v198 = 663;
                    v199 = 2048;
                    v200 = pendingSession2;
                    _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "[%s:%d] PENDING SESSION IS %p", buf, 0x1Cu);
                  }
                }

                pendingSession3 = [(IDSServiceEmbeddedController *)self pendingSession];
                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 663, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "PENDING SESSION IS %p", pendingSession3);
              }

              else
              {
                if (v129)
                {
                  v147 = sub_100042E68();
                  if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v197 = 1024;
                    v198 = 614;
                    _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "[%s:%d] No AVC negotiator info - ignore invitation", buf, 0x12u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 614, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 5, 0, "No AVC negotiator info - ignore invitation");
                [(IDSServiceEmbeddedController *)self checkIfNoSessions];
              }
            }

            else
            {
              if (sub_1000423E0())
              {
                v146 = sub_100042E68();
                if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                  v197 = 1024;
                  v198 = 605;
                  _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "[%s:%d] nil AVC dictionary - reject invitation", buf, 0x12u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 605, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 5, 0, "nil AVC dictionary - reject invitation");
              [(IDSServiceEmbeddedController *)self checkIfNoSessions];
            }

            v72 = v182;
            goto LABEL_74;
          }

          if (sub_1000423E0())
          {
            v97 = sub_100042E68();
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
            {
              pendingSession4 = [(IDSServiceEmbeddedController *)self pendingSession];
              inviterID4 = [pendingSession4 inviterID];
              uTF8String13 = [inviterID4 UTF8String];
              objb = [(IDSServiceEmbeddedController *)self pendingSession];
              idsSession = [objb idsSession];
              sessionID4 = [idsSession sessionID];
              uTF8String14 = [sessionID4 UTF8String];
              *buf = 136315906;
              v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
              v197 = 1024;
              v198 = 578;
              v199 = 2080;
              v200 = uTF8String13;
              v201 = 2080;
              v202 = uTF8String14;
              _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "[%s:%d] Ignoring invitation -- pendingSession already active from: %s %s", buf, 0x26u);
            }
          }

          pendingSession5 = [(IDSServiceEmbeddedController *)self pendingSession];
          inviterID5 = [pendingSession5 inviterID];
          uTF8String15 = [inviterID5 UTF8String];
          pendingSession6 = [(IDSServiceEmbeddedController *)self pendingSession];
          idsSession2 = [pendingSession6 idsSession];
          sessionID5 = [idsSession2 sessionID];
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 578, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "Ignoring invitation -- pendingSession already active from: %s %s", uTF8String15, [sessionID5 UTF8String]);

          v51 = serviceCopy;
          if (v177)
          {
            sanitizedFromID18 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
            sessionID6 = [v183 sessionID];
            [(IDSServiceEmbeddedController *)self sendMessageInviteIgnored:sanitizedFromID18 sessionID:sessionID6 service:serviceCopy error:@"Ignore_PendingInvite"];
          }

          [(IDSServiceEmbeddedController *)self checkIfNoSessions];

LABEL_114:
          goto LABEL_44;
        }
      }

      v51 = serviceCopy;
      if (v177)
      {
        sanitizedFromID19 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        sessionID7 = [sessionCopy sessionID];
        [(IDSServiceEmbeddedController *)self sendMessageInviteIgnored:sanitizedFromID19 sessionID:sessionID7 service:serviceCopy error:@"Ignore_ScreenSharingRestricted"];
      }

      [(IDSServiceEmbeddedController *)self checkIfNoSessions];

      goto LABEL_114;
    }
  }

  else
  {
    if (v36)
    {
      v47 = sub_100042E68();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        sanitizedFromID20 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        uTF8String16 = [sanitizedFromID20 UTF8String];
        *buf = 136315650;
        v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
        v197 = 1024;
        v198 = 481;
        v199 = 2080;
        v200 = uTF8String16;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%s:%d] invalid invite dictionary from %s - ignoring", buf, 0x1Cu);
      }
    }

    sanitizedFromID21 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 481, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "invalid invite dictionary from %s - ignoring", [sanitizedFromID21 UTF8String]);
  }

  [(IDSServiceEmbeddedController *)self checkIfNoSessions];
LABEL_43:
  v51 = serviceCopy;
LABEL_44:
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v11 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust];

  if (v11)
  {
    validationURL = [(IDSServiceEmbeddedController *)self validationURL];
    v13 = [NSURLComponents componentsWithString:validationURL];

    host = [v13 host];

    if (host)
    {
      keyExistsAndHasValidFormat = 0;
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PinningDisabled", @"com.apple.screensharingserver", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v16 = AppBooleanValue == 0;
      }

      else
      {
        v16 = 1;
      }

      v17 = !v16;
      if (sub_1000423E0())
      {
        v18 = sub_100042E68();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v29 = "[IDSServiceEmbeddedController URLSession:didReceiveChallenge:completionHandler:]";
          v30 = 1024;
          v31 = 682;
          v32 = 1024;
          v33 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] PinningDisabled: %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 682, "[IDSServiceEmbeddedController URLSession:didReceiveChallenge:completionHandler:]", 7, 0, "PinningDisabled: %d", v17);
      host2 = [v13 host];
      if (v17)
      {
        SSL = SecPolicyCreateSSL(1u, host2);

        if (!SSL)
        {
          goto LABEL_22;
        }
      }

      else
      {
        SSL = SecPolicyCreateAppleSSLPinned();
      }

      protectionSpace2 = [challengeCopy protectionSpace];
      serverTrust = [protectionSpace2 serverTrust];

      v23 = SecTrustSetPolicies(serverTrust, SSL);
      if (SSL)
      {
        CFRelease(SSL);
      }

      if (!v23)
      {
        result = kSecTrustResultInvalid;
        if (!SecTrustEvaluate(serverTrust, &result))
        {
          if (sub_1000423E0())
          {
            v24 = sub_100042E68();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v29 = "[IDSServiceEmbeddedController URLSession:didReceiveChallenge:completionHandler:]";
              v30 = 1024;
              v31 = 717;
              v32 = 1024;
              v33 = result;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] trustResult: %d", buf, 0x18u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 717, "[IDSServiceEmbeddedController URLSession:didReceiveChallenge:completionHandler:]", 7, 0, "trustResult: %d", result);
          if (result == kSecTrustResultUnspecified || result == kSecTrustResultProceed)
          {
            v25 = [NSURLCredential credentialForTrust:serverTrust];
            handlerCopy[2](handlerCopy, 0, v25);

            goto LABEL_23;
          }
        }
      }
    }

LABEL_22:
    handlerCopy[2](handlerCopy, 2, 0);
    dispatch_semaphore_signal(self->url_sem);
LABEL_23:

    goto LABEL_24;
  }

  handlerCopy[2](handlerCopy, 1, 0);
LABEL_24:
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  errorCopy = error;
  v7 = sub_1000423E0();
  if (errorCopy)
  {
    if (v7)
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [errorCopy description];
        *buf = 136315650;
        v13 = "[IDSServiceEmbeddedController URLSession:task:didCompleteWithError:]";
        v14 = 1024;
        v15 = 746;
        v16 = 2080;
        uTF8String = [v9 UTF8String];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] URLSession:task:didCompleteWithError: %s", buf, 0x1Cu);
      }
    }

    v10 = [errorCopy description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 746, "-[IDSServiceEmbeddedController URLSession:task:didCompleteWithError:]", 7, 0, "URLSession:task:didCompleteWithError: %s", [v10 UTF8String]);

    [(IDSServiceEmbeddedController *)self setUrlResponseData:0];
  }

  else
  {
    if (v7)
    {
      v11 = sub_100042E68();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[IDSServiceEmbeddedController URLSession:task:didCompleteWithError:]";
        v14 = 1024;
        v15 = 750;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] URLSession:task:didCompleteWithError:", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 750, "[IDSServiceEmbeddedController URLSession:task:didCompleteWithError:]", 7, 0, "URLSession:task:didCompleteWithError:");
  }

  dispatch_semaphore_signal(self->url_sem);
}

- (BOOL)validateRedwoodRequestDictionary:(id)dictionary account:(id)account fromID:(id)d error:(id *)error
{
  dictionaryCopy = dictionary;
  accountCopy = account;
  dCopy = d;
  v13 = [dictionaryCopy objectForKeyedSubscript:@"sessionToken"];
  if (v13)
  {
    v14 = v13;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"resourcepath"];

    if (v15)
    {
      v16 = [dictionaryCopy objectForKeyedSubscript:@"appleName"];
      if (v16)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (sub_1000423E0())
          {
            v32 = sub_100042E68();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v89 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
              v90 = 1024;
              v91 = 784;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%s:%d] name specifier is invalid", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 784, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "name specifier is invalid");
          goto LABEL_34;
        }

        if ([v16 length] >= 0xB)
        {
          if (sub_1000423E0())
          {
            v17 = sub_100042E68();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v89 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
              v90 = 1024;
              v91 = 790;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] name length is invalid", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 790, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "name length is invalid");
LABEL_34:
          LOBYTE(v18) = 0;
LABEL_94:

          goto LABEL_95;
        }
      }

      v19 = [dictionaryCopy objectForKeyedSubscript:@"shareType"];
      v20 = v19;
      if (v19 && [v19 length] >= 0x1F)
      {
        if (sub_1000423E0())
        {
          v21 = sub_100042E68();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v89 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
            v90 = 1024;
            v91 = 801;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] shareType length is invalid", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 801, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "shareType length is invalid");
        LOBYTE(v18) = 0;
        goto LABEL_93;
      }

      errorCopy = error;
      v81 = v20;
      v96[0] = @"version";
      v96[1] = @"params";
      v97[0] = @"1.0";
      v94[0] = @"sessionToken";
      v22 = [dictionaryCopy objectForKeyedSubscript:@"sessionToken"];
      v95[0] = v22;
      v94[1] = @"fromID";
      stringWithSchemeTrimmed = [dCopy stringWithSchemeTrimmed];
      v95[1] = stringWithSchemeTrimmed;
      v94[2] = @"toID";
      aliasStrings = [accountCopy aliasStrings];
      v95[2] = aliasStrings;
      v25 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:3];
      v97[1] = v25;
      v26 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:2];
      v82 = v16;
      v27 = [v26 mutableCopy];

      if (v82)
      {
        [v27 setObject:v82 forKeyedSubscript:@"appleName"];
      }

      v20 = v81;
      if (v81)
      {
        [v27 setObject:v81 forKeyedSubscript:@"shareType"];
      }

      v85 = 0;
      v28 = [NSJSONSerialization dataWithJSONObject:v27 options:1 error:&v85];
      v29 = v85;
      v80 = v27;
      if (v29)
      {
        v30 = v29;
        if (sub_1000423E0())
        {
          v31 = sub_100042E68();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v89 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
            v90 = 1024;
            v91 = 830;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] error on serialization", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 830, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "error on serialization");

        goto LABEL_85;
      }

      v78 = v28;
      v33 = [dictionaryCopy objectForKeyedSubscript:@"timeout"];
      [v33 floatValue];
      if (v34 == 0.0)
      {
        v35 = 60.0;
      }

      else
      {
        v35 = v34;
      }

      v36 = [dictionaryCopy objectForKeyedSubscript:@"isprod"];
      if (sub_1000423E0())
      {
        v37 = sub_100042E68();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          uTF8String = [(__CFString *)v36 UTF8String];
          *buf = 136315650;
          v89 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
          v90 = 1024;
          v91 = 842;
          v92 = 2080;
          v93 = uTF8String;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%s:%d] hostIdentifier: %s", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 842, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "hostIdentifier: %s", [(__CFString *)v36 UTF8String]);
      keyExistsAndHasValidFormat = 0;
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AllowNonProductionServers", @"com.apple.screensharingserver", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v40 = AppBooleanValue == 0;
      }

      else
      {
        v40 = 1;
      }

      v41 = !v40;
      if (sub_1000423E0())
      {
        v42 = sub_100042E68();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v89 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
          v90 = 1024;
          v91 = 846;
          v92 = 1024;
          LODWORD(v93) = v41;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%s:%d] allowNonProductionServers: %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 846, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "allowNonProductionServers: %d", v41);
      v43 = [NSMutableDictionary dictionaryWithCapacity:12];
      [v43 addEntriesFromDictionary:&off_10006B220];
      if (v41)
      {
        [v43 addEntriesFromDictionary:&off_10006B248];
        [v43 addEntriesFromDictionary:&off_10006B270];
      }

      v44 = [v43 objectForKeyedSubscript:v36];
      [(IDSServiceEmbeddedController *)self setValidationURL:v44];

      validationURL = [(IDSServiceEmbeddedController *)self validationURL];
      v46 = [NSURL URLWithString:validationURL];
      v18 = [dictionaryCopy objectForKeyedSubscript:@"resourcepath"];
      v47 = [v46 URLByAppendingPathComponent:v18];

      v76 = v47;
      v77 = v43;
      if (!v47)
      {
        v86 = NSLocalizedDescriptionKey;
        v55 = &stru_100069830;
        if (v36)
        {
          v55 = v36;
        }

        v56 = [NSString stringWithFormat:@"Bad isprod value:%@", v55];
        v87 = v56;
        v53 = 1;
        v48 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];

        v30 = [NSError errorWithDomain:@"com.apple.ssinvitationagent" code:-1 userInfo:v48];
        v52 = v78;
LABEL_84:

        v20 = v81;
        if (!v53)
        {
LABEL_92:

          v16 = v82;
LABEL_93:

          goto LABEL_94;
        }

LABEL_85:
        if (sub_1000423E0())
        {
          v65 = sub_100042E68();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            v66 = [NSString stringWithFormat:@"Redwood Validation Failed: %@", v30];
            uTF8String2 = [v66 UTF8String];
            *buf = 136315650;
            v89 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
            v90 = 1024;
            v91 = 917;
            v92 = 2080;
            v93 = uTF8String2;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "[%s:%d] %s", buf, 0x1Cu);
          }
        }

        v68 = [NSString stringWithFormat:@"Redwood Validation Failed: %@", v30];
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 917, "-[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "%s", [v68 UTF8String]);

        if (errorCopy)
        {
          v69 = v30;
          *errorCopy = v30;
        }

        [(IDSServiceEmbeddedController *)self setUrlResponseData:0];
        [(IDSServiceEmbeddedController *)self setValidationURL:0];
        [(IDSServiceEmbeddedController *)self setUrlResponseData:0];
        LOBYTE(v18) = 0;
        goto LABEL_92;
      }

      [(IDSServiceEmbeddedController *)self setUrlResponseData:0];
      v48 = [NSMutableURLRequest requestWithURL:v47 cachePolicy:1 timeoutInterval:v35];
      [v48 setHTTPBody:v78];
      [v48 setValue:@"application/json" forHTTPHeaderField:@"content-type"];
      [v48 setValue:@"SafeView/1.0 (Macintosh; Intel Mac OS X 10_10)" forHTTPHeaderField:@"User-Agent"];
      [v48 setHTTPMethod:@"POST"];
      v74 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
      v73 = [NSURLSession sessionWithConfiguration:"sessionWithConfiguration:delegate:delegateQueue:" delegate:? delegateQueue:?];
      v49 = [v73 dataTaskWithRequest:v48];
      [v49 resume];

      url_sem = self->url_sem;
      v51 = dispatch_time(0, 60000000000);
      v75 = v36;
      if (dispatch_semaphore_wait(url_sem, v51))
      {
        v52 = v78;
        if (sub_1000423E0())
        {
          v18 = sub_100042E68();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v89 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
            v90 = 1024;
            v91 = 892;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%s:%d] no response from validation server", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 892, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 3, 0, "no response from validation server");
      }

      else
      {
        urlResponseData = [(IDSServiceEmbeddedController *)self urlResponseData];

        if (urlResponseData)
        {
          urlResponseData2 = [(IDSServiceEmbeddedController *)self urlResponseData];
          v83 = 0;
          v59 = [NSJSONSerialization JSONObjectWithData:urlResponseData2 options:0 error:&v83];
          v30 = v83;

          v53 = v30 != 0;
          v60 = sub_1000423E0();
          v72 = v59;
          if (v30)
          {
            v52 = v78;
            v54 = v73;
            if (v60)
            {
              v18 = sub_100042E68();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v89 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
                v90 = 1024;
                v91 = 905;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] got error in serialization", buf, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 905, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "got error in serialization");
            v61 = v72;
          }

          else
          {
            v54 = v73;
            if (v60)
            {
              v62 = sub_100042E68();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                v71 = [v59 objectForKeyedSubscript:@"isAppleCare"];
                bOOLValue = [v71 BOOLValue];
                *buf = 136315650;
                v89 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
                v90 = 1024;
                v91 = 909;
                v92 = 1024;
                LODWORD(v93) = bOOLValue;
                _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "[%s:%d] going to return %d", buf, 0x18u);
              }
            }

            v18 = [v59 objectForKeyedSubscript:@"isAppleCare"];
            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 909, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "going to return %d", [v18 BOOLValue]);

            [(IDSServiceEmbeddedController *)self setValidationURL:0];
            [(IDSServiceEmbeddedController *)self setUrlResponseData:0];
            [v73 invalidateAndCancel];
            v64 = [v59 objectForKeyedSubscript:@"isAppleCare"];
            LOBYTE(v18) = [v64 BOOLValue];

            v61 = v72;
            v52 = v78;
          }

          goto LABEL_83;
        }

        v52 = v78;
        if (sub_1000423E0())
        {
          v18 = sub_100042E68();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v89 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
            v90 = 1024;
            v91 = 898;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%s:%d] no data from validation server", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 898, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 3, 0, "no data from validation server");
      }

      v30 = 0;
      v53 = 1;
      v54 = v73;
LABEL_83:

      v36 = v75;
      goto LABEL_84;
    }
  }

  LOBYTE(v18) = 0;
LABEL_95:

  return v18 & 1;
}

- (id)datagramConnectionFromIDS:(id)s
{
  sCopy = s;
  idsService = [(IDSServiceEmbeddedController *)self idsService];
  v14 = 0;
  v6 = [idsService datagramConnectionForSessionDestination:sCopy error:&v14];

  v7 = v14;
  if (v7)
  {
    if (sub_1000423E0())
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v7 description];
        uTF8String = [v9 UTF8String];
        *buf = 136315650;
        v16 = "[IDSServiceEmbeddedController datagramConnectionFromIDS:]";
        v17 = 1024;
        v18 = 935;
        v19 = 2080;
        v20 = uTF8String;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%s:%d] NWDatagramConnection error: %s", buf, 0x1Cu);
      }
    }

    v11 = [v7 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 935, "-[IDSServiceEmbeddedController datagramConnectionFromIDS:]", 3, 0, "NWDatagramConnection error: %s", [v11 UTF8String]);

    v12 = 0;
  }

  else
  {
    v12 = v6;
  }

  return v12;
}

- (void)addActiveSession:(id)session
{
  sessionCopy = session;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[IDSServiceEmbeddedController addActiveSession:]";
      v15 = 1024;
      v16 = 944;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] Add Active Session", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 944, "[IDSServiceEmbeddedController addActiveSession:]", 7, 0, "Add Active Session");
  [(IDSServiceEmbeddedController *)self closeAllSessions];
  if (sub_1000423E0())
  {
    v6 = sub_100042E68();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "[IDSServiceEmbeddedController addActiveSession:]";
      v15 = 1024;
      v16 = 955;
      v17 = 2048;
      v18 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] add active session %p", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 955, "[IDSServiceEmbeddedController addActiveSession:]", 7, 0, "add active session %p", sessionCopy);
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  uniqueID = [sessionCopy uniqueID];
  [activeSessions setObject:sessionCopy forKeyedSubscript:uniqueID];

  [(IDSServiceEmbeddedController *)self setPendingSession:0];
  wallpaperSuspensionAssertion = [(IDSServiceEmbeddedController *)self wallpaperSuspensionAssertion];

  if (!wallpaperSuspensionAssertion)
  {
    SBSAcquireWallpaperAnimationSuspensionAssertion();
  }

  if ([sessionCopy inviterKind] == 2 || objc_msgSend(sessionCopy, "inviterKind") == 3)
  {
    sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    sessionID = [sessionCopy sessionID];
    idsService = [(IDSServiceEmbeddedController *)self idsService];
    [(IDSServiceEmbeddedController *)self sendMessageStartScreenSend:sanitizedFromID sessionID:sessionID service:idsService];
  }
}

- (void)removeSession:(id)session andEndIDSSession:(BOOL)sSession
{
  sSessionCopy = sSession;
  sessionCopy = session;
  if (sub_1000423E0())
  {
    v7 = sub_100042E68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = "[IDSServiceEmbeddedController removeSession:andEndIDSSession:]";
      v13 = 1024;
      v14 = 979;
      v15 = 1024;
      v16 = sSessionCopy;
      v17 = 2048;
      v18 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] removeSession: shouldEndIDSSession:%d for session %p", buf, 0x22u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 979, "[IDSServiceEmbeddedController removeSession:andEndIDSSession:]", 7, 0, "removeSession: shouldEndIDSSession:%d for session %p", sSessionCopy, sessionCopy);
  sub_1000430F0(0, 0, 0.0, 0.0);
  if ([(IDSServiceEmbeddedController *)self viewServicePID]!= -1)
  {
    kill([(IDSServiceEmbeddedController *)self viewServicePID], 15);
    [(IDSServiceEmbeddedController *)self setViewServicePID:0xFFFFFFFFLL];
  }

  if (sessionCopy)
  {
    pendingSession = [(IDSServiceEmbeddedController *)self pendingSession];

    if (pendingSession == sessionCopy)
    {
      [(IDSServiceEmbeddedController *)self setPendingSession:0];
    }

    [(IDSServiceEmbeddedController *)self setIsShareSettings:0];
    [(IDSServiceEmbeddedController *)self setSessionPaused:0];
    if (sSessionCopy)
    {
      [sessionCopy doEndSession];
    }

    activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
    uniqueID = [sessionCopy uniqueID];
    [activeSessions removeObjectForKey:uniqueID];

    [(IDSServiceEmbeddedController *)self checkIfNoSessions];
  }
}

- (void)closeAllSessions
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[IDSServiceEmbeddedController closeAllSessions]";
      v17 = 1024;
      v18 = 1014;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] closeAllSessions", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1014, "[IDSServiceEmbeddedController closeAllSessions]", 7, 0, "closeAllSessions");
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  allValues = [activeSessions allValues];

  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [(IDSServiceEmbeddedController *)self removeSession:*(*(&v10 + 1) + 8 * v9) andEndIDSSession:1];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)exitTimerCallback:(id)callback
{
  callbackCopy = callback;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[IDSServiceEmbeddedController exitTimerCallback:]";
      v12 = 1024;
      v13 = 1022;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] exit timer called", &v10, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1022, "[IDSServiceEmbeddedController exitTimerCallback:]", 7, 0, "exit timer called");
  pendingSession = [(IDSServiceEmbeddedController *)self pendingSession];
  if (pendingSession)
  {
  }

  else
  {
    activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
    v8 = [activeSessions count];

    if (!v8)
    {
      if (sub_1000423E0())
      {
        v9 = sub_100042E68();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315394;
          v11 = "[IDSServiceEmbeddedController exitTimerCallback:]";
          v12 = 1024;
          v13 = 1025;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] exiting", &v10, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1025, "[IDSServiceEmbeddedController exitTimerCallback:]", 7, 0, "exiting");
      exit(0);
    }
  }

  [(IDSServiceEmbeddedController *)self setExitTimer:0];
}

- (void)checkIfNoSessions
{
  pendingSession = [(IDSServiceEmbeddedController *)self pendingSession];
  if (pendingSession)
  {

LABEL_4:
    if (sub_1000423E0())
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v17 = "[IDSServiceEmbeddedController checkIfNoSessions]";
        v18 = 1024;
        v19 = 1083;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] There are active sessions", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1083, "[IDSServiceEmbeddedController checkIfNoSessions]", 7, 0, "There are active sessions");
    return;
  }

  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  v5 = [activeSessions count];

  if (v5)
  {
    goto LABEL_4;
  }

  if (sub_1000423E0())
  {
    v7 = sub_100042E68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[IDSServiceEmbeddedController checkIfNoSessions]";
      v18 = 1024;
      v19 = 1037;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] no active or pending sessions", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1037, "[IDSServiceEmbeddedController checkIfNoSessions]", 7, 0, "no active or pending sessions");
  doubleHeightStatusBarAssertion = self->_doubleHeightStatusBarAssertion;
  if (doubleHeightStatusBarAssertion)
  {
    [(SBSStatusBarStyleOverridesAssertion *)doubleHeightStatusBarAssertion invalidate];
    [(IDSServiceEmbeddedController *)self setDoubleHeightStatusBarAssertion:0];
    if (sub_1000423E0())
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v17 = "[IDSServiceEmbeddedController checkIfNoSessions]";
        v18 = 1024;
        v19 = 1053;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] released status bar assertion", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1053, "[IDSServiceEmbeddedController checkIfNoSessions]", 7, 0, "released status bar assertion");
  }

  wallpaperSuspensionAssertion = [(IDSServiceEmbeddedController *)self wallpaperSuspensionAssertion];

  if (wallpaperSuspensionAssertion)
  {
    wallpaperSuspensionAssertion2 = [(IDSServiceEmbeddedController *)self wallpaperSuspensionAssertion];
    [wallpaperSuspensionAssertion2 invalidate];

    [(IDSServiceEmbeddedController *)self setWallpaperSuspensionAssertion:0];
  }

  _os_nospin_lock_lock();
  osTransaction = [(IDSServiceEmbeddedController *)self osTransaction];

  if (osTransaction)
  {
    [(IDSServiceEmbeddedController *)self setOsTransaction:0];
  }

  _os_nospin_lock_unlock();
  exitTimer = [(IDSServiceEmbeddedController *)self exitTimer];

  if (exitTimer)
  {
    if (sub_1000423E0())
    {
      v14 = sub_100042E68();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v17 = "[IDSServiceEmbeddedController checkIfNoSessions]";
        v18 = 1024;
        v19 = 1080;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] exit timer already exists", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1080, "[IDSServiceEmbeddedController checkIfNoSessions]", 7, 0, "exit timer already exists");
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100016CDC;
    block[3] = &unk_100068CB0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (id)activeViewerStatusString
{
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  allValues = [activeSessions allValues];
  lastObject = [allValues lastObject];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"kSSViewingScreen" value:&stru_100069830 table:0];
  inviterFullName = [lastObject inviterFullName];
  v8 = [NSString stringWithFormat:v6, inviterFullName];

  return v8;
}

- (void)createStatusBar
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IDSServiceEmbeddedController createStatusBar]";
      v9 = 1024;
      v10 = 1097;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] createStatusBar", &v7, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1097, "[IDSServiceEmbeddedController createStatusBar]", 7, 0, "createStatusBar");
  if (self->_doubleHeightStatusBarAssertion)
  {
    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315394;
        v8 = "[IDSServiceEmbeddedController createStatusBar]";
        v9 = 1024;
        v10 = 1135;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] already have menu bar assertion", &v7, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1135, "[IDSServiceEmbeddedController createStatusBar]", 7, 0, "already have menu bar assertion");
  }

  else
  {
    activeViewerStatusString = [(IDSServiceEmbeddedController *)self activeViewerStatusString];
    v6 = [[SBSStatusBarStyleOverridesAssertion alloc] initWithStatusBarStyleOverrides:0x4000 forPID:getpid() exclusive:1 showsWhenForeground:0];
    [(IDSServiceEmbeddedController *)self setDoubleHeightStatusBarAssertion:v6];

    [(SBSStatusBarStyleOverridesAssertion *)self->_doubleHeightStatusBarAssertion setStatusString:activeViewerStatusString];
    [(SBSStatusBarStyleOverridesAssertion *)self->_doubleHeightStatusBarAssertion acquireWithHandler:&stru_100068E08 invalidationHandler:&stru_100068E28];
  }
}

- (void)createLockScreenNotifier
{
  if (![(IDSServiceEmbeddedController *)self lockScreenObserverActive])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10001737C, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    [(IDSServiceEmbeddedController *)self setLockScreenObserverActive:1];
  }
}

- (void)postAskToCopyToPasteboardNotification
{
  error = 0;
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  allValues = [activeSessions allValues];
  lastObject = [allValues lastObject];

  if (sub_1000423E0())
  {
    v6 = sub_100042E68();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]";
      v33 = 1024;
      v34 = 1182;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] postAskToCopyToPasteboardNotification", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1182, "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]", 7, 0, "postAskToCopyToPasteboardNotification");
  if ([(IDSServiceEmbeddedController *)self askToCopyToPasteboardNotification])
  {
    if (sub_1000423E0())
    {
      v7 = sub_100042E68();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v32 = "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]";
        v33 = 1024;
        v34 = 1186;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification active - ignore request", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1186, "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]", 7, 0, "notification active - ignore request");
  }

  else
  {
    [(IDSServiceEmbeddedController *)self setAskToCopyToPasteboardTimedOut:0];
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    [lastObject addNotificationIconTo:Mutable];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"kSSAddToClipboardMessage" value:&stru_100069830 table:0];
    inviterFullName = [lastObject inviterFullName];
    v12 = [NSString stringWithFormat:v10, inviterFullName];

    if (v12)
    {
      askToCopyToPasteboardUserMessage = [(IDSServiceEmbeddedController *)self askToCopyToPasteboardUserMessage];

      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v12);
      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertMessageKey, askToCopyToPasteboardUserMessage);
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v12);
    }

    inviterFullName2 = [lastObject inviterFullName];

    if (inviterFullName2)
    {
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, inviterFullName2);
    }

    MainBundle = CFBundleGetMainBundle();
    v16 = CFBundleCopyLocalizedString(MainBundle, @"kSSCancel", @"kSSCancel", 0);
    if (v16)
    {
      v17 = v16;
      CFDictionaryAddValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, v16);
      CFRelease(v17);
    }

    v18 = CFBundleGetMainBundle();
    v19 = CFBundleCopyLocalizedString(v18, @"kSSCopy", @"kSSCopy", 0);
    if (v19)
    {
      v20 = v19;
      CFDictionaryAddValue(Mutable, kCFUserNotificationOtherButtonTitleKey, v19);
      CFRelease(v20);
    }

    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
    [(IDSServiceEmbeddedController *)self setAskToCopyToPasteboardNotification:CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, Mutable)];
    CFRelease(Mutable);
    askToCopyToPasteboardNotification = [(IDSServiceEmbeddedController *)self askToCopyToPasteboardNotification];
    v22 = sub_1000423E0();
    if (askToCopyToPasteboardNotification)
    {
      if (v22)
      {
        v23 = sub_100042E68();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v32 = "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]";
          v33 = 1024;
          v34 = 1236;
          v35 = 1024;
          v36 = error;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] got error %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1236, "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]", 7, 0, "got error %d", error);
      RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, [(IDSServiceEmbeddedController *)self askToCopyToPasteboardNotification], sub_100017FB0, 0);
      if (RunLoopSource)
      {
        v25 = RunLoopSource;
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, v25, kCFRunLoopDefaultMode);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100018754;
        block[3] = &unk_100068CB0;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
        CFRelease(v25);
      }

      else
      {
        if (sub_1000423E0())
        {
          v28 = sub_100042E68();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v32 = "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]";
            v33 = 1024;
            v34 = 1241;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to create run loop source for notification", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1241, "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]", 7, 0, "Failed to create run loop source for notification");
        CFRelease([(IDSServiceEmbeddedController *)self askToCopyToPasteboardNotification]);
        [(IDSServiceEmbeddedController *)self setAskToCopyToPasteboardNotification:0];
      }
    }

    else
    {
      if (v22)
      {
        v27 = sub_100042E68();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v32 = "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]";
          v33 = 1024;
          v34 = 1233;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%s:%d] failed to create notification", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1233, "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]", 7, 0, "failed to create notification");
    }
  }
}

- (void)askToToCopyToPasteboardTimeout:(id)timeout
{
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController askToToCopyToPasteboardTimeout:]";
      v7 = 1024;
      v8 = 1317;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] askToToCopyToPasteboardTimeout", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1317, "[IDSServiceEmbeddedController askToToCopyToPasteboardTimeout:]", 7, 0, "askToToCopyToPasteboardTimeout");
  [(IDSServiceEmbeddedController *)self removeAskToCopyToPasteboardNotification];
}

- (void)removeAskToCopyToPasteboardNotification
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[IDSServiceEmbeddedController removeAskToCopyToPasteboardNotification]";
      v12 = 1024;
      v13 = 1323;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] remove notification called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1323, "[IDSServiceEmbeddedController removeAskToCopyToPasteboardNotification]", 7, 0, "remove notification called");
  if ([(IDSServiceEmbeddedController *)self askToCopyToPasteboardNotification])
  {
    [(IDSServiceEmbeddedController *)self setAskToCopyToPasteboardTimedOut:1];
    v4 = CFUserNotificationCancel([(IDSServiceEmbeddedController *)self askToCopyToPasteboardNotification]);
    if (v4)
    {
      v5 = v4;
      if (sub_1000423E0())
      {
        v6 = sub_100042E68();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v11 = "[IDSServiceEmbeddedController removeAskToCopyToPasteboardNotification]";
          v12 = 1024;
          v13 = 1329;
          v14 = 1024;
          v15 = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] cancel err = %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1329, "[IDSServiceEmbeddedController removeAskToCopyToPasteboardNotification]", 7, 0, "cancel err = %d", v5);
    }

    askToCopyToPasteboardTimeoutTimer = [(IDSServiceEmbeddedController *)self askToCopyToPasteboardTimeoutTimer];

    if (askToCopyToPasteboardTimeoutTimer)
    {
      askToCopyToPasteboardTimeoutTimer2 = [(IDSServiceEmbeddedController *)self askToCopyToPasteboardTimeoutTimer];
      [askToCopyToPasteboardTimeoutTimer2 invalidate];

      [(IDSServiceEmbeddedController *)self setAskToCopyToPasteboardTimeoutTimer:0];
    }
  }

  else
  {
    if (sub_1000423E0())
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v11 = "[IDSServiceEmbeddedController removeAskToCopyToPasteboardNotification]";
        v12 = 1024;
        v13 = 1337;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] no notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1337, "[IDSServiceEmbeddedController removeAskToCopyToPasteboardNotification]", 7, 0, "no notification");
  }
}

- (void)postAskToOpenURLNotification
{
  error = 0;
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  allValues = [activeSessions allValues];
  lastObject = [allValues lastObject];

  if (sub_1000423E0())
  {
    v6 = sub_100042E68();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "[IDSServiceEmbeddedController postAskToOpenURLNotification]";
      v31 = 1024;
      v32 = 1373;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] postAskToOpenURLNotification", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1373, "[IDSServiceEmbeddedController postAskToOpenURLNotification]", 7, 0, "postAskToOpenURLNotification");
  if ([(IDSServiceEmbeddedController *)self askToOpenURLNotification])
  {
    if (sub_1000423E0())
    {
      v7 = sub_100042E68();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v30 = "[IDSServiceEmbeddedController postAskToOpenURLNotification]";
        v31 = 1024;
        v32 = 1377;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification active - ignore request", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1377, "[IDSServiceEmbeddedController postAskToOpenURLNotification]", 7, 0, "notification active - ignore request");
  }

  else
  {
    [(IDSServiceEmbeddedController *)self setAskToOpenURLTimedOut:0];
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    [lastObject addNotificationIconTo:Mutable];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"kSSOpenURLMessage" value:&stru_100069830 table:0];
    inviterFullName = [lastObject inviterFullName];
    v12 = [NSString stringWithFormat:v10, inviterFullName];

    if (v12)
    {
      urlToOpen = [(IDSServiceEmbeddedController *)self urlToOpen];

      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v12);
      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertMessageKey, urlToOpen);
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v12);
    }

    inviterFullName2 = [lastObject inviterFullName];

    if (inviterFullName2)
    {
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, inviterFullName2);
    }

    MainBundle = CFBundleGetMainBundle();
    v16 = CFBundleCopyLocalizedString(MainBundle, @"kSSCancel", @"kSSCancel", 0);
    if (v16)
    {
      v17 = v16;
      CFDictionaryAddValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, v16);
      CFRelease(v17);
    }

    v18 = CFBundleGetMainBundle();
    v19 = CFBundleCopyLocalizedString(v18, @"kSSOpen", @"kSSOpen", 0);
    if (v19)
    {
      v20 = v19;
      CFDictionaryAddValue(Mutable, kCFUserNotificationOtherButtonTitleKey, v19);
      CFRelease(v20);
    }

    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
    [(IDSServiceEmbeddedController *)self setAskToOpenURLNotification:CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, Mutable)];
    CFRelease(Mutable);
    if ([(IDSServiceEmbeddedController *)self askToOpenURLNotification])
    {
      if (error)
      {
        if (sub_1000423E0())
        {
          v21 = sub_100042E68();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v30 = "[IDSServiceEmbeddedController postAskToOpenURLNotification]";
            v31 = 1024;
            v32 = 1428;
            v33 = 1024;
            v34 = error;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] got error %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1428, "[IDSServiceEmbeddedController postAskToOpenURLNotification]", 7, 0, "got error %d", error);
      }

      RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, [(IDSServiceEmbeddedController *)self askToOpenURLNotification], sub_100019584, 0);
      if (RunLoopSource)
      {
        v23 = RunLoopSource;
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, v23, kCFRunLoopDefaultMode);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100019E1C;
        block[3] = &unk_100068CB0;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
        CFRelease(v23);
      }

      else
      {
        if (sub_1000423E0())
        {
          v26 = sub_100042E68();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v30 = "[IDSServiceEmbeddedController postAskToOpenURLNotification]";
            v31 = 1024;
            v32 = 1433;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to create run loop source for notification", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1433, "[IDSServiceEmbeddedController postAskToOpenURLNotification]", 7, 0, "Failed to create run loop source for notification");
        CFRelease([(IDSServiceEmbeddedController *)self askToOpenURLNotification]);
        [(IDSServiceEmbeddedController *)self setAskToOpenURLNotification:0];
      }
    }

    else
    {
      if (sub_1000423E0())
      {
        v25 = sub_100042E68();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v30 = "[IDSServiceEmbeddedController postAskToOpenURLNotification]";
          v31 = 1024;
          v32 = 1424;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%s:%d] failed to create notification", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1424, "[IDSServiceEmbeddedController postAskToOpenURLNotification]", 7, 0, "failed to create notification");
    }
  }
}

- (void)askToOpenURLTimeout:(id)timeout
{
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController askToOpenURLTimeout:]";
      v7 = 1024;
      v8 = 1508;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] ask to open URL timed out", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1508, "[IDSServiceEmbeddedController askToOpenURLTimeout:]", 7, 0, "ask to open URL timed out");
  [(IDSServiceEmbeddedController *)self removeAskToOpenURLNotification];
}

- (void)removeAskToOpenURLNotification
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[IDSServiceEmbeddedController removeAskToOpenURLNotification]";
      v12 = 1024;
      v13 = 1515;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] remove notification called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1515, "[IDSServiceEmbeddedController removeAskToOpenURLNotification]", 7, 0, "remove notification called");
  if ([(IDSServiceEmbeddedController *)self askToOpenURLNotification])
  {
    [(IDSServiceEmbeddedController *)self setAskToOpenURLTimedOut:1];
    v4 = CFUserNotificationCancel([(IDSServiceEmbeddedController *)self askToOpenURLNotification]);
    if (v4)
    {
      v5 = v4;
      if (sub_1000423E0())
      {
        v6 = sub_100042E68();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v11 = "[IDSServiceEmbeddedController removeAskToOpenURLNotification]";
          v12 = 1024;
          v13 = 1521;
          v14 = 1024;
          v15 = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] cancel err = %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1521, "[IDSServiceEmbeddedController removeAskToOpenURLNotification]", 7, 0, "cancel err = %d", v5);
    }

    askToOpenURLTimeoutTimer = [(IDSServiceEmbeddedController *)self askToOpenURLTimeoutTimer];

    if (askToOpenURLTimeoutTimer)
    {
      askToOpenURLTimeoutTimer2 = [(IDSServiceEmbeddedController *)self askToOpenURLTimeoutTimer];
      [askToOpenURLTimeoutTimer2 invalidate];

      [(IDSServiceEmbeddedController *)self setAskToOpenURLTimeoutTimer:0];
    }
  }

  else
  {
    if (sub_1000423E0())
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v11 = "[IDSServiceEmbeddedController removeAskToOpenURLNotification]";
        v12 = 1024;
        v13 = 1529;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] no notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1529, "[IDSServiceEmbeddedController removeAskToOpenURLNotification]", 7, 0, "no notification");
  }
}

- (void)postAskToResumeNotification
{
  error = 0;
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  allValues = [activeSessions allValues];
  lastObject = [allValues lastObject];

  if ([(IDSServiceEmbeddedController *)self sessionPaused])
  {
    askToResumeNotification = [(IDSServiceEmbeddedController *)self askToResumeNotification];
    v7 = sub_1000423E0();
    if (askToResumeNotification)
    {
      if (v7)
      {
        v8 = sub_100042E68();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v39 = "[IDSServiceEmbeddedController postAskToResumeNotification]";
          v40 = 1024;
          v41 = 1556;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification active - ignore request", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1556, "[IDSServiceEmbeddedController postAskToResumeNotification]", 7, 0, "notification active - ignore request");
    }

    else
    {
      if (v7)
      {
        v10 = sub_100042E68();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v39 = "[IDSServiceEmbeddedController postAskToResumeNotification]";
          v40 = 1024;
          v41 = 1559;
          v42 = 2048;
          askToResumeNotification2 = [(IDSServiceEmbeddedController *)self askToResumeNotification];
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] self.askToResumeNotification  %p", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1559, "[IDSServiceEmbeddedController postAskToResumeNotification]", 7, 0, "self.askToResumeNotification  %p", [(IDSServiceEmbeddedController *)self askToResumeNotification]);
      [qword_100070A78 setAskToResumeTimedOut:0];
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      [lastObject addNotificationIconTo:Mutable];
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"kSSAskToResume" value:&stru_100069830 table:0];
      inviterFullName = [lastObject inviterFullName];
      v15 = [NSString stringWithFormat:v13, inviterFullName];

      if (v15)
      {
        CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v15);
      }

      inviterFullName2 = [lastObject inviterFullName];

      if (inviterFullName2)
      {
        CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, inviterFullName2);
      }

      MainBundle = CFBundleGetMainBundle();
      v18 = CFBundleCopyLocalizedString(MainBundle, @"KSSAskToResumeMessageLockScreen", @"KSSAskToResumeMessageLockScreen", 0);
      if (v18)
      {
        v19 = v18;
        CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v18);
        CFRelease(v19);
      }

      v20 = CFBundleGetMainBundle();
      v21 = CFBundleCopyLocalizedString(v20, @"kSSDecline", @"kSSDecline", 0);
      if (v21)
      {
        v22 = v21;
        CFDictionaryAddValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, v21);
        CFRelease(v22);
      }

      v23 = CFBundleGetMainBundle();
      v24 = CFBundleCopyLocalizedString(v23, @"kSSResume", @"kSSResume", 0);
      if (v24)
      {
        v25 = v24;
        CFDictionaryAddValue(Mutable, kCFUserNotificationOtherButtonTitleKey, v24);
        CFRelease(v25);
      }

      else
      {
        if (sub_1000423E0())
        {
          v26 = sub_100042E68();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v39 = "[IDSServiceEmbeddedController postAskToResumeNotification]";
            v40 = 1024;
            v41 = 1601;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%s:%d] did not get string2", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1601, "[IDSServiceEmbeddedController postAskToResumeNotification]", 7, 0, "did not get string2");
      }

      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
      if ([(IDSServiceEmbeddedController *)self showViewerPausedNotification])
      {
        [(IDSServiceEmbeddedController *)self removeViewerPausedNotification];
      }

      [(IDSServiceEmbeddedController *)self setAskToResumeNotification:CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, Mutable)];
      CFRelease(Mutable);
      askToResumeNotification3 = [(IDSServiceEmbeddedController *)self askToResumeNotification];
      v28 = sub_1000423E0();
      if (askToResumeNotification3)
      {
        if (v28)
        {
          v29 = sub_100042E68();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v39 = "[IDSServiceEmbeddedController postAskToResumeNotification]";
            v40 = 1024;
            v41 = 1615;
            v42 = 1024;
            LODWORD(askToResumeNotification2) = error;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%s:%d] got error %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1615, "[IDSServiceEmbeddedController postAskToResumeNotification]", 7, 0, "got error %d", error);
        RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, [(IDSServiceEmbeddedController *)self askToResumeNotification], sub_10001AB4C, 0);
        if (RunLoopSource)
        {
          v31 = RunLoopSource;
          v32 = +[NSDate date];
          [(IDSServiceEmbeddedController *)self setNotificationStartTime:v32];

          Main = CFRunLoopGetMain();
          CFRunLoopAddSource(Main, v31, kCFRunLoopDefaultMode);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10001B304;
          block[3] = &unk_100068CB0;
          block[4] = self;
          dispatch_async(&_dispatch_main_q, block);
          CFRelease(v31);
        }

        else
        {
          if (sub_1000423E0())
          {
            v35 = sub_100042E68();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v39 = "[IDSServiceEmbeddedController postAskToResumeNotification]";
              v40 = 1024;
              v41 = 1620;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to create run loop source for notification", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1620, "[IDSServiceEmbeddedController postAskToResumeNotification]", 7, 0, "Failed to create run loop source for notification");
          CFRelease([(IDSServiceEmbeddedController *)self askToResumeNotification]);
          [(IDSServiceEmbeddedController *)self setAskToResumeNotification:0];
        }
      }

      else
      {
        if (v28)
        {
          v34 = sub_100042E68();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v39 = "[IDSServiceEmbeddedController postAskToResumeNotification]";
            v40 = 1024;
            v41 = 1612;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[%s:%d] failed to create notification", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1612, "[IDSServiceEmbeddedController postAskToResumeNotification]", 7, 0, "failed to create notification");
      }
    }
  }

  else
  {
    if (sub_1000423E0())
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v39 = "[IDSServiceEmbeddedController postAskToResumeNotification]";
        v40 = 1024;
        v41 = 1550;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] not paused - ignore request", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1550, "[IDSServiceEmbeddedController postAskToResumeNotification]", 7, 0, "not paused - ignore request");
  }
}

- (void)askToResumeTimeout:(id)timeout
{
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController askToResumeTimeout:]";
      v7 = 1024;
      v8 = 1696;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] askToResumeTimeout", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1696, "[IDSServiceEmbeddedController askToResumeTimeout:]", 7, 0, "askToResumeTimeout");
  [(IDSServiceEmbeddedController *)self removeUserAskToResumeNotification];
}

- (void)removeUserAskToResumeNotification
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "[IDSServiceEmbeddedController removeUserAskToResumeNotification]";
      v11 = 1024;
      v12 = 1702;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] remove notification called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1702, "[IDSServiceEmbeddedController removeUserAskToResumeNotification]", 7, 0, "remove notification called");
  if ([(IDSServiceEmbeddedController *)self askToResumeNotification])
  {
    [(IDSServiceEmbeddedController *)self setAskToResumeTimedOut:1];
    v4 = CFUserNotificationCancel([(IDSServiceEmbeddedController *)self askToResumeNotification]);
    if (sub_1000423E0())
    {
      v5 = sub_100042E68();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v10 = "[IDSServiceEmbeddedController removeUserAskToResumeNotification]";
        v11 = 1024;
        v12 = 1707;
        v13 = 1024;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] cancel err = %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1707, "[IDSServiceEmbeddedController removeUserAskToResumeNotification]", 7, 0, "cancel err = %d", v4);
    askToResumeTimeoutTimer = [(IDSServiceEmbeddedController *)self askToResumeTimeoutTimer];

    if (askToResumeTimeoutTimer)
    {
      askToResumeTimeoutTimer2 = [(IDSServiceEmbeddedController *)self askToResumeTimeoutTimer];
      [askToResumeTimeoutTimer2 invalidate];

      [(IDSServiceEmbeddedController *)self setAskToResumeTimeoutTimer:0];
    }
  }

  else
  {
    if (sub_1000423E0())
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v10 = "[IDSServiceEmbeddedController removeUserAskToResumeNotification]";
        v11 = 1024;
        v12 = 1715;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] no notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1715, "[IDSServiceEmbeddedController removeUserAskToResumeNotification]", 7, 0, "no notification");
  }
}

- (void)showMessageToUser:(id)user
{
  userCopy = user;
  if ([userCopy length] > 0xC7)
  {
    v4 = 200;
  }

  else
  {
    v4 = [userCopy length];
  }

  v5 = [userCopy rangeOfComposedCharacterSequencesForRange:{0, v4}];
  v7 = [userCopy substringWithRange:{v5, v6}];
  [(IDSServiceEmbeddedController *)self setShowUserMessage:v7];
  [(IDSServiceEmbeddedController *)self postShowUserMessageNotification];
}

- (void)postShowUserMessageNotification
{
  error = 0;
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  allValues = [activeSessions allValues];
  lastObject = [allValues lastObject];

  if (sub_1000423E0())
  {
    v6 = sub_100042E68();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[IDSServiceEmbeddedController postShowUserMessageNotification]";
      v28 = 1024;
      v29 = 1737;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] postShowUserMessageNotification", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1737, "[IDSServiceEmbeddedController postShowUserMessageNotification]", 7, 0, "postShowUserMessageNotification");
  if ([(IDSServiceEmbeddedController *)self showUserMessageNotification])
  {
    if (sub_1000423E0())
    {
      v7 = sub_100042E68();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v27 = "[IDSServiceEmbeddedController postShowUserMessageNotification]";
        v28 = 1024;
        v29 = 1741;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification active - ignore request", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1741, "[IDSServiceEmbeddedController postShowUserMessageNotification]", 7, 0, "notification active - ignore request");
  }

  else
  {
    [(IDSServiceEmbeddedController *)self setShowUserMessageTimedOut:0];
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    [lastObject addNotificationIconTo:Mutable];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"kSSSentMessage" value:&stru_100069830 table:0];
    inviterFullName = [lastObject inviterFullName];
    v12 = [NSString stringWithFormat:v10, inviterFullName];

    if (v12)
    {
      showUserMessage = [(IDSServiceEmbeddedController *)self showUserMessage];

      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v12);
      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertMessageKey, showUserMessage);
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v12);
    }

    inviterFullName2 = [lastObject inviterFullName];

    if (inviterFullName2)
    {
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, inviterFullName2);
    }

    MainBundle = CFBundleGetMainBundle();
    v16 = CFBundleCopyLocalizedString(MainBundle, @"kSSOK", @"kSSOK", 0);
    if (v16)
    {
      v17 = v16;
      CFDictionaryAddValue(Mutable, kCFUserNotificationOtherButtonTitleKey, v16);
      CFRelease(v17);
    }

    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
    [(IDSServiceEmbeddedController *)self setShowUserMessageNotification:CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, Mutable)];
    CFRelease(Mutable);
    if ([(IDSServiceEmbeddedController *)self showUserMessageNotification])
    {
      if (error)
      {
        if (sub_1000423E0())
        {
          v18 = sub_100042E68();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v27 = "[IDSServiceEmbeddedController postShowUserMessageNotification]";
            v28 = 1024;
            v29 = 1785;
            v30 = 1024;
            v31 = error;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] got error %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1785, "[IDSServiceEmbeddedController postShowUserMessageNotification]", 7, 0, "got error %d", error);
      }

      RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, [(IDSServiceEmbeddedController *)self showUserMessageNotification], sub_10001BEB8, 0);
      if (RunLoopSource)
      {
        v20 = RunLoopSource;
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, v20, kCFRunLoopDefaultMode);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001C550;
        block[3] = &unk_100068CB0;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
        CFRelease(v20);
      }

      else
      {
        if (sub_1000423E0())
        {
          v23 = sub_100042E68();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v27 = "[IDSServiceEmbeddedController postShowUserMessageNotification]";
            v28 = 1024;
            v29 = 1790;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to create run loop source for notification", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1790, "[IDSServiceEmbeddedController postShowUserMessageNotification]", 7, 0, "Failed to create run loop source for notification");
        CFRelease([(IDSServiceEmbeddedController *)self showUserMessageNotification]);
        [(IDSServiceEmbeddedController *)self setShowUserMessageNotification:0];
      }
    }

    else
    {
      if (sub_1000423E0())
      {
        v22 = sub_100042E68();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v27 = "[IDSServiceEmbeddedController postShowUserMessageNotification]";
          v28 = 1024;
          v29 = 1781;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] failed to create notification", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1781, "[IDSServiceEmbeddedController postShowUserMessageNotification]", 7, 0, "failed to create notification");
    }
  }
}

- (void)showUserMessageTimeout:(id)timeout
{
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController showUserMessageTimeout:]";
      v7 = 1024;
      v8 = 1859;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] showUserMessageTimeout", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1859, "[IDSServiceEmbeddedController showUserMessageTimeout:]", 7, 0, "showUserMessageTimeout");
  [(IDSServiceEmbeddedController *)self removeShowUserMessageNotification];
}

- (void)removeShowUserMessageNotification
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[IDSServiceEmbeddedController removeShowUserMessageNotification]";
      v12 = 1024;
      v13 = 1865;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] remove notification called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1865, "[IDSServiceEmbeddedController removeShowUserMessageNotification]", 7, 0, "remove notification called");
  if ([(IDSServiceEmbeddedController *)self showUserMessageNotification])
  {
    [(IDSServiceEmbeddedController *)self setShowUserMessageTimedOut:1];
    v4 = CFUserNotificationCancel([(IDSServiceEmbeddedController *)self showUserMessageNotification]);
    if (v4)
    {
      v5 = v4;
      if (sub_1000423E0())
      {
        v6 = sub_100042E68();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v11 = "[IDSServiceEmbeddedController removeShowUserMessageNotification]";
          v12 = 1024;
          v13 = 1871;
          v14 = 1024;
          v15 = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] cancel err = %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1871, "[IDSServiceEmbeddedController removeShowUserMessageNotification]", 7, 0, "cancel err = %d", v5);
    }

    showUserMessageTimeoutTimer = [(IDSServiceEmbeddedController *)self showUserMessageTimeoutTimer];

    if (showUserMessageTimeoutTimer)
    {
      showUserMessageTimeoutTimer2 = [(IDSServiceEmbeddedController *)self showUserMessageTimeoutTimer];
      [showUserMessageTimeoutTimer2 invalidate];

      [(IDSServiceEmbeddedController *)self setShowUserMessageTimeoutTimer:0];
    }
  }

  else
  {
    if (sub_1000423E0())
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v11 = "[IDSServiceEmbeddedController removeShowUserMessageNotification]";
        v12 = 1024;
        v13 = 1879;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] no notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1879, "[IDSServiceEmbeddedController removeShowUserMessageNotification]", 7, 0, "no notification");
  }
}

- (void)postViewerPausedMessageNotification
{
  error = 0;
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  allValues = [activeSessions allValues];
  lastObject = [allValues lastObject];

  if (sub_1000423E0())
  {
    v6 = sub_100042E68();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "[IDSServiceEmbeddedController postViewerPausedMessageNotification]";
      v27 = 1024;
      v28 = 1892;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] postViewerPausedMessageNotification", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1892, "[IDSServiceEmbeddedController postViewerPausedMessageNotification]", 7, 0, "postViewerPausedMessageNotification");
  if ([(IDSServiceEmbeddedController *)self showViewerPausedNotification])
  {
    if (sub_1000423E0())
    {
      v7 = sub_100042E68();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v26 = "[IDSServiceEmbeddedController postViewerPausedMessageNotification]";
        v27 = 1024;
        v28 = 1896;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification active - ignore request", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1896, "[IDSServiceEmbeddedController postViewerPausedMessageNotification]", 7, 0, "notification active - ignore request");
  }

  else
  {
    [(IDSServiceEmbeddedController *)self setShowViewerPausedTimedOut:0];
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    [lastObject addNotificationIconTo:Mutable];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"kSSPaused" value:&stru_100069830 table:0];
    inviterFullName = [lastObject inviterFullName];
    v12 = [NSString stringWithFormat:v10, inviterFullName];

    if (v12)
    {
      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v12);
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v12);
    }

    inviterFullName2 = [lastObject inviterFullName];

    if (inviterFullName2)
    {
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, inviterFullName2);
    }

    MainBundle = CFBundleGetMainBundle();
    v15 = CFBundleCopyLocalizedString(MainBundle, @"kSSOK", @"kSSOK", 0);
    if (v15)
    {
      v16 = v15;
      CFDictionaryAddValue(Mutable, kCFUserNotificationOtherButtonTitleKey, v15);
      CFRelease(v16);
    }

    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
    [(IDSServiceEmbeddedController *)self setShowViewerPausedNotification:CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, Mutable)];
    CFRelease(Mutable);
    if ([(IDSServiceEmbeddedController *)self showViewerPausedNotification])
    {
      if (error)
      {
        if (sub_1000423E0())
        {
          v17 = sub_100042E68();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v26 = "[IDSServiceEmbeddedController postViewerPausedMessageNotification]";
            v27 = 1024;
            v28 = 1939;
            v29 = 1024;
            v30 = error;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] got error %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1939, "[IDSServiceEmbeddedController postViewerPausedMessageNotification]", 7, 0, "got error %d", error);
      }

      RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, [(IDSServiceEmbeddedController *)self showViewerPausedNotification], sub_10001D03C, 0);
      if (RunLoopSource)
      {
        v19 = RunLoopSource;
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, v19, kCFRunLoopDefaultMode);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001D1E8;
        block[3] = &unk_100068CB0;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
        CFRelease(v19);
      }

      else
      {
        if (sub_1000423E0())
        {
          v22 = sub_100042E68();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v26 = "[IDSServiceEmbeddedController postViewerPausedMessageNotification]";
            v27 = 1024;
            v28 = 1944;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to create run loop source for notification", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1944, "[IDSServiceEmbeddedController postViewerPausedMessageNotification]", 7, 0, "Failed to create run loop source for notification");
        CFRelease([(IDSServiceEmbeddedController *)self showViewerPausedNotification]);
        [(IDSServiceEmbeddedController *)self setShowViewerPausedNotification:0];
      }
    }

    else
    {
      if (sub_1000423E0())
      {
        v21 = sub_100042E68();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "[IDSServiceEmbeddedController postViewerPausedMessageNotification]";
          v27 = 1024;
          v28 = 1935;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] failed to create notification", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1935, "[IDSServiceEmbeddedController postViewerPausedMessageNotification]", 7, 0, "failed to create notification");
    }
  }
}

- (void)showViewerPausedTimeout:(id)timeout
{
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController showViewerPausedTimeout:]";
      v7 = 1024;
      v8 = 1975;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] showViewerPausedTimeout", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1975, "[IDSServiceEmbeddedController showViewerPausedTimeout:]", 7, 0, "showViewerPausedTimeout");
  [(IDSServiceEmbeddedController *)self removeViewerPausedNotification];
}

- (void)removeViewerPausedNotification
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[IDSServiceEmbeddedController removeViewerPausedNotification]";
      v12 = 1024;
      v13 = 1981;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] remove notification called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1981, "[IDSServiceEmbeddedController removeViewerPausedNotification]", 7, 0, "remove notification called");
  if ([(IDSServiceEmbeddedController *)self showViewerPausedNotification])
  {
    [(IDSServiceEmbeddedController *)self setShowViewerPausedTimedOut:1];
    v4 = CFUserNotificationCancel([(IDSServiceEmbeddedController *)self showViewerPausedNotification]);
    if (v4)
    {
      v5 = v4;
      if (sub_1000423E0())
      {
        v6 = sub_100042E68();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v11 = "[IDSServiceEmbeddedController removeViewerPausedNotification]";
          v12 = 1024;
          v13 = 1987;
          v14 = 1024;
          v15 = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] cancel err = %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1987, "[IDSServiceEmbeddedController removeViewerPausedNotification]", 7, 0, "cancel err = %d", v5);
    }

    showViewerPausedTimeoutTimer = [(IDSServiceEmbeddedController *)self showViewerPausedTimeoutTimer];

    if (showViewerPausedTimeoutTimer)
    {
      showViewerPausedTimeoutTimer2 = [(IDSServiceEmbeddedController *)self showViewerPausedTimeoutTimer];
      [showViewerPausedTimeoutTimer2 invalidate];

      [(IDSServiceEmbeddedController *)self setShowViewerPausedTimeoutTimer:0];
    }
  }

  else
  {
    if (sub_1000423E0())
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v11 = "[IDSServiceEmbeddedController removeViewerPausedNotification]";
        v12 = 1024;
        v13 = 1995;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] no notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1995, "[IDSServiceEmbeddedController removeViewerPausedNotification]", 7, 0, "no notification");
  }
}

- (void)inviteWasAccepted:(id)accepted
{
  acceptedCopy = accepted;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      idsService = [(IDSServiceEmbeddedController *)self idsService];
      *buf = 136315650;
      v13 = "[IDSServiceEmbeddedController inviteWasAccepted:]";
      v14 = 1024;
      v15 = 2035;
      v16 = 2048;
      v17 = idsService;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] invite accepted   self.idsService %p", buf, 0x1Cu);
    }
  }

  idsService2 = [(IDSServiceEmbeddedController *)self idsService];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2035, "[IDSServiceEmbeddedController inviteWasAccepted:]", 7, 0, "invite accepted   self.idsService %p", idsService2);

  if ([acceptedCopy inviterKind] == 2 || objc_msgSend(acceptedCopy, "inviterKind") == 3)
  {
    sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    sessionID = [acceptedCopy sessionID];
    idsService3 = [(IDSServiceEmbeddedController *)self idsService];
    [(IDSServiceEmbeddedController *)self sendMessageInviteAccepted:sanitizedFromID sessionID:sessionID service:idsService3];
  }

  else
  {
    if (sub_1000423E0())
    {
      v11 = sub_100042E68();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[IDSServiceEmbeddedController inviteWasAccepted:]";
        v14 = 1024;
        v15 = 2039;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] do not send invite accepted message", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2039, "[IDSServiceEmbeddedController inviteWasAccepted:]", 7, 0, "do not send invite accepted message");
  }
}

- (void)pauseResumeResult:(id)result
{
  v4 = [result objectForKey:@"result"];
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "[IDSServiceEmbeddedController pauseResumeResult:]";
      v15 = 1024;
      v16 = 2057;
      v17 = 2048;
      integerValue = [v4 integerValue];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] pauseResumeResult: %ld", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2057, "-[IDSServiceEmbeddedController pauseResumeResult:]", 7, 0, "pauseResumeResult: %ld", [v4 integerValue]);
  integerValue2 = [v4 integerValue];
  if (integerValue2 > 1)
  {
    if (integerValue2 == 2)
    {
      if (sub_1000423E0())
      {
        v12 = sub_100042E68();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v14 = "[IDSServiceEmbeddedController pauseResumeResult:]";
          v15 = 1024;
          v16 = 2072;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] resume chosen", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2072, "[IDSServiceEmbeddedController pauseResumeResult:]", 7, 0, "resume chosen");
      selfCopy2 = self;
      v9 = 0;
      goto LABEL_30;
    }

    if (integerValue2 == 3)
    {
      if (sub_1000423E0())
      {
        v10 = sub_100042E68();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v14 = "[IDSServiceEmbeddedController pauseResumeResult:]";
          v15 = 1024;
          v16 = 2077;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] end session chosen", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2077, "[IDSServiceEmbeddedController pauseResumeResult:]", 7, 0, "end session chosen");
      [(IDSServiceEmbeddedController *)self closeAllSessions];
    }
  }

  else if (integerValue2)
  {
    if (integerValue2 == 1)
    {
      if (sub_1000423E0())
      {
        v7 = sub_100042E68();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v14 = "[IDSServiceEmbeddedController pauseResumeResult:]";
          v15 = 1024;
          v16 = 2067;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] pause chosen", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2067, "[IDSServiceEmbeddedController pauseResumeResult:]", 7, 0, "pause chosen");
      selfCopy2 = self;
      v9 = 1;
LABEL_30:
      [(IDSServiceEmbeddedController *)selfCopy2 pauseScreenSharing:v9];
    }
  }

  else
  {
    if (sub_1000423E0())
    {
      v11 = sub_100042E68();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v14 = "[IDSServiceEmbeddedController pauseResumeResult:]";
        v15 = 1024;
        v16 = 2063;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] cancel chosen", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2063, "[IDSServiceEmbeddedController pauseResumeResult:]", 7, 0, "cancel chosen");
  }

  [(IDSServiceEmbeddedController *)self setViewServicePID:0xFFFFFFFFLL];
}

- (void)sessionState:(id)state
{
  stateCopy = state;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v28 = "[IDSServiceEmbeddedController sessionState:]";
      v29 = 1024;
      v30 = 2086;
      v31 = 1024;
      LODWORD(v32[0]) = [(IDSServiceEmbeddedController *)self sessionPaused];
      WORD2(v32[0]) = 1024;
      *(v32 + 6) = [(IDSServiceEmbeddedController *)self screenLocked];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] sessionState is called, paused:%d, screenLocked:%d", buf, 0x1Eu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2086, "[IDSServiceEmbeddedController sessionState:]", 7, 0, "sessionState is called, paused:%d, screenLocked:%d", [(IDSServiceEmbeddedController *)self sessionPaused], [(IDSServiceEmbeddedController *)self screenLocked]);
  if (stateCopy)
  {
    v6 = [NSNumber numberWithBool:[(IDSServiceEmbeddedController *)self sessionPaused]];
    [stateCopy setObject:v6 forKeyedSubscript:@"paused"];

    v7 = [NSNumber numberWithBool:[(IDSServiceEmbeddedController *)self screenLocked]];
    [stateCopy setObject:v7 forKeyedSubscript:@"screenLocked"];

    activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
    allValues = [activeSessions allValues];
    lastObject = [allValues lastObject];

    if (!lastObject)
    {
      lastObject = [(IDSServiceEmbeddedController *)self pendingSession];
    }

    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [lastObject sessionStartDelegateWasCalled]);
    [stateCopy setObject:v11 forKeyedSubscript:@"isSessionStarted"];

    inviterFullName = [lastObject inviterFullName];
    [stateCopy setObject:inviterFullName forKeyedSubscript:@"viewerName"];

    if (sub_1000423E0())
    {
      v13 = sub_100042E68();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [stateCopy objectForKeyedSubscript:@"viewerName"];
        uTF8String = [v14 UTF8String];
        *buf = 136315650;
        v28 = "[IDSServiceEmbeddedController sessionState:]";
        v29 = 1024;
        v30 = 2100;
        v31 = 2080;
        v32[0] = uTF8String;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer info %s", buf, 0x1Cu);
      }
    }

    v16 = [stateCopy objectForKeyedSubscript:@"viewerName"];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2100, "-[IDSServiceEmbeddedController sessionState:]", 7, 0, "viewer info %s", [v16 UTF8String]);

    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [lastObject inviterKind] == 3);
    [stateCopy setObject:v17 forKeyedSubscript:@"isAppleSupportRequest"];

    v18 = [NSNumber numberWithBool:[(IDSServiceEmbeddedController *)self isShareSettings]];
    [stateCopy setObject:v18 forKeyedSubscript:@"isShareSettings"];

    pendingSession = [(IDSServiceEmbeddedController *)self pendingSession];
    if (pendingSession)
    {
      v20 = 0;
    }

    else
    {
      self = [(IDSServiceEmbeddedController *)self activeSessions];
      v20 = [(IDSServiceEmbeddedController *)self count]== 0;
    }

    v22 = [NSNumber numberWithBool:v20];
    [stateCopy setObject:v22 forKeyedSubscript:@"isEnded"];

    if (!pendingSession)
    {
    }

    if (sub_1000423E0())
    {
      v23 = sub_100042E68();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [stateCopy description];
        uTF8String2 = [v24 UTF8String];
        *buf = 136315650;
        v28 = "[IDSServiceEmbeddedController sessionState:]";
        v29 = 1024;
        v30 = 2107;
        v31 = 2080;
        v32[0] = uTF8String2;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] returning sessionState: %s", buf, 0x1Cu);
      }
    }

    v26 = [stateCopy description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2107, "-[IDSServiceEmbeddedController sessionState:]", 7, 0, "returning sessionState: %s", [v26 UTF8String]);
  }

  else
  {
    if (sub_1000423E0())
    {
      v21 = sub_100042E68();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = "[IDSServiceEmbeddedController sessionState:]";
        v29 = 1024;
        v30 = 2110;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] dictionary is nil", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2110, "[IDSServiceEmbeddedController sessionState:]", 7, 0, "dictionary is nil");
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
      v6 = [resultCopy description];
      *buf = 136315650;
      v24 = "[IDSServiceEmbeddedController termsAndConditionsResult:]";
      v25 = 1024;
      v26 = 2116;
      v27 = 2080;
      uTF8String = [v6 UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms and conditions result  %s", buf, 0x1Cu);
    }
  }

  v7 = [resultCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2116, "-[IDSServiceEmbeddedController termsAndConditionsResult:]", 7, 0, "terms and conditions result  %s", [v7 UTF8String]);

  v8 = [resultCopy objectForKey:@"result"];
  if (!v8)
  {
    if (sub_1000423E0())
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v24 = "[IDSServiceEmbeddedController termsAndConditionsResult:]";
        v25 = 1024;
        v26 = 2119;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] no result", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2119, "[IDSServiceEmbeddedController termsAndConditionsResult:]", 7, 0, "no result");
  }

  if ([v8 BOOLValue])
  {
    pendingSession = [(IDSServiceEmbeddedController *)self pendingSession];
    if ([pendingSession inviterKind] == 2)
    {

LABEL_20:
      sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      pendingSession2 = [(IDSServiceEmbeddedController *)self pendingSession];
      sessionID = [pendingSession2 sessionID];
      idsService = [(IDSServiceEmbeddedController *)self idsService];
      [(IDSServiceEmbeddedController *)self sendMessageTCAccepted:sanitizedFromID sessionID:sessionID service:idsService];

      if (sub_1000423E0())
      {
        v18 = sub_100042E68();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v24 = "[IDSServiceEmbeddedController termsAndConditionsResult:]";
          v25 = 1024;
          v26 = 2125;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] sent terms and condition accepted message", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2125, "[IDSServiceEmbeddedController termsAndConditionsResult:]", 7, 0, "sent terms and condition accepted message");
      goto LABEL_25;
    }

    pendingSession3 = [(IDSServiceEmbeddedController *)self pendingSession];
    inviterKind = [pendingSession3 inviterKind];

    if (inviterKind == 3)
    {
      goto LABEL_20;
    }

    if (sub_1000423E0())
    {
      v20 = sub_100042E68();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        pendingSession4 = [(IDSServiceEmbeddedController *)self pendingSession];
        *buf = 136315650;
        v24 = "[IDSServiceEmbeddedController termsAndConditionsResult:]";
        v25 = 1024;
        v26 = 2128;
        v27 = 2048;
        uTF8String = pendingSession4;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] not applecare  pending session %p", buf, 0x1Cu);
      }
    }

    pendingSession5 = [(IDSServiceEmbeddedController *)self pendingSession];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2128, "[IDSServiceEmbeddedController termsAndConditionsResult:]", 7, 0, "not applecare  pending session %p", pendingSession5);
  }

  else
  {
    if (sub_1000423E0())
    {
      v11 = sub_100042E68();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v24 = "[IDSServiceEmbeddedController termsAndConditionsResult:]";
        v25 = 1024;
        v26 = 2131;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms not accepted", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2131, "[IDSServiceEmbeddedController termsAndConditionsResult:]", 7, 0, "terms not accepted");
  }

LABEL_25:
  pendingSession6 = [(IDSServiceEmbeddedController *)self pendingSession];
  [pendingSession6 termsAndConditionsResult:resultCopy];
}

- (void)pidNotification:(id)notification
{
  v4 = [notification objectForKey:@"pid"];
  -[IDSServiceEmbeddedController setViewServicePID:](self, "setViewServicePID:", [v4 intValue]);

  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = "[IDSServiceEmbeddedController pidNotification:]";
      v8 = 1024;
      v9 = 2138;
      v10 = 1024;
      viewServicePID = [(IDSServiceEmbeddedController *)self viewServicePID];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] pidNotification: %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2138, "[IDSServiceEmbeddedController pidNotification:]", 7, 0, "pidNotification: %d", [(IDSServiceEmbeddedController *)self viewServicePID]);
}

- (void)requestUserInfo
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[IDSServiceEmbeddedController requestUserInfo]";
      v6 = 1024;
      v7 = 2144;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] request user info delegate called", &v4, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2144, "[IDSServiceEmbeddedController requestUserInfo]", 7, 0, "request user info delegate called");
  [(IDSServiceEmbeddedController *)self checkIfNoSessions];
}

- (BOOL)validInviteDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v5 = [dictionaryCopy valueForKey:@"avconference"];
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = 0;
LABEL_79:

        goto LABEL_80;
      }
    }

    v6 = [v4 valueForKey:@"com.apple.private.applecare"];
    if (!v6)
    {
LABEL_25:
      v10 = [v4 objectForKeyedSubscript:@"cmd"];
      if (v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = 0;
LABEL_77:

          goto LABEL_78;
        }
      }

      v11 = [v4 objectForKeyedSubscript:@"version"];
      if (v11)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = 0;
LABEL_76:

          goto LABEL_77;
        }
      }

      v12 = [v4 objectForKeyedSubscript:@"sessionID"];
      if (v12)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = 0;
LABEL_75:

          goto LABEL_76;
        }
      }

      v13 = [v5 valueForKey:@"AVCNegotiatorInfo"];
      if (!v13)
      {
        if (sub_1000423E0())
        {
          v17 = sub_100042E68();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v21 = 136315394;
            v22 = "[IDSServiceEmbeddedController validInviteDictionary:]";
            v23 = 1024;
            v24 = 2259;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] no negotiator info", &v21, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2259, "[IDSServiceEmbeddedController validInviteDictionary:]", 7, 0, "no negotiator info");
LABEL_56:
        v14 = [v4 objectForKeyedSubscript:@"osType"];
        if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v16 = 1;
LABEL_73:

          goto LABEL_74;
        }

LABEL_72:
        v16 = 0;
        goto LABEL_73;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = 0;
LABEL_74:

        goto LABEL_75;
      }

      v14 = [v13 objectForKeyedSubscript:@"serverToViewerVideoKey"];
      if (!v14)
      {
        goto LABEL_72;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_72;
      }

      v15 = [v13 objectForKeyedSubscript:@"viewerToServerVideoKey"];

      if (v15)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_81;
        }

        v14 = [v13 objectForKeyedSubscript:@"serverToViewerAudioKey"];

        if (v14)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_72;
          }

          v15 = [v13 objectForKeyedSubscript:@"viewerToServerAudioKey"];

          if (!v15)
          {
            goto LABEL_71;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_81;
          }

          v14 = [v13 objectForKeyedSubscript:@"audioOffer"];

          if (!v14)
          {
            goto LABEL_72;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (sub_1000423E0())
          {
            v18 = sub_100042E68();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v21 = 136315394;
              v22 = "[IDSServiceEmbeddedController validInviteDictionary:]";
              v23 = 1024;
              v24 = 2248;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] no audio info in the invite message", &v21, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2248, "[IDSServiceEmbeddedController validInviteDictionary:]", 7, 0, "no audio info in the invite message");
          v14 = 0;
        }

        v19 = v14;
        v14 = [v13 objectForKeyedSubscript:@"videoOffer"];

        if (!v14)
        {
          goto LABEL_72;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_72;
        }

        v15 = [v13 objectForKeyedSubscript:@"sessionID"];

        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            goto LABEL_56;
          }

LABEL_81:
          v16 = 0;
          v14 = v15;
          goto LABEL_73;
        }
      }

LABEL_71:
      v14 = 0;
      goto LABEL_72;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_46;
    }

    v7 = [v6 objectForKeyedSubscript:@"sessionToken"];
    if (!v7)
    {
      goto LABEL_47;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_47;
    }

    v8 = [v6 objectForKeyedSubscript:@"resourcepath"];

    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_60;
      }

      v7 = [v6 objectForKeyedSubscript:@"isprod"];

      if (!v7)
      {
        goto LABEL_47;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_47;
      }

      v8 = [v6 objectForKeyedSubscript:@"aaToken"];

      if (v8)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      v7 = [v6 objectForKeyedSubscript:@"timeout"];

      if (v7)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      v8 = [v6 objectForKeyedSubscript:@"appleName"];

      if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v7 = [v6 objectForKeyedSubscript:@"shareType"];

        if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if (sub_1000423E0())
          {
            v9 = sub_100042E68();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v21 = 136315394;
              v22 = "[IDSServiceEmbeddedController validInviteDictionary:]";
              v23 = 1024;
              v24 = 2197;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] invite dictionary is ok", &v21, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2197, "[IDSServiceEmbeddedController validInviteDictionary:]", 7, 0, "invite dictionary is ok");

          goto LABEL_25;
        }
      }

      else
      {
LABEL_60:
        v7 = v8;
      }
    }

    else
    {
LABEL_46:
      v7 = 0;
    }

LABEL_47:

    v16 = 0;
LABEL_78:

    goto LABEL_79;
  }

  v16 = 0;
LABEL_80:

  return v16;
}

- (BOOL)inviteValidForThisOS:(id)s
{
  v4 = [s objectForKeyedSubscript:@"osType"];
  if (!v4)
  {
    if (sub_1000423E0())
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v12 = "[IDSServiceEmbeddedController inviteValidForThisOS:]";
        v13 = 1024;
        v14 = 2285;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] no osType specified", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2285, "[IDSServiceEmbeddedController inviteValidForThisOS:]", 7, 0, "no osType specified");
    goto LABEL_13;
  }

  osTypeString = [(IDSServiceEmbeddedController *)self osTypeString];
  v6 = [osTypeString isEqualToString:v4];

  if (v6)
  {
LABEL_13:
    v8 = 1;
    goto LABEL_14;
  }

  if (sub_1000423E0())
  {
    v7 = sub_100042E68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v12 = "[IDSServiceEmbeddedController inviteValidForThisOS:]";
      v13 = 1024;
      v14 = 2281;
      v15 = 2080;
      uTF8String = [v4 UTF8String];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] invalid osType %s - ignoring", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2281, "-[IDSServiceEmbeddedController inviteValidForThisOS:]", 7, 0, "invalid osType %s - ignoring", [v4 UTF8String]);
  v8 = 0;
LABEL_14:

  return v8;
}

- (void)dealloc
{
  [(IDSServiceEmbeddedController *)self setSanitizedFromID:0];
  [(IDSServiceEmbeddedController *)self setValidationURL:0];
  [(IDSServiceEmbeddedController *)self setUrlResponseData:0];
  [(IDSServiceEmbeddedController *)self setUrlResponseData:0];
  [(IDSServiceEmbeddedController *)self setValidationURL:0];
  [(IDSServiceEmbeddedController *)self setVsHelper:0];
  [(IDSServiceEmbeddedController *)self setExitTimer:0];
  [(IDSServiceEmbeddedController *)self setWallpaperSuspensionAssertion:0];
  [(IDSServiceEmbeddedController *)self setNotificationStartTime:0];
  [(IDSServiceEmbeddedController *)self setUrlToOpen:0];
  [(IDSServiceEmbeddedController *)self setActiveSessions:0];
  [(IDSServiceEmbeddedController *)self setPendingSession:0];
  idsService = [(IDSServiceEmbeddedController *)self idsService];
  [idsService removeDelegate:self];

  [(IDSServiceEmbeddedController *)self setIdsService:0];
  v4.receiver = self;
  v4.super_class = IDSServiceEmbeddedController;
  [(IDSServiceEmbeddedController *)&v4 dealloc];
}

- (void)sendMessageShareStatusResult:(id)result systemInfo:(id)info
{
  infoCopy = info;
  resultCopy = result;
  if (sub_1000423E0())
  {
    v8 = sub_100042E68();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [infoCopy description];
      *buf = 136315650;
      v18 = "[IDSServiceEmbeddedController sendMessageShareStatusResult:systemInfo:]";
      v19 = 1024;
      v20 = 2376;
      v21 = 2080;
      uTF8String = [v9 UTF8String];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] share status result info %s", buf, 0x1Cu);
    }
  }

  v10 = [infoCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2376, "-[IDSServiceEmbeddedController sendMessageShareStatusResult:systemInfo:]", 7, 0, "share status result info %s", [v10 UTF8String]);

  if (sub_1000423E0())
  {
    v11 = sub_100042E68();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      uTF8String2 = [sanitizedFromID UTF8String];
      *buf = 136315650;
      v18 = "[IDSServiceEmbeddedController sendMessageShareStatusResult:systemInfo:]";
      v19 = 1024;
      v20 = 2377;
      v21 = 2080;
      uTF8String = uTF8String2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] send to %s", buf, 0x1Cu);
    }
  }

  sanitizedFromID2 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2377, "-[IDSServiceEmbeddedController sendMessageShareStatusResult:systemInfo:]", 7, 0, "send to %s", [sanitizedFromID2 UTF8String]);

  sanitizedFromID3 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  idsService = [(IDSServiceEmbeddedController *)self idsService];
  [(IDSServiceEmbeddedController *)self sendMessageShareStatusResultInfo:sanitizedFromID3 sessionID:resultCopy service:idsService systemInfo:infoCopy];
}

- (void)sendMessageShareSettingsUserDecline:(id)decline
{
  declineCopy = decline;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[IDSServiceEmbeddedController sendMessageShareSettingsUserDecline:]";
      v10 = 1024;
      v11 = 2383;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] share status user decline", &v8, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2383, "[IDSServiceEmbeddedController sendMessageShareSettingsUserDecline:]", 7, 0, "share status user decline");
  sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  idsService = [(IDSServiceEmbeddedController *)self idsService];
  [(IDSServiceEmbeddedController *)self sendMessageStatusMessage:sanitizedFromID sessionID:declineCopy service:idsService status:@"UserDeclined"];
}

- (void)sendMessageInviteDisplayed:(id)displayed sessionID:(id)d service:(id)service
{
  serviceCopy = service;
  dCopy = d;
  displayedCopy = displayed;
  if (sub_1000423E0())
  {
    v11 = sub_100042E68();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[IDSServiceEmbeddedController sendMessageInviteDisplayed:sessionID:service:]";
      v18 = 1024;
      v19 = 2389;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] invite displayed", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2389, "[IDSServiceEmbeddedController sendMessageInviteDisplayed:sessionID:service:]", 7, 0, "invite displayed");
  if (sub_1000423E0())
  {
    v12 = sub_100042E68();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      uTF8String = [sanitizedFromID UTF8String];
      *buf = 136315906;
      v17 = "[IDSServiceEmbeddedController sendMessageInviteDisplayed:sessionID:service:]";
      v18 = 1024;
      v19 = 2390;
      v20 = 2080;
      v21 = uTF8String;
      v22 = 2048;
      v23 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] send to %s with service %p", buf, 0x26u);
    }
  }

  sanitizedFromID2 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2390, "-[IDSServiceEmbeddedController sendMessageInviteDisplayed:sessionID:service:]", 7, 0, "send to %s with service %p", [sanitizedFromID2 UTF8String], serviceCopy);

  [(IDSServiceEmbeddedController *)self sendMessageStatusMessage:displayedCopy sessionID:dCopy service:serviceCopy status:@"InviteDisplayed"];
}

- (void)sendMessageInviteIgnored:(id)ignored sessionID:(id)d service:(id)service error:(id)error
{
  serviceCopy = service;
  ignoredCopy = ignored;
  v12 = [NSDictionary dictionaryWithObjectsAndKeys:@"InviteIgnored", @"status", d, @"sessionID", error, @"REASON", 0];
  [(IDSServiceEmbeddedController *)self sendServiceMessage:v12 destination:ignoredCopy service:serviceCopy];
}

- (void)sendMessageInviteAccepted:(id)accepted sessionID:(id)d service:(id)service
{
  serviceCopy = service;
  dCopy = d;
  acceptedCopy = accepted;
  if (sub_1000423E0())
  {
    v11 = sub_100042E68();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      *buf = 136315906;
      v15 = "[IDSServiceEmbeddedController sendMessageInviteAccepted:sessionID:service:]";
      v16 = 1024;
      v17 = 2411;
      v18 = 2080;
      uTF8String = [sanitizedFromID UTF8String];
      v20 = 2048;
      v21 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] invite accepted - send to %s with service %p", buf, 0x26u);
    }
  }

  sanitizedFromID2 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2411, "-[IDSServiceEmbeddedController sendMessageInviteAccepted:sessionID:service:]", 7, 0, "invite accepted - send to %s with service %p", [sanitizedFromID2 UTF8String], serviceCopy);

  [(IDSServiceEmbeddedController *)self sendMessageStatusMessage:acceptedCopy sessionID:dCopy service:serviceCopy status:@"InviteAccepted"];
}

- (void)sendMessageTCAccepted
{
  sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  pendingSession = [(IDSServiceEmbeddedController *)self pendingSession];
  sessionID = [pendingSession sessionID];
  idsService = [(IDSServiceEmbeddedController *)self idsService];
  [(IDSServiceEmbeddedController *)self sendMessageTCAccepted:sanitizedFromID sessionID:sessionID service:idsService];
}

- (void)sendMessageTCAccepted:(id)accepted sessionID:(id)d service:(id)service
{
  serviceCopy = service;
  dCopy = d;
  acceptedCopy = accepted;
  if (sub_1000423E0())
  {
    v11 = sub_100042E68();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      *buf = 136315906;
      v15 = "[IDSServiceEmbeddedController sendMessageTCAccepted:sessionID:service:]";
      v16 = 1024;
      v17 = 2422;
      v18 = 2080;
      uTF8String = [sanitizedFromID UTF8String];
      v20 = 2048;
      v21 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] TC accepted - send to %s with service %p", buf, 0x26u);
    }
  }

  sanitizedFromID2 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2422, "-[IDSServiceEmbeddedController sendMessageTCAccepted:sessionID:service:]", 7, 0, "TC accepted - send to %s with service %p", [sanitizedFromID2 UTF8String], serviceCopy);

  [(IDSServiceEmbeddedController *)self sendMessageStatusMessage:acceptedCopy sessionID:dCopy service:serviceCopy status:@"TCAccepted"];
}

- (void)sendMessageStatusMessage:(id)message sessionID:(id)d service:(id)service status:(id)status
{
  messageCopy = message;
  serviceCopy = service;
  statusCopy = status;
  dCopy = d;
  if (sub_1000423E0())
  {
    v14 = sub_100042E68();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v21 = "[IDSServiceEmbeddedController sendMessageStatusMessage:sessionID:service:status:]";
      v22 = 1024;
      v23 = 2433;
      v24 = 2080;
      uTF8String = [statusCopy UTF8String];
      v26 = 2080;
      uTF8String2 = [messageCopy UTF8String];
      v28 = 2048;
      v29 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] status message %s destination %s service %p", buf, 0x30u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2433, "-[IDSServiceEmbeddedController sendMessageStatusMessage:sessionID:service:status:]", 7, 0, "status message %s destination %s service %p", [statusCopy UTF8String], objc_msgSend(messageCopy, "UTF8String"), serviceCopy);
  v15 = [NSDictionary dictionaryWithObjectsAndKeys:statusCopy, @"status", dCopy, @"sessionID", 0];

  if (sub_1000423E0())
  {
    v16 = sub_100042E68();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v15 description];
      uTF8String3 = [v17 UTF8String];
      *buf = 136315650;
      v21 = "[IDSServiceEmbeddedController sendMessageStatusMessage:sessionID:service:status:]";
      v22 = 1024;
      v23 = 2438;
      v24 = 2080;
      uTF8String = uTF8String3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] status message dict %s", buf, 0x1Cu);
    }
  }

  v19 = [v15 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2438, "-[IDSServiceEmbeddedController sendMessageStatusMessage:sessionID:service:status:]", 7, 0, "status message dict %s", [v19 UTF8String]);

  [(IDSServiceEmbeddedController *)self sendServiceMessage:v15 destination:messageCopy service:serviceCopy];
}

- (void)sendMessageShareStatusResultInfo:(id)info sessionID:(id)d service:(id)service systemInfo:(id)systemInfo
{
  systemInfoCopy = systemInfo;
  serviceCopy = service;
  infoCopy = info;
  [systemInfoCopy setObject:d forKeyedSubscript:@"sessionID"];
  [systemInfoCopy setObject:@"Settings" forKeyedSubscript:@"status"];
  [(IDSServiceEmbeddedController *)self sendServiceMessage:systemInfoCopy destination:infoCopy service:serviceCopy];
}

- (void)sendMessageShareStatusUserDeclined:(id)declined sessionID:(id)d service:(id)service
{
  serviceCopy = service;
  declinedCopy = declined;
  v10 = [NSDictionary dictionaryWithObjectsAndKeys:@"UserDeclined", @"status", d, @"sessionID", 0];
  if (sub_1000423E0())
  {
    v11 = sub_100042E68();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 description];
      *buf = 136315650;
      v15 = "[IDSServiceEmbeddedController sendMessageShareStatusUserDeclined:sessionID:service:]";
      v16 = 1024;
      v17 = 2456;
      v18 = 2080;
      uTF8String = [v12 UTF8String];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] decline status request %s", buf, 0x1Cu);
    }
  }

  v13 = [v10 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2456, "-[IDSServiceEmbeddedController sendMessageShareStatusUserDeclined:sessionID:service:]", 7, 0, "decline status request %s", [v13 UTF8String]);

  [(IDSServiceEmbeddedController *)self sendServiceMessage:v10 destination:declinedCopy service:serviceCopy];
}

- (void)sendServiceMessage:(id)message destination:(id)destination service:(id)service
{
  messageCopy = message;
  destinationCopy = destination;
  serviceCopy = service;
  v34[0] = IDSSendMessageOptionFireAndForgetKey;
  v34[1] = IDSSendMessageOptionWantsClientAcknowledgementKey;
  v35[0] = &__kCFBooleanTrue;
  v35[1] = &__kCFBooleanTrue;
  v34[2] = IDSSendMessageOptionAlwaysSkipSelfKey;
  v35[2] = &__kCFBooleanTrue;
  v10 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];
  if (sub_1000423E0())
  {
    v11 = sub_100042E68();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [messageCopy description];
      *buf = 136316162;
      v27 = "[IDSServiceEmbeddedController sendServiceMessage:destination:service:]";
      v28 = 1024;
      v29 = 2471;
      v30 = 2080;
      *v31 = [v12 UTF8String];
      *&v31[8] = 2080;
      *&v31[10] = [destinationCopy UTF8String];
      v32 = 2048;
      v33 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] sendServiceMessage dict = %s  destination %s  sercice %p", buf, 0x30u);
    }
  }

  v13 = [messageCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2471, "-[IDSServiceEmbeddedController sendServiceMessage:destination:service:]", 7, 0, "sendServiceMessage dict = %s  destination %s  sercice %p", [v13 UTF8String], objc_msgSend(destinationCopy, "UTF8String"), serviceCopy);

  v14 = [NSSet setWithObject:destinationCopy];
  v24 = 0;
  v25 = 0;
  v15 = [serviceCopy sendMessage:messageCopy toDestinations:v14 priority:300 options:v10 identifier:&v25 error:&v24];
  v16 = v25;
  v17 = v24;

  if (sub_1000423E0())
  {
    v18 = sub_100042E68();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [v16 UTF8String];
      *buf = 136315906;
      v27 = "[IDSServiceEmbeddedController sendServiceMessage:destination:service:]";
      v28 = 1024;
      v29 = 2478;
      v30 = 1024;
      *v31 = v15;
      *&v31[4] = 2080;
      *&v31[6] = uTF8String;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] sendMessage result %d message uuid %s", buf, 0x22u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2478, "-[IDSServiceEmbeddedController sendServiceMessage:destination:service:]", 7, 0, "sendMessage result %d message uuid %s", v15, [v16 UTF8String]);
  if (v17)
  {
    if (sub_1000423E0())
    {
      v20 = sub_100042E68();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [v17 description];
        uTF8String2 = [v21 UTF8String];
        *buf = 136315650;
        v27 = "[IDSServiceEmbeddedController sendServiceMessage:destination:service:]";
        v28 = 1024;
        v29 = 2480;
        v30 = 2080;
        *v31 = uTF8String2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%s:%d] sendMessage error: %s", buf, 0x1Cu);
      }
    }

    v23 = [v17 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2480, "-[IDSServiceEmbeddedController sendServiceMessage:destination:service:]", 3, 0, "sendMessage error: %s", [v23 UTF8String]);
  }
}

- (void)initViewServiceHelper
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020F30;
  block[3] = &unk_100068CB0;
  block[4] = self;
  if (qword_100070A80 != -1)
  {
    dispatch_once(&qword_100070A80, block);
  }
}

- (BOOL)inviterIsInActiveSession:(id)session
{
  sessionCopy = session;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v27 = "[IDSServiceEmbeddedController inviterIsInActiveSession:]";
      v28 = 1024;
      v29 = 2496;
      v30 = 2080;
      uTF8String = [sessionCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] check if %s in active session", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2496, "-[IDSServiceEmbeddedController inviterIsInActiveSession:]", 7, 0, "check if %s in active session", [sessionCopy UTF8String]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  allValues = [activeSessions allValues];

  v8 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if (sub_1000423E0())
        {
          v13 = sub_100042E68();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            inviterID = [v12 inviterID];
            uTF8String2 = [inviterID UTF8String];
            *buf = 136315650;
            v27 = "[IDSServiceEmbeddedController inviterIsInActiveSession:]";
            v28 = 1024;
            v29 = 2499;
            v30 = 2080;
            uTF8String = uTF8String2;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] check active session inviterID %s", buf, 0x1Cu);
          }
        }

        inviterID2 = [v12 inviterID];
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2499, "-[IDSServiceEmbeddedController inviterIsInActiveSession:]", 7, 0, "check active session inviterID %s", [inviterID2 UTF8String]);

        inviterID3 = [v12 inviterID];
        v18 = [inviterID3 isEqualToString:sessionCopy];

        if (v18)
        {
          v19 = 1;
          goto LABEL_19;
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_19:

  return v19;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  identifierCopy = identifier;
  if (sub_1000423E0())
  {
    v7 = sub_100042E68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v9 = "[IDSServiceEmbeddedController service:account:identifier:hasBeenDeliveredWithContext:]";
      v10 = 1024;
      v11 = 2511;
      v12 = 2080;
      uTF8String = [identifierCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] hasBeenDeliveredWithContext %s", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2511, "-[IDSServiceEmbeddedController service:account:identifier:hasBeenDeliveredWithContext:]", 7, 0, "hasBeenDeliveredWithContext %s", [identifierCopy UTF8String]);
}

- (void)service:(id)service account:(id)account incomingPendingMessageOfType:(int64_t)type fromID:(id)d context:(id)context
{
  if (sub_1000423E0())
  {
    v7 = sub_100042E68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[IDSServiceEmbeddedController service:account:incomingPendingMessageOfType:fromID:context:]";
      v10 = 1024;
      v11 = 2516;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] incomingPendingMessageOfType", &v8, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2516, "[IDSServiceEmbeddedController service:account:incomingPendingMessageOfType:fromID:context:]", 7, 0, "incomingPendingMessageOfType");
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController service:connectedDevicesChanged:]";
      v7 = 1024;
      v8 = 2521;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] connectedDevicesChanged", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2521, "[IDSServiceEmbeddedController service:connectedDevicesChanged:]", 7, 0, "connectedDevicesChanged");
}

- (void)service:(id)service linkedDevicesChanged:(id)changed
{
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController service:linkedDevicesChanged:]";
      v7 = 1024;
      v8 = 2526;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] linkedDevicesChanged", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2526, "[IDSServiceEmbeddedController service:linkedDevicesChanged:]", 7, 0, "linkedDevicesChanged");
}

- (void)service:(id)service account:(id)account identifier:(id)identifier sentBytes:(int64_t)bytes totalBytes:(int64_t)totalBytes
{
  if (sub_1000423E0())
  {
    v7 = sub_100042E68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[IDSServiceEmbeddedController service:account:identifier:sentBytes:totalBytes:]";
      v10 = 1024;
      v11 = 2531;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] sentBytes", &v8, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2531, "[IDSServiceEmbeddedController service:account:identifier:sentBytes:totalBytes:]", 7, 0, "sentBytes");
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  if (sub_1000423E0())
  {
    v7 = sub_100042E68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[IDSServiceEmbeddedController service:account:incomingData:fromID:context:]";
      v10 = 1024;
      v11 = 2535;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] incomingData", &v8, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2535, "[IDSServiceEmbeddedController service:account:incomingData:fromID:context:]", 7, 0, "incomingData");
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  if (sub_1000423E0())
  {
    v7 = sub_100042E68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[IDSServiceEmbeddedController service:account:incomingUnhandledProtobuf:fromID:context:]";
      v10 = 1024;
      v11 = 2539;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] incomingUnhandledProtobuf", &v8, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2539, "[IDSServiceEmbeddedController service:account:incomingUnhandledProtobuf:fromID:context:]", 7, 0, "incomingUnhandledProtobuf");
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context
{
  if (sub_1000423E0())
  {
    v7 = sub_100042E68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[IDSServiceEmbeddedController service:account:incomingResourceAtURL:fromID:context:]";
      v10 = 1024;
      v11 = 2543;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] incomingResourceAtURL", &v8, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2543, "[IDSServiceEmbeddedController service:account:incomingResourceAtURL:fromID:context:]", 7, 0, "incomingResourceAtURL");
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  if (sub_1000423E0())
  {
    v8 = sub_100042E68();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[IDSServiceEmbeddedController service:account:incomingResourceAtURL:metadata:fromID:context:]";
      v11 = 1024;
      v12 = 2547;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] incomingResourceAtURL", &v9, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2547, "[IDSServiceEmbeddedController service:account:incomingResourceAtURL:metadata:fromID:context:]", 7, 0, "incomingResourceAtURL");
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController service:activeAccountsChanged:]";
      v7 = 1024;
      v8 = 2552;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] activeAccountsChanged", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2552, "[IDSServiceEmbeddedController service:activeAccountsChanged:]", 7, 0, "activeAccountsChanged");
}

- (void)service:(id)service devicesChanged:(id)changed
{
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController service:devicesChanged:]";
      v7 = 1024;
      v8 = 2556;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] devicesChanged", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2556, "[IDSServiceEmbeddedController service:devicesChanged:]", 7, 0, "devicesChanged");
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController service:nearbyDevicesChanged:]";
      v7 = 1024;
      v8 = 2560;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] nearbyDevicesChanged", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2560, "[IDSServiceEmbeddedController service:nearbyDevicesChanged:]", 7, 0, "nearbyDevicesChanged");
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  identifierCopy = identifier;
  errorCopy = error;
  if (sub_1000423E0())
  {
    v11 = sub_100042E68();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v13 = "[IDSServiceEmbeddedController service:account:identifier:didSendWithSuccess:error:]";
      v14 = 1024;
      v15 = 2564;
      v16 = 1024;
      v17 = successCopy;
      v18 = 2048;
      code = [errorCopy code];
      v20 = 2080;
      uTF8String = [identifierCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] didSendWithSuccess success %d error code %ld  id %s", buf, 0x2Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2564, "-[IDSServiceEmbeddedController service:account:identifier:didSendWithSuccess:error:]", 7, 0, "didSendWithSuccess success %d error code %ld  id %s", successCopy, [errorCopy code], objc_msgSend(identifierCopy, "UTF8String"));
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  identifierCopy = identifier;
  errorCopy = error;
  if (sub_1000423E0())
  {
    v12 = sub_100042E68();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v14 = "[IDSServiceEmbeddedController service:account:identifier:didSendWithSuccess:error:context:]";
      v15 = 1024;
      v16 = 2568;
      v17 = 1024;
      v18 = successCopy;
      v19 = 2048;
      code = [errorCopy code];
      v21 = 2080;
      uTF8String = [identifierCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] didSendWithSuccess success %d error code %ld  id %s", buf, 0x2Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2568, "-[IDSServiceEmbeddedController service:account:identifier:didSendWithSuccess:error:context:]", 7, 0, "didSendWithSuccess success %d error code %ld  id %s", successCopy, [errorCopy code], objc_msgSend(identifierCopy, "UTF8String"));
}

- (void)serviceSpaceDidBecomeAvailable:(id)available
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[IDSServiceEmbeddedController serviceSpaceDidBecomeAvailable:]";
      v6 = 1024;
      v7 = 2572;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] serviceSpaceDidBecomeAvailable", &v4, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2572, "[IDSServiceEmbeddedController serviceSpaceDidBecomeAvailable:]", 7, 0, "serviceSpaceDidBecomeAvailable");
}

- (void)serviceAllowedTrafficClassifiersDidReset:(id)reset
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[IDSServiceEmbeddedController serviceAllowedTrafficClassifiersDidReset:]";
      v6 = 1024;
      v7 = 2576;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] serviceAllowedTrafficClassifiersDidReset", &v4, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2576, "[IDSServiceEmbeddedController serviceAllowedTrafficClassifiersDidReset:]", 7, 0, "serviceAllowedTrafficClassifiersDidReset");
}

@end