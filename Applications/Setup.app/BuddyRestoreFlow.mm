@interface BuddyRestoreFlow
+ (id)allowedFlowItems;
- (BuddyRestoreFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector;
- (id)controllerFollowingControllerClass:(Class)class requestedNext:(Class)next;
- (id)firstItem;
- (void)setPendingRestoreState:(id)state;
@end

@implementation BuddyRestoreFlow

- (BuddyRestoreFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v17 = 0;
  objc_storeStrong(&v17, delegate);
  v16 = 0;
  objc_storeStrong(&v16, starter);
  v15 = 0;
  objc_storeStrong(&v15, injector);
  v9 = selfCopy;
  selfCopy = 0;
  v14.receiver = v9;
  v14.super_class = BuddyRestoreFlow;
  v10 = [(BuddyRestoreFlow *)&v14 initWithNavigationController:location[0] flowDelegate:v17 flowStarter:v16 dependencyInjector:v15];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v11 = [NSArray arrayWithObjects:v20 count:3];
    [selfCopy setClassList:v11];
  }

  v12 = selfCopy;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v12;
}

+ (id)allowedFlowItems
{
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  return [NSArray arrayWithObjects:v5 count:3, a2, self];
}

- (void)setPendingRestoreState:(id)state
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
  objc_storeStrong(&selfCopy->_pendingRestoreState, location[0]);
  backupItem = [location[0] backupItem];
  [(BuddyRestoreFlow *)selfCopy setBackupItem:backupItem];

  objc_storeStrong(location, 0);
}

- (id)firstItem
{
  selfCopy = self;
  location[1] = a2;
  v6.receiver = self;
  v6.super_class = BuddyRestoreFlow;
  location[0] = [(BuddyRestoreFlow *)&v6 firstItem];
  if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyRestoreFlowItem])
  {
    v2 = location[0];
    backupItem = [(BuddyRestoreFlow *)selfCopy backupItem];
    [v2 setBackupItem:backupItem];
  }

  v4 = location[0];
  objc_storeStrong(location, 0);
  return v4;
}

- (id)controllerFollowingControllerClass:(Class)class requestedNext:(Class)next
{
  selfCopy = self;
  location[3] = a2;
  location[2] = class;
  location[1] = next;
  v8.receiver = self;
  v8.super_class = BuddyRestoreFlow;
  location[0] = [(BuddyRestoreFlow *)&v8 controllerFollowingControllerClass:class requestedNext:next];
  if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyRestoreFlowItem])
  {
    v4 = location[0];
    backupItem = [(BuddyRestoreFlow *)selfCopy backupItem];
    [v4 setBackupItem:backupItem];
  }

  v6 = location[0];
  objc_storeStrong(location, 0);
  return v6;
}

@end