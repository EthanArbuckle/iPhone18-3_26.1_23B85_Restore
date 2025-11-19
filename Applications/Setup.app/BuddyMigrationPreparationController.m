@interface BuddyMigrationPreparationController
- (BOOL)_ableToMigrateWithPreflightInformation:(id)a3;
- (BuddyMigrationPreparationController)init;
- (void)_controllerDone;
- (void)_showError:(id)a3;
- (void)_showErrorController:(id)a3;
- (void)_showOutOfSpaceError;
- (void)_waitForKeychainAndPreflight;
- (void)_waitForPreflight;
- (void)performExtendedInitializationWithCompletion:(id)a3;
@end

@implementation BuddyMigrationPreparationController

- (BuddyMigrationPreparationController)init
{
  v10 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"MIGRATION_PREPARING" value:&stru_10032F900 table:@"Migration"];
  location = 0;
  v9.receiver = self;
  v9.super_class = BuddyMigrationPreparationController;
  location = [(BuddyMigrationPreparationController *)&v9 initWithSpinnerText:v4];
  objc_storeStrong(&location, location);

  if (location)
  {
    v5 = [location navigationItem];
    [v5 setTitle:&stru_10032F900];

    v6 = [location navigationItem];
    [v6 setHidesBackButton:1 animated:0];
  }

  v7 = location;
  objc_storeStrong(&location, 0);
  return v7;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMigrationPreparationController *)v24 miscState];
  v4 = [(BuddyMiscState *)v3 migrationManager];
  v5 = [(BuddyTargetDeviceMigrationManager *)v4 requiresUpdateToMigrate];

  if (v5)
  {
    (*(location[0] + 2))(location[0], 0);
    v22 = 1;
  }

  else
  {
    [(BuddyMigrationPreparationController *)v24 setWaiting:1];
    v6 = dispatch_time(0, 2000000000);
    v7 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_1000BD2BC;
    v19 = &unk_10032AFD0;
    v20 = v24;
    v21 = location[0];
    dispatch_after(v6, v7, &block);

    [(BuddyMigrationPreparationController *)v24 setExtendedInitializationCompletion:location[0]];
    v8 = dispatch_get_global_queue(0, 0);
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_1000BD334;
    v13 = &unk_10032B0D0;
    v14 = v24;
    dispatch_async(v8, &v9);

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    v22 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)_waitForKeychainAndPreflight
{
  v10 = self;
  location[1] = a2;
  v2 = [(BuddyMigrationPreparationController *)self miscState];
  location[0] = [(BuddyMiscState *)v2 migrationManager];

  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000BD44C;
  v7 = &unk_10032B6F0;
  v8 = v10;
  [location[0] waitForKeychain:&v3];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_waitForPreflight
{
  v10 = self;
  location[1] = a2;
  v2 = [(BuddyMigrationPreparationController *)self miscState];
  location[0] = [(BuddyMiscState *)v2 migrationManager];

  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000BD708;
  v7 = &unk_10032C358;
  v8 = v10;
  [location[0] waitForPreflight:&v3];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_controllerDone
{
  [(BuddyMigrationPreparationController *)self setWaiting:0, a2];
  if ([(BuddyMigrationPreparationController *)self isPaneVisible])
  {
    v2 = [(BuddyMigrationPreparationController *)self delegate];
    [v2 flowItemDone:self];
  }

  else
  {
    v3 = [(BuddyMigrationPreparationController *)self extendedInitializationCompletion];

    if (v3)
    {
      v4 = [(BuddyMigrationPreparationController *)self extendedInitializationCompletion];
      v4[2](v4, 0);

      [(BuddyMigrationPreparationController *)self setExtendedInitializationCompletion:0];
    }
  }
}

- (void)_showOutOfSpaceError
{
  v3 = self;
  location[1] = a2;
  location[0] = [[BuddyMigrationTargetErrorController alloc] initForInsufficientSpace];
  [(BuddyMigrationPreparationController *)v3 _showErrorController:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_showError:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [BuddyMigrationTargetErrorController alloc];
  v4 = [(BuddyMigrationTargetErrorController *)v3 initWithError:location[0]];
  [(BuddyMigrationPreparationController *)v7 _showErrorController:v4, v4];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_showErrorController:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMigrationPreparationController *)v20 miscState];
  v4 = [(BuddyMiscState *)v3 migrationManager];
  v5 = [(BuddyTargetDeviceMigrationManager *)v4 hasTransferredData];
  [location[0] setForceErase:v5 & 1];

  v6 = [(BuddyMigrationPreparationController *)v20 delegate];
  [location[0] setDelegate:v6];

  [(BuddyMigrationPreparationController *)v20 setWaiting:0];
  if ([(BuddyMigrationPreparationController *)v20 isPaneVisible])
  {
    v7 = [(BuddyMigrationPreparationController *)v20 delegate];
    [v7 flowItemDone:v20 nextItem:location[0]];
  }

  else
  {
    v8 = [(BuddyMigrationPreparationController *)v20 extendedInitializationCompletion];

    if (v8)
    {
      v9 = [(BuddyMigrationPreparationController *)v20 extendedInitializationCompletion];
      v9[2](v9, 1);

      [(BuddyMigrationPreparationController *)v20 setExtendedInitializationCompletion:0];
      v10 = dispatch_time(0, 1000000000);
      v11 = &_dispatch_main_q;
      block = _NSConcreteStackBlock;
      v13 = -1073741824;
      v14 = 0;
      v15 = sub_1000BDCA8;
      v16 = &unk_10032B838;
      v17 = v20;
      v18 = location[0];
      dispatch_after(v10, v11, &block);

      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v17, 0);
    }
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_ableToMigrateWithPreflightInformation:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = 0;
  if (location[0])
  {
    v4 = [location[0] sourceDeviceDataSize];
    v3 = v4 < [location[0] targetDeviceFreeSpaceSize];
  }

  objc_storeStrong(location, 0);
  return v3;
}

@end