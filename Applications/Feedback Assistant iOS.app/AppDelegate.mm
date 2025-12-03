@interface AppDelegate
- (BOOL)_touchIDDidTimeout;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (id)newLAContext;
- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column;
- (unint64_t)supportedInterfaceOrientations;
- (void)_invalidateWatchDogTimer;
- (void)_logOutForBiometricsAuthFailure;
- (void)_performBiometricsEvaluationWithContext:(id)context;
- (void)_performInteractiveLoginWithManager:(id)manager;
- (void)_startBiometricsTimer;
- (void)addBlurView;
- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error;
- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token;
- (void)application:(id)application handleEventsForBackgroundURLSession:(id)session completionHandler:(id)handler;
- (void)application:(id)application performActionForShortcutItem:(id)item completionHandler:(id)handler;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillResignActive:(id)active;
- (void)applicationWillTerminate:(id)terminate;
- (void)blockLandscapeOrientations:(BOOL)orientations;
- (void)handleInteractiveLoginResultWithLoginManager:(id)manager pendingUI:(unint64_t)i startupFailures:(unint64_t)failures skipBiometrics:(BOOL)biometrics;
- (void)handleLaunchAction:(id)action completion:(id)completion;
- (void)performBiometricAuthenticationIfNeeded;
- (void)removeBlurView;
- (void)saveBiometricsDate;
- (void)setBiometricsState:(unint64_t)state;
- (void)showSimpleAlertWithErrorTitle:(id)title message:(id)message;
- (void)updateHomeScreenVisibilityFromLaunchAction:(id)action;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  optionsCopy = options;
  v8 = &selRef_tableView_willDisplayContextMenuWithConfiguration_animator_;
  v9 = +[FBALog appHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10009289C();
  }

  v10 = +[NSProcessInfo processInfo];
  environment = [v10 environment];
  v12 = [environment objectForKeyedSubscript:@"FBK_UNIT_TEST"];

  if (!v12)
  {
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Feedback Assistant" value:&stru_1000E2210 table:0];
    window = [(AppDelegate *)self window];
    windowScene = [window windowScene];
    [windowScene setTitle:v14];

    +[_TtC18Feedback_Assistant23FBAUserDefaultsMigrator run];
    _FBKResetDefaultsIfNeeded();
    v17 = +[DEDManager sharedInstance];
    [v17 start];
    v18 = +[FBKDeviceManager sharedInstance];
    v19 = objc_alloc_init(FBATestSupport);
    v20 = +[NSProcessInfo processInfo];
    arguments = [v20 arguments];
    [(FBATestSupport *)v19 processLaunchArgumentsWithArgs:arguments];

    window2 = [(AppDelegate *)self window];
    rootViewController = [window2 rootViewController];

    [rootViewController setDelegate:self];
    v24 = [UIVisualEffectView alloc];
    v25 = [UIBlurEffect effectWithStyle:4];
    v26 = [v24 initWithEffect:v25];
    [(AppDelegate *)self setBlurView:v26];

    window3 = [(AppDelegate *)self window];
    rootViewController2 = [window3 rootViewController];
    view = [rootViewController2 view];
    [view bounds];
    Height = CGRectGetHeight(v62);

    window4 = [(AppDelegate *)self window];
    rootViewController3 = [window4 rootViewController];
    view2 = [rootViewController3 view];
    [view2 bounds];
    Width = CGRectGetWidth(v63);

    if (Height <= Width)
    {
      Height = Width;
    }

    blurView = [(AppDelegate *)self blurView];
    [blurView setFrame:{0.0, 0.0, Height, Height}];

    v36 = +[UIApplication sharedApplication];
    applicationState = [v36 applicationState];

    v37 = +[FBKData sharedInstance];
    loginManager = [v37 loginManager];

    v39 = +[NSUserDefaults standardUserDefaults];
    v40 = [v39 BOOLForKey:FBKPushNotificationsEnabled];

    if (v40)
    {
      [applicationCopy registerForRemoteNotifications];
    }

    v41 = +[UNUserNotificationCenter currentNotificationCenter];
    [v41 setDelegate:self];

    v42 = +[iFBAConstants tintColor];
    window5 = [(AppDelegate *)self window];
    [window5 setTintColor:v42];

    v44 = [optionsCopy objectForKeyedSubscript:UIApplicationLaunchOptionsURLKey];
    if (FBKIsInternalInstall())
    {
      v58 = v17;
      v45 = +[NSUserDefaults standardUserDefaults];
      v46 = FBKLaunchActionOnLaunch;
      v47 = [v45 stringForKey:FBKLaunchActionOnLaunch];

      if (!v47)
      {
        v8 = &selRef_tableView_willDisplayContextMenuWithConfiguration_animator_;
        v17 = v58;
        if (!v44)
        {
          goto LABEL_19;
        }

        goto LABEL_14;
      }

      v57 = rootViewController;
      v48 = +[FBALog appHandle];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = +[NSUserDefaults standardUserDefaults];
        v50 = [v49 stringForKey:v46];
        *buf = 138412290;
        v61 = v50;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Auto-running URL Action %@", buf, 0xCu);
      }

      v51 = +[NSUserDefaults standardUserDefaults];
      v52 = [v51 stringForKey:v46];
      v53 = [NSURL URLWithString:v52];

      v54 = [FBKLaunchAction actionWithURL:v53];
      [(AppDelegate *)self handleLaunchAction:v54 completion:0];

      v44 = v53;
      v8 = &selRef_tableView_willDisplayContextMenuWithConfiguration_animator_;
      rootViewController = v57;
      v17 = v58;
    }

    if (!v44)
    {
      goto LABEL_19;
    }

LABEL_14:
    if ([v44 fbkHandlesLogin])
    {
      appHandle = [v8 + 511 appHandle];
      if (os_log_type_enabled(appHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, appHandle, OS_LOG_TYPE_DEFAULT, "Anon url action found. Skipping interactive login sequence", buf, 2u);
      }

      goto LABEL_22;
    }

LABEL_19:
    if (applicationState == 2)
    {
      [loginManager backgroundStartupWithCompletion:&stru_1000DE910];
    }

    else
    {
      [(AppDelegate *)self _performInteractiveLoginWithManager:loginManager];
    }

LABEL_22:
    +[_TtC18Feedback_Assistant26FBADraftDirectoriesCleanUp run];
    +[_TtC18Feedback_Assistant22FBADirectoriesMigrator run];
    +[_TtC18Feedback_Assistant19FBAAppGroupMigrator run];
    +[FBKSharedConstants deleteStaleAttachmentLegalTextEntries];
    [(AppDelegate *)self setOrientationMask:[(AppDelegate *)self supportedInterfaceOrientations]];
  }

  return 1;
}

- (void)applicationDidBecomeActive:(id)active
{
  v4 = +[NSProcessInfo processInfo];
  environment = [v4 environment];
  v6 = [environment objectForKeyedSubscript:@"FBK_UNIT_TEST"];

  if (!v6)
  {
    v7 = +[FBALog appHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Did become active", buf, 2u);
    }

    v8 = +[FBKData sharedInstance];
    loginManager = [v8 loginManager];

    [(AppDelegate *)self _performInteractiveLoginWithManager:loginManager];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000F360;
    v10[3] = &unk_1000DE938;
    v10[4] = self;
    [loginManager runAfterLogin:v10];
  }
}

- (void)applicationWillResignActive:(id)active
{
  v3 = +[FBALog appHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will resign active", v4, 2u);
  }
}

- (void)applicationDidEnterBackground:(id)background
{
  v4 = +[NSProcessInfo processInfo];
  environment = [v4 environment];
  v6 = [environment objectForKeyedSubscript:@"FBK_UNIT_TEST"];

  if (!v6)
  {
    v7 = +[FBALog appHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Did enter background", buf, 2u);
    }

    v8 = +[FBKData sharedInstance];
    v11 = 0;
    [v8 saveToStore:&v11];
    if (!v11)
    {
      currentUser = [v8 currentUser];

      if (currentUser)
      {
        currentUser2 = [v8 currentUser];
        [v8 reduceToFault:currentUser2];
      }
    }

    [(AppDelegate *)self addBlurView];
    [(AppDelegate *)self saveBiometricsDate];
  }
}

- (void)applicationWillEnterForeground:(id)foreground
{
  v4 = +[FBALog appHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will enter foreground", buf, 2u);
  }

  v5 = +[FBKData sharedInstance];
  loginManager = [v5 loginManager];

  if ([loginManager loginState] != 1)
  {
    v9 = sub_10000F530();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100092930();
    }

    selfCopy2 = self;
    v8 = 1;
    goto LABEL_9;
  }

  if ([(AppDelegate *)self biometricsState]== 3)
  {
    selfCopy2 = self;
    v8 = 5;
LABEL_9:
    [(AppDelegate *)selfCopy2 setBiometricsState:v8];
    goto LABEL_13;
  }

  v10 = sub_10000F530();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "will perform biometric evaluation if needed", v11, 2u);
  }

  [(AppDelegate *)self performBiometricAuthenticationIfNeeded];
LABEL_13:
}

- (void)applicationWillTerminate:(id)terminate
{
  v4 = +[FBALog appHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will terminate", buf, 2u);
  }

  v5 = +[DEDRequestAdvertiser sharedInstance];
  [v5 stop];

  v6 = +[FBKData sharedInstance];
  loginManager = [v6 loginManager];

  if ([loginManager loginState] == 1)
  {
    launchAction = [(AppDelegate *)self launchAction];
    if (launchAction)
    {
      v9 = launchAction;
      launchAction2 = [(AppDelegate *)self launchAction];
      isCaptive = [launchAction2 isCaptive];

      if (isCaptive)
      {
        v12 = +[FBALog appHandle];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "App was force quit in restricted mode, logging out.", v15, 2u);
        }

        [loginManager logOut];
        launchAction3 = [(AppDelegate *)self launchAction];
        if ([launchAction3 shouldMakeFBAVisible])
        {
          v14 = +[iFBKUtils wasFBAVisibleAtFirstLaunch];

          if ((v14 & 1) == 0)
          {
            +[iFBKUtils removeFromHomeScreen];
          }
        }

        else
        {
        }

        [(AppDelegate *)self setLaunchAction:0];
      }
    }
  }
}

- (void)application:(id)application performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  type = [item type];
  v8 = [type componentsSeparatedByString:@"."];
  lastObject = [v8 lastObject];
  v10 = [lastObject isEqualToString:@"compose"];

  if (v10)
  {
    v11 = [NSURL URLWithString:@"applefeedback://new"];
    v12 = [FBKLaunchAction actionWithURL:v11];

    [(AppDelegate *)self handleLaunchAction:v12 completion:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  lCopy = l;
  v7 = +[FBALog appHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 136446210;
    v11 = "[AppDelegate application:openURL:options:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}s]", &v10, 0xCu);
  }

  v8 = [FBKLaunchAction actionWithURL:lCopy];

  [(AppDelegate *)self handleLaunchAction:v8 completion:0];
  return 1;
}

- (void)handleLaunchAction:(id)action completion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  v8 = +[FBALog appHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling Launch Action [%{public}@]", buf, 0xCu);
  }

  [(AppDelegate *)self setLaunchAction:actionCopy];
  if ([actionCopy launchesInbox])
  {
    isShowContentItemAction = 1;
  }

  else
  {
    isShowContentItemAction = [actionCopy isShowContentItemAction];
  }

  v10 = +[FBADraftManager sharedInstance];
  [v10 setInboxLiteMode:isShowContentItemAction];

  v11 = +[FBKData sharedInstance];
  loginManager = [v11 loginManager];
  if ([actionCopy fbkHandlesLogin])
  {
    [loginManager clearLoginTaskQueue];
    v13 = +[FBALog newURLActionActivity];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000FE94;
    block[3] = &unk_1000DE988;
    v14 = &v24;
    v24 = loginManager;
    v25 = actionCopy;
    selfCopy = self;
    v27 = completionCopy;
    v15 = actionCopy;
    v16 = completionCopy;
    os_activity_apply(v13, block);

    v17 = v25;
  }

  else
  {
    [(AppDelegate *)self updateHomeScreenVisibilityFromLaunchAction:actionCopy];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001011C;
    v20[3] = &unk_1000DE9D8;
    v14 = &v22;
    v21 = actionCopy;
    v22 = completionCopy;
    v20[4] = self;
    v18 = actionCopy;
    v19 = completionCopy;
    [loginManager runAfterLogin:v20];
    v17 = v21;
  }
}

- (void)updateHomeScreenVisibilityFromLaunchAction:(id)action
{
  actionCopy = action;
  if ([actionCopy shouldMakeFBAVisible])
  {
    +[iFBKUtils addToHomeScreen];
  }

  else if ([actionCopy shouldUndoMakeFBAVisible])
  {
    +[iFBKUtils removeFromHomeScreen];
  }
}

- (void)handleInteractiveLoginResultWithLoginManager:(id)manager pendingUI:(unint64_t)i startupFailures:(unint64_t)failures skipBiometrics:(BOOL)biometrics
{
  managerCopy = manager;
  window = [(AppDelegate *)self window];
  rootViewController = [window rootViewController];

  if (failures)
  {
    [rootViewController presentConnectionErrorUI];
    goto LABEL_9;
  }

  if ((failures & 2) != 0)
  {
    [rootViewController presentVersionOutdatedUI];
    goto LABEL_9;
  }

  if ((failures & 4) != 0)
  {
    [rootViewController displayNonParticipant];
LABEL_9:
    if (i)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (i)
  {
    [rootViewController presentStartupUI:i];
    goto LABEL_13;
  }

  if (!failures)
  {
    [rootViewController clearBlockingUI];
  }

LABEL_10:
  if ([managerCopy loginState] == 1 && !biometrics)
  {
    [(AppDelegate *)self performBiometricAuthenticationIfNeeded];
  }

LABEL_13:
}

- (void)_performInteractiveLoginWithManager:(id)manager
{
  managerCopy = manager;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_10001052C;
  v8[4] = sub_10001053C;
  selfCopy = self;
  if ([managerCopy loginState] != 3 && objc_msgSend(managerCopy, "loginState") != 4 && objc_msgSend(managerCopy, "loginState") != 1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100010544;
    v5[3] = &unk_1000DEA00;
    v7 = v8;
    v6 = managerCopy;
    [v6 interactiveStartupWithCompletion:v5];
  }

  _Block_object_dispose(v8, 8);
}

- (void)addBlurView
{
  if (+[iFBAConstants supportsBiometricsLock])
  {
    v3 = +[FBALog appHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10009296C();
    }

    blurView = [(AppDelegate *)self blurView];
    superview = [blurView superview];

    if (!superview)
    {
      v6 = +[FBALog appHandle];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Did add blur view", v9, 2u);
      }

      window = [(AppDelegate *)self window];
      blurView2 = [(AppDelegate *)self blurView];
      [window addSubview:blurView2];
    }
  }
}

- (void)removeBlurView
{
  v3 = +[FBALog appHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000929A8();
  }

  blurView = [(AppDelegate *)self blurView];
  superview = [blurView superview];

  if (superview)
  {
    v6 = +[FBALog appHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "did remove blur view", v8, 2u);
    }

    blurView2 = [(AppDelegate *)self blurView];
    [blurView2 removeFromSuperview];
  }
}

- (BOOL)_touchIDDidTimeout
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"TouchIDLastRequested"];

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 integerForKey:@"TouchIDTimeoutDuration"];

  v6 = +[NSDate date];
  [v6 timeIntervalSinceDate:v3];
  LOBYTE(v5) = v7 >= v5;

  return v5;
}

- (void)setBiometricsState:(unint64_t)state
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_biometricsState = state;
  switch(state)
  {
    case 0uLL:
      v17 = sub_10000F530();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Biometrics authentication is not enabled", &v20, 2u);
      }

      goto LABEL_28;
    case 1uLL:
      goto LABEL_28;
    case 2uLL:
      v11 = sub_10000F530();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Biometric evaluation pending. Will perform evaluation", &v20, 2u);
      }

      [(AppDelegate *)selfCopy addBlurView];
      lastUsedLAContext = [(AppDelegate *)selfCopy lastUsedLAContext];
      [(AppDelegate *)selfCopy _performBiometricsEvaluationWithContext:lastUsedLAContext];
      goto LABEL_17;
    case 3uLL:
      v12 = sub_10000F530();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        lastUsedLAContext2 = [(AppDelegate *)selfCopy lastUsedLAContext];
        v20 = 138412290;
        v21 = lastUsedLAContext2;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Biometric evaluation began with context [%@]", &v20, 0xCu);
      }

      goto LABEL_38;
    case 4uLL:
    case 0xAuLL:
      v5 = sub_10000F530();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      LOWORD(v20) = 0;
      v6 = "Biometrics stuck - locking out";
      v7 = v5;
      v8 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    case 5uLL:
      v19 = sub_10000F530();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Biometrics evaluation happened while app was in background - Retrying", &v20, 2u);
      }

      [(AppDelegate *)selfCopy addBlurView];
      [(AppDelegate *)selfCopy performBiometricAuthenticationIfNeeded];
      goto LABEL_39;
    case 6uLL:
      v12 = sub_10000F530();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        goto LABEL_38;
      }

      LOWORD(v20) = 0;
      v13 = "Biometric evaluation completed";
      v14 = v12;
      v15 = OS_LOG_TYPE_INFO;
      goto LABEL_37;
    case 7uLL:
      v12 = sub_10000F530();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      LOWORD(v20) = 0;
      v13 = "Biometric unlock failed - not authenticated";
      goto LABEL_36;
    case 8uLL:
      v9 = sub_10000F530();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Biometric unlock cancelled by user - likely that user pressed Cancel (suspending).", &v20, 2u);
      }

      [(AppDelegate *)selfCopy addBlurView];
      lastUsedLAContext = +[UIApplication sharedApplication];
      [lastUsedLAContext suspendReturningToLastApp:1];
LABEL_17:

      goto LABEL_39;
    case 9uLL:
      v12 = sub_10000F530();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      LOWORD(v20) = 0;
      v13 = "Biometric unlock cancelled by system – likely that user went home.";
LABEL_36:
      v14 = v12;
      v15 = OS_LOG_TYPE_DEFAULT;
LABEL_37:
      _os_log_impl(&_mh_execute_header, v14, v15, v13, &v20, 2u);
LABEL_38:

      [(AppDelegate *)selfCopy addBlurView];
      goto LABEL_39;
    case 0xBuLL:
      v5 = sub_10000F530();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      LOWORD(v20) = 0;
      v6 = "Biometric unlock unavailable - biometry is in lockout.";
      goto LABEL_8;
    case 0xCuLL:
      v5 = sub_10000F530();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      LOWORD(v20) = 0;
      v6 = "Biometric unlock failed - unknown error.";
LABEL_8:
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v7, v8, v6, &v20, 2u);
LABEL_10:

      [(AppDelegate *)selfCopy _logOutForBiometricsAuthFailure];
LABEL_39:
      objc_sync_exit(selfCopy);

      return;
    case 0xDuLL:
      v18 = sub_10000F530();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Biometric unlock succeeded", &v20, 2u);
      }

      [(AppDelegate *)selfCopy _invalidateWatchDogTimer];
      [(AppDelegate *)selfCopy saveBiometricsDate];
LABEL_28:
      [(AppDelegate *)selfCopy removeBlurView];
      goto LABEL_39;
    default:
      goto LABEL_39;
  }
}

- (void)_invalidateWatchDogTimer
{
  biometricsWatchDog = [(AppDelegate *)self biometricsWatchDog];

  if (biometricsWatchDog)
  {
    biometricsWatchDog2 = [(AppDelegate *)self biometricsWatchDog];
    [biometricsWatchDog2 invalidate];

    [(AppDelegate *)self setBiometricsWatchDog:0];
  }
}

- (void)_startBiometricsTimer
{
  [(AppDelegate *)self _invalidateWatchDogTimer];
  [(AppDelegate *)self lastUsedLAContext];
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100010E00;
  v8 = &unk_1000DEA28;
  v10 = v9 = self;
  v3 = v10;
  v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v5 block:8.0];
  [(AppDelegate *)self setBiometricsWatchDog:v4, v5, v6, v7, v8, v9];
}

- (void)_logOutForBiometricsAuthFailure
{
  [(AppDelegate *)self addBlurView];
  v3 = +[FBKData sharedInstance];
  loginManager = [v3 loginManager];
  [loginManager logOut];

  window = [(AppDelegate *)self window];
  rootViewController = [window rootViewController];
  [rootViewController dismissViewControllerAnimated:0 completion:0];
}

- (void)saveBiometricsDate
{
  if ([(AppDelegate *)self biometricsState]== 13)
  {
    v3 = +[NSDate date];
    v4 = sub_10000F530();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 description];
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Saving biometrics date [%@]", &v9, 0xCu);
    }

    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 setObject:v3 forKey:@"TouchIDLastRequested"];
  }

  else
  {
    biometricsState = [(AppDelegate *)self biometricsState];
    v8 = sub_10000F530();
    v3 = v8;
    if (biometricsState)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Not Authenticated. Will not save bio timer", &v9, 2u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100092B88();
    }
  }
}

- (id)newLAContext
{
  v3 = objc_opt_new();
  [(AppDelegate *)self setLastUsedLAContext:v3];
  return v3;
}

- (void)performBiometricAuthenticationIfNeeded
{
  if (!+[iFBAConstants supportsBiometricsLock])
  {
    goto LABEL_13;
  }

  if ([(AppDelegate *)self biometricsState]== 3)
  {
    v3 = sub_10000F530();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Already evaluating biometrics", buf, 2u);
    }

    return;
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"UseTouchIDLogin"];

  if (v5)
  {
    v6 = sub_10000F530();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Biometrics authentication enabled", v15, 2u);
    }

    if ([(AppDelegate *)self _touchIDDidTimeout])
    {
      newLAContext = [(AppDelegate *)self newLAContext];
      v13 = 0;
      v8 = [newLAContext canEvaluatePolicy:-[AppDelegate _evaluationPolicy](self error:{"_evaluationPolicy"), &v13}];
      v9 = v13;
      v10 = v9;
      if (v8)
      {
        v11 = 2;
      }

      else if (v9 && [v9 code] == -8)
      {
        v11 = 11;
      }

      else
      {
        v11 = 12;
      }

      [(AppDelegate *)self setBiometricsState:v11];
    }

    else
    {
      v12 = sub_10000F530();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Biometrics authentication has not timed out", v14, 2u);
      }

      [(AppDelegate *)self setBiometricsState:13];
    }
  }

  else
  {
LABEL_13:

    [(AppDelegate *)self setBiometricsState:0];
  }
}

- (void)_performBiometricsEvaluationWithContext:(id)context
{
  contextCopy = context;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"TOUCH_ID_PROMPT" value:&stru_1000E2210 table:0];

  if (+[iFBKUtils deviceSupportsFaceID])
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"FACE_ID_PROMPT" value:&stru_1000E2210 table:0];

    v6 = v8;
  }

  [(AppDelegate *)self setBiometricsState:3];
  _evaluationPolicy = [(AppDelegate *)self _evaluationPolicy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000115B4;
  v11[3] = &unk_1000DEA78;
  v12 = contextCopy;
  selfCopy = self;
  v10 = contextCopy;
  [v10 evaluatePolicy:_evaluationPolicy localizedReason:v6 reply:v11];
}

- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token
{
  tokenCopy = token;
  v5 = +[_TtC18Feedback_Assistant22FBANotificationManager sharedManager];
  [v5 saveToken:tokenCopy];
}

- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error
{
  errorCopy = error;
  v5 = +[FBALog appHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100092C6C(errorCopy);
  }
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v9 = +[FBALog appHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100092CF4();
  }

  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  v14 = +[FBALog appHandle];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v58 = userInfo;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "user info: %@", buf, 0xCu);
  }

  v15 = [userInfo objectForKeyedSubscript:FBKPushItemTypeKey];
  v16 = [userInfo objectForKeyedSubscript:FBKPushItemIDKey];
  if (v16 && v15)
  {
    v47 = responseCopy;
    window = [(AppDelegate *)self window];
    rootViewController = [window rootViewController];

    v19 = +[FBKData sharedInstance];
    viewControllers = [rootViewController viewControllers];
    lastObject = [viewControllers lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      viewControllers2 = [rootViewController viewControllers];
      lastObject2 = [viewControllers2 lastObject];

      topViewController = [lastObject2 topViewController];
    }

    else
    {
      topViewController = 0;
    }

    v26 = [UIStoryboard storyboardWithName:@"Main" bundle:0];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100011EC4;
    v48[3] = &unk_1000DEB70;
    v49 = v15;
    v27 = topViewController;
    v50 = v27;
    v28 = v26;
    v51 = v28;
    v29 = v19;
    v52 = v29;
    v53 = v16;
    v30 = rootViewController;
    v54 = v30;
    v55 = &stru_1000DEAB8;
    v46 = handlerCopy;
    v56 = handlerCopy;
    v45 = objc_retainBlock(v48);
    if (([v29 isReloadingContentAndFormItems] & 1) != 0 || (objc_msgSend(v29, "loginManager"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "loginState"), v31, !v32))
    {
      notificationCenter = [v29 notificationCenter];
      v35 = FBKDidRefreshContentItemsNotification;
      +[NSOperationQueue mainQueue];
      v36 = userInfo;
      v37 = v16;
      v38 = v15;
      v39 = v30;
      v40 = v28;
      v42 = v41 = v27;
      v43 = v35;
      v33 = v45;
      v44 = [notificationCenter addObserverForName:v43 object:v29 queue:v42 usingBlock:v45];

      v27 = v41;
      v28 = v40;
      v30 = v39;
      v15 = v38;
      v16 = v37;
      userInfo = v36;
    }

    else
    {
      v33 = v45;
      (v45[2])(v45, 0);
    }

    handlerCopy = v46;
    responseCopy = v47;
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (qword_10010AF98 != -1)
  {
    sub_100092E30();
  }

  return qword_10010AF90;
}

- (void)blockLandscapeOrientations:(BOOL)orientations
{
  orientationsCopy = orientations;
  if (orientations)
  {
    supportedInterfaceOrientations = 6;
  }

  else
  {
    supportedInterfaceOrientations = [(AppDelegate *)self supportedInterfaceOrientations];
  }

  [(AppDelegate *)self setOrientationMask:supportedInterfaceOrientations];
  v6 = +[FBALog appHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 136446722;
    v8 = "[AppDelegate blockLandscapeOrientations:]";
    v9 = 1024;
    v10 = orientationsCopy;
    v11 = 2048;
    orientationMask = [(AppDelegate *)self orientationMask];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}s shouldBlock? [%i] mask [%lu]", &v7, 0x1Cu);
  }
}

- (void)application:(id)application handleEventsForBackgroundURLSession:(id)session completionHandler:(id)handler
{
  v5 = [FBALog appHandle:application];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "handleEventsForBackgroundURLSession", v8, 2u);
  }

  v6 = +[FBKData sharedInstance];
  loginManager = [v6 loginManager];
  [loginManager backgroundStartupWithCompletion:&stru_1000DEBB0];
}

- (void)showSimpleAlertWithErrorTitle:(id)title message:(id)message
{
  v10 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"OK" value:&stru_1000E2210 table:0];
  v7 = [UIAlertAction actionWithTitle:v6 style:1 handler:0];
  [v10 addAction:v7];

  window = [(AppDelegate *)self window];
  rootViewController = [window rootViewController];
  [rootViewController presentViewController:v10 animated:1 completion:0];
}

- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column
{
  v4 = [controller viewControllerForColumn:column];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 topViewController], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass))
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

@end