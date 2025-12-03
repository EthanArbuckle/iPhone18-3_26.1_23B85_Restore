@interface BuddyMigrationLockscreenFinishedController
- (BuddyMigrationLockscreenFinishedController)init;
- (BuddyMigrationLockscreenFinishedController)initWithStringProvider:(id)provider;
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

- (BuddyMigrationLockscreenFinishedController)initWithStringProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [(NSBundle *)v3 localizedStringForKey:@"MIGRATION_SOURCE_TRANSFER_COMPLETE_TITLE" value:&stru_10032F900 table:@"Migration"];

  detailText = [location[0] detailText];
  v4 = selfCopy;
  v5 = [UIImage imageNamed:@"Checkmark"];
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = BuddyMigrationLockscreenFinishedController;
  selfCopy = [(BuddyMigrationLockscreenFinishedController *)&v8 initWithTitle:v10 detailText:detailText icon:v5];
  objc_storeStrong(&selfCopy, selfCopy);

  v6 = selfCopy;
  objc_storeStrong(&detailText, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = BuddyMigrationLockscreenFinishedController;
  [(BuddyMigrationLockscreenFinishedController *)&v4 viewDidLoad];
  headerView = [(BuddyMigrationLockscreenFinishedController *)selfCopy headerView];
  [headerView setIconInheritsTint:1];

  navigationItem = [(BuddyMigrationLockscreenFinishedController *)selfCopy navigationItem];
  [navigationItem setHidesBackButton:1];
}

@end