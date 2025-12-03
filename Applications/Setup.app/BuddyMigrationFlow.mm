@interface BuddyMigrationFlow
+ (id)allowedFlowItems;
- (BuddyMigrationFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector;
- (id)controllerFollowingControllerClass:(Class)class requestedNext:(Class)next;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)startFlowAnimated:(BOOL)animated;
@end

@implementation BuddyMigrationFlow

- (BuddyMigrationFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector
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
  v14.super_class = BuddyMigrationFlow;
  v10 = [(BuddyMigrationFlow *)&v14 initWithNavigationController:location[0] flowDelegate:v17 flowStarter:v16 dependencyInjector:v15];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v11 = [NSArray arrayWithObjects:v20 count:4];
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

- (void)startFlowAnimated:(BOOL)animated
{
  selfCopy = self;
  v5 = a2;
  animatedCopy = animated;
  v3.receiver = self;
  v3.super_class = BuddyMigrationFlow;
  [(BuddyMigrationFlow *)&v3 startFlowAnimated:animated];
}

- (id)controllerFollowingControllerClass:(Class)class requestedNext:(Class)next
{
  selfCopy = self;
  v17 = a2;
  classCopy = class;
  nextCopy = next;
  miscState = [(BuddyMigrationFlow *)self miscState];
  migrationManager = [(BuddyMiscState *)miscState migrationManager];
  willMigrate = [(BuddyTargetDeviceMigrationManager *)migrationManager willMigrate];

  v14 = willMigrate & 1;
  if ((willMigrate & 1) != 0 || classCopy != objc_opt_class())
  {
    v11.receiver = selfCopy;
    v11.super_class = BuddyMigrationFlow;
    v19 = [(BuddyMigrationFlow *)&v11 controllerFollowingControllerClass:classCopy requestedNext:nextCopy];
  }

  else
  {
    v13 = [NSError errorWithDomain:@"MBErrorDomain" code:202 userInfo:0];
    location = [[BuddyMigrationTargetErrorController alloc] initWithError:v13];
    miscState2 = [(BuddyMigrationFlow *)selfCopy miscState];
    migrationManager2 = [(BuddyMiscState *)miscState2 migrationManager];
    [location setForceErase:{-[BuddyTargetDeviceMigrationManager hasTransferredData](migrationManager2, "hasTransferredData")}];

    [(BuddyMigrationFlow *)selfCopy configureFlowItem:location];
    v19 = location;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v13, 0);
  }

  v9 = v19;

  return v9;
}

+ (id)allowedFlowItems
{
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  return [NSArray arrayWithObjects:v5 count:5, a2, self];
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = location[0];
  miscState = [(BuddyMigrationFlow *)selfCopy miscState];
  migrationManager = [(BuddyMiscState *)miscState migrationManager];
  v3[2](v3, [(BuddyTargetDeviceMigrationManager *)migrationManager migrationInProgressOrCompleted]);

  objc_storeStrong(location, 0);
}

@end