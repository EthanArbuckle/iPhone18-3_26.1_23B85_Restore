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
- (void)alternateButtonPressed:(id)a3;
- (void)learnMoreButtonPressed:(id)a3;
- (void)suggestedButtonPressed:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation COSUpdateWatchViewController

- (COSUpdateWatchViewController)init
{
  v10.receiver = self;
  v10.super_class = COSUpdateWatchViewController;
  v2 = [(COSOptinViewController *)&v10 init];
  if (v2)
  {
    v3 = [UIApp setupController];
    v4 = [v3 pairingCompatiblity];
    pairingCompatibility = v2->_pairingCompatibility;
    v2->_pairingCompatibility = v4;

    if ([(COSPairingCompatibility *)v2->_pairingCompatibility requiresZeroDayUpdate])
    {
      v6 = [(COSPairingCompatibility *)v2->_pairingCompatibility zeroDayUpdateLearnMoreLink];

      if (v6)
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (sub_100009A74() && [(COSPairingCompatibility *)self->_pairingCompatibility requiresZeroDayUpdate])
  {
    [(COSUpdateWatchViewController *)self _showInternalOnlySkipButton];
  }

  v5.receiver = self;
  v5.super_class = COSUpdateWatchViewController;
  [(COSUpdateWatchViewController *)&v5 viewWillAppear:v3];
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

- (void)suggestedButtonPressed:(id)a3
{
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[COSUpdateWatchViewController suggestedButtonPressed:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5 = [(COSUpdateWatchViewController *)self suggestedChoiceButton];
  [v5 setEnabled:0];

  v6 = [(COSUpdateWatchViewController *)self alternateChoiceButton];
  [v6 setEnabled:0];

  setupUpdateManager = self->_setupUpdateManager;
  if (!setupUpdateManager)
  {
    v8 = [UIApp setupController];
    v9 = [v8 setupSoftwareUpdateManager];
    v10 = self->_setupUpdateManager;
    self->_setupUpdateManager = v9;

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

- (void)alternateButtonPressed:(id)a3
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
    v6 = [UIApp setupController];
    v7 = [v6 pairingReportManager];

    [v7 addPairingTimeEventToPairingReportPlist:56 withValue:&__kCFBooleanTrue withError:0];
    [(COSUpdateWatchViewController *)self abortPairing];
  }
}

- (void)learnMoreButtonPressed:(id)a3
{
  v3 = UIApp;
  v4 = [(COSPairingCompatibility *)self->_pairingCompatibility zeroDayUpdateLearnMoreLink];
  [v3 openURL:v4 withCompletionHandler:&stru_100269778];
}

- (void)abortPairing
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [UIApp activeWatch];
  v5 = [v4 valueForProperty:NRDevicePropertyIsPaired];
  v6 = [v5 BOOLValue];

  v7 = [UIApp isActivated];
  v8 = pbb_bridge_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v4 && ((v6 | v7) & 1) != 0)
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
    [v11 unpairWithDevice:v4 withOptions:v10 operationHasBegun:&stru_100269798];
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
  v3 = [UIApp setupController];
  v4 = [v3 linkUpgradeMonitor];
  [v4 indicateSoftwareUpdateStateResolved];

  v5 = [UIApp setupController];
  v6 = [v5 pairingCompatiblity];
  [v6 reset];

  v7 = +[UIApplication sharedApplication];
  v11 = [v7 activeWatch];

  v8 = [v11 valueForProperty:NRDevicePropertySystemVersion];
  if (v8)
  {
    v9 = +[COSBackupManager sharedBackupManager];
    [v9 setMinWatchOSVersion:v8];
  }

  v10 = [(COSUpdateWatchViewController *)self delegate];
  [v10 buddyControllerDone:self];
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
  v10 = [(COSUpdateWatchViewController *)self view];
  [v10 addSubview:v9];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v9 topAnchor];
  v12 = [(COSUpdateWatchViewController *)self illustratedWatchView];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [v9 bottomAnchor];
  v16 = [(COSUpdateWatchViewController *)self contentView];
  v17 = [v16 bottomAnchor];
  v37 = [v15 constraintEqualToAnchor:v17];

  [v37 setActive:1];
  v18 = [v9 centerXAnchor];
  v19 = [(COSUpdateWatchViewController *)self view];
  v20 = [v19 centerXAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v35 = [v9 bottomAnchor];
  v36 = [(COSUpdateWatchViewController *)self buttonTray];
  v34 = [v36 topAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v40[0] = v33;
  v31 = [v9 leftAnchor];
  v32 = [(COSUpdateWatchViewController *)self contentView];
  v22 = [v32 leftAnchor];
  v23 = [v31 constraintEqualToAnchor:v22];
  v40[1] = v23;
  v24 = [v9 rightAnchor];
  v25 = [(COSUpdateWatchViewController *)self contentView];
  v26 = [v25 rightAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  v40[2] = v27;
  v28 = [v9 heightAnchor];
  v29 = [v28 constraintEqualToConstant:100.0];
  v40[3] = v29;
  v30 = [NSArray arrayWithObjects:v40 count:4];
  [NSLayoutConstraint activateConstraints:v30];
}

@end