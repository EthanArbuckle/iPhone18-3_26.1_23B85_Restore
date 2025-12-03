@interface BuddyCloudConfigDisclosureViewController_new
- (BuddyCloudConfigDisclosureViewControllerDelegate)disclosureVCDelegate;
- (BuddyCloudConfigDisclosureViewController_new)init;
- (BuddyCloudConfigDisclosureViewController_new)initWithMigrationUIConfiguration:(id)configuration;
- (MDMCloudConfiguration)cloudConfiguration;
- (id)_migrationDetailText;
- (id)_migrationTimeUntilDeadline;
- (id)_remoteManagementText;
- (id)alertControllerForError:(id)error dismissAction:(id)action;
- (void)_enrollButtonTapped;
- (void)_migrationDeadlineTimerDidFire:(id)fire;
- (void)_migrationNotNowTapped;
- (void)_migrationSelectWiFiNetworkTapped;
- (void)_presentAboutController;
- (void)_presentEraseAlertWithTitle:(id)title message:(id)message eraseHandler:(id)handler;
- (void)_setupMigrationUI;
- (void)_setupView;
- (void)_showEraseDeviceAlert;
- (void)_showLeaveRemoteManagementAlert;
- (void)_updateMigrationDeadlineTimer;
- (void)_updateRemainingTimeLabelIfNeeded;
- (void)dealloc;
- (void)loadView;
- (void)setCloudConfiguration:(id)configuration;
- (void)setInProgress:(BOOL)progress;
- (void)setMigrationUIConfiguration:(id)configuration;
- (void)viewDidLoad;
@end

@implementation BuddyCloudConfigDisclosureViewController_new

- (BuddyCloudConfigDisclosureViewController_new)initWithMigrationUIConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v3 = selfCopy;
  v4 = +[NSBundle mainBundle];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"REMOTE_MANAGEMENT_TITLE" value:&stru_10032F900 table:@"Localizable"];
  selfCopy = 0;
  v20.receiver = v3;
  v20.super_class = BuddyCloudConfigDisclosureViewController_new;
  v6 = [(BuddyCloudConfigDisclosureViewController_new *)&v20 initWithTitle:v5 detailText:0 symbolName:@"gear"];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);

  if (v6)
  {
    objc_storeStrong(selfCopy + 6, location[0]);
    pendingCloudConfig = [location[0] pendingCloudConfig];

    if (pendingCloudConfig)
    {
      v8 = [MDMCloudConfiguration alloc];
      pendingCloudConfig2 = [location[0] pendingCloudConfig];
      v10 = [v8 initWithCloudConfigDetails:pendingCloudConfig2];
      v11 = *(selfCopy + 3);
      *(selfCopy + 3) = v10;
    }

    v12 = +[OBBoldTrayButton boldButton];
    v13 = *(selfCopy + 8);
    *(selfCopy + 8) = v12;

    v14 = *(selfCopy + 8);
    v15 = +[NSBundle mainBundle];
    v16 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_ENROLL_BUTTON_TITLE"];
    v17 = [(NSBundle *)v15 localizedStringForKey:v16 value:&stru_10032F900 table:@"Localizable"];
    [v14 setTitle:v17 forState:0];

    [*(selfCopy + 8) addTarget:selfCopy action:"_enrollButtonTapped" forControlEvents:64];
  }

  v18 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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
  selfCopy = self;
  v3 = a2;
  [(NSTimer *)self->_migrationDeadlineTimer invalidate];
  v2.receiver = selfCopy;
  v2.super_class = BuddyCloudConfigDisclosureViewController_new;
  [(BuddyCloudConfigDisclosureViewController_new *)&v2 dealloc];
}

- (void)loadView
{
  selfCopy = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = BuddyCloudConfigDisclosureViewController_new;
  [(BuddyCloudConfigDisclosureViewController_new *)&v8 loadView];
  headerView = [(BuddyCloudConfigDisclosureViewController_new *)selfCopy headerView];
  _remoteManagementText = [(BuddyCloudConfigDisclosureViewController_new *)selfCopy _remoteManagementText];
  [headerView setDetailText:_remoteManagementText];

  location = +[OBHeaderAccessoryButton accessoryButton];
  v4 = +[NSBundle mainBundle];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"REMOTE_MANAGEMENT_ABOUT" value:&stru_10032F900 table:@"Localizable"];
  [location setTitle:v5 forState:0];

  [location addTarget:selfCopy action:"_presentAboutController" forControlEvents:0x2000];
  headerView2 = [(BuddyCloudConfigDisclosureViewController_new *)selfCopy headerView];
  [headerView2 addAccessoryButton:location];

  [(BuddyCloudConfigDisclosureViewController_new *)selfCopy _setupView];
  objc_storeStrong(&location, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyCloudConfigDisclosureViewController_new;
  [(BuddyCloudConfigDisclosureViewController_new *)&v3 viewDidLoad];
  location = +[NSNotificationCenter defaultCenter];
  [location addObserver:selfCopy selector:"_updateRemainingTimeLabelIfNeeded" name:NSCurrentLocaleDidChangeNotification object:0];
  [location addObserver:selfCopy selector:"_updateRemainingTimeLabelIfNeeded" name:NSSystemTimeZoneDidChangeNotification object:0];
  [location addObserver:selfCopy selector:"_updateRemainingTimeLabelIfNeeded" name:NSSystemClockDidChangeNotification object:0];
  objc_storeStrong(&location, 0);
}

- (void)_setupView
{
  selfCopy = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10023877C;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)_setupMigrationUI
{
  migrationUIConfiguration = [(BuddyCloudConfigDisclosureViewController_new *)self migrationUIConfiguration];

  if (migrationUIConfiguration)
  {
    migrationUIConfiguration2 = [(BuddyCloudConfigDisclosureViewController_new *)self migrationUIConfiguration];
    showsWiFiPickerButton = [(BuddyCloudConfigMigrationUIConfiguration *)migrationUIConfiguration2 showsWiFiPickerButton];

    if (showsWiFiPickerButton)
    {
      v5 = +[NSBundle mainBundle];
      v6 = SFLocalizableWAPIStringKeyForKey();
      v7 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10032F900 table:@"Localizable"];
      [(BuddyWelcomeController *)self addLinkButton:v7 action:"_migrationSelectWiFiNetworkTapped"];
    }

    _migrationTimeUntilDeadline = [(BuddyCloudConfigDisclosureViewController_new *)self _migrationTimeUntilDeadline];

    if (_migrationTimeUntilDeadline)
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
  migrationUIConfiguration = [(BuddyCloudConfigDisclosureViewController_new *)self migrationUIConfiguration];

  if (migrationUIConfiguration)
  {
    migrationUIConfiguration2 = [(BuddyCloudConfigDisclosureViewController_new *)self migrationUIConfiguration];
    isMandatory = [(BuddyCloudConfigMigrationUIConfiguration *)migrationUIConfiguration2 isMandatory];

    if (isMandatory)
    {
      v11 = 0;
    }

    else
    {
      migrationUIConfiguration3 = [(BuddyCloudConfigDisclosureViewController_new *)self migrationUIConfiguration];
      deadline = [(BuddyCloudConfigMigrationUIConfiguration *)migrationUIConfiguration3 deadline];
      [(NSDate *)deadline timeIntervalSinceNow];
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
  selfCopy = self;
  location[1] = a2;
  migrationDeadlineTimer = [(BuddyCloudConfigDisclosureViewController_new *)self migrationDeadlineTimer];
  [(NSTimer *)migrationDeadlineTimer invalidate];

  [(BuddyCloudConfigDisclosureViewController_new *)selfCopy setMigrationDeadlineTimer:0];
  location[0] = [(BuddyCloudConfigDisclosureViewController_new *)selfCopy _migrationTimeUntilDeadline];
  if (location[0])
  {
    [location[0] doubleValue];
    v3 = [NSTimer scheduledTimerWithTimeInterval:selfCopy target:"_migrationDeadlineTimerDidFire:" selector:0 userInfo:0 repeats:?];
    [(BuddyCloudConfigDisclosureViewController_new *)selfCopy setMigrationDeadlineTimer:v3];
  }

  objc_storeStrong(location, 0);
}

- (void)_migrationDeadlineTimerDidFire:(id)fire
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fire);
  if (![(BuddyCloudConfigDisclosureViewController_new *)selfCopy isInProgress])
  {
    [(BuddyCloudConfigDisclosureViewController_new *)selfCopy _setupView];
  }

  objc_storeStrong(location, 0);
}

- (void)_updateRemainingTimeLabelIfNeeded
{
  selfCopy = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100238F3C;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (id)_migrationDetailText
{
  selfCopy = self;
  location[1] = a2;
  _migrationTimeUntilDeadline = [(BuddyCloudConfigDisclosureViewController_new *)self _migrationTimeUntilDeadline];

  if (_migrationTimeUntilDeadline)
  {
    migrationUIConfiguration = [(BuddyCloudConfigDisclosureViewController_new *)selfCopy migrationUIConfiguration];
    deadline = [(BuddyCloudConfigMigrationUIConfiguration *)migrationUIConfiguration deadline];
    location[0] = [NSDateFormatter localizedStringFromDate:deadline dateStyle:2 timeStyle:1];

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
  selfCopy = self;
  v21[1] = a2;
  cloudConfiguration = [(BuddyCloudConfigDisclosureViewController_new *)self cloudConfiguration];
  details = [(MDMCloudConfiguration *)cloudConfiguration details];
  v21[0] = [details objectForKeyedSubscript:kCCOrganizationNameKey];

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
  migrationUIConfiguration = [(BuddyCloudConfigDisclosureViewController_new *)selfCopy migrationUIConfiguration];

  if (migrationUIConfiguration)
  {
    _migrationDetailText = [(BuddyCloudConfigDisclosureViewController_new *)selfCopy _migrationDetailText];
    [v15 addObject:_migrationDetailText];

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

  v9 = +[NSBundle mainBundle];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"Localizable"];
  v12 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];

  [v14 addAction:v13];
  [v14 addAction:v12];
  navigationController = [(BuddyCloudConfigDisclosureViewController_new *)selfCopy navigationController];
  [navigationController presentViewController:v14 animated:1 completion:0];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentAboutController
{
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyCloudConfigAboutConfigurationContainerController);
  cloudConfiguration = [(BuddyCloudConfigDisclosureViewController_new *)selfCopy cloudConfiguration];
  [location[0] setCloudConfiguration:cloudConfiguration];

  v3 = [[BFFNavigationController alloc] initWithRootViewController:location[0]];
  [v3 setModalPresentationStyle:2];
  [(BuddyCloudConfigDisclosureViewController_new *)selfCopy presentViewController:v3 animated:1 completion:0];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (void)setMigrationUIConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  objc_storeStrong(&selfCopy->_migrationUIConfiguration, location[0]);
  pendingCloudConfig = [location[0] pendingCloudConfig];

  if (pendingCloudConfig)
  {
    v4 = [MDMCloudConfiguration alloc];
    pendingCloudConfig2 = [location[0] pendingCloudConfig];
    v6 = [v4 initWithCloudConfigDetails:pendingCloudConfig2];
    cloudConfiguration = selfCopy->_cloudConfiguration;
    selfCopy->_cloudConfiguration = v6;
  }

  [(BuddyCloudConfigDisclosureViewController_new *)selfCopy _setupView];
  objc_storeStrong(location, 0);
}

- (void)_enrollButtonTapped
{
  [(BuddyCloudConfigDisclosureViewController_new *)self setInProgress:1, a2];
  disclosureVCDelegate = [(BuddyCloudConfigDisclosureViewController_new *)self disclosureVCDelegate];
  [(BuddyCloudConfigDisclosureViewControllerDelegate *)disclosureVCDelegate disclosureViewController:self didReceiveUserConsent:1];
}

- (void)_migrationNotNowTapped
{
  disclosureVCDelegate = [(BuddyCloudConfigDisclosureViewController_new *)self disclosureVCDelegate];
  [(BuddyCloudConfigDisclosureViewControllerDelegate *)disclosureVCDelegate disclosureViewController:self didReceiveUserConsent:0];
}

- (void)_migrationSelectWiFiNetworkTapped
{
  disclosureVCDelegate = [(BuddyCloudConfigDisclosureViewController_new *)self disclosureVCDelegate];
  [(BuddyCloudConfigDisclosureViewControllerDelegate *)disclosureVCDelegate disclosureViewControllerWantsToShowWiFiPicker:self];
}

- (void)setInProgress:(BOOL)progress
{
  if (self->_inProgress != progress)
  {
    self->_inProgress = progress;
    if (progress)
    {
      [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:self identifier:@"Disclosure"];
    }

    else
    {
      [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Disclosure"];
    }
  }
}

- (id)alertControllerForError:(id)error dismissAction:(id)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v16 = 0;
  objc_storeStrong(&v16, action);
  v5 = +[NSBundle mainBundle];
  v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CLOUD_CONFIG_ERROR_FAILED_RETRIEVE_ENTERPRISE_CONFIG_SHORT"];
  v7 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10032F900 table:@"Localizable"];
  cloudConfiguration = [(BuddyCloudConfigDisclosureViewController_new *)selfCopy cloudConfiguration];
  details = [(MDMCloudConfiguration *)cloudConfiguration details];
  v10 = [details objectForKeyedSubscript:kCCOrganizationNameKey];
  v15 = [NSString localizedStringWithFormat:v7, v10];

  localizedDescription = [location[0] localizedDescription];
  v14 = [UIAlertController alertControllerWithTitle:v15 message:localizedDescription preferredStyle:1];

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

- (void)setCloudConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  objc_storeStrong(&selfCopy->_cloudConfiguration, location[0]);
  [(BuddyCloudConfigDisclosureViewController_new *)selfCopy _setupView];
  objc_storeStrong(location, 0);
}

@end