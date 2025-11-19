@interface BuddyCloudConfigDisclosureViewController_new
- (BuddyCloudConfigDisclosureViewControllerDelegate)disclosureVCDelegate;
- (BuddyCloudConfigDisclosureViewController_new)init;
- (BuddyCloudConfigDisclosureViewController_new)initWithMigrationUIConfiguration:(id)a3;
- (MDMCloudConfiguration)cloudConfiguration;
- (id)_migrationDetailText;
- (id)_migrationTimeUntilDeadline;
- (id)_remoteManagementText;
- (id)alertControllerForError:(id)a3 dismissAction:(id)a4;
- (void)_enrollButtonTapped;
- (void)_migrationDeadlineTimerDidFire:(id)a3;
- (void)_migrationNotNowTapped;
- (void)_migrationSelectWiFiNetworkTapped;
- (void)_presentAboutController;
- (void)_presentEraseAlertWithTitle:(id)a3 message:(id)a4 eraseHandler:(id)a5;
- (void)_setupMigrationUI;
- (void)_setupView;
- (void)_showEraseDeviceAlert;
- (void)_showLeaveRemoteManagementAlert;
- (void)_updateMigrationDeadlineTimer;
- (void)_updateRemainingTimeLabelIfNeeded;
- (void)dealloc;
- (void)loadView;
- (void)setCloudConfiguration:(id)a3;
- (void)setInProgress:(BOOL)a3;
- (void)setMigrationUIConfiguration:(id)a3;
- (void)viewDidLoad;
@end

@implementation BuddyCloudConfigDisclosureViewController_new

- (BuddyCloudConfigDisclosureViewController_new)initWithMigrationUIConfiguration:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v22;
  v4 = +[NSBundle mainBundle];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"REMOTE_MANAGEMENT_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v22 = 0;
  v20.receiver = v3;
  v20.super_class = BuddyCloudConfigDisclosureViewController_new;
  v6 = [(BuddyCloudConfigDisclosureViewController_new *)&v20 initWithTitle:v5 detailText:0 symbolName:@"gear"];
  v22 = v6;
  objc_storeStrong(&v22, v6);

  if (v6)
  {
    objc_storeStrong(v22 + 6, location[0]);
    v7 = [location[0] pendingCloudConfig];

    if (v7)
    {
      v8 = [MDMCloudConfiguration alloc];
      v9 = [location[0] pendingCloudConfig];
      v10 = [v8 initWithCloudConfigDetails:v9];
      v11 = *(v22 + 3);
      *(v22 + 3) = v10;
    }

    v12 = +[OBBoldTrayButton boldButton];
    v13 = *(v22 + 8);
    *(v22 + 8) = v12;

    v14 = *(v22 + 8);
    v15 = +[NSBundle mainBundle];
    v16 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_ENROLL_BUTTON_TITLE"];
    v17 = [(NSBundle *)v15 localizedStringForKey:v16 value:&stru_10032F900 table:@"Localizable"];
    [v14 setTitle:v17 forState:0];

    [*(v22 + 8) addTarget:v22 action:"_enrollButtonTapped" forControlEvents:64];
  }

  v18 = v22;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v22, 0);
  return v18;
}

- (BuddyCloudConfigDisclosureViewController_new)init
{
  location = [(BuddyCloudConfigDisclosureViewController_new *)self initWithMigrationUIConfiguration:0, a2, 0];
  v2 = location;
  objc_storeStrong(&location, 0);
  return v2;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(NSTimer *)self->_migrationDeadlineTimer invalidate];
  v2.receiver = v4;
  v2.super_class = BuddyCloudConfigDisclosureViewController_new;
  [(BuddyCloudConfigDisclosureViewController_new *)&v2 dealloc];
}

- (void)loadView
{
  v10 = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = BuddyCloudConfigDisclosureViewController_new;
  [(BuddyCloudConfigDisclosureViewController_new *)&v8 loadView];
  v2 = [(BuddyCloudConfigDisclosureViewController_new *)v10 headerView];
  v3 = [(BuddyCloudConfigDisclosureViewController_new *)v10 _remoteManagementText];
  [v2 setDetailText:v3];

  location = +[OBHeaderAccessoryButton accessoryButton];
  v4 = +[NSBundle mainBundle];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"REMOTE_MANAGEMENT_ABOUT" value:&stru_10032F900 table:@"Localizable"];
  [location setTitle:v5 forState:0];

  [location addTarget:v10 action:"_presentAboutController" forControlEvents:0x2000];
  v6 = [(BuddyCloudConfigDisclosureViewController_new *)v10 headerView];
  [v6 addAccessoryButton:location];

  [(BuddyCloudConfigDisclosureViewController_new *)v10 _setupView];
  objc_storeStrong(&location, 0);
}

- (void)viewDidLoad
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyCloudConfigDisclosureViewController_new;
  [(BuddyCloudConfigDisclosureViewController_new *)&v3 viewDidLoad];
  location = +[NSNotificationCenter defaultCenter];
  [location addObserver:v5 selector:"_updateRemainingTimeLabelIfNeeded" name:NSCurrentLocaleDidChangeNotification object:0];
  [location addObserver:v5 selector:"_updateRemainingTimeLabelIfNeeded" name:NSSystemTimeZoneDidChangeNotification object:0];
  [location addObserver:v5 selector:"_updateRemainingTimeLabelIfNeeded" name:NSSystemClockDidChangeNotification object:0];
  objc_storeStrong(&location, 0);
}

- (void)_setupView
{
  v9 = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10023877C;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)_setupMigrationUI
{
  v2 = [(BuddyCloudConfigDisclosureViewController_new *)self migrationUIConfiguration];

  if (v2)
  {
    v3 = [(BuddyCloudConfigDisclosureViewController_new *)self migrationUIConfiguration];
    v4 = [(BuddyCloudConfigMigrationUIConfiguration *)v3 showsWiFiPickerButton];

    if (v4)
    {
      v5 = +[NSBundle mainBundle];
      v6 = SFLocalizableWAPIStringKeyForKey();
      v7 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10032F900 table:@"Localizable"];
      [(BuddyWelcomeController *)self addLinkButton:v7 action:"_migrationSelectWiFiNetworkTapped"];
    }

    v8 = [(BuddyCloudConfigDisclosureViewController_new *)self _migrationTimeUntilDeadline];

    if (v8)
    {
      v9 = +[NSBundle mainBundle];
      v10 = [(NSBundle *)v9 localizedStringForKey:@"REMOTE_MANAGEMENT_MIGRATION_NOT_NOW_BUTTON_TITLE" value:&stru_10032F900 table:@"Localizable"];
      [(BuddyWelcomeController *)self addLinkButton:v10 action:"_migrationNotNowTapped"];
    }

    [(BuddyCloudConfigDisclosureViewController_new *)self _updateMigrationDeadlineTimer];
  }
}

- (id)_migrationTimeUntilDeadline
{
  v2 = [(BuddyCloudConfigDisclosureViewController_new *)self migrationUIConfiguration];

  if (v2)
  {
    v3 = [(BuddyCloudConfigDisclosureViewController_new *)self migrationUIConfiguration];
    v4 = [(BuddyCloudConfigMigrationUIConfiguration *)v3 isMandatory];

    if (v4)
    {
      v11 = 0;
    }

    else
    {
      v5 = [(BuddyCloudConfigDisclosureViewController_new *)self migrationUIConfiguration];
      v6 = [(BuddyCloudConfigMigrationUIConfiguration *)v5 deadline];
      [(NSDate *)v6 timeIntervalSinceNow];
      v8 = v7;

      if (v8 > 0.0)
      {
        v11 = [NSNumber numberWithDouble:v8];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_updateMigrationDeadlineTimer
{
  v5 = self;
  location[1] = a2;
  v2 = [(BuddyCloudConfigDisclosureViewController_new *)self migrationDeadlineTimer];
  [(NSTimer *)v2 invalidate];

  [(BuddyCloudConfigDisclosureViewController_new *)v5 setMigrationDeadlineTimer:0];
  location[0] = [(BuddyCloudConfigDisclosureViewController_new *)v5 _migrationTimeUntilDeadline];
  if (location[0])
  {
    [location[0] doubleValue];
    v3 = [NSTimer scheduledTimerWithTimeInterval:v5 target:"_migrationDeadlineTimerDidFire:" selector:0 userInfo:0 repeats:?];
    [(BuddyCloudConfigDisclosureViewController_new *)v5 setMigrationDeadlineTimer:v3];
  }

  objc_storeStrong(location, 0);
}

- (void)_migrationDeadlineTimerDidFire:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (![(BuddyCloudConfigDisclosureViewController_new *)v4 isInProgress])
  {
    [(BuddyCloudConfigDisclosureViewController_new *)v4 _setupView];
  }

  objc_storeStrong(location, 0);
}

- (void)_updateRemainingTimeLabelIfNeeded
{
  v9 = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100238F3C;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (id)_migrationDetailText
{
  v13 = self;
  location[1] = a2;
  v2 = [(BuddyCloudConfigDisclosureViewController_new *)self _migrationTimeUntilDeadline];

  if (v2)
  {
    v5 = [(BuddyCloudConfigDisclosureViewController_new *)v13 migrationUIConfiguration];
    v6 = [(BuddyCloudConfigMigrationUIConfiguration *)v5 deadline];
    location[0] = [NSDateFormatter localizedStringFromDate:v6 dateStyle:2 timeStyle:1];

    v7 = +[NSBundle mainBundle];
    v8 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_MIGRATION_DETAIL_WITH_DEADLINE"];
    v9 = [(NSBundle *)v7 localizedStringForKey:v8 value:&stru_10032F900 table:@"Localizable"];
    v14 = [NSString localizedStringWithFormat:v9, location[0]];

    objc_storeStrong(location, 0);
  }

  else
  {
    v3 = +[NSBundle mainBundle];
    v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_MIGRATION_DETAIL"];
    v14 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];
  }

  v10 = v14;

  return v10;
}

- (id)_remoteManagementText
{
  v22 = self;
  v21[1] = a2;
  v2 = [(BuddyCloudConfigDisclosureViewController_new *)self cloudConfiguration];
  v3 = [(MDMCloudConfiguration *)v2 details];
  v21[0] = [v3 objectForKeyedSubscript:kCCOrganizationNameKey];

  v4 = +[NSBundle mainBundle];
  v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CLOUD_CONFIG_DESCRIPTION"];
  v6 = [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_10032F900 table:@"Localizable"];
  v23[0] = v6;
  v7 = v21[0];
  v18 = 0;
  v16 = 0;
  if (!v21[0])
  {
    v19 = +[NSBundle mainBundle];
    v18 = 1;
    v7 = [v19 localizedStringForKey:@"UNKNOWN" value:&stru_10032F900 table:@"Localizable"];
    v17 = v7;
    v16 = 1;
  }

  v23[1] = v7;
  location = [NSArray arrayWithObjects:v23 count:2];
  if (v16)
  {
  }

  if (v18)
  {
  }

  v15 = objc_opt_new();
  v8 = [(BuddyCloudConfigDisclosureViewController_new *)v22 migrationUIConfiguration];

  if (v8)
  {
    v9 = [(BuddyCloudConfigDisclosureViewController_new *)v22 _migrationDetailText];
    [v15 addObject:v9];

    [v15 addObject:@"\n"];
    [v15 addObjectsFromArray:location];
  }

  else
  {
    [v15 addObjectsFromArray:location];
    [v15 addObject:@"\n"];
    v10 = +[NSBundle mainBundle];
    v11 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_WHAT_DETAIL"];
    v12 = [(NSBundle *)v10 localizedStringForKey:v11 value:&stru_10032F900 table:@"Localizable"];
    [v15 addObject:v12];
  }

  v13 = [v15 componentsJoinedByString:@"\n"];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v21, 0);

  return v13;
}

- (void)_showLeaveRemoteManagementAlert
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
  v12 = sub_100239750;
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
  v11 = sub_100239A64;
  v12 = &unk_10032B928;
  objc_copyWeak(v13, location);
  [v2 _presentEraseAlertWithTitle:v5 message:v7 eraseHandler:&v8];

  objc_destroyWeak(v13);
  objc_destroyWeak(location);
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

  v9 = +[NSBundle mainBundle];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"Localizable"];
  v12 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];

  [v14 addAction:v13];
  [v14 addAction:v12];
  v11 = [(BuddyCloudConfigDisclosureViewController_new *)v18 navigationController];
  [v11 presentViewController:v14 animated:1 completion:0];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentAboutController
{
  v5 = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyCloudConfigAboutConfigurationContainerController);
  v2 = [(BuddyCloudConfigDisclosureViewController_new *)v5 cloudConfiguration];
  [location[0] setCloudConfiguration:v2];

  v3 = [[BFFNavigationController alloc] initWithRootViewController:location[0]];
  [v3 setModalPresentationStyle:2];
  [(BuddyCloudConfigDisclosureViewController_new *)v5 presentViewController:v3 animated:1 completion:0];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (void)setMigrationUIConfiguration:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v9->_migrationUIConfiguration, location[0]);
  v3 = [location[0] pendingCloudConfig];

  if (v3)
  {
    v4 = [MDMCloudConfiguration alloc];
    v5 = [location[0] pendingCloudConfig];
    v6 = [v4 initWithCloudConfigDetails:v5];
    cloudConfiguration = v9->_cloudConfiguration;
    v9->_cloudConfiguration = v6;
  }

  [(BuddyCloudConfigDisclosureViewController_new *)v9 _setupView];
  objc_storeStrong(location, 0);
}

- (void)_enrollButtonTapped
{
  [(BuddyCloudConfigDisclosureViewController_new *)self setInProgress:1, a2];
  v2 = [(BuddyCloudConfigDisclosureViewController_new *)self disclosureVCDelegate];
  [(BuddyCloudConfigDisclosureViewControllerDelegate *)v2 disclosureViewController:self didReceiveUserConsent:1];
}

- (void)_migrationNotNowTapped
{
  v2 = [(BuddyCloudConfigDisclosureViewController_new *)self disclosureVCDelegate];
  [(BuddyCloudConfigDisclosureViewControllerDelegate *)v2 disclosureViewController:self didReceiveUserConsent:0];
}

- (void)_migrationSelectWiFiNetworkTapped
{
  v2 = [(BuddyCloudConfigDisclosureViewController_new *)self disclosureVCDelegate];
  [(BuddyCloudConfigDisclosureViewControllerDelegate *)v2 disclosureViewControllerWantsToShowWiFiPicker:self];
}

- (void)setInProgress:(BOOL)a3
{
  if (self->_inProgress != a3)
  {
    self->_inProgress = a3;
    if (a3)
    {
      [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:self identifier:@"Disclosure"];
    }

    else
    {
      [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Disclosure"];
    }
  }
}

- (id)alertControllerForError:(id)a3 dismissAction:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v5 = +[NSBundle mainBundle];
  v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CLOUD_CONFIG_ERROR_FAILED_RETRIEVE_ENTERPRISE_CONFIG_SHORT"];
  v7 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10032F900 table:@"Localizable"];
  v8 = [(BuddyCloudConfigDisclosureViewController_new *)v18 cloudConfiguration];
  v9 = [(MDMCloudConfiguration *)v8 details];
  v10 = [v9 objectForKeyedSubscript:kCCOrganizationNameKey];
  v15 = [NSString localizedStringWithFormat:v7, v10];

  v11 = [location[0] localizedDescription];
  v14 = [UIAlertController alertControllerWithTitle:v15 message:v11 preferredStyle:1];

  [v14 addAction:v16];
  v12 = v14;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v12;
}

- (BuddyCloudConfigDisclosureViewControllerDelegate)disclosureVCDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_disclosureVCDelegate);

  return WeakRetained;
}

- (MDMCloudConfiguration)cloudConfiguration
{
  if (self->_cloudConfiguration)
  {
    v3 = self->_cloudConfiguration;
  }

  else
  {
    v3 = +[MDMCloudConfiguration sharedConfiguration];
  }

  return v3;
}

- (void)setCloudConfiguration:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_cloudConfiguration, location[0]);
  [(BuddyCloudConfigDisclosureViewController_new *)v4 _setupView];
  objc_storeStrong(location, 0);
}

@end