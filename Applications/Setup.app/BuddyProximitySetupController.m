@interface BuddyProximitySetupController
- (BOOL)_canPerformProximitySetup;
- (BOOL)controllerAllowsNavigatingBack;
- (BuddyProximitySetupController)init;
- (id)_secondaryGetStartedContentView;
- (int64_t)preferredStatusBarStyle;
- (void)_cleanUpAppLifecycleNotifications;
- (void)_cloudConfigurationDidChange:(id)a3;
- (void)_observeAppLifecycleNotifications;
- (void)_setupManuallyTapped:(id)a3;
- (void)_showAccessibilitySettings;
- (void)_stopAdvertisingAndFinishFlow;
- (void)applicationWillEnterForeground:(id)a3;
- (void)beginAdvertisingForProximitySetup;
- (void)endAdvertisingForProximitySetup;
- (void)loadView;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)startOver;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)willResignActive:(id)a3;
@end

@implementation BuddyProximitySetupController

- (BuddyProximitySetupController)init
{
  v9 = self;
  location[1] = a2;
  v2 = +[NSBundle mainBundle];
  v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PROXIMITY_SETUP_TITLE"];
  location[0] = [(NSBundle *)v2 localizedStringForKey:v3 value:&stru_10032F900 table:@"Localizable"];

  v4 = v9;
  v9 = 0;
  v7.receiver = v4;
  v7.super_class = BuddyProximitySetupController;
  v9 = [(BuddyProximitySetupController *)&v7 initWithTitle:location[0] detailText:0 icon:0 contentLayout:4];
  v5 = v9;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)loadView
{
  v48 = self;
  v47 = a2;
  v46.receiver = self;
  v46.super_class = BuddyProximitySetupController;
  [(BuddyProximitySetupController *)&v46 loadView];
  v45 = MGCopyAnswer();
  v2 = [[BuddyPosedDeviceView alloc] initWithPairForProductType:v45];
  [(BuddyProximitySetupController *)v48 setDeviceView:v2];

  v3 = [(BuddyProximitySetupController *)v48 deviceView];
  [(BuddyPosedDeviceView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(BuddyProximitySetupController *)v48 contentView];
  v5 = [(BuddyProximitySetupController *)v48 deviceView];
  [v4 addSubview:v5];

  v6 = [(BuddyProximitySetupController *)v48 deviceView];
  v7 = [(BuddyPosedDeviceView *)v6 backgroundColor];
  v8 = [(BuddyProximitySetupController *)v48 contentView];
  [v8 setBackgroundColor:v7];

  v42 = [(BuddyProximitySetupController *)v48 contentView];
  v40 = [v42 leftAnchor];
  v41 = [(BuddyProximitySetupController *)v48 deviceView];
  v39 = [(BuddyPosedDeviceView *)v41 leftAnchor];
  v38 = [v40 constraintEqualToAnchor:?];
  v49[0] = v38;
  v37 = [(BuddyProximitySetupController *)v48 contentView];
  v35 = [v37 topAnchor];
  v36 = [(BuddyProximitySetupController *)v48 deviceView];
  v34 = [(BuddyPosedDeviceView *)v36 topAnchor];
  v33 = [v35 constraintEqualToAnchor:?];
  v49[1] = v33;
  v32 = [(BuddyProximitySetupController *)v48 contentView];
  v9 = [v32 rightAnchor];
  v10 = [(BuddyProximitySetupController *)v48 deviceView];
  v11 = [(BuddyPosedDeviceView *)v10 rightAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v49[2] = v12;
  v13 = [(BuddyProximitySetupController *)v48 contentView];
  v14 = [v13 bottomAnchor];
  v15 = [(BuddyProximitySetupController *)v48 deviceView];
  v16 = [(BuddyPosedDeviceView *)v15 bottomAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v49[3] = v17;
  v18 = [NSArray arrayWithObjects:v49 count:4];
  [NSLayoutConstraint activateConstraints:v18];

  v19 = v48;
  v20 = +[NSBundle mainBundle];
  v21 = [(NSBundle *)v20 localizedStringForKey:@"PROXIMITY_SETUP_MANUALLY" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v19 addLinkButton:v21 action:"_setupManuallyTapped:"];

  v22 = +[BuddyAccessibilityUtilities accessibilityViewController];
  if (v22)
  {
    v23 = [(BuddyProximitySetupController *)v48 featureFlags];
    v24 = [(BuddyFeatureFlags *)v23 isSolariumEnabled];

    if (v24)
    {
      v25 = [BuddyAccessibilityUtilities navigationBarButtonItemWithTarget:v48 selector:"_showAccessibilitySettings"];
      v26 = [(BuddyProximitySetupController *)v48 navigationItem];
      [v26 setRightBarButtonItem:v25];
    }

    else
    {
      location = +[BuddyAccessibilityUtilities navigationBarButton];
      [location addTarget:v48 action:"_showAccessibilitySettings" forControlEvents:64];
      v27 = [BuddyAccessibilityUtilities navigationBarButtonItemWithButton:location];
      v28 = [(BuddyProximitySetupController *)v48 navigationItem];
      [v28 setRightBarButtonItem:v27];

      objc_storeStrong(&location, 0);
    }
  }

  v29 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v29 addObserver:v48 selector:"_cloudConfigurationDidChange:" name:MCCloudConfigurationDidChangeNotification object:0];

  v43 = [(BuddyProximitySetupController *)v48 _secondaryGetStartedContentView];
  v30 = [(BuddyProximitySetupController *)v48 secondaryContentView];
  [v30 addSubview:v43];

  v31 = [(BuddyProximitySetupController *)v48 secondaryContentView];
  [v43 pinToEdges:v31];

  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v45, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddyProximitySetupController;
  [(BuddyProximitySetupController *)&v4 viewWillAppear:a3];
  v3 = [(BuddyProximitySetupController *)v7 deviceView];
  [(BuddyPosedDeviceView *)v3 startAnimation];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = BuddyProximitySetupController;
  [(BuddyProximitySetupController *)&v5 viewDidAppear:a3];
  v3 = [(BuddyProximitySetupController *)v8 proximitySetupController];
  [(ProximitySetupController *)v3 setUserSkippedProximity:0];

  if (([(BuddyProximitySetupController *)v8 isMovingToParentViewController]& 1) != 0)
  {
    v4 = [(BuddyProximitySetupController *)v8 proximitySetupController];
    [(ProximitySetupController *)v4 setIntentToMigrate:0];
  }

  if (([(BuddyProximitySetupController *)v8 isMovingFromParentViewController]& 1) == 0)
  {
    [(BuddyProximitySetupController *)v8 beginAdvertisingForProximitySetup];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddyProximitySetupController;
  [(BuddyProximitySetupController *)&v4 viewDidDisappear:a3];
  if (([(BuddyProximitySetupController *)v7 isMovingFromParentViewController]& 1) != 0)
  {
    [(BuddyProximitySetupController *)v7 endAdvertisingForProximitySetup];
  }

  [(BuddyProximitySetupController *)v7 _cleanUpAppLifecycleNotifications];
  v3 = [(BuddyProximitySetupController *)v7 deviceView];
  [(BuddyPosedDeviceView *)v3 pauseAnimation];
}

- (int64_t)preferredStatusBarStyle
{
  v2 = [(BuddyProximitySetupController *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (void)_stopAdvertisingAndFinishFlow
{
  [(BuddyProximitySetupController *)self endAdvertisingForProximitySetup];
  v2 = [(BuddyWelcomeController *)self delegate];
  [(BFFFlowItemDelegate *)v2 flowItemDone:self];
}

- (void)_showAccessibilitySettings
{
  v3 = self;
  location[1] = a2;
  location[0] = +[BuddyAccessibilityUtilities accessibilityViewController];
  if (location[0])
  {
    [(BuddyProximitySetupController *)v3 presentViewController:location[0] animated:1 completion:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_cloudConfigurationDidChange:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10010EF68;
  v8 = &unk_10032B0D0;
  v9 = v11;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_setupManuallyTapped:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximitySetupController *)v6 proximitySetupController];
  [(ProximitySetupController *)v3 setUserSkippedProximity:1];

  v4 = [(BuddyProximitySetupController *)v6 proximitySetupController];
  [(ProximitySetupController *)v4 setIntentToMigrate:0];

  [(BuddyProximitySetupController *)v6 _stopAdvertisingAndFinishFlow];
  objc_storeStrong(location, 0);
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10010F308;
  v8 = &unk_10032BCA0;
  v10 = location[0];
  v9 = v12;
  dispatch_async(v3, &block);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)controllerAllowsNavigatingBack
{
  v2 = [(BuddyProximitySetupController *)self proximitySetupController:a2];
  v3 = ![(ProximitySetupController *)v2 hasAppliedSettings];

  return v3 & 1;
}

- (void)startOver
{
  v2 = [(BuddyProximitySetupController *)self proximitySetupController];
  [(ProximitySetupController *)v2 setUserSkippedProximity:0];

  v3 = [(BuddyProximitySetupController *)self proximitySetupController];
  [(ProximitySetupController *)v3 setIntentToMigrate:0];
}

- (id)_secondaryGetStartedContentView
{
  location[2] = self;
  location[1] = a2;
  location[0] = [[BuddyGetStartedSecondaryContentView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [location[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = location[0];
  objc_storeStrong(location, 0);
  return v2;
}

- (BOOL)_canPerformProximitySetup
{
  v2 = [(BuddyProximitySetupController *)self proximitySetupController];
  v3 = [(ProximitySetupController *)v2 shouldEnableProximity];
  v6 = 0;
  v4 = 0;
  if (v3)
  {
    v7 = [(BuddyProximitySetupController *)self proximitySetupController];
    v6 = 1;
    v4 = ![(ProximitySetupController *)v7 hasAppliedSettings];
  }

  v9 = v4 & 1;
  if (v6)
  {
  }

  return v9 & 1;
}

- (void)beginAdvertisingForProximitySetup
{
  [(BuddyProximitySetupController *)self _observeAppLifecycleNotifications];
  v2 = [(BuddyProximitySetupController *)self proximitySetupController];
  [(ProximitySetupController *)v2 beginAdvertisingProximitySetup];
}

- (void)endAdvertisingForProximitySetup
{
  [(BuddyProximitySetupController *)self _cleanUpAppLifecycleNotifications];
  v2 = [(BuddyProximitySetupController *)self proximitySetupController];
  [(ProximitySetupController *)v2 endAdvertisingProximitySetup];
}

- (void)_observeAppLifecycleNotifications
{
  [(BuddyProximitySetupController *)self _cleanUpAppLifecycleNotifications];
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 addObserver:self selector:"applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 addObserver:self selector:"willResignActive:" name:UIApplicationWillResignActiveNotification object:0];
}

- (void)_cleanUpAppLifecycleNotifications
{
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:self name:UIApplicationWillResignActiveNotification object:0];
}

- (void)applicationWillEnterForeground:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximitySetupController *)v5 proximitySetupController];
  [(ProximitySetupController *)v3 beginAdvertisingProximitySetup];

  objc_storeStrong(location, 0);
}

- (void)willResignActive:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximitySetupController *)v5 proximitySetupController];
  [(ProximitySetupController *)v3 endAdvertisingProximitySetup];

  objc_storeStrong(location, 0);
}

@end