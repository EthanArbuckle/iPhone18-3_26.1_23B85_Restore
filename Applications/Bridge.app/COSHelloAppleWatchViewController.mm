@interface COSHelloAppleWatchViewController
- (BOOL)isTinkerWatch;
- (COSHelloAppleWatchViewController)init;
- (id)okayButtonTitle;
- (id)titleString;
- (void)_tinkerSetupComplete;
- (void)autoDismissIfNeeded;
- (void)configureWatchView;
- (void)dealloc;
- (void)deviceIsSetup:(id)setup;
- (void)dismissSetupFlow;
- (void)setOkayButtonEnabled:(BOOL)enabled;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation COSHelloAppleWatchViewController

- (COSHelloAppleWatchViewController)init
{
  v28.receiver = self;
  v28.super_class = COSHelloAppleWatchViewController;
  v2 = [(COSOptinViewController *)&v28 init];
  if (v2)
  {
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(COSHelloAppleWatchViewController) Add Observer For NRPairedDeviceRegistryDeviceIsSetupNotification", buf, 2u);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"deviceIsSetup:" name:NRPairedDeviceRegistryDeviceIsSetupNotification object:0];
    if (PBIsInternalInstall())
    {
      v5 = +[PSListController appearance];
      usesDarkTheme = [v5 usesDarkTheme];

      if ((usesDarkTheme & 1) == 0)
      {
        setupController = [UIApp setupController];
        internalDashboardController = [setupController internalDashboardController];
        dashboardData = [internalDashboardController dashboardData];

        v10 = objc_alloc_init(NSMutableString);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v22 = dashboardData;
        pairingEvents = [dashboardData pairingEvents];
        v12 = [pairingEvents countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v24;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v24 != v14)
              {
                objc_enumerationMutation(pairingEvents);
              }

              v16 = *(*(&v23 + 1) + 8 * i);
              dashboardKey = [v16 dashboardKey];
              eventValue = [v16 eventValue];
              [v10 appendFormat:@"%@:%@, ", dashboardKey, eventValue];
            }

            v13 = [pairingEvents countByEnumeratingWithState:&v23 objects:v29 count:16];
          }

          while (v13);
        }

        v19 = pbb_setupflow_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10018995C(v10, v19);
        }
      }
    }

    v20 = +[PSListController appearance];
    [v20 setUsesDarkTheme:1];

    [(COSHelloAppleWatchViewController *)v2 setStyle:32];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.nanosystemsettings.WatchReportedUsedOnAfterSetup", 0);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = COSHelloAppleWatchViewController;
  [(COSHelloAppleWatchViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = COSHelloAppleWatchViewController;
  [(COSHelloAppleWatchViewController *)&v17 viewDidLoad];
  navigationItem = [(COSHelloAppleWatchViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  setupController = [UIApp setupController];
  pairingReportManager = [setupController pairingReportManager];

  [pairingReportManager completePairingMetricWithSuccess:1];
  isTinkerWatch = [(COSHelloAppleWatchViewController *)self isTinkerWatch];
  v7 = pbb_setupflow_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (isTinkerWatch)
  {
    if (v8)
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setup finished for Tinker flow.", v16, 2u);
    }

    if ((PBHasSetupDevice() & 1) == 0)
    {
      v9 = pbb_setupflow_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "There are still no setup completed devices so we will block the UI for a moment while NR wraps up pairing.", v16, 2u);
      }

      [(COSHelloAppleWatchViewController *)self setOkayButtonEnabled:0];
    }

    [(COSHelloAppleWatchViewController *)self _tinkerSetupComplete];
  }

  else
  {
    if (v8)
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setup finished.", v16, 2u);
    }
  }

  v10 = +[UIApplication sharedApplication];
  bridgeController = [v10 bridgeController];
  [bridgeController stopListeningForIDSSentMessages];

  setupController2 = [UIApp setupController];
  linkUpgradeMonitor = [setupController2 linkUpgradeMonitor];
  [linkUpgradeMonitor resetCompanionLinkPreference];

  [(COSHelloAppleWatchViewController *)self configureWatchView];
  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:self selector:"autoDismissIfNeeded" name:UIApplicationDidBecomeActiveNotification object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1000C6A2C, @"com.apple.nanosystemsettings.WatchReportedUsedOnAfterSetup", 0, 1028);
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = COSHelloAppleWatchViewController;
  [(COSHelloAppleWatchViewController *)&v6 viewDidAppear:appear];
  setupController = [UIApp setupController];
  resumePairingController = [setupController resumePairingController];
  [resumePairingController clearPairingState];

  [(COSHelloAppleWatchViewController *)self autoDismissIfNeeded];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = COSHelloAppleWatchViewController;
  [(COSHelloAppleWatchViewController *)&v5 viewDidDisappear:disappear];
  customWatchView = [(COSHelloAppleWatchViewController *)self customWatchView];
  [customWatchView stopAnimation];
}

- (void)configureWatchView
{
  v3 = [UIView alloc];
  view = [(COSHelloAppleWatchViewController *)self view];
  [view bounds];
  v6 = v5 * 0.5;
  view2 = [(COSHelloAppleWatchViewController *)self view];
  [view2 bounds];
  v9 = [v3 initWithFrame:{0.0, 0.0, v6, v8 * 0.5}];

  v10 = [_TtC6Bridge34COSIllustratedWatchCursiveTextView alloc];
  setupController = [UIApp setupController];
  activePairingDevice = [setupController activePairingDevice];
  v13 = sub_10002D568(activePairingDevice);
  v14 = [(COSIllustratedWatchCursiveTextView *)v10 initWithBackgroundImageName:v13];
  [(COSHelloAppleWatchViewController *)self setCustomWatchView:v14];

  customWatchView = [(COSHelloAppleWatchViewController *)self customWatchView];
  [customWatchView setTranslatesAutoresizingMaskIntoConstraints:0];

  customWatchView2 = [(COSHelloAppleWatchViewController *)self customWatchView];
  [customWatchView2 setAllowUpScaling:1];

  customWatchView3 = [(COSHelloAppleWatchViewController *)self customWatchView];
  [customWatchView3 setUsingSemiCompactWatchAsset:1];

  [v9 frame];
  v20 = [NSValue valueWithCGSize:v18, v19];
  customWatchView4 = [(COSHelloAppleWatchViewController *)self customWatchView];
  [customWatchView4 setPreferredCGSizeValue:v20];

  customWatchView5 = [(COSHelloAppleWatchViewController *)self customWatchView];
  [v9 addSubview:customWatchView5];

  contentView = [(COSHelloAppleWatchViewController *)self contentView];
  [contentView addSubview:v9];

  customWatchView6 = [(COSHelloAppleWatchViewController *)self customWatchView];
  centerYAnchor = [customWatchView6 centerYAnchor];
  centerYAnchor2 = [v9 centerYAnchor];
  v44 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v49[0] = v44;
  customWatchView7 = [(COSHelloAppleWatchViewController *)self customWatchView];
  centerXAnchor = [customWatchView7 centerXAnchor];
  centerXAnchor2 = [v9 centerXAnchor];
  v39 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v49[1] = v39;
  topAnchor = [v9 topAnchor];
  contentView2 = [(COSHelloAppleWatchViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v49[2] = v35;
  v43 = v9;
  bottomAnchor = [v9 bottomAnchor];
  contentView3 = [(COSHelloAppleWatchViewController *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v49[3] = v27;
  centerXAnchor3 = [v9 centerXAnchor];
  view3 = [(COSHelloAppleWatchViewController *)self view];
  centerXAnchor4 = [view3 centerXAnchor];
  v31 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v49[4] = v31;
  v32 = [NSArray arrayWithObjects:v49 count:5];
  [NSLayoutConstraint activateConstraints:v32];

  +[_TtC6Bridge34COSIllustratedWatchCursiveTextView delayForStartOfAnimation];
  v34 = dispatch_time(0, (v33 * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C6FD8;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_after(v34, &_dispatch_main_q, block);
}

- (BOOL)isTinkerWatch
{
  v2 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v3 = [v2 valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)_tinkerSetupComplete
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v23 = 138412546;
    v24 = v5;
    v25 = 2080;
    v26 = "[COSHelloAppleWatchViewController _tinkerSetupComplete]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ -- %s", &v23, 0x16u);
  }

  v6 = +[PBBridgeWatchAttributeController sharedDeviceController];
  hardwareBehavior = [v6 hardwareBehavior];

  v8 = 16;
  if (hardwareBehavior == 2)
  {
    v8 = 14;
  }

  if (hardwareBehavior == 1)
  {
    v9 = 15;
  }

  else
  {
    v9 = v8;
  }

  [PBBridgeCAReporter incrementSuccessType:v9];
  activeWatch = [UIApp activeWatch];
  v11 = pbb_setupflow_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = activeWatch;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Telling NR to end Setup with %@.", &v23, 0xCu);
  }

  if (![(COSHelloAppleWatchViewController *)self isTinkerWatch])
  {
    setupController = [UIApp setupController];
    [setupController tellAppConduitToInstallAllApps];
  }

  v13 = +[NRPairedDeviceRegistry sharedInstance];
  [v13 notifyActivationCompleted:activeWatch withSuccess:1];

  v14 = +[NRPairedDeviceRegistry sharedInstance];
  [v14 setWatchBuddyCompletedSetupSteps:0];

  delegate = [(COSHelloAppleWatchViewController *)self delegate];
  [delegate buddyControllerDone:self nextControllerClass:0];

  [PBBridgeCAReporter incrementSuccessType:8];
  if ([(COSHelloAppleWatchViewController *)self isTinkerWatch])
  {
    [PBBridgeCAReporter incrementSuccessType:24];
  }

  v16 = +[UIApplication sharedApplication];
  bridgeController = [v16 bridgeController];
  [bridgeController setShouldSuppressTransportReachabilityTimeout:1];

  v18 = [activeWatch valueForProperty:NRDevicePropertySerialNumber];
  if (v18)
  {
    [AMSDevice registerCompanionWithSerialNumber:v18];
    v19 = pbb_setupflow_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      v20 = "Notified Morocco";
      v21 = v19;
      v22 = 2;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, &v23, v22);
    }
  }

  else
  {
    v19 = pbb_setupflow_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = activeWatch;
      v20 = "Skipped Morocco %@";
      v21 = v19;
      v22 = 12;
      goto LABEL_19;
    }
  }
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"APPLE_WATCH_READY_TO_GO" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)okayButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DONE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)deviceIsSetup:(id)setup
{
  setupCopy = setup;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = setupCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(COSHelloAppleWatchViewController) Device Is Setup (Sender %@)", &v8, 0xCu);
  }

  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Remove Observer For NRPairedDeviceRegistryDeviceIsSetupNotification", &v8, 2u);
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:NRPairedDeviceRegistryDeviceIsSetupNotification object:0];

  [(COSHelloAppleWatchViewController *)self setOkayButtonEnabled:1];
}

- (void)setOkayButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  okayButton = [(COSHelloAppleWatchViewController *)self okayButton];
  [okayButton setEnabled:enabledCopy];
}

- (void)autoDismissIfNeeded
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"COSWatchReportedUseAfterSetup"];

  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Watch reported use after Setup: %@", &v9, 0xCu);
  }

  okayButton = [(COSHelloAppleWatchViewController *)self okayButton];
  isEnabled = [okayButton isEnabled];

  if (v4)
  {
    v8 = isEnabled == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [(COSHelloAppleWatchViewController *)self dismissSetupFlow];
  }
}

- (void)dismissSetupFlow
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v6 = 138412546;
    v7 = v4;
    v8 = 2080;
    v9 = "[COSHelloAppleWatchViewController dismissSetupFlow]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ -- %s, dismissing setup flow", &v6, 0x16u);
  }

  sub_10002ECB0();
  setupController = [UIApp setupController];
  [setupController setSetupCompletedSuccessfully:1];

  [UIApp dismissSetupFlowComplete:1 animated:1];
}

@end