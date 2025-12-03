@interface CBSystem
+ (void)_checkOutUserSettings;
+ (void)checkoutAndReboot:(BOOL)reboot userInitiated:(BOOL)initiated;
- (CBSystem)init;
- (id)proxyServer;
- (void)_connectToSSID:(id)d password:(id)password completion:(id)completion;
- (void)_deregisterNotifications;
- (void)_inactivityTimerFired:(id)fired;
- (void)_registerForNotifications;
- (void)_runShutdownImminentCompletions;
- (void)_startInactivityTimer;
- (void)_stopInactivityTimer;
- (void)_stopInactivityTimer:(id)timer;
- (void)addShutdownTask:(id)task forReason:(id)reason;
- (void)connectedNetwork:(id)network;
- (void)currentLocaleIdentifier:(id)identifier;
- (void)diagnosticsRunning:(id)running;
- (void)dimDisplay;
- (void)disableNetworkReconnect;
- (void)disableTouchButtonEvents;
- (void)displayDimmed:(id)dimmed;
- (void)enableNetworkReconnect;
- (void)enableTouchButtonEvents;
- (void)exitRequestedWithServer:(id)server;
- (void)hideSceneStatusBar;
- (void)launchDiagnostics;
- (void)launchPrimaryApp;
- (void)networkReconnectEnabled:(id)enabled;
- (void)networkScanWithCompletion:(id)completion;
- (void)primaryAppRunning:(id)running;
- (void)removeShutdownTask:(id)task;
- (void)setLocaleIdentifier:(id)identifier completion:(id)completion;
- (void)showSceneStatusBar;
- (void)start;
- (void)statusBarStyle:(int64_t)style;
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

+ (void)checkoutAndReboot:(BOOL)reboot userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  rebootCopy = reboot;
  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = rebootCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CheckerBoard is checking out and will reboot (%d)", buf, 8u);
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"SystemWillReboot" object:0];

  +[CBSystem _checkOutUserSettings];
  v8 = +[CBBootIntentManager sharedInstance];
  [v8 deleteBootIntentSourceData];

  if (initiatedCopy)
  {
    [CBSNVRamUtil clearNVRamVariable:@"boot-command"];
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002F478;
  v15[3] = &unk_10007E4C0;
  v16 = rebootCopy;
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

- (void)exitRequestedWithServer:(id)server
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
  proxyServer = [v3 proxyServer];

  return proxyServer;
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

- (void)statusBarStyle:(int64_t)style
{
  v4 = +[CBSceneManager sharedInstance];
  [v4 statusBarStyle:style];
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
  touchSensitiveButtonEnabledAssertion = [(CBSystem *)self touchSensitiveButtonEnabledAssertion];

  if (touchSensitiveButtonEnabledAssertion)
  {
    touchSensitiveButtonEnabledAssertion2 = [(CBSystem *)self touchSensitiveButtonEnabledAssertion];
    [touchSensitiveButtonEnabledAssertion2 invalidate];

    [(CBSystem *)self setTouchSensitiveButtonEnabledAssertion:0];
  }
}

- (void)addShutdownTask:(id)task forReason:(id)reason
{
  reasonCopy = reason;
  v8 = objc_retainBlock(task);
  shutdownTasks = [(CBSystem *)self shutdownTasks];
  [shutdownTasks setObject:v8 forKeyedSubscript:reasonCopy];
}

- (void)removeShutdownTask:(id)task
{
  taskCopy = task;
  shutdownTasks = [(CBSystem *)self shutdownTasks];
  [shutdownTasks removeObjectForKey:taskCopy];

  shutdownTasks2 = [(CBSystem *)self shutdownTasks];
  if (![shutdownTasks2 count])
  {
    shutdownTasksPendingSemaphore = [(CBSystem *)self shutdownTasksPendingSemaphore];

    if (!shutdownTasksPendingSemaphore)
    {
      return;
    }

    shutdownTasks2 = [(CBSystem *)self shutdownTasksPendingSemaphore];
    dispatch_semaphore_signal(shutdownTasks2);
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
  delegate = [v2 delegate];

  v3 = delegate;
  if (delegate)
  {
    [delegate launchPrimaryApp];
    v3 = delegate;
  }
}

- (void)primaryAppRunning:(id)running
{
  runningCopy = running;
  v7 = +[CBAppManager sharedInstance];
  primaryAppBundleID = [v7 primaryAppBundleID];
  v5 = +[CBAppManager sharedInstance];
  currentOpenAppBundleIDs = [v5 currentOpenAppBundleIDs];

  runningCopy[2](runningCopy, [currentOpenAppBundleIDs containsObject:primaryAppBundleID]);
}

- (void)launchDiagnostics
{
  v3 = +[CBAppManager sharedInstance];
  primaryAppBundleID = [v3 primaryAppBundleID];
  if (primaryAppBundleID == @"com.apple.Diagnostics")
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

- (void)diagnosticsRunning:(id)running
{
  runningCopy = running;
  v5 = +[CBAppManager sharedInstance];
  primaryAppBundleID = [v5 primaryAppBundleID];
  if (primaryAppBundleID == @"com.apple.Diagnostics")
  {
    [(CBSystem *)self primaryAppRunning:runningCopy];
  }

  else
  {
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Primary app is not currently Diagnostics. Reporting that it is not running, as it is not allow-listed to run.", v8, 2u);
    }

    runningCopy[2](runningCopy, 0);
  }
}

- (void)_connectToSSID:(id)d password:(id)password completion:(id)completion
{
  dCopy = d;
  passwordCopy = password;
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
  completionCopy = completion;
  v44 = &v52;
  v45 = &v46;
  v42[4] = self;
  v43 = completionCopy;
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
  v20 = dCopy;
  v31 = v20;
  v21 = passwordCopy;
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

- (void)networkScanWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v5 = completionCopy;
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

- (void)connectedNetwork:(id)network
{
  networkCopy = network;
  v3 = +[CBWiFiManager sharedInstance];
  isAssociatedToNetwork = [v3 isAssociatedToNetwork];

  if (isAssociatedToNetwork)
  {
    v5 = +[CBWiFiManager sharedInstance];
    currentNetworkSSID = [v5 currentNetworkSSID];
    networkCopy[2](networkCopy, currentNetworkSSID);
  }

  else
  {
    networkCopy[2](networkCopy, 0);
  }
}

- (void)displayDimmed:(id)dimmed
{
  dimmedCopy = dimmed;
  v5 = +[CBIdleSleepManager sharedInstance];
  (*(dimmed + 2))(dimmedCopy, [v5 isDisplayDim]);
}

- (void)networkReconnectEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = +[CBWiFiManager sharedInstance];
  (*(enabled + 2))(enabledCopy, [v5 attemptsNetworkReconnect]);
}

- (void)currentLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = +[NSLocale currentLocale];
  localeIdentifier = [v6 localeIdentifier];
  (*(identifier + 2))(identifierCopy, localeIdentifier);
}

- (void)setLocaleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v7 = +[CBLocationController sharedLocationController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100030FB4;
  v9[3] = &unk_10007DC38;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 selectLanguage:identifierCopy restartAfterCompletion:v9];
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

- (void)_stopInactivityTimer:(id)timer
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
  inactivityTimer = [(CBSystem *)self inactivityTimer];

  if (!inactivityTimer)
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

    inactivityTimer2 = [(CBSystem *)self inactivityTimer];
    [inactivityTimer2 setMinimumEarlyFireProportion:1.0];

    inactivityTimer3 = [(CBSystem *)self inactivityTimer];
    v10 = +[NSRunLoop mainRunLoop];
    [inactivityTimer3 scheduleInRunLoop:v10];
  }
}

- (void)_stopInactivityTimer
{
  [(CBSystem *)self _deregisterNotifications];
  inactivityTimer = [(CBSystem *)self inactivityTimer];

  if (inactivityTimer)
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Invalidating inactivity timer…", v6, 2u);
    }

    inactivityTimer2 = [(CBSystem *)self inactivityTimer];
    [inactivityTimer2 invalidate];

    [(CBSystem *)self setInactivityTimer:0];
  }
}

- (void)_inactivityTimerFired:(id)fired
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
  shutdownTasks = [(CBSystem *)self shutdownTasks];
  v4 = [shutdownTasks count];

  if (v4)
  {
    v5 = dispatch_semaphore_create(0);
    [(CBSystem *)self setShutdownTasksPendingSemaphore:v5];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    shutdownTasks2 = [(CBSystem *)self shutdownTasks];
    v7 = [shutdownTasks2 countByEnumeratingWithState:&v19 objects:v25 count:16];
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
            objc_enumerationMutation(shutdownTasks2);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = CheckerBoardLogHandleForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Running shutdown imminent completion for reason %@", buf, 0xCu);
          }

          shutdownTasks3 = [(CBSystem *)self shutdownTasks];
          v14 = [shutdownTasks3 objectForKeyedSubscript:v11];
          v14[2]();
        }

        v8 = [shutdownTasks2 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v8);
    }

    shutdownTasksPendingSemaphore = [(CBSystem *)self shutdownTasksPendingSemaphore];
    v16 = dispatch_time(0, 5000000000);
    v17 = dispatch_semaphore_wait(shutdownTasksPendingSemaphore, v16);

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