@interface BuddyCloudConfigDisclosureViewController
- (BuddyCloudConfigDisclosureViewController)init;
- (id)_machineInfo;
- (id)_remoteManagementText;
- (void)_clearState;
- (void)_controllerDone;
- (void)_leaveRemoteManagementAndErase;
- (void)_presentAboutController;
- (void)_presentEraseAlertWithTitle:(id)title message:(id)message eraseHandler:(id)handler;
- (void)_retrieveEnterpriseConfiguration;
- (void)_retrieveEnterpriseConfigurationForManagementVersion1;
- (void)_retrieveEnterpriseConfigurationForManagementVersion2;
- (void)_retrieveEnterpriseConfigurationFromWebURL:(id)l withAnchorCerts:(id)certs;
- (void)_setupForCloudConfigurationState;
- (void)_showEraseDeviceAlert;
- (void)_storeProfileDataAndCompleteDisclosure:(id)disclosure;
- (void)loadView;
- (void)recievedProfile:(id)profile;
- (void)setConfigController:(id)controller;
- (void)showLeaveRemoteManagementAlert;
- (void)showRetrievalError:(id)error;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)webAuthCanceled:(id)canceled;
@end

@implementation BuddyCloudConfigDisclosureViewController

- (BuddyCloudConfigDisclosureViewController)init
{
  v15 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"REMOTE_MANAGEMENT_TITLE" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v14.receiver = self;
  v14.super_class = BuddyCloudConfigDisclosureViewController;
  v5 = [(BuddyCloudConfigDisclosureViewController *)&v14 initWithTitle:v4 detailText:0 symbolName:@"gear"];
  location = v5;
  objc_storeStrong(&location, v5);

  if (v5)
  {
    v6 = +[OBBoldTrayButton boldButton];
    v7 = *(location + 7);
    *(location + 7) = v6;

    v8 = *(location + 7);
    v9 = +[NSBundle mainBundle];
    v10 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_ENROLL_BUTTON_TITLE"];
    v11 = [(NSBundle *)v9 localizedStringForKey:v10 value:&stru_10032F900 table:@"Localizable"];
    [v8 setTitle:v11 forState:0];

    [*(location + 7) addTarget:location action:"_controllerDone" forControlEvents:64];
  }

  v12 = location;
  objc_storeStrong(&location, 0);
  return v12;
}

- (void)loadView
{
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyCloudConfigDisclosureViewController;
  [(BuddyCloudConfigDisclosureViewController *)&v7 loadView];
  headerView = [(BuddyCloudConfigDisclosureViewController *)selfCopy headerView];
  [headerView setDetailText:&stru_10032F900];

  location = +[OBHeaderAccessoryButton accessoryButton];
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"REMOTE_MANAGEMENT_ABOUT" value:&stru_10032F900 table:@"Localizable"];
  [location setTitle:v4 forState:0];

  [location addTarget:selfCopy action:"_presentAboutController" forControlEvents:0x2000];
  headerView2 = [(BuddyCloudConfigDisclosureViewController *)selfCopy headerView];
  [headerView2 addAccessoryButton:location];

  objc_storeStrong(&location, 0);
}

- (void)_setupForCloudConfigurationState
{
  selfCopy = self;
  v58[1] = a2;
  v58[0] = [(BuddyCloudConfigDisclosureViewController *)self managedConfiguration];
  configController = [(BuddyCloudConfigDisclosureViewController *)selfCopy configController];
  cloudConfigState = [(BuddyCloudConfigController *)configController cloudConfigState];

  if (cloudConfigState)
  {
    if (cloudConfigState != 1)
    {
      switch(cloudConfigState)
      {
        case 2u:
          [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Disclosure"];
          [(BuddyCloudConfigDisclosureViewController *)selfCopy _clearState];
          headerView = [(BuddyCloudConfigDisclosureViewController *)selfCopy headerView];
          v14 = +[NSBundle mainBundle];
          v15 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CLOUD_CONFIG_ERROR_FAILED_RETRIEVE_INITIAL_CONFIG"];
          v16 = [(NSBundle *)v14 localizedStringForKey:v15 value:&stru_10032F900 table:@"Localizable"];
          lastRetrievalError = [(BuddyCloudConfigDisclosureViewController *)selfCopy lastRetrievalError];
          localizedDescription = [(NSError *)lastRetrievalError localizedDescription];
          v19 = [NSString localizedStringWithFormat:v16, localizedDescription];
          [headerView setDetailText:v19];

          break;
        case 3u:
          cloudConfigurationDetails = [v58[0] cloudConfigurationDetails];

          if (cloudConfigurationDetails)
          {
            [(BuddyCloudConfigDisclosureViewController *)selfCopy _clearState];
            headerView2 = [(BuddyCloudConfigDisclosureViewController *)selfCopy headerView];
            _remoteManagementText = [(BuddyCloudConfigDisclosureViewController *)selfCopy _remoteManagementText];
            [headerView2 setDetailText:_remoteManagementText];

            buttonTray = [(BuddyCloudConfigDisclosureViewController *)selfCopy buttonTray];
            enrollButton = [(BuddyCloudConfigDisclosureViewController *)selfCopy enrollButton];
            [buttonTray addButton:enrollButton];

            [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Disclosure"];
            if ([v58[0] isProvisionallyEnrolled])
            {
              v34 = +[NSBundle mainBundle];
              v35 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_LEAVE"];
              v36 = [(NSBundle *)v34 localizedStringForKey:v35 value:&stru_10032F900 table:@"Localizable"];
              [(BuddyWelcomeController *)selfCopy addLinkButton:v36 action:"showLeaveRemoteManagementAlert"];
            }

            view = [(BuddyCloudConfigDisclosureViewController *)selfCopy view];
            [view setNeedsLayout];
          }

          else
          {
            lastRetrievalError2 = [(BuddyCloudConfigDisclosureViewController *)selfCopy lastRetrievalError];

            if (lastRetrievalError2)
            {
              configController2 = [(BuddyCloudConfigDisclosureViewController *)selfCopy configController];
              [(BuddyCloudConfigController *)configController2 setCloudConfigState:0];

              [(BuddyCloudConfigDisclosureViewController *)selfCopy _setupForCloudConfigurationState];
            }

            else
            {
              configController3 = [(BuddyCloudConfigDisclosureViewController *)selfCopy configController];
              [(BuddyCloudConfigController *)configController3 cloudConfigDidFinishFromViewController:selfCopy wasApplied:0];
            }
          }

          break;
        case 5u:
          [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Disclosure"];
          [(BuddyCloudConfigDisclosureViewController *)selfCopy _clearState];
          headerView3 = [(BuddyCloudConfigDisclosureViewController *)selfCopy headerView];
          v21 = +[NSBundle mainBundle];
          v22 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CLOUD_CONFIG_ERROR_FAILED_RETRIEVE_ENTERPRISE_CONFIG"];
          v23 = [(NSBundle *)v21 localizedStringForKey:v22 value:&stru_10032F900 table:@"Localizable"];
          cloudConfigurationDetails2 = [v58[0] cloudConfigurationDetails];
          v25 = [cloudConfigurationDetails2 objectForKeyedSubscript:kMCCCOrganizationNameKey];
          lastRetrievalError3 = [(BuddyCloudConfigDisclosureViewController *)selfCopy lastRetrievalError];
          localizedDescription2 = [(NSError *)lastRetrievalError3 localizedDescription];
          v28 = [NSString localizedStringWithFormat:v23, v25, localizedDescription2];
          [headerView3 setDetailText:v28];

          break;
      }
    }
  }

  else
  {
    [(BuddyCloudConfigDisclosureViewController *)selfCopy _clearState];
    buttonTray2 = [(BuddyCloudConfigDisclosureViewController *)selfCopy buttonTray];
    enrollButton2 = [(BuddyCloudConfigDisclosureViewController *)selfCopy enrollButton];
    [buttonTray2 addButton:enrollButton2];

    v6 = +[BuddyCloudConfigManager sharedManager];
    LOBYTE(enrollButton2) = [v6 hasCloudConfiguration];

    if (enrollButton2)
    {
      v7 = +[BuddyCloudConfigManager sharedManager];
      location = [v7 cloudConfigurationDetails];

      if (location)
      {
        v51 = _NSConcreteStackBlock;
        v52 = -1073741824;
        v53 = 0;
        v54 = sub_100214F34;
        v55 = &unk_10032B6F0;
        v56 = selfCopy;
        [v58[0] storeCloudConfigurationDetails:location completion:&v51];
        objc_storeStrong(&v56, 0);
      }

      else
      {
        oslog = _BYLoggingFacility();
        v49 = 16;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v8 = oslog;
          v9 = v49;
          sub_10006AA68(buf);
          _os_log_error_impl(&_mh_execute_header, v8, v9, "BuddyCloudConfigManager returned hasCloudConfiguration = true, but cloudConfigurationDetails were nil! resetting...", buf, 2u);
        }

        objc_storeStrong(&oslog, 0);
        v10 = +[BuddyCloudConfigManager sharedManager];
        [v10 setHasPreviouslyRetrievedMDMv1EnrollmentProfile:0];

        configController4 = [(BuddyCloudConfigDisclosureViewController *)selfCopy configController];
        [(BuddyCloudConfigController *)configController4 setCloudConfigState:2];

        [(BuddyCloudConfigDisclosureViewController *)selfCopy _setupForCloudConfigurationState];
      }

      objc_storeStrong(&location, 0);
    }

    else
    {
      configController5 = [(BuddyCloudConfigDisclosureViewController *)selfCopy configController];
      [(BuddyCloudConfigController *)configController5 setCloudConfigState:1];

      v42 = _NSConcreteStackBlock;
      v43 = -1073741824;
      v44 = 0;
      v45 = sub_100215154;
      v46 = &unk_10032B6F0;
      v47 = selfCopy;
      [v58[0] retrieveAndStoreCloudConfigurationDetailsCompletionBlock:&v42];
      objc_storeStrong(&v47, 0);
    }
  }

  view2 = [(BuddyCloudConfigDisclosureViewController *)selfCopy view];
  [view2 setNeedsLayout];

  objc_storeStrong(v58, 0);
}

- (void)_clearState
{
  headerView = [(BuddyCloudConfigDisclosureViewController *)self headerView];
  [headerView setDetailText:&stru_10032F900];

  buttonTray = [(BuddyCloudConfigDisclosureViewController *)self buttonTray];
  [buttonTray removeAllButtons];
}

- (void)_presentEraseAlertWithTitle:(id)title message:(id)message eraseHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v16 = 0;
  objc_storeStrong(&v16, message);
  v15 = 0;
  objc_storeStrong(&v15, handler);
  v14 = [UIAlertController alertControllerWithTitle:location[0] message:v16 preferredStyle:1];
  v7 = +[NSBundle mainBundle];
  v8 = [(NSBundle *)v7 localizedStringForKey:@"ERASE" value:&stru_10032F900 table:@"Localizable"];
  v13 = [UIAlertAction actionWithTitle:v8 style:2 handler:v15];

  [v14 addAction:v13];
  v9 = +[NSBundle mainBundle];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"Localizable"];
  v12 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];

  [v14 addAction:v12];
  navigationController = [(BuddyCloudConfigDisclosureViewController *)selfCopy navigationController];
  [navigationController presentViewController:v14 animated:1 completion:0];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)showLeaveRemoteManagementAlert
{
  val = self;
  location[1] = a2;
  objc_initWeak(location, self);
  v2 = val;
  v3 = +[NSBundle mainBundle];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_LEAVE"];
  v5 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];
  v6 = +[NSBundle mainBundle];
  v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_LEAVE_REMOTE_MANAGEMENT_ALERT_BODY"];
  v8 = [(NSBundle *)v6 localizedStringForKey:v7 value:&stru_10032F900 table:@"Localizable"];
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_1002157B4;
  v13 = &unk_10032B928;
  objc_copyWeak(v14, location);
  [v2 _presentEraseAlertWithTitle:v5 message:v8 eraseHandler:&v9];

  objc_destroyWeak(v14);
  objc_destroyWeak(location);
}

- (void)_showEraseDeviceAlert
{
  val = self;
  location[1] = a2;
  objc_initWeak(location, self);
  v2 = val;
  v3 = +[NSBundle mainBundle];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_ERASE_ALERT_TITLE"];
  v5 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];
  v6 = +[NSBundle mainBundle];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"REMOTE_MANAGEMENT_ERASE_ALERT_BODY" value:&stru_10032F900 table:@"Localizable"];
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100215AC8;
  v12 = &unk_10032B928;
  objc_copyWeak(v13, location);
  [v2 _presentEraseAlertWithTitle:v5 message:v7 eraseHandler:&v8];

  objc_destroyWeak(v13);
  objc_destroyWeak(location);
}

- (void)showRetrievalError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  [(BuddyCloudConfigDisclosureViewController *)selfCopy setLastRetrievalError:location[0]];
  configController = [(BuddyCloudConfigDisclosureViewController *)selfCopy configController];
  [(BuddyCloudConfigController *)configController setCloudConfigState:5];

  [(BuddyCloudConfigDisclosureViewController *)selfCopy _setupForCloudConfigurationState];
  objc_storeStrong(location, 0);
}

- (void)_leaveRemoteManagementAndErase
{
  selfCopy = self;
  location[1] = a2;
  objc_initWeak(location, self);
  managedConfiguration = [(BuddyCloudConfigDisclosureViewController *)selfCopy managedConfiguration];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100215D7C;
  v7 = &unk_10032F3F0;
  objc_copyWeak(v8, location);
  [(MCProfileConnection *)managedConfiguration unenrollWithCompletionBlock:&v3];

  objc_destroyWeak(v8);
  objc_destroyWeak(location);
}

- (id)_remoteManagementText
{
  v18[2] = self;
  v18[1] = a2;
  managedConfiguration = [(BuddyCloudConfigDisclosureViewController *)self managedConfiguration];
  cloudConfigurationDetails = [(MCProfileConnection *)managedConfiguration cloudConfigurationDetails];
  v18[0] = [cloudConfigurationDetails objectForKeyedSubscript:kMCCCOrganizationNameKey];

  v4 = +[NSBundle mainBundle];
  v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CLOUD_CONFIG_DESCRIPTION"];
  v6 = [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_10032F900 table:@"Localizable"];
  v19[0] = v6;
  v7 = v18[0];
  v15 = 0;
  v13 = 0;
  if (!v18[0])
  {
    v16 = +[NSBundle mainBundle];
    v15 = 1;
    v7 = [(NSBundle *)v16 localizedStringForKey:@"UNKNOWN" value:&stru_10032F900 table:@"Localizable"];
    v14 = v7;
    v13 = 1;
  }

  v19[1] = v7;
  v19[2] = @"\n";
  v8 = +[NSBundle mainBundle];
  v9 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_WHAT_DETAIL"];
  v10 = [(NSBundle *)v8 localizedStringForKey:v9 value:&stru_10032F900 table:@"Localizable"];
  v19[3] = v10;
  location = [NSArray arrayWithObjects:v19 count:4];

  if (v13)
  {
  }

  if (v15)
  {
  }

  v11 = [location componentsJoinedByString:@"\n"];
  objc_storeStrong(&location, 0);
  objc_storeStrong(v18, 0);

  return v11;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v10 = a2;
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = BuddyCloudConfigDisclosureViewController;
  [(BuddyCloudConfigDisclosureViewController *)&v8 viewWillAppear:appear];
  if (([(BuddyCloudConfigDisclosureViewController *)selfCopy isBeingPresented]& 1) != 0)
  {
    lastRetrievalError = [(BuddyCloudConfigDisclosureViewController *)selfCopy lastRetrievalError];

    if (lastRetrievalError)
    {
      configController = [(BuddyCloudConfigDisclosureViewController *)selfCopy configController];
      [(BuddyCloudConfigController *)configController setCloudConfigState:5];
    }

    else
    {
      v5 = +[BuddyCloudConfigManager sharedManager];
      hasPreviouslyRetrievedMDMv1EnrollmentProfile = [v5 hasPreviouslyRetrievedMDMv1EnrollmentProfile];

      configController2 = [(BuddyCloudConfigDisclosureViewController *)selfCopy configController];
      if (hasPreviouslyRetrievedMDMv1EnrollmentProfile)
      {
        [(BuddyCloudConfigController *)configController2 setCloudConfigState:3];
      }

      else
      {
        [(BuddyCloudConfigController *)configController2 setCloudConfigState:0];
      }
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v5 = a2;
  disappearCopy = disappear;
  v3.receiver = self;
  v3.super_class = BuddyCloudConfigDisclosureViewController;
  [(BuddyCloudConfigDisclosureViewController *)&v3 viewWillDisappear:disappear];
  [(BuddyCloudConfigDisclosureViewController *)selfCopy setLastRetrievalError:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v9 = a2;
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = BuddyCloudConfigDisclosureViewController;
  [(BuddyCloudConfigDisclosureViewController *)&v7 viewDidAppear:appear];
  navigationController = [(BuddyCloudConfigDisclosureViewController *)selfCopy navigationController];
  configController = [(BuddyCloudConfigDisclosureViewController *)selfCopy configController];
  [(BuddyCloudConfigController *)configController setNavController:navigationController];

  configController2 = [(BuddyCloudConfigDisclosureViewController *)selfCopy configController];
  [(BuddyCloudConfigController *)configController2 removeControllersToRemove];

  view = [(BuddyCloudConfigDisclosureViewController *)selfCopy view];
  [view setNeedsLayout];

  [(BuddyCloudConfigDisclosureViewController *)selfCopy _setupForCloudConfigurationState];
}

- (void)setConfigController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  objc_storeStrong(&selfCopy->_configController, location[0]);
  objc_storeStrong(location, 0);
}

- (void)_retrieveEnterpriseConfiguration
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v11;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrieving enterprise configuration...", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  v4 = +[MDMCloudConfiguration sharedConfiguration];
  location = [v4 mdmVersionProtocol];

  v5 = +[MDMCloudConfiguration sharedConfiguration];
  enrollmentServerInfo = [v5 enrollmentServerInfo];

  if (enrollmentServerInfo)
  {
    [(BuddyCloudConfigDisclosureViewController *)selfCopy _retrieveEnterpriseConfigurationForManagementVersion2];
  }

  else if ([location integerValue] == 1)
  {
    [(BuddyCloudConfigDisclosureViewController *)selfCopy _retrieveEnterpriseConfigurationForManagementVersion1];
  }

  else
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(v14, location);
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unknown management protocol version %{public}@ in enterprise configuration.", v14, 0xCu);
    }

    objc_storeStrong(&v8, 0);
    configController = [(BuddyCloudConfigDisclosureViewController *)selfCopy configController];
    [(BuddyCloudConfigController *)configController setCloudConfigState:5];

    [(BuddyCloudConfigDisclosureViewController *)selfCopy _setupForCloudConfigurationState];
  }

  objc_storeStrong(&location, 0);
}

- (void)_retrieveEnterpriseConfigurationForManagementVersion1
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _BYLoggingFacility();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0];
    v3 = v23;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrieving enterprise configuration for management protocol version 1...", buf, 2u);
  }

  objc_storeStrong(location, 0);
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:selfCopy identifier:@"Disclosure"];
  managedConfiguration = [(BuddyCloudConfigDisclosureViewController *)selfCopy managedConfiguration];
  cloudConfigurationDetails = [managedConfiguration cloudConfigurationDetails];
  v4 = [cloudConfigurationDetails objectForKeyedSubscript:kMCCCConfigurationWebURLKey];
  v19 = [NSURL URLWithString:v4];

  v18 = [cloudConfigurationDetails objectForKeyedSubscript:kMCCCAnchorCertificatesKey];
  v17 = [BuddyCloudConfigController getCertificatesFromCertificateDataArray:v18];
  if (v19)
  {
    [(BuddyCloudConfigDisclosureViewController *)selfCopy _retrieveEnterpriseConfigurationFromWebURL:v19 withAnchorCerts:v17];
    v16 = 1;
  }

  else
  {
    v5 = [cloudConfigurationDetails objectForKeyedSubscript:kMCCCConfigurationURLKey];
    v15 = [NSURL URLWithString:v5];

    managedConfiguration2 = [(BuddyCloudConfigDisclosureViewController *)selfCopy managedConfiguration];
    v26 = kMDMCanRequestSoftwareUpdateKey;
    v7 = [NSNumber numberWithBool:1];
    v27 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100216F54;
    v13 = &unk_10032F418;
    v14 = selfCopy;
    [(MCProfileConnection *)managedConfiguration2 retrieveCloudConfigurationFromURL:v15 username:0 password:0 anchorCertificates:v17 additionalMachineInfo:v8 completionBlock:&v10];

    v9 = [BuddyCloudConfigManager sharedManager:v10];
    [v9 setHasPreviouslyRetrievedMDMv1EnrollmentProfile:1];

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
    v16 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&cloudConfigurationDetails, 0);
  objc_storeStrong(&managedConfiguration, 0);
}

- (void)_retrieveEnterpriseConfigurationForManagementVersion2
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v15;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrieving enterprise configuration for management protocol version 2...", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:selfCopy identifier:@"Disclosure"];
  enrollmentCoordinator = [(BuddyCloudConfigDisclosureViewController *)selfCopy enrollmentCoordinator];
  v5 = selfCopy;
  navigationController = [(BuddyCloudConfigDisclosureViewController *)selfCopy navigationController];
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1002174EC;
  v12 = &unk_10032F440;
  v13 = selfCopy;
  [(BuddyEnrollmentCoordinator *)enrollmentCoordinator retrieveProfileDataWithBaseViewController:v5 navigationController:navigationController completionHandler:&v8];

  v7 = +[BuddyCloudConfigManager sharedManager];
  [v7 setHasPreviouslyRetrievedMDMv1EnrollmentProfile:1];

  objc_storeStrong(&v13, 0);
}

- (void)_retrieveEnterpriseConfigurationFromWebURL:(id)l withAnchorCerts:(id)certs
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v9 = 0;
  objc_storeStrong(&v9, certs);
  v8 = objc_opt_new();
  [v8 setModalInPresentation:1];
  [v8 setWebURL:location[0]];
  [v8 setDelegate:selfCopy];
  _machineInfo = [(BuddyCloudConfigDisclosureViewController *)selfCopy _machineInfo];
  [v8 setMachineInfo:_machineInfo];

  [v8 setAnchorCerts:v9];
  v6 = [[UINavigationController alloc] initWithRootViewController:v8];
  [(BuddyCloudConfigDisclosureViewController *)selfCopy presentModalViewController:v6 withTransition:8, v6];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_storeProfileDataAndCompleteDisclosure:(id)disclosure
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, disclosure);
  managedConfiguration = [(BuddyCloudConfigDisclosureViewController *)selfCopy managedConfiguration];
  v4 = location[0];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100217CC0;
  v9 = &unk_10032B6F0;
  v10 = selfCopy;
  [(MCProfileConnection *)managedConfiguration storeProfileData:v4 completion:&v5];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (id)_machineInfo
{
  managedConfiguration = [(BuddyCloudConfigDisclosureViewController *)self managedConfiguration];
  v7 = kMDMCanRequestSoftwareUpdateKey;
  v3 = [NSNumber numberWithBool:1];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [(MCProfileConnection *)managedConfiguration getMachineInfoWithAdditionalInfo:v4];

  return v5;
}

- (void)webAuthCanceled:(id)canceled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, canceled);
  [(BuddyCloudConfigDisclosureViewController *)selfCopy dismissModalViewControllerWithTransition:9];
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    v7 = 0;
    if (_BYIsInternalInstall())
    {
      v3 = location[0];
    }

    else if (location[0])
    {
      domain = [location[0] domain];
      v9 = 1;
      v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [location[0] code]);
      v8 = v3;
      v7 = 1;
    }

    else
    {
      v3 = 0;
    }

    sub_100071CBC(buf, v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Web Auth Canceled with error: %{public}@", buf, 0xCu);
    if (v7)
    {
    }

    if (v9)
    {
    }
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyCloudConfigDisclosureViewController *)selfCopy setLastRetrievalError:location[0]];
  configController = [(BuddyCloudConfigDisclosureViewController *)selfCopy configController];
  [(BuddyCloudConfigController *)configController setCloudConfigState:5];

  if ([BuddyCloudConfigController isSoftwareUpdateError:location[0]])
  {
    configController2 = [(BuddyCloudConfigDisclosureViewController *)selfCopy configController];
    [(BuddyCloudConfigController *)configController2 transitionToSoftwareUpdateControllerFromController:selfCopy lastError:location[0]];
  }

  else
  {
    view = [(BuddyCloudConfigDisclosureViewController *)selfCopy view];
    [view setNeedsLayout];

    [(BuddyCloudConfigDisclosureViewController *)selfCopy _setupForCloudConfigurationState];
  }

  objc_storeStrong(location, 0);
}

- (void)recievedProfile:(id)profile
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, profile);
  oslog = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v14;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting web controller dismissal!", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = selfCopy;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1002184B0;
  v10 = &unk_10032B838;
  v11 = selfCopy;
  v12 = location[0];
  [(BuddyCloudConfigDisclosureViewController *)v5 dismissViewControllerWithTransition:9 completion:&v7];
  v6 = [BuddyCloudConfigManager sharedManager:v7];
  [v6 setHasPreviouslyRetrievedMDMv1EnrollmentProfile:1];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_controllerDone
{
  configController = [(BuddyCloudConfigDisclosureViewController *)self configController];
  cloudConfigState = [(BuddyCloudConfigController *)configController cloudConfigState];

  if (cloudConfigState == 3)
  {
    configController2 = [(BuddyCloudConfigDisclosureViewController *)self configController];
    [(BuddyCloudConfigController *)configController2 setCloudConfigState:4];

    [(BuddyCloudConfigDisclosureViewController *)self _retrieveEnterpriseConfiguration];
  }
}

- (void)_presentAboutController
{
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyCloudConfigAboutConfigurationContainerController);
  managedConfiguration = [(BuddyCloudConfigDisclosureViewController *)selfCopy managedConfiguration];
  [location[0] setCloudConfigurationFromProfileConnection:managedConfiguration];

  v3 = [[BFFNavigationController alloc] initWithRootViewController:location[0]];
  [v3 setModalPresentationStyle:2];
  [(BuddyCloudConfigDisclosureViewController *)selfCopy presentViewController:v3 animated:1 completion:0];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

@end