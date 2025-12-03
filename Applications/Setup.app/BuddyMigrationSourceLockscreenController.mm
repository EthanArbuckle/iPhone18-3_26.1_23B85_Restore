@interface BuddyMigrationSourceLockscreenController
- (BuddyMigrationSourceLockscreenController)initWithProgressTitle:(id)title featureFlags:(id)flags deviceProvider:(id)provider stringProvider:(id)stringProvider;
- (void)deviceMigrationManager:(id)manager didCompleteWithError:(id)error;
@end

@implementation BuddyMigrationSourceLockscreenController

- (BuddyMigrationSourceLockscreenController)initWithProgressTitle:(id)title featureFlags:(id)flags deviceProvider:(id)provider stringProvider:(id)stringProvider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v16 = 0;
  objc_storeStrong(&v16, flags);
  v15 = 0;
  objc_storeStrong(&v15, provider);
  obj = 0;
  objc_storeStrong(&obj, stringProvider);
  v9 = selfCopy;
  selfCopy = 0;
  v13.receiver = v9;
  v13.super_class = BuddyMigrationSourceLockscreenController;
  v10 = [(BuddyMigrationLockscreenController *)&v13 initWithProgressTitle:location[0] featureFlags:v16 deviceProvider:v15];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    objc_storeStrong(selfCopy + 11, obj);
  }

  v11 = selfCopy;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
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
  v13.super_class = BuddyMigrationSourceLockscreenController;
  [(BuddyMigrationLockscreenController *)&v13 deviceMigrationManager:location[0] didCompleteWithError:v14];
  v5 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1001E03E4;
  v10 = &unk_10032B838;
  v11 = v14;
  v12 = selfCopy;
  dispatch_async(v5, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

@end