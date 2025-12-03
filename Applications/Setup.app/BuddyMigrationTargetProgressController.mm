@interface BuddyMigrationTargetProgressController
- (BuddyMigrationTargetProgressController)init;
- (id)createLockscreenController;
- (void)cancelMigration;
- (void)confirmCancellation:(id)cancellation;
- (void)deviceMigrationManager:(id)manager didCompleteWithError:(id)error;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
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
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = BuddyMigrationTargetProgressController;
  [(BuddyMigrationTargetProgressController *)&v6 viewDidLoad];
  v2 = +[NSBundle mainBundle];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"MIGRATING_TITLE_DESTINATION" value:&stru_10032F900 table:@"Migration"];
  sourceDeviceName = [(BuddyMigrationTargetProgressController *)selfCopy sourceDeviceName];
  v5 = [NSString localizedStringWithFormat:v3, sourceDeviceName];
  [(BuddyMigrationProgressController *)selfCopy setProgressTitle:v5];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = BuddyMigrationTargetProgressController;
  [(BuddyMigrationProgressController *)&v5 viewDidAppear:appear];
  if (([(BuddyMigrationTargetProgressController *)selfCopy isMovingToParentViewController]& 1) != 0)
  {
    miscState = [(BuddyMigrationProgressController *)selfCopy miscState];
    migrationManager = [(BuddyMiscState *)miscState migrationManager];
    [(BuddyTargetDeviceMigrationManager *)migrationManager addDelegate:selfCopy];
  }
}

- (void)confirmCancellation:(id)cancellation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancellation);
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001A354C;
  v7 = &unk_10032C630;
  v8 = location[0];
  v9 = [BuddyMigrationCancelAlertController alertControllerForTargetWithNeedsErase:1 completion:&v3];
  [(BuddyMigrationTargetProgressController *)selfCopy presentViewController:v9 animated:1 completion:0];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)cancelMigration
{
  selfCopy = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = BuddyMigrationTargetProgressController;
  [(BuddyMigrationProgressController *)&v8 cancelMigration];
  miscState = [(BuddyMigrationProgressController *)selfCopy miscState];
  migrationManager = [(BuddyMiscState *)miscState migrationManager];
  [(BuddyTargetDeviceMigrationManager *)migrationManager cancelWithCause:2];

  analyticsManager = [(BuddyMigrationProgressController *)selfCopy analyticsManager];
  [(BYAnalyticsManager *)analyticsManager commitThenUpload];

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
  progressTitle = [(BuddyMigrationProgressController *)self progressTitle];
  featureFlags = [(BuddyMigrationProgressController *)self featureFlags];
  deviceProvider = [(BuddyMigrationProgressController *)self deviceProvider];
  v6 = [(BuddyMigrationLockscreenController *)v2 initWithProgressTitle:progressTitle featureFlags:featureFlags deviceProvider:deviceProvider];

  return v6;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  miscState = [(BuddyMigrationProgressController *)selfCopy miscState];
  migrationManager = [(BuddyMiscState *)miscState migrationManager];
  v5 = [(BuddyTargetDeviceMigrationManager *)migrationManager willMigrate]^ 1;

  if (v5)
  {
    (*(location[0] + 2))(location[0], 0);
    v16 = 1;
  }

  else
  {
    proximitySetupController = [(BuddyMigrationProgressController *)selfCopy proximitySetupController];
    deviceName = [(ProximitySetupController *)proximitySetupController deviceName];
    [(BuddyMigrationTargetProgressController *)selfCopy setSourceDeviceName:deviceName];

    v8 = dispatch_get_global_queue(0, 0);
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_1001A3B74;
    v13 = &unk_10032AFD0;
    v14 = selfCopy;
    v15 = location[0];
    dispatch_async(v8, &v9);

    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    v16 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)manager didCompleteWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v17 = 0;
  objc_storeStrong(&v17, error);
  v16.receiver = selfCopy;
  v16.super_class = BuddyMigrationTargetProgressController;
  [(BuddyMigrationProgressController *)&v16 deviceMigrationManager:location[0] didCompleteWithError:v17];
  miscState = [(BuddyMigrationProgressController *)selfCopy miscState];
  migrationManager = [(BuddyMiscState *)miscState migrationManager];
  [(BuddyTargetDeviceMigrationManager *)migrationManager removeDelegate:selfCopy];

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
    v15 = selfCopy;
    dispatch_async(v7, &block);

    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

@end