@interface IDSServiceEmbeddedController
+ (id)sharedIDServiceController;
- (BOOL)inviteValidForThisOS:(id)a3;
- (BOOL)inviterIsInActiveSession:(id)a3;
- (BOOL)validInviteDictionary:(id)a3;
- (BOOL)validateRedwoodRequestDictionary:(id)a3 account:(id)a4 fromID:(id)a5 error:(id *)a6;
- (IDSServiceEmbeddedController)init;
- (id)activeViewerStatusString;
- (id)datagramConnectionFromIDS:(id)a3;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)addActiveSession:(id)a3;
- (void)askToOpenURLTimeout:(id)a3;
- (void)askToResumeTimeout:(id)a3;
- (void)askToToCopyToPasteboardTimeout:(id)a3;
- (void)checkIfNoSessions;
- (void)closeAllSessions;
- (void)createLockScreenNotifier;
- (void)createStatusBar;
- (void)dealloc;
- (void)exitTimerCallback:(id)a3;
- (void)initScreenSharingIDSService;
- (void)initViewServiceHelper;
- (void)inviteWasAccepted:(id)a3;
- (void)pauseResumeResult:(id)a3;
- (void)pidNotification:(id)a3;
- (void)postAskToCopyToPasteboardNotification;
- (void)postAskToOpenURLNotification;
- (void)postAskToResumeNotification;
- (void)postShowUserMessageNotification;
- (void)postViewerPausedMessageNotification;
- (void)removeAskToCopyToPasteboardNotification;
- (void)removeAskToOpenURLNotification;
- (void)removeSession:(id)a3 andEndIDSSession:(BOOL)a4;
- (void)removeShowUserMessageNotification;
- (void)removeUserAskToResumeNotification;
- (void)removeViewerPausedNotification;
- (void)requestUserInfo;
- (void)sendMessageInviteAccepted:(id)a3 sessionID:(id)a4 service:(id)a5;
- (void)sendMessageInviteDisplayed:(id)a3 sessionID:(id)a4 service:(id)a5;
- (void)sendMessageInviteIgnored:(id)a3 sessionID:(id)a4 service:(id)a5 error:(id)a6;
- (void)sendMessageShareSettingsUserDecline:(id)a3;
- (void)sendMessageShareStatusResult:(id)a3 systemInfo:(id)a4;
- (void)sendMessageShareStatusResultInfo:(id)a3 sessionID:(id)a4 service:(id)a5 systemInfo:(id)a6;
- (void)sendMessageShareStatusUserDeclined:(id)a3 sessionID:(id)a4 service:(id)a5;
- (void)sendMessageStatusMessage:(id)a3 sessionID:(id)a4 service:(id)a5 status:(id)a6;
- (void)sendMessageTCAccepted;
- (void)sendMessageTCAccepted:(id)a3 sessionID:(id)a4 service:(id)a5;
- (void)sendServiceMessage:(id)a3 destination:(id)a4 service:(id)a5;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 sentBytes:(int64_t)a6 totalBytes:(int64_t)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingPendingMessageOfType:(int64_t)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6 withContext:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)service:(id)a3 linkedDevicesChanged:(id)a4;
- (void)service:(id)a3 nearbyDevicesChanged:(id)a4;
- (void)serviceAllowedTrafficClassifiersDidReset:(id)a3;
- (void)serviceSpaceDidBecomeAvailable:(id)a3;
- (void)sessionState:(id)a3;
- (void)showMessageToUser:(id)a3;
- (void)showUserMessageTimeout:(id)a3;
- (void)showViewerPausedTimeout:(id)a3;
- (void)termsAndConditionsResult:(id)a3;
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
  v3 = [(IDSServiceEmbeddedController *)self idsService];

  if (!v3)
  {
    xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100068DC0);
    v4 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.safeview"];
    [(IDSServiceEmbeddedController *)self setIdsService:v4];

    v5 = [(IDSServiceEmbeddedController *)self idsService];
    [v5 addDelegate:self queue:&_dispatch_main_q];

    if (sub_1000423E0())
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(IDSServiceEmbeddedController *)self idsService];
        *buf = 136315650;
        v10 = "[IDSServiceEmbeddedController initScreenSharingIDSService]";
        v11 = 1024;
        v12 = 239;
        v13 = 2048;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] setup safeview service %p", buf, 0x1Cu);
      }
    }

    v8 = [(IDSServiceEmbeddedController *)self idsService];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 239, "[IDSServiceEmbeddedController initScreenSharingIDSService]", 7, 0, "setup safeview service %p", v8);
  }
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v12 = COERCE_DOUBLE(a3);
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [a7 serverReceivedTime];
  [v16 timeIntervalSinceNow];
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
      v23 = [(IDSServiceEmbeddedController *)self idsService];
      *buf = 136315906;
      v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
      v151 = 1024;
      v152 = 276;
      v153 = 2048;
      v154 = v12;
      v155 = 2048;
      v156 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] service = %p  self.idsService %p", buf, 0x26u);
    }
  }

  v24 = [(IDSServiceEmbeddedController *)self idsService];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 276, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "service = %p  self.idsService %p", *&v12, v24);

  v25 = [(IDSServiceEmbeddedController *)self exitTimer];
  [v25 invalidate];

  [(IDSServiceEmbeddedController *)self setExitTimer:0];
  _os_nospin_lock_lock();
  v26 = [(IDSServiceEmbeddedController *)self osTransaction];

  if (!v26)
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

    v30 = [(IDSServiceEmbeddedController *)self osTransaction];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 285, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "transaction %p", v30);
  }

  _os_nospin_lock_unlock();
  if (sub_1000423E0())
  {
    v31 = sub_100042E68();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = COERCE_DOUBLE([v15 UTF8String]);
      *buf = 136315650;
      v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
      v151 = 1024;
      v152 = 289;
      v153 = 2080;
      v154 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] service message received from %s", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 289, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "service message received from %s", [v15 UTF8String]);
  v33 = [(IDSServiceEmbeddedController *)self validInviteDictionary:v14];
  v34 = sub_1000423E0();
  if ((v33 & 1) == 0)
  {
    if (v34)
    {
      v60 = sub_100042E68();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        v62 = COERCE_DOUBLE([v61 UTF8String]);
        *buf = 136315650;
        v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
        v151 = 1024;
        v152 = 294;
        v153 = 2080;
        v154 = v62;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "[%s:%d] invalid invite dictionary from %s - ignoring", buf, 0x1Cu);
      }
    }

    v63 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 294, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "invalid invite dictionary from %s - ignoring", [v63 UTF8String]);

    goto LABEL_56;
  }

  if (v34)
  {
    v35 = sub_100042E68();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v14 description];
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

  v38 = [v14 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 297, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "inviteOptions: %s", [v38 UTF8String]);

  v39 = 0;
  v40 = 0;
  v41 = 0;
  if ([(IDSServiceEmbeddedController *)self inviteValidForThisOS:v14])
  {
    v40 = [v14 objectForKeyedSubscript:@"com.apple.private.applecare"];
    v42 = IDSCopyAddressDestinationForDestination();
    [(IDSServiceEmbeddedController *)self setSanitizedFromID:v42];

    v43 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    v44 = [v43 isEmailAddress];

    if (v44)
    {
      v45 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      v46 = IDSCopyIDForEmailAddress();
      [(IDSServiceEmbeddedController *)self setSanitizedFromID:v46];
    }

    v47 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    v48 = [v47 isPhoneNumber];

    if (v48)
    {
      v49 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      v50 = IDSCopyIDForPhoneNumber();
      [(IDSServiceEmbeddedController *)self setSanitizedFromID:v50];
    }

    if (sub_1000423E0())
    {
      v51 = sub_100042E68();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        v53 = COERCE_DOUBLE([v52 UTF8String]);
        *buf = 136315650;
        v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
        v151 = 1024;
        v152 = 317;
        v153 = 2080;
        v154 = v53;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[%s:%d] self.sanitizedFromID %s", buf, 0x1Cu);
      }
    }

    v54 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 317, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "self.sanitizedFromID %s", [v54 UTF8String]);

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

    v64 = [v14 objectForKeyedSubscript:@"cmd"];
    v39 = v64;
    if (v64 && (([v64 isEqualToString:@"alreadyAccepted"] & 1) != 0 || objc_msgSend(v39, "isEqualToString:", @"alreadyDeclined")))
    {
      v143 = v13;
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
      v66 = [(IDSServiceEmbeddedController *)self pendingSession];

      if (!v66)
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

      v67 = [v14 objectForKeyedSubscript:@"sessionID"];
      v68 = [(IDSServiceEmbeddedController *)self pendingSession];
      v69 = [v68 sessionID];
      v70 = v67;
      LODWORD(v67) = [v69 isEqualToString:v67];

      if (!v67)
      {
        v74 = v70;
        v13 = v143;
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

      v71 = [(IDSServiceEmbeddedController *)self pendingSession];
      v72 = [v71 appleIDInviteWasAcceptedOrDeclined];

      v73 = sub_1000423E0();
      if (v72)
      {
        v74 = v70;
        v13 = v143;
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
      v13 = v143;
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
      v111 = [(IDSServiceEmbeddedController *)self pendingSession];
      [v111 doEndSession];

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
      v79 = [(IDSServiceEmbeddedController *)self pendingSession];

      if (!v79)
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

      v144 = v13;
      v80 = [v14 objectForKeyedSubscript:@"sessionID"];
      v81 = [(IDSServiceEmbeddedController *)self pendingSession];
      v82 = [v81 sessionID];
      v83 = v80;
      LODWORD(v80) = [v82 isEqualToString:v80];

      v84 = sub_1000423E0();
      v74 = v83;
      if (!v80)
      {
        v13 = v144;
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

      v13 = v144;
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
          v90 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
          v141 = COERCE_DOUBLE([v90 UTF8String]);
          v91 = [(IDSServiceEmbeddedController *)self activeSessions];
          v92 = [v91 count];
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

      v93 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      v94 = [v93 UTF8String];
      v95 = [(IDSServiceEmbeddedController *)self activeSessions];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 379, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "sanitized from %s  active session count %lu", v94, [v95 count]);

      v96 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      v147 = 0;
      v97 = [(IDSServiceEmbeddedController *)self validateRedwoodRequestDictionary:v40 account:v13 fromID:v96 error:&v147];
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
            v100 = COERCE_DOUBLE([v15 UTF8String]);
            *buf = 136315650;
            v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v151 = 1024;
            v152 = 386;
            v153 = 2080;
            v154 = v100;
            _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "[%s:%d] Not a valid request: %s", buf, 0x1Cu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 386, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "Not a valid request: %s", [v15 UTF8String]);
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
        v112 = [v14 objectForKeyedSubscript:@"sessionID"];
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
            v117 = [*&v115 UTF8String];
            *buf = 136315906;
            v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v151 = 1024;
            v152 = 411;
            v153 = 2048;
            v154 = v115;
            v155 = 2080;
            v156 = v117;
            _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "[%s:%d] appleNameSpecifier %p  %s", buf, 0x26u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 411, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "appleNameSpecifier %p  %s", *&v115, [*&v115 UTF8String]);
        v118 = [(IDSServiceEmbeddedController *)self pendingSession];

        if (v118)
        {
          if (sub_1000423E0())
          {
            v119 = sub_100042E68();
            if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
            {
              v137 = [(IDSServiceEmbeddedController *)self pendingSession];
              v135 = [v137 inviterID];
              v130 = COERCE_DOUBLE([v135 UTF8String]);
              v133 = [(IDSServiceEmbeddedController *)self pendingSession];
              v131 = [v133 idsSession];
              v120 = [v131 sessionID];
              v121 = [v120 UTF8String];
              *buf = 136315906;
              v150 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
              v151 = 1024;
              v152 = 416;
              v153 = 2080;
              v154 = v130;
              v155 = 2080;
              v156 = v121;
              _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "[%s:%d] Ignoring invitation -- pendingSession already active from: %s %s", buf, 0x26u);
            }
          }

          v138 = [(IDSServiceEmbeddedController *)self pendingSession];
          v136 = [v138 inviterID];
          v132 = [v136 UTF8String];
          v134 = [(IDSServiceEmbeddedController *)self pendingSession];
          v122 = [v134 idsSession];
          v123 = [v122 sessionID];
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 416, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "Ignoring invitation -- pendingSession already active from: %s %s", v132, [v123 UTF8String]);

          v124 = v142;
          if (!v140)
          {
            goto LABEL_168;
          }

          v125 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
          [(IDSServiceEmbeddedController *)self sendMessageInviteIgnored:v125 sessionID:v142 service:*&v12 error:@"Ignore_PendingInvite"];
        }

        else
        {
          v126 = [IDSSessionEmbeddedControllerShareSettings alloc];
          v139 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
          v127 = [(IDSSessionEmbeddedControllerShareSettings *)v126 initWithRemoteID:v139 sessionID:v142 andServiceController:self appleName:*&v115];
          [(IDSServiceEmbeddedController *)self setPendingSession:v127];

          v124 = v142;
          [(IDSServiceEmbeddedController *)self setIsShareSettings:1];
          if (v140)
          {
            v128 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
            [(IDSServiceEmbeddedController *)self sendMessageInviteDisplayed:v128 sessionID:v142 service:*&v12];
          }

          v125 = [(IDSServiceEmbeddedController *)self pendingSession];
          [v125 postInvitationNotification];
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

- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6 withContext:(id)a7
{
  v184 = a3;
  v185 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  keyExistsAndHasValidFormat = 0;
  v15 = [(IDSServiceEmbeddedController *)self exitTimer];
  [v15 invalidate];

  [(IDSServiceEmbeddedController *)self setExitTimer:0];
  _os_nospin_lock_lock();
  v16 = [(IDSServiceEmbeddedController *)self osTransaction];

  if (!v16)
  {
    v17 = os_transaction_create();
    [(IDSServiceEmbeddedController *)self setOsTransaction:v17];

    if (sub_1000423E0())
    {
      v18 = sub_100042E68();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(IDSServiceEmbeddedController *)self osTransaction];
        *buf = 136315650;
        v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
        v197 = 1024;
        v198 = 457;
        v199 = 2048;
        v200 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] transaction %p", buf, 0x1Cu);
      }
    }

    v20 = [(IDSServiceEmbeddedController *)self osTransaction];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 457, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "transaction %p", v20);
  }

  _os_nospin_lock_unlock();
  if (sub_1000423E0())
  {
    v21 = sub_100042E68();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v13 UTF8String];
      *buf = 136315650;
      v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
      v197 = 1024;
      v198 = 461;
      v199 = 2080;
      v200 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] inviteReceivedForSession from %s", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 461, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "inviteReceivedForSession from %s", [v13 UTF8String]);
  if (sub_1000423E0())
  {
    v23 = sub_100042E68();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v14 length];
      *buf = 136315650;
      v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
      v197 = 1024;
      v198 = 464;
      v199 = 2048;
      v200 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] invite context size %lu", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 464, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "invite context size %lu", [v14 length]);
  v25 = sub_1000273A0(v14);
  v26 = IDSCopyAddressDestinationForDestination();
  [(IDSServiceEmbeddedController *)self setSanitizedFromID:v26];

  v27 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  v28 = [v27 isEmailAddress];

  if (v28)
  {
    v29 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    v30 = IDSCopyIDForEmailAddress();
    [(IDSServiceEmbeddedController *)self setSanitizedFromID:v30];
  }

  v31 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  v32 = [v31 isPhoneNumber];

  if (v32)
  {
    v33 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
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
        v39 = [v38 UTF8String];
        *buf = 136315650;
        v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
        v197 = 1024;
        v198 = 485;
        v199 = 2080;
        v200 = v39;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%s:%d] inviteOptions: %s", buf, 0x1Cu);
      }
    }

    v40 = [v25 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 485, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "inviteOptions: %s", [v40 UTF8String]);

    if ([(IDSServiceEmbeddedController *)self inviteValidForThisOS:v25])
    {
      v41 = [v25 objectForKeyedSubscript:@"com.apple.private.applecare"];
      v183 = v12;
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
            v54 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
            v55 = v41;
            v56 = [v54 UTF8String];
            v57 = [(IDSServiceEmbeddedController *)self activeSessions];
            v58 = [v57 count];
            *buf = 136315906;
            v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
            v197 = 1024;
            v198 = 504;
            v199 = 2080;
            v200 = v56;
            v41 = v55;
            v201 = 2048;
            v202 = v58;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[%s:%d] sanitized from %s  active session count %lu", buf, 0x26u);
          }
        }

        v59 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        v60 = [v59 UTF8String];
        v61 = [(IDSServiceEmbeddedController *)self activeSessions];
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 504, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "sanitized from %s  active session count %lu", v60, [v61 count]);

        v62 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        LODWORD(v61) = [(IDSServiceEmbeddedController *)self inviterIsInActiveSession:v62];

        if (v61)
        {
          v12 = v183;
          if (sub_1000423E0())
          {
            v63 = sub_100042E68();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              v64 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
              v65 = [v64 UTF8String];
              *buf = 136315650;
              v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
              v197 = 1024;
              v198 = 507;
              v199 = 2080;
              v200 = v65;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "[%s:%d] Ignoring invitation.  Session already established with fromID %s.", buf, 0x1Cu);
            }
          }

          v66 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 507, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "Ignoring invitation.  Session already established with fromID %s.", [v66 UTF8String]);

          goto LABEL_43;
        }

        v68 = [v41 objectForKeyedSubscript:@"aaToken"];
        if (v68)
        {
          v180 = v41;
          v12 = v183;
          if (sub_1000423E0())
          {
            v69 = sub_100042E68();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              v70 = [v68 UTF8String];
              *buf = 136315650;
              v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
              v197 = 1024;
              v198 = 514;
              v199 = 2080;
              v200 = v70;
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
        v73 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        v190 = 0;
        v74 = [(IDSServiceEmbeddedController *)self validateRedwoodRequestDictionary:v41 account:v185 fromID:v73 error:&v190];
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
              v78 = [v13 UTF8String];
              *buf = 136315650;
              v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
              v197 = 1024;
              v198 = 525;
              v199 = 2080;
              v200 = v78;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "[%s:%d] Not a valid request: %s", buf, 0x1Cu);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 525, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "Not a valid request: %s", [v13 UTF8String]);
          if (v179)
          {
            v180 = v41;
            v12 = v183;
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
            v87 = [(__CFString *)v85 UTF8String];
            *buf = 136315650;
            v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
            v197 = 1024;
            v198 = 539;
            v199 = 2080;
            v200 = v87;
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
          v12 = v183;
          v51 = v184;
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
        v12 = v183;
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
        v12 = v183;
        if (v89 != 2)
        {
          v96 = [(IDSServiceEmbeddedController *)self pendingSession];

          v181 = v41;
          if (!v96)
          {
            v188 = 0u;
            v189 = 0u;
            v186 = 0u;
            v187 = 0u;
            v109 = [(IDSServiceEmbeddedController *)self activeSessions];
            v110 = [v109 allValues];

            obj = v110;
            v111 = [v110 countByEnumeratingWithState:&v186 objects:v192 count:16];
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
                      v116 = [v114 inviterID];
                      v117 = [v116 UTF8String];
                      *buf = 136315650;
                      v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                      v197 = 1024;
                      v198 = 590;
                      v199 = 2080;
                      v200 = v117;
                      _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "[%s:%d] active session %s", buf, 0x1Cu);
                    }
                  }

                  v118 = [v114 inviterID];
                  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 590, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "active session %s", [v118 UTF8String]);

                  v119 = [v114 inviterID];
                  v120 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                  v121 = [v119 isEqualToString:v120];

                  if (v121)
                  {
                    v12 = v183;
                    if (sub_1000423E0())
                    {
                      v140 = sub_100042E68();
                      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                      {
                        v141 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                        v142 = [v141 UTF8String];
                        *buf = 136315650;
                        v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                        v197 = 1024;
                        v198 = 593;
                        v199 = 2080;
                        v200 = v142;
                        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "[%s:%d] Ignoring invitation.  Session already established with fromID %s.", buf, 0x1Cu);
                      }
                    }

                    v143 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 593, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "Ignoring invitation.  Session already established with fromID %s.", [v143 UTF8String]);

                    v51 = v184;
                    if (v177)
                    {
                      v144 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                      v145 = [v183 sessionID];
                      [(IDSServiceEmbeddedController *)self sendMessageInviteIgnored:v144 sessionID:v145 service:v184 error:@"Ignore_AlreadyInSession"];
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

            v12 = v183;
            if (sub_1000423E0())
            {
              v122 = sub_100042E68();
              if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
              {
                v123 = [v25 description];
                v124 = [v123 UTF8String];
                *buf = 136315650;
                v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                v197 = 1024;
                v198 = 601;
                v199 = 2080;
                v200 = v124;
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
                    v132 = [(IDSServiceEmbeddedController *)self activeSessions];
                    v133 = [v132 count];
                    *buf = 136315650;
                    v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v197 = 1024;
                    v198 = 619;
                    v199 = 2048;
                    v200 = v133;
                    _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "[%s:%d] active session count %lu", buf, 0x1Cu);
                  }
                }

                v134 = [(IDSServiceEmbeddedController *)self activeSessions];
                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 619, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "active session count %lu", [v134 count]);

                v135 = [(IDSServiceEmbeddedController *)self activeSessions];
                v136 = [v135 count];

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
                    v138 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                    v139 = [v183 sessionID];
                    [(IDSServiceEmbeddedController *)self sendMessageAutoAccept:v138 sessionID:v139 service:v184];
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
                    v149 = [(IDSServiceEmbeddedController *)self sessionPaused];
                    *buf = 136315650;
                    v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v197 = 1024;
                    v198 = 640;
                    v199 = 1024;
                    LODWORD(v200) = v149;
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
                  v151 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                  v152 = [v183 sessionID];
                  [(IDSServiceEmbeddedController *)self sendMessageInviteDisplayed:v151 sessionID:v152 service:v184];
                }

                if (sub_1000423E0())
                {
                  v153 = sub_100042E68();
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
                  {
                    v154 = [(__CFString *)v178 UTF8String];
                    *buf = 136315650;
                    v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v197 = 1024;
                    v198 = 646;
                    v199 = 2080;
                    v200 = v154;
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
                v160 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                v178 = v158;
                v166 = v158;
                LOBYTE(v165) = [(IDSServiceEmbeddedController *)self sessionPaused];
                v127 = v167;
                v161 = [(IDSSessionEmbeddedControllerAppleCare *)v159 initWithRemoteID:v160 session:v183 direction:1 inviteDictionary:v167 andServiceController:self autoAcceptInvite:obja != 0 startOutPaused:v165 appleName:v166];
                [(IDSServiceEmbeddedController *)self setPendingSession:v161];

                if (sub_1000423E0())
                {
                  v162 = sub_100042E68();
                  if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
                  {
                    v163 = [(IDSServiceEmbeddedController *)self pendingSession];
                    *buf = 136315650;
                    v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v197 = 1024;
                    v198 = 663;
                    v199 = 2048;
                    v200 = v163;
                    _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "[%s:%d] PENDING SESSION IS %p", buf, 0x1Cu);
                  }
                }

                v164 = [(IDSServiceEmbeddedController *)self pendingSession];
                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 663, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "PENDING SESSION IS %p", v164);
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
              v173 = [(IDSServiceEmbeddedController *)self pendingSession];
              v98 = [v173 inviterID];
              v168 = [v98 UTF8String];
              objb = [(IDSServiceEmbeddedController *)self pendingSession];
              v99 = [objb idsSession];
              v100 = [v99 sessionID];
              v101 = [v100 UTF8String];
              *buf = 136315906;
              v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
              v197 = 1024;
              v198 = 578;
              v199 = 2080;
              v200 = v168;
              v201 = 2080;
              v202 = v101;
              _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "[%s:%d] Ignoring invitation -- pendingSession already active from: %s %s", buf, 0x26u);
            }
          }

          v102 = [(IDSServiceEmbeddedController *)self pendingSession];
          v103 = [v102 inviterID];
          v174 = [v103 UTF8String];
          v104 = [(IDSServiceEmbeddedController *)self pendingSession];
          v105 = [v104 idsSession];
          v106 = [v105 sessionID];
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 578, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "Ignoring invitation -- pendingSession already active from: %s %s", v174, [v106 UTF8String]);

          v51 = v184;
          if (v177)
          {
            v107 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
            v108 = [v183 sessionID];
            [(IDSServiceEmbeddedController *)self sendMessageInviteIgnored:v107 sessionID:v108 service:v184 error:@"Ignore_PendingInvite"];
          }

          [(IDSServiceEmbeddedController *)self checkIfNoSessions];

LABEL_114:
          goto LABEL_44;
        }
      }

      v51 = v184;
      if (v177)
      {
        v94 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        v95 = [v12 sessionID];
        [(IDSServiceEmbeddedController *)self sendMessageInviteIgnored:v94 sessionID:v95 service:v184 error:@"Ignore_ScreenSharingRestricted"];
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
        v48 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        v49 = [v48 UTF8String];
        *buf = 136315650;
        v196 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
        v197 = 1024;
        v198 = 481;
        v199 = 2080;
        v200 = v49;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%s:%d] invalid invite dictionary from %s - ignoring", buf, 0x1Cu);
      }
    }

    v50 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 481, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "invalid invite dictionary from %s - ignoring", [v50 UTF8String]);
  }

  [(IDSServiceEmbeddedController *)self checkIfNoSessions];
LABEL_43:
  v51 = v184;
LABEL_44:
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 protectionSpace];
  v10 = [v9 authenticationMethod];
  v11 = [v10 isEqualToString:NSURLAuthenticationMethodServerTrust];

  if (v11)
  {
    v12 = [(IDSServiceEmbeddedController *)self validationURL];
    v13 = [NSURLComponents componentsWithString:v12];

    v14 = [v13 host];

    if (v14)
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
      v19 = [v13 host];
      if (v17)
      {
        SSL = SecPolicyCreateSSL(1u, v19);

        if (!SSL)
        {
          goto LABEL_22;
        }
      }

      else
      {
        SSL = SecPolicyCreateAppleSSLPinned();
      }

      v21 = [v7 protectionSpace];
      v22 = [v21 serverTrust];

      v23 = SecTrustSetPolicies(v22, SSL);
      if (SSL)
      {
        CFRelease(SSL);
      }

      if (!v23)
      {
        result = kSecTrustResultInvalid;
        if (!SecTrustEvaluate(v22, &result))
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
            v25 = [NSURLCredential credentialForTrust:v22];
            v8[2](v8, 0, v25);

            goto LABEL_23;
          }
        }
      }
    }

LABEL_22:
    v8[2](v8, 2, 0);
    dispatch_semaphore_signal(self->url_sem);
LABEL_23:

    goto LABEL_24;
  }

  v8[2](v8, 1, 0);
LABEL_24:
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v6 = a5;
  v7 = sub_1000423E0();
  if (v6)
  {
    if (v7)
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v6 description];
        *buf = 136315650;
        v13 = "[IDSServiceEmbeddedController URLSession:task:didCompleteWithError:]";
        v14 = 1024;
        v15 = 746;
        v16 = 2080;
        v17 = [v9 UTF8String];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] URLSession:task:didCompleteWithError: %s", buf, 0x1Cu);
      }
    }

    v10 = [v6 description];
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

- (BOOL)validateRedwoodRequestDictionary:(id)a3 account:(id)a4 fromID:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 objectForKeyedSubscript:@"sessionToken"];
  if (v13)
  {
    v14 = v13;
    v15 = [v10 objectForKeyedSubscript:@"resourcepath"];

    if (v15)
    {
      v16 = [v10 objectForKeyedSubscript:@"appleName"];
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

      v19 = [v10 objectForKeyedSubscript:@"shareType"];
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

      v79 = a6;
      v81 = v20;
      v96[0] = @"version";
      v96[1] = @"params";
      v97[0] = @"1.0";
      v94[0] = @"sessionToken";
      v22 = [v10 objectForKeyedSubscript:@"sessionToken"];
      v95[0] = v22;
      v94[1] = @"fromID";
      v23 = [v12 stringWithSchemeTrimmed];
      v95[1] = v23;
      v94[2] = @"toID";
      v24 = [v11 aliasStrings];
      v95[2] = v24;
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
      v33 = [v10 objectForKeyedSubscript:@"timeout"];
      [v33 floatValue];
      if (v34 == 0.0)
      {
        v35 = 60.0;
      }

      else
      {
        v35 = v34;
      }

      v36 = [v10 objectForKeyedSubscript:@"isprod"];
      if (sub_1000423E0())
      {
        v37 = sub_100042E68();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [(__CFString *)v36 UTF8String];
          *buf = 136315650;
          v89 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
          v90 = 1024;
          v91 = 842;
          v92 = 2080;
          v93 = v38;
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

      v45 = [(IDSServiceEmbeddedController *)self validationURL];
      v46 = [NSURL URLWithString:v45];
      v18 = [v10 objectForKeyedSubscript:@"resourcepath"];
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
            v67 = [v66 UTF8String];
            *buf = 136315650;
            v89 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
            v90 = 1024;
            v91 = 917;
            v92 = 2080;
            v93 = v67;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "[%s:%d] %s", buf, 0x1Cu);
          }
        }

        v68 = [NSString stringWithFormat:@"Redwood Validation Failed: %@", v30];
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 917, "-[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "%s", [v68 UTF8String]);

        if (v79)
        {
          v69 = v30;
          *v79 = v30;
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
        v57 = [(IDSServiceEmbeddedController *)self urlResponseData];

        if (v57)
        {
          v58 = [(IDSServiceEmbeddedController *)self urlResponseData];
          v83 = 0;
          v59 = [NSJSONSerialization JSONObjectWithData:v58 options:0 error:&v83];
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
                v63 = [v71 BOOLValue];
                *buf = 136315650;
                v89 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
                v90 = 1024;
                v91 = 909;
                v92 = 1024;
                LODWORD(v93) = v63;
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

- (id)datagramConnectionFromIDS:(id)a3
{
  v4 = a3;
  v5 = [(IDSServiceEmbeddedController *)self idsService];
  v14 = 0;
  v6 = [v5 datagramConnectionForSessionDestination:v4 error:&v14];

  v7 = v14;
  if (v7)
  {
    if (sub_1000423E0())
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v7 description];
        v10 = [v9 UTF8String];
        *buf = 136315650;
        v16 = "[IDSServiceEmbeddedController datagramConnectionFromIDS:]";
        v17 = 1024;
        v18 = 935;
        v19 = 2080;
        v20 = v10;
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

- (void)addActiveSession:(id)a3
{
  v4 = a3;
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
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] add active session %p", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 955, "[IDSServiceEmbeddedController addActiveSession:]", 7, 0, "add active session %p", v4);
  v7 = [(IDSServiceEmbeddedController *)self activeSessions];
  v8 = [v4 uniqueID];
  [v7 setObject:v4 forKeyedSubscript:v8];

  [(IDSServiceEmbeddedController *)self setPendingSession:0];
  v9 = [(IDSServiceEmbeddedController *)self wallpaperSuspensionAssertion];

  if (!v9)
  {
    SBSAcquireWallpaperAnimationSuspensionAssertion();
  }

  if ([v4 inviterKind] == 2 || objc_msgSend(v4, "inviterKind") == 3)
  {
    v10 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    v11 = [v4 sessionID];
    v12 = [(IDSServiceEmbeddedController *)self idsService];
    [(IDSServiceEmbeddedController *)self sendMessageStartScreenSend:v10 sessionID:v11 service:v12];
  }
}

- (void)removeSession:(id)a3 andEndIDSSession:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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
      v16 = v4;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] removeSession: shouldEndIDSSession:%d for session %p", buf, 0x22u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 979, "[IDSServiceEmbeddedController removeSession:andEndIDSSession:]", 7, 0, "removeSession: shouldEndIDSSession:%d for session %p", v4, v6);
  sub_1000430F0(0, 0, 0.0, 0.0);
  if ([(IDSServiceEmbeddedController *)self viewServicePID]!= -1)
  {
    kill([(IDSServiceEmbeddedController *)self viewServicePID], 15);
    [(IDSServiceEmbeddedController *)self setViewServicePID:0xFFFFFFFFLL];
  }

  if (v6)
  {
    v8 = [(IDSServiceEmbeddedController *)self pendingSession];

    if (v8 == v6)
    {
      [(IDSServiceEmbeddedController *)self setPendingSession:0];
    }

    [(IDSServiceEmbeddedController *)self setIsShareSettings:0];
    [(IDSServiceEmbeddedController *)self setSessionPaused:0];
    if (v4)
    {
      [v6 doEndSession];
    }

    v9 = [(IDSServiceEmbeddedController *)self activeSessions];
    v10 = [v6 uniqueID];
    [v9 removeObjectForKey:v10];

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
  v4 = [(IDSServiceEmbeddedController *)self activeSessions];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(IDSServiceEmbeddedController *)self removeSession:*(*(&v10 + 1) + 8 * v9) andEndIDSSession:1];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)exitTimerCallback:(id)a3
{
  v4 = a3;
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
  v6 = [(IDSServiceEmbeddedController *)self pendingSession];
  if (v6)
  {
  }

  else
  {
    v7 = [(IDSServiceEmbeddedController *)self activeSessions];
    v8 = [v7 count];

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
  v3 = [(IDSServiceEmbeddedController *)self pendingSession];
  if (v3)
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

  v4 = [(IDSServiceEmbeddedController *)self activeSessions];
  v5 = [v4 count];

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

  v10 = [(IDSServiceEmbeddedController *)self wallpaperSuspensionAssertion];

  if (v10)
  {
    v11 = [(IDSServiceEmbeddedController *)self wallpaperSuspensionAssertion];
    [v11 invalidate];

    [(IDSServiceEmbeddedController *)self setWallpaperSuspensionAssertion:0];
  }

  _os_nospin_lock_lock();
  v12 = [(IDSServiceEmbeddedController *)self osTransaction];

  if (v12)
  {
    [(IDSServiceEmbeddedController *)self setOsTransaction:0];
  }

  _os_nospin_lock_unlock();
  v13 = [(IDSServiceEmbeddedController *)self exitTimer];

  if (v13)
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
  v2 = [(IDSServiceEmbeddedController *)self activeSessions];
  v3 = [v2 allValues];
  v4 = [v3 lastObject];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"kSSViewingScreen" value:&stru_100069830 table:0];
  v7 = [v4 inviterFullName];
  v8 = [NSString stringWithFormat:v6, v7];

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
    v5 = [(IDSServiceEmbeddedController *)self activeViewerStatusString];
    v6 = [[SBSStatusBarStyleOverridesAssertion alloc] initWithStatusBarStyleOverrides:0x4000 forPID:getpid() exclusive:1 showsWhenForeground:0];
    [(IDSServiceEmbeddedController *)self setDoubleHeightStatusBarAssertion:v6];

    [(SBSStatusBarStyleOverridesAssertion *)self->_doubleHeightStatusBarAssertion setStatusString:v5];
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
  v3 = [(IDSServiceEmbeddedController *)self activeSessions];
  v4 = [v3 allValues];
  v5 = [v4 lastObject];

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
    [v5 addNotificationIconTo:Mutable];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"kSSAddToClipboardMessage" value:&stru_100069830 table:0];
    v11 = [v5 inviterFullName];
    v12 = [NSString stringWithFormat:v10, v11];

    if (v12)
    {
      v13 = [(IDSServiceEmbeddedController *)self askToCopyToPasteboardUserMessage];

      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v12);
      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertMessageKey, v13);
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v12);
    }

    v14 = [v5 inviterFullName];

    if (v14)
    {
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, v14);
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
    v21 = [(IDSServiceEmbeddedController *)self askToCopyToPasteboardNotification];
    v22 = sub_1000423E0();
    if (v21)
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

- (void)askToToCopyToPasteboardTimeout:(id)a3
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

    v7 = [(IDSServiceEmbeddedController *)self askToCopyToPasteboardTimeoutTimer];

    if (v7)
    {
      v8 = [(IDSServiceEmbeddedController *)self askToCopyToPasteboardTimeoutTimer];
      [v8 invalidate];

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
  v3 = [(IDSServiceEmbeddedController *)self activeSessions];
  v4 = [v3 allValues];
  v5 = [v4 lastObject];

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
    [v5 addNotificationIconTo:Mutable];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"kSSOpenURLMessage" value:&stru_100069830 table:0];
    v11 = [v5 inviterFullName];
    v12 = [NSString stringWithFormat:v10, v11];

    if (v12)
    {
      v13 = [(IDSServiceEmbeddedController *)self urlToOpen];

      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v12);
      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertMessageKey, v13);
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v12);
    }

    v14 = [v5 inviterFullName];

    if (v14)
    {
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, v14);
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

- (void)askToOpenURLTimeout:(id)a3
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

    v7 = [(IDSServiceEmbeddedController *)self askToOpenURLTimeoutTimer];

    if (v7)
    {
      v8 = [(IDSServiceEmbeddedController *)self askToOpenURLTimeoutTimer];
      [v8 invalidate];

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
  v3 = [(IDSServiceEmbeddedController *)self activeSessions];
  v4 = [v3 allValues];
  v5 = [v4 lastObject];

  if ([(IDSServiceEmbeddedController *)self sessionPaused])
  {
    v6 = [(IDSServiceEmbeddedController *)self askToResumeNotification];
    v7 = sub_1000423E0();
    if (v6)
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
          v43 = [(IDSServiceEmbeddedController *)self askToResumeNotification];
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] self.askToResumeNotification  %p", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1559, "[IDSServiceEmbeddedController postAskToResumeNotification]", 7, 0, "self.askToResumeNotification  %p", [(IDSServiceEmbeddedController *)self askToResumeNotification]);
      [qword_100070A78 setAskToResumeTimedOut:0];
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      [v5 addNotificationIconTo:Mutable];
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"kSSAskToResume" value:&stru_100069830 table:0];
      v14 = [v5 inviterFullName];
      v15 = [NSString stringWithFormat:v13, v14];

      if (v15)
      {
        CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v15);
      }

      v16 = [v5 inviterFullName];

      if (v16)
      {
        CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, v16);
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
      v27 = [(IDSServiceEmbeddedController *)self askToResumeNotification];
      v28 = sub_1000423E0();
      if (v27)
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
            LODWORD(v43) = error;
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

- (void)askToResumeTimeout:(id)a3
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
    v6 = [(IDSServiceEmbeddedController *)self askToResumeTimeoutTimer];

    if (v6)
    {
      v7 = [(IDSServiceEmbeddedController *)self askToResumeTimeoutTimer];
      [v7 invalidate];

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

- (void)showMessageToUser:(id)a3
{
  v8 = a3;
  if ([v8 length] > 0xC7)
  {
    v4 = 200;
  }

  else
  {
    v4 = [v8 length];
  }

  v5 = [v8 rangeOfComposedCharacterSequencesForRange:{0, v4}];
  v7 = [v8 substringWithRange:{v5, v6}];
  [(IDSServiceEmbeddedController *)self setShowUserMessage:v7];
  [(IDSServiceEmbeddedController *)self postShowUserMessageNotification];
}

- (void)postShowUserMessageNotification
{
  error = 0;
  v3 = [(IDSServiceEmbeddedController *)self activeSessions];
  v4 = [v3 allValues];
  v5 = [v4 lastObject];

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
    [v5 addNotificationIconTo:Mutable];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"kSSSentMessage" value:&stru_100069830 table:0];
    v11 = [v5 inviterFullName];
    v12 = [NSString stringWithFormat:v10, v11];

    if (v12)
    {
      v13 = [(IDSServiceEmbeddedController *)self showUserMessage];

      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v12);
      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertMessageKey, v13);
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v12);
    }

    v14 = [v5 inviterFullName];

    if (v14)
    {
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, v14);
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

- (void)showUserMessageTimeout:(id)a3
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

    v7 = [(IDSServiceEmbeddedController *)self showUserMessageTimeoutTimer];

    if (v7)
    {
      v8 = [(IDSServiceEmbeddedController *)self showUserMessageTimeoutTimer];
      [v8 invalidate];

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
  v3 = [(IDSServiceEmbeddedController *)self activeSessions];
  v4 = [v3 allValues];
  v5 = [v4 lastObject];

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
    [v5 addNotificationIconTo:Mutable];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"kSSPaused" value:&stru_100069830 table:0];
    v11 = [v5 inviterFullName];
    v12 = [NSString stringWithFormat:v10, v11];

    if (v12)
    {
      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v12);
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v12);
    }

    v13 = [v5 inviterFullName];

    if (v13)
    {
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, v13);
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

- (void)showViewerPausedTimeout:(id)a3
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

    v7 = [(IDSServiceEmbeddedController *)self showViewerPausedTimeoutTimer];

    if (v7)
    {
      v8 = [(IDSServiceEmbeddedController *)self showViewerPausedTimeoutTimer];
      [v8 invalidate];

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

- (void)inviteWasAccepted:(id)a3
{
  v4 = a3;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(IDSServiceEmbeddedController *)self idsService];
      *buf = 136315650;
      v13 = "[IDSServiceEmbeddedController inviteWasAccepted:]";
      v14 = 1024;
      v15 = 2035;
      v16 = 2048;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] invite accepted   self.idsService %p", buf, 0x1Cu);
    }
  }

  v7 = [(IDSServiceEmbeddedController *)self idsService];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2035, "[IDSServiceEmbeddedController inviteWasAccepted:]", 7, 0, "invite accepted   self.idsService %p", v7);

  if ([v4 inviterKind] == 2 || objc_msgSend(v4, "inviterKind") == 3)
  {
    v8 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    v9 = [v4 sessionID];
    v10 = [(IDSServiceEmbeddedController *)self idsService];
    [(IDSServiceEmbeddedController *)self sendMessageInviteAccepted:v8 sessionID:v9 service:v10];
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

- (void)pauseResumeResult:(id)a3
{
  v4 = [a3 objectForKey:@"result"];
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
      v18 = [v4 integerValue];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] pauseResumeResult: %ld", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2057, "-[IDSServiceEmbeddedController pauseResumeResult:]", 7, 0, "pauseResumeResult: %ld", [v4 integerValue]);
  v6 = [v4 integerValue];
  if (v6 > 1)
  {
    if (v6 == 2)
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
      v8 = self;
      v9 = 0;
      goto LABEL_30;
    }

    if (v6 == 3)
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

  else if (v6)
  {
    if (v6 == 1)
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
      v8 = self;
      v9 = 1;
LABEL_30:
      [(IDSServiceEmbeddedController *)v8 pauseScreenSharing:v9];
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

- (void)sessionState:(id)a3
{
  v4 = a3;
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
  if (v4)
  {
    v6 = [NSNumber numberWithBool:[(IDSServiceEmbeddedController *)self sessionPaused]];
    [v4 setObject:v6 forKeyedSubscript:@"paused"];

    v7 = [NSNumber numberWithBool:[(IDSServiceEmbeddedController *)self screenLocked]];
    [v4 setObject:v7 forKeyedSubscript:@"screenLocked"];

    v8 = [(IDSServiceEmbeddedController *)self activeSessions];
    v9 = [v8 allValues];
    v10 = [v9 lastObject];

    if (!v10)
    {
      v10 = [(IDSServiceEmbeddedController *)self pendingSession];
    }

    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 sessionStartDelegateWasCalled]);
    [v4 setObject:v11 forKeyedSubscript:@"isSessionStarted"];

    v12 = [v10 inviterFullName];
    [v4 setObject:v12 forKeyedSubscript:@"viewerName"];

    if (sub_1000423E0())
    {
      v13 = sub_100042E68();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v4 objectForKeyedSubscript:@"viewerName"];
        v15 = [v14 UTF8String];
        *buf = 136315650;
        v28 = "[IDSServiceEmbeddedController sessionState:]";
        v29 = 1024;
        v30 = 2100;
        v31 = 2080;
        v32[0] = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer info %s", buf, 0x1Cu);
      }
    }

    v16 = [v4 objectForKeyedSubscript:@"viewerName"];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2100, "-[IDSServiceEmbeddedController sessionState:]", 7, 0, "viewer info %s", [v16 UTF8String]);

    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 inviterKind] == 3);
    [v4 setObject:v17 forKeyedSubscript:@"isAppleSupportRequest"];

    v18 = [NSNumber numberWithBool:[(IDSServiceEmbeddedController *)self isShareSettings]];
    [v4 setObject:v18 forKeyedSubscript:@"isShareSettings"];

    v19 = [(IDSServiceEmbeddedController *)self pendingSession];
    if (v19)
    {
      v20 = 0;
    }

    else
    {
      self = [(IDSServiceEmbeddedController *)self activeSessions];
      v20 = [(IDSServiceEmbeddedController *)self count]== 0;
    }

    v22 = [NSNumber numberWithBool:v20];
    [v4 setObject:v22 forKeyedSubscript:@"isEnded"];

    if (!v19)
    {
    }

    if (sub_1000423E0())
    {
      v23 = sub_100042E68();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v4 description];
        v25 = [v24 UTF8String];
        *buf = 136315650;
        v28 = "[IDSServiceEmbeddedController sessionState:]";
        v29 = 1024;
        v30 = 2107;
        v31 = 2080;
        v32[0] = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] returning sessionState: %s", buf, 0x1Cu);
      }
    }

    v26 = [v4 description];
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

- (void)termsAndConditionsResult:(id)a3
{
  v4 = a3;
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 description];
      *buf = 136315650;
      v24 = "[IDSServiceEmbeddedController termsAndConditionsResult:]";
      v25 = 1024;
      v26 = 2116;
      v27 = 2080;
      v28 = [v6 UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms and conditions result  %s", buf, 0x1Cu);
    }
  }

  v7 = [v4 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2116, "-[IDSServiceEmbeddedController termsAndConditionsResult:]", 7, 0, "terms and conditions result  %s", [v7 UTF8String]);

  v8 = [v4 objectForKey:@"result"];
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
    v10 = [(IDSServiceEmbeddedController *)self pendingSession];
    if ([v10 inviterKind] == 2)
    {

LABEL_20:
      v14 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      v15 = [(IDSServiceEmbeddedController *)self pendingSession];
      v16 = [v15 sessionID];
      v17 = [(IDSServiceEmbeddedController *)self idsService];
      [(IDSServiceEmbeddedController *)self sendMessageTCAccepted:v14 sessionID:v16 service:v17];

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

    v12 = [(IDSServiceEmbeddedController *)self pendingSession];
    v13 = [v12 inviterKind];

    if (v13 == 3)
    {
      goto LABEL_20;
    }

    if (sub_1000423E0())
    {
      v20 = sub_100042E68();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(IDSServiceEmbeddedController *)self pendingSession];
        *buf = 136315650;
        v24 = "[IDSServiceEmbeddedController termsAndConditionsResult:]";
        v25 = 1024;
        v26 = 2128;
        v27 = 2048;
        v28 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] not applecare  pending session %p", buf, 0x1Cu);
      }
    }

    v22 = [(IDSServiceEmbeddedController *)self pendingSession];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2128, "[IDSServiceEmbeddedController termsAndConditionsResult:]", 7, 0, "not applecare  pending session %p", v22);
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
  v19 = [(IDSServiceEmbeddedController *)self pendingSession];
  [v19 termsAndConditionsResult:v4];
}

- (void)pidNotification:(id)a3
{
  v4 = [a3 objectForKey:@"pid"];
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
      v11 = [(IDSServiceEmbeddedController *)self viewServicePID];
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

- (BOOL)validInviteDictionary:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 valueForKey:@"avconference"];
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

- (BOOL)inviteValidForThisOS:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"osType"];
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

  v5 = [(IDSServiceEmbeddedController *)self osTypeString];
  v6 = [v5 isEqualToString:v4];

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
      v16 = [v4 UTF8String];
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
  v3 = [(IDSServiceEmbeddedController *)self idsService];
  [v3 removeDelegate:self];

  [(IDSServiceEmbeddedController *)self setIdsService:0];
  v4.receiver = self;
  v4.super_class = IDSServiceEmbeddedController;
  [(IDSServiceEmbeddedController *)&v4 dealloc];
}

- (void)sendMessageShareStatusResult:(id)a3 systemInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (sub_1000423E0())
  {
    v8 = sub_100042E68();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 description];
      *buf = 136315650;
      v18 = "[IDSServiceEmbeddedController sendMessageShareStatusResult:systemInfo:]";
      v19 = 1024;
      v20 = 2376;
      v21 = 2080;
      v22 = [v9 UTF8String];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] share status result info %s", buf, 0x1Cu);
    }
  }

  v10 = [v6 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2376, "-[IDSServiceEmbeddedController sendMessageShareStatusResult:systemInfo:]", 7, 0, "share status result info %s", [v10 UTF8String]);

  if (sub_1000423E0())
  {
    v11 = sub_100042E68();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      v13 = [v12 UTF8String];
      *buf = 136315650;
      v18 = "[IDSServiceEmbeddedController sendMessageShareStatusResult:systemInfo:]";
      v19 = 1024;
      v20 = 2377;
      v21 = 2080;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] send to %s", buf, 0x1Cu);
    }
  }

  v14 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2377, "-[IDSServiceEmbeddedController sendMessageShareStatusResult:systemInfo:]", 7, 0, "send to %s", [v14 UTF8String]);

  v15 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  v16 = [(IDSServiceEmbeddedController *)self idsService];
  [(IDSServiceEmbeddedController *)self sendMessageShareStatusResultInfo:v15 sessionID:v7 service:v16 systemInfo:v6];
}

- (void)sendMessageShareSettingsUserDecline:(id)a3
{
  v4 = a3;
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
  v6 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  v7 = [(IDSServiceEmbeddedController *)self idsService];
  [(IDSServiceEmbeddedController *)self sendMessageStatusMessage:v6 sessionID:v4 service:v7 status:@"UserDeclined"];
}

- (void)sendMessageInviteDisplayed:(id)a3 sessionID:(id)a4 service:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
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
      v13 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      v14 = [v13 UTF8String];
      *buf = 136315906;
      v17 = "[IDSServiceEmbeddedController sendMessageInviteDisplayed:sessionID:service:]";
      v18 = 1024;
      v19 = 2390;
      v20 = 2080;
      v21 = v14;
      v22 = 2048;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] send to %s with service %p", buf, 0x26u);
    }
  }

  v15 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2390, "-[IDSServiceEmbeddedController sendMessageInviteDisplayed:sessionID:service:]", 7, 0, "send to %s with service %p", [v15 UTF8String], v8);

  [(IDSServiceEmbeddedController *)self sendMessageStatusMessage:v10 sessionID:v9 service:v8 status:@"InviteDisplayed"];
}

- (void)sendMessageInviteIgnored:(id)a3 sessionID:(id)a4 service:(id)a5 error:(id)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [NSDictionary dictionaryWithObjectsAndKeys:@"InviteIgnored", @"status", a4, @"sessionID", a6, @"REASON", 0];
  [(IDSServiceEmbeddedController *)self sendServiceMessage:v12 destination:v11 service:v10];
}

- (void)sendMessageInviteAccepted:(id)a3 sessionID:(id)a4 service:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (sub_1000423E0())
  {
    v11 = sub_100042E68();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      *buf = 136315906;
      v15 = "[IDSServiceEmbeddedController sendMessageInviteAccepted:sessionID:service:]";
      v16 = 1024;
      v17 = 2411;
      v18 = 2080;
      v19 = [v12 UTF8String];
      v20 = 2048;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] invite accepted - send to %s with service %p", buf, 0x26u);
    }
  }

  v13 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2411, "-[IDSServiceEmbeddedController sendMessageInviteAccepted:sessionID:service:]", 7, 0, "invite accepted - send to %s with service %p", [v13 UTF8String], v8);

  [(IDSServiceEmbeddedController *)self sendMessageStatusMessage:v10 sessionID:v9 service:v8 status:@"InviteAccepted"];
}

- (void)sendMessageTCAccepted
{
  v6 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  v3 = [(IDSServiceEmbeddedController *)self pendingSession];
  v4 = [v3 sessionID];
  v5 = [(IDSServiceEmbeddedController *)self idsService];
  [(IDSServiceEmbeddedController *)self sendMessageTCAccepted:v6 sessionID:v4 service:v5];
}

- (void)sendMessageTCAccepted:(id)a3 sessionID:(id)a4 service:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (sub_1000423E0())
  {
    v11 = sub_100042E68();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      *buf = 136315906;
      v15 = "[IDSServiceEmbeddedController sendMessageTCAccepted:sessionID:service:]";
      v16 = 1024;
      v17 = 2422;
      v18 = 2080;
      v19 = [v12 UTF8String];
      v20 = 2048;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] TC accepted - send to %s with service %p", buf, 0x26u);
    }
  }

  v13 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2422, "-[IDSServiceEmbeddedController sendMessageTCAccepted:sessionID:service:]", 7, 0, "TC accepted - send to %s with service %p", [v13 UTF8String], v8);

  [(IDSServiceEmbeddedController *)self sendMessageStatusMessage:v10 sessionID:v9 service:v8 status:@"TCAccepted"];
}

- (void)sendMessageStatusMessage:(id)a3 sessionID:(id)a4 service:(id)a5 status:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
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
      v25 = [v12 UTF8String];
      v26 = 2080;
      v27 = [v10 UTF8String];
      v28 = 2048;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] status message %s destination %s service %p", buf, 0x30u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2433, "-[IDSServiceEmbeddedController sendMessageStatusMessage:sessionID:service:status:]", 7, 0, "status message %s destination %s service %p", [v12 UTF8String], objc_msgSend(v10, "UTF8String"), v11);
  v15 = [NSDictionary dictionaryWithObjectsAndKeys:v12, @"status", v13, @"sessionID", 0];

  if (sub_1000423E0())
  {
    v16 = sub_100042E68();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v15 description];
      v18 = [v17 UTF8String];
      *buf = 136315650;
      v21 = "[IDSServiceEmbeddedController sendMessageStatusMessage:sessionID:service:status:]";
      v22 = 1024;
      v23 = 2438;
      v24 = 2080;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] status message dict %s", buf, 0x1Cu);
    }
  }

  v19 = [v15 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2438, "-[IDSServiceEmbeddedController sendMessageStatusMessage:sessionID:service:status:]", 7, 0, "status message dict %s", [v19 UTF8String]);

  [(IDSServiceEmbeddedController *)self sendServiceMessage:v15 destination:v10 service:v11];
}

- (void)sendMessageShareStatusResultInfo:(id)a3 sessionID:(id)a4 service:(id)a5 systemInfo:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  [v10 setObject:a4 forKeyedSubscript:@"sessionID"];
  [v10 setObject:@"Settings" forKeyedSubscript:@"status"];
  [(IDSServiceEmbeddedController *)self sendServiceMessage:v10 destination:v12 service:v11];
}

- (void)sendMessageShareStatusUserDeclined:(id)a3 sessionID:(id)a4 service:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [NSDictionary dictionaryWithObjectsAndKeys:@"UserDeclined", @"status", a4, @"sessionID", 0];
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
      v19 = [v12 UTF8String];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] decline status request %s", buf, 0x1Cu);
    }
  }

  v13 = [v10 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2456, "-[IDSServiceEmbeddedController sendMessageShareStatusUserDeclined:sessionID:service:]", 7, 0, "decline status request %s", [v13 UTF8String]);

  [(IDSServiceEmbeddedController *)self sendServiceMessage:v10 destination:v9 service:v8];
}

- (void)sendServiceMessage:(id)a3 destination:(id)a4 service:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
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
      v12 = [v7 description];
      *buf = 136316162;
      v27 = "[IDSServiceEmbeddedController sendServiceMessage:destination:service:]";
      v28 = 1024;
      v29 = 2471;
      v30 = 2080;
      *v31 = [v12 UTF8String];
      *&v31[8] = 2080;
      *&v31[10] = [v8 UTF8String];
      v32 = 2048;
      v33 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] sendServiceMessage dict = %s  destination %s  sercice %p", buf, 0x30u);
    }
  }

  v13 = [v7 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2471, "-[IDSServiceEmbeddedController sendServiceMessage:destination:service:]", 7, 0, "sendServiceMessage dict = %s  destination %s  sercice %p", [v13 UTF8String], objc_msgSend(v8, "UTF8String"), v9);

  v14 = [NSSet setWithObject:v8];
  v24 = 0;
  v25 = 0;
  v15 = [v9 sendMessage:v7 toDestinations:v14 priority:300 options:v10 identifier:&v25 error:&v24];
  v16 = v25;
  v17 = v24;

  if (sub_1000423E0())
  {
    v18 = sub_100042E68();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v16 UTF8String];
      *buf = 136315906;
      v27 = "[IDSServiceEmbeddedController sendServiceMessage:destination:service:]";
      v28 = 1024;
      v29 = 2478;
      v30 = 1024;
      *v31 = v15;
      *&v31[4] = 2080;
      *&v31[6] = v19;
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
        v22 = [v21 UTF8String];
        *buf = 136315650;
        v27 = "[IDSServiceEmbeddedController sendServiceMessage:destination:service:]";
        v28 = 1024;
        v29 = 2480;
        v30 = 2080;
        *v31 = v22;
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

- (BOOL)inviterIsInActiveSession:(id)a3
{
  v4 = a3;
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
      v31 = [v4 UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] check if %s in active session", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2496, "-[IDSServiceEmbeddedController inviterIsInActiveSession:]", 7, 0, "check if %s in active session", [v4 UTF8String]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(IDSServiceEmbeddedController *)self activeSessions];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if (sub_1000423E0())
        {
          v13 = sub_100042E68();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v12 inviterID];
            v15 = [v14 UTF8String];
            *buf = 136315650;
            v27 = "[IDSServiceEmbeddedController inviterIsInActiveSession:]";
            v28 = 1024;
            v29 = 2499;
            v30 = 2080;
            v31 = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] check active session inviterID %s", buf, 0x1Cu);
          }
        }

        v16 = [v12 inviterID];
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2499, "-[IDSServiceEmbeddedController inviterIsInActiveSession:]", 7, 0, "check active session inviterID %s", [v16 UTF8String]);

        v17 = [v12 inviterID];
        v18 = [v17 isEqualToString:v4];

        if (v18)
        {
          v19 = 1;
          goto LABEL_19;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6
{
  v6 = a5;
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
      v13 = [v6 UTF8String];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] hasBeenDeliveredWithContext %s", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2511, "-[IDSServiceEmbeddedController service:account:identifier:hasBeenDeliveredWithContext:]", 7, 0, "hasBeenDeliveredWithContext %s", [v6 UTF8String]);
}

- (void)service:(id)a3 account:(id)a4 incomingPendingMessageOfType:(int64_t)a5 fromID:(id)a6 context:(id)a7
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

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
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

- (void)service:(id)a3 linkedDevicesChanged:(id)a4
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

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 sentBytes:(int64_t)a6 totalBytes:(int64_t)a7
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

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
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

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
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

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7
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

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
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

- (void)service:(id)a3 activeAccountsChanged:(id)a4
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

- (void)service:(id)a3 devicesChanged:(id)a4
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

- (void)service:(id)a3 nearbyDevicesChanged:(id)a4
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

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a7;
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
      v17 = v8;
      v18 = 2048;
      v19 = [v10 code];
      v20 = 2080;
      v21 = [v9 UTF8String];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] didSendWithSuccess success %d error code %ld  id %s", buf, 0x2Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2564, "-[IDSServiceEmbeddedController service:account:identifier:didSendWithSuccess:error:]", 7, 0, "didSendWithSuccess success %d error code %ld  id %s", v8, [v10 code], objc_msgSend(v9, "UTF8String"));
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  v9 = a6;
  v10 = a5;
  v11 = a7;
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
      v18 = v9;
      v19 = 2048;
      v20 = [v11 code];
      v21 = 2080;
      v22 = [v10 UTF8String];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] didSendWithSuccess success %d error code %ld  id %s", buf, 0x2Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2568, "-[IDSServiceEmbeddedController service:account:identifier:didSendWithSuccess:error:context:]", 7, 0, "didSendWithSuccess success %d error code %ld  id %s", v9, [v11 code], objc_msgSend(v10, "UTF8String"));
}

- (void)serviceSpaceDidBecomeAvailable:(id)a3
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

- (void)serviceAllowedTrafficClassifiersDidReset:(id)a3
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