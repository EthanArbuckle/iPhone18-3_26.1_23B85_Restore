@interface COSUpdateWatchViewController
- (COSUpdateWatchViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)learnMoreButtonTitle;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_showInternalOnlySkipButton;
- (void)_skipUpdateAndContinue;
- (void)abortPairing;
- (void)alternateButtonPressed:(id)pressed;
- (void)learnMoreButtonPressed:(id)pressed;
- (void)suggestedButtonPressed:(id)pressed;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSUpdateWatchViewController

- (COSUpdateWatchViewController)init
{
  v10.receiver = self;
  v10.super_class = COSUpdateWatchViewController;
  v2 = [(COSOptinViewController *)&v10 init];
  if (v2)
  {
    setupController = [UIApp setupController];
    pairingCompatiblity = [setupController pairingCompatiblity];
    pairingCompatibility = v2->_pairingCompatibility;
    v2->_pairingCompatibility = pairingCompatiblity;

    if ([(COSPairingCompatibility *)v2->_pairingCompatibility requiresZeroDayUpdate])
    {
      zeroDayUpdateLearnMoreLink = [(COSPairingCompatibility *)v2->_pairingCompatibility zeroDayUpdateLearnMoreLink];

      if (zeroDayUpdateLearnMoreLink)
      {
        v7 = 90;
      }

      else
      {
        v7 = 74;
      }
    }

    else
    {
      v7 = 74;
    }

    [(COSUpdateWatchViewController *)v2 setStyle:v7];
    if ([(COSPairingCompatibility *)v2->_pairingCompatibility failSafeUpdateRequested]&& ![(COSPairingCompatibility *)v2->_pairingCompatibility requiresZeroDayUpdate])
    {
      v8 = ![(COSPairingCompatibility *)v2->_pairingCompatibility yorktownForceSU];
    }

    else
    {
      v8 = 0;
    }

    v2->_isSkippable = v8;
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (sub_100009A74() && [(COSPairingCompatibility *)self->_pairingCompatibility requiresZeroDayUpdate])
  {
    [(COSUpdateWatchViewController *)self _showInternalOnlySkipButton];
  }

  v5.receiver = self;
  v5.super_class = COSUpdateWatchViewController;
  [(COSUpdateWatchViewController *)&v5 viewWillAppear:appearCopy];
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"UPDATE_YOUR_WATCH" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"UPDATE_YOUR_WATCH_HEADLINE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"UPDATE_SOFTWARE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)alternateButtonTitle
{
  isSkippable = self->_isSkippable;
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (isSkippable)
  {
    v5 = @"SKIP_FORCED_SU";
  }

  else
  {
    v5 = @"SKIP_UPDATE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_10026E598 table:@"Localizable"];

  return v6;
}

- (id)learnMoreButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SETTINGS_TRANSPARENCY_LEARN_MORE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[COSUpdateWatchViewController suggestedButtonPressed:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  suggestedChoiceButton = [(COSUpdateWatchViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton setEnabled:0];

  alternateChoiceButton = [(COSUpdateWatchViewController *)self alternateChoiceButton];
  [alternateChoiceButton setEnabled:0];

  setupUpdateManager = self->_setupUpdateManager;
  if (!setupUpdateManager)
  {
    setupController = [UIApp setupController];
    setupSoftwareUpdateManager = [setupController setupSoftwareUpdateManager];
    v10 = self->_setupUpdateManager;
    self->_setupUpdateManager = setupSoftwareUpdateManager;

    setupUpdateManager = self->_setupUpdateManager;
  }

  isSkippable = self->_isSkippable;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005E768;
  v12[3] = &unk_100269758;
  v12[4] = self;
  [(COSSetupSoftwareUpdateManager *)setupUpdateManager startUpdateInSetupWithController:self forcedUpdateOrUpdateInBackup:isSkippable completion:v12];
}

- (void)alternateButtonPressed:(id)pressed
{
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    isSkippable = self->_isSkippable;
    v8 = 136315394;
    v9 = "[COSUpdateWatchViewController alternateButtonPressed:]";
    v10 = 1024;
    v11 = isSkippable;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s, isSkippable: %i", &v8, 0x12u);
  }

  if (self->_isSkippable)
  {
    [(COSUpdateWatchViewController *)self _skipUpdateAndContinue];
  }

  else
  {
    setupController = [UIApp setupController];
    pairingReportManager = [setupController pairingReportManager];

    [pairingReportManager addPairingTimeEventToPairingReportPlist:56 withValue:&__kCFBooleanTrue withError:0];
    [(COSUpdateWatchViewController *)self abortPairing];
  }
}

- (void)learnMoreButtonPressed:(id)pressed
{
  v3 = UIApp;
  zeroDayUpdateLearnMoreLink = [(COSPairingCompatibility *)self->_pairingCompatibility zeroDayUpdateLearnMoreLink];
  [v3 openURL:zeroDayUpdateLearnMoreLink withCompletionHandler:&stru_100269778];
}

- (void)abortPairing
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  activeWatch = [UIApp activeWatch];
  v5 = [activeWatch valueForProperty:NRDevicePropertyIsPaired];
  bOOLValue = [v5 BOOLValue];

  isActivated = [UIApp isActivated];
  v8 = pbb_bridge_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (activeWatch && ((bOOLValue | isActivated) & 1) != 0)
  {
    if (v9)
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User Reset Buddy! - Unpairing", v12, 2u);
    }

    v13[0] = @"obliterate";
    v13[1] = @"BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2";
    v14[0] = &__kCFBooleanTrue;
    v14[1] = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    v11 = +[NRPairedDeviceRegistry sharedInstance];
    [v11 unpairWithDevice:activeWatch withOptions:v10 operationHasBegun:&stru_100269798];
  }

  else
  {
    if (v9)
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User Reset Buddy!", v12, 2u);
    }

    [UIApp resetSetupFlowAnimated:0 forEvent:12];
    [UIApp dismissSetupFlowComplete:0 animated:1];
  }
}

- (void)_skipUpdateAndContinue
{
  setupController = [UIApp setupController];
  linkUpgradeMonitor = [setupController linkUpgradeMonitor];
  [linkUpgradeMonitor indicateSoftwareUpdateStateResolved];

  setupController2 = [UIApp setupController];
  pairingCompatiblity = [setupController2 pairingCompatiblity];
  [pairingCompatiblity reset];

  v7 = +[UIApplication sharedApplication];
  activeWatch = [v7 activeWatch];

  v8 = [activeWatch valueForProperty:NRDevicePropertySystemVersion];
  if (v8)
  {
    v9 = +[COSBackupManager sharedBackupManager];
    [v9 setMinWatchOSVersion:v8];
  }

  delegate = [(COSUpdateWatchViewController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)_showInternalOnlySkipButton
{
  v3 = objc_opt_new();
  [v3 setText:@"[Internal-Only: You are being forced to update due to a feature described in rdar://100097782. Internally you may skip]"];
  v4 = +[UIColor whiteColor];
  [v3 setTextColor:v4];

  v39 = v3;
  [v3 setNumberOfLines:0];
  v5 = [UIButton buttonWithType:1];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"SKIP_FORCED_SU" value:&stru_10026E598 table:@"Localizable"];
  [v5 setTitle:v7 forState:0];

  v8 = +[UIColor systemOrangeColor];
  [v5 setTintColor:v8];

  v38 = v5;
  [v5 addTarget:self action:"_skipUpdateAndContinue" forEvents:64];
  v9 = objc_opt_new();
  [v9 setAxis:1];
  [v9 setAlignment:3];
  [v9 setDistribution:0];
  [v9 setSpacing:8.0];
  [v9 addArrangedSubview:v3];
  [v9 addArrangedSubview:v5];
  view = [(COSUpdateWatchViewController *)self view];
  [view addSubview:v9];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [v9 topAnchor];
  illustratedWatchView = [(COSUpdateWatchViewController *)self illustratedWatchView];
  bottomAnchor = [illustratedWatchView bottomAnchor];
  v14 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  [v14 setActive:1];

  bottomAnchor2 = [v9 bottomAnchor];
  contentView = [(COSUpdateWatchViewController *)self contentView];
  bottomAnchor3 = [contentView bottomAnchor];
  v37 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];

  [v37 setActive:1];
  centerXAnchor = [v9 centerXAnchor];
  view2 = [(COSUpdateWatchViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v21 setActive:1];

  bottomAnchor4 = [v9 bottomAnchor];
  buttonTray = [(COSUpdateWatchViewController *)self buttonTray];
  topAnchor2 = [buttonTray topAnchor];
  v33 = [bottomAnchor4 constraintEqualToAnchor:topAnchor2];
  v40[0] = v33;
  leftAnchor = [v9 leftAnchor];
  contentView2 = [(COSUpdateWatchViewController *)self contentView];
  leftAnchor2 = [contentView2 leftAnchor];
  v23 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v40[1] = v23;
  rightAnchor = [v9 rightAnchor];
  contentView3 = [(COSUpdateWatchViewController *)self contentView];
  rightAnchor2 = [contentView3 rightAnchor];
  v27 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v40[2] = v27;
  heightAnchor = [v9 heightAnchor];
  v29 = [heightAnchor constraintEqualToConstant:100.0];
  v40[3] = v29;
  v30 = [NSArray arrayWithObjects:v40 count:4];
  [NSLayoutConstraint activateConstraints:v30];
}

@end