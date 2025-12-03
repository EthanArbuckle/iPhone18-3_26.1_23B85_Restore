@interface CBNetworkViewController
- (CBNetworkViewController)initWithSetupPresentationTheme:(BOOL)theme;
- (void)_attemptingToAssociateToOpenNetwork:(id)network;
- (void)_deregisterNotifications;
- (void)_disableUIAndDisplaySpinnerBarItem;
- (void)_enableAndUpdateUI;
- (void)_presentAlternateNetworkViewControllerWithInfo:(id)info password:(id)password ssid:(id)ssid;
- (void)_presentEncryptedNetworkAssociationScene:(id)scene;
- (void)_presentExitDiagnosticsAlert;
- (void)_presentOpenNetworkAssociationFailureAlert:(id)alert;
- (void)_presentOpenNetworkAssociationFailureAlertWithNetworkName:(id)name;
- (void)_presentWiFiNetworkTimeoutAlert;
- (void)_reachabilityChanged:(id)changed;
- (void)_registerForNotifications;
- (void)_startNetworkScan;
- (void)_startWiFiScan:(id)scan;
- (void)_stopNetworkScan;
- (void)_stopWiFiScan:(id)scan;
- (void)_stopWiFiTimeroutTimer;
- (void)_updatePowerState;
- (void)_wifiNetworkAssociationCompleted:(id)completed;
- (void)_wifiNetworkScanCompleted;
- (void)_wifiTimeoutFired:(id)fired;
- (void)autoAdvanceToNextScene;
- (void)backButtonTapped:(id)tapped;
- (void)cleanUp;
- (void)continueTapped;
- (void)dealloc;
- (void)disableBackButton;
- (void)doneTapped;
- (void)enableBackButton;
- (void)enableContinueButton:(BOOL)button;
- (void)hideBackButton;
- (void)networkListViewController:(id)controller didTapRecord:(id)record;
- (void)networkListViewControllerDidTapOtherNetwork:(id)network;
- (void)reevaluateNetworkList;
- (void)reloadNetworkList;
- (void)setContinueButtonAvailable;
- (void)setContinueButtonBusy;
- (void)setupView;
- (void)showBackButton;
- (void)updateNetworkList;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CBNetworkViewController

- (CBNetworkViewController)initWithSetupPresentationTheme:(BOOL)theme
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
    v10->_isPresentedForSetupFlow = theme;
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

- (void)viewDidAppear:(BOOL)appear
{
  v17.receiver = self;
  v17.super_class = CBNetworkViewController;
  [(CBNetworkViewController *)&v17 viewDidAppear:appear];
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

  bootIntentManager = [(CBNetworkViewController *)self bootIntentManager];
  bootIntentWifiSSID = [bootIntentManager bootIntentWifiSSID];

  if (bootIntentWifiSSID)
  {
    v10 = [CBNetworkListRecord alloc];
    bootIntentManager2 = [(CBNetworkViewController *)self bootIntentManager];
    bootIntentWifiSSID2 = [bootIntentManager2 bootIntentWifiSSID];
    bootIntentManager3 = [(CBNetworkViewController *)self bootIntentManager];
    bootIntentWifiPassword = [bootIntentManager3 bootIntentWifiPassword];
    v15 = [(CBNetworkListRecord *)v10 initWithBootIntentSSID:bootIntentWifiSSID2 passwordProtected:bootIntentWifiPassword != 0];
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

  customBackButton = [(CBNetworkViewController *)self customBackButton];
  [customBackButton _setShowsBackButtonIndicator:1];

  if ([(CBNetworkViewController *)self isPresentedForSetupFlow])
  {
    [(CBNetworkViewController *)self showBackButton];
    v8 = +[OBBoldTrayButton boldButton];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"CONTINUE" value:&stru_10007EAB0 table:0];
    [v8 setTitle:v10 forState:0];

    [v8 addTarget:self action:"continueTapped" forControlEvents:64];
    buttonTray = [(CBNetworkViewController *)self buttonTray];
    [buttonTray addButton:v8];

    [(CBNetworkViewController *)self setContinueButton:v8];
    [(CBNetworkViewController *)self enableContinueButton:0];
    v12 = +[OBLinkTrayButton linkButton];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"CANCEL" value:&stru_10007EAB0 table:0];
    [v12 setTitle:v14 forState:0];

    [v12 addTarget:self action:"_presentExitDiagnosticsAlert" forControlEvents:64];
    buttonTray2 = [(CBNetworkViewController *)self buttonTray];
    [buttonTray2 addButton:v12];
  }

  else
  {
    [(CBNetworkViewController *)self hideBackButton];
    v8 = +[OBBoldTrayButton boldButton];
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"DONE" value:&stru_10007EAB0 table:0];
    [v8 setTitle:v17 forState:0];

    [v8 addTarget:self action:"doneTapped" forControlEvents:64];
    buttonTray3 = [(CBNetworkViewController *)self buttonTray];
    [buttonTray3 addButton:v8];

    [(CBNetworkViewController *)self setContinueButton:v8];
  }

  [(CBNetworkViewController *)self setShowNetworkSettings:0];
  [(CBNetworkViewController *)self setSupportsCellularActivation:0];
  [(CBNetworkViewController *)self setShowOtherNetwork:1];
  v20 = +[UIColor systemWhiteColor];
  tableView = [(CBNetworkViewController *)self tableView];
  [tableView setBackgroundColor:v20];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Network view controller will appear", buf, 2u);
  }

  [(CBNetworkViewController *)self setNetworkViewControllerVisible:1];
  v6.receiver = self;
  v6.super_class = CBNetworkViewController;
  [(CBNetworkViewController *)&v6 viewWillAppear:appearCopy];
  [(CBNetworkViewController *)self cleanUp];
  [(CBNetworkViewController *)self _startNetworkScan];
}

- (void)_startNetworkScan
{
  wifiManager = [(CBNetworkViewController *)self wifiManager];
  [wifiManager startWiFiNetworkScanRequestFrom:self];

  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Wi-Fi scan started", v5, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Network view controller will disappear", buf, 2u);
  }

  [(CBNetworkViewController *)self setNetworkViewControllerVisible:0];
  v7.receiver = self;
  v7.super_class = CBNetworkViewController;
  [(CBNetworkViewController *)&v7 viewWillDisappear:disappearCopy];
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
  wifiManager = [(CBNetworkViewController *)self wifiManager];
  [wifiManager stopWiFiNetworkScanRequestFrom:self];

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
  wifiManager = [(CBNetworkViewController *)self wifiManager];
  isWiFiPoweredOn = [wifiManager isWiFiPoweredOn];

  v4 = CheckerBoardLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isWiFiPoweredOn)
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

- (void)_wifiNetworkAssociationCompleted:(id)completed
{
  completedCopy = completed;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Wi-Fi network association completed notification sent", &v14, 2u);
  }

  otherNetworkWindow = [(CBNetworkViewController *)self otherNetworkWindow];

  if (otherNetworkWindow)
  {
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Dismissing Alternate Network View Controller…", &v14, 2u);
    }

    otherNetworkWindow2 = [(CBNetworkViewController *)self otherNetworkWindow];
    [otherNetworkWindow2 dismissViewControllerAnimated:1];

    [(CBNetworkViewController *)self setOtherNetworkWindow:0];
    [(CBNetworkViewController *)self _startNetworkScan];
  }

  [(CBNetworkViewController *)self _disableUIAndDisplaySpinnerBarItem];
  userInfo = [completedCopy userInfo];

  v10 = [userInfo objectForKeyedSubscript:@"CBWiFiManagerErrorKey"];
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

- (void)_attemptingToAssociateToOpenNetwork:(id)network
{
  name = [network name];
  v5 = [name isEqualToString:@"CBWiFiManagerWillAssociateToEncryptedNetworkNotification"];

  if (v5)
  {
    targetNetworkForBootIntent = [(CBNetworkViewController *)self targetNetworkForBootIntent];
    if (!targetNetworkForBootIntent)
    {
      goto LABEL_5;
    }

    v7 = targetNetworkForBootIntent;
    targetNetworkForBootIntent2 = [(CBNetworkViewController *)self targetNetworkForBootIntent];
    if (targetNetworkForBootIntent2)
    {
      v9 = targetNetworkForBootIntent2;
      currentNetwork = [(CBNetworkViewController *)self currentNetwork];
      targetNetworkForBootIntent3 = [(CBNetworkViewController *)self targetNetworkForBootIntent];
      v12 = [currentNetwork isEquivalentRecord:targetNetworkForBootIntent3];

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

- (void)_presentOpenNetworkAssociationFailureAlert:(id)alert
{
  userInfo = [alert userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"CBNetworkInfoKey"];
  networkName = [v4 networkName];
  [(CBNetworkViewController *)self _presentOpenNetworkAssociationFailureAlertWithNetworkName:networkName];
}

- (void)_presentOpenNetworkAssociationFailureAlertWithNetworkName:(id)name
{
  nameCopy = name;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Presenting open network association failure alert…", buf, 2u);
  }

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"UNABLE_TO_JOIN_NETWORK_TITLE" value:&stru_10007EAB0 table:0];
  nameCopy = [NSString stringWithFormat:v7, nameCopy];

  v9 = [UIAlertController alertControllerWithTitle:nameCopy message:0 preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"DISMISS" value:&stru_10007EAB0 table:0];
  v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:0];
  [v9 addAction:v12];

  [(CBNetworkViewController *)self presentViewController:v9 animated:1 completion:0];
  targetNetworkForBootIntent = [(CBNetworkViewController *)self targetNetworkForBootIntent];
  if (targetNetworkForBootIntent)
  {
    v14 = targetNetworkForBootIntent;
    currentNetwork = [(CBNetworkViewController *)self currentNetwork];
    targetNetworkForBootIntent2 = [(CBNetworkViewController *)self targetNetworkForBootIntent];
    v17 = [currentNetwork isEquivalentRecord:targetNetworkForBootIntent2];

    if (v17)
    {
      [(CBNetworkViewController *)self setTargetNetworkForBootIntent:0];
      [(CBNetworkViewController *)self setCurrentNetwork:0];
      [(CBNetworkViewController *)self setCurrentNetworkState:0];
      [(CBNetworkViewController *)self reloadNetworkList];
    }
  }
}

- (void)_presentEncryptedNetworkAssociationScene:(id)scene
{
  sceneCopy = scene;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Presenting (Enter the password) network scene…", v8, 2u);
  }

  userInfo = [sceneCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:@"CBNetworkInfoKey"];
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

- (void)_startWiFiScan:(id)scan
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

- (void)_stopWiFiScan:(id)scan
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

- (void)_reachabilityChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:CPNetworkObserverReachable];
  -[CBNetworkViewController setNetworkReachable:](self, "setNetworkReachable:", [v6 BOOLValue]);

  userInfo2 = [changedCopy userInfo];

  v8 = [userInfo2 objectForKeyedSubscript:CPNetworkObserverReachableFlags];

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

    wifiTimeoutTimer = [(CBNetworkViewController *)self wifiTimeoutTimer];

    if (wifiTimeoutTimer)
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
  selfCopy = self;
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
  tableView = [(CBNetworkViewController *)self tableView];
  [tableView setUserInteractionEnabled:0];

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
  tableView = [(CBNetworkViewController *)self tableView];
  [tableView setUserInteractionEnabled:1];

  [(CBNetworkViewController *)self setNetworkConnectionInProgress:0];
  [(CBNetworkViewController *)self reevaluateNetworkList];
}

- (void)setContinueButtonBusy
{
  if ([(CBNetworkViewController *)self isPresentedForSetupFlow])
  {
    continueButton = [(CBNetworkViewController *)self continueButton];

    if (continueButton)
    {
      v4 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting continue button to busy", v6, 2u);
      }

      continueButton2 = [(CBNetworkViewController *)self continueButton];
      [continueButton2 showsBusyIndicator];
    }
  }
}

- (void)setContinueButtonAvailable
{
  if ([(CBNetworkViewController *)self isPresentedForSetupFlow])
  {
    continueButton = [(CBNetworkViewController *)self continueButton];

    if (continueButton)
    {
      v4 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting continue button to not busy", v6, 2u);
      }

      continueButton2 = [(CBNetworkViewController *)self continueButton];
      [continueButton2 hidesBusyIndicator];
    }
  }
}

- (void)enableContinueButton:(BOOL)button
{
  buttonCopy = button;
  if ([(CBNetworkViewController *)self isPresentedForSetupFlow])
  {
    continueButton = [(CBNetworkViewController *)self continueButton];

    if (continueButton)
    {
      v6 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = @"disabled";
        if (buttonCopy)
        {
          v7 = @"enabled";
        }

        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Continue button is %@", &v9, 0xCu);
      }

      continueButton2 = [(CBNetworkViewController *)self continueButton];
      [continueButton2 setEnabled:buttonCopy];
    }
  }
}

- (void)_presentAlternateNetworkViewControllerWithInfo:(id)info password:(id)password ssid:(id)ssid
{
  ssidCopy = ssid;
  passwordCopy = password;
  infoCopy = info;
  v14 = [[CBAlternateNetworkViewController alloc] initWithScanResult:infoCopy prepopulatedPassword:passwordCopy prepopulatedSSID:ssidCopy];

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

- (void)_wifiTimeoutFired:(id)fired
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

  wifiTimeoutTimer = [(CBNetworkViewController *)self wifiTimeoutTimer];
  [wifiTimeoutTimer invalidate];

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

  currentNetwork = [(CBNetworkViewController *)self currentNetwork];
  targetNetworkForBootIntent = [(CBNetworkViewController *)self targetNetworkForBootIntent];
  if ([currentNetwork isEquivalentRecord:targetNetworkForBootIntent])
  {
    networkReachable = [(CBNetworkViewController *)self networkReachable];

    if ((networkReachable & 1) == 0)
    {
      targetNetworkForBootIntent2 = [(CBNetworkViewController *)self targetNetworkForBootIntent];
      [(CBNetworkViewController *)self networkListViewController:self didTapRecord:targetNetworkForBootIntent2];
      goto LABEL_9;
    }
  }

  else
  {
  }

  targetNetworkForBootIntent2 = objc_alloc_init(CBEndgameViewController);
  navigationController = [(CBNetworkViewController *)self navigationController];
  [navigationController pushViewController:targetNetworkForBootIntent2 animated:1];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"CBNetworkViewControllerDidAdvanceToNextSceneNotification" object:0];

  targetNetworkForBootIntent3 = [(CBNetworkViewController *)self targetNetworkForBootIntent];

  if (targetNetworkForBootIntent3)
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

- (void)networkListViewController:(id)controller didTapRecord:(id)record
{
  recordCopy = record;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    title = recordCopy;
    if (([title isBootIntentRecord] & 1) != 0 || (-[CBNetworkViewController targetNetworkForBootIntent](self, "targetNetworkForBootIntent"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, -[CBNetworkViewController targetNetworkForBootIntent](self, "targetNetworkForBootIntent"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(title, "isEquivalentRecord:", v9), v9, v8, v10))
    {
      bootIntentManager = [(CBNetworkViewController *)self bootIntentManager];
      bootIntentWifiSSID = [bootIntentManager bootIntentWifiSSID];

      bootIntentManager2 = [(CBNetworkViewController *)self bootIntentManager];
      bootIntentWifiPassword = [bootIntentManager2 bootIntentWifiPassword];

      wifiManager = [(CBNetworkViewController *)self wifiManager];
      v16 = wifiManager;
      if (bootIntentWifiPassword)
      {
        [wifiManager associateToHiddenEncryptedNetworkWithName:bootIntentWifiSSID password:bootIntentWifiPassword];
      }

      else
      {
        [wifiManager associateToHiddenUnencryptedNetworkWithName:bootIntentWifiSSID];
      }

      goto LABEL_16;
    }

    if (![title isSecure])
    {
      bootIntentWifiSSID = [(CBNetworkViewController *)self wifiManager];
      ssid = [title ssid];
      [bootIntentWifiSSID associateToHiddenUnencryptedNetworkWithName:ssid];

      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bootIntentWifiSSID = [title scanResult];
      [(CBNetworkViewController *)self _presentAlternateNetworkViewControllerWithInfo:bootIntentWifiSSID];
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

    title = [recordCopy title];
    [(CBNetworkViewController *)self _presentOpenNetworkAssociationFailureAlertWithNetworkName:title];
  }
}

- (void)networkListViewControllerDidTapOtherNetwork:(id)network
{
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Choose Another Network] button tapped", v5, 2u);
  }

  [(CBNetworkViewController *)self _presentAlternateNetworkViewControllerWithInfo:0];
}

- (void)backButtonTapped:(id)tapped
{
  navigationController = [(CBNetworkViewController *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (void)disableBackButton
{
  navigationItem = [(CBNetworkViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:0];
}

- (void)enableBackButton
{
  navigationItem = [(CBNetworkViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:1];
}

- (void)hideBackButton
{
  navigationItem = [(CBNetworkViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];

  navigationItem2 = [(CBNetworkViewController *)self navigationItem];
  [navigationItem2 setHidesBackButton:1];
}

- (void)showBackButton
{
  customBackButton = [(CBNetworkViewController *)self customBackButton];
  navigationItem = [(CBNetworkViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:customBackButton];
}

@end