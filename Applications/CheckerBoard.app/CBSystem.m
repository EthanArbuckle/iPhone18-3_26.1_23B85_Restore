@interface CBSystem
+ (void)_checkOutUserSettings;
+ (void)checkoutAndReboot:(BOOL)a3 userInitiated:(BOOL)a4;
- (CBSystem)init;
- (id)proxyServer;
- (void)_connectToSSID:(id)a3 password:(id)a4 completion:(id)a5;
- (void)_deregisterNotifications;
- (void)_inactivityTimerFired:(id)a3;
- (void)_registerForNotifications;
- (void)_runShutdownImminentCompletions;
- (void)_startInactivityTimer;
- (void)_stopInactivityTimer;
- (void)_stopInactivityTimer:(id)a3;
- (void)addShutdownTask:(id)a3 forReason:(id)a4;
- (void)connectedNetwork:(id)a3;
- (void)currentLocaleIdentifier:(id)a3;
- (void)diagnosticsRunning:(id)a3;
- (void)dimDisplay;
- (void)disableNetworkReconnect;
- (void)disableTouchButtonEvents;
- (void)displayDimmed:(id)a3;
- (void)enableNetworkReconnect;
- (void)enableTouchButtonEvents;
- (void)exitRequestedWithServer:(id)a3;
- (void)hideSceneStatusBar;
- (void)launchDiagnostics;
- (void)launchPrimaryApp;
- (void)networkReconnectEnabled:(id)a3;
- (void)networkScanWithCompletion:(id)a3;
- (void)primaryAppRunning:(id)a3;
- (void)removeShutdownTask:(id)a3;
- (void)setLocaleIdentifier:(id)a3 completion:(id)a4;
- (void)showSceneStatusBar;
- (void)start;
- (void)statusBarStyle:(int64_t)a3;
- (void)undimDisplay;
@end

@implementation CBSystem

- (CBSystem)init
{
  v11.receiver = self;
  v11.super_class = CBSystem;
  v2 = [(CBSystem *)&v11 init];
  if (v2)
  {
    v3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up the system…", v10, 2u);
    }

    v4 = +[CBWiFiManager sharedInstance];
    wifiManager = v2->_wifiManager;
    v2->_wifiManager = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    shutdownTasks = v2->_shutdownTasks;
    v2->_shutdownTasks = v6;

    touchSensitiveButtonEnabledAssertion = v2->_touchSensitiveButtonEnabledAssertion;
    v2->_touchSensitiveButtonEnabledAssertion = 0;
  }

  return v2;
}

- (void)start
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Enabling CheckerBoard services…", buf, 2u);
  }

  if (+[CBUtilities isInternalInstall])
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unsetting default…", v10, 2u);
    }

    [CBInternalSettings setPreferencesValue:&__kCFBooleanFalse key:@"LaunchCheckerBoard" domain:@"com.apple.CheckerBoard"];
  }

  v5 = +[CBShellServer sharedInstance];
  v6 = +[CBAppManager sharedInstance];
  v7 = +[CBIdleSleepManager sharedInstance];
  [v7 enableIdleSleep];

  v8 = +[CBStatusBarStateAggregator sharedInstance];
  v9 = +[CBThermalManager sharedInstance];
  [v9 startListeningForThermalEvents];

  [v5 setSystemServicesDelegate:self];
  [v5 start];
  [(CBSystem *)self _registerForNotifications];
  [(CBSystem *)self _startInactivityTimer];
}

+ (void)checkoutAndReboot:(BOOL)a3 userInitiated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CheckerBoard is checking out and will reboot (%d)", buf, 8u);
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"SystemWillReboot" object:0];

  +[CBSystem _checkOutUserSettings];
  v8 = +[CBBootIntentManager sharedInstance];
  [v8 deleteBootIntentSourceData];

  if (v4)
  {
    [CBSNVRamUtil clearNVRamVariable:@"boot-command"];
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002F478;
  v15[3] = &unk_10007E4C0;
  v16 = v5;
  v9 = objc_retainBlock(v15);
  v10 = +[CBRemoteSetupManager sharedInstance];
  v11 = v10;
  if (v10 && [v10 setupState] >= 2)
  {
    [v11 endRemoteSetupBroadcast];
    v12 = dispatch_time(0, 1000000000);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002F508;
    v13[3] = &unk_10007DC38;
    v14 = v9;
    dispatch_after(v12, &_dispatch_main_q, v13);
  }

  else
  {
    (v9[2])(v9);
  }
}

+ (void)_checkOutUserSettings
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Checking out and resetting back to user's settings…", buf, 2u);
  }

  +[CBUserSettings sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002F634;
  v3 = v5[3] = &unk_10007D540;
  v6 = v3;
  v4 = objc_retainBlock(v5);
  if (+[NSThread isMainThread])
  {
    (v4[2])(v4);
  }

  else
  {
    dispatch_sync(&_dispatch_main_q, v4);
  }
}

- (void)exitRequestedWithServer:(id)a3
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Exiting CheckerBoard", v4, 2u);
  }

  [CBSystem checkoutAndReboot:1 userInitiated:0];
}

- (id)proxyServer
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Get proxyServer.", v6, 2u);
  }

  v3 = +[CBUserSettings sharedInstance];
  v4 = [v3 proxyServer];

  return v4;
}

- (void)showSceneStatusBar
{
  v2 = +[CBSceneManager sharedInstance];
  [v2 showSceneStatusBar];
}

- (void)hideSceneStatusBar
{
  v2 = +[CBSceneManager sharedInstance];
  [v2 hideSceneStatusBar];
}

- (void)statusBarStyle:(int64_t)a3
{
  v4 = +[CBSceneManager sharedInstance];
  [v4 statusBarStyle:a3];
}

- (void)dimDisplay
{
  v2 = +[CBIdleSleepManager sharedInstance];
  [v2 dimDisplay];
}

- (void)undimDisplay
{
  v2 = +[CBIdleSleepManager sharedInstance];
  [v2 undimDisplay];
}

- (void)enableTouchButtonEvents
{
  [(CBSystem *)self disableTouchButtonEvents];
  v3 = BKSHIDTouchSensitiveButtonRequestScanMode();
  [(CBSystem *)self setTouchSensitiveButtonEnabledAssertion:v3];
}

- (void)disableTouchButtonEvents
{
  v3 = [(CBSystem *)self touchSensitiveButtonEnabledAssertion];

  if (v3)
  {
    v4 = [(CBSystem *)self touchSensitiveButtonEnabledAssertion];
    [v4 invalidate];

    [(CBSystem *)self setTouchSensitiveButtonEnabledAssertion:0];
  }
}

- (void)addShutdownTask:(id)a3 forReason:(id)a4
{
  v6 = a4;
  v8 = objc_retainBlock(a3);
  v7 = [(CBSystem *)self shutdownTasks];
  [v7 setObject:v8 forKeyedSubscript:v6];
}

- (void)removeShutdownTask:(id)a3
{
  v4 = a3;
  v5 = [(CBSystem *)self shutdownTasks];
  [v5 removeObjectForKey:v4];

  v7 = [(CBSystem *)self shutdownTasks];
  if (![v7 count])
  {
    v6 = [(CBSystem *)self shutdownTasksPendingSemaphore];

    if (!v6)
    {
      return;
    }

    v7 = [(CBSystem *)self shutdownTasksPendingSemaphore];
    dispatch_semaphore_signal(v7);
  }
}

- (void)disableNetworkReconnect
{
  v2 = +[CBWiFiManager sharedInstance];
  [v2 setAttemptsNetworkReconnect:0];
}

- (void)enableNetworkReconnect
{
  v2 = +[CBWiFiManager sharedInstance];
  [v2 setAttemptsNetworkReconnect:1];
}

- (void)launchPrimaryApp
{
  v2 = +[UIApplication sharedApplication];
  v4 = [v2 delegate];

  v3 = v4;
  if (v4)
  {
    [v4 launchPrimaryApp];
    v3 = v4;
  }
}

- (void)primaryAppRunning:(id)a3
{
  v3 = a3;
  v7 = +[CBAppManager sharedInstance];
  v4 = [v7 primaryAppBundleID];
  v5 = +[CBAppManager sharedInstance];
  v6 = [v5 currentOpenAppBundleIDs];

  v3[2](v3, [v6 containsObject:v4]);
}

- (void)launchDiagnostics
{
  v3 = +[CBAppManager sharedInstance];
  v4 = [v3 primaryAppBundleID];
  if (v4 == @"com.apple.Diagnostics")
  {
    [(CBSystem *)self launchPrimaryApp];
  }

  else
  {
    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Primary app is not currently Diagnostics. Ignoring launch request", v6, 2u);
    }
  }
}

- (void)diagnosticsRunning:(id)a3
{
  v4 = a3;
  v5 = +[CBAppManager sharedInstance];
  v6 = [v5 primaryAppBundleID];
  if (v6 == @"com.apple.Diagnostics")
  {
    [(CBSystem *)self primaryAppRunning:v4];
  }

  else
  {
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Primary app is not currently Diagnostics. Reporting that it is not running, as it is not allow-listed to run.", v8, 2u);
    }

    v4[2](v4, 0);
  }
}

- (void)_connectToSSID:(id)a3 password:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_100030340;
  v56 = sub_100030350;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_100030340;
  v50 = sub_100030350;
  v51 = 0;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100030358;
  v42[3] = &unk_10007E4E8;
  v10 = a5;
  v44 = &v52;
  v45 = &v46;
  v42[4] = self;
  v43 = v10;
  v11 = objc_retainBlock(v42);
  v12 = +[NSNotificationCenter defaultCenter];
  v13 = +[NSOperationQueue mainQueue];
  v14 = [v12 addObserverForName:@"CBWiFiManagerDidAssociateToEncryptedNetworkNotification" object:0 queue:v13 usingBlock:v11];
  v15 = v53[5];
  v53[5] = v14;

  v16 = +[NSNotificationCenter defaultCenter];
  v17 = +[NSOperationQueue mainQueue];
  v18 = [v16 addObserverForName:@"CBWiFiManagerDidAssociateToOpenNetworkNotification" object:0 queue:v17 usingBlock:v11];
  v19 = v47[5];
  v47[5] = v18;

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100030340;
  v40 = sub_100030350;
  v41 = 0;
  objc_initWeak(&location, self);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000304F4;
  v30[3] = &unk_10007E510;
  v33 = &v36;
  objc_copyWeak(&v34, &location);
  v20 = v8;
  v31 = v20;
  v21 = v9;
  v32 = v21;
  v22 = objc_retainBlock(v30);
  v23 = +[NSNotificationCenter defaultCenter];
  v24 = +[NSOperationQueue mainQueue];
  v25 = [v23 addObserverForName:@"CBWiFiNetworkScanCompletedNotification" object:0 queue:v24 usingBlock:v22];
  v26 = v37[5];
  v37[5] = v25;

  v27 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Starting network scan for CBSystem as part of network association attempt", v29, 2u);
  }

  v28 = +[CBWiFiManager sharedInstance];
  [v28 startWiFiNetworkScanRequestFrom:self];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);
}

- (void)networkScanWithCompletion:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100030340;
  v23 = sub_100030350;
  v24 = 0;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100030A20;
  v14[3] = &unk_10007E538;
  v16 = &v19;
  objc_copyWeak(&v17, &location);
  v5 = v4;
  v15 = v5;
  v6 = objc_retainBlock(v14);
  v7 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting network scan for CBSystem (without association)", v13, 2u);
  }

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = +[NSOperationQueue mainQueue];
  v10 = [v8 addObserverForName:@"CBWiFiNetworkScanCompletedNotification" object:0 queue:v9 usingBlock:v6];
  v11 = v20[5];
  v20[5] = v10;

  v12 = +[CBWiFiManager sharedInstance];
  [v12 startWiFiNetworkScanRequestFrom:self];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v19, 8);
}

- (void)connectedNetwork:(id)a3
{
  v7 = a3;
  v3 = +[CBWiFiManager sharedInstance];
  v4 = [v3 isAssociatedToNetwork];

  if (v4)
  {
    v5 = +[CBWiFiManager sharedInstance];
    v6 = [v5 currentNetworkSSID];
    v7[2](v7, v6);
  }

  else
  {
    v7[2](v7, 0);
  }
}

- (void)displayDimmed:(id)a3
{
  v4 = a3;
  v5 = +[CBIdleSleepManager sharedInstance];
  (*(a3 + 2))(v4, [v5 isDisplayDim]);
}

- (void)networkReconnectEnabled:(id)a3
{
  v4 = a3;
  v5 = +[CBWiFiManager sharedInstance];
  (*(a3 + 2))(v4, [v5 attemptsNetworkReconnect]);
}

- (void)currentLocaleIdentifier:(id)a3
{
  v4 = a3;
  v6 = +[NSLocale currentLocale];
  v5 = [v6 localeIdentifier];
  (*(a3 + 2))(v4, v5);
}

- (void)setLocaleIdentifier:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CBLocationController sharedLocationController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100030FB4;
  v9[3] = &unk_10007DC38;
  v10 = v5;
  v8 = v5;
  [v7 selectLanguage:v6 restartAfterCompletion:v9];
}

- (void)_registerForNotifications
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering for notifications…", v6, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_stopInactivityTimer:" name:@"CBEndGameViewControllerLaunchingPrimaryAppNotification" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_runShutdownImminentCompletions" name:@"SystemWillReboot" object:0];
}

- (void)_deregisterNotifications
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deregistering notifications…", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"CBEndGameViewControllerLaunchingPrimaryAppNotification" object:0];
}

- (void)_stopInactivityTimer:(id)a3
{
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stop inactivity timer notification sent", v5, 2u);
  }

  [(CBSystem *)self _stopInactivityTimer];
}

- (void)_startInactivityTimer
{
  v3 = [(CBSystem *)self inactivityTimer];

  if (!v3)
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting inactivity timer…", v11, 2u);
    }

    v5 = +[NSDate date];
    v6 = [NSDate dateWithTimeInterval:v5 sinceDate:300.0];

    v7 = [[PCPersistentTimer alloc] initWithFireDate:v6 serviceIdentifier:@"com.apple.CheckerBoard.inactivitytimer" target:self selector:"_inactivityTimerFired:" userInfo:0];
    [(CBSystem *)self setInactivityTimer:v7];

    v8 = [(CBSystem *)self inactivityTimer];
    [v8 setMinimumEarlyFireProportion:1.0];

    v9 = [(CBSystem *)self inactivityTimer];
    v10 = +[NSRunLoop mainRunLoop];
    [v9 scheduleInRunLoop:v10];
  }
}

- (void)_stopInactivityTimer
{
  [(CBSystem *)self _deregisterNotifications];
  v3 = [(CBSystem *)self inactivityTimer];

  if (v3)
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Invalidating inactivity timer…", v6, 2u);
    }

    v5 = [(CBSystem *)self inactivityTimer];
    [v5 invalidate];

    [(CBSystem *)self setInactivityTimer:0];
  }
}

- (void)_inactivityTimerFired:(id)a3
{
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Inactivity timeout fired…", v5, 2u);
  }

  [(CBSystem *)self _stopInactivityTimer];
  [CBSystem checkoutAndReboot:1 userInitiated:0];
}

- (void)_runShutdownImminentCompletions
{
  v3 = [(CBSystem *)self shutdownTasks];
  v4 = [v3 count];

  if (v4)
  {
    v5 = dispatch_semaphore_create(0);
    [(CBSystem *)self setShutdownTasksPendingSemaphore:v5];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [(CBSystem *)self shutdownTasks];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = CheckerBoardLogHandleForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Running shutdown imminent completion for reason %@", buf, 0xCu);
          }

          v13 = [(CBSystem *)self shutdownTasks];
          v14 = [v13 objectForKeyedSubscript:v11];
          v14[2]();
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v8);
    }

    v15 = [(CBSystem *)self shutdownTasksPendingSemaphore];
    v16 = dispatch_time(0, 5000000000);
    v17 = dispatch_semaphore_wait(v15, v16);

    if (v17)
    {
      v18 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000479E0(v18);
      }
    }
  }
}

@end