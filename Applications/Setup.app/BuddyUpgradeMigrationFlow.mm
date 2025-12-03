@interface BuddyUpgradeMigrationFlow
+ (id)allowedFlowItems;
- (BuddyUpgradeMigrationFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector;
@end

@implementation BuddyUpgradeMigrationFlow

- (BuddyUpgradeMigrationFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector
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
  v14.super_class = BuddyUpgradeMigrationFlow;
  v10 = [(BuddyUpgradeMigrationFlow *)&v14 initWithNavigationController:location[0] flowDelegate:v17 flowStarter:v16 dependencyInjector:v15];
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

@end