@interface BuddyCloudConfigInstallationController
- (BOOL)_isEscrowMissingError:(id)error;
- (BOOL)controllerNeedsToRun;
- (BuddyCloudConfigInstallationController)init;
- (id)_clearImage;
- (void)_cancelDevicePasscodePicker:(id)picker;
- (void)_createUnlockEscrowAndRetryProfileInstallationWithCompletion:(id)completion;
- (void)_setupForState;
- (void)_tryToInstallStoredProfileShouldCreateEscrowIfNeeded:(BOOL)needed completion:(id)completion;
- (void)cloudConfigDidChange:(id)change;
- (void)controllerDone;
- (void)dealloc;
- (void)loadView;
- (void)nextButtonPressed:(id)pressed;
- (void)passcodeEntryController:(id)controller didEnterPasscode:(id)passcode;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyCloudConfigInstallationController

- (BOOL)controllerNeedsToRun
{
  managedConfiguration = [(BuddyCloudConfigInstallationController *)self managedConfiguration];
  shouldInstallStoredProfile = [(MCProfileConnection *)managedConfiguration shouldInstallStoredProfile];

  if ((shouldInstallStoredProfile & 1) == 0)
  {
    managedConfiguration2 = [(BuddyCloudConfigInstallationController *)self managedConfiguration];
    [(MCProfileConnection *)managedConfiguration2 markStoredProfileAsInstalled];
  }

  v10 = 0;
  v8 = 0;
  isAwaitingDeviceConfigured = 1;
  if ((shouldInstallStoredProfile & 1) == 0)
  {
    managedConfiguration3 = [(BuddyCloudConfigInstallationController *)self managedConfiguration];
    v10 = 1;
    wasCloudConfigurationApplied = [(MCProfileConnection *)managedConfiguration3 wasCloudConfigurationApplied];
    isAwaitingDeviceConfigured = 0;
    if (wasCloudConfigurationApplied)
    {
      managedConfiguration4 = [(BuddyCloudConfigInstallationController *)self managedConfiguration];
      v8 = 1;
      isAwaitingDeviceConfigured = [(MCProfileConnection *)managedConfiguration4 isAwaitingDeviceConfigured];
    }
  }

  v12 = isAwaitingDeviceConfigured & 1;
  if (v8)
  {
  }

  if (v10)
  {
  }

  return v12;
}

- (BuddyCloudConfigInstallationController)init
{
  location = self;
  v11 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CLOUD_CONFIG_CONFIGURING"];
  v5 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];
  _clearImage = [location _clearImage];
  location = 0;
  v10.receiver = self;
  v10.super_class = BuddyCloudConfigInstallationController;
  location = [(BuddyCloudConfigInstallationController *)&v10 initWithTitle:v5 detailText:0 icon:_clearImage];
  objc_storeStrong(&location, location);

  if (location)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v7 addObserver:location selector:"cloudConfigDidChange:" name:MCCloudConfigurationDidChangeNotification object:0];

    [location setState:0];
  }

  v8 = location;
  objc_storeStrong(&location, 0);
  return v8;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:selfCopy];

  v3.receiver = selfCopy;
  v3.super_class = BuddyCloudConfigInstallationController;
  [(BuddyCloudConfigInstallationController *)&v3 dealloc];
}

- (void)loadView
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyCloudConfigInstallationController;
  [(BuddyCloudConfigInstallationController *)&v5 loadView];
  v2 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  spinnerView = selfCopy->_spinnerView;
  selfCopy->_spinnerView = v2;

  view = [(BuddyCloudConfigInstallationController *)selfCopy view];
  [view addSubview:selfCopy->_spinnerView];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v12 = a2;
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = BuddyCloudConfigInstallationController;
  [(BuddyCloudConfigInstallationController *)&v10 viewWillAppear:appear];
  managedConfiguration = [(BuddyCloudConfigInstallationController *)selfCopy managedConfiguration];
  cloudConfigurationDetails = [(MCProfileConnection *)managedConfiguration cloudConfigurationDetails];

  location = [cloudConfigurationDetails objectForKeyedSubscript:kMCCCOrganizationNameKey];
  headerView = [(BuddyCloudConfigInstallationController *)selfCopy headerView];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"CLOUD_CONFIG_INSTALLING_DESCRIPTION_%@" value:&stru_10032F900 table:@"Localizable"];
  location = [NSString localizedStringWithFormat:v6, location];
  [headerView setDetailText:location];

  if (![(BuddyCloudConfigInstallationController *)selfCopy state])
  {
    [(BuddyCloudConfigInstallationController *)selfCopy setState:1];
    [(BuddyCloudConfigInstallationController *)selfCopy _setupForState];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&cloudConfigurationDetails, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  self->_controllerDoneCalled = 0;
  v3.receiver = selfCopy;
  v3.super_class = BuddyCloudConfigInstallationController;
  [(BuddyCloudConfigInstallationController *)&v3 viewDidAppear:appearCopy];
  if ([(BuddyCloudConfigInstallationController *)selfCopy state]== 1)
  {
    [(BuddyCloudConfigInstallationController *)selfCopy setState:2];
    [(BuddyCloudConfigInstallationController *)selfCopy _setupForState];
  }
}

- (void)controllerDone
{
  selfCopy = self;
  oslog[1] = a2;
  if (self->_controllerDoneCalled)
  {
    oslog[0] = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, selfCopy);
      _os_log_impl(&_mh_execute_header, oslog[0], v11, "CloudConfig controller %@ is sending buddyControllerDone multiple times", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    v10 = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      location = +[NSThread callStackSymbols];
      sub_10006AE18(v15, location);
      _os_log_impl(&_mh_execute_header, v10, v9, "Call stack: %@", v15, 0xCu);

      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v10, 0);
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      navigationController = [(BuddyCloudConfigInstallationController *)selfCopy navigationController];
      viewControllers = [navigationController viewControllers];
      sub_10006AE18(v14, viewControllers);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "VC stack: %@", v14, 0xCu);
    }

    objc_storeStrong(&v7, 0);
  }

  else
  {
    selfCopy->_controllerDoneCalled = 1;
    [(BuddyCloudConfigInstallationController *)selfCopy setState:6];
    delegate = [(BuddyWelcomeController *)selfCopy delegate];
    v17 = selfCopy;
    v3 = [NSArray arrayWithObjects:&v17 count:1];
    [(BFFFlowItemDelegate *)delegate removeViewControllersOnNextPush:v3];

    delegate2 = [(BuddyWelcomeController *)selfCopy delegate];
    [(BFFFlowItemDelegate *)delegate2 flowItemDone:selfCopy];
  }
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v8 = a2;
  view = [(BuddyCloudConfigInstallationController *)self view];
  [view center];
  v7.receiver = v3;
  v7.super_class = v4;
  spinnerView = [(BuddyCloudConfigInstallationController *)selfCopy spinnerView];
  v6[1] = v7;
  [(UIActivityIndicatorView *)spinnerView setCenter:v7];

  v6[0].receiver = selfCopy;
  v6[0].super_class = BuddyCloudConfigInstallationController;
  [(objc_super *)v6 viewDidLayoutSubviews];
}

- (BOOL)_isEscrowMissingError:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v9 = 0;
  while (location[0])
  {
    domain = [location[0] domain];
    v4 = [domain isEqualToString:MCInstallationErrorDomain];

    if ((v4 & 1) == 0)
    {
      break;
    }

    if ([location[0] code] == 4042)
    {
      v9 = 1;
      break;
    }

    userInfo = [location[0] userInfo];
    v6 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
    v7 = location[0];
    location[0] = v6;
  }

  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (void)_createUnlockEscrowAndRetryProfileInstallationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_1001AA818;
  v19 = &unk_10032E368;
  v20 = selfCopy;
  v21 = location[0];
  v22 = objc_retainBlock(&v15);
  passcodeCacheManager = [(BuddyCloudConfigInstallationController *)selfCopy passcodeCacheManager];
  cachedPasscode = [(BYPasscodeCacheManager *)passcodeCacheManager cachedPasscode];

  if (cachedPasscode && location[0])
  {
    (*(v22 + 2))(v22, cachedPasscode);
    v13 = 1;
  }

  else
  {
    v4 = [v22 copy];
    devicePasscodeCompletion = selfCopy->_devicePasscodeCompletion;
    selfCopy->_devicePasscodeCompletion = v4;

    v6 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1001AAB08;
    v11 = &unk_10032B0D0;
    v12 = selfCopy;
    dispatch_async(v6, &block);

    objc_storeStrong(&v12, 0);
    v13 = 0;
  }

  objc_storeStrong(&cachedPasscode, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_tryToInstallStoredProfileShouldCreateEscrowIfNeeded:(BOOL)needed completion:(id)completion
{
  selfCopy = self;
  v22 = a2;
  neededCopy = needed;
  location = 0;
  objc_storeStrong(&location, completion);
  managedConfiguration = [(BuddyCloudConfigInstallationController *)selfCopy managedConfiguration];
  v18 = 0;
  v4 = +[BuddyCloudConfigManager sharedManager];
  cloudConfigurationDetails = [v4 cloudConfigurationDetails];
  v17 = [cloudConfigurationDetails objectForKeyedSubscript:kCCRemoteManagementAccountIdentifierKey];

  if ([v17 length])
  {
    v24 = kMCInstallProfileOptionRMAccountIdentifier;
    v25 = v17;
    v6 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v7 = v18;
    v18 = v6;
  }

  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001AAF98;
  v12 = &unk_10032E3B8;
  v16 = neededCopy;
  v13 = selfCopy;
  v15 = location;
  v14 = managedConfiguration;
  [managedConfiguration installStoredProfileDataWithExtraOptions:v18 completion:&v8];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&managedConfiguration, 0);
  objc_storeStrong(&location, 0);
}

- (void)_setupForState
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _BYLoggingFacility();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(buf, [(BuddyCloudConfigInstallationController *)selfCopy state]);
    _os_log_impl(&_mh_execute_header, location[0], v37, "Setting up for state %d", buf, 8u);
  }

  objc_storeStrong(location, 0);
  state = [(BuddyCloudConfigInstallationController *)selfCopy state];
  if (state)
  {
    switch(state)
    {
      case 1u:
        [(BuddyCloudConfigInstallationController *)selfCopy setDeviceConfiguredCompletionBlock:0];
        [(BuddyCloudConfigInstallationController *)selfCopy setLastErrorDescription:0];
        navigationItem = [(BuddyCloudConfigInstallationController *)selfCopy navigationItem];
        leftBarButtonItem = [navigationItem leftBarButtonItem];
        [leftBarButtonItem setEnabled:0];

        spinnerView = [(BuddyCloudConfigInstallationController *)selfCopy spinnerView];
        [(UIActivityIndicatorView *)spinnerView startAnimating];

        break;
      case 2u:
        [(BuddyCloudConfigInstallationController *)selfCopy setState:3];
        [(BuddyCloudConfigInstallationController *)selfCopy _setupForState];
        managedConfiguration = [(BuddyCloudConfigInstallationController *)selfCopy managedConfiguration];
        v28 = _NSConcreteStackBlock;
        v29 = -1073741824;
        v30 = 0;
        v31 = sub_1001AB8FC;
        v32 = &unk_10032B838;
        v33 = managedConfiguration;
        v34 = selfCopy;
        v35 = objc_retainBlock(&v28);
        installedMDMProfileIdentifier = [managedConfiguration installedMDMProfileIdentifier];

        if (installedMDMProfileIdentifier)
        {
          (*(v35 + 2))();
        }

        else
        {
          [(BuddyCloudConfigInstallationController *)selfCopy _tryToInstallStoredProfileShouldCreateEscrowIfNeeded:1 completion:v35];
        }

        objc_storeStrong(&v35, 0);
        objc_storeStrong(&v34, 0);
        objc_storeStrong(&v33, 0);
        objc_storeStrong(&managedConfiguration, 0);
        break;
      case 3u:
        spinnerView2 = [(BuddyCloudConfigInstallationController *)selfCopy spinnerView];
        [(UIActivityIndicatorView *)spinnerView2 startAnimating];

        navigationItem2 = [(BuddyCloudConfigInstallationController *)selfCopy navigationItem];
        [navigationItem2 setHidesBackButton:1];

        view = [(BuddyCloudConfigInstallationController *)selfCopy view];
        [view setNeedsLayout];

        break;
      case 4u:
        spinnerView3 = [(BuddyCloudConfigInstallationController *)selfCopy spinnerView];
        [(UIActivityIndicatorView *)spinnerView3 startAnimating];

        managedConfiguration2 = [(BuddyCloudConfigInstallationController *)selfCopy managedConfiguration];
        cloudConfigurationDetails = [(MCProfileConnection *)managedConfiguration2 cloudConfigurationDetails];

        v26 = [cloudConfigurationDetails objectForKeyedSubscript:kMCCCOrganizationNameKey];
        headerView = [(BuddyCloudConfigInstallationController *)selfCopy headerView];
        v13 = +[NSBundle mainBundle];
        v14 = [(NSBundle *)v13 localizedStringForKey:@"CLOUD_CONFIG_GETTING_CONFIGURATION_DESCRIPTION_%@" value:&stru_10032F900 table:@"Localizable"];
        v15 = [NSString localizedStringWithFormat:v14, v26];
        [headerView setDetailText:v15];

        navigationItem3 = [(BuddyCloudConfigInstallationController *)selfCopy navigationItem];
        [navigationItem3 setHidesBackButton:1];

        objc_storeStrong(&v26, 0);
        objc_storeStrong(&cloudConfigurationDetails, 0);
        break;
      case 5u:
        spinnerView4 = [(BuddyCloudConfigInstallationController *)selfCopy spinnerView];
        [(UIActivityIndicatorView *)spinnerView4 stopAnimating];

        oslog = _BYLoggingFacility();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          lastErrorDescription = [(BuddyCloudConfigInstallationController *)selfCopy lastErrorDescription];
          sub_10006AE18(v40, lastErrorDescription);
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Last error description: %@", v40, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        lastErrorDescription2 = [(BuddyCloudConfigInstallationController *)selfCopy lastErrorDescription];

        if (lastErrorDescription2)
        {
          headerView2 = [(BuddyCloudConfigInstallationController *)selfCopy headerView];
          lastErrorDescription3 = [(BuddyCloudConfigInstallationController *)selfCopy lastErrorDescription];
          [headerView2 setDetailText:lastErrorDescription3];

          navigationItem4 = [(BuddyCloudConfigInstallationController *)selfCopy navigationItem];
          [navigationItem4 setHidesBackButton:0];

          navigationItem5 = [(BuddyCloudConfigInstallationController *)selfCopy navigationItem];
          rightBarButtonItem = [(BuddyEnrollmentCoordinator *)navigationItem5 rightBarButtonItem];
          [rightBarButtonItem setEnabled:0];
        }

        else
        {
          [(BuddyCloudConfigInstallationController *)selfCopy controllerDone];
          navigationItem5 = [(BuddyCloudConfigInstallationController *)selfCopy enrollmentCoordinator];
          [(BuddyEnrollmentCoordinator *)navigationItem5 profileInstallationDone];
        }

        break;
    }
  }
}

- (void)cloudConfigDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001ABE98;
  v8 = &unk_10032B0D0;
  v9 = selfCopy;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)nextButtonPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  [(BuddyCloudConfigInstallationController *)selfCopy controllerDone];
  objc_storeStrong(location, 0);
}

- (void)_cancelDevicePasscodePicker:(id)picker
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, picker);
  [(BuddyCloudConfigInstallationController *)selfCopy dismissViewControllerAnimated:1 completion:0];
  (*(selfCopy->_devicePasscodeCompletion + 2))();
  devicePasscodeCompletion = selfCopy->_devicePasscodeCompletion;
  selfCopy->_devicePasscodeCompletion = 0;

  objc_storeStrong(location, 0);
}

- (id)_clearImage
{
  selfCopy = self;
  v8 = a2;
  v10.width = sub_1001AC2B0();
  size = v10;
  UIGraphicsBeginImageContextWithOptions(v10, 1, 0.0);
  v2 = +[UIColor systemBackgroundColor];
  [(UIColor *)v2 setFill];

  v11.origin.x = sub_1001AC2E8();
  rect = v11;
  UIRectFill(v11);
  location = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v3 = location;
  objc_storeStrong(&location, 0);
  return v3;
}

- (void)passcodeEntryController:(id)controller didEnterPasscode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v6 = 0;
  objc_storeStrong(&v6, passcode);
  if ([v6 length])
  {
    [(BuddyCloudConfigInstallationController *)selfCopy dismissViewControllerAnimated:1 completion:0];
    if (selfCopy->_devicePasscodeCompletion)
    {
      (*(selfCopy->_devicePasscodeCompletion + 2))();
      devicePasscodeCompletion = selfCopy->_devicePasscodeCompletion;
      selfCopy->_devicePasscodeCompletion = 0;
    }
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dismiss);
  oslog = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v7;
    sub_10006AA68(v6);
    _os_log_impl(&_mh_execute_header, v3, v4, "Passcode entry was dismissed with a swipe", v6, 2u);
  }

  objc_storeStrong(&oslog, 0);
  if (selfCopy->_devicePasscodeCompletion)
  {
    (*(selfCopy->_devicePasscodeCompletion + 2))();
    devicePasscodeCompletion = selfCopy->_devicePasscodeCompletion;
    selfCopy->_devicePasscodeCompletion = 0;
  }

  objc_storeStrong(location, 0);
}

@end