@interface BuddySoftwareUpdateController
- (BFFFlowItemDelegate)delegate;
- (BuddySoftwareUpdateController)init;
- (BuddySoftwareUpdateControllerDelegate)softwareUpdateDelegate;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)createBoldButtonWithTitle:(id)a3 action:(SEL)a4;
- (id)createLinkButtonWithTitle:(id)a3 action:(SEL)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_allButtonsSetEnabled:(BOOL)a3;
- (void)_cancelDevicePasscodePicker:(id)a3;
- (void)_installFailedWithError:(id)a3;
- (void)beginDownloadingUpdate;
- (void)dealloc;
- (void)didBecomeActive:(id)a3;
- (void)downloadAndInstallPressed;
- (void)downloadAndInstallTonightPressed;
- (void)installNowPressed;
- (void)installTonightPressed;
- (void)manager:(id)a3 didTransitionToState:(int)a4 fromState:(int)a5;
- (void)manager:(id)a3 downloadDescriptor:(id)a4 progressChangedToNormalizedPercentComplete:(float)a5 displayStyle:(int)a6;
- (void)manager:(id)a3 installFailedWithError:(id)a4;
- (void)manager:(id)a3 installStartedForUpdate:(id)a4;
- (void)manager:(id)a3 promptForDevicePasscodeWithDescriptorCompletion:(id)a4;
- (void)managerDownloadFinished:(id)a3;
- (void)passcodeEntryController:(id)a3 didEnterPasscode:(id)a4;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)resetButtonState:(id)a3 andEventHandlers:(BOOL)a4;
- (void)resumePressed;
- (void)scanForUpdateCompletion:(id)a3;
- (void)setButtonTitle:(id)a3;
- (void)showErrorWithContent:(id)a3;
- (void)skipPressed;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddySoftwareUpdateController

- (BuddySoftwareUpdateController)init
{
  v16 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"SOFTWARE_UPDATE" value:&stru_10032F900 table:@"SoftwareUpdate"];
  location = 0;
  v15.receiver = self;
  v15.super_class = BuddySoftwareUpdateController;
  v5 = [(BuddySoftwareUpdateController *)&v15 initWithTitle:v4 detailText:0 icon:0 adoptTableViewScrollView:1];
  location = v5;
  objc_storeStrong(&location, v5);

  if (v5)
  {
    v6 = [BuddySUSUISoftwareUpdateManager createWithDelegate:location hostController:location];
    v7 = *(location + 1);
    *(location + 1) = v6;

    v8 = *(location + 1);
    v9 = +[RUIStyle setupAssistantModalStyle];
    [v8 setServerFlowStyle:v9];

    v10 = [objc_alloc(sub_1001ACC08()) initWithStyle:3 reuseIdentifier:0 specifier:0];
    v11 = *(location + 2);
    *(location + 2) = v10;

    [*(location + 2) setSeparatorInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    v12 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v12 addObserver:location selector:"didBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];
  }

  v13 = location;
  objc_storeStrong(&location, 0);
  return v13;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:v5];

  v3.receiver = v5;
  v3.super_class = BuddySoftwareUpdateController;
  [(BuddySoftwareUpdateController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v35 = self;
  v34 = a2;
  v33.receiver = self;
  v33.super_class = BuddySoftwareUpdateController;
  [(BuddySoftwareUpdateController *)&v33 viewDidLoad];
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [(BuddySUSUISoftwareUpdateManagerProtocol *)v35->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController viewDidLoad]", v2);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v3 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddySoftwareUpdateController *)v35 setTableView:v3];

  v4 = v35;
  v5 = [(BuddySoftwareUpdateController *)v35 tableView];
  [v5 setDelegate:v4];

  v6 = v35;
  v7 = [(BuddySoftwareUpdateController *)v35 tableView];
  [v7 setDataSource:v6];

  v8 = [(BuddySoftwareUpdateController *)v35 tableView];
  [v8 setRowHeight:UITableViewAutomaticDimension];

  v9 = [(BuddySoftwareUpdateController *)v35 tableView];
  [v9 setEstimatedRowHeight:0.0];

  v10 = [(BuddySoftwareUpdateController *)v35 tableView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(BuddySoftwareUpdateController *)v35 tableView];
  [v11 setAlwaysBounceVertical:0];

  v12 = [objc_alloc(sub_1001ACC08()) initWithStyle:3 reuseIdentifier:0 specifier:0];
  titleCell = v35->_titleCell;
  v35->_titleCell = v12;

  [(SUSSoftwareUpdateTitleCell *)v35->_titleCell setSeparatorInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  v14 = v35;
  v15 = +[NSBundle mainBundle];
  v16 = [(NSBundle *)v15 localizedStringForKey:@"DOWNLOAD_AND_INSTALL" value:&stru_10032F900 table:@"SoftwareUpdate"];
  v17 = [(BuddySoftwareUpdateController *)v14 createBoldButtonWithTitle:v16 action:"beginDownloadingUpdate"];
  updateNowButton = v35->_updateNowButton;
  v35->_updateNowButton = v17;

  v19 = [(BuddySoftwareUpdateController *)v35 buttonTray];
  [v19 addButton:v35->_updateNowButton];

  if ([(BuddySoftwareUpdateController *)v35 allowUserToInstallTonight])
  {
    v20 = v35;
    v21 = +[NSBundle mainBundle];
    v22 = [(NSBundle *)v21 localizedStringForKey:@"INSTALL_TONIGHT" value:&stru_10032F900 table:@"SoftwareUpdate"];
    v23 = [(BuddySoftwareUpdateController *)v20 createLinkButtonWithTitle:v22 action:"installTonightPressed"];
    updateTonightButton = v35->_updateTonightButton;
    v35->_updateTonightButton = v23;

    v25 = [(BuddySoftwareUpdateController *)v35 buttonTray];
    [v25 addButton:v35->_updateTonightButton];
  }

  if ([(BuddySoftwareUpdateController *)v35 allowUserToSkip])
  {
    v26 = v35;
    v27 = +[NSBundle mainBundle];
    v28 = [(NSBundle *)v27 localizedStringForKey:@"SKIP" value:&stru_10032F900 table:@"SoftwareUpdate"];
    v29 = [(BuddySoftwareUpdateController *)v26 createLinkButtonWithTitle:v28 action:"skipPressed"];
    skipButton = v35->_skipButton;
    v35->_skipButton = v29;

    v31 = [(BuddySoftwareUpdateController *)v35 buttonTray];
    [v31 addButton:v35->_skipButton];
  }
}

- (void)scanForUpdateCompletion:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_initWeak(&from, v14);
  manager = v14->_manager;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001AD44C;
  v8 = &unk_10032E400;
  objc_copyWeak(&v11, &from);
  v9 = v14;
  v10 = location[0];
  [(BuddySUSUISoftwareUpdateManagerProtocol *)manager scanForUpdatesCompletion:&v4];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7.receiver = self;
  v7.super_class = BuddySoftwareUpdateController;
  [(BuddySoftwareUpdateController *)&v7 viewWillAppear:a3];
  v3 = [(BuddySoftwareUpdateController *)v10 tableView];
  [v3 reloadData];

  if (([(BuddySoftwareUpdateController *)v10 isMovingToParentViewController]& 1) != 0)
  {
    v4 = v10;
    manager = v10->_manager;
    v6 = [(BuddySUSUISoftwareUpdateManagerProtocol *)manager state];
    [(BuddySoftwareUpdateController *)v4 manager:manager didTransitionToState:v6 fromState:[(BuddySUSUISoftwareUpdateManagerProtocol *)v10->_manager state]];
    [(BuddySUSUISoftwareUpdateManagerProtocol *)v10->_manager refreshState];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8.receiver = self;
  v8.super_class = BuddySoftwareUpdateController;
  [(BuddySoftwareUpdateController *)&v8 viewDidAppear:a3];
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(BuddySUSUISoftwareUpdateManagerProtocol *)v11->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController viewDidAppear:]", v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(SUSSoftwareUpdateTitleCell *)v11->_titleCell setAnimatingGearView:[(BuddySUSUISoftwareUpdateManagerProtocol *)v11->_manager state]== 12];
  v4 = [(BuddySoftwareUpdateController *)v11 tableView];
  v5 = [(BuddySoftwareUpdateController *)v11 tableView];
  v6 = [v5 indexPathForSelectedRow];
  [v4 deselectRowAtIndexPath:v6 animated:1];
}

- (void)didBecomeActive:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddySUSUISoftwareUpdateManagerProtocol *)v6->_manager refreshState];
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(BuddySUSUISoftwareUpdateManagerProtocol *)v6->_manager publicCheckpointLogDetails];
    sub_1001ADB20(buf, v3, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\nNotification: %@", buf, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
}

- (void)beginDownloadingUpdate
{
  v15 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [(BuddySUSUISoftwareUpdateManagerProtocol *)v15->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController beginDownloadingUpdate]", v2);
    _os_log_impl(&_mh_execute_header, oslog[0], v13, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  [(OBBoldTrayButton *)v15->_updateNowButton showsBusyIndicator];
  [(BuddySoftwareUpdateController *)v15 _allButtonsSetEnabled:0];
  objc_initWeak(&location, v15);
  manager = v15->_manager;
  v4 = [(BuddySoftwareUpdateController *)v15 update];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001ADDC4;
  v9 = &unk_10032D7C8;
  objc_copyWeak(v11, &location);
  v10 = v15;
  [(BuddySUSUISoftwareUpdateManagerProtocol *)manager startDownloadAndInstall:1 update:v4 withHandler:&v5];

  objc_storeStrong(&v10, 0);
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)downloadAndInstallPressed
{
  v4 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [(BuddySUSUISoftwareUpdateManagerProtocol *)v4->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController downloadAndInstallPressed]", v2);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  v4->_userChoice = 1;
  [(BuddySoftwareUpdateController *)v4 beginDownloadingUpdate];
}

- (void)installTonightPressed
{
  v15 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [(BuddySUSUISoftwareUpdateManagerProtocol *)v15->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController installTonightPressed]", v2);
    _os_log_impl(&_mh_execute_header, oslog[0], v13, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  v15->_userChoice = 2;
  [(OBBoldTrayButton *)v15->_updateNowButton showsBusyIndicator];
  [(BuddySoftwareUpdateController *)v15 _allButtonsSetEnabled:0];
  v3 = [(BuddySoftwareUpdateController *)v15 navigationItem];
  [v3 setHidesBackButton:1];

  v4 = [(BuddySoftwareUpdateController *)v15 view];
  [v4 setUserInteractionEnabled:0];

  objc_initWeak(&location, v15);
  manager = v15->_manager;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1001AE348;
  v10 = &unk_10032E428;
  objc_copyWeak(&v11, &location);
  [(BuddySUSUISoftwareUpdateManagerProtocol *)manager setAutoInstall:&v6];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)skipPressed
{
  v5 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [(BuddySUSUISoftwareUpdateManagerProtocol *)v5->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController skipPressed]", v2);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  v3 = [(BuddySoftwareUpdateController *)v5 delegate];
  [(BFFFlowItemDelegate *)v3 flowItemDone:v5];
}

- (void)installNowPressed
{
  v18 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(v18 + 1) publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController installNowPressed]", v2);
    _os_log_impl(&_mh_execute_header, oslog[0], v16, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  *(v18 + 7) = 1;
  [*(v18 + 3) showsBusyIndicator];
  [v18 _allButtonsSetEnabled:0];
  v3 = [v18 navigationItem];
  [v3 setHidesBackButton:1];

  v4 = [v18 view];
  [v4 setUserInteractionEnabled:0];

  v5 = [v18 passcodeCacheManager];
  [v5 persistPasscodeStash];

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1001AE8FC;
  v13 = &unk_10032B0D0;
  v14 = v18;
  location = objc_retainBlock(&v10);
  v6 = [v18 softwareUpdateDelegate];

  if (v6)
  {
    v7 = [v18 softwareUpdateDelegate];
    v8 = v18;
    v9 = [v18 update];
    [v7 softwareUpdateController:v8 prepareToInstallUpdate:v9 completion:location];
  }

  else
  {
    (*(location + 2))();
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v14, 0);
}

- (void)resumePressed
{
  v4 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [(BuddySUSUISoftwareUpdateManagerProtocol *)v4->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController resumePressed]", v2);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  [(BuddySUSUISoftwareUpdateManagerProtocol *)v4->_manager resumeDownload];
}

- (void)downloadAndInstallTonightPressed
{
  v4 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [(BuddySUSUISoftwareUpdateManagerProtocol *)v4->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController downloadAndInstallTonightPressed]", v2);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  v4->_userChoice = 2;
  [(BuddySoftwareUpdateController *)v4 beginDownloadingUpdate];
}

- (void)_installFailedWithError:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(BuddySUSUISoftwareUpdateManagerProtocol *)v17->_manager publicCheckpointLogDetails];
    sub_1001AEFB8(buf, v3, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, v14, "%s: Software Update Buddy Checkpoint -%{public}@\n\nError: %{public}@", buf, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  v4 = [location[0] domain];
  v5 = 0;
  if ([v4 isEqualToString:SUErrorDomain])
  {
    v5 = [location[0] code] == 14;
  }

  if (v5)
  {
    v13 = _BYLoggingFacility();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v13;
      v7 = v12;
      sub_10006AA68(v11);
      _os_log_impl(&_mh_execute_header, v6, v7, "Software Update install in progress. Ignore error...", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
  }

  else
  {
    v8 = [(BuddySoftwareUpdateController *)v17 navigationItem];
    [v8 setHidesBackButton:0];

    v9 = [(BuddySoftwareUpdateController *)v17 view];
    [v9 setUserInteractionEnabled:1];

    [(OBBoldTrayButton *)v17->_updateNowButton hidesBusyIndicator];
    [(BuddySoftwareUpdateController *)v17 _allButtonsSetEnabled:1];
    v10 = [(BuddySoftwareUpdateController *)v17 softwareUpdateDelegate];
    [(BuddySoftwareUpdateControllerDelegate *)v10 softwareUpdateController:v17 didFailToInstallUpdateWithError:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (BYSetupAssistantHasCompletedInitialRun())
  {
    (*(location[0] + 2))(location[0], 0);
  }

  v3 = v11;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001AF138;
  v8 = &unk_10032E450;
  v9 = location[0];
  [(BuddySoftwareUpdateController *)v3 scanForUpdateCompletion:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)passcodeEntryController:(id)a3 didEnterPasscode:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(BuddySUSUISoftwareUpdateManagerProtocol *)v13->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController passcodeEntryController:didEnterPasscode:]", v5);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if ([v11 length])
  {
    [(BuddySoftwareUpdateController *)v13 dismissViewControllerAnimated:1 completion:0];
    if (v13->_devicePasscodeCompletion)
    {
      devicePasscodeCompletion = v13->_devicePasscodeCompletion;
      v7 = v11;
      v8 = [(BuddySoftwareUpdateController *)v13 update];
      devicePasscodeCompletion[2](devicePasscodeCompletion, v7, v8);

      v9 = v13->_devicePasscodeCompletion;
      v13->_devicePasscodeCompletion = 0;
    }
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_cancelDevicePasscodePicker:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddySoftwareUpdateController *)v5 dismissViewControllerAnimated:1 completion:0];
  devicePasscodeCompletion = v5->_devicePasscodeCompletion;
  v5->_devicePasscodeCompletion = 0;

  [(BuddySoftwareUpdateController *)v5 _installFailedWithError:0];
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 promptForDevicePasscodeWithDescriptorCompletion:(id)a4
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  oslog = _BYLoggingFacility();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(BuddySUSUISoftwareUpdateManagerProtocol *)v25->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController manager:promptForDevicePasscodeWithDescriptorCompletion:]", v5);
    _os_log_impl(&_mh_execute_header, oslog, v21, "%s: Software Update Buddy Checkpoint -%{public}@\n\nBuddy SU asked for device passcode", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v6 = [(BuddySoftwareUpdateController *)v25 passcodeCacheManager];
  v20 = [(BYPasscodeCacheManager *)v6 cachedPasscode];

  if (v20 && v23)
  {
    v7 = v23;
    v8 = [(BuddySoftwareUpdateController *)v25 update];
    v7[2](v7, v20, v8);

    v19 = 1;
  }

  else
  {
    v9 = [v23 copy];
    devicePasscodeCompletion = v25->_devicePasscodeCompletion;
    v25->_devicePasscodeCompletion = v9;

    objc_initWeak(&from, v25);
    v11 = &_dispatch_main_q;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_1001AF6D0;
    v16 = &unk_10032AF58;
    objc_copyWeak(&v17, &from);
    dispatch_async(v11, &v12);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&from);
    v19 = 0;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)setButtonTitle:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(OBBoldTrayButton *)v4->_updateNowButton setTitle:location[0] forState:0];
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 didTransitionToState:(int)a4 fromState:(int)a5
{
  val = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = a4;
  v26 = a5;
  v7 = location[0];
  v8 = [val update];
  v25 = [v7 errorForUpdate:v8];

  oslog = _BYLoggingFacility();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(val + 1) publicCheckpointLogDetails];
    v22 = [BuddySUSUISoftwareUpdateManager stringFromSoftwareUpdateState:v26];
    v21 = [BuddySUSUISoftwareUpdateManager stringFromSoftwareUpdateState:v27];
    sub_1001AFC64(buf, v9, v22, v26, v21, v27, v25);
    _os_log_impl(&_mh_execute_header, oslog, v23, "%s: Software Update Buddy Checkpoint -%{public}@\n\nPerforming SU transition: %{public}@ (%lu) -> %{public}@ (%lu), error: %@", buf, 0x48u);

    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(&oslog, 0);
  objc_initWeak(&from, val);
  v10 = &_dispatch_main_q;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1001AFCBC;
  v15 = &unk_10032E478;
  objc_copyWeak(&v18, &from);
  v16 = val;
  v17 = v25;
  v19 = v27;
  dispatch_async(v10, &v11);

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 downloadDescriptor:(id)a4 progressChangedToNormalizedPercentComplete:(float)a5 displayStyle:(int)a6
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = a5;
  v20 = a6;
  objc_initWeak(&from, v24);
  v9 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1001B0990;
  v14 = &unk_10032E4A0;
  objc_copyWeak(&v16, &from);
  v17 = v21;
  v15 = v22;
  v18 = v20;
  dispatch_async(v9, &block);

  objc_storeStrong(&v15, 0);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)managerDownloadFinished:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_initWeak(&from, v13);
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001B0CF8;
  v8 = &unk_10032AFA8;
  objc_copyWeak(&v10, &from);
  v9 = v13;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 installStartedForUpdate:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(BuddySoftwareUpdateController *)v8 softwareUpdateDelegate];
  [(BuddySoftwareUpdateControllerDelegate *)v5 softwareUpdateController:v8 didStartInstallForUpdate:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 installFailedWithError:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  objc_initWeak(&from, v16);
  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1001B11E4;
  v10 = &unk_10032AFA8;
  objc_copyWeak(&v12, &from);
  v11 = v14;
  dispatch_async(v5, &block);

  objc_storeStrong(&v11, 0);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 1;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(BuddySoftwareUpdateController *)v17 update];
  v5 = v4 == 0;

  if (v5)
  {
    v18 = 0;
  }

  else
  {
    v6 = [(BuddySoftwareUpdateController *)v17 update];
    v7 = [(SUDescriptor *)v6 documentation];
    v14 = 0;
    v12 = 0;
    v10 = 0;
    v8 = 0;
    if (v7)
    {
      v15 = [(BuddySoftwareUpdateController *)v17 update];
      v14 = 1;
      v13 = [(SUDescriptor *)v15 documentation];
      v12 = 1;
      v11 = [v13 releaseNotes];
      v10 = 1;
      v8 = v11 != 0;
    }

    if (v10)
    {
    }

    if (v12)
    {
    }

    if (v14)
    {
    }

    if (v8)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v18;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  if ([v17 row])
  {
    if ([v17 row] == 1)
    {
      v15 = [location[0] dequeueReusableCellWithIdentifier:@"LearnMoreCellIdentifier"];
      if (!v15)
      {
        v15 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"LearnMoreCellIdentifier"];

        v5 = [v15 textLabel];
        v6 = +[NSBundle mainBundle];
        v7 = [(NSBundle *)v6 localizedStringForKey:@"LEARN_MORE" value:&stru_10032F900 table:@"SoftwareUpdate"];
        [v5 setText:v7];

        v8 = [v15 textLabel];
        v9 = +[BFFStyle sharedStyle];
        v10 = [v9 tableCellFont];
        [v8 setFont:v10];

        v11 = [v15 textLabel];
        v12 = +[UIColor _labelColor];
        [v11 setTextColor:v12];

        [v15 setSeparatorInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
        [v15 setAccessoryType:1];
      }

      v20 = v15;
      v16 = 1;
      objc_storeStrong(&v15, 0);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v20 = v19->_titleCell;
    v16 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  v13 = v20;

  return v13;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if ([v7 row])
  {
    if ([v7 row] == 1)
    {
      v10 = 60.0;
    }
  }

  else
  {
    [(SUSSoftwareUpdateTitleCell *)v9->_titleCell preferredHeightWithTable:location[0]];
    v10 = v5;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  if ([v16 row] == 1)
  {
    v15 = [objc_alloc(sub_1001B19AC()) initWithNibName:0 bundle:0];
    v5 = [NSString alloc];
    v6 = [(BuddySoftwareUpdateController *)v18 update];
    v7 = [(SUDescriptor *)v6 documentation];
    v8 = [v7 releaseNotes];
    v9 = [v5 initWithData:v8 encoding:4];
    [v15 setReleaseNotes:v9];

    if (BFFIsiPad())
    {
      v14 = [[UINavigationController alloc] initWithRootViewController:v15];
      [v14 setModalPresentationStyle:2];
      v10 = [UIBarButtonItem alloc];
      v13 = [v10 initWithBarButtonSystemItem:0 target:v18 action:"detailedReleaseNotesDonePressed"];
      v11 = [v15 navigationItem];
      [v11 setRightBarButtonItem:v13];

      [(BuddySoftwareUpdateController *)v18 presentViewController:v14 animated:1 completion:0];
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v14, 0);
    }

    else
    {
      v12 = [(BuddySoftwareUpdateController *)v18 navigationController];
      [v12 pushViewController:v15 animated:1];
    }

    objc_storeStrong(&v15, 0);
  }

  [location[0] deselectRowAtIndexPath:v16 animated:1];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (id)createBoldButtonWithTitle:(id)a3 action:(SEL)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7[1] = a4;
  v7[0] = +[OBBoldTrayButton boldButton];
  [v7[0] setTitle:location[0] forState:0];
  [v7[0] addTarget:v9 action:a4 forControlEvents:64];
  v5 = v7[0];
  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (id)createLinkButtonWithTitle:(id)a3 action:(SEL)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7[1] = a4;
  v7[0] = +[OBLinkTrayButton linkButton];
  [v7[0] setTitle:location[0] forState:0];
  [v7[0] addTarget:v9 action:a4 forControlEvents:64];
  v5 = v7[0];
  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)_allButtonsSetEnabled:(BOOL)a3
{
  [(OBBoldTrayButton *)self->_updateNowButton setEnabled:a3];
  [(OBLinkTrayButton *)self->_updateTonightButton setEnabled:a3];
  [(OBLinkTrayButton *)self->_skipButton setEnabled:a3];
}

- (void)showErrorWithContent:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(OBBoldTrayButton *)v4->_updateNowButton setTitle:location[0] forState:0];
  [(OBBoldTrayButton *)v4->_updateNowButton setEnabled:0];
  if (v4->_updateTonightButton)
  {
    [(OBLinkTrayButton *)v4->_updateTonightButton setHidden:1];
  }

  objc_storeStrong(location, 0);
}

- (void)resetButtonState:(id)a3 andEventHandlers:(BOOL)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] setEnabled:1];
  [location[0] setHidden:0];
  if (a4)
  {
    [location[0] removeTarget:v6 action:0 forControlEvents:64];
  }

  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (BuddySoftwareUpdateControllerDelegate)softwareUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_softwareUpdateDelegate);

  return WeakRetained;
}

@end