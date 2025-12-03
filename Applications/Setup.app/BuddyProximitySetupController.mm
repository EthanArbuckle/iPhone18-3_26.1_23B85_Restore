@interface BuddyProximitySetupController
- (BOOL)_canPerformProximitySetup;
- (BOOL)controllerAllowsNavigatingBack;
- (BuddyProximitySetupController)init;
- (id)_secondaryGetStartedContentView;
- (int64_t)preferredStatusBarStyle;
- (void)_cleanUpAppLifecycleNotifications;
- (void)_cloudConfigurationDidChange:(id)change;
- (void)_observeAppLifecycleNotifications;
- (void)_setupManuallyTapped:(id)tapped;
- (void)_showAccessibilitySettings;
- (void)_stopAdvertisingAndFinishFlow;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)beginAdvertisingForProximitySetup;
- (void)endAdvertisingForProximitySetup;
- (void)loadView;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)startOver;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)willResignActive:(id)active;
@end

@implementation BuddyProximitySetupController

- (BuddyProximitySetupController)init
{
  selfCopy = self;
  location[1] = a2;
  v2 = +[NSBundle mainBundle];
  v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PROXIMITY_SETUP_TITLE"];
  location[0] = [(NSBundle *)v2 localizedStringForKey:v3 value:&stru_10032F900 table:@"Localizable"];

  v4 = selfCopy;
  selfCopy = 0;
  v7.receiver = v4;
  v7.super_class = BuddyProximitySetupController;
  selfCopy = [(BuddyProximitySetupController *)&v7 initWithTitle:location[0] detailText:0 icon:0 contentLayout:4];
  v5 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)loadView
{
  selfCopy = self;
  v47 = a2;
  v46.receiver = self;
  v46.super_class = BuddyProximitySetupController;
  [(BuddyProximitySetupController *)&v46 loadView];
  v45 = MGCopyAnswer();
  v2 = [[BuddyPosedDeviceView alloc] initWithPairForProductType:v45];
  [(BuddyProximitySetupController *)selfCopy setDeviceView:v2];

  deviceView = [(BuddyProximitySetupController *)selfCopy deviceView];
  [(BuddyPosedDeviceView *)deviceView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(BuddyProximitySetupController *)selfCopy contentView];
  deviceView2 = [(BuddyProximitySetupController *)selfCopy deviceView];
  [contentView addSubview:deviceView2];

  deviceView3 = [(BuddyProximitySetupController *)selfCopy deviceView];
  backgroundColor = [(BuddyPosedDeviceView *)deviceView3 backgroundColor];
  contentView2 = [(BuddyProximitySetupController *)selfCopy contentView];
  [contentView2 setBackgroundColor:backgroundColor];

  contentView3 = [(BuddyProximitySetupController *)selfCopy contentView];
  leftAnchor = [contentView3 leftAnchor];
  deviceView4 = [(BuddyProximitySetupController *)selfCopy deviceView];
  leftAnchor2 = [(BuddyPosedDeviceView *)deviceView4 leftAnchor];
  v38 = [leftAnchor constraintEqualToAnchor:?];
  v49[0] = v38;
  contentView4 = [(BuddyProximitySetupController *)selfCopy contentView];
  topAnchor = [contentView4 topAnchor];
  deviceView5 = [(BuddyProximitySetupController *)selfCopy deviceView];
  topAnchor2 = [(BuddyPosedDeviceView *)deviceView5 topAnchor];
  v33 = [topAnchor constraintEqualToAnchor:?];
  v49[1] = v33;
  contentView5 = [(BuddyProximitySetupController *)selfCopy contentView];
  rightAnchor = [contentView5 rightAnchor];
  deviceView6 = [(BuddyProximitySetupController *)selfCopy deviceView];
  rightAnchor2 = [(BuddyPosedDeviceView *)deviceView6 rightAnchor];
  v12 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v49[2] = v12;
  contentView6 = [(BuddyProximitySetupController *)selfCopy contentView];
  bottomAnchor = [contentView6 bottomAnchor];
  deviceView7 = [(BuddyProximitySetupController *)selfCopy deviceView];
  bottomAnchor2 = [(BuddyPosedDeviceView *)deviceView7 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v49[3] = v17;
  v18 = [NSArray arrayWithObjects:v49 count:4];
  [NSLayoutConstraint activateConstraints:v18];

  v19 = selfCopy;
  v20 = +[NSBundle mainBundle];
  v21 = [(NSBundle *)v20 localizedStringForKey:@"PROXIMITY_SETUP_MANUALLY" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v19 addLinkButton:v21 action:"_setupManuallyTapped:"];

  v22 = +[BuddyAccessibilityUtilities accessibilityViewController];
  if (v22)
  {
    featureFlags = [(BuddyProximitySetupController *)selfCopy featureFlags];
    isSolariumEnabled = [(BuddyFeatureFlags *)featureFlags isSolariumEnabled];

    if (isSolariumEnabled)
    {
      v25 = [BuddyAccessibilityUtilities navigationBarButtonItemWithTarget:selfCopy selector:"_showAccessibilitySettings"];
      navigationItem = [(BuddyProximitySetupController *)selfCopy navigationItem];
      [navigationItem setRightBarButtonItem:v25];
    }

    else
    {
      location = +[BuddyAccessibilityUtilities navigationBarButton];
      [location addTarget:selfCopy action:"_showAccessibilitySettings" forControlEvents:64];
      v27 = [BuddyAccessibilityUtilities navigationBarButtonItemWithButton:location];
      navigationItem2 = [(BuddyProximitySetupController *)selfCopy navigationItem];
      [navigationItem2 setRightBarButtonItem:v27];

      objc_storeStrong(&location, 0);
    }
  }

  v29 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v29 addObserver:selfCopy selector:"_cloudConfigurationDidChange:" name:MCCloudConfigurationDidChangeNotification object:0];

  _secondaryGetStartedContentView = [(BuddyProximitySetupController *)selfCopy _secondaryGetStartedContentView];
  secondaryContentView = [(BuddyProximitySetupController *)selfCopy secondaryContentView];
  [secondaryContentView addSubview:_secondaryGetStartedContentView];

  secondaryContentView2 = [(BuddyProximitySetupController *)selfCopy secondaryContentView];
  [_secondaryGetStartedContentView pinToEdges:secondaryContentView2];

  objc_storeStrong(&_secondaryGetStartedContentView, 0);
  objc_storeStrong(&v45, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v6 = a2;
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = BuddyProximitySetupController;
  [(BuddyProximitySetupController *)&v4 viewWillAppear:appear];
  deviceView = [(BuddyProximitySetupController *)selfCopy deviceView];
  [(BuddyPosedDeviceView *)deviceView startAnimation];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = BuddyProximitySetupController;
  [(BuddyProximitySetupController *)&v5 viewDidAppear:appear];
  proximitySetupController = [(BuddyProximitySetupController *)selfCopy proximitySetupController];
  [(ProximitySetupController *)proximitySetupController setUserSkippedProximity:0];

  if (([(BuddyProximitySetupController *)selfCopy isMovingToParentViewController]& 1) != 0)
  {
    proximitySetupController2 = [(BuddyProximitySetupController *)selfCopy proximitySetupController];
    [(ProximitySetupController *)proximitySetupController2 setIntentToMigrate:0];
  }

  if (([(BuddyProximitySetupController *)selfCopy isMovingFromParentViewController]& 1) == 0)
  {
    [(BuddyProximitySetupController *)selfCopy beginAdvertisingForProximitySetup];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v6 = a2;
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = BuddyProximitySetupController;
  [(BuddyProximitySetupController *)&v4 viewDidDisappear:disappear];
  if (([(BuddyProximitySetupController *)selfCopy isMovingFromParentViewController]& 1) != 0)
  {
    [(BuddyProximitySetupController *)selfCopy endAdvertisingForProximitySetup];
  }

  [(BuddyProximitySetupController *)selfCopy _cleanUpAppLifecycleNotifications];
  deviceView = [(BuddyProximitySetupController *)selfCopy deviceView];
  [(BuddyPosedDeviceView *)deviceView pauseAnimation];
}

- (int64_t)preferredStatusBarStyle
{
  traitCollection = [(BuddyProximitySetupController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
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
  delegate = [(BuddyWelcomeController *)self delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:self];
}

- (void)_showAccessibilitySettings
{
  selfCopy = self;
  location[1] = a2;
  location[0] = +[BuddyAccessibilityUtilities accessibilityViewController];
  if (location[0])
  {
    [(BuddyProximitySetupController *)selfCopy presentViewController:location[0] animated:1 completion:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_cloudConfigurationDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10010EF68;
  v8 = &unk_10032B0D0;
  v9 = selfCopy;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_setupManuallyTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  proximitySetupController = [(BuddyProximitySetupController *)selfCopy proximitySetupController];
  [(ProximitySetupController *)proximitySetupController setUserSkippedProximity:1];

  proximitySetupController2 = [(BuddyProximitySetupController *)selfCopy proximitySetupController];
  [(ProximitySetupController *)proximitySetupController2 setIntentToMigrate:0];

  [(BuddyProximitySetupController *)selfCopy _stopAdvertisingAndFinishFlow];
  objc_storeStrong(location, 0);
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10010F308;
  v8 = &unk_10032BCA0;
  v10 = location[0];
  v9 = selfCopy;
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
  proximitySetupController = [(BuddyProximitySetupController *)self proximitySetupController];
  [(ProximitySetupController *)proximitySetupController setUserSkippedProximity:0];

  proximitySetupController2 = [(BuddyProximitySetupController *)self proximitySetupController];
  [(ProximitySetupController *)proximitySetupController2 setIntentToMigrate:0];
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
  proximitySetupController = [(BuddyProximitySetupController *)self proximitySetupController];
  shouldEnableProximity = [(ProximitySetupController *)proximitySetupController shouldEnableProximity];
  v6 = 0;
  v4 = 0;
  if (shouldEnableProximity)
  {
    proximitySetupController2 = [(BuddyProximitySetupController *)self proximitySetupController];
    v6 = 1;
    v4 = ![(ProximitySetupController *)proximitySetupController2 hasAppliedSettings];
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
  proximitySetupController = [(BuddyProximitySetupController *)self proximitySetupController];
  [(ProximitySetupController *)proximitySetupController beginAdvertisingProximitySetup];
}

- (void)endAdvertisingForProximitySetup
{
  [(BuddyProximitySetupController *)self _cleanUpAppLifecycleNotifications];
  proximitySetupController = [(BuddyProximitySetupController *)self proximitySetupController];
  [(ProximitySetupController *)proximitySetupController endAdvertisingProximitySetup];
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

- (void)applicationWillEnterForeground:(id)foreground
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, foreground);
  proximitySetupController = [(BuddyProximitySetupController *)selfCopy proximitySetupController];
  [(ProximitySetupController *)proximitySetupController beginAdvertisingProximitySetup];

  objc_storeStrong(location, 0);
}

- (void)willResignActive:(id)active
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, active);
  proximitySetupController = [(BuddyProximitySetupController *)selfCopy proximitySetupController];
  [(ProximitySetupController *)proximitySetupController endAdvertisingProximitySetup];

  objc_storeStrong(location, 0);
}

@end