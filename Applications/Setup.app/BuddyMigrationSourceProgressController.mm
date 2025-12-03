@interface BuddyMigrationSourceProgressController
- (BuddyMigrationSourceProgressController)init;
- (id)createLockscreenController;
- (void)cancelMigration;
- (void)confirmCancellation:(id)cancellation;
- (void)deviceMigrationManager:(id)manager didCompleteWithError:(id)error;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyMigrationSourceProgressController

- (BuddyMigrationSourceProgressController)init
{
  v9 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"MIGRATING_TITLE_SOURCE" value:&stru_10032F900 table:@"Migration"];
  v5 = [UIImage imageNamed:@"Transfer Progress Source"];
  location = 0;
  v8.receiver = self;
  v8.super_class = BuddyMigrationSourceProgressController;
  location = [(BuddyMigrationSourceProgressController *)&v8 initWithTitle:v4 detailText:0 icon:v5];
  v6 = location;

  objc_storeStrong(&location, 0);
  return v6;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v15 = a2;
  appearCopy = appear;
  v13.receiver = self;
  v13.super_class = BuddyMigrationSourceProgressController;
  [(BuddyMigrationSourceProgressController *)&v13 viewWillAppear:appear];
  if (([(BuddyMigrationSourceProgressController *)selfCopy isMovingToParentViewController]& 1) != 0)
  {
    v3 = objc_alloc_init(BYBuddyDaemonMigrationSourceClient);
    [(BuddyMigrationSourceProgressController *)selfCopy setMigrationSourceClient:v3];

    v4 = selfCopy;
    migrationSourceClient = [(BuddyMigrationSourceProgressController *)selfCopy migrationSourceClient];
    [(BYBuddyDaemonMigrationSourceClient *)migrationSourceClient setDelegate:v4];

    migrationSourceClient2 = [(BuddyMigrationSourceProgressController *)selfCopy migrationSourceClient];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1001F3478;
    v11 = &unk_10032EEE8;
    v12 = selfCopy;
    [(BYBuddyDaemonMigrationSourceClient *)migrationSourceClient2 registerAsUserInterfaceHost:&v7];

    objc_storeStrong(&v12, 0);
  }
}

- (void)confirmCancellation:(id)cancellation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancellation);
  v3 = [BuddyMigrationCancelAlertController alertControllerForSource:location[0]];
  [(BuddyMigrationSourceProgressController *)selfCopy presentViewController:v3 animated:1 completion:0, v3];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)cancelMigration
{
  selfCopy = self;
  v12 = a2;
  v11.receiver = self;
  v11.super_class = BuddyMigrationSourceProgressController;
  [(BuddyMigrationProgressController *)&v11 cancelMigration];
  v2 = dispatch_get_global_queue(2, 0);
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001F3870;
  v9 = &unk_10032B0D0;
  v10 = selfCopy;
  dispatch_async(v2, &block);

  v3 = selfCopy;
  v4 = [NSError errorWithDomain:@"MBErrorDomain" code:202 userInfo:0];
  [(BuddyMigrationSourceProgressController *)v3 deviceMigrationManager:0 didCompleteWithError:v4];

  objc_storeStrong(&v10, 0);
}

- (id)createLockscreenController
{
  v2 = [BuddyMigrationSourceLockscreenController alloc];
  progressTitle = [(BuddyMigrationProgressController *)self progressTitle];
  featureFlags = [(BuddyMigrationProgressController *)self featureFlags];
  deviceProvider = [(BuddyMigrationProgressController *)self deviceProvider];
  v6 = [(BuddyMigrationSourceLockscreenController *)v2 initWithProgressTitle:progressTitle featureFlags:featureFlags deviceProvider:deviceProvider stringProvider:self->_buddyMigrationSourceFinishedStringProvider];

  return v6;
}

- (void)deviceMigrationManager:(id)manager didCompleteWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v14 = 0;
  objc_storeStrong(&v14, error);
  v13.receiver = selfCopy;
  v13.super_class = BuddyMigrationSourceProgressController;
  [(BuddyMigrationProgressController *)&v13 deviceMigrationManager:location[0] didCompleteWithError:v14];
  v5 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1001F3AEC;
  v10 = &unk_10032B838;
  v11 = selfCopy;
  v12 = v14;
  dispatch_async(v5, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

@end