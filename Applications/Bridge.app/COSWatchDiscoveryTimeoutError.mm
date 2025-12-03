@interface COSWatchDiscoveryTimeoutError
- (COSWatchDiscoveryTimeoutError)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)imageResource;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_radarButtonTapped;
- (void)_showRadarUI;
- (void)alternateButtonPressed:(id)pressed;
- (void)suggestedButtonPressed:(id)pressed;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  navigationController = [(COSWatchDiscoveryTimeoutError *)self navigationController];
  [navigationController setNavigationBarHidden:1];

  if (sub_100009A74())
  {
    [(COSWatchDiscoveryTimeoutError *)self _showRadarUI];
  }

  v6.receiver = self;
  v6.super_class = COSWatchDiscoveryTimeoutError;
  [(COSWatchDiscoveryTimeoutError *)&v6 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  navigationController = [(COSWatchDiscoveryTimeoutError *)self navigationController];
  [navigationController setNavigationBarHidden:0];

  v6.receiver = self;
  v6.super_class = COSWatchDiscoveryTimeoutError;
  [(COSWatchDiscoveryTimeoutError *)&v6 viewWillDisappear:disappearCopy];
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
  view = [(COSWatchDiscoveryTimeoutError *)self view];
  [view addSubview:v8];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [v8 topAnchor];
  illustratedWatchView = [(COSWatchDiscoveryTimeoutError *)self illustratedWatchView];
  bottomAnchor = [illustratedWatchView bottomAnchor];
  v13 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  [v13 setActive:1];

  bottomAnchor2 = [v8 bottomAnchor];
  contentView = [(COSWatchDiscoveryTimeoutError *)self contentView];
  bottomAnchor3 = [contentView bottomAnchor];
  v36 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];

  [v36 setActive:1];
  centerXAnchor = [v8 centerXAnchor];
  view2 = [(COSWatchDiscoveryTimeoutError *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v20 setActive:1];

  bottomAnchor4 = [v8 bottomAnchor];
  buttonTray = [(COSWatchDiscoveryTimeoutError *)self buttonTray];
  topAnchor2 = [buttonTray topAnchor];
  v32 = [bottomAnchor4 constraintEqualToAnchor:topAnchor2];
  v39[0] = v32;
  leftAnchor = [v8 leftAnchor];
  contentView2 = [(COSWatchDiscoveryTimeoutError *)self contentView];
  leftAnchor2 = [contentView2 leftAnchor];
  v22 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v39[1] = v22;
  rightAnchor = [v8 rightAnchor];
  contentView3 = [(COSWatchDiscoveryTimeoutError *)self contentView];
  rightAnchor2 = [contentView3 rightAnchor];
  v26 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v39[2] = v26;
  heightAnchor = [v8 heightAnchor];
  v28 = [heightAnchor constraintEqualToConstant:100.0];
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

- (void)suggestedButtonPressed:(id)pressed
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

- (void)alternateButtonPressed:(id)pressed
{
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:@"https://support.apple.com/HT209512"];
  [v4 openURL:v3 configuration:0 completionHandler:0];
}

- (id)imageResource
{
  v0 = +[UIApplication sharedApplication];
  activeWatch = [v0 activeWatch];
  v2 = sub_10002D568(activeWatch);

  return v2;
}

@end