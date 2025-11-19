@interface BuddyMigrationLockscreenFinishedController
- (BuddyMigrationLockscreenFinishedController)init;
- (BuddyMigrationLockscreenFinishedController)initWithStringProvider:(id)a3;
- (void)viewDidLoad;
@end

@implementation BuddyMigrationLockscreenFinishedController

- (BuddyMigrationLockscreenFinishedController)init
{
  location = self;
  v11[1] = a2;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v11[0] = [(NSBundle *)v2 localizedStringForKey:@"MIGRATION_SOURCE_TRANSFER_COMPLETE_TITLE" value:&stru_10032F900 table:@"Migration"];

  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MIGRATION_SOURCE_TRANSFER_COMPLETE_WITHOUT_SIM_DETAIL_TEXT"];
  v10 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Migration"];

  v5 = location;
  v6 = [UIImage imageNamed:@"Checkmark"];
  location = 0;
  v9.receiver = v5;
  v9.super_class = BuddyMigrationLockscreenFinishedController;
  location = [(BuddyMigrationLockscreenFinishedController *)&v9 initWithTitle:v11[0] detailText:v10 icon:v6];
  objc_storeStrong(&location, location);

  v7 = location;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&location, 0);
  return v7;
}

- (BuddyMigrationLockscreenFinishedController)initWithStringProvider:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [(NSBundle *)v3 localizedStringForKey:@"MIGRATION_SOURCE_TRANSFER_COMPLETE_TITLE" value:&stru_10032F900 table:@"Migration"];

  v9 = [location[0] detailText];
  v4 = v12;
  v5 = [UIImage imageNamed:@"Checkmark"];
  v12 = 0;
  v8.receiver = v4;
  v8.super_class = BuddyMigrationLockscreenFinishedController;
  v12 = [(BuddyMigrationLockscreenFinishedController *)&v8 initWithTitle:v10 detailText:v9 icon:v5];
  objc_storeStrong(&v12, v12);

  v6 = v12;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (void)viewDidLoad
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = BuddyMigrationLockscreenFinishedController;
  [(BuddyMigrationLockscreenFinishedController *)&v4 viewDidLoad];
  v2 = [(BuddyMigrationLockscreenFinishedController *)v6 headerView];
  [v2 setIconInheritsTint:1];

  v3 = [(BuddyMigrationLockscreenFinishedController *)v6 navigationItem];
  [v3 setHidesBackButton:1];
}

@end