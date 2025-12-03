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
- (void)didBecomeActive:(id)active;
- (void)didResignActive:(id)active;
- (void)endEnrollment;
- (void)enrollResult:(int)result bkIdentity:(id)identity;
- (void)event:(int64_t)event params:(id)params reply:(id)reply;
- (void)generateAuthToken;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)resetAuthContext;
- (void)resetLeftNavigationItem;
- (void)restartEnrollment;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyMesaEnrollmentController

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  [(BiometricKitUIEnrollViewController *)self->_enrollController setDelegate:0];
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:selfCopy];

  v3.receiver = selfCopy;
  v3.super_class = BuddyMesaEnrollmentController;
  [(BuddyMesaEnrollmentController *)&v3 dealloc];
}

- (BOOL)controllerNeedsToRun
{
  managedConfiguration = [(BuddyMesaEnrollmentController *)self managedConfiguration];
  v3 = [(MCProfileConnection *)managedConfiguration effectiveBoolValueForSetting:MCFeatureFingerprintModificationAllowed];

  if (v3 == 2)
  {
    return 0;
  }

  capabilities = [(BuddyMesaEnrollmentController *)self capabilities];
  v13 = 0;
  v5 = 0;
  if (([(BYCapabilities *)capabilities supportsTouchID]& 1) != 0)
  {
    capabilities2 = [(BuddyMesaEnrollmentController *)self capabilities];
    v13 = 1;
    v5 = [(BYCapabilities *)capabilities2 isTouchIDEnrolled]^ 1;
  }

  if (v13)
  {
  }

  v15 = v5 & 1;
  buddyPreferences = [(BuddyMesaEnrollmentController *)self buddyPreferences];
  v7 = 0;
  if (([(BYPreferencesController *)buddyPreferences BOOLForKey:@"Payment2Presented"]& 1) == 0)
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

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  managedConfiguration = [(BuddyMesaEnrollmentController *)selfCopy managedConfiguration];
  isPasscodeSet = [(MCProfileConnection *)managedConfiguration isPasscodeSet];

  if ((isPasscodeSet & 1) == 0)
  {
    (*(location[0] + 2))(location[0], 1);
    goto LABEL_6;
  }

  passcodeCacheManager = [(BuddyMesaEnrollmentController *)selfCopy passcodeCacheManager];
  cachedPasscode = [(BYPasscodeCacheManager *)passcodeCacheManager cachedPasscode];

  if (!cachedPasscode)
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
  capabilities = [(BuddyMesaEnrollmentController *)self capabilities];
  supportsTouchID = [(BYCapabilities *)capabilities supportsTouchID];
  v6 = 0;
  isTouchIDEnrolled = 0;
  if (supportsTouchID)
  {
    capabilities2 = [(BuddyMesaEnrollmentController *)self capabilities];
    v6 = 1;
    isTouchIDEnrolled = [(BYCapabilities *)capabilities2 isTouchIDEnrolled];
  }

  v9 = isTouchIDEnrolled & 1;
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

- (void)didBecomeActive:(id)active
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, active);
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
  if (!selfCopy->_enrollController)
  {
    navigationController = [(BuddyMesaEnrollmentController *)selfCopy navigationController];
    v6 = 1;
    topViewController = [navigationController topViewController];
    v4 = 1;
    v3 = topViewController == selfCopy;
  }

  if (v4)
  {
  }

  if (v6)
  {
  }

  if (v3)
  {
    [(BuddyMesaEnrollmentController *)selfCopy beginEnrollment];
  }

  objc_storeStrong(location, 0);
}

- (void)didResignActive:(id)active
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, active);
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
  if (!selfCopy->_enrollComplete)
  {
    navigationController = [(BuddyMesaEnrollmentController *)selfCopy navigationController];
    v6 = 1;
    topViewController = [navigationController topViewController];
    v4 = 1;
    v3 = topViewController == selfCopy;
  }

  if (v4)
  {
  }

  if (v6)
  {
  }

  if (v3)
  {
    [(BuddyMesaEnrollmentController *)selfCopy deleteIdentity];
  }

  [(BuddyMesaEnrollmentController *)selfCopy endEnrollment];
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = BuddyMesaEnrollmentController;
  [(BuddyMesaEnrollmentController *)&v6 viewDidLoad];
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"TOUCH_ID" value:&stru_10032F900 table:@"Localizable"];
  navigationItem = [(BuddyMesaEnrollmentController *)selfCopy navigationItem];
  [navigationItem setBackButtonTitle:v3];

  navigationItem2 = [(BuddyMesaEnrollmentController *)selfCopy navigationItem];
  [navigationItem2 setLeftItemsSupplementBackButton:0];
}

- (BOOL)prefersStatusBarHidden
{
  v2 = [(BuddyMesaEnrollmentController *)self enrollController:a2];
  prefersStatusBarHidden = [(BiometricKitUIEnrollViewController *)v2 prefersStatusBarHidden];

  return prefersStatusBarHidden & 1;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v12 = a2;
  appearCopy = appear;
  oslog = _BYLoggingFacility();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000B25DC(buf, "[BuddyMesaEnrollmentController viewWillAppear:]");
    _os_log_impl(&_mh_execute_header, oslog, v9, "BuddyMesaController: %s", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v8.receiver = selfCopy;
  v8.super_class = BuddyMesaEnrollmentController;
  [(BuddyMesaEnrollmentController *)&v8 viewWillAppear:appearCopy];
  paneFeatureAnalyticsManager = [(BuddyMesaEnrollmentController *)selfCopy paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager clearActionForFeature:12];

  view = [(BuddyMesaEnrollmentController *)selfCopy view];
  window = [view window];
  windowScene = [window windowScene];
  activationState = [windowScene activationState];

  if (!activationState)
  {
    [(BuddyMesaEnrollmentController *)selfCopy beginEnrollment];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v5 = a2;
  disappearCopy = disappear;
  v3.receiver = self;
  v3.super_class = BuddyMesaEnrollmentController;
  [(BuddyMesaEnrollmentController *)&v3 viewDidDisappear:disappear];
  [(BuddyMesaEnrollmentController *)selfCopy endEnrollment];
}

- (void)beginEnrollment
{
  selfCopy = self;
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
  sharedInstance = [sub_1000C38B8() sharedInstance];
  v14 = [sharedInstance getEnrollUIViewController:1 bundleName:0];
  if (v14)
  {
    [(BuddyMesaEnrollmentController *)selfCopy resetAuthContext];
    authContext = [(BuddyMesaEnrollmentController *)selfCopy authContext];
    location = [(LAContext *)authContext externalizedContext];

    if (location)
    {
      [v14 setProperty:location forKey:@"credset"];
    }

    menuButtonPressedBlock = [(BuddyMesaEnrollmentController *)selfCopy menuButtonPressedBlock];
    v6 = objc_retainBlock(menuButtonPressedBlock);
    [v14 setProperty:v6 forKey:@"MENU_ACTION"];

    [v14 setProperty:&__kCFBooleanTrue forKey:@"IN_BUDDY"];
    manager = [sub_1000C39CC() manager];
    [v14 setBiometricKit:manager];

    [v14 setDelegate:selfCopy];
    [(BuddyMesaEnrollmentController *)selfCopy addChildViewController:v14];
    view = [v14 view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    view2 = [(BuddyMesaEnrollmentController *)selfCopy view];
    view3 = [v14 view];
    [view2 addSubview:view3];

    view4 = [v14 view];
    view5 = [(BuddyMesaEnrollmentController *)selfCopy view];
    [view4 pinToEdges:view5];

    [v14 didMoveToParentViewController:selfCopy];
    [(BuddyMesaEnrollmentController *)selfCopy setEnrollController:v14];
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&sharedInstance, 0);
}

- (void)endEnrollment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(BuddyMesaEnrollmentController *)self enrollController];
  [location[0] beginAppearanceTransition:0 animated:1];
  [location[0] willMoveToParentViewController:0];
  view = [location[0] view];
  [view removeFromSuperview];

  [location[0] removeFromParentViewController];
  [location[0] endAppearanceTransition];
  [location[0] setDelegate:0];
  [(BuddyMesaEnrollmentController *)selfCopy setEnrollController:0];
  objc_storeStrong(location, 0);
}

- (void)restartEnrollment
{
  selfCopy = self;
  location[1] = a2;
  [(BuddyMesaEnrollmentController *)self deleteIdentity];
  [(BuddyMesaEnrollmentController *)selfCopy resetAuthContext];
  authContext = [(BuddyMesaEnrollmentController *)selfCopy authContext];
  location[0] = [(LAContext *)authContext externalizedContext];

  if (location[0])
  {
    enrollController = [(BuddyMesaEnrollmentController *)selfCopy enrollController];
    [(BiometricKitUIEnrollViewController *)enrollController setProperty:location[0] forKey:@"credset"];
  }

  enrollController2 = [(BuddyMesaEnrollmentController *)selfCopy enrollController];
  [(BiometricKitUIEnrollViewController *)enrollController2 restartEnroll];

  [(BuddyMesaEnrollmentController *)selfCopy resetLeftNavigationItem];
  objc_storeStrong(location, 0);
}

- (void)deleteIdentity
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000B25DC(buf, "[BuddyMesaEnrollmentController deleteIdentity]");
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "BuddyMesaController: %s", buf, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  identity = [(BuddyMesaEnrollmentController *)selfCopy identity];

  if (identity)
  {
    v3 = +[PKBiometrics sharedInstance];
    identity2 = [(BuddyMesaEnrollmentController *)selfCopy identity];
    [(PKBiometrics *)v3 removeIdentity:identity2];

    [(BuddyMesaEnrollmentController *)selfCopy setIdentity:0];
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
  navigationItem = [(BuddyMesaEnrollmentController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  cancelLeftNavigationItem = [(BuddyMesaEnrollmentController *)self cancelLeftNavigationItem];
  v5 = [leftBarButtonItem isEqual:cancelLeftNavigationItem];

  if (v5)
  {
    navigationItem2 = [(BuddyMesaEnrollmentController *)self navigationItem];
    [navigationItem2 performSelector:"setLeftBarButtonItem:animated:" withObject:0 withObject:&__kCFBooleanTrue];

    navigationItem3 = [(BuddyMesaEnrollmentController *)self navigationItem];
    [navigationItem3 setHidesBackButton:0];
  }
}

- (void)completeMesaController
{
  selfCopy = self;
  v13 = a2;
  self->_enrollComplete = 1;
  buddyPreferences = [(BuddyMesaEnrollmentController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanTrue forKey:@"Mesa2Presented"];

  capabilities = [(BuddyMesaEnrollmentController *)selfCopy capabilities];
  isTouchIDEnrolled = [(BYCapabilities *)capabilities isTouchIDEnrolled];

  v12 = isTouchIDEnrolled & 1;
  if (isTouchIDEnrolled)
  {
    flowSkipController = [(BuddyMesaEnrollmentController *)selfCopy flowSkipController];
    [(BYFlowSkipController *)flowSkipController didCompleteFlow:BYFlowSkipIdentifierTouchID];

    passcodeCacheManager = [(BuddyMesaEnrollmentController *)selfCopy passcodeCacheManager];
    cachedPasscode = [(BYPasscodeCacheManager *)passcodeCacheManager cachedPasscode];

    managedConfiguration = [(BuddyMesaEnrollmentController *)selfCopy managedConfiguration];
    [(MCProfileConnection *)managedConfiguration setFingerprintUnlockAllowed:1 passcode:cachedPasscode completion:0];

    objc_storeStrong(&cachedPasscode, 0);
  }

  paneFeatureAnalyticsManager = [(BuddyMesaEnrollmentController *)selfCopy paneFeatureAnalyticsManager];
  v9 = [NSNumber numberWithBool:v12 & 1];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager recordActionWithValue:v9 forFeature:12];

  delegate = [(BuddyMesaEnrollmentController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];
}

- (void)enrollResult:(int)result bkIdentity:(id)identity
{
  selfCopy = self;
  v16 = a2;
  resultCopy = result;
  location = 0;
  objc_storeStrong(&location, identity);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(buf, resultCopy);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "BuddyMesaController: Enroll result: %d", buf, 8u);
  }

  objc_storeStrong(&oslog, 0);
  if (resultCopy)
  {
    if (resultCopy == 1)
    {
      if (location)
      {
        [(BuddyMesaEnrollmentController *)selfCopy setIdentity:location];
        sub_1000C449C();
        v4 = objc_opt_new();
        [v4 enrollmentCompletedForIdentity:location];
      }
    }

    else if (resultCopy != 2)
    {
      switch(resultCopy)
      {
        case 3:
          if (location)
          {
            v5 = +[PKBiometrics sharedInstance];
            [(PKBiometrics *)v5 removeIdentity:location];

            [(BuddyMesaEnrollmentController *)selfCopy setIdentity:0];
          }

          flowSkipController = [(BuddyMesaEnrollmentController *)selfCopy flowSkipController];
          [(BYFlowSkipController *)flowSkipController didSkipFlow:BYFlowSkipIdentifierTouchID];

          [(BuddyMesaEnrollmentController *)selfCopy completeMesaController];
          break;
        case 4:
          [(BuddyMesaEnrollmentController *)selfCopy completeMesaController];
          break;
        case 9:
          if (location)
          {
            v7 = +[PKBiometrics sharedInstance];
            [(PKBiometrics *)v7 removeIdentity:location];

            [(BuddyMesaEnrollmentController *)selfCopy setIdentity:0];
          }

          enrollController = [(BuddyMesaEnrollmentController *)selfCopy enrollController];
          [(BiometricKitUIEnrollViewController *)enrollController restartEnroll];

          break;
        case 10:
          [(BuddyMesaEnrollmentController *)selfCopy setIdentity:0];
          navigationItem = [(BuddyMesaEnrollmentController *)selfCopy navigationItem];
          [NSObject cancelPreviousPerformRequestsWithTarget:navigationItem selector:"setLeftBarButtonItem:" object:0];

          navigationItem2 = [(BuddyMesaEnrollmentController *)selfCopy navigationItem];
          [navigationItem2 setHidesBackButton:1];

          navigationItem3 = [(BuddyMesaEnrollmentController *)selfCopy navigationItem];
          cancelLeftNavigationItem = [(BuddyMesaEnrollmentController *)selfCopy cancelLeftNavigationItem];
          [navigationItem3 setLeftBarButtonItem:cancelLeftNavigationItem animated:1];

          break;
      }
    }
  }

  else
  {
    selfCopy->_enrollComplete = 0;
    [(BuddyMesaEnrollmentController *)selfCopy resetLeftNavigationItem];
  }

  objc_storeStrong(&location, 0);
}

- (void)generateAuthToken
{
  selfCopy = self;
  location[1] = a2;
  [(BuddyMesaEnrollmentController *)self resetAuthContext];
  authContext = [(BuddyMesaEnrollmentController *)selfCopy authContext];
  location[0] = [(LAContext *)authContext externalizedContext];

  if (location[0])
  {
    enrollController = [(BuddyMesaEnrollmentController *)selfCopy enrollController];
    [(BiometricKitUIEnrollViewController *)enrollController setProperty:location[0] forKey:@"credset"];
  }

  objc_storeStrong(location, 0);
}

- (void)resetAuthContext
{
  selfCopy = self;
  location[1] = a2;
  [(BuddyMesaEnrollmentController *)self setAuthContext:0];
  managedConfiguration = [(BuddyMesaEnrollmentController *)selfCopy managedConfiguration];
  v3 = [(MCProfileConnection *)managedConfiguration isPasscodeSet]^ 1;

  if ((v3 & 1) == 0)
  {
    passcodeCacheManager = [(BuddyMesaEnrollmentController *)selfCopy passcodeCacheManager];
    cachedPasscode = [(BYPasscodeCacheManager *)passcodeCacheManager cachedPasscode];
    v6 = cachedPasscode == 0;

    if (v6)
    {
      location[0] = objc_alloc_init(BYBuddyDaemonGeneralClient);
      fetchAuthenticationContextForBiometric = [location[0] fetchAuthenticationContextForBiometric];
      [(BuddyMesaEnrollmentController *)selfCopy setAuthContext:fetchAuthenticationContextForBiometric];

      authContext = [(BuddyMesaEnrollmentController *)selfCopy authContext];
      [(LAContext *)authContext setUiDelegate:selfCopy];

      objc_storeStrong(location, 0);
    }

    else
    {
      v9 = objc_alloc_init(LAContext);
      [(BuddyMesaEnrollmentController *)selfCopy setAuthContext:v9];

      authContext2 = [(BuddyMesaEnrollmentController *)selfCopy authContext];
      [(LAContext *)authContext2 setUiDelegate:selfCopy];

      [(BuddyMesaEnrollmentController *)selfCopy contextEvaluatePolicy];
    }
  }
}

- (void)contextEvaluatePolicy
{
  selfCopy = self;
  location[1] = a2;
  authContext = [(BuddyMesaEnrollmentController *)self authContext];
  v3 = authContext == 0;

  if (!v3)
  {
    location[0] = 0;
    authContext2 = [(BuddyMesaEnrollmentController *)selfCopy authContext];
    v17 = &off_10033D088;
    v18 = &off_10033D0A0;
    v5 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    obj = 0;
    v6 = [(LAContext *)authContext2 evaluatePolicy:1007 options:v5 error:&obj];
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
          domain = [location[0] domain];
          v10 = 1;
          v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [location[0] code]);
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

- (void)event:(int64_t)event params:(id)params reply:(id)reply
{
  selfCopy = self;
  v24 = a2;
  eventCopy = event;
  location = 0;
  objc_storeStrong(&location, params);
  v21 = 0;
  objc_storeStrong(&v21, reply);
  if (eventCopy == 2)
  {
    v6 = [location objectForKey:&off_10033D0B8];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue)
    {
      passcodeCacheManager = [(BuddyMesaEnrollmentController *)selfCopy passcodeCacheManager];
      cachedPasscode = [(BYPasscodeCacheManager *)passcodeCacheManager cachedPasscode];

      if (cachedPasscode)
      {
        authContext = [(BuddyMesaEnrollmentController *)selfCopy authContext];
        passcodeCacheManager2 = [(BuddyMesaEnrollmentController *)selfCopy passcodeCacheManager];
        cachedPasscode2 = [(BYPasscodeCacheManager *)passcodeCacheManager2 cachedPasscode];
        v13 = [cachedPasscode2 dataUsingEncoding:4];
        v14 = eventCopy;
        v15 = _NSConcreteStackBlock;
        v16 = -1073741824;
        v17 = 0;
        v18 = sub_1000C4C5C;
        v19 = &unk_10032AEC8;
        v20 = v21;
        [(LAContext *)authContext setCredential:v13 forProcessedEvent:v14 credentialType:-1 reply:&v15];

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