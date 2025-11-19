@interface BuddyCloudConfigDisclosureViewController
- (BuddyCloudConfigDisclosureViewController)init;
- (id)_machineInfo;
- (id)_remoteManagementText;
- (void)_clearState;
- (void)_controllerDone;
- (void)_leaveRemoteManagementAndErase;
- (void)_presentAboutController;
- (void)_presentEraseAlertWithTitle:(id)a3 message:(id)a4 eraseHandler:(id)a5;
- (void)_retrieveEnterpriseConfiguration;
- (void)_retrieveEnterpriseConfigurationForManagementVersion1;
- (void)_retrieveEnterpriseConfigurationForManagementVersion2;
- (void)_retrieveEnterpriseConfigurationFromWebURL:(id)a3 withAnchorCerts:(id)a4;
- (void)_setupForCloudConfigurationState;
- (void)_showEraseDeviceAlert;
- (void)_storeProfileDataAndCompleteDisclosure:(id)a3;
- (void)loadView;
- (void)recievedProfile:(id)a3;
- (void)setConfigController:(id)a3;
- (void)showLeaveRemoteManagementAlert;
- (void)showRetrievalError:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)webAuthCanceled:(id)a3;
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
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyCloudConfigDisclosureViewController;
  [(BuddyCloudConfigDisclosureViewController *)&v7 loadView];
  v2 = [(BuddyCloudConfigDisclosureViewController *)v9 headerView];
  [v2 setDetailText:&stru_10032F900];

  location = +[OBHeaderAccessoryButton accessoryButton];
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"REMOTE_MANAGEMENT_ABOUT" value:&stru_10032F900 table:@"Localizable"];
  [location setTitle:v4 forState:0];

  [location addTarget:v9 action:"_presentAboutController" forControlEvents:0x2000];
  v5 = [(BuddyCloudConfigDisclosureViewController *)v9 headerView];
  [v5 addAccessoryButton:location];

  objc_storeStrong(&location, 0);
}

- (void)_setupForCloudConfigurationState
{
  v59 = self;
  v58[1] = a2;
  v58[0] = [(BuddyCloudConfigDisclosureViewController *)self managedConfiguration];
  v2 = [(BuddyCloudConfigDisclosureViewController *)v59 configController];
  v3 = [(BuddyCloudConfigController *)v2 cloudConfigState];

  if (v3)
  {
    if (v3 != 1)
    {
      switch(v3)
      {
        case 2u:
          [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Disclosure"];
          [(BuddyCloudConfigDisclosureViewController *)v59 _clearState];
          v13 = [(BuddyCloudConfigDisclosureViewController *)v59 headerView];
          v14 = +[NSBundle mainBundle];
          v15 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CLOUD_CONFIG_ERROR_FAILED_RETRIEVE_INITIAL_CONFIG"];
          v16 = [(NSBundle *)v14 localizedStringForKey:v15 value:&stru_10032F900 table:@"Localizable"];
          v17 = [(BuddyCloudConfigDisclosureViewController *)v59 lastRetrievalError];
          v18 = [(NSError *)v17 localizedDescription];
          v19 = [NSString localizedStringWithFormat:v16, v18];
          [v13 setDetailText:v19];

          break;
        case 3u:
          v29 = [v58[0] cloudConfigurationDetails];

          if (v29)
          {
            [(BuddyCloudConfigDisclosureViewController *)v59 _clearState];
            v30 = [(BuddyCloudConfigDisclosureViewController *)v59 headerView];
            v31 = [(BuddyCloudConfigDisclosureViewController *)v59 _remoteManagementText];
            [v30 setDetailText:v31];

            v32 = [(BuddyCloudConfigDisclosureViewController *)v59 buttonTray];
            v33 = [(BuddyCloudConfigDisclosureViewController *)v59 enrollButton];
            [v32 addButton:v33];

            [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Disclosure"];
            if ([v58[0] isProvisionallyEnrolled])
            {
              v34 = +[NSBundle mainBundle];
              v35 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_LEAVE"];
              v36 = [(NSBundle *)v34 localizedStringForKey:v35 value:&stru_10032F900 table:@"Localizable"];
              [(BuddyWelcomeController *)v59 addLinkButton:v36 action:"showLeaveRemoteManagementAlert"];
            }

            v37 = [(BuddyCloudConfigDisclosureViewController *)v59 view];
            [v37 setNeedsLayout];
          }

          else
          {
            v38 = [(BuddyCloudConfigDisclosureViewController *)v59 lastRetrievalError];

            if (v38)
            {
              v39 = [(BuddyCloudConfigDisclosureViewController *)v59 configController];
              [(BuddyCloudConfigController *)v39 setCloudConfigState:0];

              [(BuddyCloudConfigDisclosureViewController *)v59 _setupForCloudConfigurationState];
            }

            else
            {
              v40 = [(BuddyCloudConfigDisclosureViewController *)v59 configController];
              [(BuddyCloudConfigController *)v40 cloudConfigDidFinishFromViewController:v59 wasApplied:0];
            }
          }

          break;
        case 5u:
          [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Disclosure"];
          [(BuddyCloudConfigDisclosureViewController *)v59 _clearState];
          v20 = [(BuddyCloudConfigDisclosureViewController *)v59 headerView];
          v21 = +[NSBundle mainBundle];
          v22 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CLOUD_CONFIG_ERROR_FAILED_RETRIEVE_ENTERPRISE_CONFIG"];
          v23 = [(NSBundle *)v21 localizedStringForKey:v22 value:&stru_10032F900 table:@"Localizable"];
          v24 = [v58[0] cloudConfigurationDetails];
          v25 = [v24 objectForKeyedSubscript:kMCCCOrganizationNameKey];
          v26 = [(BuddyCloudConfigDisclosureViewController *)v59 lastRetrievalError];
          v27 = [(NSError *)v26 localizedDescription];
          v28 = [NSString localizedStringWithFormat:v23, v25, v27];
          [v20 setDetailText:v28];

          break;
      }
    }
  }

  else
  {
    [(BuddyCloudConfigDisclosureViewController *)v59 _clearState];
    v4 = [(BuddyCloudConfigDisclosureViewController *)v59 buttonTray];
    v5 = [(BuddyCloudConfigDisclosureViewController *)v59 enrollButton];
    [v4 addButton:v5];

    v6 = +[BuddyCloudConfigManager sharedManager];
    LOBYTE(v5) = [v6 hasCloudConfiguration];

    if (v5)
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
        v56 = v59;
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

        v11 = [(BuddyCloudConfigDisclosureViewController *)v59 configController];
        [(BuddyCloudConfigController *)v11 setCloudConfigState:2];

        [(BuddyCloudConfigDisclosureViewController *)v59 _setupForCloudConfigurationState];
      }

      objc_storeStrong(&location, 0);
    }

    else
    {
      v12 = [(BuddyCloudConfigDisclosureViewController *)v59 configController];
      [(BuddyCloudConfigController *)v12 setCloudConfigState:1];

      v42 = _NSConcreteStackBlock;
      v43 = -1073741824;
      v44 = 0;
      v45 = sub_100215154;
      v46 = &unk_10032B6F0;
      v47 = v59;
      [v58[0] retrieveAndStoreCloudConfigurationDetailsCompletionBlock:&v42];
      objc_storeStrong(&v47, 0);
    }
  }

  v41 = [(BuddyCloudConfigDisclosureViewController *)v59 view];
  [v41 setNeedsLayout];

  objc_storeStrong(v58, 0);
}

- (void)_clearState
{
  v2 = [(BuddyCloudConfigDisclosureViewController *)self headerView];
  [v2 setDetailText:&stru_10032F900];

  v3 = [(BuddyCloudConfigDisclosureViewController *)self buttonTray];
  [v3 removeAllButtons];
}

- (void)_presentEraseAlertWithTitle:(id)a3 message:(id)a4 eraseHandler:(id)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = [UIAlertController alertControllerWithTitle:location[0] message:v16 preferredStyle:1];
  v7 = +[NSBundle mainBundle];
  v8 = [(NSBundle *)v7 localizedStringForKey:@"ERASE" value:&stru_10032F900 table:@"Localizable"];
  v13 = [UIAlertAction actionWithTitle:v8 style:2 handler:v15];

  [v14 addAction:v13];
  v9 = +[NSBundle mainBundle];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"Localizable"];
  v12 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];

  [v14 addAction:v12];
  v11 = [(BuddyCloudConfigDisclosureViewController *)v18 navigationController];
  [v11 presentViewController:v14 animated:1 completion:0];

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

- (void)showRetrievalError:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyCloudConfigDisclosureViewController *)v5 setLastRetrievalError:location[0]];
  v3 = [(BuddyCloudConfigDisclosureViewController *)v5 configController];
  [(BuddyCloudConfigController *)v3 setCloudConfigState:5];

  [(BuddyCloudConfigDisclosureViewController *)v5 _setupForCloudConfigurationState];
  objc_storeStrong(location, 0);
}

- (void)_leaveRemoteManagementAndErase
{
  v10 = self;
  location[1] = a2;
  objc_initWeak(location, self);
  v2 = [(BuddyCloudConfigDisclosureViewController *)v10 managedConfiguration];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100215D7C;
  v7 = &unk_10032F3F0;
  objc_copyWeak(v8, location);
  [(MCProfileConnection *)v2 unenrollWithCompletionBlock:&v3];

  objc_destroyWeak(v8);
  objc_destroyWeak(location);
}

- (id)_remoteManagementText
{
  v18[2] = self;
  v18[1] = a2;
  v2 = [(BuddyCloudConfigDisclosureViewController *)self managedConfiguration];
  v3 = [(MCProfileConnection *)v2 cloudConfigurationDetails];
  v18[0] = [v3 objectForKeyedSubscript:kMCCCOrganizationNameKey];

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

- (void)viewWillAppear:(BOOL)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8.receiver = self;
  v8.super_class = BuddyCloudConfigDisclosureViewController;
  [(BuddyCloudConfigDisclosureViewController *)&v8 viewWillAppear:a3];
  if (([(BuddyCloudConfigDisclosureViewController *)v11 isBeingPresented]& 1) != 0)
  {
    v3 = [(BuddyCloudConfigDisclosureViewController *)v11 lastRetrievalError];

    if (v3)
    {
      v4 = [(BuddyCloudConfigDisclosureViewController *)v11 configController];
      [(BuddyCloudConfigController *)v4 setCloudConfigState:5];
    }

    else
    {
      v5 = +[BuddyCloudConfigManager sharedManager];
      v6 = [v5 hasPreviouslyRetrievedMDMv1EnrollmentProfile];

      v7 = [(BuddyCloudConfigDisclosureViewController *)v11 configController];
      if (v6)
      {
        [(BuddyCloudConfigController *)v7 setCloudConfigState:3];
      }

      else
      {
        [(BuddyCloudConfigController *)v7 setCloudConfigState:0];
      }
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = BuddyCloudConfigDisclosureViewController;
  [(BuddyCloudConfigDisclosureViewController *)&v3 viewWillDisappear:a3];
  [(BuddyCloudConfigDisclosureViewController *)v6 setLastRetrievalError:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7.receiver = self;
  v7.super_class = BuddyCloudConfigDisclosureViewController;
  [(BuddyCloudConfigDisclosureViewController *)&v7 viewDidAppear:a3];
  v3 = [(BuddyCloudConfigDisclosureViewController *)v10 navigationController];
  v4 = [(BuddyCloudConfigDisclosureViewController *)v10 configController];
  [(BuddyCloudConfigController *)v4 setNavController:v3];

  v5 = [(BuddyCloudConfigDisclosureViewController *)v10 configController];
  [(BuddyCloudConfigController *)v5 removeControllersToRemove];

  v6 = [(BuddyCloudConfigDisclosureViewController *)v10 view];
  [v6 setNeedsLayout];

  [(BuddyCloudConfigDisclosureViewController *)v10 _setupForCloudConfigurationState];
}

- (void)setConfigController:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_configController, location[0]);
  objc_storeStrong(location, 0);
}

- (void)_retrieveEnterpriseConfiguration
{
  v13 = self;
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
  v6 = [v5 enrollmentServerInfo];

  if (v6)
  {
    [(BuddyCloudConfigDisclosureViewController *)v13 _retrieveEnterpriseConfigurationForManagementVersion2];
  }

  else if ([location integerValue] == 1)
  {
    [(BuddyCloudConfigDisclosureViewController *)v13 _retrieveEnterpriseConfigurationForManagementVersion1];
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
    v7 = [(BuddyCloudConfigDisclosureViewController *)v13 configController];
    [(BuddyCloudConfigController *)v7 setCloudConfigState:5];

    [(BuddyCloudConfigDisclosureViewController *)v13 _setupForCloudConfigurationState];
  }

  objc_storeStrong(&location, 0);
}

- (void)_retrieveEnterpriseConfigurationForManagementVersion1
{
  v25 = self;
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
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:v25 identifier:@"Disclosure"];
  v21 = [(BuddyCloudConfigDisclosureViewController *)v25 managedConfiguration];
  v20 = [v21 cloudConfigurationDetails];
  v4 = [v20 objectForKeyedSubscript:kMCCCConfigurationWebURLKey];
  v19 = [NSURL URLWithString:v4];

  v18 = [v20 objectForKeyedSubscript:kMCCCAnchorCertificatesKey];
  v17 = [BuddyCloudConfigController getCertificatesFromCertificateDataArray:v18];
  if (v19)
  {
    [(BuddyCloudConfigDisclosureViewController *)v25 _retrieveEnterpriseConfigurationFromWebURL:v19 withAnchorCerts:v17];
    v16 = 1;
  }

  else
  {
    v5 = [v20 objectForKeyedSubscript:kMCCCConfigurationURLKey];
    v15 = [NSURL URLWithString:v5];

    v6 = [(BuddyCloudConfigDisclosureViewController *)v25 managedConfiguration];
    v26 = kMDMCanRequestSoftwareUpdateKey;
    v7 = [NSNumber numberWithBool:1];
    v27 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100216F54;
    v13 = &unk_10032F418;
    v14 = v25;
    [(MCProfileConnection *)v6 retrieveCloudConfigurationFromURL:v15 username:0 password:0 anchorCertificates:v17 additionalMachineInfo:v8 completionBlock:&v10];

    v9 = [BuddyCloudConfigManager sharedManager:v10];
    [v9 setHasPreviouslyRetrievedMDMv1EnrollmentProfile:1];

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
    v16 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
}

- (void)_retrieveEnterpriseConfigurationForManagementVersion2
{
  v17 = self;
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
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:v17 identifier:@"Disclosure"];
  v4 = [(BuddyCloudConfigDisclosureViewController *)v17 enrollmentCoordinator];
  v5 = v17;
  v6 = [(BuddyCloudConfigDisclosureViewController *)v17 navigationController];
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1002174EC;
  v12 = &unk_10032F440;
  v13 = v17;
  [(BuddyEnrollmentCoordinator *)v4 retrieveProfileDataWithBaseViewController:v5 navigationController:v6 completionHandler:&v8];

  v7 = +[BuddyCloudConfigManager sharedManager];
  [v7 setHasPreviouslyRetrievedMDMv1EnrollmentProfile:1];

  objc_storeStrong(&v13, 0);
}

- (void)_retrieveEnterpriseConfigurationFromWebURL:(id)a3 withAnchorCerts:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = objc_opt_new();
  [v8 setModalInPresentation:1];
  [v8 setWebURL:location[0]];
  [v8 setDelegate:v11];
  v5 = [(BuddyCloudConfigDisclosureViewController *)v11 _machineInfo];
  [v8 setMachineInfo:v5];

  [v8 setAnchorCerts:v9];
  v6 = [[UINavigationController alloc] initWithRootViewController:v8];
  [(BuddyCloudConfigDisclosureViewController *)v11 presentModalViewController:v6 withTransition:8, v6];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_storeProfileDataAndCompleteDisclosure:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyCloudConfigDisclosureViewController *)v12 managedConfiguration];
  v4 = location[0];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100217CC0;
  v9 = &unk_10032B6F0;
  v10 = v12;
  [(MCProfileConnection *)v3 storeProfileData:v4 completion:&v5];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (id)_machineInfo
{
  v2 = [(BuddyCloudConfigDisclosureViewController *)self managedConfiguration];
  v7 = kMDMCanRequestSoftwareUpdateKey;
  v3 = [NSNumber numberWithBool:1];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [(MCProfileConnection *)v2 getMachineInfoWithAdditionalInfo:v4];

  return v5;
}

- (void)webAuthCanceled:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyCloudConfigDisclosureViewController *)v13 dismissModalViewControllerWithTransition:9];
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
      v10 = [location[0] domain];
      v9 = 1;
      v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v10, [location[0] code]);
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
  [(BuddyCloudConfigDisclosureViewController *)v13 setLastRetrievalError:location[0]];
  v4 = [(BuddyCloudConfigDisclosureViewController *)v13 configController];
  [(BuddyCloudConfigController *)v4 setCloudConfigState:5];

  if ([BuddyCloudConfigController isSoftwareUpdateError:location[0]])
  {
    v5 = [(BuddyCloudConfigDisclosureViewController *)v13 configController];
    [(BuddyCloudConfigController *)v5 transitionToSoftwareUpdateControllerFromController:v13 lastError:location[0]];
  }

  else
  {
    v6 = [(BuddyCloudConfigDisclosureViewController *)v13 view];
    [v6 setNeedsLayout];

    [(BuddyCloudConfigDisclosureViewController *)v13 _setupForCloudConfigurationState];
  }

  objc_storeStrong(location, 0);
}

- (void)recievedProfile:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v5 = v17;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1002184B0;
  v10 = &unk_10032B838;
  v11 = v17;
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
  v2 = [(BuddyCloudConfigDisclosureViewController *)self configController];
  v3 = [(BuddyCloudConfigController *)v2 cloudConfigState];

  if (v3 == 3)
  {
    v4 = [(BuddyCloudConfigDisclosureViewController *)self configController];
    [(BuddyCloudConfigController *)v4 setCloudConfigState:4];

    [(BuddyCloudConfigDisclosureViewController *)self _retrieveEnterpriseConfiguration];
  }
}

- (void)_presentAboutController
{
  v5 = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyCloudConfigAboutConfigurationContainerController);
  v2 = [(BuddyCloudConfigDisclosureViewController *)v5 managedConfiguration];
  [location[0] setCloudConfigurationFromProfileConnection:v2];

  v3 = [[BFFNavigationController alloc] initWithRootViewController:location[0]];
  [v3 setModalPresentationStyle:2];
  [(BuddyCloudConfigDisclosureViewController *)v5 presentViewController:v3 animated:1 completion:0];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

@end