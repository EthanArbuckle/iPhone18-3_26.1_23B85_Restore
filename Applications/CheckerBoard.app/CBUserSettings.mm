@interface CBUserSettings
+ (id)sharedInstance;
- (BOOL)_isPermittedToUpdateASTDefaults;
- (BOOL)shouldShowInfoPane;
- (CBUserSettings)init;
- (void)_attemptConnectingToWifi;
- (void)_disableContinousPath;
- (void)_setAutoDiagsFromNVRamWithNavController:(id)controller;
- (void)_setDesiredUserDefaults;
- (void)_setLanguageFromNVRam;
- (void)_setOverrideRemoteSetupPin;
- (void)_setSkipDiagsTermsAndConditionsFromNVRam;
- (void)_setWiFiFromNVRam;
- (void)_updateASTDefaultsFromNVRam;
- (void)applyPostUISettingsFromNvramWithNavigationController:(id)controller;
- (void)applyPreUISettingsFromNvram;
- (void)assignProxyServer:(id)server;
- (void)checkInWiFiSettings:(BOOL)settings;
- (void)dealloc;
@end

@implementation CBUserSettings

+ (id)sharedInstance
{
  if (qword_1000922C8 != -1)
  {
    sub_100044FAC();
  }

  v3 = qword_1000922C0;

  return v3;
}

- (CBUserSettings)init
{
  v12.receiver = self;
  v12.super_class = CBUserSettings;
  v2 = [(CBUserSettings *)&v12 init];
  if (v2)
  {
    v3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating user settings keeper…", v11, 2u);
    }

    *&v2->_checkedInWiFiSettings = 0;
    proxyServer = v2->_proxyServer;
    v2->_proxyServer = 0;

    wifiReconnectTimer = v2->_wifiReconnectTimer;
    v2->_wifiReconnectTimer = 0;
    v2->_wifiJoinAttemptCount = 0;

    wifiSSIDFromNvram = v2->_wifiSSIDFromNvram;
    v2->_wifiSSIDFromNvram = 0;

    wifiPasswordFromNvram = v2->_wifiPasswordFromNvram;
    v2->_wifiPasswordFromNvram = 0;

    v8 = +[CBRemoteSetupManager sharedInstance];
    remoteSetupManager = v2->_remoteSetupManager;
    v2->_remoteSetupManager = v8;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  wifiReconnectTimer = [(CBUserSettings *)self wifiReconnectTimer];

  if (wifiReconnectTimer)
  {
    wifiReconnectTimer2 = [(CBUserSettings *)self wifiReconnectTimer];
    [wifiReconnectTimer2 invalidate];

    [(CBUserSettings *)self setWifiReconnectTimer:0];
  }

  v6.receiver = self;
  v6.super_class = CBUserSettings;
  [(CBUserSettings *)&v6 dealloc];
}

- (void)checkInWiFiSettings:(BOOL)settings
{
  settingsCopy = settings;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking in user's Wi-Fi settings…", v8, 2u);
  }

  [(CBUserSettings *)self setCheckedInWiFiSettings:1];
  [(CBUserSettings *)self setWifiPowerStateOn:settingsCopy];
  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    wifiPowerStateOn = [(CBUserSettings *)self wifiPowerStateOn];
    v8[0] = 67109120;
    v8[1] = wifiPowerStateOn;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User's Setting [Wi-Fi]: %d", v8, 8u);
  }
}

- (void)assignProxyServer:(id)server
{
  serverCopy = server;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting proxy server..", v6, 2u);
  }

  [(CBUserSettings *)self setProxyServer:serverCopy];
}

- (void)applyPreUISettingsFromNvram
{
  [(CBUserSettings *)self _setDesiredUserDefaults];
  if (+[CBUtilities isInternalInstall])
  {

    [(CBUserSettings *)self _setOverrideRemoteSetupPin];
  }

  else
  {
    v3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CheckerBoard is running on customer install. Ignoring remote setup pin override", v4, 2u);
    }
  }
}

- (void)applyPostUISettingsFromNvramWithNavigationController:(id)controller
{
  controllerCopy = controller;
  if (+[CBUtilities isInternalInstall])
  {
    v5 = dispatch_semaphore_create(0);
    [(CBUserSettings *)self setDiagsLaunchDependenciesSemaphore:v5];

    [(CBUserSettings *)self _setLanguageFromNVRam];
    [(CBUserSettings *)self _setWiFiFromNVRam];
    [(CBUserSettings *)self _setSkipDiagsTermsAndConditionsFromNVRam];
    [(CBUserSettings *)self _setAutoDiagsFromNVRamWithNavController:controllerCopy];
  }

  else
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CheckerBoard is running on customer install. Ignoring automation assistance settings", v7, 2u);
    }
  }
}

- (void)_setDesiredUserDefaults
{
  v3 = +[NSBundle mainBundle];
  bundleIdentifier = [v3 bundleIdentifier];
  [bundleIdentifier cStringUsingEncoding:4];
  v5 = os_variant_uses_ephemeral_storage();

  if (!v5)
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v7 = "CheckerBoard launched without ephemeral storage. Not altering user defaults";
      v8 = &v9;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }

LABEL_11:

    return;
  }

  [(CBUserSettings *)self _disableContinousPath];
  if (![(CBUserSettings *)self _isPermittedToUpdateASTDefaults])
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Not permitted to update AST defaults";
      v8 = buf;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  [(CBUserSettings *)self _updateASTDefaultsFromNVRam];
}

- (void)_disableContinousPath
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.keyboard.ContinuousPath"];
  [v2 setBool:0 forKey:@"KeyboardContinuousPathEnabled"];
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Disabled keyboard continuous path.", v4, 2u);
  }
}

- (BOOL)_isPermittedToUpdateASTDefaults
{
  v2 = +[CBAPTicket sharedInstance];
  v3 = [v2 isEntitledForTag:1633776739];

  v4 = MGGetBoolAnswer();
  v14 = 0;
  v5 = [CBSNVRamUtil readNVRamVariable:@"AlwaysEnforceAATCInCheckerBoard" value:&v14];
  v6 = v14;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || ![v6 length])
  {
    bOOLValue = 0;
  }

  else
  {
    v9 = [[NSString alloc] initWithData:v7 encoding:4];
    bOOLValue = [v9 BOOLValue];
  }

  v11 = v3 | (v4 | bOOLValue) ^ 1;
  v12 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v16 = v11 & 1;
    v17 = 1024;
    v18 = v3;
    v19 = 1024;
    v20 = v4;
    v21 = 1024;
    v22 = bOOLValue;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Permitted to update AST Defaults: (%d). Entitled: (%d)  Fusing: (%d) Fusing Ignored: (%d)", buf, 0x1Au);
  }

  return v11 & 1;
}

- (BOOL)shouldShowInfoPane
{
  if (qword_1000922D8 != -1)
  {
    sub_100044FC0();
  }

  return byte_1000922D0;
}

- (void)_updateASTDefaultsFromNVRam
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.AppleServiceToolkit"];
  v3 = [NSString stringWithFormat:@"%@.%@", @"com.apple.AppleServiceToolkit", @"Server"];
  v4 = [NSString stringWithFormat:@"%@.%@", @"com.apple.AppleServiceToolkit", @"CustomServerURL"];
  v18 = 0;
  v5 = [CBSNVRamUtil readNVRamVariable:v3 value:&v18];
  v6 = v18;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && [v6 length])
  {
    v9 = [[NSString alloc] initWithData:v7 encoding:4];
    v10 = [NSNumber numberWithInteger:[v9 integerValue]];
    [v2 setValue:v10 forKey:@"Server"];
    v11 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Set AST Server environment to %@", buf, 0xCu);
    }

    if ([v10 isEqualToNumber:&off_100080FD0])
    {
      v17 = 0;
      v12 = [CBSNVRamUtil readNVRamVariable:v4 value:&v17];
      v13 = v17;
      v14 = v13;
      if (v12 && v13 && [v13 length])
      {
        v15 = [[NSString alloc] initWithData:v14 encoding:4];
        [v2 setValue:v15 forKey:@"CustomServerURL"];
        v16 = CheckerBoardLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Set AST Server URL to %@", buf, 0xCu);
        }

LABEL_20:
        goto LABEL_21;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to read value for %@ from nvram", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v9 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to read value for %@ from nvram", buf, 0xCu);
  }

LABEL_21:
}

- (void)_attemptConnectingToWifi
{
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004E1C;
  block[3] = &unk_10007D540;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_setLanguageFromNVRam
{
  v9 = 0;
  v2 = [CBSNVRamUtil readNVRamVariable:@"cb-language" value:&v9];
  v3 = v9;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || ![v3 length])
  {
    v6 = 0;
  }

  else
  {
    v6 = [[NSString alloc] initWithData:v4 encoding:4];
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attempting to change language to %@", buf, 0xCu);
    }

    v8 = +[CBLocationController sharedLocationController];
    [v8 selectLanguage:v6 restartAfterCompletion:0];
  }
}

- (void)_setWiFiFromNVRam
{
  v15 = 0;
  v3 = [CBSNVRamUtil readNVRamVariable:@"cb-wifi-ssid" value:&v15];
  v4 = v15;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || ![v4 length])
  {
    v7 = 0;
  }

  else
  {
    v7 = [[NSString alloc] initWithData:v5 encoding:4];
  }

  v14 = 0;
  v8 = [CBSNVRamUtil readNVRamVariable:@"cb-wifi-password" value:&v14];
  v9 = v14;
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || ![v9 length])
  {
    v12 = 0;
    if (!v7)
    {
      goto LABEL_14;
    }

LABEL_16:
    [(CBUserSettings *)self setWifiSSIDFromNvram:v7];
    [(CBUserSettings *)self setWifiPasswordFromNvram:v12];
    [(CBUserSettings *)self _attemptConnectingToWifi];
    goto LABEL_17;
  }

  v12 = [[NSString alloc] initWithData:v10 encoding:4];
  [(CBUserSettings *)self setWifiRequiresPassword:v12 != 0];
  if (v7)
  {
    goto LABEL_16;
  }

LABEL_14:
  diagsLaunchDependenciesSemaphore = [(CBUserSettings *)self diagsLaunchDependenciesSemaphore];
  dispatch_semaphore_signal(diagsLaunchDependenciesSemaphore);

LABEL_17:
}

- (void)_setSkipDiagsTermsAndConditionsFromNVRam
{
  v13 = 0;
  v2 = [CBSNVRamUtil readNVRamVariable:@"cb-skip-diags-terms-conditions" value:&v13];
  v3 = v13;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && [v3 length])
  {
    v6 = [[NSString alloc] initWithData:v4 encoding:4];
    bOOLValue = [v6 BOOLValue];

    v8 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Disabling Diagnostics T&Cs", buf, 2u);
    }

    v9 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Diagnostics"];
    [v9 setBool:bOOLValue forKey:@"SkipTermsAndConditions"];
    v10 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Disabled Diagnostics Terms And Conditions.", v11, 2u);
    }
  }
}

- (void)_setAutoDiagsFromNVRamWithNavController:(id)controller
{
  controllerCopy = controller;
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000056EC;
  v7[3] = &unk_10007D640;
  v7[4] = self;
  v8 = controllerCopy;
  v6 = controllerCopy;
  dispatch_async(v5, v7);
}

- (void)_setOverrideRemoteSetupPin
{
  v11 = 0;
  v3 = [CBSNVRamUtil readNVRamVariable:@"cb-remote-setup-pin" value:&v11];
  v4 = v11;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || ![v4 length])
  {
    v8 = 0;
  }

  else
  {
    v7 = [[NSString alloc] initWithData:v5 encoding:4];
    v8 = v7;
    if (v7 && [v7 length] == 6)
    {
      v9 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting Remote Setup override pin of %@", buf, 0xCu);
      }

      remoteSetupManager = [(CBUserSettings *)self remoteSetupManager];
      [remoteSetupManager setOverrideAuthPin:v8];
    }
  }
}

@end