@interface COSPairingTypeSelectionViewController
+ (BOOL)controllerNeedsToRun;
- (BOOL)offerYorktown;
- (COSPairingTypeSelectionViewController)init;
- (id)alternateButtonTitle;
- (id)captionText;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)alternateButtonPressed:(id)a3;
- (void)applyConfirmedOptin:(BOOL)a3;
- (void)applyConfirmedOptinAndCheckMaxDeviceCount:(BOOL)a3;
- (void)didEstablishHold;
- (void)discoveryOperationComplete;
- (void)dismissSetupFlow:(id)a3;
- (void)preflightPairingFlowAgainstDeviceTakeoverProtection:(BOOL)a3;
- (void)suggestedButtonPressed:(id)a3;
- (void)updateHeroImageWithAnimation;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation COSPairingTypeSelectionViewController

+ (BOOL)controllerNeedsToRun
{
  v2 = [UIApp setupController];
  v3 = [v2 resumePairingController];
  v4 = [v3 isResumingPairing];

  return v4 ^ 1;
}

- (COSPairingTypeSelectionViewController)init
{
  v14.receiver = self;
  v14.super_class = COSPairingTypeSelectionViewController;
  v2 = [(COSOptinViewController *)&v14 init];
  v3 = v2;
  if (v2)
  {
    [(COSPairingTypeSelectionViewController *)v2 setStyle:22];
    v4 = objc_alloc_init(COSSatellitePairingHelper);
    satellitePairingHelper = v3->_satellitePairingHelper;
    v3->_satellitePairingHelper = v4;

    [(COSSatellitePairingHelper *)v3->_satellitePairingHelper setAlertPresentationViewController:v3];
    v6 = BPSDeviceRemoteAssetString();
    desiredImageName = v3->_desiredImageName;
    v3->_desiredImageName = v6;

    objc_storeStrong(&v3->_fallbackImageName, PBAssetsSetupAppleWatchSplashFallbackAssetName);
    v8 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    spinner = v3->_spinner;
    v3->_spinner = v8;

    v10 = [[COSBuddyWatchDiscoveryMonitor alloc] initWithPresentingViewController:v3];
    buddyWatchDiscoveryMonitor = v3->_buddyWatchDiscoveryMonitor;
    v3->_buddyWatchDiscoveryMonitor = v10;

    [(COSBuddyWatchDiscoveryMonitor *)v3->_buddyWatchDiscoveryMonitor setDelegate:v3];
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v3 selector:"updateHeroImageWithAnimation" name:PBBridgeMobileAssetsChangedNotification object:0];
  }

  return v3;
}

- (void)didEstablishHold
{
  v3 = [UIApp setupController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C92E4;
  v4[3] = &unk_1002682F0;
  v4[4] = self;
  [v3 updateStagedMDMEnrollmentDataForPairingWatchWithCompletion:v4];
}

- (BOOL)offerYorktown
{
  v2 = [UIApp setupController];
  v3 = [v2 offerYorktownForCurrentPairing];

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = COSPairingTypeSelectionViewController;
  [(COSPairingTypeSelectionViewController *)&v9 viewWillAppear:a3];
  [(COSBuddyWatchDiscoveryMonitor *)self->_buddyWatchDiscoveryMonitor startDiscoveryCoordinator];
  v4 = [(COSPairingTypeSelectionViewController *)self navigationItem];
  v5 = [UIBarButtonItem alloc];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"CANCEL_SETUP_FLOW" value:&stru_10026E598 table:@"Localizable"];
  v8 = [v5 initWithTitle:v7 style:0 target:self action:"dismissSetupFlow:"];

  [v4 setRightBarButtonItem:v8 animated:0];
}

- (void)viewDidLoad
{
  v45.receiver = self;
  v45.super_class = COSPairingTypeSelectionViewController;
  [(COSPairingTypeSelectionViewController *)&v45 viewDidLoad];
  v3 = [(COSPairingTypeSelectionViewController *)self desiredImageName];
  v4 = [UIImage imageNamed:v3];

  if (!v4)
  {
    v5 = [(COSPairingTypeSelectionViewController *)self fallbackImageName];
    v4 = [UIImage imageNamed:v5];
  }

  v6 = [[UIImageView alloc] initWithImage:v4];
  [(COSPairingTypeSelectionViewController *)self setMarketingBannerImage:v6];

  v7 = [(COSPairingTypeSelectionViewController *)self marketingBannerImage];
  v8 = [v7 layer];
  [v8 setMinificationFilter:kCAFilterTrilinear];

  v9 = [(COSPairingTypeSelectionViewController *)self marketingBannerImage];
  [v9 setContentMode:1];

  v10 = [(COSPairingTypeSelectionViewController *)self contentView];
  v11 = [(COSPairingTypeSelectionViewController *)self marketingBannerImage];
  [v10 addSubview:v11];

  v12 = [(COSPairingTypeSelectionViewController *)self marketingBannerImage];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [(COSPairingTypeSelectionViewController *)self marketingBannerImage];
  v14 = [v13 topAnchor];
  v15 = [(COSPairingTypeSelectionViewController *)self contentView];
  v16 = [v15 topAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [(COSPairingTypeSelectionViewController *)self marketingBannerImage];
  v19 = [v18 bottomAnchor];
  v20 = [(COSPairingTypeSelectionViewController *)self contentView];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  v23 = [(COSPairingTypeSelectionViewController *)self marketingBannerImage];
  v24 = [v23 leftAnchor];
  v25 = [(COSPairingTypeSelectionViewController *)self contentView];
  v26 = [v25 leftAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  [v27 setActive:1];

  v28 = [(COSPairingTypeSelectionViewController *)self marketingBannerImage];
  v29 = [v28 rightAnchor];
  v30 = [(COSPairingTypeSelectionViewController *)self contentView];
  v31 = [v30 rightAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  [v32 setActive:1];

  if (self->_spinner)
  {
    v33 = [(COSPairingTypeSelectionViewController *)self buttonTray];
    [v33 addSubview:self->_spinner];

    [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = [(UIActivityIndicatorView *)self->_spinner bottomAnchor];
    v35 = [(COSPairingTypeSelectionViewController *)self buttonTray];
    v36 = [v35 topAnchor];
    v37 = [v34 constraintEqualToAnchor:v36 constant:-16.0];
    [v37 setActive:1];

    v38 = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
    v39 = [(COSPairingTypeSelectionViewController *)self buttonTray];
    v40 = [v39 centerXAnchor];
    v41 = [v38 constraintEqualToAnchor:v40];
    [v41 setActive:1];
  }

  v42 = [(COSPairingTypeSelectionViewController *)self navigationItem];
  v43 = [(COSPairingTypeSelectionViewController *)self titleString];
  [v42 setBackButtonTitle:v43];

  v44 = [(COSPairingTypeSelectionViewController *)self navigationItem];
  [v44 setBackButtonDisplayMode:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = COSPairingTypeSelectionViewController;
  [(COSPairingTypeSelectionViewController *)&v5 viewDidDisappear:a3];
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[COSPairingTypeSelectionViewController viewDidDisappear:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  self->_handledButtonAction = 0;
}

- (void)updateHeroImageWithAnimation
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "updating hero image in pairing type selection ViewController", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C9AD8;
  v7[3] = &unk_1002682F0;
  v7[4] = self;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C9CA0;
  block[3] = &unk_100268C18;
  block[4] = self;
  v6 = objc_retainBlock(v7);
  v4 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)dismissSetupFlow:(id)a3
{
  [PBBridgeCAReporter incrementSuccessType:17];
  v3 = UIApp;

  [v3 dismissSetupFlowComplete:0 animated:1];
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SETUP_CHOICE_TITLE" value:&stru_10026E598 table:@"Localizable"];
  v4 = [NSString stringWithFormat:v3];

  return v4;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SETUP_CHOICE_SUBTITLE" value:&stru_10026E598 table:@"Localizable"];
  v4 = [NSString stringWithFormat:v3];

  return v4;
}

- (id)captionText
{
  if ([(COSPairingTypeSelectionViewController *)self offerYorktown])
  {
    v2 = 0;
  }

  else
  {
    v3 = sub_10002DF9C();
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    if (v3)
    {
      v6 = @"SETUP_CHOICE_CAPTION_TEXT_GT";
    }

    else
    {
      v6 = @"SETUP_CHOICE_CAPTION_TEXT";
    }

    v2 = [v4 localizedStringForKey:v6 value:&stru_10026E598 table:@"Localizable-tinker"];
  }

  return v2;
}

- (void)suggestedButtonPressed:(id)a3
{
  if (self->_handledButtonAction)
  {
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[COSPairingTypeSelectionViewController suggestedButtonPressed:]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: already handled button action. Skipping", &v4, 0xCu);
    }
  }

  else
  {
    self->_handledButtonAction = 1;

    [(COSPairingTypeSelectionViewController *)self preflightPairingFlowAgainstDeviceTakeoverProtection:1];
  }
}

- (void)alternateButtonPressed:(id)a3
{
  if (self->_handledButtonAction)
  {
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[COSPairingTypeSelectionViewController alternateButtonPressed:]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: already handled button action. Skipping", &v4, 0xCu);
    }
  }

  else
  {
    self->_handledButtonAction = 1;

    [(COSPairingTypeSelectionViewController *)self preflightPairingFlowAgainstDeviceTakeoverProtection:0];
  }
}

- (void)applyConfirmedOptin:(BOOL)a3
{
  v3 = a3;
  v5 = [UIApp automationFlowPressed];
  if (v3)
  {
    v6 = v5;
    v7 = [UIApp bridgeController];
    [v7 setTinkerPairing:0];

    if ([(COSPairingTypeSelectionViewController *)self offerYorktown]|| !_os_feature_enabled_impl())
    {
      v11 = [(COSPairingTypeSelectionViewController *)self delegate];
      [v11 buddyControllerDone:self];
    }

    else
    {
      [(COSBuddyWatchDiscoveryMonitor *)self->_buddyWatchDiscoveryMonitor discoverWatchesOrShowSpinner];
    }

    if ((sub_10002D04C() & v6) == 1)
    {
      v12 = +[NSNotificationCenter defaultCenter];
      [v12 postNotificationName:@"COSDevicePresentInternalManualPairing" object:0];
    }
  }

  else
  {
    [(UIActivityIndicatorView *)self->_spinner startAnimating];
    v8 = [(COSPairingTypeSelectionViewController *)self suggestedChoiceButton];
    [v8 setEnabled:0];

    v9 = [(COSPairingTypeSelectionViewController *)self alternateChoiceButton];
    [v9 setEnabled:0];

    objc_initWeak(&location, self);
    v10 = [(COSPairingTypeSelectionViewController *)self satellitePairingHelper];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000CA3A0;
    v13[3] = &unk_100268260;
    objc_copyWeak(&v14, &location);
    [v10 checkPairingPreconditionsWithCompletion:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SETUP_TYPE_CLASSIC" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)alternateButtonTitle
{
  if ([(COSPairingTypeSelectionViewController *)self offerYorktown])
  {
    v2 = 0;
  }

  else
  {
    v3 = +[NSBundle mainBundle];
    v2 = [v3 localizedStringForKey:@"SETUP_TYPE_SATELLITE" value:&stru_10026E598 table:@"Localizable-tinker"];
  }

  return v2;
}

- (void)preflightPairingFlowAgainstDeviceTakeoverProtection:(BOOL)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = objc_alloc_init(LAContext);
    v6 = pbb_setupflow_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[COSPairingTypeSelectionViewController preflightPairingFlowAgainstDeviceTakeoverProtection:]";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s ~ Context: %@", buf, 0x16u);
    }

    v12[0] = &off_100281CF0;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"SETUP_DTO_PROTECTION_REASON" value:&stru_10026E598 table:@"Localizable"];
    v12[1] = &off_100281D08;
    v13[0] = v8;
    v13[1] = &__kCFBooleanTrue;
    v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000CA818;
    v10[3] = &unk_10026B2C0;
    v10[4] = self;
    v11 = v3;
    [v5 evaluatePolicy:1025 options:v9 reply:v10];
  }

  else
  {

    [(COSPairingTypeSelectionViewController *)self applyConfirmedOptinAndCheckMaxDeviceCount:v3];
  }
}

- (void)applyConfirmedOptinAndCheckMaxDeviceCount:(BOOL)a3
{
  v3 = a3;
  v5 = [NSNumber numberWithInt:!a3];
  v33 = 0;
  v6 = sub_100005808(v5, &v33);
  v7 = v33;

  if (v6)
  {
    [(COSPairingTypeSelectionViewController *)self applyConfirmedOptin:v3];
    goto LABEL_19;
  }

  v8 = [(__CFString *)v7 code];
  if (v8 <= 3)
  {
    v9 = v8;
    v10 = [(__CFString *)v7 domain];
    v11 = [v10 isEqualToString:@"com.apple.Bridge-QuickSwitchPairing"];

    if (v11)
    {
      v12 = off_10026B300[v9];
      v13 = BPSRemoteUISetupStyle_ptr;
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:v12 value:&stru_10026E598 table:@"Pairing"];

      if (v9 > 1)
      {
        v16 = +[NSBundle mainBundle];
        v17 = v16;
        if (v9 == 2)
        {
          v18 = @"FROZEN_FOR_RETAIL_DEMO";
        }

        else
        {
          v18 = @"MAX_PAIRING_FOR_RETAIL_DEMO";
        }
      }

      else
      {
        if (v9)
        {
          v17 = +[NSBundle mainBundle];
          v30 = [v17 localizedStringForKey:@"MAX_WATCH_MESSAGE_TINKER" value:&stru_10026E598 table:@"Localizable-tinker"];
          v31 = +[NRPairedDeviceRegistry sharedInstance];
          v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 maxPairedDeviceCount]);
          v19 = [NSNumberFormatter localizedStringFromNumber:v29 numberStyle:0];
          v20 = +[NRPairedDeviceRegistry sharedInstance];
          v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v20 maxTinkerPairedDeviceCount]);
          v22 = [NSNumberFormatter localizedStringFromNumber:v21 numberStyle:0];
          v23 = [NSString stringWithFormat:v30, v19, v22];

          v13 = BPSRemoteUISetupStyle_ptr;
          goto LABEL_13;
        }

        v16 = +[NSBundle mainBundle];
        v17 = v16;
        v18 = @"INCOMPATIBLE_WATCH_MESSAGE";
      }

      v23 = [v16 localizedStringForKey:v18 value:&stru_10026E598 table:@"Pairing"];
LABEL_13:

      if (v15 && v23)
      {
        v24 = [UIAlertController alertControllerWithTitle:v15 message:v23 preferredStyle:1];
        v25 = [v13[501] mainBundle];
        v26 = [v25 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
        v27 = [UIAlertAction actionWithTitle:v26 style:1 handler:&stru_10026B2E0];
        [v24 addAction:v27];

        v28 = pbb_setupflow_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Presenting new pairing flow alert", buf, 2u);
        }

        [(COSPairingTypeSelectionViewController *)self presentViewController:v24 animated:0 completion:0];
      }
    }
  }

LABEL_19:
}

- (void)discoveryOperationComplete
{
  v3 = [(COSPairingTypeSelectionViewController *)self delegate];
  [v3 buddyControllerDone:self];
}

@end