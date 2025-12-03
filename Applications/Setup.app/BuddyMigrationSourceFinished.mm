@interface BuddyMigrationSourceFinished
- (BuddyMigrationSourceFinished)init;
- (void)continueTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation BuddyMigrationSourceFinished

- (BuddyMigrationSourceFinished)init
{
  v9 = a2;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"MIGRATION_SOURCE_TRANSFER_COMPLETE_TITLE" value:&stru_10032F900 table:@"Migration"];
  v5 = [UIImage imageNamed:@"Checkmark"];
  location = 0;
  v8.receiver = self;
  v8.super_class = BuddyMigrationSourceFinished;
  location = [(BuddyMigrationSourceFinished *)&v8 initWithTitle:v4 detailText:&stru_10032F900 icon:v5];
  objc_storeStrong(&location, location);

  v6 = location;
  objc_storeStrong(&location, 0);
  return v6;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v25 = a2;
  v24.receiver = self;
  v24.super_class = BuddyMigrationSourceFinished;
  [(BuddyMigrationSourceFinished *)&v24 viewDidLoad];
  headerView = [(BuddyMigrationSourceFinished *)selfCopy headerView];
  [headerView setIconInheritsTint:1];

  navigationItem = [(BuddyMigrationSourceFinished *)selfCopy navigationItem];
  [navigationItem setHidesBackButton:1];

  v23 = 0;
  location = 0;
  if (selfCopy->_buddyMigrationSourceFinishedStringProvider)
  {
    detailText = [(BuddyMigrationSourceFinishedStringProvider *)selfCopy->_buddyMigrationSourceFinishedStringProvider detailText];
    v5 = v23;
    v23 = detailText;

    buttonText = [(BuddyMigrationSourceFinishedStringProvider *)selfCopy->_buddyMigrationSourceFinishedStringProvider buttonText];
    v7 = location;
    location = buttonText;
  }

  else
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MIGRATION_SOURCE_TRANSFER_COMPLETE_WITHOUT_SIM_DETAIL_TEXT"];
    v10 = [(NSBundle *)v8 localizedStringForKey:v9 value:&stru_10032F900 table:@"Migration"];
    v11 = v23;
    v23 = v10;

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [(NSBundle *)v12 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Migration"];
    v14 = location;
    location = v13;
  }

  v20 = 0;
  v15 = 0;
  if (os_variant_has_internal_ui())
  {
    internalStatistics = [(BuddyMigrationSourceFinished *)selfCopy internalStatistics];
    v20 = 1;
    v15 = internalStatistics != 0;
  }

  if (v20)
  {
  }

  if (v15)
  {
    internalStatistics2 = [(BuddyMigrationSourceFinished *)selfCopy internalStatistics];
    v17 = [NSString stringWithFormat:@"%@\n\n%@", v23, internalStatistics2];
    v18 = v23;
    v23 = v17;
  }

  headerView2 = [(BuddyMigrationSourceFinished *)selfCopy headerView];
  [headerView2 setDetailText:v23];

  [(BuddyWelcomeController *)selfCopy addBoldButton:location action:"continueTapped:"];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v23, 0);
}

- (void)continueTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  miscState = [(BuddyMigrationSourceFinished *)selfCopy miscState];
  migrationLockscreenController = [(BuddyMiscState *)miscState migrationLockscreenController];
  [(BuddyMigrationLockscreenController *)migrationLockscreenController deactivate];

  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

@end