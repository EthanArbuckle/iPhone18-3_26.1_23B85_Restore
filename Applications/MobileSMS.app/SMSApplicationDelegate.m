@interface SMSApplicationDelegate
+ (id)addMessagesFileProviderDomain:(id *)a3;
+ (id)logHandle;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (BOOL)isBulletinSuppressed:(id)a3 messageContexts:(id)a4;
- (BOOL)isFromFilteredSender:(id)a3 fromSender:(id)a4;
- (SMSApplicationDelegate)init;
- (id)_sceneIDForChat:(id)a3;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (id)extractValueFromURL:(id)a3 forKey:(id)a4;
- (id)logHandle;
- (id)smsApplication;
- (void)_clearFailureBadge;
- (void)_messageReceived:(id)a3;
- (void)_messageSendFailed:(id)a3;
- (void)_messageSent:(id)a3;
- (void)_playMessageReceivedForMessage:(id)a3 inChat:(id)a4;
- (void)_resetIdleTimer;
- (void)applicationSignificantTimeChange:(id)a3;
- (void)dealloc;
- (void)session:(id)a3 bag:(id)a4 didLoadWithError:(id)a5;
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
      v6 = [(SMSApplicationDelegate *)v2 sceneController];
      [v5 setDelegate:v6];
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

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v45 = a3;
  v47 = a4;
  v46 = a5;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v55 = v47;
      v56 = 2112;
      v57 = v46;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Application will create scene with session: %@ connectionOptions: %@", buf, 0x16u);
    }
  }

  v9 = [v47 role];
  v10 = [v9 isEqualToString:UIWindowSceneSessionRoleExternalDisplayNonInteractive];

  if (v10)
  {
    goto LABEL_10;
  }

  v11 = [v47 role];
  v12 = [v11 isEqualToString:@"CPTemplateApplicationSceneSessionRoleApplication"];

  if (v12)
  {
    goto LABEL_10;
  }

  v13 = [v47 role];
  v14 = [v13 isEqualToString:UIWindowSceneSessionRoleAssistiveAccessApplication];

  if (v14 || ([v47 role], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", @"com.apple.PosterBoardUIServices.editor-overlay"), v15, v16))
  {
LABEL_10:
    v17 = [v47 configuration];
    goto LABEL_11;
  }

  v19 = objc_opt_class();
  v20 = [v46 URLContexts];
  v44 = [v20 anyObject];

  v43 = [v44 URL];
  v42 = [(SMSApplicationDelegate *)self extractValueFromURL:v43 forKey:@"overlay"];
  if ([v42 isEqualToString:@"1"])
  {
    v19 = objc_opt_class();
  }

  v41 = [v46 userActivities];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v21 = [v41 allObjects];
  v22 = [v21 countByEnumeratingWithState:&v49 objects:v53 count:16];
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
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v49 + 1) + 8 * i);
        v27 = [v26 activityType];
        v28 = [v27 isEqualToString:@"com.apple.Messages.StateRestoration"];

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

          v30 = [v26 userInfo];
          v31 = [v30 objectForKeyedSubscript:@"CKCanvasStateRestorationContainerType"];

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
          v33 = [v26 activityType];
          if ([v33 isEqualToString:v24])
          {
          }

          else
          {
            v34 = [v26 activityType];
            v35 = [v34 isEqualToString:v48];

            if (!v35)
            {
              continue;
            }
          }

          v19 = objc_opt_class();
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v22);
  }

  v36 = [v47 configuration];
  v37 = [UISceneConfiguration alloc];
  v38 = [v36 name];
  v39 = [v36 role];
  v17 = [v37 initWithName:v38 sessionRole:v39];

  [v17 setDelegateClass:v19];
  [v17 setSceneClass:{objc_msgSend(v36, "sceneClass")}];
  if (IMOSLoggingEnabled())
  {
    v40 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v55 = v17;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Returning scene configuration: %@", buf, 0xCu);
    }
  }

LABEL_11:

  return v17;
}

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  v4 = [NSUserDefaults standardUserDefaults:a3];
  [v4 registerDefaults:&off_100034C80];

  [CKApplicationState setMainWindowForegroundActive:1];
  return 1;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
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
  v9 = [(SMSApplicationDelegate *)self logHandle];
  v10 = [(SMSApplicationDelegate *)self logHandle];
  v11 = os_signpost_id_make_with_pointer(v10, "IMCoreSetup");

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "IMCoreSetup", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = +[IMDaemonController sharedController];
  [v12 blockUntilConnected];

  v13 = [(SMSApplicationDelegate *)self logHandle];
  v14 = [(SMSApplicationDelegate *)self logHandle];
  v15 = os_signpost_id_make_with_pointer(v14, "IMCoreSetup");

  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v15, "IMCoreSetup", " enableTelemetry=YES ", buf, 2u);
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

- (void)applicationSignificantTimeChange:(id)a3
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 invalidateTranscriptDrawerWidth];
}

- (void)session:(id)a3 bag:(id)a4 didLoadWithError:(id)a5
{
  if (!a5)
  {
    v6 = [NSUserDefaults standardUserDefaults:a3];
    [v6 setBool:1 forKey:@"kHasSetupHashtagImages"];
  }
}

- (void)_messageReceived:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:IMChatValueKey];

  v8 = [v7 guid];
  if ([v7 isRead])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v8;
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
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Not playing message receive sound for message that is from me: %@", buf, 0xCu);
      }

      goto LABEL_15;
    }
  }

  else if ([v5 isMuted])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v5 guid];
        *buf = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Not playing message receive sound for chat that is muted. MessageGuid: %@ ChatGuid: %@", buf, 0x16u);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v11 = [v7 sender];
    if ([(SMSApplicationDelegate *)self isFromFilteredSender:v5 fromSender:v11])
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [v11 ID];
          *buf = 138412546;
          v20 = v8;
          v21 = 2112;
          v22 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Not playing message receive sound for message that is from a filtered sender. MessageGuid: %@ Sender: %@", buf, 0x16u);
        }
      }
    }

    else if (+[NSThread isMainThread])
    {
      [(SMSApplicationDelegate *)self _playMessageReceivedForMessage:v7 inChat:v5];
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001A2D4;
      block[3] = &unk_1000309E8;
      block[4] = self;
      v17 = v7;
      v18 = v5;
      dispatch_async(&_dispatch_main_q, block);
    }

    v14 = +[CKUIBehavior sharedBehaviors];
    v15 = [v14 resetsIdleTimer];

    if (v15)
    {
      [(SMSApplicationDelegate *)self _resetIdleTimer];
    }
  }
}

- (void)_messageSent:(id)a3
{
  v3 = a3;
  v4 = [v3 object];
  if (([v4 isMuted] & 1) == 0)
  {
    v5 = [v3 userInfo];
    v6 = [v5 objectForKeyedSubscript:IMChatRegistryMessageSendIsReplicatingKey];
    v7 = [v6 BOOLValue];

    if ((v7 & 1) == 0)
    {
      v8 = [v3 userInfo];
      v9 = [v8 objectForKeyedSubscript:IMChatRegistryMessageSentMessageKey];

      v10 = v9;
      im_main_thread();
    }
  }
}

- (void)_messageSendFailed:(id)a3
{
  v4 = [a3 userInfo];
  v30 = [v4 objectForKey:IMChatValueKey];

  v5 = [v30 error];
  v6 = [v5 code];

  v7 = v30;
  if (v6)
  {
    v8 = [v30 sender];
    v9 = [v8 service];

    v10 = +[IMMobileNetworkManager sharedInstance];
    v11 = [v10 isAirplaneModeEnabled];
    v12 = [v10 isWiFiEnabled];
    if (v11)
    {
      v13 = v12;
      if (([v9 __ck_isCarrierBased] & 1) != 0 || (v13 & 1) == 0 && objc_msgSend(v9, "__ck_isiMessage"))
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
        v25 = [(SMSApplicationDelegate *)self sceneController];
        v26 = [v25 messagesSceneDelegate];
        v27 = [v26 window];

        v28 = [v27 rootViewController];
        [v18 presentFromViewController:v28 animated:1 completion:0];
        +[CKStarkManager isCarPlayConnected];
      }
    }

    v7 = v30;
  }
}

- (void)_playMessageReceivedForMessage:(id)a3 inChat:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!+[NSThread isMainThread])
  {
    sub_10001D614(a2, self);
  }

  v9 = [v7 guid];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Message %@ received. Determining if we should play in-app message received sound", buf, 0xCu);
    }
  }

  v11 = [(SMSApplicationDelegate *)self soundHelper];
  [v11 stopPlayingAlert];
  v12 = +[UIApplication sharedApplication];
  v13 = [v12 isSuspended];

  v14 = +[CKApplicationState isApplicationActive];
  if (CKIsRunningInMacCatalyst())
  {
    v15 = v14;
  }

  else
  {
    v15 = (v13 ^ 1);
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v48 = v15;
      v49 = 2048;
      v50 = v13;
      v51 = 2048;
      v52 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "For receive sound playblack, Messages isActive: %ld. (isAppSuspended: %ld, isAppStateActive: %ld)", buf, 0x20u);
    }
  }

  if (v15)
  {
    v17 = [v8 persistentID];
    v18 = [v8 personCentricID];
    v19 = CKSuppressionContextsForIdentifiers();
    v20 = [(SMSApplicationDelegate *)self sceneController];
    v21 = [v20 alertSuppressionContextsFromForegroundActiveScenes];

    if (![(SMSApplicationDelegate *)self isBulletinSuppressed:v21 messageContexts:v19])
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
        v48 = v9;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "System notification is not suppressed for %@, letting notifications play sound", buf, 0xCu);
      }

LABEL_25:

      goto LABEL_75;
    }

    v22 = [v11 allowedByScreenTimeToPlayReceiveSoundForChat:v8];
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
        v48 = v9;
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
          v48 = v9;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Not playing sound for message: %@", buf, 0xCu);
        }

        goto LABEL_25;
      }

      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v48 = v9;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Message %@ will not play sound due to sound being suppressed for that message guid", buf, 0xCu);
      }

LABEL_21:

      goto LABEL_61;
    }

    v46 = +[IMFocusStateManager sharedManager];
    if (![v46 shouldFilterConversationsByFocus])
    {
LABEL_37:

      v31 = [v7 __ck_isAcknowledgmentMessage];
      if ([v21 containsObject:v17])
      {
        if ((v31 & 1) == 0)
        {
LABEL_51:
          v33 = 1;
          goto LABEL_70;
        }
      }

      else
      {
        v32 = [v21 containsObject:v18];
        v33 = v32;
        if ((v31 & 1) == 0)
        {
LABEL_70:
          if (IMOSLoggingEnabled())
          {
            v42 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v48 = v9;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Playing standard incoming message sound for message: %@", buf, 0xCu);
            }
          }

          [v11 playIncomingMessageSoundAndHapticForMessage:v7 messageIsForCurrentTranscript:v33];
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
              v48 = v9;
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
          v48 = v9;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Playing tapback message sound for message: %@", buf, 0xCu);
        }
      }

      if ([v11 playTapbackReceivedSoundForMessageInCurrentTranscript:v7])
      {
        goto LABEL_75;
      }

      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v48 = v9;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Message %@ is a received tapback, but did not generate a tapback sound. Attempting fall back to standard incoming message sound.", buf, 0xCu);
        }
      }

      goto LABEL_51;
    }

    v26 = [v46 chatMatchesActiveFocusMode:v8];
    v27 = [v46 senderMatchesActiveFocusModeForMessage:v7];
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
            v30 = [v8 guid];
            *buf = 138412546;
            v48 = v9;
            v49 = 2112;
            v50 = v30;
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
          v38 = [v7 sender];
          v45 = [v38 ID];
          v39 = [v8 guid];
          v44 = v38;
          *buf = 138412802;
          v48 = v9;
          v49 = 2112;
          v50 = v45;
          v51 = 2112;
          v52 = v39;
          v40 = v39;
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
        v37 = [v8 guid];
        *buf = 138412546;
        v48 = v9;
        v49 = 2112;
        v50 = v37;
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
      v48 = v9;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "App is not active, letting Notifications play sound for %@", buf, 0xCu);
    }
  }

LABEL_80:
}

- (BOOL)isBulletinSuppressed:(id)a3 messageContexts:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SMSApplicationDelegate *)self shouldGetBulletinSuppressedStateFromHelper])
  {
    v8 = [(SMSApplicationDelegate *)self soundHelper];
    LODWORD(self) = [v8 bulletinSuppressed];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Forced notification suppression state is %ld. (This is a unit testing path).", &v12, 0xCu);
      }
    }
  }

  else
  {
    v10 = [(SMSApplicationDelegate *)self sceneController];
    LOBYTE(self) = [v10 shouldSuppressNotificationForMessageWithRelevantContext:v7 withAlertSupressionContextForScenes:v6];
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

- (BOOL)isFromFilteredSender:(id)a3 fromSender:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 supportsFilteringExtensions];
  v7 = [v5 lastFinishedMessageItem];
  v8 = [v7 service];
  v9 = [IMService serviceWithName:v8];

  [v9 supportsCapability:IMServiceCapabilitySpamFilteringExtensions];
  if (([v5 isCategorized] & 1) == 0)
  {
    v10 = [v5 valueForChatProperty:kWasDetectedAsiMessageSpam];
    [v10 BOOLValue];
  }

  [v5 isFiltered];
  v11 = [v6 cnContactWithKeys:&__NSArray0__struct];

  [IMContactStore isCNContactAKnownContact:v11];
  v12 = CKMessageIsFromFilteredSenderIsUnderFirstUnlock() != 0;

  return v12;
}

- (id)extractValueFromURL:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSMutableDictionary dictionary];
  v8 = [v6 resourceSpecifier];

  if ([v8 hasPrefix:@"//"])
  {
    v9 = [v8 substringFromIndex:2];

    v8 = v9;
  }

  v10 = [NSString stringWithFormat:@"messages://%@", v8];
  v11 = [NSURL URLWithString:v10];

  v12 = [v11 absoluteString];
  v13 = ExtractURLQueries();

  v14 = [v7 objectForKey:v5];

  return v14;
}

+ (id)addMessagesFileProviderDomain:(id *)a3
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
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&qword_10003A1C8, v7);
  if (a3)
  {
LABEL_3:
    *a3 = v15[5];
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

- (id)_sceneIDForChat:(id)a3
{
  v32 = a3;
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
        v27 = [v32 chatIdentifier];
        *buf = 138412290;
        v40 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "SMSApplication | Cant find sceneID for chatID: %@", buf, 0xCu);
      }
    }

    v12 = 0;
    v23 = 0;
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
    v9 = [v8 delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_15;
    }

    v11 = [v8 delegate];
    if ([v11 type])
    {
      v12 = v6;
    }

    else
    {
      v13 = [v8 session];
      v12 = [v13 persistentIdentifier];

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = v31;
          v40 = v12;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Main window sceneID: %@", buf, 0xCu);
        }
      }
    }

    v15 = [v11 conversation];
    v16 = [v15 chat];
    v17 = [v16 chatIdentifier];
    v18 = [v32 chatIdentifier];
    v19 = [v17 isEqualToString:v18];

    if (v19)
    {
      break;
    }

    v6 = v12;
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
          v29 = [v32 chatIdentifier];
          *buf = 138412546;
          v40 = v29;
          v41 = 2112;
          v42 = v6;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "No scene associated with chat %@, using main window sceneID: %@", buf, 0x16u);
        }
      }

      v12 = v6;
      v23 = v12;
      goto LABEL_40;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v11 type];
      *buf = 134217984;
      v40 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "sceneDelegate type: %ld", buf, 0xCu);
    }
  }

  v22 = [v8 session];
  v23 = [v22 persistentIdentifier];

  if (!v23)
  {
    v6 = v12;
    if (!v12)
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
      v25 = [v32 chatIdentifier];
      *buf = 138412546;
      v40 = v23;
      v41 = 2112;
      v42 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "found sceneID: %@ for chatID: %@", buf, 0x16u);
    }
  }

LABEL_40:

  return v23;
}

@end