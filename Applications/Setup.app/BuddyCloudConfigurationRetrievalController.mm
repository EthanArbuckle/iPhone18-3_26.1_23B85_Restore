@interface BuddyCloudConfigurationRetrievalController
- (BOOL)controllerNeedsToRun;
- (BOOL)presentErrorIfDesired:(id)desired;
- (BuddyCloudConfigurationRetrievalController)init;
- (void)_fetchCloudConfig;
- (void)_presentTryAgainAlert;
- (void)_presentTryAgainAlertWithMessage:(id)message;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
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
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyCloudConfigurationRetrievalController;
  [(BuddyCloudConfigurationRetrievalController *)&v3 viewDidLoad];
  navigationItem = [(BuddyCloudConfigurationRetrievalController *)selfCopy navigationItem];
  [navigationItem setHidesBackButton:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  if ([(BuddyCloudConfigurationRetrievalController *)self shouldFetchCloudConfiguration])
  {
    [(BuddyCloudConfigurationRetrievalController *)selfCopy setShouldFetchCloudConfiguration:0];
    featureFlags = [(BuddyCloudConfigurationRetrievalController *)selfCopy featureFlags];
    v4 = [(BuddyFeatureFlags *)featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

    if (v4)
    {
      [(BuddyCloudConfigurationRetrievalController *)selfCopy _fetchCloudConfig];
    }
  }

  v5.receiver = selfCopy;
  v5.super_class = BuddyCloudConfigurationRetrievalController;
  [(BuddyCloudConfigurationRetrievalController *)&v5 viewDidAppear:appearCopy];
}

- (BOOL)controllerNeedsToRun
{
  v14 = 0;
  managedConfiguration = [(BuddyCloudConfigurationRetrievalController *)self managedConfiguration];
  activationRecordIndicatesCloudConfigurationIsAvailable = [(MCProfileConnection *)managedConfiguration activationRecordIndicatesCloudConfigurationIsAvailable];

  if (activationRecordIndicatesCloudConfigurationIsAvailable)
  {
    managedConfiguration2 = [(BuddyCloudConfigurationRetrievalController *)self managedConfiguration];
    [(MCProfileConnection *)managedConfiguration2 flush];

    managedConfiguration3 = [(BuddyCloudConfigurationRetrievalController *)self managedConfiguration];
    cloudConfigurationDetails = [(MCProfileConnection *)managedConfiguration3 cloudConfigurationDetails];
    v12 = 0;
    v7 = 0;
    if (!cloudConfigurationDetails)
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

  enrollmentCoordinator = [(BuddyCloudConfigurationRetrievalController *)self enrollmentCoordinator];
  shouldDoReturnToService = [(BuddyEnrollmentCoordinator *)enrollmentCoordinator shouldDoReturnToService];

  if (shouldDoReturnToService)
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

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  featureFlags = [(BuddyCloudConfigurationRetrievalController *)selfCopy featureFlags];
  isMDMEnrollmentFlowControllerAdoptionEnabled = [(BuddyFeatureFlags *)featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled];

  if (isMDMEnrollmentFlowControllerAdoptionEnabled)
  {
    (*(location[0] + 2))(location[0], 0);
    v12 = 1;
  }

  else
  {
    managedConfiguration = [(BuddyCloudConfigurationRetrievalController *)selfCopy managedConfiguration];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1001101F8;
    v10 = &unk_10032B460;
    v11 = location[0];
    [(MCProfileConnection *)managedConfiguration restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:&v6];

    objc_storeStrong(&v11, 0);
    v12 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)_fetchCloudConfig
{
  selfCopy = self;
  v29[1] = a2;
  enrollmentCoordinator = [(BuddyCloudConfigurationRetrievalController *)self enrollmentCoordinator];
  shouldDoReturnToService = [(BuddyEnrollmentCoordinator *)enrollmentCoordinator shouldDoReturnToService];

  if (shouldDoReturnToService)
  {
    enrollmentCoordinator2 = [(BuddyCloudConfigurationRetrievalController *)selfCopy enrollmentCoordinator];
    v24 = _NSConcreteStackBlock;
    v25 = -1073741824;
    v26 = 0;
    v27 = sub_100110528;
    v28 = &unk_10032B6F0;
    v29[0] = selfCopy;
    [(BuddyEnrollmentCoordinator *)enrollmentCoordinator2 configureMDMWithCompletionHandler:&v24];

    objc_storeStrong(v29, 0);
  }

  else
  {
    managedConfiguration = [(BuddyCloudConfigurationRetrievalController *)selfCopy managedConfiguration];
    v22 = 0;
    v20 = 0;
    v6 = 1;
    if (([(MCProfileConnection *)managedConfiguration activationRecordIndicatesCloudConfigurationIsAvailable]& 1) != 0)
    {
      managedConfiguration2 = [(BuddyCloudConfigurationRetrievalController *)selfCopy managedConfiguration];
      v22 = 1;
      cloudConfigurationDetails = [(MCProfileConnection *)managedConfiguration2 cloudConfigurationDetails];
      v20 = 1;
      v6 = cloudConfigurationDetails != 0;
    }

    if (v20)
    {
    }

    if (v22)
    {
    }

    if (v6)
    {
      delegate = [(BuddyCloudConfigurationRetrievalController *)selfCopy delegate];
      [delegate flowItemDone:selfCopy];
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
      managedConfiguration3 = [(BuddyCloudConfigurationRetrievalController *)selfCopy managedConfiguration];
      v11 = _NSConcreteStackBlock;
      v12 = -1073741824;
      v13 = 0;
      v14 = sub_100110908;
      v15 = &unk_10032D030;
      v16 = selfCopy;
      [(MCProfileConnection *)managedConfiguration3 retrieveCloudConfigurationDetailsCompletionBlock:&v11];

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

- (void)_presentTryAgainAlertWithMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
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
  v24 = selfCopy;
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
  v18 = selfCopy;
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:&v14];
  [v9 addAction:{v13, v14, v15, v16, v17}];

  [(BuddyCloudConfigurationRetrievalController *)selfCopy presentViewController:v25 animated:1 completion:0];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)presentErrorIfDesired:(id)desired
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, desired);
  enrollmentCoordinator = [(BuddyCloudConfigurationRetrievalController *)selfCopy enrollmentCoordinator];
  isMDMMigrationMode = [(BuddyEnrollmentCoordinator *)enrollmentCoordinator isMDMMigrationMode];

  if (isMDMMigrationMode)
  {
    v15 = 0;
    v12 = 1;
  }

  else
  {
    underlyingErrors = [location[0] underlyingErrors];
    firstObject = [underlyingErrors firstObject];

    v9 = 0;
    v6 = 0;
    if (firstObject)
    {
      domain = [firstObject domain];
      v9 = 1;
      v6 = 0;
      if ([domain isEqualToString:DMCHTTPTransactionErrorDomain])
      {
        v6 = [firstObject code] == 23004;
      }
    }

    if (v9)
    {
    }

    if (v6)
    {
      localizedDescription = [firstObject localizedDescription];
      [(BuddyCloudConfigurationRetrievalController *)selfCopy _presentTryAgainAlertWithMessage:localizedDescription];
      objc_storeStrong(&localizedDescription, 0);
    }

    else
    {
      [(BuddyCloudConfigurationRetrievalController *)selfCopy _presentTryAgainAlert];
    }

    v15 = 1;
    v12 = 1;
    objc_storeStrong(&firstObject, 0);
  }

  objc_storeStrong(location, 0);
  return v15 & 1;
}

@end