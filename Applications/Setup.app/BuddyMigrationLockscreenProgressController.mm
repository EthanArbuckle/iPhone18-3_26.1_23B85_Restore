@interface BuddyMigrationLockscreenProgressController
- (void)deviceMigrationManager:(id)manager didChangeConnectionInformation:(id)information;
- (void)deviceMigrationManager:(id)manager didCompleteWithError:(id)error;
- (void)deviceMigrationManager:(id)manager didUpdateProgress:(id)progress;
- (void)loadView;
- (void)setTitle:(id)title;
@end

@implementation BuddyMigrationLockscreenProgressController

- (void)loadView
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyMigrationLockscreenProgressController;
  [(BuddyMigrationLockscreenProgressController *)&v5 loadView];
  headerView = [(BuddyMigrationLockscreenProgressController *)selfCopy headerView];
  v3 = [UIImage imageNamed:@"Lock"];
  [headerView setIcon:v3 accessibilityLabel:0];

  headerView2 = [(BuddyMigrationLockscreenProgressController *)selfCopy headerView];
  [headerView2 setIconInheritsTint:1];
}

- (void)setTitle:(id)title
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  [(BuddyMigrationLockscreenProgressController *)selfCopy loadViewIfNeeded];
  headerView = [(BuddyMigrationLockscreenProgressController *)selfCopy headerView];
  [headerView setTitle:location[0]];

  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)manager didChangeConnectionInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v13 = 0;
  objc_storeStrong(&v13, information);
  v5 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1002409A0;
  v10 = &unk_10032B838;
  v11 = selfCopy;
  v12 = v13;
  dispatch_async(v5, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)manager didUpdateProgress:(id)progress
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v13 = 0;
  objc_storeStrong(&v13, progress);
  v5 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100240C90;
  v10 = &unk_10032B838;
  v11 = selfCopy;
  v12 = v13;
  dispatch_async(v5, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)manager didCompleteWithError:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v5 = 0;
  objc_storeStrong(&v5, error);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

@end