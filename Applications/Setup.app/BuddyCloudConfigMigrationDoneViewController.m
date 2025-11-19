@interface BuddyCloudConfigMigrationDoneViewController
- (BuddyCloudConfigMigrationDoneViewController)init;
- (BuddyCloudConfigMigrationDoneViewControllerDelegate)migrationDoneVCDelegate;
- (void)exitButtonTapped;
- (void)loadView;
@end

@implementation BuddyCloudConfigMigrationDoneViewController

- (BuddyCloudConfigMigrationDoneViewController)init
{
  v11 = self;
  v10[1] = a2;
  v10[0] = [UIImage systemImageNamed:@"checkmark.circle"];
  v2 = +[UIColor systemGreenColor];
  location = [v10[0] imageWithTintColor:v2 renderingMode:1];

  v3 = v11;
  v4 = +[NSBundle mainBundle];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"REMOTE_MANAGEMENT_MIGRATION_STATUS_COMPLETE" value:&stru_10032F900 table:@"Localizable"];
  v11 = 0;
  v8.receiver = v3;
  v8.super_class = BuddyCloudConfigMigrationDoneViewController;
  v11 = [(BuddyCloudConfigMigrationDoneViewController *)&v8 initWithTitle:v5 detailText:0 icon:location];
  v6 = v11;

  objc_storeStrong(&location, 0);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (void)loadView
{
  v12 = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = BuddyCloudConfigMigrationDoneViewController;
  [(BuddyCloudConfigMigrationDoneViewController *)&v10 loadView];
  v2 = [(BuddyCloudConfigMigrationDoneViewController *)v12 navigationItem];
  [v2 setHidesBackButton:1];

  v3 = +[OBBoldTrayButton boldButton];
  [(BuddyCloudConfigMigrationDoneViewController *)v12 setExitButton:v3];

  v4 = [(BuddyCloudConfigMigrationDoneViewController *)v12 exitButton];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"REMOTE_MANAGEMENT_MIGRATION_EXIT_BUTTON_TITLE" value:&stru_10032F900 table:@"Localizable"];
  [(OBBoldTrayButton *)v4 setTitle:v6 forState:0];

  v7 = [(BuddyCloudConfigMigrationDoneViewController *)v12 exitButton];
  [(OBBoldTrayButton *)v7 addTarget:v12 action:"exitButtonTapped" forControlEvents:64];

  v8 = [(BuddyCloudConfigMigrationDoneViewController *)v12 buttonTray];
  v9 = [(BuddyCloudConfigMigrationDoneViewController *)v12 exitButton];
  [v8 addButton:v9];
}

- (void)exitButtonTapped
{
  v2 = [(BuddyCloudConfigMigrationDoneViewController *)self migrationDoneVCDelegate];
  [(BuddyCloudConfigMigrationDoneViewControllerDelegate *)v2 migrationDoneViewControllerWantsToExitBuddy:self];
}

- (BuddyCloudConfigMigrationDoneViewControllerDelegate)migrationDoneVCDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_migrationDoneVCDelegate);

  return WeakRetained;
}

@end