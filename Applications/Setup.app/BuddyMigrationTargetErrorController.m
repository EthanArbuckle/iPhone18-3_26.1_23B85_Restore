@interface BuddyMigrationTargetErrorController
- (BuddyMigrationTargetErrorController)initWithError:(id)a3;
- (id)initForInsufficientSpace;
- (void)loadView;
- (void)resetTapped:(id)a3;
- (void)startOverTapped:(id)a3;
@end

@implementation BuddyMigrationTargetErrorController

- (BuddyMigrationTargetErrorController)initWithError:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = BuddyMigrationTargetErrorController;
  v8 = [(BuddyMigrationBaseErrorController *)&v6 initWithError:location[0]];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    *(v8 + 25) = 1;
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
  v14 = self;
  v13 = a2;
  v12.receiver = self;
  v12.super_class = BuddyMigrationTargetErrorController;
  [(BuddyMigrationTargetErrorController *)&v12 loadView];
  v2 = [(BuddyMigrationTargetErrorController *)v14 headerView];
  v3 = [(BuddyMigrationBaseErrorController *)v14 error];
  v4 = [BuddyMigrationError titleForError:v3];
  [v2 setTitle:v4];

  v5 = [(BuddyMigrationTargetErrorController *)v14 headerView];
  v6 = [(BuddyMigrationBaseErrorController *)v14 error];
  v7 = [BuddyMigrationError detailTextForErrorOnTarget:v6 requiresErase:[(BuddyMigrationTargetErrorController *)v14 forceErase]];
  [v5 setDetailText:v7];

  if ([(BuddyMigrationTargetErrorController *)v14 allowInteraction])
  {
    if ([(BuddyMigrationTargetErrorController *)v14 forceErase])
    {
      v8 = v14;
      v9 = +[NSBundle mainBundle];
      v10 = [(NSBundle *)v9 localizedStringForKey:@"RESET" value:&stru_10032F900 table:@"Localizable"];
      [(BuddyWelcomeController *)v8 addBoldButton:v10 action:"resetTapped:"];
    }

    else
    {
      v11 = v14;
      v9 = +[NSBundle mainBundle];
      v10 = [(NSBundle *)v9 localizedStringForKey:@"MIGRATION_ERROR_SET_UP_MANUALLY" value:&stru_10032F900 table:@"Migration"];
      [(BuddyWelcomeController *)v11 addBoldButton:v10 action:"startOverTapped:"];
    }
  }
}

- (void)resetTapped:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMigrationTargetErrorController *)v12 miscState];
  v4 = [(BuddyMiscState *)v3 migrationLockscreenController];
  [(BuddyMigrationLockscreenController *)v4 deactivate];

  v5 = [(BuddyMigrationTargetErrorController *)v12 view];
  v6 = [v5 window];
  v7 = [(BuddyMigrationTargetErrorController *)v12 navigationController];
  v8 = [(BuddyMigrationTargetErrorController *)v12 proximitySetupController];
  v9 = [(BuddyMigrationTargetErrorController *)v12 analyticsManager];
  v10 = [BuddyEraseAlertController alertControllerWithWindow:v6 navigationController:v7 proximitySetupController:v8 analyticsManager:v9];

  [(BuddyMigrationTargetErrorController *)v12 presentViewController:v10 animated:1 completion:0];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)startOverTapped:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMigrationTargetErrorController *)v8 miscState];
  v4 = [(BuddyMiscState *)v3 migrationLockscreenController];
  [(BuddyMigrationLockscreenController *)v4 deactivate];

  v5 = [(BuddyWelcomeController *)v8 delegate];
  v6 = [(BFFFlowItemDelegate *)v5 popToBuddyControllerWithClass:objc_opt_class() animated:1];

  objc_storeStrong(location, 0);
}

@end