@interface BuddyMigrationSourceLockscreenController
- (BuddyMigrationSourceLockscreenController)initWithProgressTitle:(id)a3 featureFlags:(id)a4 deviceProvider:(id)a5 stringProvider:(id)a6;
- (void)deviceMigrationManager:(id)a3 didCompleteWithError:(id)a4;
@end

@implementation BuddyMigrationSourceLockscreenController

- (BuddyMigrationSourceLockscreenController)initWithProgressTitle:(id)a3 featureFlags:(id)a4 deviceProvider:(id)a5 stringProvider:(id)a6
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  obj = 0;
  objc_storeStrong(&obj, a6);
  v9 = v18;
  v18 = 0;
  v13.receiver = v9;
  v13.super_class = BuddyMigrationSourceLockscreenController;
  v10 = [(BuddyMigrationLockscreenController *)&v13 initWithProgressTitle:location[0] featureFlags:v16 deviceProvider:v15];
  v18 = v10;
  objc_storeStrong(&v18, v10);
  if (v10)
  {
    objc_storeStrong(v18 + 11, obj);
  }

  v11 = v18;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v11;
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
  v13.super_class = BuddyMigrationSourceLockscreenController;
  [(BuddyMigrationLockscreenController *)&v13 deviceMigrationManager:location[0] didCompleteWithError:v14];
  v5 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1001E03E4;
  v10 = &unk_10032B838;
  v11 = v14;
  v12 = v16;
  dispatch_async(v5, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

@end