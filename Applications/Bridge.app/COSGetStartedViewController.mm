@interface COSGetStartedViewController
- (COSGetStartedViewController)init;
- (COSGetStartedViewControllerDelegate)getStartedDelegate;
- (id)_getUnpairInstructions;
- (id)detailString;
- (id)learnMoreButtonTitle;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_logConnectionDescription;
- (void)_spinnerFinished;
- (void)_tappedInternalManualMode:(id)mode;
- (void)_unregisterNRObserver;
- (void)dealloc;
- (void)learnMoreButtonPressed:(id)pressed;
- (void)nanoRegistryStatusChanged:(id)changed;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)registerNRObserver;
- (void)setPairingInfrastructureIsBusy:(BOOL)busy;
- (void)showConnectivityAlert;
- (void)startUpdatingWelcomeText;
- (void)stopUpdatingWelcomeText;
- (void)suggestedButtonPressed:(id)pressed;
- (void)updateImagesWithAnimation;
- (void)updateRadioState;
- (void)updateUIState;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSGetStartedViewController

- (COSGetStartedViewController)init
{
  v12.receiver = self;
  v12.super_class = COSGetStartedViewController;
  v2 = [(COSGetStartedViewController *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(COSGetStartedViewController *)v2 setStyle:18];
    v3->_isAutomationUIEnabled = sub_10002D04C();
    v4 = BPSDeviceRemoteAssetString();
    desiredImageName = v3->_desiredImageName;
    v3->_desiredImageName = v4;

    objc_storeStrong(&v3->_fallbackImageName, PBAssetsSetupAppleWatchSplashFallbackAssetName);
    v6 = +[NRPairedDeviceRegistry sharedInstance];
    status = [v6 status];

    if (status != 2)
    {
      [(COSGetStartedViewController *)v3 setPairingInfrastructureIsBusy:1];
      v8 = pbb_setupflow_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(Get Started Controller) Waiting for NR to be ready (Was Not Ready At Init)...", v11, 2u);
      }

      [(COSGetStartedViewController *)v3 registerNRObserver];
    }

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v3 selector:"updateImagesWithAnimation" name:PBBridgeMobileAssetsChangedNotification object:0];
  }

  return v3;
}

- (void)dealloc
{
  [(MCProfileConnection *)self->_mcConnection unregisterObserver:self];
  [(COSGetStartedViewController *)self stopUpdatingWelcomeText];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(COSGetStartedViewController *)self _unregisterNRObserver];
  v4.receiver = self;
  v4.super_class = COSGetStartedViewController;
  [(COSGetStartedViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v63.receiver = self;
  v63.super_class = COSGetStartedViewController;
  [(COSGetStartedViewController *)&v63 viewDidLoad];
  desiredImageName = [(COSGetStartedViewController *)self desiredImageName];
  v4 = [UIImage imageNamed:desiredImageName];

  if (!v4)
  {
    fallbackImageName = [(COSGetStartedViewController *)self fallbackImageName];
    v4 = [UIImage imageNamed:fallbackImageName];
  }

  v6 = [[UIImageView alloc] initWithImage:v4];
  marketingBannerImage = self->_marketingBannerImage;
  self->_marketingBannerImage = v6;

  layer = [(UIImageView *)self->_marketingBannerImage layer];
  [layer setMinificationFilter:kCAFilterTrilinear];

  [(UIImageView *)self->_marketingBannerImage setContentMode:1];
  contentView = [(COSGetStartedViewController *)self contentView];
  [contentView addSubview:self->_marketingBannerImage];

  [(UIImageView *)self->_marketingBannerImage setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(UIImageView *)self->_marketingBannerImage topAnchor];
  contentView2 = [(COSGetStartedViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v13 setActive:1];

  bottomAnchor = [(UIImageView *)self->_marketingBannerImage bottomAnchor];
  contentView3 = [(COSGetStartedViewController *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v17 setActive:1];

  leftAnchor = [(UIImageView *)self->_marketingBannerImage leftAnchor];
  contentView4 = [(COSGetStartedViewController *)self contentView];
  leftAnchor2 = [contentView4 leftAnchor];
  v21 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v21 setActive:1];

  rightAnchor = [(UIImageView *)self->_marketingBannerImage rightAnchor];
  contentView5 = [(COSGetStartedViewController *)self contentView];
  rightAnchor2 = [contentView5 rightAnchor];
  v25 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v25 setActive:1];

  if (self->_isAutomationUIEnabled)
  {
    v26 = [UIButton buttonWithType:1];
    automationButton = self->_automationButton;
    self->_automationButton = v26;

    [(UIButton *)self->_automationButton setAccessibilityIdentifier:@"AutomationButton"];
    v28 = self->_automationButton;
    v29 = BPSPillButtonImage();
    [(UIButton *)v28 setImage:v29 forState:0];

    v30 = self->_automationButton;
    v31 = BPSPillButtonImage();
    [(UIButton *)v30 setImage:v31 forState:4];

    v32 = self->_automationButton;
    v33 = +[UIColor whiteColor];
    [(UIButton *)v32 setTintColor:v33];

    [(UIButton *)self->_automationButton addTarget:self action:"_tappedInternalManualMode:" forControlEvents:64];
    view = [(COSGetStartedViewController *)self view];
    [view addSubview:self->_automationButton];

    [(UIButton *)self->_automationButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_automationButton sizeToFit];
    centerXAnchor = [(UIButton *)self->_automationButton centerXAnchor];
    view2 = [(COSGetStartedViewController *)self view];
    centerXAnchor2 = [view2 centerXAnchor];
    v37 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v64[0] = v37;
    bottomAnchor3 = [(UIButton *)self->_automationButton bottomAnchor];
    view3 = [(COSGetStartedViewController *)self view];
    bottomAnchor4 = [view3 bottomAnchor];
    v41 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-100.0];
    v64[1] = v41;
    [NSArray arrayWithObjects:v64 count:2];
    v43 = v42 = v4;
    [NSLayoutConstraint activateConstraints:v43];

    v4 = v42;
  }

  v44 = +[MCProfileConnection sharedConnection];
  mcConnection = self->_mcConnection;
  self->_mcConnection = v44;

  [(MCProfileConnection *)self->_mcConnection registerObserver:self];
  if ((sub_100007C2C() & 1) != 0 || [(MCProfileConnection *)self->_mcConnection effectiveBoolValueForSetting:MCFeaturePairedWatchAllowed]== 2)
  {
    suggestedChoiceButton = [(COSGetStartedViewController *)self suggestedChoiceButton];
    [suggestedChoiceButton setEnabled:0];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1000416CC, @"com.apple.bluetooth.power-changed", 0, 1024);
  v48 = +[NSUserDefaults standardUserDefaults];
  v49 = [v48 BOOLForKey:@"__SkipReachabilityChecks"];

  if ((v49 & 1) == 0)
  {
    v50 = +[NSNotificationCenter defaultCenter];
    [v50 addObserver:self selector:"updateRadioStateForNotification:" name:@"COSReachabilityMonitorChangedNotification" object:0];
  }

  [(COSGetStartedViewController *)self startUpdatingWelcomeText];
  v51 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  spinner = self->_spinner;
  self->_spinner = v51;

  [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
  [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  suggestedChoiceButton2 = [(COSGetStartedViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton2 addSubview:self->_spinner];

  centerYAnchor = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
  suggestedChoiceButton3 = [(COSGetStartedViewController *)self suggestedChoiceButton];
  centerYAnchor2 = [suggestedChoiceButton3 centerYAnchor];
  v57 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v57 setActive:1];

  centerXAnchor3 = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  suggestedChoiceButton4 = [(COSGetStartedViewController *)self suggestedChoiceButton];
  centerXAnchor4 = [suggestedChoiceButton4 centerXAnchor];
  v61 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v61 setActive:1];

  [(COSGetStartedViewController *)self updateRadioState];
  [(COSGetStartedViewController *)self refreshViews];
}

- (void)updateImagesWithAnimation
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "updating hero image in get started ViewController", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000417FC;
  v7[3] = &unk_1002682F0;
  v7[4] = self;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000419B0;
  block[3] = &unk_100268C18;
  block[4] = self;
  v6 = objc_retainBlock(v7);
  v4 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_getUnpairInstructions
{
  unpairInstructions = self->_unpairInstructions;
  if (!unpairInstructions)
  {
    v4 = objc_alloc_init(COSWatchUnpairInstructionsController);
    v5 = self->_unpairInstructions;
    self->_unpairInstructions = v4;

    unpairInstructions = self->_unpairInstructions;
  }

  return unpairInstructions;
}

- (void)viewDidAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = COSGetStartedViewController;
  [(COSGetStartedViewController *)&v12 viewDidAppear:appear];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"DisplayGraduationUnpairInstructions"];

  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v14) = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Has Alt account: %d", buf, 8u);
  }

  if (v5)
  {
    v7 = +[NRPairedDeviceRegistry sharedInstance];
    watchNeedsGraduation = [v7 watchNeedsGraduation];

    if (watchNeedsGraduation)
    {
      v9 = pbb_setupflow_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        _getUnpairInstructions = [(COSGetStartedViewController *)self _getUnpairInstructions];
        *buf = 138412290;
        v14 = _getUnpairInstructions;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Present unpair instructions : %@", buf, 0xCu);
      }

      _getUnpairInstructions2 = [(COSGetStartedViewController *)self _getUnpairInstructions];
      [_getUnpairInstructions2 presentWithController:self];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = COSGetStartedViewController;
  [(COSGetStartedViewController *)&v10 viewWillAppear:appear];
  [(COSGetStartedViewController *)self updateWelcomeText];
  [(COSGetStartedViewController *)self is_addGestureRecognizer];
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  compatibilityState = [v4 compatibilityState];

  v6 = +[NRPairedDeviceRegistry sharedInstance];
  [v6 status];

  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NRPairedDeviceRegistryStatusCodeString();
    *buf = 67109890;
    v12 = 245;
    v13 = 2080;
    v14 = "[COSGetStartedViewController viewWillAppear:]";
    v15 = 2048;
    v16 = compatibilityState;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%d %s - NR State: %lu; Status: %@", buf, 0x26u);
  }

  if (compatibilityState - 4 <= 0xFFFFFFFD)
  {
    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(Get Started Controller) Waiting for NR to be ready (View Will Appear)...", buf, 2u);
    }

    [(COSGetStartedViewController *)self registerNRObserver];
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = COSGetStartedViewController;
  [(COSGetStartedViewController *)&v4 viewDidLayoutSubviews];
  if (self->_isAutomationUIEnabled)
  {
    view = [(COSGetStartedViewController *)self view];
    [view bringSubviewToFront:self->_automationButton];
  }
}

- (id)titleString
{
  v2 = +[NSCalendar currentCalendar];
  v3 = +[NSDate date];
  v4 = [v2 components:32 fromDate:v3];

  hour = [v4 hour];
  if ((hour - 12) >= 5)
  {
    v6 = @"WELCOME_NIGHT";
  }

  else
  {
    v6 = @"WELCOME_DAY";
  }

  if ((hour - 2) >= 0xA)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"WELCOME_MORNING";
  }

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:v7 value:&stru_10026E598 table:@"Localizable"];

  return v9;
}

- (id)detailString
{
  pairingInfrastructureIsBusy = self->_pairingInfrastructureIsBusy;
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (pairingInfrastructureIsBusy)
  {
    v5 = @"WAITING_FOR_NR";
  }

  else
  {
    v5 = @"READY_TO_START";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_10026E598 table:@"Localizable"];

  return v6;
}

- (id)suggestedButtonTitle
{
  v2 = sub_10002DF9C();
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"YES_START_GT";
  }

  else
  {
    v5 = @"YES_START";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_10026E598 table:@"Localizable"];

  return v6;
}

- (id)learnMoreButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"LEARN_MORE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  objc_initWeak(&location, self);
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  suggestedChoiceButton = [(COSGetStartedViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton setEnabled:0];

  suggestedChoiceButton2 = [(COSGetStartedViewController *)self suggestedChoiceButton];
  titleLabel = [suggestedChoiceButton2 titleLabel];
  [titleLabel setHidden:1];

  v8 = +[COSReachabilityMonitor sharedMonitor];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100042284;
  v10[3] = &unk_100268458;
  objc_copyWeak(&v12, &location);
  v9 = v8;
  v11 = v9;
  [v9 updateRadioStateWithCompletion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)learnMoreButtonPressed:(id)pressed
{
  v3 = UIApp;
  v4 = sub_10002D2A4();
  [v3 openURL:v4 withCompletionHandler:0];
}

- (void)_tappedInternalManualMode:(id)mode
{
  modeCopy = mode;
  objc_initWeak(&location, self);
  suggestedChoiceButton = [(COSGetStartedViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton setEnabled:0];

  suggestedChoiceButton2 = [(COSGetStartedViewController *)self suggestedChoiceButton];
  titleLabel = [suggestedChoiceButton2 titleLabel];
  [titleLabel setHidden:1];

  v8 = +[COSReachabilityMonitor sharedMonitor];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000424D0;
  v10[3] = &unk_100268458;
  objc_copyWeak(&v12, &location);
  v9 = v8;
  v11 = v9;
  [v9 updateRadioStateWithCompletion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)startUpdatingWelcomeText
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"updateWelcomeText" name:UIApplicationWillEnterForegroundNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"updateWelcomeText" name:UIApplicationDidBecomeActiveNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"updateWelcomeText" name:UIApplicationSignificantTimeChangeNotification object:0];

  v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"updateWelcomeText" selector:0 userInfo:1 repeats:60.0];
  welcomeTextUpdater = self->_welcomeTextUpdater;
  self->_welcomeTextUpdater = v6;
}

- (void)stopUpdatingWelcomeText
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIApplicationDidBecomeActiveNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];

  [(NSTimer *)self->_welcomeTextUpdater invalidate];
  welcomeTextUpdater = self->_welcomeTextUpdater;
  self->_welcomeTextUpdater = 0;
}

- (void)setPairingInfrastructureIsBusy:(BOOL)busy
{
  self->_pairingInfrastructureIsBusy = busy;
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    pairingInfrastructureIsBusy = self->_pairingInfrastructureIsBusy;
    v6[0] = 67109120;
    v6[1] = pairingInfrastructureIsBusy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setPairingInfrastructureIsBusy: %d ", v6, 8u);
  }

  [(COSGetStartedViewController *)self updateUIState];
}

- (void)updateUIState
{
  if (!self->_pairingInfrastructureIsBusy)
  {
    [(COSGetStartedViewController *)self updateRadioState];
  }

  [(COSGetStartedViewController *)self refreshViews];
}

- (void)_spinnerFinished
{
  spinner = [(COSGetStartedViewController *)self spinner];
  [spinner stopAnimating];

  suggestedChoiceButton = [(COSGetStartedViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton setEnabled:1];

  suggestedChoiceButton2 = [(COSGetStartedViewController *)self suggestedChoiceButton];
  titleLabel = [suggestedChoiceButton2 titleLabel];
  [titleLabel setHidden:0];
}

- (void)updateRadioState
{
  v3 = +[COSReachabilityMonitor sharedMonitor];
  [v3 updateReachabilityRadioState];

  [(COSGetStartedViewController *)self _logConnectionDescription];
}

- (void)_logConnectionDescription
{
  v2 = MGGetBoolAnswer();
  v3 = +[PSBluetoothSettingsDetail isEnabled];
  v4 = +[COSReachabilityMonitor sharedMonitor];
  isNetworkReachable = [v4 isNetworkReachable];

  if ((v2 & (v3 ^ 1) & 1) != 0 || !isNetworkReachable)
  {
    v6 = pbb_setupflow_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10018735C(isNetworkReachable, v6);
    }
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  v5 = [(COSGetStartedViewController *)self suggestedChoiceButton:notification];
  [v5 setEnabled:{-[MCProfileConnection effectiveBoolValueForSetting:](self->_mcConnection, "effectiveBoolValueForSetting:", MCFeaturePairedWatchAllowed) != 2}];
}

- (void)registerNRObserver
{
  if (!self->_didRegisterNRObserver)
  {
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(Get Started Controller) registerNRObserver", v5, 2u);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"nanoRegistryStatusChanged:" name:NRPairedDeviceRegistryStatusDidChange object:0];

    self->_didRegisterNRObserver = 1;
  }
}

- (void)_unregisterNRObserver
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  self->_didRegisterNRObserver = 0;
}

- (void)showConnectivityAlert
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"PAIRING_GET_CONNECTED_ALERT_TITLE" value:&stru_10026E598 table:@"Localizable"];
  v5 = +[NSBundle mainBundle];
  v6 = SFLocalizableWAPIStringKeyForKey();
  v7 = [v5 localizedStringForKey:v6 value:&stru_10026E598 table:@"Localizable"];
  v8 = [UIAlertController alertControllerWithTitle:v4 message:v7 preferredStyle:1];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"GET_CONNECTED_ALERT_CANCEL" value:&stru_10026E598 table:@"Localizable"];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];
  [v8 addAction:v11];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"GET_CONNECTED_ALERT_TURN_ON" value:&stru_10026E598 table:@"Localizable"];
  v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:&stru_100269180];
  [v8 addAction:v14];

  v15 = pbb_setupflow_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Presenting 'pairing get connected' alert", v16, 2u);
  }

  [(COSGetStartedViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)nanoRegistryStatusChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:NRPairedDeviceRegistryStatusKey];

  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(Get Started Controller) NR Status Changed to %@", &v8, 0xCu);
  }

  if (v5)
  {
    integerValue = [v5 integerValue];
    if ((integerValue - 5) >= 0xFFFFFFFFFFFFFFFDLL)
    {
      [(COSGetStartedViewController *)self setPairingInfrastructureIsBusy:integerValue != 2];
    }
  }
}

- (COSGetStartedViewControllerDelegate)getStartedDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_getStartedDelegate);

  return WeakRetained;
}

@end