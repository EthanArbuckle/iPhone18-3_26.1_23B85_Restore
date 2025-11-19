@interface BuddyCloudConfigurationRetrievalController
- (BOOL)controllerNeedsToRun;
- (BOOL)presentErrorIfDesired:(id)a3;
- (BuddyCloudConfigurationRetrievalController)init;
- (void)_fetchCloudConfig;
- (void)_presentTryAgainAlert;
- (void)_presentTryAgainAlertWithMessage:(id)a3;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation BuddyCloudConfigurationRetrievalController

- (BuddyCloudConfigurationRetrievalController)init
{
  v8 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"CLOUD_CONFIG_RETRIEVING" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyCloudConfigurationRetrievalController;
  location = [(BuddyCloudConfigurationRetrievalController *)&v7 initWithSpinnerText:v4];
  objc_storeStrong(&location, location);

  if (location)
  {
    *(location + 8) = 1;
  }

  v5 = location;
  objc_storeStrong(&location, 0);
  return v5;
}

- (void)viewDidLoad
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyCloudConfigurationRetrievalController;
  [(BuddyCloudConfigurationRetrievalController *)&v3 viewDidLoad];
  v2 = [(BuddyCloudConfigurationRetrievalController *)v5 navigationItem];
  [v2 setHidesBackButton:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  if ([(BuddyCloudConfigurationRetrievalController *)self shouldFetchCloudConfiguration])
  {
    [(BuddyCloudConfigurationRetrievalController *)v8 setShouldFetchCloudConfiguration:0];
    v3 = [(BuddyCloudConfigurationRetrievalController *)v8 featureFlags];
    v4 = [(BuddyFeatureFlags *)v3 isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

    if (v4)
    {
      [(BuddyCloudConfigurationRetrievalController *)v8 _fetchCloudConfig];
    }
  }

  v5.receiver = v8;
  v5.super_class = BuddyCloudConfigurationRetrievalController;
  [(BuddyCloudConfigurationRetrievalController *)&v5 viewDidAppear:v6];
}

- (BOOL)controllerNeedsToRun
{
  v14 = 0;
  v2 = [(BuddyCloudConfigurationRetrievalController *)self managedConfiguration];
  v3 = [(MCProfileConnection *)v2 activationRecordIndicatesCloudConfigurationIsAvailable];

  if (v3)
  {
    v4 = [(BuddyCloudConfigurationRetrievalController *)self managedConfiguration];
    [(MCProfileConnection *)v4 flush];

    v5 = [(BuddyCloudConfigurationRetrievalController *)self managedConfiguration];
    v6 = [(MCProfileConnection *)v5 cloudConfigurationDetails];
    v12 = 0;
    v7 = 0;
    if (!v6)
    {
      v13 = +[BuddyCloudConfigManager sharedManager];
      v12 = 1;
      v7 = [v13 hasCloudConfiguration] ^ 1;
    }

    if (v12)
    {
    }

    if (v7)
    {
      v14 = 1;
    }
  }

  v8 = [(BuddyCloudConfigurationRetrievalController *)self enrollmentCoordinator];
  v9 = [(BuddyEnrollmentCoordinator *)v8 shouldDoReturnToService];

  if (v9)
  {
    v14 = 1;
  }

  if (!v14)
  {
    v10 = +[BuddyCloudConfigManager sharedManager];
    [v10 cloudConfigMayHaveChanged];
  }

  return v14;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyCloudConfigurationRetrievalController *)v14 featureFlags];
  v4 = [(BuddyFeatureFlags *)v3 isMDMEnrollmentFlowControllerAdoptionEnabled];

  if (v4)
  {
    (*(location[0] + 2))(location[0], 0);
    v12 = 1;
  }

  else
  {
    v5 = [(BuddyCloudConfigurationRetrievalController *)v14 managedConfiguration];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1001101F8;
    v10 = &unk_10032B460;
    v11 = location[0];
    [(MCProfileConnection *)v5 restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:&v6];

    objc_storeStrong(&v11, 0);
    v12 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)_fetchCloudConfig
{
  v30 = self;
  v29[1] = a2;
  v2 = [(BuddyCloudConfigurationRetrievalController *)self enrollmentCoordinator];
  v3 = [(BuddyEnrollmentCoordinator *)v2 shouldDoReturnToService];

  if (v3)
  {
    v4 = [(BuddyCloudConfigurationRetrievalController *)v30 enrollmentCoordinator];
    v24 = _NSConcreteStackBlock;
    v25 = -1073741824;
    v26 = 0;
    v27 = sub_100110528;
    v28 = &unk_10032B6F0;
    v29[0] = v30;
    [(BuddyEnrollmentCoordinator *)v4 configureMDMWithCompletionHandler:&v24];

    objc_storeStrong(v29, 0);
  }

  else
  {
    v5 = [(BuddyCloudConfigurationRetrievalController *)v30 managedConfiguration];
    v22 = 0;
    v20 = 0;
    v6 = 1;
    if (([(MCProfileConnection *)v5 activationRecordIndicatesCloudConfigurationIsAvailable]& 1) != 0)
    {
      v23 = [(BuddyCloudConfigurationRetrievalController *)v30 managedConfiguration];
      v22 = 1;
      v21 = [(MCProfileConnection *)v23 cloudConfigurationDetails];
      v20 = 1;
      v6 = v21 != 0;
    }

    if (v20)
    {
    }

    if (v22)
    {
    }

    if (v6)
    {
      v7 = [(BuddyCloudConfigurationRetrievalController *)v30 delegate];
      [v7 flowItemDone:v30];
    }

    else
    {
      oslog = _BYLoggingFacility();
      v18 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = oslog;
        v9 = v18;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v8, v9, "Fetching cloud configuration...", buf, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v10 = [(BuddyCloudConfigurationRetrievalController *)v30 managedConfiguration];
      v11 = _NSConcreteStackBlock;
      v12 = -1073741824;
      v13 = 0;
      v14 = sub_100110908;
      v15 = &unk_10032D030;
      v16 = v30;
      [(MCProfileConnection *)v10 retrieveCloudConfigurationDetailsCompletionBlock:&v11];

      objc_storeStrong(&v16, 0);
    }
  }
}

- (void)_presentTryAgainAlert
{
  v3 = [NSBundle mainBundle:a2];
  v4 = SFLocalizableWAPIStringKeyForKey();
  v5 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];
  [(BuddyCloudConfigurationRetrievalController *)self _presentTryAgainAlertWithMessage:v5];
}

- (void)_presentTryAgainAlertWithMessage:(id)a3
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"CLOUD_CONFIG_RETRIEVAL_FAILED_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v25 = [UIAlertController alertControllerWithTitle:v4 message:location[0] preferredStyle:1];

  v5 = v25;
  v6 = +[NSBundle mainBundle];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"TRY_AGAIN" value:&stru_10032F900 table:@"Localizable"];
  v19 = _NSConcreteStackBlock;
  v20 = -1073741824;
  v21 = 0;
  v22 = sub_1001111AC;
  v23 = &unk_10032B598;
  v24 = v27;
  v8 = [UIAlertAction actionWithTitle:v7 style:0 handler:&v19];
  [v5 addAction:v8];

  v9 = v25;
  v10 = +[NSBundle mainBundle];
  v11 = SFLocalizableWAPIStringKeyForKey();
  v12 = [(NSBundle *)v10 localizedStringForKey:v11 value:&stru_10032F900 table:@"Localizable"];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100111258;
  v17 = &unk_10032B598;
  v18 = v27;
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:&v14];
  [v9 addAction:{v13, v14, v15, v16, v17}];

  [(BuddyCloudConfigurationRetrievalController *)v27 presentViewController:v25 animated:1 completion:0];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)presentErrorIfDesired:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyCloudConfigurationRetrievalController *)v14 enrollmentCoordinator];
  v4 = [(BuddyEnrollmentCoordinator *)v3 isMDMMigrationMode];

  if (v4)
  {
    v15 = 0;
    v12 = 1;
  }

  else
  {
    v5 = [location[0] underlyingErrors];
    v11 = [v5 firstObject];

    v9 = 0;
    v6 = 0;
    if (v11)
    {
      v10 = [v11 domain];
      v9 = 1;
      v6 = 0;
      if ([v10 isEqualToString:DMCHTTPTransactionErrorDomain])
      {
        v6 = [v11 code] == 23004;
      }
    }

    if (v9)
    {
    }

    if (v6)
    {
      v8 = [v11 localizedDescription];
      [(BuddyCloudConfigurationRetrievalController *)v14 _presentTryAgainAlertWithMessage:v8];
      objc_storeStrong(&v8, 0);
    }

    else
    {
      [(BuddyCloudConfigurationRetrievalController *)v14 _presentTryAgainAlert];
    }

    v15 = 1;
    v12 = 1;
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(location, 0);
  return v15 & 1;
}

@end