@interface BuddyAppleIDRestoreFlow
+ (id)allowedFlowItems;
- (BuddyAppleIDRestoreFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector;
@end

@implementation BuddyAppleIDRestoreFlow

- (BuddyAppleIDRestoreFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v16 = 0;
  objc_storeStrong(&v16, delegate);
  v15 = 0;
  objc_storeStrong(&v15, starter);
  v14 = 0;
  objc_storeStrong(&v14, injector);
  v9 = selfCopy;
  selfCopy = 0;
  v13.receiver = v9;
  v13.super_class = BuddyAppleIDRestoreFlow;
  selfCopy = [(BuddyAppleIDRestoreFlow *)&v13 initWithNavigationController:location[0] flowDelegate:v16 flowStarter:v15 dependencyInjector:v14];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v19 count:2];
    [selfCopy setClassList:v10];
  }

  v11 = selfCopy;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

+ (id)allowedFlowItems
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  return [NSArray arrayWithObjects:v3 count:2];
}

@end