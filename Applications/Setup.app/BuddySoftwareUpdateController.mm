@interface BuddySoftwareUpdateController
- (BFFFlowItemDelegate)delegate;
- (BuddySoftwareUpdateController)init;
- (BuddySoftwareUpdateControllerDelegate)softwareUpdateDelegate;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)createBoldButtonWithTitle:(id)title action:(SEL)action;
- (id)createLinkButtonWithTitle:(id)title action:(SEL)action;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_allButtonsSetEnabled:(BOOL)enabled;
- (void)_cancelDevicePasscodePicker:(id)picker;
- (void)_installFailedWithError:(id)error;
- (void)beginDownloadingUpdate;
- (void)dealloc;
- (void)didBecomeActive:(id)active;
- (void)downloadAndInstallPressed;
- (void)downloadAndInstallTonightPressed;
- (void)installNowPressed;
- (void)installTonightPressed;
- (void)manager:(id)manager didTransitionToState:(int)state fromState:(int)fromState;
- (void)manager:(id)manager downloadDescriptor:(id)descriptor progressChangedToNormalizedPercentComplete:(float)complete displayStyle:(int)style;
- (void)manager:(id)manager installFailedWithError:(id)error;
- (void)manager:(id)manager installStartedForUpdate:(id)update;
- (void)manager:(id)manager promptForDevicePasscodeWithDescriptorCompletion:(id)completion;
- (void)managerDownloadFinished:(id)finished;
- (void)passcodeEntryController:(id)controller didEnterPasscode:(id)passcode;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)resetButtonState:(id)state andEventHandlers:(BOOL)handlers;
- (void)resumePressed;
- (void)scanForUpdateCompletion:(id)completion;
- (void)setButtonTitle:(id)title;
- (void)showErrorWithContent:(id)content;
- (void)skipPressed;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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
  selfCopy = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:selfCopy];

  v3.receiver = selfCopy;
  v3.super_class = BuddySoftwareUpdateController;
  [(BuddySoftwareUpdateController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v34 = a2;
  v33.receiver = self;
  v33.super_class = BuddySoftwareUpdateController;
  [(BuddySoftwareUpdateController *)&v33 viewDidLoad];
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    publicCheckpointLogDetails = [(BuddySUSUISoftwareUpdateManagerProtocol *)selfCopy->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController viewDidLoad]", publicCheckpointLogDetails);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v3 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddySoftwareUpdateController *)selfCopy setTableView:v3];

  v4 = selfCopy;
  tableView = [(BuddySoftwareUpdateController *)selfCopy tableView];
  [tableView setDelegate:v4];

  v6 = selfCopy;
  tableView2 = [(BuddySoftwareUpdateController *)selfCopy tableView];
  [tableView2 setDataSource:v6];

  tableView3 = [(BuddySoftwareUpdateController *)selfCopy tableView];
  [tableView3 setRowHeight:UITableViewAutomaticDimension];

  tableView4 = [(BuddySoftwareUpdateController *)selfCopy tableView];
  [tableView4 setEstimatedRowHeight:0.0];

  tableView5 = [(BuddySoftwareUpdateController *)selfCopy tableView];
  [tableView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView6 = [(BuddySoftwareUpdateController *)selfCopy tableView];
  [tableView6 setAlwaysBounceVertical:0];

  v12 = [objc_alloc(sub_1001ACC08()) initWithStyle:3 reuseIdentifier:0 specifier:0];
  titleCell = selfCopy->_titleCell;
  selfCopy->_titleCell = v12;

  [(SUSSoftwareUpdateTitleCell *)selfCopy->_titleCell setSeparatorInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  v14 = selfCopy;
  v15 = +[NSBundle mainBundle];
  v16 = [(NSBundle *)v15 localizedStringForKey:@"DOWNLOAD_AND_INSTALL" value:&stru_10032F900 table:@"SoftwareUpdate"];
  v17 = [(BuddySoftwareUpdateController *)v14 createBoldButtonWithTitle:v16 action:"beginDownloadingUpdate"];
  updateNowButton = selfCopy->_updateNowButton;
  selfCopy->_updateNowButton = v17;

  buttonTray = [(BuddySoftwareUpdateController *)selfCopy buttonTray];
  [buttonTray addButton:selfCopy->_updateNowButton];

  if ([(BuddySoftwareUpdateController *)selfCopy allowUserToInstallTonight])
  {
    v20 = selfCopy;
    v21 = +[NSBundle mainBundle];
    v22 = [(NSBundle *)v21 localizedStringForKey:@"INSTALL_TONIGHT" value:&stru_10032F900 table:@"SoftwareUpdate"];
    v23 = [(BuddySoftwareUpdateController *)v20 createLinkButtonWithTitle:v22 action:"installTonightPressed"];
    updateTonightButton = selfCopy->_updateTonightButton;
    selfCopy->_updateTonightButton = v23;

    buttonTray2 = [(BuddySoftwareUpdateController *)selfCopy buttonTray];
    [buttonTray2 addButton:selfCopy->_updateTonightButton];
  }

  if ([(BuddySoftwareUpdateController *)selfCopy allowUserToSkip])
  {
    v26 = selfCopy;
    v27 = +[NSBundle mainBundle];
    v28 = [(NSBundle *)v27 localizedStringForKey:@"SKIP" value:&stru_10032F900 table:@"SoftwareUpdate"];
    v29 = [(BuddySoftwareUpdateController *)v26 createLinkButtonWithTitle:v28 action:"skipPressed"];
    skipButton = selfCopy->_skipButton;
    selfCopy->_skipButton = v29;

    buttonTray3 = [(BuddySoftwareUpdateController *)selfCopy buttonTray];
    [buttonTray3 addButton:selfCopy->_skipButton];
  }
}

- (void)scanForUpdateCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  objc_initWeak(&from, selfCopy);
  manager = selfCopy->_manager;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001AD44C;
  v8 = &unk_10032E400;
  objc_copyWeak(&v11, &from);
  v9 = selfCopy;
  v10 = location[0];
  [(BuddySUSUISoftwareUpdateManagerProtocol *)manager scanForUpdatesCompletion:&v4];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v9 = a2;
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = BuddySoftwareUpdateController;
  [(BuddySoftwareUpdateController *)&v7 viewWillAppear:appear];
  tableView = [(BuddySoftwareUpdateController *)selfCopy tableView];
  [tableView reloadData];

  if (([(BuddySoftwareUpdateController *)selfCopy isMovingToParentViewController]& 1) != 0)
  {
    v4 = selfCopy;
    manager = selfCopy->_manager;
    state = [(BuddySUSUISoftwareUpdateManagerProtocol *)manager state];
    [(BuddySoftwareUpdateController *)v4 manager:manager didTransitionToState:state fromState:[(BuddySUSUISoftwareUpdateManagerProtocol *)selfCopy->_manager state]];
    [(BuddySUSUISoftwareUpdateManagerProtocol *)selfCopy->_manager refreshState];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v10 = a2;
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = BuddySoftwareUpdateController;
  [(BuddySoftwareUpdateController *)&v8 viewDidAppear:appear];
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    publicCheckpointLogDetails = [(BuddySUSUISoftwareUpdateManagerProtocol *)selfCopy->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController viewDidAppear:]", publicCheckpointLogDetails);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(SUSSoftwareUpdateTitleCell *)selfCopy->_titleCell setAnimatingGearView:[(BuddySUSUISoftwareUpdateManagerProtocol *)selfCopy->_manager state]== 12];
  tableView = [(BuddySoftwareUpdateController *)selfCopy tableView];
  tableView2 = [(BuddySoftwareUpdateController *)selfCopy tableView];
  indexPathForSelectedRow = [tableView2 indexPathForSelectedRow];
  [tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
}

- (void)didBecomeActive:(id)active
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, active);
  [(BuddySUSUISoftwareUpdateManagerProtocol *)selfCopy->_manager refreshState];
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    publicCheckpointLogDetails = [(BuddySUSUISoftwareUpdateManagerProtocol *)selfCopy->_manager publicCheckpointLogDetails];
    sub_1001ADB20(buf, publicCheckpointLogDetails, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\nNotification: %@", buf, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
}

- (void)beginDownloadingUpdate
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    publicCheckpointLogDetails = [(BuddySUSUISoftwareUpdateManagerProtocol *)selfCopy->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController beginDownloadingUpdate]", publicCheckpointLogDetails);
    _os_log_impl(&_mh_execute_header, oslog[0], v13, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  [(OBBoldTrayButton *)selfCopy->_updateNowButton showsBusyIndicator];
  [(BuddySoftwareUpdateController *)selfCopy _allButtonsSetEnabled:0];
  objc_initWeak(&location, selfCopy);
  manager = selfCopy->_manager;
  update = [(BuddySoftwareUpdateController *)selfCopy update];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001ADDC4;
  v9 = &unk_10032D7C8;
  objc_copyWeak(v11, &location);
  v10 = selfCopy;
  [(BuddySUSUISoftwareUpdateManagerProtocol *)manager startDownloadAndInstall:1 update:update withHandler:&v5];

  objc_storeStrong(&v10, 0);
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)downloadAndInstallPressed
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    publicCheckpointLogDetails = [(BuddySUSUISoftwareUpdateManagerProtocol *)selfCopy->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController downloadAndInstallPressed]", publicCheckpointLogDetails);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  selfCopy->_userChoice = 1;
  [(BuddySoftwareUpdateController *)selfCopy beginDownloadingUpdate];
}

- (void)installTonightPressed
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    publicCheckpointLogDetails = [(BuddySUSUISoftwareUpdateManagerProtocol *)selfCopy->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController installTonightPressed]", publicCheckpointLogDetails);
    _os_log_impl(&_mh_execute_header, oslog[0], v13, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  selfCopy->_userChoice = 2;
  [(OBBoldTrayButton *)selfCopy->_updateNowButton showsBusyIndicator];
  [(BuddySoftwareUpdateController *)selfCopy _allButtonsSetEnabled:0];
  navigationItem = [(BuddySoftwareUpdateController *)selfCopy navigationItem];
  [navigationItem setHidesBackButton:1];

  view = [(BuddySoftwareUpdateController *)selfCopy view];
  [view setUserInteractionEnabled:0];

  objc_initWeak(&location, selfCopy);
  manager = selfCopy->_manager;
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
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    publicCheckpointLogDetails = [(BuddySUSUISoftwareUpdateManagerProtocol *)selfCopy->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController skipPressed]", publicCheckpointLogDetails);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  delegate = [(BuddySoftwareUpdateController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];
}

- (void)installNowPressed
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    publicCheckpointLogDetails = [*(selfCopy + 1) publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController installNowPressed]", publicCheckpointLogDetails);
    _os_log_impl(&_mh_execute_header, oslog[0], v16, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  *(selfCopy + 7) = 1;
  [*(selfCopy + 3) showsBusyIndicator];
  [selfCopy _allButtonsSetEnabled:0];
  navigationItem = [selfCopy navigationItem];
  [navigationItem setHidesBackButton:1];

  view = [selfCopy view];
  [view setUserInteractionEnabled:0];

  passcodeCacheManager = [selfCopy passcodeCacheManager];
  [passcodeCacheManager persistPasscodeStash];

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1001AE8FC;
  v13 = &unk_10032B0D0;
  v14 = selfCopy;
  location = objc_retainBlock(&v10);
  softwareUpdateDelegate = [selfCopy softwareUpdateDelegate];

  if (softwareUpdateDelegate)
  {
    softwareUpdateDelegate2 = [selfCopy softwareUpdateDelegate];
    v8 = selfCopy;
    update = [selfCopy update];
    [softwareUpdateDelegate2 softwareUpdateController:v8 prepareToInstallUpdate:update completion:location];
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
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    publicCheckpointLogDetails = [(BuddySUSUISoftwareUpdateManagerProtocol *)selfCopy->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController resumePressed]", publicCheckpointLogDetails);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  [(BuddySUSUISoftwareUpdateManagerProtocol *)selfCopy->_manager resumeDownload];
}

- (void)downloadAndInstallTonightPressed
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    publicCheckpointLogDetails = [(BuddySUSUISoftwareUpdateManagerProtocol *)selfCopy->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController downloadAndInstallTonightPressed]", publicCheckpointLogDetails);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  selfCopy->_userChoice = 2;
  [(BuddySoftwareUpdateController *)selfCopy beginDownloadingUpdate];
}

- (void)_installFailedWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  oslog = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    publicCheckpointLogDetails = [(BuddySUSUISoftwareUpdateManagerProtocol *)selfCopy->_manager publicCheckpointLogDetails];
    sub_1001AEFB8(buf, publicCheckpointLogDetails, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, v14, "%s: Software Update Buddy Checkpoint -%{public}@\n\nError: %{public}@", buf, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  domain = [location[0] domain];
  v5 = 0;
  if ([domain isEqualToString:SUErrorDomain])
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
    navigationItem = [(BuddySoftwareUpdateController *)selfCopy navigationItem];
    [navigationItem setHidesBackButton:0];

    view = [(BuddySoftwareUpdateController *)selfCopy view];
    [view setUserInteractionEnabled:1];

    [(OBBoldTrayButton *)selfCopy->_updateNowButton hidesBusyIndicator];
    [(BuddySoftwareUpdateController *)selfCopy _allButtonsSetEnabled:1];
    softwareUpdateDelegate = [(BuddySoftwareUpdateController *)selfCopy softwareUpdateDelegate];
    [(BuddySoftwareUpdateControllerDelegate *)softwareUpdateDelegate softwareUpdateController:selfCopy didFailToInstallUpdateWithError:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if (BYSetupAssistantHasCompletedInitialRun())
  {
    (*(location[0] + 2))(location[0], 0);
  }

  v3 = selfCopy;
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

- (void)passcodeEntryController:(id)controller didEnterPasscode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v11 = 0;
  objc_storeStrong(&v11, passcode);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    publicCheckpointLogDetails = [(BuddySUSUISoftwareUpdateManagerProtocol *)selfCopy->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController passcodeEntryController:didEnterPasscode:]", publicCheckpointLogDetails);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\n", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if ([v11 length])
  {
    [(BuddySoftwareUpdateController *)selfCopy dismissViewControllerAnimated:1 completion:0];
    if (selfCopy->_devicePasscodeCompletion)
    {
      devicePasscodeCompletion = selfCopy->_devicePasscodeCompletion;
      v7 = v11;
      update = [(BuddySoftwareUpdateController *)selfCopy update];
      devicePasscodeCompletion[2](devicePasscodeCompletion, v7, update);

      v9 = selfCopy->_devicePasscodeCompletion;
      selfCopy->_devicePasscodeCompletion = 0;
    }
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_cancelDevicePasscodePicker:(id)picker
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, picker);
  [(BuddySoftwareUpdateController *)selfCopy dismissViewControllerAnimated:1 completion:0];
  devicePasscodeCompletion = selfCopy->_devicePasscodeCompletion;
  selfCopy->_devicePasscodeCompletion = 0;

  [(BuddySoftwareUpdateController *)selfCopy _installFailedWithError:0];
  objc_storeStrong(location, 0);
}

- (void)manager:(id)manager promptForDevicePasscodeWithDescriptorCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v23 = 0;
  objc_storeStrong(&v23, completion);
  oslog = _BYLoggingFacility();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    publicCheckpointLogDetails = [(BuddySUSUISoftwareUpdateManagerProtocol *)selfCopy->_manager publicCheckpointLogDetails];
    sub_10011D3F8(buf, "[BuddySoftwareUpdateController manager:promptForDevicePasscodeWithDescriptorCompletion:]", publicCheckpointLogDetails);
    _os_log_impl(&_mh_execute_header, oslog, v21, "%s: Software Update Buddy Checkpoint -%{public}@\n\nBuddy SU asked for device passcode", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  passcodeCacheManager = [(BuddySoftwareUpdateController *)selfCopy passcodeCacheManager];
  cachedPasscode = [(BYPasscodeCacheManager *)passcodeCacheManager cachedPasscode];

  if (cachedPasscode && v23)
  {
    v7 = v23;
    update = [(BuddySoftwareUpdateController *)selfCopy update];
    v7[2](v7, cachedPasscode, update);

    v19 = 1;
  }

  else
  {
    v9 = [v23 copy];
    devicePasscodeCompletion = selfCopy->_devicePasscodeCompletion;
    selfCopy->_devicePasscodeCompletion = v9;

    objc_initWeak(&from, selfCopy);
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

  objc_storeStrong(&cachedPasscode, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)setButtonTitle:(id)title
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  [(OBBoldTrayButton *)selfCopy->_updateNowButton setTitle:location[0] forState:0];
  objc_storeStrong(location, 0);
}

- (void)manager:(id)manager didTransitionToState:(int)state fromState:(int)fromState
{
  val = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  stateCopy = state;
  fromStateCopy = fromState;
  v7 = location[0];
  update = [val update];
  v25 = [v7 errorForUpdate:update];

  oslog = _BYLoggingFacility();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    publicCheckpointLogDetails = [*(val + 1) publicCheckpointLogDetails];
    v22 = [BuddySUSUISoftwareUpdateManager stringFromSoftwareUpdateState:fromStateCopy];
    v21 = [BuddySUSUISoftwareUpdateManager stringFromSoftwareUpdateState:stateCopy];
    sub_1001AFC64(buf, publicCheckpointLogDetails, v22, fromStateCopy, v21, stateCopy, v25);
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
  v19 = stateCopy;
  dispatch_async(v10, &v11);

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)manager downloadDescriptor:(id)descriptor progressChangedToNormalizedPercentComplete:(float)complete displayStyle:(int)style
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v22 = 0;
  objc_storeStrong(&v22, descriptor);
  completeCopy = complete;
  styleCopy = style;
  objc_initWeak(&from, selfCopy);
  v9 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1001B0990;
  v14 = &unk_10032E4A0;
  objc_copyWeak(&v16, &from);
  v17 = completeCopy;
  v15 = v22;
  v18 = styleCopy;
  dispatch_async(v9, &block);

  objc_storeStrong(&v15, 0);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)managerDownloadFinished:(id)finished
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, finished);
  objc_initWeak(&from, selfCopy);
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001B0CF8;
  v8 = &unk_10032AFA8;
  objc_copyWeak(&v10, &from);
  v9 = selfCopy;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)manager installStartedForUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v6 = 0;
  objc_storeStrong(&v6, update);
  softwareUpdateDelegate = [(BuddySoftwareUpdateController *)selfCopy softwareUpdateDelegate];
  [(BuddySoftwareUpdateControllerDelegate *)softwareUpdateDelegate softwareUpdateController:selfCopy didStartInstallForUpdate:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)manager installFailedWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v14 = 0;
  objc_storeStrong(&v14, error);
  objc_initWeak(&from, selfCopy);
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

- (int64_t)numberOfSectionsInTableView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 1;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  update = [(BuddySoftwareUpdateController *)selfCopy update];
  v5 = update == 0;

  if (v5)
  {
    v18 = 0;
  }

  else
  {
    update2 = [(BuddySoftwareUpdateController *)selfCopy update];
    documentation = [(SUDescriptor *)update2 documentation];
    v14 = 0;
    v12 = 0;
    v10 = 0;
    v8 = 0;
    if (documentation)
    {
      update3 = [(BuddySoftwareUpdateController *)selfCopy update];
      v14 = 1;
      documentation2 = [(SUDescriptor *)update3 documentation];
      v12 = 1;
      releaseNotes = [documentation2 releaseNotes];
      v10 = 1;
      v8 = releaseNotes != 0;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v17 = 0;
  objc_storeStrong(&v17, path);
  if ([v17 row])
  {
    if ([v17 row] == 1)
    {
      v15 = [location[0] dequeueReusableCellWithIdentifier:@"LearnMoreCellIdentifier"];
      if (!v15)
      {
        v15 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"LearnMoreCellIdentifier"];

        textLabel = [v15 textLabel];
        v6 = +[NSBundle mainBundle];
        v7 = [(NSBundle *)v6 localizedStringForKey:@"LEARN_MORE" value:&stru_10032F900 table:@"SoftwareUpdate"];
        [textLabel setText:v7];

        textLabel2 = [v15 textLabel];
        v9 = +[BFFStyle sharedStyle];
        tableCellFont = [v9 tableCellFont];
        [textLabel2 setFont:tableCellFont];

        textLabel3 = [v15 textLabel];
        v12 = +[UIColor _labelColor];
        [textLabel3 setTextColor:v12];

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
    v20 = selfCopy->_titleCell;
    v16 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  v13 = v20;

  return v13;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v7 = 0;
  objc_storeStrong(&v7, path);
  if ([v7 row])
  {
    if ([v7 row] == 1)
    {
      v10 = 60.0;
    }
  }

  else
  {
    [(SUSSoftwareUpdateTitleCell *)selfCopy->_titleCell preferredHeightWithTable:location[0]];
    v10 = v5;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v16 = 0;
  objc_storeStrong(&v16, path);
  if ([v16 row] == 1)
  {
    v15 = [objc_alloc(sub_1001B19AC()) initWithNibName:0 bundle:0];
    v5 = [NSString alloc];
    update = [(BuddySoftwareUpdateController *)selfCopy update];
    documentation = [(SUDescriptor *)update documentation];
    releaseNotes = [documentation releaseNotes];
    v9 = [v5 initWithData:releaseNotes encoding:4];
    [v15 setReleaseNotes:v9];

    if (BFFIsiPad())
    {
      v14 = [[UINavigationController alloc] initWithRootViewController:v15];
      [v14 setModalPresentationStyle:2];
      v10 = [UIBarButtonItem alloc];
      v13 = [v10 initWithBarButtonSystemItem:0 target:selfCopy action:"detailedReleaseNotesDonePressed"];
      navigationItem = [v15 navigationItem];
      [navigationItem setRightBarButtonItem:v13];

      [(BuddySoftwareUpdateController *)selfCopy presentViewController:v14 animated:1 completion:0];
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v14, 0);
    }

    else
    {
      navigationController = [(BuddySoftwareUpdateController *)selfCopy navigationController];
      [navigationController pushViewController:v15 animated:1];
    }

    objc_storeStrong(&v15, 0);
  }

  [location[0] deselectRowAtIndexPath:v16 animated:1];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (id)createBoldButtonWithTitle:(id)title action:(SEL)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v7[1] = action;
  v7[0] = +[OBBoldTrayButton boldButton];
  [v7[0] setTitle:location[0] forState:0];
  [v7[0] addTarget:selfCopy action:action forControlEvents:64];
  v5 = v7[0];
  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (id)createLinkButtonWithTitle:(id)title action:(SEL)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v7[1] = action;
  v7[0] = +[OBLinkTrayButton linkButton];
  [v7[0] setTitle:location[0] forState:0];
  [v7[0] addTarget:selfCopy action:action forControlEvents:64];
  v5 = v7[0];
  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)_allButtonsSetEnabled:(BOOL)enabled
{
  [(OBBoldTrayButton *)self->_updateNowButton setEnabled:enabled];
  [(OBLinkTrayButton *)self->_updateTonightButton setEnabled:enabled];
  [(OBLinkTrayButton *)self->_skipButton setEnabled:enabled];
}

- (void)showErrorWithContent:(id)content
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, content);
  [(OBBoldTrayButton *)selfCopy->_updateNowButton setTitle:location[0] forState:0];
  [(OBBoldTrayButton *)selfCopy->_updateNowButton setEnabled:0];
  if (selfCopy->_updateTonightButton)
  {
    [(OBLinkTrayButton *)selfCopy->_updateTonightButton setHidden:1];
  }

  objc_storeStrong(location, 0);
}

- (void)resetButtonState:(id)state andEventHandlers:(BOOL)handlers
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
  [location[0] setEnabled:1];
  [location[0] setHidden:0];
  if (handlers)
  {
    [location[0] removeTarget:selfCopy action:0 forControlEvents:64];
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