@interface CBAppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (void)_enforceEnvironmentIsSupported:(int64_t)a3;
- (void)_startSystemStatusServer;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)applicationWillTerminate:(id)a3;
- (void)launchPrimaryApp;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
@end

@implementation CBAppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished launching", buf, 2u);
  }

  [(CBAppDelegate *)self _startSystemStatusServer];
  [v6 _createInitialAppScene];
  v9 = objc_alloc_init(CBSystem);
  [(CBAppDelegate *)self setSystem:v9];

  v10 = [(CBAppDelegate *)self system];
  [v10 start];

  v11 = +[CBBootIntentManager sharedInstance];
  v12 = [v11 bootIntentLocale];

  v13 = +[CBBootIntentManager sharedInstance];
  v14 = [v13 isCurrentProcessFirstToReadIntent];

  if (v12 && v14)
  {
    v15 = +[CBShellServer sharedInstance];
    v16 = [v15 systemServicesDelegate];
    [v16 setLocaleIdentifier:v12 completion:&stru_10007DA30];
  }

  v17 = +[CBLocationController sharedLocationController];
  v18 = +[CBOpeningViewController openingViewControllerForBootIntent];
  v19 = [[CBNavigationController alloc] initWithRootViewController:v18];
  [(CBAppDelegate *)self setMainNavigationController:v19];

  v20 = [(CBAppDelegate *)self mainNavigationController];
  [v20 setDelegate:self];

  v21 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Start CBDLocalServiceClient.", buf, 2u);
  }

  v22 = [CBLocalServiceClient alloc];
  v23 = [(CBAppDelegate *)self mainNavigationController];
  v24 = [(CBLocalServiceClient *)v22 initWithMainNavController:v23];
  [(CBAppDelegate *)self setLocalServiceClient:v24];

  v25 = [(CBAppDelegate *)self localServiceClient];
  [v25 resume];

  objc_initWeak(buf, self);
  v26 = +[NSNotificationCenter defaultCenter];
  v27 = +[CBAppManager sharedInstance];
  v28 = +[NSOperationQueue mainQueue];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100012A80;
  v45[3] = &unk_10007DA58;
  objc_copyWeak(&v46, buf);
  v45[4] = self;
  v29 = [v26 addObserverForName:@"AppManagerPrimaryAppDidExit" object:v27 queue:v28 usingBlock:v45];

  v30 = +[BFFStyle sharedStyle];
  v31 = [(CBAppDelegate *)self mainNavigationController];
  [v30 applyThemeToNavigationController:v31];

  v32 = +[CBWindowManager sharedInstance];
  v33 = [(CBAppDelegate *)self mainNavigationController];
  v34 = [v32 presentViewController:v33 onLayer:0 backgroundTunnel:1 statusBarVisible:0 animated:0 completion:0];
  [(CBAppDelegate *)self setWindow:v34];

  v35 = +[CBIdleSleepManager sharedInstance];
  v36 = +[CBUserSettings sharedInstance];
  v37 = [(CBAppDelegate *)self mainNavigationController];
  [v36 applyPostUISettingsFromNvramWithNavigationController:v37];

  v38 = +[CBEnvironmentManager sharedInstance];
  v39 = [v38 currentEnvironment];

  [(CBAppDelegate *)self _enforceEnvironmentIsSupported:v39];
  if (+[CBUtilities wasRemoteSetupPerformed])
  {
    v40 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "CheckerBoard will automatically launch the primary app for remote setup", v44, 2u);
    }

    v41 = dispatch_get_global_queue(0, 0);
    dispatch_async(v41, &stru_10007DA78);

    [(CBAppDelegate *)self launchPrimaryApp];
  }

  v42 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Resetting media services..", v44, 2u);
  }

  AVResetMediaServices();
  objc_destroyWeak(&v46);
  objc_destroyWeak(buf);

  return 1;
}

- (void)applicationWillResignActive:(id)a3
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resigning active", v4, 2u);
  }
}

- (void)applicationDidEnterBackground:(id)a3
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Entered background", v4, 2u);
  }
}

- (void)applicationWillEnterForeground:(id)a3
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Entering foreground", v4, 2u);
  }
}

- (void)applicationDidBecomeActive:(id)a3
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Became active", v4, 2u);
  }
}

- (void)applicationWillTerminate:(id)a3
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Terminating process", v4, 2u);
  }
}

- (void)launchPrimaryApp
{
  v4 = objc_alloc_init(CBEndgameViewController);
  v3 = [(CBAppDelegate *)self mainNavigationController];
  [v3 pushViewController:v4 animated:1];
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), objc_opt_class(), (objc_opt_isKindOfClass()) || ([v6 viewControllers], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 != v7))
  {
    v10 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Root view controller no longer displayed. Unconfiguring for Remote Setup", v14, 2u);
    }

    v11 = [v6 viewControllers];
    v12 = [v11 firstObject];
    [v12 unConfigureForRemoteSetup];
  }

  else
  {
    v13 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Root view controller displayed. Configuring forSyst Remote Setup", buf, 2u);
    }

    [v7 configureForRemoteSetup];
  }
}

- (void)_startSystemStatusServer
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting system status server", buf, 2u);
  }

  v4 = objc_alloc_init(STStatusServer);
  systemStatusServer = self->_systemStatusServer;
  self->_systemStatusServer = v4;

  v6 = objc_alloc_init(STDynamicActivityAttributionManager);
  dynamicAttributionManager = self->_dynamicAttributionManager;
  self->_dynamicAttributionManager = v6;

  v8 = [[STDynamicActivityAttributionMonitor alloc] initWithServerHandle:self->_dynamicAttributionManager];
  systemStatusDynamicAttributionMonitor = self->_systemStatusDynamicAttributionMonitor;
  self->_systemStatusDynamicAttributionMonitor = v8;

  [(STDynamicActivityAttributionMonitor *)self->_systemStatusDynamicAttributionMonitor activate];
  v10 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Creating sensor activity data provider", v13, 2u);
  }

  v11 = [[CBSensorActivityDataProvider alloc] initWithSystemStatusServer:self->_systemStatusServer];
  sensorActivityDataProvider = self->_sensorActivityDataProvider;
  self->_sensorActivityDataProvider = v11;
}

- (void)_enforceEnvironmentIsSupported:(int64_t)a3
{
  if (a3 != 1)
  {
    v4 = +[CBUtilities isInternalInstall];
    v5 = CheckerBoardLogHandleForCategory();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (v6)
      {
        sub_100046E88(a3, v5);
      }
    }

    else
    {
      if (v6)
      {
        sub_100046E10(a3, v5);
      }

      [CBSystem checkoutAndReboot:1 userInitiated:0];
    }
  }
}

@end