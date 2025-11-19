@interface BuddyMigrationLockscreenProgressController
- (void)deviceMigrationManager:(id)a3 didChangeConnectionInformation:(id)a4;
- (void)deviceMigrationManager:(id)a3 didCompleteWithError:(id)a4;
- (void)deviceMigrationManager:(id)a3 didUpdateProgress:(id)a4;
- (void)loadView;
- (void)setTitle:(id)a3;
@end

@implementation BuddyMigrationLockscreenProgressController

- (void)loadView
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyMigrationLockscreenProgressController;
  [(BuddyMigrationLockscreenProgressController *)&v5 loadView];
  v2 = [(BuddyMigrationLockscreenProgressController *)v7 headerView];
  v3 = [UIImage imageNamed:@"Lock"];
  [v2 setIcon:v3 accessibilityLabel:0];

  v4 = [(BuddyMigrationLockscreenProgressController *)v7 headerView];
  [v4 setIconInheritsTint:1];
}

- (void)setTitle:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyMigrationLockscreenProgressController *)v5 loadViewIfNeeded];
  v3 = [(BuddyMigrationLockscreenProgressController *)v5 headerView];
  [v3 setTitle:location[0]];

  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)a3 didChangeConnectionInformation:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v5 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1002409A0;
  v10 = &unk_10032B838;
  v11 = v15;
  v12 = v13;
  dispatch_async(v5, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)a3 didUpdateProgress:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v5 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100240C90;
  v10 = &unk_10032B838;
  v11 = v15;
  v12 = v13;
  dispatch_async(v5, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)a3 didCompleteWithError:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

@end