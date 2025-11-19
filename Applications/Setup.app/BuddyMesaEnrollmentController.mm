@interface BuddyMesaEnrollmentController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerAllowsNavigatingBack;
- (BOOL)controllerNeedsToRun;
- (BOOL)isEphemeral;
- (BOOL)prefersStatusBarHidden;
- (BuddyMesaEnrollmentController)init;
- (id)cancelLeftNavigationItem;
- (void)beginEnrollment;
- (void)completeMesaController;
- (void)contextEvaluatePolicy;
- (void)controllerWasPopped;
- (void)dealloc;
- (void)deleteIdentity;
- (void)didBecomeActive:(id)a3;
- (void)didResignActive:(id)a3;
- (void)endEnrollment;
- (void)enrollResult:(int)a3 bkIdentity:(id)a4;
- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5;
- (void)generateAuthToken;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)resetAuthContext;
- (void)resetLeftNavigationItem;
- (void)restartEnrollment;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyMesaEnrollmentController

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  [(BiometricKitUIEnrollViewController *)self->_enrollController setDelegate:0];
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:v5];

  v3.receiver = v5;
  v3.super_class = BuddyMesaEnrollmentController;
  [(BuddyMesaEnrollmentController *)&v3 dealloc];
}

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyMesaEnrollmentController *)self managedConfiguration];
  v3 = [(MCProfileConnection *)v2 effectiveBoolValueForSetting:MCFeatureFingerprintModificationAllowed];

  if (v3 == 2)
  {
    return 0;
  }

  v4 = [(BuddyMesaEnrollmentController *)self capabilities];
  v13 = 0;
  v5 = 0;
  if (([(BYCapabilities *)v4 supportsTouchID]& 1) != 0)
  {
    v14 = [(BuddyMesaEnrollmentController *)self capabilities];
    v13 = 1;
    v5 = [(BYCapabilities *)v14 isTouchIDEnrolled]^ 1;
  }

  if (v13)
  {
  }

  v15 = v5 & 1;
  v6 = [(BuddyMesaEnrollmentController *)self buddyPreferences];
  v7 = 0;
  if (([(BYPreferencesController *)v6 BOOLForKey:@"Payment2Presented"]& 1) == 0)
  {
    v7 = MGGetBoolAnswer() & 1;
  }

  v11 = 0;
  if ((v7 & 1) != 0 || (v12 = [(BuddyMesaEnrollmentController *)self buddyPreferences], v11 = 1, v8 = [(BYPreferencesController *)v12 BOOLForKey:@"Mesa2Presented"], v9 = 0, (v8 & 1) == 0))
  {
    v9 = v15;
  }

  v17 = v9;
  if (v11)
  {
  }

  return v17;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMesaEnrollmentController *)v16 managedConfiguration];
  v4 = [(MCProfileConnection *)v3 isPasscodeSet];

  if ((v4 & 1) == 0)
  {
    (*(location[0] + 2))(location[0], 1);
    goto LABEL_6;
  }

  v5 = [(BuddyMesaEnrollmentController *)v16 passcodeCacheManager];
  v6 = [(BYPasscodeCacheManager *)v5 cachedPasscode];

  if (!v6)
  {
    v7 = dispatch_get_global_queue(25, 0);
    block = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_1000C2BBC;
    v12 = &unk_10032B120;
    v13 = location[0];
    dispatch_async(v7, &block);

    objc_storeStrong(&v13, 0);
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  (*(location[0] + 2))(location[0], 1);
  v14 = 1;
LABEL_7:
  objc_storeStrong(location, 0);
}

- (BuddyMesaEnrollmentController)init
{
  v7 = a2;
  location = 0;
  v6.receiver = self;
  v6.super_class = BuddyMesaEnrollmentController;
  location = [(BuddyMesaEnrollmentController *)&v6 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v2 addObserver:location selector:"didBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    v3 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v3 addObserver:location selector:"didResignActive:" name:UIApplicationWillResignActiveNotification object:0];
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (BOOL)controllerAllowsNavigatingBack
{
  v2 = [(BuddyMesaEnrollmentController *)self capabilities:a2];
  v3 = [(BYCapabilities *)v2 isTouchIDEnrolled]^ 1;

  return v3 & 1;
}

- (BOOL)isEphemeral
{
  v2 = [(BuddyMesaEnrollmentController *)self capabilities];
  v3 = [(BYCapabilities *)v2 supportsTouchID];
  v6 = 0;
  v4 = 0;
  if (v3)
  {
    v7 = [(BuddyMesaEnrollmentController *)self capabilities];
    v6 = 1;
    v4 = [(BYCapabilities *)v7 isTouchIDEnrolled];
  }

  v9 = v4 & 1;
  if (v6)
  {
  }

  return v9 & 1;
}

- (void)controllerWasPopped
{
  v2 = [(BuddyMesaEnrollmentController *)self buddyPreferences:a2];
  [(BYPreferencesController *)v2 removeObjectForKey:@"Mesa2Presented"];
}

- (void)didBecomeActive:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000B25DC(buf, "[BuddyMesaEnrollmentController didBecomeActive:]");
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "BuddyMesaController: %s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v6 = 0;
  v4 = 0;
  v3 = 0;
  if (!v10->_enrollController)
  {
    v7 = [(BuddyMesaEnrollmentController *)v10 navigationController];
    v6 = 1;
    v5 = [v7 topViewController];
    v4 = 1;
    v3 = v5 == v10;
  }

  if (v4)
  {
  }

  if (v6)
  {
  }

  if (v3)
  {
    [(BuddyMesaEnrollmentController *)v10 beginEnrollment];
  }

  objc_storeStrong(location, 0);
}

- (void)didResignActive:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000B25DC(buf, "[BuddyMesaEnrollmentController didResignActive:]");
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "BuddyMesaController: %s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v6 = 0;
  v4 = 0;
  v3 = 0;
  if (!v10->_enrollComplete)
  {
    v7 = [(BuddyMesaEnrollmentController *)v10 navigationController];
    v6 = 1;
    v5 = [v7 topViewController];
    v4 = 1;
    v3 = v5 == v10;
  }

  if (v4)
  {
  }

  if (v6)
  {
  }

  if (v3)
  {
    [(BuddyMesaEnrollmentController *)v10 deleteIdentity];
  }

  [(BuddyMesaEnrollmentController *)v10 endEnrollment];
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = BuddyMesaEnrollmentController;
  [(BuddyMesaEnrollmentController *)&v6 viewDidLoad];
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"TOUCH_ID" value:&stru_10032F900 table:@"Localizable"];
  v4 = [(BuddyMesaEnrollmentController *)v8 navigationItem];
  [v4 setBackButtonTitle:v3];

  v5 = [(BuddyMesaEnrollmentController *)v8 navigationItem];
  [v5 setLeftItemsSupplementBackButton:0];
}

- (BOOL)prefersStatusBarHidden
{
  v2 = [(BuddyMesaEnrollmentController *)self enrollController:a2];
  v3 = [(BiometricKitUIEnrollViewController *)v2 prefersStatusBarHidden];

  return v3 & 1;
}

- (void)viewWillAppear:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  oslog = _BYLoggingFacility();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000B25DC(buf, "[BuddyMesaEnrollmentController viewWillAppear:]");
    _os_log_impl(&_mh_execute_header, oslog, v9, "BuddyMesaController: %s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v8.receiver = v13;
  v8.super_class = BuddyMesaEnrollmentController;
  [(BuddyMesaEnrollmentController *)&v8 viewWillAppear:v11];
  v3 = [(BuddyMesaEnrollmentController *)v13 paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)v3 clearActionForFeature:12];

  v4 = [(BuddyMesaEnrollmentController *)v13 view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 activationState];

  if (!v7)
  {
    [(BuddyMesaEnrollmentController *)v13 beginEnrollment];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = BuddyMesaEnrollmentController;
  [(BuddyMesaEnrollmentController *)&v3 viewDidDisappear:a3];
  [(BuddyMesaEnrollmentController *)v6 endEnrollment];
}

- (void)beginEnrollment
{
  v19 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v17;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "BuddyMesaController: Beginning enrollment", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  v15 = [sub_1000C38B8() sharedInstance];
  v14 = [v15 getEnrollUIViewController:1 bundleName:0];
  if (v14)
  {
    [(BuddyMesaEnrollmentController *)v19 resetAuthContext];
    v4 = [(BuddyMesaEnrollmentController *)v19 authContext];
    location = [(LAContext *)v4 externalizedContext];

    if (location)
    {
      [v14 setProperty:location forKey:@"credset"];
    }

    v5 = [(BuddyMesaEnrollmentController *)v19 menuButtonPressedBlock];
    v6 = objc_retainBlock(v5);
    [v14 setProperty:v6 forKey:@"MENU_ACTION"];

    [v14 setProperty:&__kCFBooleanTrue forKey:@"IN_BUDDY"];
    v7 = [sub_1000C39CC() manager];
    [v14 setBiometricKit:v7];

    [v14 setDelegate:v19];
    [(BuddyMesaEnrollmentController *)v19 addChildViewController:v14];
    v8 = [v14 view];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [(BuddyMesaEnrollmentController *)v19 view];
    v10 = [v14 view];
    [v9 addSubview:v10];

    v11 = [v14 view];
    v12 = [(BuddyMesaEnrollmentController *)v19 view];
    [v11 pinToEdges:v12];

    [v14 didMoveToParentViewController:v19];
    [(BuddyMesaEnrollmentController *)v19 setEnrollController:v14];
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
}

- (void)endEnrollment
{
  v4 = self;
  location[1] = a2;
  location[0] = [(BuddyMesaEnrollmentController *)self enrollController];
  [location[0] beginAppearanceTransition:0 animated:1];
  [location[0] willMoveToParentViewController:0];
  v2 = [location[0] view];
  [v2 removeFromSuperview];

  [location[0] removeFromParentViewController];
  [location[0] endAppearanceTransition];
  [location[0] setDelegate:0];
  [(BuddyMesaEnrollmentController *)v4 setEnrollController:0];
  objc_storeStrong(location, 0);
}

- (void)restartEnrollment
{
  v6 = self;
  location[1] = a2;
  [(BuddyMesaEnrollmentController *)self deleteIdentity];
  [(BuddyMesaEnrollmentController *)v6 resetAuthContext];
  v2 = [(BuddyMesaEnrollmentController *)v6 authContext];
  location[0] = [(LAContext *)v2 externalizedContext];

  if (location[0])
  {
    v3 = [(BuddyMesaEnrollmentController *)v6 enrollController];
    [(BiometricKitUIEnrollViewController *)v3 setProperty:location[0] forKey:@"credset"];
  }

  v4 = [(BuddyMesaEnrollmentController *)v6 enrollController];
  [(BiometricKitUIEnrollViewController *)v4 restartEnroll];

  [(BuddyMesaEnrollmentController *)v6 resetLeftNavigationItem];
  objc_storeStrong(location, 0);
}

- (void)deleteIdentity
{
  v6 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000B25DC(buf, "[BuddyMesaEnrollmentController deleteIdentity]");
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "BuddyMesaController: %s", buf, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v2 = [(BuddyMesaEnrollmentController *)v6 identity];

  if (v2)
  {
    v3 = +[PKBiometrics sharedInstance];
    v4 = [(BuddyMesaEnrollmentController *)v6 identity];
    [(PKBiometrics *)v3 removeIdentity:v4];

    [(BuddyMesaEnrollmentController *)v6 setIdentity:0];
  }
}

- (id)cancelLeftNavigationItem
{
  if (!self->_cancelLeftNavigationItem)
  {
    v2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:{"restartEnrollment", a2}];
    cancelLeftNavigationItem = self->_cancelLeftNavigationItem;
    self->_cancelLeftNavigationItem = v2;
  }

  v4 = self->_cancelLeftNavigationItem;

  return v4;
}

- (void)resetLeftNavigationItem
{
  v2 = [(BuddyMesaEnrollmentController *)self navigationItem];
  v3 = [v2 leftBarButtonItem];
  v4 = [(BuddyMesaEnrollmentController *)self cancelLeftNavigationItem];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = [(BuddyMesaEnrollmentController *)self navigationItem];
    [v6 performSelector:"setLeftBarButtonItem:animated:" withObject:0 withObject:&__kCFBooleanTrue];

    v7 = [(BuddyMesaEnrollmentController *)self navigationItem];
    [v7 setHidesBackButton:0];
  }
}

- (void)completeMesaController
{
  v14 = self;
  v13 = a2;
  self->_enrollComplete = 1;
  v2 = [(BuddyMesaEnrollmentController *)v14 buddyPreferences];
  [(BYPreferencesController *)v2 setObject:&__kCFBooleanTrue forKey:@"Mesa2Presented"];

  v3 = [(BuddyMesaEnrollmentController *)v14 capabilities];
  v4 = [(BYCapabilities *)v3 isTouchIDEnrolled];

  v12 = v4 & 1;
  if (v4)
  {
    v5 = [(BuddyMesaEnrollmentController *)v14 flowSkipController];
    [(BYFlowSkipController *)v5 didCompleteFlow:BYFlowSkipIdentifierTouchID];

    v6 = [(BuddyMesaEnrollmentController *)v14 passcodeCacheManager];
    v11 = [(BYPasscodeCacheManager *)v6 cachedPasscode];

    v7 = [(BuddyMesaEnrollmentController *)v14 managedConfiguration];
    [(MCProfileConnection *)v7 setFingerprintUnlockAllowed:1 passcode:v11 completion:0];

    objc_storeStrong(&v11, 0);
  }

  v8 = [(BuddyMesaEnrollmentController *)v14 paneFeatureAnalyticsManager];
  v9 = [NSNumber numberWithBool:v12 & 1];
  [(BYPaneFeatureAnalyticsManager *)v8 recordActionWithValue:v9 forFeature:12];

  v10 = [(BuddyMesaEnrollmentController *)v14 delegate];
  [(BFFFlowItemDelegate *)v10 flowItemDone:v14];
}

- (void)enrollResult:(int)a3 bkIdentity:(id)a4
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(buf, v15);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "BuddyMesaController: Enroll result: %d", buf, 8u);
  }

  objc_storeStrong(&oslog, 0);
  if (v15)
  {
    if (v15 == 1)
    {
      if (location)
      {
        [(BuddyMesaEnrollmentController *)v17 setIdentity:location];
        sub_1000C449C();
        v4 = objc_opt_new();
        [v4 enrollmentCompletedForIdentity:location];
      }
    }

    else if (v15 != 2)
    {
      switch(v15)
      {
        case 3:
          if (location)
          {
            v5 = +[PKBiometrics sharedInstance];
            [(PKBiometrics *)v5 removeIdentity:location];

            [(BuddyMesaEnrollmentController *)v17 setIdentity:0];
          }

          v6 = [(BuddyMesaEnrollmentController *)v17 flowSkipController];
          [(BYFlowSkipController *)v6 didSkipFlow:BYFlowSkipIdentifierTouchID];

          [(BuddyMesaEnrollmentController *)v17 completeMesaController];
          break;
        case 4:
          [(BuddyMesaEnrollmentController *)v17 completeMesaController];
          break;
        case 9:
          if (location)
          {
            v7 = +[PKBiometrics sharedInstance];
            [(PKBiometrics *)v7 removeIdentity:location];

            [(BuddyMesaEnrollmentController *)v17 setIdentity:0];
          }

          v8 = [(BuddyMesaEnrollmentController *)v17 enrollController];
          [(BiometricKitUIEnrollViewController *)v8 restartEnroll];

          break;
        case 10:
          [(BuddyMesaEnrollmentController *)v17 setIdentity:0];
          v9 = [(BuddyMesaEnrollmentController *)v17 navigationItem];
          [NSObject cancelPreviousPerformRequestsWithTarget:v9 selector:"setLeftBarButtonItem:" object:0];

          v10 = [(BuddyMesaEnrollmentController *)v17 navigationItem];
          [v10 setHidesBackButton:1];

          v11 = [(BuddyMesaEnrollmentController *)v17 navigationItem];
          v12 = [(BuddyMesaEnrollmentController *)v17 cancelLeftNavigationItem];
          [v11 setLeftBarButtonItem:v12 animated:1];

          break;
      }
    }
  }

  else
  {
    v17->_enrollComplete = 0;
    [(BuddyMesaEnrollmentController *)v17 resetLeftNavigationItem];
  }

  objc_storeStrong(&location, 0);
}

- (void)generateAuthToken
{
  v5 = self;
  location[1] = a2;
  [(BuddyMesaEnrollmentController *)self resetAuthContext];
  v2 = [(BuddyMesaEnrollmentController *)v5 authContext];
  location[0] = [(LAContext *)v2 externalizedContext];

  if (location[0])
  {
    v3 = [(BuddyMesaEnrollmentController *)v5 enrollController];
    [(BiometricKitUIEnrollViewController *)v3 setProperty:location[0] forKey:@"credset"];
  }

  objc_storeStrong(location, 0);
}

- (void)resetAuthContext
{
  v12 = self;
  location[1] = a2;
  [(BuddyMesaEnrollmentController *)self setAuthContext:0];
  v2 = [(BuddyMesaEnrollmentController *)v12 managedConfiguration];
  v3 = [(MCProfileConnection *)v2 isPasscodeSet]^ 1;

  if ((v3 & 1) == 0)
  {
    v4 = [(BuddyMesaEnrollmentController *)v12 passcodeCacheManager];
    v5 = [(BYPasscodeCacheManager *)v4 cachedPasscode];
    v6 = v5 == 0;

    if (v6)
    {
      location[0] = objc_alloc_init(BYBuddyDaemonGeneralClient);
      v7 = [location[0] fetchAuthenticationContextForBiometric];
      [(BuddyMesaEnrollmentController *)v12 setAuthContext:v7];

      v8 = [(BuddyMesaEnrollmentController *)v12 authContext];
      [(LAContext *)v8 setUiDelegate:v12];

      objc_storeStrong(location, 0);
    }

    else
    {
      v9 = objc_alloc_init(LAContext);
      [(BuddyMesaEnrollmentController *)v12 setAuthContext:v9];

      v10 = [(BuddyMesaEnrollmentController *)v12 authContext];
      [(LAContext *)v10 setUiDelegate:v12];

      [(BuddyMesaEnrollmentController *)v12 contextEvaluatePolicy];
    }
  }
}

- (void)contextEvaluatePolicy
{
  v15 = self;
  location[1] = a2;
  v2 = [(BuddyMesaEnrollmentController *)self authContext];
  v3 = v2 == 0;

  if (!v3)
  {
    location[0] = 0;
    v4 = [(BuddyMesaEnrollmentController *)v15 authContext];
    v17 = &off_10033D088;
    v18 = &off_10033D0A0;
    v5 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    obj = 0;
    v6 = [(LAContext *)v4 evaluatePolicy:1007 options:v5 error:&obj];
    objc_storeStrong(location, obj);

    if (location[0])
    {
      oslog = _BYLoggingFacility();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 0;
        v8 = 0;
        if (_BYIsInternalInstall())
        {
          v7 = location[0];
        }

        else if (location[0])
        {
          v11 = [location[0] domain];
          v10 = 1;
          v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v11, [location[0] code]);
          v9 = v7;
          v8 = 1;
        }

        else
        {
          v7 = 0;
        }

        sub_100071CBC(buf, v7);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Evaluate policy failed: %{public}@", buf, 0xCu);
        if (v8)
        {
        }

        if (v10)
        {
        }
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(location, 0);
  }
}

- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5
{
  v25 = self;
  v24 = a2;
  v23 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  if (v23 == 2)
  {
    v6 = [location objectForKey:&off_10033D0B8];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = [(BuddyMesaEnrollmentController *)v25 passcodeCacheManager];
      v9 = [(BYPasscodeCacheManager *)v8 cachedPasscode];

      if (v9)
      {
        v10 = [(BuddyMesaEnrollmentController *)v25 authContext];
        v11 = [(BuddyMesaEnrollmentController *)v25 passcodeCacheManager];
        v12 = [(BYPasscodeCacheManager *)v11 cachedPasscode];
        v13 = [v12 dataUsingEncoding:4];
        v14 = v23;
        v15 = _NSConcreteStackBlock;
        v16 = -1073741824;
        v17 = 0;
        v18 = sub_1000C4C5C;
        v19 = &unk_10032AEC8;
        v20 = v21;
        [(LAContext *)v10 setCredential:v13 forProcessedEvent:v14 credentialType:-1 reply:&v15];

        objc_storeStrong(&v20, 0);
      }

      else
      {
        (*(v21 + 2))(v21, 0, 0);
      }
    }
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end