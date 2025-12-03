@interface BuddyMigrationLockscreenController
- (BuddyMigrationLockscreenController)initWithProgressTitle:(id)title featureFlags:(id)flags deviceProvider:(id)provider;
- (void)activate;
- (void)deactivate;
- (void)deviceMigrationManager:(id)manager didChangeConnectionInformation:(id)information;
- (void)deviceMigrationManager:(id)manager didCompleteWithError:(id)error;
- (void)deviceMigrationManager:(id)manager didUpdateProgress:(id)progress;
- (void)setProgressTitle:(id)title;
@end

@implementation BuddyMigrationLockscreenController

- (BuddyMigrationLockscreenController)initWithProgressTitle:(id)title featureFlags:(id)flags deviceProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  obj = 0;
  objc_storeStrong(&obj, flags);
  v17 = 0;
  objc_storeStrong(&v17, provider);
  v7 = selfCopy;
  selfCopy = 0;
  v16.receiver = v7;
  v16.super_class = BuddyMigrationLockscreenController;
  v8 = [(BuddyMigrationLockscreenController *)&v16 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    v9 = [BuddyMigrationLockscreenProgressController alloc];
    v10 = [(BuddyMigrationLockscreenProgressController *)v9 initWithTitle:location[0] detailText:0 icon:0];
    v11 = *(selfCopy + 4);
    *(selfCopy + 4) = v10;

    *(selfCopy + 6) = 0;
    objc_storeStrong(selfCopy + 7, obj);
    objc_storeStrong(selfCopy + 8, v17);
    v12 = dispatch_queue_create("Disconnection Queue", 0);
    v13 = *(selfCopy + 5);
    *(selfCopy + 5) = v12;
  }

  v14 = selfCopy;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v14;
}

- (void)setProgressTitle:(id)title
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  progressController = [(BuddyMigrationLockscreenController *)selfCopy progressController];
  [(BuddyMigrationLockscreenProgressController *)progressController setTitle:location[0]];

  objc_storeStrong(location, 0);
}

- (void)activate
{
  v2 = objc_alloc_init(BuddyMigrationNavigationController);
  [(BuddyMigrationLockscreenController *)self setNavigationController:v2, a2];

  progressController = [(BuddyMigrationLockscreenController *)self progressController];
  v11 = progressController;
  v4 = [NSArray arrayWithObjects:&v11 count:1];
  navigationController = [(BuddyMigrationLockscreenController *)self navigationController];
  [(BuddyMigrationNavigationController *)navigationController setViewControllers:v4];

  v6 = +[BFFStyle sharedStyle];
  navigationController2 = [(BuddyMigrationLockscreenController *)self navigationController];
  [v6 applyThemeToNavigationController:navigationController2];

  v8 = [SBSSecureAppAssertion acquireSecureAppAssertionWithType:11 errorHandler:&stru_10032E648];
  [(BuddyMigrationLockscreenController *)self setAssertion:v8];
}

- (void)deactivate
{
  assertion = [(BuddyMigrationLockscreenController *)self assertion];
  [(SBSSecureAppAssertion *)assertion invalidate];

  [(BuddyMigrationLockscreenController *)self setAssertion:0];
}

- (void)deviceMigrationManager:(id)manager didChangeConnectionInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v14 = 0;
  objc_storeStrong(&v14, information);
  progressController = [(BuddyMigrationLockscreenController *)selfCopy progressController];
  [(BuddyMigrationLockscreenProgressController *)progressController deviceMigrationManager:location[0] didChangeConnectionInformation:v14];

  disconnectionQueue = [(BuddyMigrationLockscreenController *)selfCopy disconnectionQueue];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1001BF8E4;
  v11 = &unk_10032B838;
  v12 = v14;
  v13 = selfCopy;
  dispatch_async(disconnectionQueue, &v7);

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)manager didCompleteWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v6 = 0;
  objc_storeStrong(&v6, error);
  progressController = [(BuddyMigrationLockscreenController *)selfCopy progressController];
  [(BuddyMigrationLockscreenProgressController *)progressController deviceMigrationManager:location[0] didCompleteWithError:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)manager didUpdateProgress:(id)progress
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v6 = 0;
  objc_storeStrong(&v6, progress);
  progressController = [(BuddyMigrationLockscreenController *)selfCopy progressController];
  [(BuddyMigrationLockscreenProgressController *)progressController deviceMigrationManager:location[0] didUpdateProgress:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

@end