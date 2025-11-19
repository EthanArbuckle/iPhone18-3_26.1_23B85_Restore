@interface BuddyMigrationSourceErrorController
- (BuddyMigrationSourceErrorController)initWithError:(id)a3;
- (id)initForInsufficientSpace;
- (void)continueTapped:(id)a3;
- (void)loadView;
@end

@implementation BuddyMigrationSourceErrorController

- (BuddyMigrationSourceErrorController)initWithError:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = BuddyMigrationSourceErrorController;
  v8 = [(BuddyMigrationBaseErrorController *)&v6 initWithError:location[0]];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    *(v8 + 24) = 1;
  }

  v4 = v8;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v4;
}

- (id)initForInsufficientSpace
{
  v5 = a2;
  location = 0;
  v4.receiver = self;
  v4.super_class = BuddyMigrationSourceErrorController;
  location = [(BuddyMigrationBaseErrorController *)&v4 initForInsufficientSpace];
  objc_storeStrong(&location, location);
  if (location)
  {
    *(location + 24) = 1;
  }

  v2 = location;
  objc_storeStrong(&location, 0);
  return v2;
}

- (void)loadView
{
  v13 = self;
  v12 = a2;
  v11.receiver = self;
  v11.super_class = BuddyMigrationSourceErrorController;
  [(BuddyMigrationSourceErrorController *)&v11 loadView];
  v2 = [(BuddyMigrationSourceErrorController *)v13 headerView];
  v3 = [(BuddyMigrationBaseErrorController *)v13 error];
  v4 = [BuddyMigrationError titleForError:v3];
  [v2 setTitle:v4];

  v5 = [(BuddyMigrationSourceErrorController *)v13 headerView];
  v6 = [(BuddyMigrationBaseErrorController *)v13 error];
  v7 = [BuddyMigrationError detailTextForErrorOnSource:v6];
  [v5 setDetailText:v7];

  if ([(BuddyMigrationSourceErrorController *)v13 allowInteraction])
  {
    v8 = v13;
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [(NSBundle *)v9 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Migration"];
    [(BuddyWelcomeController *)v8 addBoldButton:v10 action:"continueTapped:"];
  }
}

- (void)continueTapped:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMigrationSourceErrorController *)v7 miscState];
  v4 = [(BuddyMiscState *)v3 migrationLockscreenController];
  [(BuddyMigrationLockscreenController *)v4 deactivate];

  v5 = [(BuddyWelcomeController *)v7 delegate];
  [(BFFFlowItemDelegate *)v5 flowItemDone:v7];

  objc_storeStrong(location, 0);
}

@end