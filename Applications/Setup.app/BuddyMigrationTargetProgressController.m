@interface BuddyMigrationTargetProgressController
- (BuddyMigrationTargetProgressController)init;
- (id)createLockscreenController;
- (void)cancelMigration;
- (void)confirmCancellation:(id)a3;
- (void)deviceMigrationManager:(id)a3 didCompleteWithError:(id)a4;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation BuddyMigrationTargetProgressController

- (BuddyMigrationTargetProgressController)init
{
  v7 = a2;
  v3 = [UIImage imageNamed:@"Transfer Progress Target"];
  location = 0;
  v6.receiver = self;
  v6.super_class = BuddyMigrationTargetProgressController;
  location = [(BuddyMigrationProgressController *)&v6 initWithTitle:&stru_10032F900 icon:v3];
  v4 = location;

  objc_storeStrong(&location, 0);
  return v4;
}

- (void)viewDidLoad
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = BuddyMigrationTargetProgressController;
  [(BuddyMigrationTargetProgressController *)&v6 viewDidLoad];
  v2 = +[NSBundle mainBundle];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"MIGRATING_TITLE_DESTINATION" value:&stru_10032F900 table:@"Migration"];
  v4 = [(BuddyMigrationTargetProgressController *)v8 sourceDeviceName];
  v5 = [NSString localizedStringWithFormat:v3, v4];
  [(BuddyMigrationProgressController *)v8 setProgressTitle:v5];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = BuddyMigrationTargetProgressController;
  [(BuddyMigrationProgressController *)&v5 viewDidAppear:a3];
  if (([(BuddyMigrationTargetProgressController *)v8 isMovingToParentViewController]& 1) != 0)
  {
    v3 = [(BuddyMigrationProgressController *)v8 miscState];
    v4 = [(BuddyMiscState *)v3 migrationManager];
    [(BuddyTargetDeviceMigrationManager *)v4 addDelegate:v8];
  }
}

- (void)confirmCancellation:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001A354C;
  v7 = &unk_10032C630;
  v8 = location[0];
  v9 = [BuddyMigrationCancelAlertController alertControllerForTargetWithNeedsErase:1 completion:&v3];
  [(BuddyMigrationTargetProgressController *)v11 presentViewController:v9 animated:1 completion:0];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)cancelMigration
{
  v10 = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = BuddyMigrationTargetProgressController;
  [(BuddyMigrationProgressController *)&v8 cancelMigration];
  v2 = [(BuddyMigrationProgressController *)v10 miscState];
  v3 = [(BuddyMiscState *)v2 migrationManager];
  [(BuddyTargetDeviceMigrationManager *)v3 cancelWithCause:2];

  v4 = [(BuddyMigrationProgressController *)v10 analyticsManager];
  [(BYAnalyticsManager *)v4 commitThenUpload];

  location = objc_alloc_init(DDRResetOptions);
  v6 = [[DDRResetRequest alloc] initWithMode:4 options:location reason:@"Migration Cancellation Erase"];
  v5 = +[DDRResetService sharedInstance];
  [(DDRResetService *)v5 resetWithRequest:v6 completion:&stru_10032E2A8];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
}

- (id)createLockscreenController
{
  v2 = [BuddyMigrationTargetLockscreenController alloc];
  v3 = [(BuddyMigrationProgressController *)self progressTitle];
  v4 = [(BuddyMigrationProgressController *)self featureFlags];
  v5 = [(BuddyMigrationProgressController *)self deviceProvider];
  v6 = [(BuddyMigrationLockscreenController *)v2 initWithProgressTitle:v3 featureFlags:v4 deviceProvider:v5];

  return v6;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMigrationProgressController *)v18 miscState];
  v4 = [(BuddyMiscState *)v3 migrationManager];
  v5 = [(BuddyTargetDeviceMigrationManager *)v4 willMigrate]^ 1;

  if (v5)
  {
    (*(location[0] + 2))(location[0], 0);
    v16 = 1;
  }

  else
  {
    v6 = [(BuddyMigrationProgressController *)v18 proximitySetupController];
    v7 = [(ProximitySetupController *)v6 deviceName];
    [(BuddyMigrationTargetProgressController *)v18 setSourceDeviceName:v7];

    v8 = dispatch_get_global_queue(0, 0);
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_1001A3B74;
    v13 = &unk_10032AFD0;
    v14 = v18;
    v15 = location[0];
    dispatch_async(v8, &v9);

    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    v16 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)a3 didCompleteWithError:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16.receiver = v19;
  v16.super_class = BuddyMigrationTargetProgressController;
  [(BuddyMigrationProgressController *)&v16 deviceMigrationManager:location[0] didCompleteWithError:v17];
  v5 = [(BuddyMigrationProgressController *)v19 miscState];
  v6 = [(BuddyMiscState *)v5 migrationManager];
  [(BuddyTargetDeviceMigrationManager *)v6 removeDelegate:v19];

  if (v17)
  {
    v7 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_1001A3E44;
    v12 = &unk_10032BB10;
    v13 = v17;
    v14 = location[0];
    v15 = v19;
    dispatch_async(v7, &block);

    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

@end