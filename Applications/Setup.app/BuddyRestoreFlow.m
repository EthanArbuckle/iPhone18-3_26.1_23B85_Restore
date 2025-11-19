@interface BuddyRestoreFlow
+ (id)allowedFlowItems;
- (BuddyRestoreFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6;
- (id)controllerFollowingControllerClass:(Class)a3 requestedNext:(Class)a4;
- (id)firstItem;
- (void)setPendingRestoreState:(id)a3;
@end

@implementation BuddyRestoreFlow

- (BuddyRestoreFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v15 = 0;
  objc_storeStrong(&v15, a6);
  v9 = v19;
  v19 = 0;
  v14.receiver = v9;
  v14.super_class = BuddyRestoreFlow;
  v10 = [(BuddyRestoreFlow *)&v14 initWithNavigationController:location[0] flowDelegate:v17 flowStarter:v16 dependencyInjector:v15];
  v19 = v10;
  objc_storeStrong(&v19, v10);
  if (v10)
  {
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v11 = [NSArray arrayWithObjects:v20 count:3];
    [v19 setClassList:v11];
  }

  v12 = v19;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v19, 0);
  return v12;
}

+ (id)allowedFlowItems
{
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  return [NSArray arrayWithObjects:v5 count:3, a2, a1];
}

- (void)setPendingRestoreState:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v5->_pendingRestoreState, location[0]);
  v3 = [location[0] backupItem];
  [(BuddyRestoreFlow *)v5 setBackupItem:v3];

  objc_storeStrong(location, 0);
}

- (id)firstItem
{
  v8 = self;
  location[1] = a2;
  v6.receiver = self;
  v6.super_class = BuddyRestoreFlow;
  location[0] = [(BuddyRestoreFlow *)&v6 firstItem];
  if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyRestoreFlowItem])
  {
    v2 = location[0];
    v3 = [(BuddyRestoreFlow *)v8 backupItem];
    [v2 setBackupItem:v3];
  }

  v4 = location[0];
  objc_storeStrong(location, 0);
  return v4;
}

- (id)controllerFollowingControllerClass:(Class)a3 requestedNext:(Class)a4
{
  v10 = self;
  location[3] = a2;
  location[2] = a3;
  location[1] = a4;
  v8.receiver = self;
  v8.super_class = BuddyRestoreFlow;
  location[0] = [(BuddyRestoreFlow *)&v8 controllerFollowingControllerClass:a3 requestedNext:a4];
  if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyRestoreFlowItem])
  {
    v4 = location[0];
    v5 = [(BuddyRestoreFlow *)v10 backupItem];
    [v4 setBackupItem:v5];
  }

  v6 = location[0];
  objc_storeStrong(location, 0);
  return v6;
}

@end