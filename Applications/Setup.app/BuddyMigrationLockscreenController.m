@interface BuddyMigrationLockscreenController
- (BuddyMigrationLockscreenController)initWithProgressTitle:(id)a3 featureFlags:(id)a4 deviceProvider:(id)a5;
- (void)activate;
- (void)deactivate;
- (void)deviceMigrationManager:(id)a3 didChangeConnectionInformation:(id)a4;
- (void)deviceMigrationManager:(id)a3 didCompleteWithError:(id)a4;
- (void)deviceMigrationManager:(id)a3 didUpdateProgress:(id)a4;
- (void)setProgressTitle:(id)a3;
@end

@implementation BuddyMigrationLockscreenController

- (BuddyMigrationLockscreenController)initWithProgressTitle:(id)a3 featureFlags:(id)a4 deviceProvider:(id)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = 0;
  objc_storeStrong(&obj, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v7 = v20;
  v20 = 0;
  v16.receiver = v7;
  v16.super_class = BuddyMigrationLockscreenController;
  v8 = [(BuddyMigrationLockscreenController *)&v16 init];
  v20 = v8;
  objc_storeStrong(&v20, v8);
  if (v8)
  {
    v9 = [BuddyMigrationLockscreenProgressController alloc];
    v10 = [(BuddyMigrationLockscreenProgressController *)v9 initWithTitle:location[0] detailText:0 icon:0];
    v11 = *(v20 + 4);
    *(v20 + 4) = v10;

    *(v20 + 6) = 0;
    objc_storeStrong(v20 + 7, obj);
    objc_storeStrong(v20 + 8, v17);
    v12 = dispatch_queue_create("Disconnection Queue", 0);
    v13 = *(v20 + 5);
    *(v20 + 5) = v12;
  }

  v14 = v20;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v20, 0);
  return v14;
}

- (void)setProgressTitle:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMigrationLockscreenController *)v5 progressController];
  [(BuddyMigrationLockscreenProgressController *)v3 setTitle:location[0]];

  objc_storeStrong(location, 0);
}

- (void)activate
{
  v2 = objc_alloc_init(BuddyMigrationNavigationController);
  [(BuddyMigrationLockscreenController *)self setNavigationController:v2, a2];

  v3 = [(BuddyMigrationLockscreenController *)self progressController];
  v11 = v3;
  v4 = [NSArray arrayWithObjects:&v11 count:1];
  v5 = [(BuddyMigrationLockscreenController *)self navigationController];
  [(BuddyMigrationNavigationController *)v5 setViewControllers:v4];

  v6 = +[BFFStyle sharedStyle];
  v7 = [(BuddyMigrationLockscreenController *)self navigationController];
  [v6 applyThemeToNavigationController:v7];

  v8 = [SBSSecureAppAssertion acquireSecureAppAssertionWithType:11 errorHandler:&stru_10032E648];
  [(BuddyMigrationLockscreenController *)self setAssertion:v8];
}

- (void)deactivate
{
  v2 = [(BuddyMigrationLockscreenController *)self assertion];
  [(SBSSecureAppAssertion *)v2 invalidate];

  [(BuddyMigrationLockscreenController *)self setAssertion:0];
}

- (void)deviceMigrationManager:(id)a3 didChangeConnectionInformation:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v5 = [(BuddyMigrationLockscreenController *)v16 progressController];
  [(BuddyMigrationLockscreenProgressController *)v5 deviceMigrationManager:location[0] didChangeConnectionInformation:v14];

  v6 = [(BuddyMigrationLockscreenController *)v16 disconnectionQueue];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1001BF8E4;
  v11 = &unk_10032B838;
  v12 = v14;
  v13 = v16;
  dispatch_async(v6, &v7);

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)a3 didCompleteWithError:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(BuddyMigrationLockscreenController *)v8 progressController];
  [(BuddyMigrationLockscreenProgressController *)v5 deviceMigrationManager:location[0] didCompleteWithError:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)a3 didUpdateProgress:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(BuddyMigrationLockscreenController *)v8 progressController];
  [(BuddyMigrationLockscreenProgressController *)v5 deviceMigrationManager:location[0] didUpdateProgress:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

@end