@interface BuddyMigrationSourceFinished
- (BuddyMigrationSourceFinished)init;
- (void)continueTapped:(id)a3;
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
  v26 = self;
  v25 = a2;
  v24.receiver = self;
  v24.super_class = BuddyMigrationSourceFinished;
  [(BuddyMigrationSourceFinished *)&v24 viewDidLoad];
  v2 = [(BuddyMigrationSourceFinished *)v26 headerView];
  [v2 setIconInheritsTint:1];

  v3 = [(BuddyMigrationSourceFinished *)v26 navigationItem];
  [v3 setHidesBackButton:1];

  v23 = 0;
  location = 0;
  if (v26->_buddyMigrationSourceFinishedStringProvider)
  {
    v4 = [(BuddyMigrationSourceFinishedStringProvider *)v26->_buddyMigrationSourceFinishedStringProvider detailText];
    v5 = v23;
    v23 = v4;

    v6 = [(BuddyMigrationSourceFinishedStringProvider *)v26->_buddyMigrationSourceFinishedStringProvider buttonText];
    v7 = location;
    location = v6;
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
    v21 = [(BuddyMigrationSourceFinished *)v26 internalStatistics];
    v20 = 1;
    v15 = v21 != 0;
  }

  if (v20)
  {
  }

  if (v15)
  {
    v16 = [(BuddyMigrationSourceFinished *)v26 internalStatistics];
    v17 = [NSString stringWithFormat:@"%@\n\n%@", v23, v16];
    v18 = v23;
    v23 = v17;
  }

  v19 = [(BuddyMigrationSourceFinished *)v26 headerView];
  [v19 setDetailText:v23];

  [(BuddyWelcomeController *)v26 addBoldButton:location action:"continueTapped:"];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v23, 0);
}

- (void)continueTapped:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMigrationSourceFinished *)v7 miscState];
  v4 = [(BuddyMiscState *)v3 migrationLockscreenController];
  [(BuddyMigrationLockscreenController *)v4 deactivate];

  v5 = [(BuddyWelcomeController *)v7 delegate];
  [(BFFFlowItemDelegate *)v5 flowItemDone:v7];

  objc_storeStrong(location, 0);
}

@end