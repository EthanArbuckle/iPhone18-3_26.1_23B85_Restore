@interface BuddyCloudConfigInstallationController
- (BOOL)_isEscrowMissingError:(id)a3;
- (BOOL)controllerNeedsToRun;
- (BuddyCloudConfigInstallationController)init;
- (id)_clearImage;
- (void)_cancelDevicePasscodePicker:(id)a3;
- (void)_createUnlockEscrowAndRetryProfileInstallationWithCompletion:(id)a3;
- (void)_setupForState;
- (void)_tryToInstallStoredProfileShouldCreateEscrowIfNeeded:(BOOL)a3 completion:(id)a4;
- (void)cloudConfigDidChange:(id)a3;
- (void)controllerDone;
- (void)dealloc;
- (void)loadView;
- (void)nextButtonPressed:(id)a3;
- (void)passcodeEntryController:(id)a3 didEnterPasscode:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyCloudConfigInstallationController

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyCloudConfigInstallationController *)self managedConfiguration];
  v3 = [(MCProfileConnection *)v2 shouldInstallStoredProfile];

  if ((v3 & 1) == 0)
  {
    v4 = [(BuddyCloudConfigInstallationController *)self managedConfiguration];
    [(MCProfileConnection *)v4 markStoredProfileAsInstalled];
  }

  v10 = 0;
  v8 = 0;
  v5 = 1;
  if ((v3 & 1) == 0)
  {
    v11 = [(BuddyCloudConfigInstallationController *)self managedConfiguration];
    v10 = 1;
    v6 = [(MCProfileConnection *)v11 wasCloudConfigurationApplied];
    v5 = 0;
    if (v6)
    {
      v9 = [(BuddyCloudConfigInstallationController *)self managedConfiguration];
      v8 = 1;
      v5 = [(MCProfileConnection *)v9 isAwaitingDeviceConfigured];
    }
  }

  v12 = v5 & 1;
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
  v6 = [location _clearImage];
  location = 0;
  v10.receiver = self;
  v10.super_class = BuddyCloudConfigInstallationController;
  location = [(BuddyCloudConfigInstallationController *)&v10 initWithTitle:v5 detailText:0 icon:v6];
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
  v5 = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:v5];

  v3.receiver = v5;
  v3.super_class = BuddyCloudConfigInstallationController;
  [(BuddyCloudConfigInstallationController *)&v3 dealloc];
}

- (void)loadView
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyCloudConfigInstallationController;
  [(BuddyCloudConfigInstallationController *)&v5 loadView];
  v2 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  spinnerView = v7->_spinnerView;
  v7->_spinnerView = v2;

  v4 = [(BuddyCloudConfigInstallationController *)v7 view];
  [v4 addSubview:v7->_spinnerView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10.receiver = self;
  v10.super_class = BuddyCloudConfigInstallationController;
  [(BuddyCloudConfigInstallationController *)&v10 viewWillAppear:a3];
  v3 = [(BuddyCloudConfigInstallationController *)v13 managedConfiguration];
  v9 = [(MCProfileConnection *)v3 cloudConfigurationDetails];

  location = [v9 objectForKeyedSubscript:kMCCCOrganizationNameKey];
  v4 = [(BuddyCloudConfigInstallationController *)v13 headerView];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"CLOUD_CONFIG_INSTALLING_DESCRIPTION_%@" value:&stru_10032F900 table:@"Localizable"];
  v7 = [NSString localizedStringWithFormat:v6, location];
  [v4 setDetailText:v7];

  if (![(BuddyCloudConfigInstallationController *)v13 state])
  {
    [(BuddyCloudConfigInstallationController *)v13 setState:1];
    [(BuddyCloudConfigInstallationController *)v13 _setupForState];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v9, 0);
}

- (void)viewDidAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  self->_controllerDoneCalled = 0;
  v3.receiver = v6;
  v3.super_class = BuddyCloudConfigInstallationController;
  [(BuddyCloudConfigInstallationController *)&v3 viewDidAppear:v4];
  if ([(BuddyCloudConfigInstallationController *)v6 state]== 1)
  {
    [(BuddyCloudConfigInstallationController *)v6 setState:2];
    [(BuddyCloudConfigInstallationController *)v6 _setupForState];
  }
}

- (void)controllerDone
{
  v13 = self;
  oslog[1] = a2;
  if (self->_controllerDoneCalled)
  {
    oslog[0] = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, v13);
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
      v5 = [(BuddyCloudConfigInstallationController *)v13 navigationController];
      v6 = [v5 viewControllers];
      sub_10006AE18(v14, v6);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "VC stack: %@", v14, 0xCu);
    }

    objc_storeStrong(&v7, 0);
  }

  else
  {
    v13->_controllerDoneCalled = 1;
    [(BuddyCloudConfigInstallationController *)v13 setState:6];
    v2 = [(BuddyWelcomeController *)v13 delegate];
    v17 = v13;
    v3 = [NSArray arrayWithObjects:&v17 count:1];
    [(BFFFlowItemDelegate *)v2 removeViewControllersOnNextPush:v3];

    v4 = [(BuddyWelcomeController *)v13 delegate];
    [(BFFFlowItemDelegate *)v4 flowItemDone:v13];
  }
}

- (void)viewDidLayoutSubviews
{
  v9 = self;
  v8 = a2;
  v2 = [(BuddyCloudConfigInstallationController *)self view];
  [v2 center];
  v7.receiver = v3;
  v7.super_class = v4;
  v5 = [(BuddyCloudConfigInstallationController *)v9 spinnerView];
  v6[1] = v7;
  [(UIActivityIndicatorView *)v5 setCenter:v7];

  v6[0].receiver = v9;
  v6[0].super_class = BuddyCloudConfigInstallationController;
  [(objc_super *)v6 viewDidLayoutSubviews];
}

- (BOOL)_isEscrowMissingError:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  while (location[0])
  {
    v3 = [location[0] domain];
    v4 = [v3 isEqualToString:MCInstallationErrorDomain];

    if ((v4 & 1) == 0)
    {
      break;
    }

    if ([location[0] code] == 4042)
    {
      v9 = 1;
      break;
    }

    v5 = [location[0] userInfo];
    v6 = [v5 objectForKeyedSubscript:NSUnderlyingErrorKey];
    v7 = location[0];
    location[0] = v6;
  }

  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (void)_createUnlockEscrowAndRetryProfileInstallationWithCompletion:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_1001AA818;
  v19 = &unk_10032E368;
  v20 = v24;
  v21 = location[0];
  v22 = objc_retainBlock(&v15);
  v3 = [(BuddyCloudConfigInstallationController *)v24 passcodeCacheManager];
  v14 = [(BYPasscodeCacheManager *)v3 cachedPasscode];

  if (v14 && location[0])
  {
    (*(v22 + 2))(v22, v14);
    v13 = 1;
  }

  else
  {
    v4 = [v22 copy];
    devicePasscodeCompletion = v24->_devicePasscodeCompletion;
    v24->_devicePasscodeCompletion = v4;

    v6 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1001AAB08;
    v11 = &unk_10032B0D0;
    v12 = v24;
    dispatch_async(v6, &block);

    objc_storeStrong(&v12, 0);
    v13 = 0;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_tryToInstallStoredProfileShouldCreateEscrowIfNeeded:(BOOL)a3 completion:(id)a4
{
  v23 = self;
  v22 = a2;
  v21 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v19 = [(BuddyCloudConfigInstallationController *)v23 managedConfiguration];
  v18 = 0;
  v4 = +[BuddyCloudConfigManager sharedManager];
  v5 = [v4 cloudConfigurationDetails];
  v17 = [v5 objectForKeyedSubscript:kCCRemoteManagementAccountIdentifierKey];

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
  v16 = v21;
  v13 = v23;
  v15 = location;
  v14 = v19;
  [v19 installStoredProfileDataWithExtraOptions:v18 completion:&v8];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&location, 0);
}

- (void)_setupForState
{
  v39 = self;
  location[1] = a2;
  location[0] = _BYLoggingFacility();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(buf, [(BuddyCloudConfigInstallationController *)v39 state]);
    _os_log_impl(&_mh_execute_header, location[0], v37, "Setting up for state %d", buf, 8u);
  }

  objc_storeStrong(location, 0);
  v2 = [(BuddyCloudConfigInstallationController *)v39 state];
  if (v2)
  {
    switch(v2)
    {
      case 1u:
        [(BuddyCloudConfigInstallationController *)v39 setDeviceConfiguredCompletionBlock:0];
        [(BuddyCloudConfigInstallationController *)v39 setLastErrorDescription:0];
        v3 = [(BuddyCloudConfigInstallationController *)v39 navigationItem];
        v4 = [v3 leftBarButtonItem];
        [v4 setEnabled:0];

        v5 = [(BuddyCloudConfigInstallationController *)v39 spinnerView];
        [(UIActivityIndicatorView *)v5 startAnimating];

        break;
      case 2u:
        [(BuddyCloudConfigInstallationController *)v39 setState:3];
        [(BuddyCloudConfigInstallationController *)v39 _setupForState];
        v36 = [(BuddyCloudConfigInstallationController *)v39 managedConfiguration];
        v28 = _NSConcreteStackBlock;
        v29 = -1073741824;
        v30 = 0;
        v31 = sub_1001AB8FC;
        v32 = &unk_10032B838;
        v33 = v36;
        v34 = v39;
        v35 = objc_retainBlock(&v28);
        v6 = [v36 installedMDMProfileIdentifier];

        if (v6)
        {
          (*(v35 + 2))();
        }

        else
        {
          [(BuddyCloudConfigInstallationController *)v39 _tryToInstallStoredProfileShouldCreateEscrowIfNeeded:1 completion:v35];
        }

        objc_storeStrong(&v35, 0);
        objc_storeStrong(&v34, 0);
        objc_storeStrong(&v33, 0);
        objc_storeStrong(&v36, 0);
        break;
      case 3u:
        v7 = [(BuddyCloudConfigInstallationController *)v39 spinnerView];
        [(UIActivityIndicatorView *)v7 startAnimating];

        v8 = [(BuddyCloudConfigInstallationController *)v39 navigationItem];
        [v8 setHidesBackButton:1];

        v9 = [(BuddyCloudConfigInstallationController *)v39 view];
        [v9 setNeedsLayout];

        break;
      case 4u:
        v10 = [(BuddyCloudConfigInstallationController *)v39 spinnerView];
        [(UIActivityIndicatorView *)v10 startAnimating];

        v11 = [(BuddyCloudConfigInstallationController *)v39 managedConfiguration];
        v27 = [(MCProfileConnection *)v11 cloudConfigurationDetails];

        v26 = [v27 objectForKeyedSubscript:kMCCCOrganizationNameKey];
        v12 = [(BuddyCloudConfigInstallationController *)v39 headerView];
        v13 = +[NSBundle mainBundle];
        v14 = [(NSBundle *)v13 localizedStringForKey:@"CLOUD_CONFIG_GETTING_CONFIGURATION_DESCRIPTION_%@" value:&stru_10032F900 table:@"Localizable"];
        v15 = [NSString localizedStringWithFormat:v14, v26];
        [v12 setDetailText:v15];

        v16 = [(BuddyCloudConfigInstallationController *)v39 navigationItem];
        [v16 setHidesBackButton:1];

        objc_storeStrong(&v26, 0);
        objc_storeStrong(&v27, 0);
        break;
      case 5u:
        v17 = [(BuddyCloudConfigInstallationController *)v39 spinnerView];
        [(UIActivityIndicatorView *)v17 stopAnimating];

        oslog = _BYLoggingFacility();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [(BuddyCloudConfigInstallationController *)v39 lastErrorDescription];
          sub_10006AE18(v40, v18);
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Last error description: %@", v40, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v19 = [(BuddyCloudConfigInstallationController *)v39 lastErrorDescription];

        if (v19)
        {
          v20 = [(BuddyCloudConfigInstallationController *)v39 headerView];
          v21 = [(BuddyCloudConfigInstallationController *)v39 lastErrorDescription];
          [v20 setDetailText:v21];

          v22 = [(BuddyCloudConfigInstallationController *)v39 navigationItem];
          [v22 setHidesBackButton:0];

          v23 = [(BuddyCloudConfigInstallationController *)v39 navigationItem];
          v24 = [(BuddyEnrollmentCoordinator *)v23 rightBarButtonItem];
          [v24 setEnabled:0];
        }

        else
        {
          [(BuddyCloudConfigInstallationController *)v39 controllerDone];
          v23 = [(BuddyCloudConfigInstallationController *)v39 enrollmentCoordinator];
          [(BuddyEnrollmentCoordinator *)v23 profileInstallationDone];
        }

        break;
    }
  }
}

- (void)cloudConfigDidChange:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001ABE98;
  v8 = &unk_10032B0D0;
  v9 = v11;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)nextButtonPressed:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyCloudConfigInstallationController *)v4 controllerDone];
  objc_storeStrong(location, 0);
}

- (void)_cancelDevicePasscodePicker:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyCloudConfigInstallationController *)v5 dismissViewControllerAnimated:1 completion:0];
  (*(v5->_devicePasscodeCompletion + 2))();
  devicePasscodeCompletion = v5->_devicePasscodeCompletion;
  v5->_devicePasscodeCompletion = 0;

  objc_storeStrong(location, 0);
}

- (id)_clearImage
{
  v9 = self;
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

- (void)passcodeEntryController:(id)a3 didEnterPasscode:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  if ([v6 length])
  {
    [(BuddyCloudConfigInstallationController *)v8 dismissViewControllerAnimated:1 completion:0];
    if (v8->_devicePasscodeCompletion)
    {
      (*(v8->_devicePasscodeCompletion + 2))();
      devicePasscodeCompletion = v8->_devicePasscodeCompletion;
      v8->_devicePasscodeCompletion = 0;
    }
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  if (v10->_devicePasscodeCompletion)
  {
    (*(v10->_devicePasscodeCompletion + 2))();
    devicePasscodeCompletion = v10->_devicePasscodeCompletion;
    v10->_devicePasscodeCompletion = 0;
  }

  objc_storeStrong(location, 0);
}

@end