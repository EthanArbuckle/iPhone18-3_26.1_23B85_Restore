@interface IntentHandler
- (id)_resolveApplication:(id)a3;
- (id)_resolveCaptionsToggle:(int64_t)a3;
- (id)_resolveDevice:(id)a3;
- (id)_resolveMediaCommand:(int64_t)a3;
- (id)_resolveReduceLoudSoundsToggle:(id)a3;
- (id)_resolveSkipCommand:(int64_t)a3;
- (id)_resolveSkipDuration:(id)a3;
- (id)_resolveSystemAppearanceToggle:(int64_t)a3;
- (id)_resolveUserAccount:(id)a3;
- (id)defaultApplicationForLaunchApplication:(id)a3;
- (id)handlerForIntent:(id)a3;
- (void)confirmLaunchTVApp:(id)a3 completion:(id)a4;
- (void)handleLaunchApplication:(id)a3 completion:(id)a4;
- (void)handleLaunchRemote:(id)a3 completion:(id)a4;
- (void)handleLaunchScreenSaver:(id)a3 completion:(id)a4;
- (void)handleLaunchTVApp:(id)a3 completion:(id)a4;
- (void)handlePauseContent:(id)a3 completion:(id)a4;
- (void)handleReduceLoudSounds:(id)a3 completion:(id)a4;
- (void)handleSkipContent:(id)a3 completion:(id)a4;
- (void)handleSleepAppleTV:(id)a3 completion:(id)a4;
- (void)handleSwitchUserAccount:(id)a3 completion:(id)a4;
- (void)handleToggleCaptions:(id)a3 completion:(id)a4;
- (void)handleToggleSystemAppearance:(id)a3 completion:(id)a4;
- (void)handleWakeAppleTV:(id)a3 completion:(id)a4;
- (void)provideAccountOptionsCollectionForSwitchUserAccount:(id)a3 withCompletion:(id)a4;
- (void)provideApplicationOptionsCollectionForLaunchApplication:(id)a3 withCompletion:(id)a4;
- (void)provideDeviceOptionsCollectionForLaunchApplication:(id)a3 withCompletion:(id)a4;
- (void)provideDeviceOptionsCollectionForLaunchRemote:(id)a3 withCompletion:(id)a4;
- (void)provideDeviceOptionsCollectionForLaunchScreenSaver:(id)a3 withCompletion:(id)a4;
- (void)provideDeviceOptionsCollectionForPauseContent:(id)a3 withCompletion:(id)a4;
- (void)provideDeviceOptionsCollectionForReduceLoudSounds:(id)a3 withCompletion:(id)a4;
- (void)provideDeviceOptionsCollectionForSkipContent:(id)a3 withCompletion:(id)a4;
- (void)provideDeviceOptionsCollectionForSleepAppleTV:(id)a3 withCompletion:(id)a4;
- (void)provideDeviceOptionsCollectionForSwitchUserAccount:(id)a3 withCompletion:(id)a4;
- (void)provideDeviceOptionsCollectionForToggleCaptions:(id)a3 withCompletion:(id)a4;
- (void)provideDeviceOptionsCollectionForToggleSystemAppearance:(id)a3 withCompletion:(id)a4;
- (void)provideDeviceOptionsCollectionForWakeAppleTV:(id)a3 withCompletion:(id)a4;
- (void)resolveAccountForSwitchUserAccount:(id)a3 withCompletion:(id)a4;
- (void)resolveAppearanceToggleForToggleSystemAppearance:(id)a3 withCompletion:(id)a4;
- (void)resolveApplicationForLaunchApplication:(id)a3 withCompletion:(id)a4;
- (void)resolveDeviceForLaunchApplication:(id)a3 withCompletion:(id)a4;
- (void)resolveDeviceForLaunchRemote:(id)a3 withCompletion:(id)a4;
- (void)resolveDeviceForLaunchScreenSaver:(id)a3 withCompletion:(id)a4;
- (void)resolveDeviceForPauseContent:(id)a3 withCompletion:(id)a4;
- (void)resolveDeviceForReduceLoudSounds:(id)a3 withCompletion:(id)a4;
- (void)resolveDeviceForSkipContent:(id)a3 withCompletion:(id)a4;
- (void)resolveDeviceForSleepAppleTV:(id)a3 withCompletion:(id)a4;
- (void)resolveDeviceForSwitchUserAccount:(id)a3 withCompletion:(id)a4;
- (void)resolveDeviceForToggleCaptions:(id)a3 withCompletion:(id)a4;
- (void)resolveDeviceForToggleSystemAppearance:(id)a3 withCompletion:(id)a4;
- (void)resolveDeviceForWakeAppleTV:(id)a3 withCompletion:(id)a4;
- (void)resolveMediaCommandForPauseContent:(id)a3 withCompletion:(id)a4;
- (void)resolveSkipCommandForSkipContent:(id)a3 withCompletion:(id)a4;
- (void)resolveSkipDurationForSkipContent:(id)a3 withCompletion:(id)a4;
- (void)resolveToggleForReduceLoudSounds:(id)a3 withCompletion:(id)a4;
- (void)resolveToggleForToggleCaptions:(id)a3 withCompletion:(id)a4;
@end

@implementation IntentHandler

- (id)handlerForIntent:(id)a3
{
  v4 = a3;
  v5 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[IntentHandler handlerForIntent:]";
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v7, 0x16u);
  }

  return self;
}

- (void)handleWakeAppleTV:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IntentHandler handleWakeAppleTV:completion:]";
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceManager sharedInstance];
  v9 = [v5 device];
  v10 = [v9 identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __46__IntentHandler_handleWakeAppleTV_completion___block_invoke;
  v13[3] = &unk_100010378;
  v14 = v5;
  v15 = v6;
  v11 = v6;
  v12 = v5;
  [v8 resolveDeviceWithIdentifier:v10 handler:v13];
}

void __46__IntentHandler_handleWakeAppleTV_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _TVRIntentExtensionLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v17 = 138543618;
      v18 = v9;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", &v17, 0x16u);
    }

    v10 = [[TVRCButton alloc] _initWithButtonType:21];
    v11 = [TVRCButtonEvent buttonEventForButton:v10 eventType:2];
    [v5 sendButtonEvent:v11];

    v12 = [[WakeAppleTVIntentResponse alloc] initWithCode:4 userActivity:0];
    v13 = +[TVRCAnalytics sharedInstance];
    [v13 logShortcutActionRunWithType:@"Wake_AppleTV"];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1(a1);
    }

    v12 = [[WakeAppleTVIntentResponse alloc] initWithCode:5 userActivity:0];
  }

  v14 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v17 = 138543618;
    v18 = v15;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", &v17, 0x16u);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v12);
  }
}

- (void)provideDeviceOptionsCollectionForWakeAppleTV:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForWakeAppleTV:withCompletion:]";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:v6];
}

- (void)resolveDeviceForWakeAppleTV:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v9 = [a3 device];
  v8 = [(IntentHandler *)self _resolveDevice:v9];
  (*(a4 + 2))(v7, v8);
}

- (void)handleSleepAppleTV:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IntentHandler handleSleepAppleTV:completion:]";
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceManager sharedInstance];
  v9 = [v5 device];
  v10 = [v9 identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __47__IntentHandler_handleSleepAppleTV_completion___block_invoke;
  v13[3] = &unk_100010378;
  v14 = v5;
  v15 = v6;
  v11 = v6;
  v12 = v5;
  [v8 resolveDeviceWithIdentifier:v10 handler:v13];
}

void __47__IntentHandler_handleSleepAppleTV_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _TVRIntentExtensionLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v17 = 138543618;
      v18 = v9;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", &v17, 0x16u);
    }

    v10 = [[TVRCButton alloc] _initWithButtonType:22];
    v11 = [TVRCButtonEvent buttonEventForButton:v10 eventType:2];
    [v5 sendButtonEvent:v11];

    v12 = [[SleepAppleTVIntentResponse alloc] initWithCode:4 userActivity:0];
    v13 = +[TVRCAnalytics sharedInstance];
    [v13 logShortcutActionRunWithType:@"Sleep_AppleTV"];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1(a1);
    }

    v12 = [[SleepAppleTVIntentResponse alloc] initWithCode:5 userActivity:0];
  }

  v14 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v17 = 138543618;
    v18 = v15;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", &v17, 0x16u);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v12);
  }
}

- (void)provideDeviceOptionsCollectionForSleepAppleTV:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForSleepAppleTV:withCompletion:]";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:v6];
}

- (void)resolveDeviceForSleepAppleTV:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v9 = [a3 device];
  v8 = [(IntentHandler *)self _resolveDevice:v9];
  (*(a4 + 2))(v7, v8);
}

- (void)handleLaunchRemote:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "[IntentHandler handleLaunchRemote:completion:]";
    v27 = 2114;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  v8 = TVRViewServiceDeviceIdentifierTypeNone;
  v9 = [v5 device];
  v10 = [v9 identifier];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = [v5 device];
  v12 = [v11 identifier];
  v13 = [v12 length];

  if (v13)
  {
    v9 = [v5 device];
    v10 = [v9 identifier];
    v8 = 1;
LABEL_6:

    goto LABEL_8;
  }

  v10 = 0;
LABEL_8:
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = __47__IntentHandler_handleLaunchRemote_completion___block_invoke;
  v22 = &unk_1000103A0;
  v14 = v10;
  v23 = v14;
  v24 = v8;
  dispatch_async(&_dispatch_main_q, &v19);
  v15 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Lauching the TVRemote with deviceIdentifier=%{public}@", buf, 0xCu);
  }

  v16 = [TVRCAnalytics sharedInstance:v19];
  [v16 logShortcutActionRunWithType:@"LaunchRemote_AppleTV"];

  if (v6)
  {
    v17 = [[LaunchRemoteIntentResponse alloc] initWithCode:4 userActivity:0];
    v18 = _TVRIntentExtensionLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = v5;
      v27 = 2114;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", buf, 0x16u);
    }

    v6[2](v6, v17);
  }
}

void __47__IntentHandler_handleLaunchRemote_completion___block_invoke(uint64_t a1)
{
  v2 = [[TVRViewServiceConfigContext alloc] initWithDeviceIdentifier:*(a1 + 32) identifierType:*(a1 + 40) deviceType:1 launchContext:4 launchMethod:1];
  v1 = +[TVRViewServiceManager sharedInstance];
  [v1 presentWithContext:v2];
}

- (void)provideDeviceOptionsCollectionForLaunchRemote:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForLaunchRemote:withCompletion:]";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:v6];
}

- (void)resolveDeviceForLaunchRemote:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v9 = [a3 device];
  v8 = [(IntentHandler *)self _resolveDevice:v9];
  (*(a4 + 2))(v7, v8);
}

- (void)handlePauseContent:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IntentHandler handlePauseContent:completion:]";
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  v8 = [v5 device];
  v9 = +[TVRIntentExtensionDeviceManager sharedInstance];
  v10 = [v8 identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __47__IntentHandler_handlePauseContent_completion___block_invoke;
  v13[3] = &unk_100010378;
  v14 = v5;
  v15 = v6;
  v11 = v6;
  v12 = v5;
  [v9 resolveDeviceWithIdentifier:v10 handler:v13];
}

void __47__IntentHandler_handlePauseContent_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mediaCommand];
  if (!v3 || (v5 = v4) == 0)
  {
    v13 = [PauseContentIntentResponse alloc];
    v14 = 5;
    goto LABEL_15;
  }

  v6 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v22 = 138543618;
    v23 = v7;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", &v22, 0x16u);
  }

  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v8 = [TVRCButton alloc];
    if (v5 == 3)
    {
      v9 = 204;
    }

    else
    {
      v9 = 205;
    }

    v10 = [v8 _initWithButtonType:v9];
    v11 = v10;
    v12 = 0;
    goto LABEL_13;
  }

  if (v5 == 1)
  {
    v10 = [[TVRCButton alloc] _initWithButtonType:5];
    v15 = [TVRCButtonEvent buttonEventForButton:v10 eventType:1];
    [v3 sendButtonEvent:v15];

    v11 = v10;
    v12 = 2;
LABEL_13:
    v16 = [TVRCButtonEvent buttonEventForButton:v11 eventType:v12];
    [v3 sendButtonEvent:v16];
  }

  v17 = +[TVRCAnalytics sharedInstance];
  [v17 logShortcutActionRunWithType:@"PlayPause_AppleTV"];

  v13 = [PauseContentIntentResponse alloc];
  v14 = 4;
LABEL_15:
  v18 = [v13 initWithCode:v14 userActivity:0];
  v19 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    v22 = 138543618;
    v23 = v20;
    v24 = 2114;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", &v22, 0x16u);
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    (*(v21 + 16))(v21, v18);
  }
}

- (void)provideDeviceOptionsCollectionForPauseContent:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForPauseContent:withCompletion:]";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:v6];
}

- (void)resolveDeviceForPauseContent:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v9 = [a3 device];
  v8 = [(IntentHandler *)self _resolveDevice:v9];
  (*(a4 + 2))(v7, v8);
}

- (void)resolveMediaCommandForPauseContent:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v8 = -[IntentHandler _resolveMediaCommand:](self, "_resolveMediaCommand:", [a3 mediaCommand]);
  (*(a4 + 2))(v7, v8);
}

- (void)handleLaunchTVApp:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IntentHandler handleLaunchTVApp:completion:]";
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  v8 = [v5 device];
  v9 = +[TVRIntentExtensionDeviceManager sharedInstance];
  v10 = [v8 identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __46__IntentHandler_handleLaunchTVApp_completion___block_invoke;
  v13[3] = &unk_100010378;
  v14 = v5;
  v15 = v6;
  v11 = v6;
  v12 = v5;
  [v9 resolveDeviceWithIdentifier:v10 handler:v13];
}

void __46__IntentHandler_handleLaunchTVApp_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _TVRIntentExtensionLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v24 = v9;
      v25 = 2114;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", buf, 0x16u);
    }

    v10 = [[TVRCButton alloc] _initWithButtonType:21];
    v11 = [TVRCButtonEvent buttonEventForButton:v10 eventType:2];
    [v5 sendButtonEvent:v11];

    v12 = [TVRCButton alloc];
    v21 = TVRCButtonApplicationBundleIDKey;
    v22 = @"com.apple.TVWatchList";
    v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v14 = [v12 _initWithButtonType:20 hasTapAction:1 properties:v13];

    v15 = [TVRCButtonEvent buttonEventForButton:v14 eventType:0];
    [v5 sendButtonEvent:v15];

    v16 = [[LaunchTVAppIntentResponse alloc] initWithCode:4 userActivity:0];
    v17 = +[TVRCAnalytics sharedInstance];
    [v17 logShortcutActionRunWithType:@"LaunchApp_AppleTV"];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1(a1);
    }

    v16 = [[LaunchTVAppIntentResponse alloc] initWithCode:5 userActivity:0];
  }

  v18 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    *buf = 138543618;
    v24 = v19;
    v25 = 2114;
    v26 = v16;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", buf, 0x16u);
  }

  v20 = *(a1 + 40);
  if (v20)
  {
    (*(v20 + 16))(v20, v16);
  }
}

- (void)confirmLaunchTVApp:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[IntentHandler confirmLaunchTVApp:completion:]";
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v15, 0x16u);
  }

  v8 = [v5 device];
  v9 = v8;
  if (v8 && ([v8 identifier], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = _TVRIntentExtensionLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = v5;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", &v15, 0x16u);
    }

    v12 = 1;
  }

  else
  {
    v11 = _TVRIntentExtensionLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [IntentHandler confirmLaunchTVApp:v9 completion:v11];
    }

    v12 = 5;
  }

  v13 = [[LaunchTVAppIntentResponse alloc] initWithCode:v12 userActivity:0];
  v14 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = v5;
    v17 = 2114;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", &v15, 0x16u);
  }

  if (v6)
  {
    v6[2](v6, v13);
  }
}

- (void)handleLaunchApplication:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IntentHandler handleLaunchApplication:completion:]";
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceManager sharedInstance];
  v9 = [v5 device];
  v10 = [v9 identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __52__IntentHandler_handleLaunchApplication_completion___block_invoke;
  v13[3] = &unk_100010378;
  v14 = v5;
  v15 = v6;
  v11 = v6;
  v12 = v5;
  [v8 resolveDeviceWithIdentifier:v10 handler:v13];
}

void __52__IntentHandler_handleLaunchApplication_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (a1 + 32);
  v8 = [*(a1 + 32) application];
  v9 = [v8 identifier];

  v10 = _TVRIntentExtensionLog();
  v11 = v10;
  if (v5 && v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *v7;
      *buf = 138543618;
      v28 = v12;
      v29 = 2114;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", buf, 0x16u);
    }

    v13 = _TVRIntentExtensionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v28 = "[IntentHandler handleLaunchApplication:completion:]_block_invoke";
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s with bundleID %@", buf, 0x16u);
    }

    v14 = [[TVRCButton alloc] _initWithButtonType:21];
    v15 = [TVRCButtonEvent buttonEventForButton:v14 eventType:2];
    [v5 sendButtonEvent:v15];

    v16 = [TVRCButton alloc];
    v25 = TVRCButtonApplicationBundleIDKey;
    v26 = v9;
    v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v18 = [v16 _initWithButtonType:20 hasTapAction:1 properties:v17];

    v19 = [TVRCButtonEvent buttonEventForButton:v18 eventType:0];
    [v5 sendButtonEvent:v19];

    v20 = [[LaunchApplicationIntentResponse alloc] initWithCode:4 userActivity:0];
    v21 = +[TVRCAnalytics sharedInstance];
    [v21 logShortcutActionRunWithType:@"LaunchApp_AppleTV"];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __52__IntentHandler_handleLaunchApplication_completion___block_invoke_cold_1((a1 + 32));
    }

    v20 = [[LaunchApplicationIntentResponse alloc] initWithCode:5 userActivity:0];
  }

  v22 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *v7;
    *buf = 138543618;
    v28 = v23;
    v29 = 2114;
    v30 = v20;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", buf, 0x16u);
  }

  v24 = *(a1 + 40);
  if (v24)
  {
    (*(v24 + 16))(v24, v20);
  }
}

- (id)defaultApplicationForLaunchApplication:(id)a3
{
  v3 = [[TVRApplication alloc] initWithIdentifier:@"com.apple.TVWatchList" displayString:@"TV"];

  return v3;
}

- (void)provideApplicationOptionsCollectionForLaunchApplication:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "[IntentHandler provideApplicationOptionsCollectionForLaunchApplication:withCompletion:]";
    v30 = 2114;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  v9 = [v6 device];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"TVRI_APPLICATION_FETCH_ERROR" value:&stru_100010700 table:0];
  v12 = [v9 displayString];
  v13 = [NSString stringWithFormat:v11, v12];

  if (v9)
  {
    objc_initWeak(buf, self);
    v14 = +[TVRIntentExtensionDeviceManager sharedInstance];
    v15 = [v9 identifier];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __88__IntentHandler_provideApplicationOptionsCollectionForLaunchApplication_withCompletion___block_invoke;
    v21[3] = &unk_1000103F0;
    objc_copyWeak(&v25, buf);
    v22 = v6;
    v23 = v13;
    v24 = v7;
    [v14 resolveDeviceWithIdentifier:v15 handler:v21];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  else
  {
    v26 = NSLocalizedDescriptionKey;
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"TVRI_APPLICATION_FETCH_ERROR_TV_NOT_FOUND" value:&stru_100010700 table:0];
    v27 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v19 = TVRCMakeError();

    v20 = _TVRIntentExtensionLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [IntentHandler provideApplicationOptionsCollectionForLaunchApplication:withCompletion:];
    }

    (*(v7 + 2))(v7, 0, v19);
  }
}

void __88__IntentHandler_provideApplicationOptionsCollectionForLaunchApplication_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = _TVRIntentExtensionLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        *buf = 138543618;
        v28 = v6;
        v29 = 2114;
        v30 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", buf, 0x16u);
      }

      v7 = [TVRCDeviceEventManager alloc];
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = __88__IntentHandler_provideApplicationOptionsCollectionForLaunchApplication_withCompletion___block_invoke_44;
      v20 = &unk_1000103C8;
      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      v8 = [v7 initWithDevice:v3 responseHandler:&v17];
      [WeakRetained setEventManager:{v8, v17, v18, v19, v20}];

      v9 = [WeakRetained eventManager];
      v10 = TVRCFetchLaunchableApplicationsEvent;
      v11 = *(a1 + 40);
      v25 = NSLocalizedDescriptionKey;
      v26 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [v9 sendEvent:v10 options:v12];

      v13 = v21;
    }

    else
    {
      v14 = *(a1 + 40);
      v23 = NSLocalizedDescriptionKey;
      v24 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v13 = TVRCMakeError();

      v16 = _TVRIntentExtensionLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [IntentHandler provideApplicationOptionsCollectionForLaunchApplication:withCompletion:];
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

void __88__IntentHandler_provideApplicationOptionsCollectionForLaunchApplication_withCompletion___block_invoke_44(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  if (a5)
  {
    v9 = *(a1 + 32);
    v32 = NSLocalizedDescriptionKey;
    v33 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v11 = TVRCMakeError();

    v12 = _TVRIntentExtensionLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __88__IntentHandler_provideApplicationOptionsCollectionForLaunchApplication_withCompletion___block_invoke_44_cold_1();
    }

    (*(*(a1 + 40) + 16))();
LABEL_19:

    goto LABEL_20;
  }

  if ([a2 isEqualToString:TVRCFetchLaunchableApplicationsEvent])
  {
    v11 = objc_alloc_init(NSMutableArray);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = [v8 allKeys];
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = [v8 objectForKey:v18];
          v20 = [[TVRApplication alloc] initWithIdentifier:v18 displayString:v19 pronunciationHint:v19];
          [v11 addObject:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v15);
    }

    if ([v11 count])
    {
      v21 = [NSSortDescriptor sortDescriptorWithKey:@"displayString" ascending:1];
      v30 = v21;
      v22 = [NSArray arrayWithObjects:&v30 count:1];
      [v11 sortUsingDescriptors:v22];

      v23 = *(a1 + 40);
      v24 = [[INObjectCollection alloc] initWithItems:v11];
      (*(v23 + 16))(v23, v24, 0);
    }

    else
    {
      v24 = TVRCMakeError();
      v25 = _TVRIntentExtensionLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [IntentHandler provideApplicationOptionsCollectionForLaunchApplication:withCompletion:];
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v24);
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)provideDeviceOptionsCollectionForLaunchApplication:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForLaunchApplication:withCompletion:]";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:v6];
}

- (void)resolveApplicationForLaunchApplication:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v9 = [a3 application];
  v8 = [(IntentHandler *)self _resolveApplication:v9];
  (*(a4 + 2))(v7, v8);
}

- (void)resolveDeviceForLaunchApplication:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v9 = [a3 device];
  v8 = [(IntentHandler *)self _resolveDevice:v9];
  (*(a4 + 2))(v7, v8);
}

- (void)handleLaunchScreenSaver:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IntentHandler handleLaunchScreenSaver:completion:]";
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  v8 = [v5 device];
  v9 = +[TVRIntentExtensionDeviceManager sharedInstance];
  v10 = [v8 identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __52__IntentHandler_handleLaunchScreenSaver_completion___block_invoke;
  v13[3] = &unk_100010378;
  v14 = v5;
  v15 = v6;
  v11 = v6;
  v12 = v5;
  [v9 resolveDeviceWithIdentifier:v10 handler:v13];
}

void __52__IntentHandler_handleLaunchScreenSaver_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _TVRIntentExtensionLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v16 = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", &v16, 0x16u);
    }

    v10 = [[TVRCButton alloc] _initWithButtonType:19];
    v11 = [TVRCButtonEvent buttonEventForButton:v10 eventType:2];
    [v5 sendButtonEvent:v11];

    v12 = [[LaunchScreenSaverIntentResponse alloc] initWithCode:4 userActivity:0];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1(a1);
    }

    v12 = [[LaunchScreenSaverIntentResponse alloc] initWithCode:5 userActivity:0];
  }

  v13 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v16 = 138543618;
    v17 = v14;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", &v16, 0x16u);
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v12);
  }
}

- (void)provideDeviceOptionsCollectionForLaunchScreenSaver:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForLaunchScreenSaver:withCompletion:]";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:v6];
}

- (void)resolveDeviceForLaunchScreenSaver:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v9 = [a3 device];
  v8 = [(IntentHandler *)self _resolveDevice:v9];
  (*(a4 + 2))(v7, v8);
}

- (void)handleToggleCaptions:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IntentHandler handleToggleCaptions:completion:]";
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceManager sharedInstance];
  v9 = [v5 device];
  v10 = [v9 identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __49__IntentHandler_handleToggleCaptions_completion___block_invoke;
  v13[3] = &unk_100010378;
  v14 = v5;
  v15 = v6;
  v11 = v6;
  v12 = v5;
  [v8 resolveDeviceWithIdentifier:v10 handler:v13];
}

void __49__IntentHandler_handleToggleCaptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _TVRIntentExtensionLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v17 = 138543618;
      v18 = v9;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", &v17, 0x16u);
    }

    if ([*(a1 + 32) toggle] == 1)
    {
      v10 = 17;
    }

    else
    {
      v10 = 18;
    }

    v11 = [[TVRCButton alloc] _initWithButtonType:v10];
    v12 = [TVRCButtonEvent buttonEventForButton:v11 eventType:0];
    [v5 sendButtonEvent:v12];

    v13 = [[ToggleCaptionsIntentResponse alloc] initWithCode:4 userActivity:0];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1(a1);
    }

    v13 = [[ToggleCaptionsIntentResponse alloc] initWithCode:5 userActivity:0];
  }

  v14 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v17 = 138543618;
    v18 = v15;
    v19 = 2114;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", &v17, 0x16u);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v13);
  }
}

- (void)provideDeviceOptionsCollectionForToggleCaptions:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForToggleCaptions:withCompletion:]";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:v6];
}

- (void)resolveToggleForToggleCaptions:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v8 = -[IntentHandler _resolveCaptionsToggle:](self, "_resolveCaptionsToggle:", [a3 toggle]);
  (*(a4 + 2))(v7, v8);
}

- (void)resolveDeviceForToggleCaptions:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v9 = [a3 device];
  v8 = [(IntentHandler *)self _resolveDevice:v9];
  (*(a4 + 2))(v7, v8);
}

- (void)handleSwitchUserAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[IntentHandler handleSwitchUserAccount:completion:]";
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v9 = [v6 account];
  v10 = [v9 identifier];

  v11 = +[TVRIntentExtensionDeviceManager sharedInstance];
  v12 = [v6 device];
  v13 = [v12 identifier];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __52__IntentHandler_handleSwitchUserAccount_completion___block_invoke;
  v17[3] = &unk_100010458;
  v17[4] = self;
  v14 = v10;
  v18 = v14;
  v21 = buf;
  v15 = v6;
  v19 = v15;
  v16 = v7;
  v20 = v16;
  [v11 resolveDeviceWithIdentifier:v13 handler:v17];

  _Block_object_dispose(buf, 8);
}

void __52__IntentHandler_handleSwitchUserAccount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, *(a1 + 32));
  if (v5)
  {
    v7 = objc_loadWeakRetained(&location);
    if (v7)
    {
      v8 = _TVRIntentExtensionLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        *buf = 138543362;
        v28 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending switch account for accountID=%{public}@", buf, 0xCu);
      }

      v10 = [[TVRCDeviceEventManager alloc] initWithDevice:v5 responseHandler:&__block_literal_global];
      [v7 setEventManager:v10];

      v11 = [v7 eventManager];
      v12 = *(a1 + 40);
      v31 = TVRCSwitchAccountID;
      v32 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      [v11 sendEvent:TVRCSwitchUserAccountEvent options:v13];

      v14 = [SwitchUserAccountIntentResponse alloc];
      v15 = 4;
    }

    else
    {
      v18 = _TVRIntentExtensionLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __52__IntentHandler_handleSwitchUserAccount_completion___block_invoke_cold_1(v18);
      }

      v14 = [SwitchUserAccountIntentResponse alloc];
      v15 = 5;
    }

    v19 = [v14 initWithCode:v15 userActivity:0];
    v20 = *(*(a1 + 64) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  else
  {
    v16 = [[SwitchUserAccountIntentResponse alloc] initWithCode:5 userActivity:0];
    v17 = *(*(a1 + 64) + 8);
    v7 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  v22 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 48);
    v24 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 138543618;
    v28 = v23;
    v29 = 2114;
    v30 = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", buf, 0x16u);
  }

  v25 = *(a1 + 56);
  if (v25)
  {
    (*(v25 + 16))(v25, *(*(*(a1 + 64) + 8) + 40));
  }

  objc_destroyWeak(&location);
}

- (void)provideDeviceOptionsCollectionForSwitchUserAccount:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForSwitchUserAccount:withCompletion:]";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:v6];
}

- (void)provideAccountOptionsCollectionForSwitchUserAccount:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[IntentHandler provideAccountOptionsCollectionForSwitchUserAccount:withCompletion:]";
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  v9 = [v6 device];
  if (v9)
  {
    objc_initWeak(buf, self);
    v10 = +[TVRIntentExtensionDeviceManager sharedInstance];
    v11 = [v9 identifier];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __84__IntentHandler_provideAccountOptionsCollectionForSwitchUserAccount_withCompletion___block_invoke;
    v17[3] = &unk_1000104A8;
    objc_copyWeak(&v20, buf);
    v18 = v6;
    v19 = v7;
    [v10 resolveDeviceWithIdentifier:v11 handler:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    v21 = NSLocalizedDescriptionKey;
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"TVRI_INVALID_APPLE_TV" value:&stru_100010700 table:0];
    v22 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = TVRCMakeError();

    v16 = _TVRIntentExtensionLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [IntentHandler provideAccountOptionsCollectionForSwitchUserAccount:withCompletion:];
    }

    (*(v7 + 2))(v7, 0, v15);
  }
}

void __84__IntentHandler_provideAccountOptionsCollectionForSwitchUserAccount_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = _TVRIntentExtensionLog();
    v9 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *buf = 138543618;
        v21 = v10;
        v22 = 2114;
        v23 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", buf, 0x16u);
      }

      v11 = [TVRCDeviceEventManager alloc];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = __84__IntentHandler_provideAccountOptionsCollectionForSwitchUserAccount_withCompletion___block_invoke_60;
      v16[3] = &unk_100010480;
      v17 = v5;
      v19 = *(a1 + 40);
      v18 = v6;
      v12 = [v11 initWithDevice:v17 responseHandler:v16];
      [WeakRetained setEventManager:v12];

      v13 = [WeakRetained eventManager];
      [v13 sendEvent:TVRCFetchUserAccountsEvent options:0];

      v14 = v17;
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1(a1);
      }

      v15 = *(a1 + 40);
      v14 = TVRCMakeError();
      (*(v15 + 16))(v15, 0, v14);
    }
  }
}

void __84__IntentHandler_provideAccountOptionsCollectionForSwitchUserAccount_withCompletion___block_invoke_60(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = TVRCMakeError();
    v11 = _TVRIntentExtensionLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v26 = a1[4];
      *buf = 138543874;
      v35 = v26;
      v36 = 2114;
      v37 = v9;
      v38 = 2114;
      v39 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create event manager with device=%{public}@, eventManagerError=%{public}@, error=%{public}@", buf, 0x20u);
    }

    v12 = a1[5];
    (*(a1[6] + 16))();
LABEL_19:

    goto LABEL_20;
  }

  if ([a2 isEqualToString:TVRCFetchUserAccountsEvent])
  {
    v27 = a1;
    v10 = objc_alloc_init(NSMutableArray);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = [v8 allKeys];
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          v19 = [v8 objectForKey:v18];
          v20 = [[TVRUserAccount alloc] initWithIdentifier:v18 displayString:v19 pronunciationHint:v19];
          [v10 addObject:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v15);
    }

    if ([v10 count])
    {
      v21 = [NSSortDescriptor sortDescriptorWithKey:@"displayString" ascending:1];
      v32 = v21;
      v22 = [NSArray arrayWithObjects:&v32 count:1];
      [v10 sortUsingDescriptors:v22];

      v23 = v27[6];
      v24 = [[INObjectCollection alloc] initWithItems:v10];
      (*(v23 + 16))(v23, v24, 0);
    }

    else
    {
      v24 = TVRCMakeError();
      v25 = _TVRIntentExtensionLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __84__IntentHandler_provideAccountOptionsCollectionForSwitchUserAccount_withCompletion___block_invoke_60_cold_1();
      }

      (*(v27[6] + 16))(v27[6], 0, v24);
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)resolveDeviceForSwitchUserAccount:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v9 = [a3 device];
  v8 = [(IntentHandler *)self _resolveDevice:v9];
  (*(a4 + 2))(v7, v8);
}

- (void)resolveAccountForSwitchUserAccount:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v9 = [a3 account];
  v8 = [(IntentHandler *)self _resolveUserAccount:v9];
  (*(a4 + 2))(v7, v8);
}

- (void)handleSkipContent:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IntentHandler handleSkipContent:completion:]";
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceManager sharedInstance];
  v9 = [v5 device];
  v10 = [v9 identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __46__IntentHandler_handleSkipContent_completion___block_invoke;
  v13[3] = &unk_100010378;
  v14 = v5;
  v15 = v6;
  v11 = v6;
  v12 = v5;
  [v8 resolveDeviceWithIdentifier:v10 handler:v13];
}

void __46__IntentHandler_handleSkipContent_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [[SkipContentIntentResponse alloc] initWithCode:4 userActivity:0];
  v8 = _TVRIntentExtensionLog();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v28 = v10;
      v29 = 2114;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", buf, 0x16u);
    }

    v11 = [*(a1 + 32) skipCommand];
    v12 = [*(a1 + 32) skipDuration];
    v9 = v12;
    if (v11 && v12)
    {
      v13 = [TVRCButton alloc];
      if (v11 == 1)
      {
        v25 = TVRCButtonSkipIntervalKey;
        v26 = v9;
        v14 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v15 = [v13 _initWithButtonType:6 hasTapAction:1 properties:v14];
      }

      else
      {
        [v9 doubleValue];
        v14 = [NSNumber numberWithDouble:-v16];
        v24 = v14;
        v17 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v15 = [v13 _initWithButtonType:7 hasTapAction:1 properties:v17];
      }

      v18 = [TVRCButtonEvent buttonEventForButton:v15 eventType:0];
      [v5 sendButtonEvent:v18];

      v19 = [[SkipContentIntentResponse alloc] initWithCode:4 userActivity:0];
      v7 = v19;
    }

    else
    {
      v15 = _TVRIntentExtensionLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "TVRIntentExtension: Inavlid configuration for SkipContentIntent", buf, 2u);
      }
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1(a1);
  }

  v20 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 32);
    *buf = 138543618;
    v28 = v21;
    v29 = 2114;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", buf, 0x16u);
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    (*(v22 + 16))(v22, v7);
  }
}

- (void)provideDeviceOptionsCollectionForSkipContent:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForSkipContent:withCompletion:]";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:v6];
}

- (void)resolveDeviceForSkipContent:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v9 = [a3 device];
  v8 = [(IntentHandler *)self _resolveDevice:v9];
  (*(a4 + 2))(v7, v8);
}

- (void)resolveSkipCommandForSkipContent:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v8 = -[IntentHandler _resolveSkipCommand:](self, "_resolveSkipCommand:", [a3 skipCommand]);
  (*(a4 + 2))(v7, v8);
}

- (void)resolveSkipDurationForSkipContent:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v9 = [a3 skipDuration];
  v8 = [(IntentHandler *)self _resolveSkipDuration:v9];
  (*(a4 + 2))(v7, v8);
}

- (void)handleReduceLoudSounds:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[IntentHandler handleReduceLoudSounds:completion:]";
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v9 = +[TVRIntentExtensionDeviceManager sharedInstance];
  v10 = [v6 device];
  v11 = [v10 identifier];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __51__IntentHandler_handleReduceLoudSounds_completion___block_invoke;
  v14[3] = &unk_1000104A8;
  objc_copyWeak(&v17, buf);
  v12 = v6;
  v15 = v12;
  v13 = v7;
  v16 = v13;
  [v9 resolveDeviceWithIdentifier:v11 handler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __51__IntentHandler_handleReduceLoudSounds_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [[ReduceLoudSoundsIntentResponse alloc] initWithCode:4 userActivity:0];
  if (v3)
  {
    v6 = _TVRIntentExtensionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v24 = v7;
      v25 = 2114;
      v26 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", buf, 0x16u);
    }

    if (WeakRetained)
    {
      v8 = [[TVRCDeviceEventManager alloc] initWithDevice:v3 responseHandler:&__block_literal_global_70];
      [WeakRetained setEventManager:v8];

      v9 = [*(a1 + 32) toggle];
      v10 = [v9 BOOLValue];
      v11 = @"NO";
      if (v10)
      {
        v11 = @"YES";
      }

      v12 = v11;
      v13 = _TVRIntentExtensionLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sending TVRCToggleReduceLoudSounds with value=%{public}@", buf, 0xCu);
      }

      v14 = [WeakRetained eventManager];
      v15 = TVRCToggleReduceLoudSounds;
      v21 = TVRCReduceLoundSoundsEnabled;
      v22 = v12;
      v16 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      [v14 sendEvent:v15 options:v16];

      v17 = [[ReduceLoudSoundsIntentResponse alloc] initWithCode:4 userActivity:0];
      v5 = v17;
    }
  }

  v18 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    *buf = 138543618;
    v24 = v19;
    v25 = 2114;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", buf, 0x16u);
  }

  v20 = *(a1 + 40);
  if (v20)
  {
    (*(v20 + 16))(v20, v5);
  }
}

- (void)provideDeviceOptionsCollectionForReduceLoudSounds:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForReduceLoudSounds:withCompletion:]";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:v6];
}

- (void)resolveDeviceForReduceLoudSounds:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v9 = [a3 device];
  v8 = [(IntentHandler *)self _resolveDevice:v9];
  (*(a4 + 2))(v7, v8);
}

- (void)resolveToggleForReduceLoudSounds:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v9 = [a3 toggle];
  v8 = [(IntentHandler *)self _resolveReduceLoudSoundsToggle:v9];
  (*(a4 + 2))(v7, v8);
}

- (void)handleToggleSystemAppearance:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[IntentHandler handleToggleSystemAppearance:completion:]";
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v9 = +[TVRIntentExtensionDeviceManager sharedInstance];
  v10 = [v6 device];
  v11 = [v10 identifier];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __57__IntentHandler_handleToggleSystemAppearance_completion___block_invoke;
  v14[3] = &unk_100010510;
  v12 = v6;
  v15 = v12;
  objc_copyWeak(&v17, buf);
  v13 = v7;
  v16 = v13;
  [v9 resolveDeviceWithIdentifier:v11 handler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __57__IntentHandler_handleToggleSystemAppearance_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412802;
    v28 = v8;
    v29 = 2112;
    v30 = v5;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "TVRIntentExtension: Resolved device for intent %@. Device - %@. Error - %@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = [[ToggleSystemAppearanceIntentResponse alloc] initWithCode:4 userActivity:0];
  v11 = _TVRIntentExtensionLog();
  v12 = v11;
  if (!v5)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1(a1);
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    *buf = 138543618;
    v28 = v13;
    v29 = 2114;
    v30 = v5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", buf, 0x16u);
  }

  if (WeakRetained)
  {
    v14 = [[TVRCDeviceEventManager alloc] initWithDevice:v5 responseHandler:&__block_literal_global_80];
    [WeakRetained setEventManager:v14];

    v15 = [*(a1 + 32) appearanceToggle];
    v16 = @"NO";
    if (v15 == 1)
    {
      v16 = @"YES";
    }

    v17 = v16;
    v18 = [WeakRetained eventManager];
    v19 = TVRCToggleSystemAppearance;
    v25 = TVRCSystemAppearanceLight;
    v26 = v17;
    v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [v18 sendEvent:v19 options:v20];

    v21 = [ToggleSystemAppearanceIntentResponse alloc];
    v12 = v10;
    v10 = [v21 initWithCode:4 userActivity:0];
LABEL_12:
  }

  v22 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 32);
    *buf = 138543618;
    v28 = v23;
    v29 = 2114;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", buf, 0x16u);
  }

  v24 = *(a1 + 40);
  if (v24)
  {
    (*(v24 + 16))(v24, v10);
  }
}

- (void)provideDeviceOptionsCollectionForToggleSystemAppearance:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _TVRIntentExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForToggleSystemAppearance:withCompletion:]";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:v6];
}

- (void)resolveDeviceForToggleSystemAppearance:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v9 = [a3 device];
  v8 = [(IntentHandler *)self _resolveDevice:v9];
  (*(a4 + 2))(v7, v8);
}

- (void)resolveAppearanceToggleForToggleSystemAppearance:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v8 = -[IntentHandler _resolveSystemAppearanceToggle:](self, "_resolveSystemAppearanceToggle:", [a3 appearanceToggle]);
  (*(a4 + 2))(v7, v8);
}

- (id)_resolveDevice:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 identifier];

    if (v5)
    {
      [TVRDeviceResolutionResult successWithResolvedDevice:v4];
    }

    else
    {
      [TVRDeviceResolutionResult confirmationRequiredWithDeviceToConfirm:v4];
    }
    v6 = ;
  }

  else
  {
    v6 = +[TVRDeviceResolutionResult notRequired];
  }

  v7 = v6;

  return v7;
}

- (id)_resolveApplication:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 identifier];

    if (v5)
    {
      [TVRApplicationResolutionResult successWithResolvedApplication:v4];
    }

    else
    {
      [TVRApplicationResolutionResult confirmationRequiredWithApplicationToConfirm:v4];
    }
    v6 = ;
  }

  else
  {
    v6 = +[TVRApplicationResolutionResult notRequired];
  }

  v7 = v6;

  return v7;
}

- (id)_resolveMediaCommand:(int64_t)a3
{
  if (a3)
  {
    [TVRMediaCommandResolutionResult successWithResolvedMediaCommand:?];
  }

  else
  {
    [TVRMediaCommandResolutionResult confirmationRequiredWithMediaCommandToConfirm:?];
  }
  v3 = ;

  return v3;
}

- (id)_resolveCaptionsToggle:(int64_t)a3
{
  if (a3 <= 1)
  {
    a3 = 1;
  }

  v3 = [TVRCaptionsToggleResolutionResult successWithResolvedCaptionsToggle:a3];

  return v3;
}

- (id)_resolveUserAccount:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 identifier];

    if (v5)
    {
      [TVRUserAccountResolutionResult successWithResolvedUserAccount:v4];
    }

    else
    {
      [TVRUserAccountResolutionResult confirmationRequiredWithUserAccountToConfirm:v4];
    }
    v6 = ;
  }

  else
  {
    v6 = +[TVRUserAccountResolutionResult notRequired];
  }

  v7 = v6;

  return v7;
}

- (id)_resolveSkipCommand:(int64_t)a3
{
  if (a3)
  {
    [TVRSkipCommandResolutionResult successWithResolvedSkipCommand:?];
  }

  else
  {
    [TVRSkipCommandResolutionResult confirmationRequiredWithSkipCommandToConfirm:?];
  }
  v3 = ;

  return v3;
}

- (id)_resolveSkipDuration:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 doubleValue], v5 >= 0.0))
  {
    [v4 doubleValue];
    v6 = [SkipContentSkipDurationResolutionResult successWithResolvedValue:?];
  }

  else
  {
    v6 = [SkipContentSkipDurationResolutionResult confirmationRequiredWithValueToConfirm:v4];
  }

  v7 = v6;

  return v7;
}

- (id)_resolveReduceLoudSoundsToggle:(id)a3
{
  if (a3)
  {
    +[INBooleanResolutionResult successWithResolvedValue:](INBooleanResolutionResult, "successWithResolvedValue:", [a3 BOOLValue]);
  }

  else
  {
    [INBooleanResolutionResult confirmationRequiredWithValueToConfirm:?];
  }
  v3 = ;

  return v3;
}

- (id)_resolveSystemAppearanceToggle:(int64_t)a3
{
  if (a3)
  {
    [TVRSystemAppearanceToggleResolutionResult successWithResolvedSystemAppearanceToggle:?];
  }

  else
  {
    [TVRSystemAppearanceToggleResolutionResult confirmationRequiredWithSystemAppearanceToggleToConfirm:?];
  }
  v3 = ;

  return v3;
}

void __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&_mh_execute_header, v1, v2, "Error resolving device for intent=%{public}@, error=%{public}@");
}

- (void)confirmLaunchTVApp:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[IntentHandler confirmLaunchTVApp:completion:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s called with invalid device=%{public}@", &v2, 0x16u);
}

void __52__IntentHandler_handleLaunchApplication_completion___block_invoke_cold_1(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&_mh_execute_header, v2, v3, "Error resolving device for intent=%{public}@, error=%{public}@");
}

@end