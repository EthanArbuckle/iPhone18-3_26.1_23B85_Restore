@interface AppDelegate
- (BOOL)_touchIDDidTimeout;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (id)newLAContext;
- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)_invalidateWatchDogTimer;
- (void)_logOutForBiometricsAuthFailure;
- (void)_performBiometricsEvaluationWithContext:(id)a3;
- (void)_performInteractiveLoginWithManager:(id)a3;
- (void)_startBiometricsTimer;
- (void)addBlurView;
- (void)application:(id)a3 didFailToRegisterForRemoteNotificationsWithError:(id)a4;
- (void)application:(id)a3 didRegisterForRemoteNotificationsWithDeviceToken:(id)a4;
- (void)application:(id)a3 handleEventsForBackgroundURLSession:(id)a4 completionHandler:(id)a5;
- (void)application:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)applicationWillTerminate:(id)a3;
- (void)blockLandscapeOrientations:(BOOL)a3;
- (void)handleInteractiveLoginResultWithLoginManager:(id)a3 pendingUI:(unint64_t)a4 startupFailures:(unint64_t)a5 skipBiometrics:(BOOL)a6;
- (void)handleLaunchAction:(id)a3 completion:(id)a4;
- (void)performBiometricAuthenticationIfNeeded;
- (void)removeBlurView;
- (void)saveBiometricsDate;
- (void)setBiometricsState:(unint64_t)a3;
- (void)showSimpleAlertWithErrorTitle:(id)a3 message:(id)a4;
- (void)updateHomeScreenVisibilityFromLaunchAction:(id)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = &selRef_tableView_willDisplayContextMenuWithConfiguration_animator_;
  v9 = +[FBALog appHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10009289C();
  }

  v10 = +[NSProcessInfo processInfo];
  v11 = [v10 environment];
  v12 = [v11 objectForKeyedSubscript:@"FBK_UNIT_TEST"];

  if (!v12)
  {
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Feedback Assistant" value:&stru_1000E2210 table:0];
    v15 = [(AppDelegate *)self window];
    v16 = [v15 windowScene];
    [v16 setTitle:v14];

    +[_TtC18Feedback_Assistant23FBAUserDefaultsMigrator run];
    _FBKResetDefaultsIfNeeded();
    v17 = +[DEDManager sharedInstance];
    [v17 start];
    v18 = +[FBKDeviceManager sharedInstance];
    v19 = objc_alloc_init(FBATestSupport);
    v20 = +[NSProcessInfo processInfo];
    v21 = [v20 arguments];
    [(FBATestSupport *)v19 processLaunchArgumentsWithArgs:v21];

    v22 = [(AppDelegate *)self window];
    v23 = [v22 rootViewController];

    [v23 setDelegate:self];
    v24 = [UIVisualEffectView alloc];
    v25 = [UIBlurEffect effectWithStyle:4];
    v26 = [v24 initWithEffect:v25];
    [(AppDelegate *)self setBlurView:v26];

    v27 = [(AppDelegate *)self window];
    v28 = [v27 rootViewController];
    v29 = [v28 view];
    [v29 bounds];
    Height = CGRectGetHeight(v62);

    v31 = [(AppDelegate *)self window];
    v32 = [v31 rootViewController];
    v33 = [v32 view];
    [v33 bounds];
    Width = CGRectGetWidth(v63);

    if (Height <= Width)
    {
      Height = Width;
    }

    v35 = [(AppDelegate *)self blurView];
    [v35 setFrame:{0.0, 0.0, Height, Height}];

    v36 = +[UIApplication sharedApplication];
    v59 = [v36 applicationState];

    v37 = +[FBKData sharedInstance];
    v38 = [v37 loginManager];

    v39 = +[NSUserDefaults standardUserDefaults];
    v40 = [v39 BOOLForKey:FBKPushNotificationsEnabled];

    if (v40)
    {
      [v6 registerForRemoteNotifications];
    }

    v41 = +[UNUserNotificationCenter currentNotificationCenter];
    [v41 setDelegate:self];

    v42 = +[iFBAConstants tintColor];
    v43 = [(AppDelegate *)self window];
    [v43 setTintColor:v42];

    v44 = [v7 objectForKeyedSubscript:UIApplicationLaunchOptionsURLKey];
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

      v57 = v23;
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
      v23 = v57;
      v17 = v58;
    }

    if (!v44)
    {
      goto LABEL_19;
    }

LABEL_14:
    if ([v44 fbkHandlesLogin])
    {
      v55 = [v8 + 511 appHandle];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Anon url action found. Skipping interactive login sequence", buf, 2u);
      }

      goto LABEL_22;
    }

LABEL_19:
    if (v59 == 2)
    {
      [v38 backgroundStartupWithCompletion:&stru_1000DE910];
    }

    else
    {
      [(AppDelegate *)self _performInteractiveLoginWithManager:v38];
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

- (void)applicationDidBecomeActive:(id)a3
{
  v4 = +[NSProcessInfo processInfo];
  v5 = [v4 environment];
  v6 = [v5 objectForKeyedSubscript:@"FBK_UNIT_TEST"];

  if (!v6)
  {
    v7 = +[FBALog appHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Did become active", buf, 2u);
    }

    v8 = +[FBKData sharedInstance];
    v9 = [v8 loginManager];

    [(AppDelegate *)self _performInteractiveLoginWithManager:v9];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000F360;
    v10[3] = &unk_1000DE938;
    v10[4] = self;
    [v9 runAfterLogin:v10];
  }
}

- (void)applicationWillResignActive:(id)a3
{
  v3 = +[FBALog appHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will resign active", v4, 2u);
  }
}

- (void)applicationDidEnterBackground:(id)a3
{
  v4 = +[NSProcessInfo processInfo];
  v5 = [v4 environment];
  v6 = [v5 objectForKeyedSubscript:@"FBK_UNIT_TEST"];

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
      v9 = [v8 currentUser];

      if (v9)
      {
        v10 = [v8 currentUser];
        [v8 reduceToFault:v10];
      }
    }

    [(AppDelegate *)self addBlurView];
    [(AppDelegate *)self saveBiometricsDate];
  }
}

- (void)applicationWillEnterForeground:(id)a3
{
  v4 = +[FBALog appHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will enter foreground", buf, 2u);
  }

  v5 = +[FBKData sharedInstance];
  v6 = [v5 loginManager];

  if ([v6 loginState] != 1)
  {
    v9 = sub_10000F530();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100092930();
    }

    v7 = self;
    v8 = 1;
    goto LABEL_9;
  }

  if ([(AppDelegate *)self biometricsState]== 3)
  {
    v7 = self;
    v8 = 5;
LABEL_9:
    [(AppDelegate *)v7 setBiometricsState:v8];
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

- (void)applicationWillTerminate:(id)a3
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
  v7 = [v6 loginManager];

  if ([v7 loginState] == 1)
  {
    v8 = [(AppDelegate *)self launchAction];
    if (v8)
    {
      v9 = v8;
      v10 = [(AppDelegate *)self launchAction];
      v11 = [v10 isCaptive];

      if (v11)
      {
        v12 = +[FBALog appHandle];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "App was force quit in restricted mode, logging out.", v15, 2u);
        }

        [v7 logOut];
        v13 = [(AppDelegate *)self launchAction];
        if ([v13 shouldMakeFBAVisible])
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

- (void)application:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v13 = a5;
  v7 = [a4 type];
  v8 = [v7 componentsSeparatedByString:@"."];
  v9 = [v8 lastObject];
  v10 = [v9 isEqualToString:@"compose"];

  if (v10)
  {
    v11 = [NSURL URLWithString:@"applefeedback://new"];
    v12 = [FBKLaunchAction actionWithURL:v11];

    [(AppDelegate *)self handleLaunchAction:v12 completion:v13];
  }

  else
  {
    v13[2](v13, 0);
  }
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v6 = a4;
  v7 = +[FBALog appHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 136446210;
    v11 = "[AppDelegate application:openURL:options:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}s]", &v10, 0xCu);
  }

  v8 = [FBKLaunchAction actionWithURL:v6];

  [(AppDelegate *)self handleLaunchAction:v8 completion:0];
  return 1;
}

- (void)handleLaunchAction:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[FBALog appHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling Launch Action [%{public}@]", buf, 0xCu);
  }

  [(AppDelegate *)self setLaunchAction:v6];
  if ([v6 launchesInbox])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v6 isShowContentItemAction];
  }

  v10 = +[FBADraftManager sharedInstance];
  [v10 setInboxLiteMode:v9];

  v11 = +[FBKData sharedInstance];
  v12 = [v11 loginManager];
  if ([v6 fbkHandlesLogin])
  {
    [v12 clearLoginTaskQueue];
    v13 = +[FBALog newURLActionActivity];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000FE94;
    block[3] = &unk_1000DE988;
    v14 = &v24;
    v24 = v12;
    v25 = v6;
    v26 = self;
    v27 = v7;
    v15 = v6;
    v16 = v7;
    os_activity_apply(v13, block);

    v17 = v25;
  }

  else
  {
    [(AppDelegate *)self updateHomeScreenVisibilityFromLaunchAction:v6];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001011C;
    v20[3] = &unk_1000DE9D8;
    v14 = &v22;
    v21 = v6;
    v22 = v7;
    v20[4] = self;
    v18 = v6;
    v19 = v7;
    [v12 runAfterLogin:v20];
    v17 = v21;
  }
}

- (void)updateHomeScreenVisibilityFromLaunchAction:(id)a3
{
  v3 = a3;
  if ([v3 shouldMakeFBAVisible])
  {
    +[iFBKUtils addToHomeScreen];
  }

  else if ([v3 shouldUndoMakeFBAVisible])
  {
    +[iFBKUtils removeFromHomeScreen];
  }
}

- (void)handleInteractiveLoginResultWithLoginManager:(id)a3 pendingUI:(unint64_t)a4 startupFailures:(unint64_t)a5 skipBiometrics:(BOOL)a6
{
  v12 = a3;
  v10 = [(AppDelegate *)self window];
  v11 = [v10 rootViewController];

  if (a5)
  {
    [v11 presentConnectionErrorUI];
    goto LABEL_9;
  }

  if ((a5 & 2) != 0)
  {
    [v11 presentVersionOutdatedUI];
    goto LABEL_9;
  }

  if ((a5 & 4) != 0)
  {
    [v11 displayNonParticipant];
LABEL_9:
    if (a4)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (a4)
  {
    [v11 presentStartupUI:a4];
    goto LABEL_13;
  }

  if (!a5)
  {
    [v11 clearBlockingUI];
  }

LABEL_10:
  if ([v12 loginState] == 1 && !a6)
  {
    [(AppDelegate *)self performBiometricAuthenticationIfNeeded];
  }

LABEL_13:
}

- (void)_performInteractiveLoginWithManager:(id)a3
{
  v4 = a3;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_10001052C;
  v8[4] = sub_10001053C;
  v9 = self;
  if ([v4 loginState] != 3 && objc_msgSend(v4, "loginState") != 4 && objc_msgSend(v4, "loginState") != 1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100010544;
    v5[3] = &unk_1000DEA00;
    v7 = v8;
    v6 = v4;
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

    v4 = [(AppDelegate *)self blurView];
    v5 = [v4 superview];

    if (!v5)
    {
      v6 = +[FBALog appHandle];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Did add blur view", v9, 2u);
      }

      v7 = [(AppDelegate *)self window];
      v8 = [(AppDelegate *)self blurView];
      [v7 addSubview:v8];
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

  v4 = [(AppDelegate *)self blurView];
  v5 = [v4 superview];

  if (v5)
  {
    v6 = +[FBALog appHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "did remove blur view", v8, 2u);
    }

    v7 = [(AppDelegate *)self blurView];
    [v7 removeFromSuperview];
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

- (void)setBiometricsState:(unint64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v4->_biometricsState = a3;
  switch(a3)
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

      [(AppDelegate *)v4 addBlurView];
      v10 = [(AppDelegate *)v4 lastUsedLAContext];
      [(AppDelegate *)v4 _performBiometricsEvaluationWithContext:v10];
      goto LABEL_17;
    case 3uLL:
      v12 = sub_10000F530();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v16 = [(AppDelegate *)v4 lastUsedLAContext];
        v20 = 138412290;
        v21 = v16;
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

      [(AppDelegate *)v4 addBlurView];
      [(AppDelegate *)v4 performBiometricAuthenticationIfNeeded];
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

      [(AppDelegate *)v4 addBlurView];
      v10 = +[UIApplication sharedApplication];
      [v10 suspendReturningToLastApp:1];
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

      [(AppDelegate *)v4 addBlurView];
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

      [(AppDelegate *)v4 _logOutForBiometricsAuthFailure];
LABEL_39:
      objc_sync_exit(v4);

      return;
    case 0xDuLL:
      v18 = sub_10000F530();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Biometric unlock succeeded", &v20, 2u);
      }

      [(AppDelegate *)v4 _invalidateWatchDogTimer];
      [(AppDelegate *)v4 saveBiometricsDate];
LABEL_28:
      [(AppDelegate *)v4 removeBlurView];
      goto LABEL_39;
    default:
      goto LABEL_39;
  }
}

- (void)_invalidateWatchDogTimer
{
  v3 = [(AppDelegate *)self biometricsWatchDog];

  if (v3)
  {
    v4 = [(AppDelegate *)self biometricsWatchDog];
    [v4 invalidate];

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
  v4 = [v3 loginManager];
  [v4 logOut];

  v6 = [(AppDelegate *)self window];
  v5 = [v6 rootViewController];
  [v5 dismissViewControllerAnimated:0 completion:0];
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
    v7 = [(AppDelegate *)self biometricsState];
    v8 = sub_10000F530();
    v3 = v8;
    if (v7)
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
      v7 = [(AppDelegate *)self newLAContext];
      v13 = 0;
      v8 = [v7 canEvaluatePolicy:-[AppDelegate _evaluationPolicy](self error:{"_evaluationPolicy"), &v13}];
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

- (void)_performBiometricsEvaluationWithContext:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"TOUCH_ID_PROMPT" value:&stru_1000E2210 table:0];

  if (+[iFBKUtils deviceSupportsFaceID])
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"FACE_ID_PROMPT" value:&stru_1000E2210 table:0];

    v6 = v8;
  }

  [(AppDelegate *)self setBiometricsState:3];
  v9 = [(AppDelegate *)self _evaluationPolicy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000115B4;
  v11[3] = &unk_1000DEA78;
  v12 = v4;
  v13 = self;
  v10 = v4;
  [v10 evaluatePolicy:v9 localizedReason:v6 reply:v11];
}

- (void)application:(id)a3 didRegisterForRemoteNotificationsWithDeviceToken:(id)a4
{
  v4 = a4;
  v5 = +[_TtC18Feedback_Assistant22FBANotificationManager sharedManager];
  [v5 saveToken:v4];
}

- (void)application:(id)a3 didFailToRegisterForRemoteNotificationsWithError:(id)a4
{
  v4 = a4;
  v5 = +[FBALog appHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100092C6C(v4);
  }
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[FBALog appHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100092CF4();
  }

  v10 = [v7 notification];
  v11 = [v10 request];
  v12 = [v11 content];
  v13 = [v12 userInfo];

  v14 = +[FBALog appHandle];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v58 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "user info: %@", buf, 0xCu);
  }

  v15 = [v13 objectForKeyedSubscript:FBKPushItemTypeKey];
  v16 = [v13 objectForKeyedSubscript:FBKPushItemIDKey];
  if (v16 && v15)
  {
    v47 = v7;
    v17 = [(AppDelegate *)self window];
    v18 = [v17 rootViewController];

    v19 = +[FBKData sharedInstance];
    v20 = [v18 viewControllers];
    v21 = [v20 lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v23 = [v18 viewControllers];
      v24 = [v23 lastObject];

      v25 = [v24 topViewController];
    }

    else
    {
      v25 = 0;
    }

    v26 = [UIStoryboard storyboardWithName:@"Main" bundle:0];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100011EC4;
    v48[3] = &unk_1000DEB70;
    v49 = v15;
    v27 = v25;
    v50 = v27;
    v28 = v26;
    v51 = v28;
    v29 = v19;
    v52 = v29;
    v53 = v16;
    v30 = v18;
    v54 = v30;
    v55 = &stru_1000DEAB8;
    v46 = v8;
    v56 = v8;
    v45 = objc_retainBlock(v48);
    if (([v29 isReloadingContentAndFormItems] & 1) != 0 || (objc_msgSend(v29, "loginManager"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "loginState"), v31, !v32))
    {
      v34 = [v29 notificationCenter];
      v35 = FBKDidRefreshContentItemsNotification;
      +[NSOperationQueue mainQueue];
      v36 = v13;
      v37 = v16;
      v38 = v15;
      v39 = v30;
      v40 = v28;
      v42 = v41 = v27;
      v43 = v35;
      v33 = v45;
      v44 = [v34 addObserverForName:v43 object:v29 queue:v42 usingBlock:v45];

      v27 = v41;
      v28 = v40;
      v30 = v39;
      v15 = v38;
      v16 = v37;
      v13 = v36;
    }

    else
    {
      v33 = v45;
      (v45[2])(v45, 0);
    }

    v8 = v46;
    v7 = v47;
  }

  else
  {
    v8[2](v8);
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

- (void)blockLandscapeOrientations:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = 6;
  }

  else
  {
    v5 = [(AppDelegate *)self supportedInterfaceOrientations];
  }

  [(AppDelegate *)self setOrientationMask:v5];
  v6 = +[FBALog appHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 136446722;
    v8 = "[AppDelegate blockLandscapeOrientations:]";
    v9 = 1024;
    v10 = v3;
    v11 = 2048;
    v12 = [(AppDelegate *)self orientationMask];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}s shouldBlock? [%i] mask [%lu]", &v7, 0x1Cu);
  }
}

- (void)application:(id)a3 handleEventsForBackgroundURLSession:(id)a4 completionHandler:(id)a5
{
  v5 = [FBALog appHandle:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "handleEventsForBackgroundURLSession", v8, 2u);
  }

  v6 = +[FBKData sharedInstance];
  v7 = [v6 loginManager];
  [v7 backgroundStartupWithCompletion:&stru_1000DEBB0];
}

- (void)showSimpleAlertWithErrorTitle:(id)a3 message:(id)a4
{
  v10 = [UIAlertController alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"OK" value:&stru_1000E2210 table:0];
  v7 = [UIAlertAction actionWithTitle:v6 style:1 handler:0];
  [v10 addAction:v7];

  v8 = [(AppDelegate *)self window];
  v9 = [v8 rootViewController];
  [v9 presentViewController:v10 animated:1 completion:0];
}

- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4
{
  v4 = [a3 viewControllerForColumn:a4];
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