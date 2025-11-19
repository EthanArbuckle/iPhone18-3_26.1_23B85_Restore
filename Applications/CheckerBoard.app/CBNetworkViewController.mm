@interface CBNetworkViewController
- (CBNetworkViewController)initWithSetupPresentationTheme:(BOOL)a3;
- (void)_attemptingToAssociateToOpenNetwork:(id)a3;
- (void)_deregisterNotifications;
- (void)_disableUIAndDisplaySpinnerBarItem;
- (void)_enableAndUpdateUI;
- (void)_presentAlternateNetworkViewControllerWithInfo:(id)a3 password:(id)a4 ssid:(id)a5;
- (void)_presentEncryptedNetworkAssociationScene:(id)a3;
- (void)_presentExitDiagnosticsAlert;
- (void)_presentOpenNetworkAssociationFailureAlert:(id)a3;
- (void)_presentOpenNetworkAssociationFailureAlertWithNetworkName:(id)a3;
- (void)_presentWiFiNetworkTimeoutAlert;
- (void)_reachabilityChanged:(id)a3;
- (void)_registerForNotifications;
- (void)_startNetworkScan;
- (void)_startWiFiScan:(id)a3;
- (void)_stopNetworkScan;
- (void)_stopWiFiScan:(id)a3;
- (void)_stopWiFiTimeroutTimer;
- (void)_updatePowerState;
- (void)_wifiNetworkAssociationCompleted:(id)a3;
- (void)_wifiNetworkScanCompleted;
- (void)_wifiTimeoutFired:(id)a3;
- (void)autoAdvanceToNextScene;
- (void)backButtonTapped:(id)a3;
- (void)cleanUp;
- (void)continueTapped;
- (void)dealloc;
- (void)disableBackButton;
- (void)doneTapped;
- (void)enableBackButton;
- (void)enableContinueButton:(BOOL)a3;
- (void)hideBackButton;
- (void)networkListViewController:(id)a3 didTapRecord:(id)a4;
- (void)networkListViewControllerDidTapOtherNetwork:(id)a3;
- (void)reevaluateNetworkList;
- (void)reloadNetworkList;
- (void)setContinueButtonAvailable;
- (void)setContinueButtonBusy;
- (void)setupView;
- (void)showBackButton;
- (void)updateNetworkList;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CBNetworkViewController

- (CBNetworkViewController)initWithSetupPresentationTheme:(BOOL)a3
{
  v5 = MGGetBoolAnswer();
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (v5)
  {
    v8 = @"CHOOSE_WLAN_HEADER";
  }

  else
  {
    v8 = @"CHOOSE_WIFI_HEADER";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_10007EAB0 table:0];

  v17.receiver = self;
  v17.super_class = CBNetworkViewController;
  v10 = [(CBNetworkViewController *)&v17 initWithTitle:v9 detailText:0 icon:0 adoptTableViewScrollView:1];
  v11 = v10;
  if (v10)
  {
    v10->_isPresentedForSetupFlow = a3;
    v10->_networkReachable = 0;
    v12 = +[CBBootIntentManager sharedInstance];
    bootIntentManager = v11->_bootIntentManager;
    v11->_bootIntentManager = v12;

    v11->_networkConnectionInProgress = 0;
    v14 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      isPresentedForSetupFlow = v11->_isPresentedForSetupFlow;
      *buf = 67109120;
      v19 = isPresentedForSetupFlow;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Initializing Network View Controller with [Next] button (%d)", buf, 8u);
    }
  }

  return v11;
}

- (void)viewDidLoad
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Wi-Fi picker pane loaded", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = CBNetworkViewController;
  [(CBNetworkViewController *)&v5 viewDidLoad];
  [(CBNetworkViewController *)self setupView];
  v4 = +[CBWiFiManager sharedInstance];
  [(CBNetworkViewController *)self setWifiManager:v4];

  [(CBNetworkViewController *)self _updatePowerState];
  [(CBNetworkViewController *)self _registerForNotifications];
  [(CBNetworkViewController *)self setListDelegate:self];
}

- (void)viewDidAppear:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = CBNetworkViewController;
  [(CBNetworkViewController *)&v17 viewDidAppear:a3];
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Wi-Fi picker pane did appear. Beginning observation for reachability changes", v16, 2u);
  }

  v5 = +[CPNetworkObserver sharedNetworkObserver];
  [v5 addObserver:self selector:"_reachabilityChanged:" forHostname:@"apple.com"];
  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Performing immediate reachability check", v16, 2u);
  }

  if (v5 && [v5 isNetworkReachable])
  {
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Network is immediately reachable", v16, 2u);
    }

    [(CBNetworkViewController *)self setNetworkReachable:1];
    [(CBNetworkViewController *)self _enableAndUpdateUI];
  }

  v8 = [(CBNetworkViewController *)self bootIntentManager];
  v9 = [v8 bootIntentWifiSSID];

  if (v9)
  {
    v10 = [CBNetworkListRecord alloc];
    v11 = [(CBNetworkViewController *)self bootIntentManager];
    v12 = [v11 bootIntentWifiSSID];
    v13 = [(CBNetworkViewController *)self bootIntentManager];
    v14 = [v13 bootIntentWifiPassword];
    v15 = [(CBNetworkListRecord *)v10 initWithBootIntentSSID:v12 passwordProtected:v14 != 0];
    [(CBNetworkViewController *)self setTargetNetworkForBootIntent:v15];
  }
}

- (void)setupView
{
  v3 = [UIBarButtonItem alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"BACK" value:&stru_10007EAB0 table:0];
  v6 = [v3 initWithTitle:v5 style:0 target:self action:"backButtonTapped:"];
  [(CBNetworkViewController *)self setCustomBackButton:v6];

  v7 = [(CBNetworkViewController *)self customBackButton];
  [v7 _setShowsBackButtonIndicator:1];

  if ([(CBNetworkViewController *)self isPresentedForSetupFlow])
  {
    [(CBNetworkViewController *)self showBackButton];
    v8 = +[OBBoldTrayButton boldButton];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"CONTINUE" value:&stru_10007EAB0 table:0];
    [v8 setTitle:v10 forState:0];

    [v8 addTarget:self action:"continueTapped" forControlEvents:64];
    v11 = [(CBNetworkViewController *)self buttonTray];
    [v11 addButton:v8];

    [(CBNetworkViewController *)self setContinueButton:v8];
    [(CBNetworkViewController *)self enableContinueButton:0];
    v12 = +[OBLinkTrayButton linkButton];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"CANCEL" value:&stru_10007EAB0 table:0];
    [v12 setTitle:v14 forState:0];

    [v12 addTarget:self action:"_presentExitDiagnosticsAlert" forControlEvents:64];
    v15 = [(CBNetworkViewController *)self buttonTray];
    [v15 addButton:v12];
  }

  else
  {
    [(CBNetworkViewController *)self hideBackButton];
    v8 = +[OBBoldTrayButton boldButton];
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"DONE" value:&stru_10007EAB0 table:0];
    [v8 setTitle:v17 forState:0];

    [v8 addTarget:self action:"doneTapped" forControlEvents:64];
    v18 = [(CBNetworkViewController *)self buttonTray];
    [v18 addButton:v8];

    [(CBNetworkViewController *)self setContinueButton:v8];
  }

  [(CBNetworkViewController *)self setShowNetworkSettings:0];
  [(CBNetworkViewController *)self setSupportsCellularActivation:0];
  [(CBNetworkViewController *)self setShowOtherNetwork:1];
  v20 = +[UIColor systemWhiteColor];
  v19 = [(CBNetworkViewController *)self tableView];
  [v19 setBackgroundColor:v20];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Network view controller will appear", buf, 2u);
  }

  [(CBNetworkViewController *)self setNetworkViewControllerVisible:1];
  v6.receiver = self;
  v6.super_class = CBNetworkViewController;
  [(CBNetworkViewController *)&v6 viewWillAppear:v3];
  [(CBNetworkViewController *)self cleanUp];
  [(CBNetworkViewController *)self _startNetworkScan];
}

- (void)_startNetworkScan
{
  v3 = [(CBNetworkViewController *)self wifiManager];
  [v3 startWiFiNetworkScanRequestFrom:self];

  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Wi-Fi scan started", v5, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Network view controller will disappear", buf, 2u);
  }

  [(CBNetworkViewController *)self setNetworkViewControllerVisible:0];
  v7.receiver = self;
  v7.super_class = CBNetworkViewController;
  [(CBNetworkViewController *)&v7 viewWillDisappear:v3];
  [(CBNetworkViewController *)self cleanUp];
  if ([(CBNetworkViewController *)self isMovingFromParentViewController])
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Network view controller is moving from parent. Clearing notification handling", buf, 2u);
    }

    [(CBNetworkViewController *)self _deregisterNotifications];
  }
}

- (void)cleanUp
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cleaning up Network View Controller…", v4, 2u);
  }

  [(CBNetworkViewController *)self _stopNetworkScan];
}

- (void)_stopNetworkScan
{
  v3 = [(CBNetworkViewController *)self wifiManager];
  [v3 stopWiFiNetworkScanRequestFrom:self];

  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Wi-Fi scan stopped", v5, 2u);
  }
}

- (void)dealloc
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc was called", buf, 2u);
  }

  [(CBNetworkViewController *)self cleanUp];
  v4.receiver = self;
  v4.super_class = CBNetworkViewController;
  [(CBNetworkViewController *)&v4 dealloc];
}

- (void)_registerForNotifications
{
  [(CBNetworkViewController *)self _deregisterNotifications];
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering for notifications…", v14, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_updatePowerState" name:@"CBWiFiPowerStateDidChangeNotification" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_wifiNetworkScanCompleted" name:@"CBWiFiNetworkScanCompletedNotification" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_wifiNetworkAssociationCompleted:" name:@"CBWiFiNetworkAssociationCompletedNotification" object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"_attemptingToAssociateToOpenNetwork:" name:@"CBWiFiManagerWillAssociateToOpenNetworkNotification" object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"_presentOpenNetworkAssociationFailureAlert:" name:@"CBWiFiManagerAssociateToOpenNetworkFailedNotification" object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"_attemptingToAssociateToOpenNetwork:" name:@"CBWiFiManagerWillAssociateToEncryptedNetworkNotification" object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"_startWiFiScan:" name:@"CBScreenDidUndimNotification" object:0];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"_stopWiFiScan:" name:@"CBScreenDidDimNotification" object:0];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"_deregisterNotifications" name:@"CBNetworkViewControllerDidAdvanceToNextSceneNotification" object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"_deregisterNotifications" name:@"CBNetworkViewControllerWillDismissFromDoneButtonNotification" object:0];
}

- (void)_deregisterNotifications
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deregistering notifications…", v15, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"CBWiFiPowerStateDidChangeNotification" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"CBWiFiNetworkScanCompletedNotification" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:@"CBWiFiNetworkAssociationCompletedNotification" object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:@"CBWiFiManagerWillAssociateToOpenNetworkNotification" object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self name:@"CBWiFiManagerAssociateToOpenNetworkFailedNotification" object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self name:@"CBWiFiManagerWillAssociateToEncryptedNetworkNotification" object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 removeObserver:self name:@"CBScreenDidUndimNotification" object:0];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 removeObserver:self name:@"CBScreenDidDimNotification" object:0];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 removeObserver:self name:@"CBNetworkViewControllerDidAdvanceToNextSceneNotification" object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 removeObserver:self name:@"CBNetworkViewControllerWillDismissFromDoneButtonNotification" object:0];

  v14 = +[CPNetworkObserver sharedNetworkObserver];
  [v14 removeObserver:self forHostname:@"apple.com"];
}

- (void)_updatePowerState
{
  v2 = [(CBNetworkViewController *)self wifiManager];
  v3 = [v2 isWiFiPoweredOn];

  v4 = CheckerBoardLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 0;
      v6 = "Wi-Fi is on";
      v7 = &v9;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if (v5)
  {
    v8 = 0;
    v6 = "Wi-Fi is off…";
    v7 = &v8;
    goto LABEL_6;
  }
}

- (void)_wifiNetworkScanCompleted
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000ECB4;
  v2[3] = &unk_10007D668;
  objc_copyWeak(&v3, &location);
  dispatch_sync(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)_wifiNetworkAssociationCompleted:(id)a3
{
  v4 = a3;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Wi-Fi network association completed notification sent", &v14, 2u);
  }

  v6 = [(CBNetworkViewController *)self otherNetworkWindow];

  if (v6)
  {
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Dismissing Alternate Network View Controller…", &v14, 2u);
    }

    v8 = [(CBNetworkViewController *)self otherNetworkWindow];
    [v8 dismissViewControllerAnimated:1];

    [(CBNetworkViewController *)self setOtherNetworkWindow:0];
    [(CBNetworkViewController *)self _startNetworkScan];
  }

  [(CBNetworkViewController *)self _disableUIAndDisplaySpinnerBarItem];
  v9 = [v4 userInfo];

  v10 = [v9 objectForKeyedSubscript:@"CBWiFiManagerErrorKey"];
  v11 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Association completed with error (%@)", &v14, 0xCu);
  }

  if (v10)
  {
    [(CBNetworkViewController *)self _enableAndUpdateUI];
  }

  else
  {
    v12 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Starting Wi-Fi timeout timer…", &v14, 2u);
    }

    v13 = [NSTimer scheduledTimerWithTimeInterval:self target:"_wifiTimeoutFired:" selector:0 userInfo:0 repeats:20.0];
    [(CBNetworkViewController *)self setWifiTimeoutTimer:v13];
  }
}

- (void)_attemptingToAssociateToOpenNetwork:(id)a3
{
  v4 = [a3 name];
  v5 = [v4 isEqualToString:@"CBWiFiManagerWillAssociateToEncryptedNetworkNotification"];

  if (v5)
  {
    v6 = [(CBNetworkViewController *)self targetNetworkForBootIntent];
    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = v6;
    v8 = [(CBNetworkViewController *)self targetNetworkForBootIntent];
    if (v8)
    {
      v9 = v8;
      v10 = [(CBNetworkViewController *)self currentNetwork];
      v11 = [(CBNetworkViewController *)self targetNetworkForBootIntent];
      v12 = [v10 isEquivalentRecord:v11];

      if ((v12 & 1) == 0)
      {
LABEL_5:
        v13 = CheckerBoardLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to associate to open network, but the network is encrypted and not a boot intent target. Ignoring", buf, 2u);
        }

        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  [(CBNetworkViewController *)self _disableUIAndDisplaySpinnerBarItem];
  v14 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Starting Wi-Fi timeout timer…", v15, 2u);
  }

  v13 = [NSTimer scheduledTimerWithTimeInterval:self target:"_wifiTimeoutFired:" selector:0 userInfo:0 repeats:20.0];
  [(CBNetworkViewController *)self setWifiTimeoutTimer:v13];
LABEL_11:
}

- (void)_presentOpenNetworkAssociationFailureAlert:(id)a3
{
  v6 = [a3 userInfo];
  v4 = [v6 objectForKeyedSubscript:@"CBNetworkInfoKey"];
  v5 = [v4 networkName];
  [(CBNetworkViewController *)self _presentOpenNetworkAssociationFailureAlertWithNetworkName:v5];
}

- (void)_presentOpenNetworkAssociationFailureAlertWithNetworkName:(id)a3
{
  v4 = a3;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Presenting open network association failure alert…", buf, 2u);
  }

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"UNABLE_TO_JOIN_NETWORK_TITLE" value:&stru_10007EAB0 table:0];
  v8 = [NSString stringWithFormat:v7, v4];

  v9 = [UIAlertController alertControllerWithTitle:v8 message:0 preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"DISMISS" value:&stru_10007EAB0 table:0];
  v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:0];
  [v9 addAction:v12];

  [(CBNetworkViewController *)self presentViewController:v9 animated:1 completion:0];
  v13 = [(CBNetworkViewController *)self targetNetworkForBootIntent];
  if (v13)
  {
    v14 = v13;
    v15 = [(CBNetworkViewController *)self currentNetwork];
    v16 = [(CBNetworkViewController *)self targetNetworkForBootIntent];
    v17 = [v15 isEquivalentRecord:v16];

    if (v17)
    {
      [(CBNetworkViewController *)self setTargetNetworkForBootIntent:0];
      [(CBNetworkViewController *)self setCurrentNetwork:0];
      [(CBNetworkViewController *)self setCurrentNetworkState:0];
      [(CBNetworkViewController *)self reloadNetworkList];
    }
  }
}

- (void)_presentEncryptedNetworkAssociationScene:(id)a3
{
  v4 = a3;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Presenting (Enter the password) network scene…", v8, 2u);
  }

  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:@"CBNetworkInfoKey"];
  [(CBNetworkViewController *)self _presentAlternateNetworkViewControllerWithInfo:v7];
}

- (void)_presentExitDiagnosticsAlert
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Exit Diagnostics] button tapped", v4, 2u);
  }

  v3 = +[CBAlertManager sharedInstance];
  [v3 showExitConfirmationWithCompletion:0 response:&stru_10007D9A0];
}

- (void)_startWiFiScan:(id)a3
{
  if ([(CBNetworkViewController *)self networkViewControllerVisible])
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Screen undimmed. Starting Wi-Fi scan…", v5, 2u);
    }

    [(CBNetworkViewController *)self _startNetworkScan];
  }
}

- (void)_stopWiFiScan:(id)a3
{
  if ([(CBNetworkViewController *)self networkViewControllerVisible])
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Screen dimmed. Stopping Wi-Fi scan…", v5, 2u);
    }

    [(CBNetworkViewController *)self _stopNetworkScan];
  }
}

- (void)_reachabilityChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:CPNetworkObserverReachable];
  -[CBNetworkViewController setNetworkReachable:](self, "setNetworkReachable:", [v6 BOOLValue]);

  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:CPNetworkObserverReachableFlags];

  v9 = *[v8 bytes];
  v10 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109376;
    v14[1] = [(CBNetworkViewController *)self networkReachable];
    v15 = 1024;
    v16 = ((v9 >> 18) & 1) == 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Network reachability changed (%d) and is connected over Wi-Fi (%d)", v14, 0xEu);
  }

  if ([(CBNetworkViewController *)self networkReachable])
  {
    v11 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Network became reachable", v14, 2u);
    }

    v12 = [(CBNetworkViewController *)self wifiTimeoutTimer];

    if (v12)
    {
      v13 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Wi-Fi timeout timer exists…", v14, 2u);
      }

      [(CBNetworkViewController *)self _stopWiFiTimeroutTimer];
      [(CBNetworkViewController *)self _enableAndUpdateUI];
      [(CBNetworkViewController *)self autoAdvanceToNextScene];
    }
  }

  else
  {
    [(CBNetworkViewController *)self reevaluateNetworkList];
  }
}

- (void)updateNetworkList
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating the network list…", buf, 2u);
  }

  v4 = objc_alloc_init(NSMutableSet);
  v5 = dispatch_get_global_queue(0, 0);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10000F9E4;
  v10 = &unk_10007D640;
  v11 = self;
  v12 = v4;
  v6 = v4;
  dispatch_sync(v5, &v7);

  [(CBNetworkViewController *)self reloadNetworkList:v7];
}

- (void)reloadNetworkList
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reloading the network list…", v4, 2u);
  }

  [(CBNetworkViewController *)self refresh];
}

- (void)reevaluateNetworkList
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Wi-Fi pane reevaluating network list", v4, 2u);
  }

  [(CBNetworkViewController *)self reloadNetworkList];
  [(CBNetworkViewController *)self setContinueButtonAvailable];
  [(CBNetworkViewController *)self enableContinueButton:[(CBNetworkViewController *)self networkReachable]];
}

- (void)_disableUIAndDisplaySpinnerBarItem
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Disabling UI…", v5, 2u);
  }

  [(CBNetworkViewController *)self disableBackButton];
  v4 = [(CBNetworkViewController *)self tableView];
  [v4 setUserInteractionEnabled:0];

  [(CBNetworkViewController *)self setNetworkConnectionInProgress:1];
  [(CBNetworkViewController *)self setContinueButtonBusy];
}

- (void)_enableAndUpdateUI
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Enabling and updating UI…", v5, 2u);
  }

  [(CBNetworkViewController *)self enableBackButton];
  v4 = [(CBNetworkViewController *)self tableView];
  [v4 setUserInteractionEnabled:1];

  [(CBNetworkViewController *)self setNetworkConnectionInProgress:0];
  [(CBNetworkViewController *)self reevaluateNetworkList];
}

- (void)setContinueButtonBusy
{
  if ([(CBNetworkViewController *)self isPresentedForSetupFlow])
  {
    v3 = [(CBNetworkViewController *)self continueButton];

    if (v3)
    {
      v4 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting continue button to busy", v6, 2u);
      }

      v5 = [(CBNetworkViewController *)self continueButton];
      [v5 showsBusyIndicator];
    }
  }
}

- (void)setContinueButtonAvailable
{
  if ([(CBNetworkViewController *)self isPresentedForSetupFlow])
  {
    v3 = [(CBNetworkViewController *)self continueButton];

    if (v3)
    {
      v4 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting continue button to not busy", v6, 2u);
      }

      v5 = [(CBNetworkViewController *)self continueButton];
      [v5 hidesBusyIndicator];
    }
  }
}

- (void)enableContinueButton:(BOOL)a3
{
  v3 = a3;
  if ([(CBNetworkViewController *)self isPresentedForSetupFlow])
  {
    v5 = [(CBNetworkViewController *)self continueButton];

    if (v5)
    {
      v6 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = @"disabled";
        if (v3)
        {
          v7 = @"enabled";
        }

        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Continue button is %@", &v9, 0xCu);
      }

      v8 = [(CBNetworkViewController *)self continueButton];
      [v8 setEnabled:v3];
    }
  }
}

- (void)_presentAlternateNetworkViewControllerWithInfo:(id)a3 password:(id)a4 ssid:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = [[CBAlternateNetworkViewController alloc] initWithScanResult:v10 prepopulatedPassword:v9 prepopulatedSSID:v8];

  [(CBNetworkViewController *)self _stopNetworkScan];
  v11 = [[UINavigationController alloc] initWithRootViewController:v14];
  v12 = +[CBWindowManager sharedInstance];
  v13 = [v12 presentViewController:v11 onLayer:2 backgroundTunnel:0 statusBarVisible:1 animated:1 completion:&stru_10007D9C0];
  [(CBNetworkViewController *)self setOtherNetworkWindow:v13];
}

- (void)_presentWiFiNetworkTimeoutAlert
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Presenting Wi-Fi timeout alert…", v15, 2u);
  }

  v4 = MGGetBoolAnswer();
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4)
  {
    v7 = @"NO_NETWORK_CONNECTION_MESSAGE_WLAN";
  }

  else
  {
    v7 = @"NO_NETWORK_CONNECTION_MESSAGE_WIFI";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_10007EAB0 table:0];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"NO_NETWORK_CONNECTION_TITLE" value:&stru_10007EAB0 table:0];
  v11 = [UIAlertController alertControllerWithTitle:v10 message:v8 preferredStyle:1];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"OK" value:&stru_10007EAB0 table:0];
  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];
  [v11 addAction:v14];

  [(CBNetworkViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)_wifiTimeoutFired:(id)a3
{
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Wi-Fi timeout fired…", v5, 2u);
  }

  [(CBNetworkViewController *)self _stopWiFiTimeroutTimer];
  [(CBNetworkViewController *)self _enableAndUpdateUI];
  [(CBNetworkViewController *)self _presentWiFiNetworkTimeoutAlert];
}

- (void)_stopWiFiTimeroutTimer
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating Wi-Fi timeout timer…", v5, 2u);
  }

  v4 = [(CBNetworkViewController *)self wifiTimeoutTimer];
  [v4 invalidate];

  [(CBNetworkViewController *)self setWifiTimeoutTimer:0];
}

- (void)autoAdvanceToNextScene
{
  if ([(CBNetworkViewController *)self isPresentedForSetupFlow])
  {
    v3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Auto advancing to next pane", v4, 2u);
    }

    [(CBNetworkViewController *)self continueTapped];
  }
}

- (void)continueTapped
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Continue] button tapped", v11, 2u);
  }

  v4 = [(CBNetworkViewController *)self currentNetwork];
  v5 = [(CBNetworkViewController *)self targetNetworkForBootIntent];
  if ([v4 isEquivalentRecord:v5])
  {
    v6 = [(CBNetworkViewController *)self networkReachable];

    if ((v6 & 1) == 0)
    {
      v7 = [(CBNetworkViewController *)self targetNetworkForBootIntent];
      [(CBNetworkViewController *)self networkListViewController:self didTapRecord:v7];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v7 = objc_alloc_init(CBEndgameViewController);
  v8 = [(CBNetworkViewController *)self navigationController];
  [v8 pushViewController:v7 animated:1];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"CBNetworkViewControllerDidAdvanceToNextSceneNotification" object:0];

  v10 = [(CBNetworkViewController *)self targetNetworkForBootIntent];

  if (v10)
  {
    [(CBNetworkViewController *)self setTargetNetworkForBootIntent:0];
  }

LABEL_9:
}

- (void)doneTapped
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Done] button tapped", v4, 2u);
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"CBNetworkViewControllerWillDismissFromDoneButtonNotification" object:0];
}

- (void)networkListViewController:(id)a3 didTapRecord:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    if (([v6 isBootIntentRecord] & 1) != 0 || (-[CBNetworkViewController targetNetworkForBootIntent](self, "targetNetworkForBootIntent"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, -[CBNetworkViewController targetNetworkForBootIntent](self, "targetNetworkForBootIntent"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v6, "isEquivalentRecord:", v9), v9, v8, v10))
    {
      v11 = [(CBNetworkViewController *)self bootIntentManager];
      v12 = [v11 bootIntentWifiSSID];

      v13 = [(CBNetworkViewController *)self bootIntentManager];
      v14 = [v13 bootIntentWifiPassword];

      v15 = [(CBNetworkViewController *)self wifiManager];
      v16 = v15;
      if (v14)
      {
        [v15 associateToHiddenEncryptedNetworkWithName:v12 password:v14];
      }

      else
      {
        [v15 associateToHiddenUnencryptedNetworkWithName:v12];
      }

      goto LABEL_16;
    }

    if (![v6 isSecure])
    {
      v12 = [(CBNetworkViewController *)self wifiManager];
      v18 = [v6 ssid];
      [v12 associateToHiddenUnencryptedNetworkWithName:v18];

      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v6 scanResult];
      [(CBNetworkViewController *)self _presentAlternateNetworkViewControllerWithInfo:v12];
LABEL_16:
    }
  }

  else
  {
    v17 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_100046D88(v17);
    }

    v6 = [v5 title];
    [(CBNetworkViewController *)self _presentOpenNetworkAssociationFailureAlertWithNetworkName:v6];
  }
}

- (void)networkListViewControllerDidTapOtherNetwork:(id)a3
{
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Choose Another Network] button tapped", v5, 2u);
  }

  [(CBNetworkViewController *)self _presentAlternateNetworkViewControllerWithInfo:0];
}

- (void)backButtonTapped:(id)a3
{
  v4 = [(CBNetworkViewController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)disableBackButton
{
  v3 = [(CBNetworkViewController *)self navigationItem];
  v2 = [v3 leftBarButtonItem];
  [v2 setEnabled:0];
}

- (void)enableBackButton
{
  v3 = [(CBNetworkViewController *)self navigationItem];
  v2 = [v3 leftBarButtonItem];
  [v2 setEnabled:1];
}

- (void)hideBackButton
{
  v3 = [(CBNetworkViewController *)self navigationItem];
  [v3 setLeftBarButtonItem:0];

  v4 = [(CBNetworkViewController *)self navigationItem];
  [v4 setHidesBackButton:1];
}

- (void)showBackButton
{
  v4 = [(CBNetworkViewController *)self customBackButton];
  v3 = [(CBNetworkViewController *)self navigationItem];
  [v3 setLeftBarButtonItem:v4];
}

@end