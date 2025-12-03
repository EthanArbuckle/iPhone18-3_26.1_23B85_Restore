@interface BuddyMigrationPreparationController
- (BOOL)_ableToMigrateWithPreflightInformation:(id)information;
- (BuddyMigrationPreparationController)init;
- (void)_controllerDone;
- (void)_showError:(id)error;
- (void)_showErrorController:(id)controller;
- (void)_showOutOfSpaceError;
- (void)_waitForKeychainAndPreflight;
- (void)_waitForPreflight;
- (void)performExtendedInitializationWithCompletion:(id)completion;
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
    navigationItem = [location navigationItem];
    [navigationItem setTitle:&stru_10032F900];

    navigationItem2 = [location navigationItem];
    [navigationItem2 setHidesBackButton:1 animated:0];
  }

  v7 = location;
  objc_storeStrong(&location, 0);
  return v7;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  miscState = [(BuddyMigrationPreparationController *)selfCopy miscState];
  migrationManager = [(BuddyMiscState *)miscState migrationManager];
  requiresUpdateToMigrate = [(BuddyTargetDeviceMigrationManager *)migrationManager requiresUpdateToMigrate];

  if (requiresUpdateToMigrate)
  {
    (*(location[0] + 2))(location[0], 0);
    v22 = 1;
  }

  else
  {
    [(BuddyMigrationPreparationController *)selfCopy setWaiting:1];
    v6 = dispatch_time(0, 2000000000);
    v7 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_1000BD2BC;
    v19 = &unk_10032AFD0;
    v20 = selfCopy;
    v21 = location[0];
    dispatch_after(v6, v7, &block);

    [(BuddyMigrationPreparationController *)selfCopy setExtendedInitializationCompletion:location[0]];
    v8 = dispatch_get_global_queue(0, 0);
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_1000BD334;
    v13 = &unk_10032B0D0;
    v14 = selfCopy;
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
  selfCopy = self;
  location[1] = a2;
  miscState = [(BuddyMigrationPreparationController *)self miscState];
  location[0] = [(BuddyMiscState *)miscState migrationManager];

  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000BD44C;
  v7 = &unk_10032B6F0;
  v8 = selfCopy;
  [location[0] waitForKeychain:&v3];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_waitForPreflight
{
  selfCopy = self;
  location[1] = a2;
  miscState = [(BuddyMigrationPreparationController *)self miscState];
  location[0] = [(BuddyMiscState *)miscState migrationManager];

  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000BD708;
  v7 = &unk_10032C358;
  v8 = selfCopy;
  [location[0] waitForPreflight:&v3];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_controllerDone
{
  [(BuddyMigrationPreparationController *)self setWaiting:0, a2];
  if ([(BuddyMigrationPreparationController *)self isPaneVisible])
  {
    delegate = [(BuddyMigrationPreparationController *)self delegate];
    [delegate flowItemDone:self];
  }

  else
  {
    extendedInitializationCompletion = [(BuddyMigrationPreparationController *)self extendedInitializationCompletion];

    if (extendedInitializationCompletion)
    {
      extendedInitializationCompletion2 = [(BuddyMigrationPreparationController *)self extendedInitializationCompletion];
      extendedInitializationCompletion2[2](extendedInitializationCompletion2, 0);

      [(BuddyMigrationPreparationController *)self setExtendedInitializationCompletion:0];
    }
  }
}

- (void)_showOutOfSpaceError
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [[BuddyMigrationTargetErrorController alloc] initForInsufficientSpace];
  [(BuddyMigrationPreparationController *)selfCopy _showErrorController:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_showError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v3 = [BuddyMigrationTargetErrorController alloc];
  v4 = [(BuddyMigrationTargetErrorController *)v3 initWithError:location[0]];
  [(BuddyMigrationPreparationController *)selfCopy _showErrorController:v4, v4];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_showErrorController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  miscState = [(BuddyMigrationPreparationController *)selfCopy miscState];
  migrationManager = [(BuddyMiscState *)miscState migrationManager];
  hasTransferredData = [(BuddyTargetDeviceMigrationManager *)migrationManager hasTransferredData];
  [location[0] setForceErase:hasTransferredData & 1];

  delegate = [(BuddyMigrationPreparationController *)selfCopy delegate];
  [location[0] setDelegate:delegate];

  [(BuddyMigrationPreparationController *)selfCopy setWaiting:0];
  if ([(BuddyMigrationPreparationController *)selfCopy isPaneVisible])
  {
    delegate2 = [(BuddyMigrationPreparationController *)selfCopy delegate];
    [delegate2 flowItemDone:selfCopy nextItem:location[0]];
  }

  else
  {
    extendedInitializationCompletion = [(BuddyMigrationPreparationController *)selfCopy extendedInitializationCompletion];

    if (extendedInitializationCompletion)
    {
      extendedInitializationCompletion2 = [(BuddyMigrationPreparationController *)selfCopy extendedInitializationCompletion];
      extendedInitializationCompletion2[2](extendedInitializationCompletion2, 1);

      [(BuddyMigrationPreparationController *)selfCopy setExtendedInitializationCompletion:0];
      v10 = dispatch_time(0, 1000000000);
      v11 = &_dispatch_main_q;
      block = _NSConcreteStackBlock;
      v13 = -1073741824;
      v14 = 0;
      v15 = sub_1000BDCA8;
      v16 = &unk_10032B838;
      v17 = selfCopy;
      v18 = location[0];
      dispatch_after(v10, v11, &block);

      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v17, 0);
    }
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_ableToMigrateWithPreflightInformation:(id)information
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, information);
  v3 = 0;
  if (location[0])
  {
    sourceDeviceDataSize = [location[0] sourceDeviceDataSize];
    v3 = sourceDeviceDataSize < [location[0] targetDeviceFreeSpaceSize];
  }

  objc_storeStrong(location, 0);
  return v3;
}

@end