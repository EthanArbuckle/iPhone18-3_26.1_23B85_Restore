@interface COSHelloAppleWatchViewController
- (BOOL)isTinkerWatch;
- (COSHelloAppleWatchViewController)init;
- (id)okayButtonTitle;
- (id)titleString;
- (void)_tinkerSetupComplete;
- (void)autoDismissIfNeeded;
- (void)configureWatchView;
- (void)dealloc;
- (void)deviceIsSetup:(id)a3;
- (void)dismissSetupFlow;
- (void)setOkayButtonEnabled:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
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
      v6 = [v5 usesDarkTheme];

      if ((v6 & 1) == 0)
      {
        v7 = [UIApp setupController];
        v8 = [v7 internalDashboardController];
        v9 = [v8 dashboardData];

        v10 = objc_alloc_init(NSMutableString);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v22 = v9;
        v11 = [v9 pairingEvents];
        v12 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
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
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v23 + 1) + 8 * i);
              v17 = [v16 dashboardKey];
              v18 = [v16 eventValue];
              [v10 appendFormat:@"%@:%@, ", v17, v18];
            }

            v13 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
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
  v3 = [(COSHelloAppleWatchViewController *)self navigationItem];
  [v3 setHidesBackButton:1];

  v4 = [UIApp setupController];
  v5 = [v4 pairingReportManager];

  [v5 completePairingMetricWithSuccess:1];
  v6 = [(COSHelloAppleWatchViewController *)self isTinkerWatch];
  v7 = pbb_setupflow_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
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
  v11 = [v10 bridgeController];
  [v11 stopListeningForIDSSentMessages];

  v12 = [UIApp setupController];
  v13 = [v12 linkUpgradeMonitor];
  [v13 resetCompanionLinkPreference];

  [(COSHelloAppleWatchViewController *)self configureWatchView];
  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:self selector:"autoDismissIfNeeded" name:UIApplicationDidBecomeActiveNotification object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1000C6A2C, @"com.apple.nanosystemsettings.WatchReportedUsedOnAfterSetup", 0, 1028);
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = COSHelloAppleWatchViewController;
  [(COSHelloAppleWatchViewController *)&v6 viewDidAppear:a3];
  v4 = [UIApp setupController];
  v5 = [v4 resumePairingController];
  [v5 clearPairingState];

  [(COSHelloAppleWatchViewController *)self autoDismissIfNeeded];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = COSHelloAppleWatchViewController;
  [(COSHelloAppleWatchViewController *)&v5 viewDidDisappear:a3];
  v4 = [(COSHelloAppleWatchViewController *)self customWatchView];
  [v4 stopAnimation];
}

- (void)configureWatchView
{
  v3 = [UIView alloc];
  v4 = [(COSHelloAppleWatchViewController *)self view];
  [v4 bounds];
  v6 = v5 * 0.5;
  v7 = [(COSHelloAppleWatchViewController *)self view];
  [v7 bounds];
  v9 = [v3 initWithFrame:{0.0, 0.0, v6, v8 * 0.5}];

  v10 = [_TtC6Bridge34COSIllustratedWatchCursiveTextView alloc];
  v11 = [UIApp setupController];
  v12 = [v11 activePairingDevice];
  v13 = sub_10002D568(v12);
  v14 = [(COSIllustratedWatchCursiveTextView *)v10 initWithBackgroundImageName:v13];
  [(COSHelloAppleWatchViewController *)self setCustomWatchView:v14];

  v15 = [(COSHelloAppleWatchViewController *)self customWatchView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(COSHelloAppleWatchViewController *)self customWatchView];
  [v16 setAllowUpScaling:1];

  v17 = [(COSHelloAppleWatchViewController *)self customWatchView];
  [v17 setUsingSemiCompactWatchAsset:1];

  [v9 frame];
  v20 = [NSValue valueWithCGSize:v18, v19];
  v21 = [(COSHelloAppleWatchViewController *)self customWatchView];
  [v21 setPreferredCGSizeValue:v20];

  v22 = [(COSHelloAppleWatchViewController *)self customWatchView];
  [v9 addSubview:v22];

  v23 = [(COSHelloAppleWatchViewController *)self contentView];
  [v23 addSubview:v9];

  v47 = [(COSHelloAppleWatchViewController *)self customWatchView];
  v46 = [v47 centerYAnchor];
  v45 = [v9 centerYAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v49[0] = v44;
  v42 = [(COSHelloAppleWatchViewController *)self customWatchView];
  v41 = [v42 centerXAnchor];
  v40 = [v9 centerXAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v49[1] = v39;
  v37 = [v9 topAnchor];
  v38 = [(COSHelloAppleWatchViewController *)self contentView];
  v36 = [v38 topAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v49[2] = v35;
  v43 = v9;
  v24 = [v9 bottomAnchor];
  v25 = [(COSHelloAppleWatchViewController *)self contentView];
  v26 = [v25 bottomAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  v49[3] = v27;
  v28 = [v9 centerXAnchor];
  v29 = [(COSHelloAppleWatchViewController *)self view];
  v30 = [v29 centerXAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
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
  v4 = [v3 BOOLValue];

  return v4;
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
  v7 = [v6 hardwareBehavior];

  v8 = 16;
  if (v7 == 2)
  {
    v8 = 14;
  }

  if (v7 == 1)
  {
    v9 = 15;
  }

  else
  {
    v9 = v8;
  }

  [PBBridgeCAReporter incrementSuccessType:v9];
  v10 = [UIApp activeWatch];
  v11 = pbb_setupflow_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Telling NR to end Setup with %@.", &v23, 0xCu);
  }

  if (![(COSHelloAppleWatchViewController *)self isTinkerWatch])
  {
    v12 = [UIApp setupController];
    [v12 tellAppConduitToInstallAllApps];
  }

  v13 = +[NRPairedDeviceRegistry sharedInstance];
  [v13 notifyActivationCompleted:v10 withSuccess:1];

  v14 = +[NRPairedDeviceRegistry sharedInstance];
  [v14 setWatchBuddyCompletedSetupSteps:0];

  v15 = [(COSHelloAppleWatchViewController *)self delegate];
  [v15 buddyControllerDone:self nextControllerClass:0];

  [PBBridgeCAReporter incrementSuccessType:8];
  if ([(COSHelloAppleWatchViewController *)self isTinkerWatch])
  {
    [PBBridgeCAReporter incrementSuccessType:24];
  }

  v16 = +[UIApplication sharedApplication];
  v17 = [v16 bridgeController];
  [v17 setShouldSuppressTransportReachabilityTimeout:1];

  v18 = [v10 valueForProperty:NRDevicePropertySerialNumber];
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
      v24 = v10;
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

- (void)deviceIsSetup:(id)a3
{
  v4 = a3;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
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

- (void)setOkayButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(COSHelloAppleWatchViewController *)self okayButton];
  [v4 setEnabled:v3];
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

  v6 = [(COSHelloAppleWatchViewController *)self okayButton];
  v7 = [v6 isEnabled];

  if (v4)
  {
    v8 = v7 == 0;
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
  v5 = [UIApp setupController];
  [v5 setSetupCompletedSuccessfully:1];

  [UIApp dismissSetupFlowComplete:1 animated:1];
}

@end