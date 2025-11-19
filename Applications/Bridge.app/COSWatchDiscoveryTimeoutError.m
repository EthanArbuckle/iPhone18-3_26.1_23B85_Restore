@interface COSWatchDiscoveryTimeoutError
- (COSWatchDiscoveryTimeoutError)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)imageResource;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_radarButtonTapped;
- (void)_showRadarUI;
- (void)alternateButtonPressed:(id)a3;
- (void)suggestedButtonPressed:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation COSWatchDiscoveryTimeoutError

- (COSWatchDiscoveryTimeoutError)init
{
  v5.receiver = self;
  v5.super_class = COSWatchDiscoveryTimeoutError;
  v2 = [(COSOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSWatchDiscoveryTimeoutError *)v2 setStyle:74];
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(COSWatchDiscoveryTimeoutError *)self navigationController];
  [v5 setNavigationBarHidden:1];

  if (sub_100009A74())
  {
    [(COSWatchDiscoveryTimeoutError *)self _showRadarUI];
  }

  v6.receiver = self;
  v6.super_class = COSWatchDiscoveryTimeoutError;
  [(COSWatchDiscoveryTimeoutError *)&v6 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(COSWatchDiscoveryTimeoutError *)self navigationController];
  [v5 setNavigationBarHidden:0];

  v6.receiver = self;
  v6.super_class = COSWatchDiscoveryTimeoutError;
  [(COSWatchDiscoveryTimeoutError *)&v6 viewWillDisappear:v3];
}

- (void)_showRadarUI
{
  v3 = objc_opt_new();
  [v3 setText:@"[Internal-Only: Unable to discover watch.  You'll need a watch dock to file a bug as both phone and watch sysdiagnoses are required.]"];
  v4 = +[UIColor whiteColor];
  [v3 setTextColor:v4];

  v38 = v3;
  [v3 setNumberOfLines:0];
  v5 = [UIButton buttonWithType:1];
  [v5 setTitle:@"File a Radar" forState:0];
  v6 = +[UIColor systemOrangeColor];
  [v5 setTintColor:v6];

  v7 = v5;
  v37 = v5;
  [v5 addTarget:self action:"_radarButtonTapped" forEvents:64];
  v8 = objc_opt_new();
  [v8 setAxis:1];
  [v8 setAlignment:3];
  [v8 setDistribution:0];
  [v8 setSpacing:8.0];
  [v8 addArrangedSubview:v3];
  [v8 addArrangedSubview:v7];
  v9 = [(COSWatchDiscoveryTimeoutError *)self view];
  [v9 addSubview:v8];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v8 topAnchor];
  v11 = [(COSWatchDiscoveryTimeoutError *)self illustratedWatchView];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [v8 bottomAnchor];
  v15 = [(COSWatchDiscoveryTimeoutError *)self contentView];
  v16 = [v15 bottomAnchor];
  v36 = [v14 constraintEqualToAnchor:v16];

  [v36 setActive:1];
  v17 = [v8 centerXAnchor];
  v18 = [(COSWatchDiscoveryTimeoutError *)self view];
  v19 = [v18 centerXAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v34 = [v8 bottomAnchor];
  v35 = [(COSWatchDiscoveryTimeoutError *)self buttonTray];
  v33 = [v35 topAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v39[0] = v32;
  v30 = [v8 leftAnchor];
  v31 = [(COSWatchDiscoveryTimeoutError *)self contentView];
  v21 = [v31 leftAnchor];
  v22 = [v30 constraintEqualToAnchor:v21];
  v39[1] = v22;
  v23 = [v8 rightAnchor];
  v24 = [(COSWatchDiscoveryTimeoutError *)self contentView];
  v25 = [v24 rightAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  v39[2] = v26;
  v27 = [v8 heightAnchor];
  v28 = [v27 constraintEqualToConstant:100.0];
  v39[3] = v28;
  v29 = [NSArray arrayWithObjects:v39 count:4];
  [NSLayoutConstraint activateConstraints:v29];
}

- (void)_radarButtonTapped
{
  v3 = [[BPSTTRMetadata alloc] initWithComponent:0];
  [v3 setTitle:@"Bridge unable to discover watch"];
  v2 = [NSString stringWithFormat:@"IMPORTANT: Please manually grab and attach a sysdiagnose from the Watch you are pairing!  You will need a dock to do this. If you are unable to get a sysdiagnose from the watch, this bug will not be actionable!"];
  [v3 setRadarDescription:v2];

  [BPSTapToRadarCoordinator openTapToRadarWithInitialMetadata:v3];
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WATCH_IS_OFF_OR_ALREADY_PAIRED_ALERT_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WATCH_IS_OFF_OR_ALREADY_PAIRED_ALERT_BODY" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"CANCEL_SETUP_FLOW" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"GENERIC_PAIRING_FAILURE_ALERT_LEARN_MORE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)suggestedButtonPressed:(id)a3
{
  v3 = pbb_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[COSWatchDiscoveryTimeoutError suggestedButtonPressed:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  v4 = +[UIApplication sharedApplication];
  [v4 dismissSetupFlowComplete:1 animated:1];
}

- (void)alternateButtonPressed:(id)a3
{
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:@"https://support.apple.com/HT209512"];
  [v4 openURL:v3 configuration:0 completionHandler:0];
}

- (id)imageResource
{
  v0 = +[UIApplication sharedApplication];
  v1 = [v0 activeWatch];
  v2 = sub_10002D568(v1);

  return v2;
}

@end