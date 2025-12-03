@interface BuddyCloudConfigMigrationDoneViewController
- (BuddyCloudConfigMigrationDoneViewController)init;
- (BuddyCloudConfigMigrationDoneViewControllerDelegate)migrationDoneVCDelegate;
- (void)exitButtonTapped;
- (void)loadView;
@end

@implementation BuddyCloudConfigMigrationDoneViewController

- (BuddyCloudConfigMigrationDoneViewController)init
{
  selfCopy = self;
  v10[1] = a2;
  v10[0] = [UIImage systemImageNamed:@"checkmark.circle"];
  v2 = +[UIColor systemGreenColor];
  location = [v10[0] imageWithTintColor:v2 renderingMode:1];

  v3 = selfCopy;
  v4 = +[NSBundle mainBundle];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"REMOTE_MANAGEMENT_MIGRATION_STATUS_COMPLETE" value:&stru_10032F900 table:@"Localizable"];
  selfCopy = 0;
  v8.receiver = v3;
  v8.super_class = BuddyCloudConfigMigrationDoneViewController;
  selfCopy = [(BuddyCloudConfigMigrationDoneViewController *)&v8 initWithTitle:v5 detailText:0 icon:location];
  v6 = selfCopy;

  objc_storeStrong(&location, 0);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)loadView
{
  selfCopy = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = BuddyCloudConfigMigrationDoneViewController;
  [(BuddyCloudConfigMigrationDoneViewController *)&v10 loadView];
  navigationItem = [(BuddyCloudConfigMigrationDoneViewController *)selfCopy navigationItem];
  [navigationItem setHidesBackButton:1];

  v3 = +[OBBoldTrayButton boldButton];
  [(BuddyCloudConfigMigrationDoneViewController *)selfCopy setExitButton:v3];

  exitButton = [(BuddyCloudConfigMigrationDoneViewController *)selfCopy exitButton];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"REMOTE_MANAGEMENT_MIGRATION_EXIT_BUTTON_TITLE" value:&stru_10032F900 table:@"Localizable"];
  [(OBBoldTrayButton *)exitButton setTitle:v6 forState:0];

  exitButton2 = [(BuddyCloudConfigMigrationDoneViewController *)selfCopy exitButton];
  [(OBBoldTrayButton *)exitButton2 addTarget:selfCopy action:"exitButtonTapped" forControlEvents:64];

  buttonTray = [(BuddyCloudConfigMigrationDoneViewController *)selfCopy buttonTray];
  exitButton3 = [(BuddyCloudConfigMigrationDoneViewController *)selfCopy exitButton];
  [buttonTray addButton:exitButton3];
}

- (void)exitButtonTapped
{
  migrationDoneVCDelegate = [(BuddyCloudConfigMigrationDoneViewController *)self migrationDoneVCDelegate];
  [(BuddyCloudConfigMigrationDoneViewControllerDelegate *)migrationDoneVCDelegate migrationDoneViewControllerWantsToExitBuddy:self];
}

- (BuddyCloudConfigMigrationDoneViewControllerDelegate)migrationDoneVCDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_migrationDoneVCDelegate);

  return WeakRetained;
}

@end