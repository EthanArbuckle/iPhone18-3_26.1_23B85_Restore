@interface CBAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (void)_enforceEnvironmentIsSupported:(int64_t)supported;
- (void)_startSystemStatusServer;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillResignActive:(id)active;
- (void)applicationWillTerminate:(id)terminate;
- (void)launchPrimaryApp;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
@end

@implementation CBAppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  optionsCopy = options;
  v8 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished launching", buf, 2u);
  }

  [(CBAppDelegate *)self _startSystemStatusServer];
  [applicationCopy _createInitialAppScene];
  v9 = objc_alloc_init(CBSystem);
  [(CBAppDelegate *)self setSystem:v9];

  system = [(CBAppDelegate *)self system];
  [system start];

  v11 = +[CBBootIntentManager sharedInstance];
  bootIntentLocale = [v11 bootIntentLocale];

  v13 = +[CBBootIntentManager sharedInstance];
  isCurrentProcessFirstToReadIntent = [v13 isCurrentProcessFirstToReadIntent];

  if (bootIntentLocale && isCurrentProcessFirstToReadIntent)
  {
    v15 = +[CBShellServer sharedInstance];
    systemServicesDelegate = [v15 systemServicesDelegate];
    [systemServicesDelegate setLocaleIdentifier:bootIntentLocale completion:&stru_10007DA30];
  }

  v17 = +[CBLocationController sharedLocationController];
  v18 = +[CBOpeningViewController openingViewControllerForBootIntent];
  v19 = [[CBNavigationController alloc] initWithRootViewController:v18];
  [(CBAppDelegate *)self setMainNavigationController:v19];

  mainNavigationController = [(CBAppDelegate *)self mainNavigationController];
  [mainNavigationController setDelegate:self];

  v21 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Start CBDLocalServiceClient.", buf, 2u);
  }

  v22 = [CBLocalServiceClient alloc];
  mainNavigationController2 = [(CBAppDelegate *)self mainNavigationController];
  v24 = [(CBLocalServiceClient *)v22 initWithMainNavController:mainNavigationController2];
  [(CBAppDelegate *)self setLocalServiceClient:v24];

  localServiceClient = [(CBAppDelegate *)self localServiceClient];
  [localServiceClient resume];

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
  mainNavigationController3 = [(CBAppDelegate *)self mainNavigationController];
  [v30 applyThemeToNavigationController:mainNavigationController3];

  v32 = +[CBWindowManager sharedInstance];
  mainNavigationController4 = [(CBAppDelegate *)self mainNavigationController];
  v34 = [v32 presentViewController:mainNavigationController4 onLayer:0 backgroundTunnel:1 statusBarVisible:0 animated:0 completion:0];
  [(CBAppDelegate *)self setWindow:v34];

  v35 = +[CBIdleSleepManager sharedInstance];
  v36 = +[CBUserSettings sharedInstance];
  mainNavigationController5 = [(CBAppDelegate *)self mainNavigationController];
  [v36 applyPostUISettingsFromNvramWithNavigationController:mainNavigationController5];

  v38 = +[CBEnvironmentManager sharedInstance];
  currentEnvironment = [v38 currentEnvironment];

  [(CBAppDelegate *)self _enforceEnvironmentIsSupported:currentEnvironment];
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

- (void)applicationWillResignActive:(id)active
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resigning active", v4, 2u);
  }
}

- (void)applicationDidEnterBackground:(id)background
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Entered background", v4, 2u);
  }
}

- (void)applicationWillEnterForeground:(id)foreground
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Entering foreground", v4, 2u);
  }
}

- (void)applicationDidBecomeActive:(id)active
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Became active", v4, 2u);
  }
}

- (void)applicationWillTerminate:(id)terminate
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
  mainNavigationController = [(CBAppDelegate *)self mainNavigationController];
  [mainNavigationController pushViewController:v4 animated:1];
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), objc_opt_class(), (objc_opt_isKindOfClass()) || ([controllerCopy viewControllers], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 != viewControllerCopy))
  {
    v10 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Root view controller no longer displayed. Unconfiguring for Remote Setup", v14, 2u);
    }

    viewControllers = [controllerCopy viewControllers];
    firstObject = [viewControllers firstObject];
    [firstObject unConfigureForRemoteSetup];
  }

  else
  {
    v13 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Root view controller displayed. Configuring forSyst Remote Setup", buf, 2u);
    }

    [viewControllerCopy configureForRemoteSetup];
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

- (void)_enforceEnvironmentIsSupported:(int64_t)supported
{
  if (supported != 1)
  {
    v4 = +[CBUtilities isInternalInstall];
    v5 = CheckerBoardLogHandleForCategory();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (v6)
      {
        sub_100046E88(supported, v5);
      }
    }

    else
    {
      if (v6)
      {
        sub_100046E10(supported, v5);
      }

      [CBSystem checkoutAndReboot:1 userInitiated:0];
    }
  }
}

@end