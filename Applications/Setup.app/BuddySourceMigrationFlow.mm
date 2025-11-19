@interface BuddySourceMigrationFlow
+ (id)allowedFlowItems;
- (BuddySourceMigrationFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6;
- (void)configureFlowItem:(id)a3;
- (void)flowItemDone:(id)a3 nextItem:(id)a4;
- (void)presentWiFiPaneForFlowItem:(id)a3;
- (void)startFlowAnimated:(BOOL)a3;
@end

@implementation BuddySourceMigrationFlow

- (BuddySourceMigrationFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23 = 0;
  objc_storeStrong(&v23, a5);
  v22 = 0;
  objc_storeStrong(&v22, a6);
  v9 = v26;
  v26 = 0;
  v21.receiver = v9;
  v21.super_class = BuddySourceMigrationFlow;
  v10 = [(BuddySourceMigrationFlow *)&v21 initWithNavigationController:location[0] flowDelegate:v24 flowStarter:v23 dependencyInjector:v22];
  v26 = v10;
  objc_storeStrong(&v26, v10);
  if (v10)
  {
    v27 = objc_opt_class();
    v11 = [NSArray arrayWithObjects:&v27 count:1];
    [v26 setClassList:v11];

    v12 = [CoreTelephonyClient alloc];
    v13 = dispatch_get_global_queue(0, 0);
    v14 = [v12 initWithQueue:v13];
    v15 = *(v26 + 4);
    *(v26 + 4) = v14;

    v16 = [CTBuddyMigrationSourceFinishedStringProvider alloc];
    v17 = [(CTBuddyMigrationSourceFinishedStringProvider *)v16 initWithClient:*(v26 + 4)];
    v18 = *(v26 + 2);
    *(v26 + 2) = v17;
  }

  v19 = v26;
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v26, 0);
  return v19;
}

- (void)startFlowAnimated:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddySourceMigrationFlow;
  [(BuddySourceMigrationFlow *)&v4 startFlowAnimated:a3];
  v3 = [(BuddySourceMigrationFlow *)v7 buddyPreferencesExcludedFromBackup];
  [BuddyMigrationState removeFromPreferences:v3];
}

- (void)configureFlowItem:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = location[0];
    [(BuddySourceMigrationFlow *)v8 setInternalStatistics:0];
    [v6 setBuddyMigrationSourceFinishedStringProvider:v8->_buddyMigrationSourceFinishedStringProvider];
    objc_storeStrong(&v6, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = location[0];
      v3 = [(BuddySourceMigrationFlow *)v8 internalStatistics];
      [v5 setInternalStatistics:v3];

      [v5 setBuddyMigrationSourceFinishedStringProvider:v8->_buddyMigrationSourceFinishedStringProvider];
      objc_storeStrong(&v5, 0);
    }
  }

  v4.receiver = v8;
  v4.super_class = BuddySourceMigrationFlow;
  [(BuddySourceMigrationFlow *)&v4 configureFlowItem:location[0]];
  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)a3 nextItem:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = location[0];
    v15 = [v16 error];
    v5 = [v15 domain];
    v6 = 0;
    if ([v5 isEqualToString:@"MBErrorDomain"])
    {
      v6 = [v15 code] == 202;
    }

    v14 = v6;
    if (!v6)
    {
      if (v15)
      {
        v7 = [[BuddyMigrationSourceErrorController alloc] initWithError:v15];
      }

      else
      {
        v9 = [v16 internalStatistics];
        [(BuddySourceMigrationFlow *)v19 setInternalStatistics:v9];

        v7 = objc_alloc_init(BuddyMigrationSourceFinished);
      }

      v8 = v17;
      v17 = v7;
    }

    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !([(CoreTelephonyClient *)v19->_client isAnyPlanTransferableFromThisDeviceOrError:0]& 1))
    {
      v10 = objc_alloc_init(BuddyMigrationSourceEraseController);
      v11 = v17;
      v17 = v10;
    }
  }

  [v17 setDelegate:v19];
  v12.receiver = v19;
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

- (void)presentWiFiPaneForFlowItem:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddySourceMigrationFlow *)v7 delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(BuddySourceMigrationFlow *)v7 delegate];
    [v5 presentWiFiPaneForFlow:v7];
  }

  objc_storeStrong(location, 0);
}

@end