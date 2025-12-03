@interface BuddyMigrationTargetErrorController
- (BuddyMigrationTargetErrorController)initWithError:(id)error;
- (id)initForInsufficientSpace;
- (void)loadView;
- (void)resetTapped:(id)tapped;
- (void)startOverTapped:(id)tapped;
@end

@implementation BuddyMigrationTargetErrorController

- (BuddyMigrationTargetErrorController)initWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = BuddyMigrationTargetErrorController;
  selfCopy = [(BuddyMigrationBaseErrorController *)&v6 initWithError:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    *(selfCopy + 25) = 1;
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
  v4.super_class = BuddyMigrationTargetErrorController;
  location = [(BuddyMigrationBaseErrorController *)&v4 initForInsufficientSpace];
  objc_storeStrong(&location, location);
  if (location)
  {
    *(location + 25) = 1;
  }

  v2 = location;
  objc_storeStrong(&location, 0);
  return v2;
}

- (void)loadView
{
  selfCopy = self;
  v13 = a2;
  v12.receiver = self;
  v12.super_class = BuddyMigrationTargetErrorController;
  [(BuddyMigrationTargetErrorController *)&v12 loadView];
  headerView = [(BuddyMigrationTargetErrorController *)selfCopy headerView];
  error = [(BuddyMigrationBaseErrorController *)selfCopy error];
  v4 = [BuddyMigrationError titleForError:error];
  [headerView setTitle:v4];

  headerView2 = [(BuddyMigrationTargetErrorController *)selfCopy headerView];
  error2 = [(BuddyMigrationBaseErrorController *)selfCopy error];
  v7 = [BuddyMigrationError detailTextForErrorOnTarget:error2 requiresErase:[(BuddyMigrationTargetErrorController *)selfCopy forceErase]];
  [headerView2 setDetailText:v7];

  if ([(BuddyMigrationTargetErrorController *)selfCopy allowInteraction])
  {
    if ([(BuddyMigrationTargetErrorController *)selfCopy forceErase])
    {
      v8 = selfCopy;
      v9 = +[NSBundle mainBundle];
      v10 = [(NSBundle *)v9 localizedStringForKey:@"RESET" value:&stru_10032F900 table:@"Localizable"];
      [(BuddyWelcomeController *)v8 addBoldButton:v10 action:"resetTapped:"];
    }

    else
    {
      v11 = selfCopy;
      v9 = +[NSBundle mainBundle];
      v10 = [(NSBundle *)v9 localizedStringForKey:@"MIGRATION_ERROR_SET_UP_MANUALLY" value:&stru_10032F900 table:@"Migration"];
      [(BuddyWelcomeController *)v11 addBoldButton:v10 action:"startOverTapped:"];
    }
  }
}

- (void)resetTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  miscState = [(BuddyMigrationTargetErrorController *)selfCopy miscState];
  migrationLockscreenController = [(BuddyMiscState *)miscState migrationLockscreenController];
  [(BuddyMigrationLockscreenController *)migrationLockscreenController deactivate];

  view = [(BuddyMigrationTargetErrorController *)selfCopy view];
  window = [view window];
  navigationController = [(BuddyMigrationTargetErrorController *)selfCopy navigationController];
  proximitySetupController = [(BuddyMigrationTargetErrorController *)selfCopy proximitySetupController];
  analyticsManager = [(BuddyMigrationTargetErrorController *)selfCopy analyticsManager];
  v10 = [BuddyEraseAlertController alertControllerWithWindow:window navigationController:navigationController proximitySetupController:proximitySetupController analyticsManager:analyticsManager];

  [(BuddyMigrationTargetErrorController *)selfCopy presentViewController:v10 animated:1 completion:0];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)startOverTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  miscState = [(BuddyMigrationTargetErrorController *)selfCopy miscState];
  migrationLockscreenController = [(BuddyMiscState *)miscState migrationLockscreenController];
  [(BuddyMigrationLockscreenController *)migrationLockscreenController deactivate];

  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  v6 = [(BFFFlowItemDelegate *)delegate popToBuddyControllerWithClass:objc_opt_class() animated:1];

  objc_storeStrong(location, 0);
}

@end