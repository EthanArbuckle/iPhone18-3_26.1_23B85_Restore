@interface SMSApplicationDelegate
+ (id)addMessagesFileProviderDomain:(id *)domain;
+ (id)logHandle;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (BOOL)isBulletinSuppressed:(id)suppressed messageContexts:(id)contexts;
- (BOOL)isFromFilteredSender:(id)sender fromSender:(id)fromSender;
- (SMSApplicationDelegate)init;
- (id)_sceneIDForChat:(id)chat;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (id)extractValueFromURL:(id)l forKey:(id)key;
- (id)logHandle;
- (id)smsApplication;
- (void)_clearFailureBadge;
- (void)_messageReceived:(id)received;
- (void)_messageSendFailed:(id)failed;
- (void)_messageSent:(id)sent;
- (void)_playMessageReceivedForMessage:(id)message inChat:(id)chat;
- (void)_resetIdleTimer;
- (void)applicationSignificantTimeChange:(id)change;
- (void)dealloc;
- (void)session:(id)session bag:(id)bag didLoadWithError:(id)error;
@end

@implementation SMSApplicationDelegate

- (SMSApplicationDelegate)init
{
  v8.receiver = self;
  v8.super_class = SMSApplicationDelegate;
  v2 = [(SMSApplicationDelegate *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SMSApplicationSoundHelper);
    [(SMSApplicationDelegate *)v2 setSoundHelper:v3];

    v4 = objc_alloc_init(CKSceneController);
    [(SMSApplicationDelegate *)v2 setSceneController:v4];

    if (IMSupportsUserNotifications())
    {
      v5 = +[UNUserNotificationCenter currentNotificationCenter];
      sceneController = [(SMSApplicationDelegate *)v2 sceneController];
      [v5 setDelegate:sceneController];
    }
  }

  return v2;
}

- (id)logHandle
{
  v2 = objc_opt_class();

  return [v2 logHandle];
}

+ (id)logHandle
{
  if (qword_10003A1B8 != -1)
  {
    sub_100001D14();
  }

  v3 = qword_10003A1B0;

  return v3;
}

- (void)_clearFailureBadge
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"__kMessagesBadgeControllerClearFailureBadgeNotification", 0, 0, 1u);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SMSApplicationDelegate;
  [(SMSApplicationDelegate *)&v4 dealloc];
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v55 = sessionCopy;
      v56 = 2112;
      v57 = optionsCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Application will create scene with session: %@ connectionOptions: %@", buf, 0x16u);
    }
  }

  role = [sessionCopy role];
  v10 = [role isEqualToString:UIWindowSceneSessionRoleExternalDisplayNonInteractive];

  if (v10)
  {
    goto LABEL_10;
  }

  role2 = [sessionCopy role];
  v12 = [role2 isEqualToString:@"CPTemplateApplicationSceneSessionRoleApplication"];

  if (v12)
  {
    goto LABEL_10;
  }

  role3 = [sessionCopy role];
  v14 = [role3 isEqualToString:UIWindowSceneSessionRoleAssistiveAccessApplication];

  if (v14 || ([sessionCopy role], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", @"com.apple.PosterBoardUIServices.editor-overlay"), v15, v16))
  {
LABEL_10:
    configuration = [sessionCopy configuration];
    goto LABEL_11;
  }

  v19 = objc_opt_class();
  uRLContexts = [optionsCopy URLContexts];
  anyObject = [uRLContexts anyObject];

  v43 = [anyObject URL];
  v42 = [(SMSApplicationDelegate *)self extractValueFromURL:v43 forKey:@"overlay"];
  if ([v42 isEqualToString:@"1"])
  {
    v19 = objc_opt_class();
  }

  userActivities = [optionsCopy userActivities];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  allObjects = [userActivities allObjects];
  v22 = [allObjects countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v22)
  {
    v23 = *v50;
    v24 = ShowDebugViewActivity;
    v48 = ShowMessageInspectorActivity;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v50 != v23)
        {
          objc_enumerationMutation(allObjects);
        }

        v26 = *(*(&v49 + 1) + 8 * i);
        activityType = [v26 activityType];
        v28 = [activityType isEqualToString:@"com.apple.Messages.StateRestoration"];

        if (v28)
        {
          if (IMOSLoggingEnabled())
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v55 = v26;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "State restoration user activity found in user activities dictionaries set: %@", buf, 0xCu);
            }
          }

          userInfo = [v26 userInfo];
          v31 = [userInfo objectForKeyedSubscript:@"CKCanvasStateRestorationContainerType"];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = +[CKSceneDelegate containerClassForType:](CKSceneDelegate, "containerClassForType:", [v31 integerValue]);
            if (IMOSLoggingEnabled())
            {
              v32 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v55 = v19;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "User activity has delegate class: %@", buf, 0xCu);
              }
            }
          }
        }

        else
        {
          activityType2 = [v26 activityType];
          if ([activityType2 isEqualToString:v24])
          {
          }

          else
          {
            activityType3 = [v26 activityType];
            v35 = [activityType3 isEqualToString:v48];

            if (!v35)
            {
              continue;
            }
          }

          v19 = objc_opt_class();
        }
      }

      v22 = [allObjects countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v22);
  }

  configuration2 = [sessionCopy configuration];
  v37 = [UISceneConfiguration alloc];
  name = [configuration2 name];
  role4 = [configuration2 role];
  configuration = [v37 initWithName:name sessionRole:role4];

  [configuration setDelegateClass:v19];
  [configuration setSceneClass:{objc_msgSend(configuration2, "sceneClass")}];
  if (IMOSLoggingEnabled())
  {
    v40 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v55 = configuration;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Returning scene configuration: %@", buf, 0xCu);
    }
  }

LABEL_11:

  return configuration;
}

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  v4 = [NSUserDefaults standardUserDefaults:application];
  [v4 registerDefaults:&off_100034C80];

  [CKApplicationState setMainWindowForegroundActive:1];
  return 1;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  kdebug_trace();
  v5 = IMClientTelemetryLogHandle();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ClientLaunchToViewAppears", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = +[NSNotificationCenter defaultCenter];
  if (qword_10003A1C0 != -1)
  {
    sub_10001D550();
  }

  v7 = dispatch_time(0, 2500000000);
  dispatch_after(v7, &_dispatch_main_q, &stru_100031110);
  v8 = [IMSWHighlightCenterController sharedControllerWithAppIdentifier:@"com.apple.MobileSMS"];
  logHandle = [(SMSApplicationDelegate *)self logHandle];
  logHandle2 = [(SMSApplicationDelegate *)self logHandle];
  v11 = os_signpost_id_make_with_pointer(logHandle2, "IMCoreSetup");

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, logHandle, OS_SIGNPOST_INTERVAL_BEGIN, v11, "IMCoreSetup", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = +[IMDaemonController sharedController];
  [v12 blockUntilConnected];

  logHandle3 = [(SMSApplicationDelegate *)self logHandle];
  logHandle4 = [(SMSApplicationDelegate *)self logHandle];
  v15 = os_signpost_id_make_with_pointer(logHandle4, "IMCoreSetup");

  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, logHandle3, OS_SIGNPOST_INTERVAL_END, v15, "IMCoreSetup", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = +[IMSystemMonitor sharedInstance];
  [v16 setActive:1];

  [v6 addObserver:self selector:"_messageReceived:" name:IMChatMessageReceivedNotification object:0];
  [v6 addObserver:self selector:"_messageSent:" name:IMChatRegistryMessageSentNotification object:0];
  v17 = +[IMChatRegistry sharedRegistry];
  [v17 _setPostMessageSentNotifications:1];

  [v6 addObserver:self selector:"_messageSendFailed:" name:IMChatMessageSendFailedNotification object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, CKClientDidResumeNotification, 0, 0, 1u);
  [(SMSApplicationDelegate *)self _clearFailureBadge];
  CKPrewarmLaunch();
  v19 = dispatch_time(0, 15000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019CB4;
  block[3] = &unk_1000309C0;
  block[4] = self;
  dispatch_after(v19, &_dispatch_main_q, block);

  return 1;
}

- (void)applicationSignificantTimeChange:(id)change
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 invalidateTranscriptDrawerWidth];
}

- (void)session:(id)session bag:(id)bag didLoadWithError:(id)error
{
  if (!error)
  {
    v6 = [NSUserDefaults standardUserDefaults:session];
    [v6 setBool:1 forKey:@"kHasSetupHashtagImages"];
  }
}

- (void)_messageReceived:(id)received
{
  receivedCopy = received;
  object = [receivedCopy object];
  userInfo = [receivedCopy userInfo];
  v7 = [userInfo objectForKey:IMChatValueKey];

  guid = [v7 guid];
  if ([v7 isRead])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = guid;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Not playing message receive sound for message that is already read: %@", buf, 0xCu);
      }

LABEL_15:
    }
  }

  else if ([v7 isFromMe])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = guid;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Not playing message receive sound for message that is from me: %@", buf, 0xCu);
      }

      goto LABEL_15;
    }
  }

  else if ([object isMuted])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        guid2 = [object guid];
        *buf = 138412546;
        v20 = guid;
        v21 = 2112;
        v22 = guid2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Not playing message receive sound for chat that is muted. MessageGuid: %@ ChatGuid: %@", buf, 0x16u);
      }

      goto LABEL_15;
    }
  }

  else
  {
    sender = [v7 sender];
    if ([(SMSApplicationDelegate *)self isFromFilteredSender:object fromSender:sender])
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [sender ID];
          *buf = 138412546;
          v20 = guid;
          v21 = 2112;
          v22 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Not playing message receive sound for message that is from a filtered sender. MessageGuid: %@ Sender: %@", buf, 0x16u);
        }
      }
    }

    else if (+[NSThread isMainThread])
    {
      [(SMSApplicationDelegate *)self _playMessageReceivedForMessage:v7 inChat:object];
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001A2D4;
      block[3] = &unk_1000309E8;
      block[4] = self;
      v17 = v7;
      v18 = object;
      dispatch_async(&_dispatch_main_q, block);
    }

    v14 = +[CKUIBehavior sharedBehaviors];
    resetsIdleTimer = [v14 resetsIdleTimer];

    if (resetsIdleTimer)
    {
      [(SMSApplicationDelegate *)self _resetIdleTimer];
    }
  }
}

- (void)_messageSent:(id)sent
{
  sentCopy = sent;
  object = [sentCopy object];
  if (([object isMuted] & 1) == 0)
  {
    userInfo = [sentCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:IMChatRegistryMessageSendIsReplicatingKey];
    bOOLValue = [v6 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      userInfo2 = [sentCopy userInfo];
      v9 = [userInfo2 objectForKeyedSubscript:IMChatRegistryMessageSentMessageKey];

      v10 = v9;
      im_main_thread();
    }
  }
}

- (void)_messageSendFailed:(id)failed
{
  userInfo = [failed userInfo];
  v30 = [userInfo objectForKey:IMChatValueKey];

  error = [v30 error];
  code = [error code];

  v7 = v30;
  if (code)
  {
    sender = [v30 sender];
    service = [sender service];

    v10 = +[IMMobileNetworkManager sharedInstance];
    isAirplaneModeEnabled = [v10 isAirplaneModeEnabled];
    isWiFiEnabled = [v10 isWiFiEnabled];
    if (isAirplaneModeEnabled)
    {
      v13 = isWiFiEnabled;
      if (([service __ck_isCarrierBased] & 1) != 0 || (v13 & 1) == 0 && objc_msgSend(service, "__ck_isiMessage"))
      {
        v14 = MGGetBoolAnswer();
        v15 = CKFrameworkBundle();
        v16 = v15;
        if (v14)
        {
          v17 = @"TURN_OFF_AIRPLANE_MODE_OR_TURN_ON_WLAN";
        }

        else
        {
          v17 = @"TURN_OFF_AIRPLANE_MODE_OR_TURN_ON_WIFI";
        }

        v29 = [v15 localizedStringForKey:v17 value:&stru_100031A40 table:@"ChatKit"];

        v18 = [CKAlertController alertControllerWithTitle:v29 message:0 preferredStyle:1];
        v19 = CKFrameworkBundle();
        v20 = [v19 localizedStringForKey:@"OK" value:&stru_100031A40 table:@"ChatKit"];
        v21 = [CKAlertAction actionWithTitle:v20 style:1 handler:0];

        v22 = CKFrameworkBundle();
        v23 = [v22 localizedStringForKey:@"SETTINGS" value:&stru_100031A40 table:@"ChatKit"];
        v24 = [CKAlertAction actionWithTitle:v23 style:0 handler:&stru_100031150];

        [v18 addAction:v21];
        [v18 addAction:v24];
        sceneController = [(SMSApplicationDelegate *)self sceneController];
        messagesSceneDelegate = [sceneController messagesSceneDelegate];
        window = [messagesSceneDelegate window];

        rootViewController = [window rootViewController];
        [v18 presentFromViewController:rootViewController animated:1 completion:0];
        +[CKStarkManager isCarPlayConnected];
      }
    }

    v7 = v30;
  }
}

- (void)_playMessageReceivedForMessage:(id)message inChat:(id)chat
{
  messageCopy = message;
  chatCopy = chat;
  if (!+[NSThread isMainThread])
  {
    sub_10001D614(a2, self);
  }

  guid = [messageCopy guid];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = guid;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Message %@ received. Determining if we should play in-app message received sound", buf, 0xCu);
    }
  }

  soundHelper = [(SMSApplicationDelegate *)self soundHelper];
  [soundHelper stopPlayingAlert];
  v12 = +[UIApplication sharedApplication];
  isSuspended = [v12 isSuspended];

  v14 = +[CKApplicationState isApplicationActive];
  if (CKIsRunningInMacCatalyst())
  {
    v15 = v14;
  }

  else
  {
    v15 = (isSuspended ^ 1);
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v48 = v15;
      v49 = 2048;
      v50 = isSuspended;
      v51 = 2048;
      v52 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "For receive sound playblack, Messages isActive: %ld. (isAppSuspended: %ld, isAppStateActive: %ld)", buf, 0x20u);
    }
  }

  if (v15)
  {
    persistentID = [chatCopy persistentID];
    personCentricID = [chatCopy personCentricID];
    v19 = CKSuppressionContextsForIdentifiers();
    sceneController = [(SMSApplicationDelegate *)self sceneController];
    alertSuppressionContextsFromForegroundActiveScenes = [sceneController alertSuppressionContextsFromForegroundActiveScenes];

    if (![(SMSApplicationDelegate *)self isBulletinSuppressed:alertSuppressionContextsFromForegroundActiveScenes messageContexts:v19])
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_75:

        goto LABEL_80;
      }

      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v48 = guid;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "System notification is not suppressed for %@, letting notifications play sound", buf, 0xCu);
      }

LABEL_25:

      goto LABEL_75;
    }

    v22 = [soundHelper allowedByScreenTimeToPlayReceiveSoundForChat:chatCopy];
    v23 = CKIsSuppressingReceiveSoundForMessageGUID();
    if ((v22 & 1) == 0)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_61;
      }

      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v48 = guid;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Message %@ will not play sound due to screentime suppression", buf, 0xCu);
      }

      goto LABEL_21;
    }

    if (v23)
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_61:
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_75;
        }

        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v48 = guid;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Not playing sound for message: %@", buf, 0xCu);
        }

        goto LABEL_25;
      }

      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v48 = guid;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Message %@ will not play sound due to sound being suppressed for that message guid", buf, 0xCu);
      }

LABEL_21:

      goto LABEL_61;
    }

    v46 = +[IMFocusStateManager sharedManager];
    if (![v46 shouldFilterConversationsByFocus])
    {
LABEL_37:

      __ck_isAcknowledgmentMessage = [messageCopy __ck_isAcknowledgmentMessage];
      if ([alertSuppressionContextsFromForegroundActiveScenes containsObject:persistentID])
      {
        if ((__ck_isAcknowledgmentMessage & 1) == 0)
        {
LABEL_51:
          v33 = 1;
          goto LABEL_70;
        }
      }

      else
      {
        v32 = [alertSuppressionContextsFromForegroundActiveScenes containsObject:personCentricID];
        v33 = v32;
        if ((__ck_isAcknowledgmentMessage & 1) == 0)
        {
LABEL_70:
          if (IMOSLoggingEnabled())
          {
            v42 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v48 = guid;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Playing standard incoming message sound for message: %@", buf, 0xCu);
            }
          }

          [soundHelper playIncomingMessageSoundAndHapticForMessage:messageCopy messageIsForCurrentTranscript:v33];
          goto LABEL_75;
        }

        if (!v32)
        {
          if (IMOSLoggingEnabled())
          {
            v41 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v48 = guid;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Message %@ is a received tapback, but the chat for this message is not currently visible. Attempting fall back to standard incoming message sound.", buf, 0xCu);
            }
          }

          v33 = 0;
          goto LABEL_70;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v48 = guid;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Playing tapback message sound for message: %@", buf, 0xCu);
        }
      }

      if ([soundHelper playTapbackReceivedSoundForMessageInCurrentTranscript:messageCopy])
      {
        goto LABEL_75;
      }

      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v48 = guid;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Message %@ is a received tapback, but did not generate a tapback sound. Attempting fall back to standard incoming message sound.", buf, 0xCu);
        }
      }

      goto LABEL_51;
    }

    v26 = [v46 chatMatchesActiveFocusMode:chatCopy];
    v27 = [v46 senderMatchesActiveFocusModeForMessage:messageCopy];
    v28 = IMOSLoggingEnabled();
    if (v26)
    {
      if (v27)
      {
        if (v28)
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            guid2 = [chatCopy guid];
            *buf = 138412546;
            v48 = guid;
            v49 = 2112;
            v50 = guid2;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Conversations are being filtered by focus, but message %@ is part of chat %@ which is allowed in the active focus, so allowing received message sound to play.", buf, 0x16u);
          }
        }

        goto LABEL_37;
      }

      if (v28)
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          sender = [messageCopy sender];
          v45 = [sender ID];
          guid3 = [chatCopy guid];
          v44 = sender;
          *buf = 138412802;
          v48 = guid;
          v49 = 2112;
          v50 = v45;
          v51 = 2112;
          v52 = guid3;
          v40 = guid3;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Conversations are being filtered by focus. Message %@ is from sender %@ in chat %@. The chat is allowed by focus, but this sender is not, so not allowing received message sound to play.", buf, 0x20u);
        }

LABEL_59:
      }
    }

    else if (v28)
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        guid4 = [chatCopy guid];
        *buf = 138412546;
        v48 = guid;
        v49 = 2112;
        v50 = guid4;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Conversations are being filtered by focus. Message %@ is part of chat %@ which is not allowed in the active focus, so not allowing received message sound to play.", buf, 0x16u);
      }

      goto LABEL_59;
    }

    goto LABEL_61;
  }

  if (IMOSLoggingEnabled())
  {
    v43 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = guid;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "App is not active, letting Notifications play sound for %@", buf, 0xCu);
    }
  }

LABEL_80:
}

- (BOOL)isBulletinSuppressed:(id)suppressed messageContexts:(id)contexts
{
  suppressedCopy = suppressed;
  contextsCopy = contexts;
  if ([(SMSApplicationDelegate *)self shouldGetBulletinSuppressedStateFromHelper])
  {
    soundHelper = [(SMSApplicationDelegate *)self soundHelper];
    LODWORD(self) = [soundHelper bulletinSuppressed];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Forced notification suppression state is %ld. (This is a unit testing path).", &v12, 0xCu);
      }
    }
  }

  else
  {
    sceneController = [(SMSApplicationDelegate *)self sceneController];
    LOBYTE(self) = [sceneController shouldSuppressNotificationForMessageWithRelevantContext:contextsCopy withAlertSupressionContextForScenes:suppressedCopy];
  }

  return self;
}

- (void)_resetIdleTimer
{
  v2 = +[UIApplication sharedApplication];
  [v2 setIdleTimerDisabled:1];

  v3 = +[UIApplication sharedApplication];
  [v3 setIdleTimerDisabled:0];
}

- (id)smsApplication
{
  v2 = +[UIApplication sharedApplication];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isFromFilteredSender:(id)sender fromSender:(id)fromSender
{
  senderCopy = sender;
  fromSenderCopy = fromSender;
  [senderCopy supportsFilteringExtensions];
  lastFinishedMessageItem = [senderCopy lastFinishedMessageItem];
  service = [lastFinishedMessageItem service];
  v9 = [IMService serviceWithName:service];

  [v9 supportsCapability:IMServiceCapabilitySpamFilteringExtensions];
  if (([senderCopy isCategorized] & 1) == 0)
  {
    v10 = [senderCopy valueForChatProperty:kWasDetectedAsiMessageSpam];
    [v10 BOOLValue];
  }

  [senderCopy isFiltered];
  v11 = [fromSenderCopy cnContactWithKeys:&__NSArray0__struct];

  [IMContactStore isCNContactAKnownContact:v11];
  v12 = CKMessageIsFromFilteredSenderIsUnderFirstUnlock() != 0;

  return v12;
}

- (id)extractValueFromURL:(id)l forKey:(id)key
{
  keyCopy = key;
  lCopy = l;
  v7 = +[NSMutableDictionary dictionary];
  resourceSpecifier = [lCopy resourceSpecifier];

  if ([resourceSpecifier hasPrefix:@"//"])
  {
    v9 = [resourceSpecifier substringFromIndex:2];

    resourceSpecifier = v9;
  }

  v10 = [NSString stringWithFormat:@"messages://%@", resourceSpecifier];
  v11 = [NSURL URLWithString:v10];

  absoluteString = [v11 absoluteString];
  v13 = ExtractURLQueries();

  v14 = [v7 objectForKey:keyCopy];

  return v14;
}

+ (id)addMessagesFileProviderDomain:(id *)domain
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10001B81C;
  v18 = sub_10001B82C;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001B81C;
  v12 = sub_10001B82C;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B834;
  v7[3] = &unk_1000311A0;
  v7[4] = &v8;
  v7[5] = &v14;
  if (qword_10003A1C8 == -1)
  {
    if (!domain)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&qword_10003A1C8, v7);
  if (domain)
  {
LABEL_3:
    *domain = v15[5];
  }

LABEL_4:
  if (v15[5])
  {
    v4 = 0;
  }

  else
  {
    v4 = v9[5];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

- (id)_sceneIDForChat:(id)chat
{
  chatCopy = chat;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = +[UIApplication sharedApplication];
  obj = [v3 connectedScenes];

  v4 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (!v4)
  {

LABEL_29:
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        chatIdentifier = [chatCopy chatIdentifier];
        *buf = 138412290;
        v40 = chatIdentifier;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "SMSApplication | Cant find sceneID for chatID: %@", buf, 0xCu);
      }
    }

    persistentIdentifier = 0;
    persistentIdentifier2 = 0;
    goto LABEL_40;
  }

  v6 = 0;
  v34 = *v36;
  *&v5 = 138412290;
  v31 = v5;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v36 != v34)
    {
      objc_enumerationMutation(obj);
    }

    v8 = *(*(&v35 + 1) + 8 * v7);
    delegate = [v8 delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_15;
    }

    delegate2 = [v8 delegate];
    if ([delegate2 type])
    {
      persistentIdentifier = v6;
    }

    else
    {
      session = [v8 session];
      persistentIdentifier = [session persistentIdentifier];

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = v31;
          v40 = persistentIdentifier;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Main window sceneID: %@", buf, 0xCu);
        }
      }
    }

    conversation = [delegate2 conversation];
    chat = [conversation chat];
    chatIdentifier2 = [chat chatIdentifier];
    chatIdentifier3 = [chatCopy chatIdentifier];
    v19 = [chatIdentifier2 isEqualToString:chatIdentifier3];

    if (v19)
    {
      break;
    }

    v6 = persistentIdentifier;
LABEL_15:
    if (v4 == ++v7)
    {
      v4 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v4)
      {
        goto LABEL_3;
      }

      if (!v6)
      {
        goto LABEL_29;
      }

LABEL_35:
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          chatIdentifier4 = [chatCopy chatIdentifier];
          *buf = 138412546;
          v40 = chatIdentifier4;
          v41 = 2112;
          v42 = v6;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "No scene associated with chat %@, using main window sceneID: %@", buf, 0x16u);
        }
      }

      persistentIdentifier = v6;
      persistentIdentifier2 = persistentIdentifier;
      goto LABEL_40;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      type = [delegate2 type];
      *buf = 134217984;
      v40 = type;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "sceneDelegate type: %ld", buf, 0xCu);
    }
  }

  session2 = [v8 session];
  persistentIdentifier2 = [session2 persistentIdentifier];

  if (!persistentIdentifier2)
  {
    v6 = persistentIdentifier;
    if (!persistentIdentifier)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      chatIdentifier5 = [chatCopy chatIdentifier];
      *buf = 138412546;
      v40 = persistentIdentifier2;
      v41 = 2112;
      v42 = chatIdentifier5;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "found sceneID: %@ for chatID: %@", buf, 0x16u);
    }
  }

LABEL_40:

  return persistentIdentifier2;
}

@end