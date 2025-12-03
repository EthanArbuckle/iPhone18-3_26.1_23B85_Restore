@interface BuddyMigrationSourceErrorController
- (BuddyMigrationSourceErrorController)initWithError:(id)error;
- (id)initForInsufficientSpace;
- (void)continueTapped:(id)tapped;
- (void)loadView;
@end

@implementation BuddyMigrationSourceErrorController

- (BuddyMigrationSourceErrorController)initWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = BuddyMigrationSourceErrorController;
  selfCopy = [(BuddyMigrationBaseErrorController *)&v6 initWithError:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    *(selfCopy + 24) = 1;
  }

  v4 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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
  selfCopy = self;
  v12 = a2;
  v11.receiver = self;
  v11.super_class = BuddyMigrationSourceErrorController;
  [(BuddyMigrationSourceErrorController *)&v11 loadView];
  headerView = [(BuddyMigrationSourceErrorController *)selfCopy headerView];
  error = [(BuddyMigrationBaseErrorController *)selfCopy error];
  v4 = [BuddyMigrationError titleForError:error];
  [headerView setTitle:v4];

  headerView2 = [(BuddyMigrationSourceErrorController *)selfCopy headerView];
  error2 = [(BuddyMigrationBaseErrorController *)selfCopy error];
  v7 = [BuddyMigrationError detailTextForErrorOnSource:error2];
  [headerView2 setDetailText:v7];

  if ([(BuddyMigrationSourceErrorController *)selfCopy allowInteraction])
  {
    v8 = selfCopy;
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [(NSBundle *)v9 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Migration"];
    [(BuddyWelcomeController *)v8 addBoldButton:v10 action:"continueTapped:"];
  }
}

- (void)continueTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  miscState = [(BuddyMigrationSourceErrorController *)selfCopy miscState];
  migrationLockscreenController = [(BuddyMiscState *)miscState migrationLockscreenController];
  [(BuddyMigrationLockscreenController *)migrationLockscreenController deactivate];

  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

@end