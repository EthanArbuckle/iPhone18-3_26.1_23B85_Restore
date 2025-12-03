@interface BuddyMigrationTargetLockscreenController
- (void)deviceMigrationManager:(id)manager didCompleteWithError:(id)error;
@end

@implementation BuddyMigrationTargetLockscreenController

- (void)deviceMigrationManager:(id)manager didCompleteWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v15 = 0;
  objc_storeStrong(&v15, error);
  v14.receiver = selfCopy;
  v14.super_class = BuddyMigrationTargetLockscreenController;
  [(BuddyMigrationLockscreenController *)&v14 deviceMigrationManager:location[0] didCompleteWithError:v15];
  if (v15)
  {
    v5 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1000B847C;
    v10 = &unk_10032B838;
    v11 = selfCopy;
    v12 = v15;
    dispatch_async(v5, &block);

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

@end