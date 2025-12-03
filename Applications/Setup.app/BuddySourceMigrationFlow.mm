@interface BuddySourceMigrationFlow
+ (id)allowedFlowItems;
- (BuddySourceMigrationFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector;
- (void)configureFlowItem:(id)item;
- (void)flowItemDone:(id)done nextItem:(id)item;
- (void)presentWiFiPaneForFlowItem:(id)item;
- (void)startFlowAnimated:(BOOL)animated;
@end

@implementation BuddySourceMigrationFlow

- (BuddySourceMigrationFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v24 = 0;
  objc_storeStrong(&v24, delegate);
  v23 = 0;
  objc_storeStrong(&v23, starter);
  v22 = 0;
  objc_storeStrong(&v22, injector);
  v9 = selfCopy;
  selfCopy = 0;
  v21.receiver = v9;
  v21.super_class = BuddySourceMigrationFlow;
  v10 = [(BuddySourceMigrationFlow *)&v21 initWithNavigationController:location[0] flowDelegate:v24 flowStarter:v23 dependencyInjector:v22];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    v27 = objc_opt_class();
    v11 = [NSArray arrayWithObjects:&v27 count:1];
    [selfCopy setClassList:v11];

    v12 = [CoreTelephonyClient alloc];
    v13 = dispatch_get_global_queue(0, 0);
    v14 = [v12 initWithQueue:v13];
    v15 = *(selfCopy + 4);
    *(selfCopy + 4) = v14;

    v16 = [CTBuddyMigrationSourceFinishedStringProvider alloc];
    v17 = [(CTBuddyMigrationSourceFinishedStringProvider *)v16 initWithClient:*(selfCopy + 4)];
    v18 = *(selfCopy + 2);
    *(selfCopy + 2) = v17;
  }

  v19 = selfCopy;
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v19;
}

- (void)startFlowAnimated:(BOOL)animated
{
  selfCopy = self;
  v6 = a2;
  animatedCopy = animated;
  v4.receiver = self;
  v4.super_class = BuddySourceMigrationFlow;
  [(BuddySourceMigrationFlow *)&v4 startFlowAnimated:animated];
  buddyPreferencesExcludedFromBackup = [(BuddySourceMigrationFlow *)selfCopy buddyPreferencesExcludedFromBackup];
  [BuddyMigrationState removeFromPreferences:buddyPreferencesExcludedFromBackup];
}

- (void)configureFlowItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = location[0];
    [(BuddySourceMigrationFlow *)selfCopy setInternalStatistics:0];
    [v6 setBuddyMigrationSourceFinishedStringProvider:selfCopy->_buddyMigrationSourceFinishedStringProvider];
    objc_storeStrong(&v6, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = location[0];
      internalStatistics = [(BuddySourceMigrationFlow *)selfCopy internalStatistics];
      [v5 setInternalStatistics:internalStatistics];

      [v5 setBuddyMigrationSourceFinishedStringProvider:selfCopy->_buddyMigrationSourceFinishedStringProvider];
      objc_storeStrong(&v5, 0);
    }
  }

  v4.receiver = selfCopy;
  v4.super_class = BuddySourceMigrationFlow;
  [(BuddySourceMigrationFlow *)&v4 configureFlowItem:location[0]];
  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)done nextItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  v17 = 0;
  objc_storeStrong(&v17, item);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = location[0];
    error = [v16 error];
    domain = [error domain];
    v6 = 0;
    if ([domain isEqualToString:@"MBErrorDomain"])
    {
      v6 = [error code] == 202;
    }

    v14 = v6;
    if (!v6)
    {
      if (error)
      {
        v7 = [[BuddyMigrationSourceErrorController alloc] initWithError:error];
      }

      else
      {
        internalStatistics = [v16 internalStatistics];
        [(BuddySourceMigrationFlow *)selfCopy setInternalStatistics:internalStatistics];

        v7 = objc_alloc_init(BuddyMigrationSourceFinished);
      }

      v8 = v17;
      v17 = v7;
    }

    objc_storeStrong(&error, 0);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !([(CoreTelephonyClient *)selfCopy->_client isAnyPlanTransferableFromThisDeviceOrError:0]& 1))
    {
      v10 = objc_alloc_init(BuddyMigrationSourceEraseController);
      v11 = v17;
      v17 = v10;
    }
  }

  [v17 setDelegate:selfCopy];
  v12.receiver = selfCopy;
  v12.super_class = BuddySourceMigrationFlow;
  [(BuddySourceMigrationFlow *)&v12 flowItemDone:location[0] nextItem:v17];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

+ (id)allowedFlowItems
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  return [NSArray arrayWithObjects:v3 count:4];
}

- (void)presentWiFiPaneForFlowItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  delegate = [(BuddySourceMigrationFlow *)selfCopy delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(BuddySourceMigrationFlow *)selfCopy delegate];
    [delegate2 presentWiFiPaneForFlow:selfCopy];
  }

  objc_storeStrong(location, 0);
}

@end