@interface BuddyMigrationSourceProgressController
- (BuddyMigrationSourceProgressController)init;
- (id)createLockscreenController;
- (void)cancelMigration;
- (void)confirmCancellation:(id)a3;
- (void)deviceMigrationManager:(id)a3 didCompleteWithError:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
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

- (void)viewWillAppear:(BOOL)a3
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13.receiver = self;
  v13.super_class = BuddyMigrationSourceProgressController;
  [(BuddyMigrationSourceProgressController *)&v13 viewWillAppear:a3];
  if (([(BuddyMigrationSourceProgressController *)v16 isMovingToParentViewController]& 1) != 0)
  {
    v3 = objc_alloc_init(BYBuddyDaemonMigrationSourceClient);
    [(BuddyMigrationSourceProgressController *)v16 setMigrationSourceClient:v3];

    v4 = v16;
    v5 = [(BuddyMigrationSourceProgressController *)v16 migrationSourceClient];
    [(BYBuddyDaemonMigrationSourceClient *)v5 setDelegate:v4];

    v6 = [(BuddyMigrationSourceProgressController *)v16 migrationSourceClient];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1001F3478;
    v11 = &unk_10032EEE8;
    v12 = v16;
    [(BYBuddyDaemonMigrationSourceClient *)v6 registerAsUserInterfaceHost:&v7];

    objc_storeStrong(&v12, 0);
  }
}

- (void)confirmCancellation:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [BuddyMigrationCancelAlertController alertControllerForSource:location[0]];
  [(BuddyMigrationSourceProgressController *)v6 presentViewController:v3 animated:1 completion:0, v3];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)cancelMigration
{
  v13 = self;
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
  v10 = v13;
  dispatch_async(v2, &block);

  v3 = v13;
  v4 = [NSError errorWithDomain:@"MBErrorDomain" code:202 userInfo:0];
  [(BuddyMigrationSourceProgressController *)v3 deviceMigrationManager:0 didCompleteWithError:v4];

  objc_storeStrong(&v10, 0);
}

- (id)createLockscreenController
{
  v2 = [BuddyMigrationSourceLockscreenController alloc];
  v3 = [(BuddyMigrationProgressController *)self progressTitle];
  v4 = [(BuddyMigrationProgressController *)self featureFlags];
  v5 = [(BuddyMigrationProgressController *)self deviceProvider];
  v6 = [(BuddyMigrationSourceLockscreenController *)v2 initWithProgressTitle:v3 featureFlags:v4 deviceProvider:v5 stringProvider:self->_buddyMigrationSourceFinishedStringProvider];

  return v6;
}

- (void)deviceMigrationManager:(id)a3 didCompleteWithError:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13.receiver = v16;
  v13.super_class = BuddyMigrationSourceProgressController;
  [(BuddyMigrationProgressController *)&v13 deviceMigrationManager:location[0] didCompleteWithError:v14];
  v5 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1001F3AEC;
  v10 = &unk_10032B838;
  v11 = v16;
  v12 = v14;
  dispatch_async(v5, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

@end