@interface ATXAppSessionModeLoggingHelper
- (BOOL)shouldCoalesceLaunch:(id)launch nextLaunch:(id)nextLaunch;
- (id)appLaunchesSinceDate:(id)date;
- (id)coalesceAppLaunches:(id)launches;
- (id)stripStoreEvent:(id)event;
@end

@implementation ATXAppSessionModeLoggingHelper

- (id)appLaunchesSinceDate:(id)date
{
  dateCopy = date;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CBEAA8] now];
  if (dateCopy && [dateCopy compare:v6] == -1)
  {
    v7 = objc_alloc_init(MEMORY[0x277CEBBE0]);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__ATXAppSessionModeLoggingHelper_appLaunchesSinceDate___block_invoke;
    v14[3] = &unk_278596DC8;
    v15 = v5;
    [v7 enumerateAppLaunchSessionsBetweenStartDate:dateCopy endDate:v6 shouldReverse:0 bundleIDFilter:0 block:v14];
  }

  v8 = [(ATXAppSessionModeLoggingHelper *)self coalesceAppLaunches:v5];
  v9 = v8;
  v10 = MEMORY[0x277CBEBF8];
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  bpsPublisher = [v11 bpsPublisher];

  return bpsPublisher;
}

- (id)coalesceAppLaunches:(id)launches
{
  v33 = *MEMORY[0x277D85DE8];
  launchesCopy = launches;
  v23 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = launchesCopy;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  obj = v5;
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v5 = 0;
  v8 = *v29;
  v22 = *v29;
  do
  {
    v9 = 0;
    v24 = v7;
    do
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v28 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      if (v5)
      {
        if ([(ATXAppSessionModeLoggingHelper *)self shouldCoalesceLaunch:v5 nextLaunch:v10])
        {
          v26 = objc_alloc(MEMORY[0x277CEBBD8]);
          bundleID = [v5 bundleID];
          parentBundleID = [v5 parentBundleID];
          extensionHostID = [v5 extensionHostID];
          appSessionStartTime = [v5 appSessionStartTime];
          appSessionEndTime = [v10 appSessionEndTime];
          [v5 launchReason];
          v18 = v17 = self;
          v27 = [v26 initWithBundleId:bundleID type:1 parentBundleID:parentBundleID extensionHostID:extensionHostID appSessionStartTime:appSessionStartTime appSessionEndTime:appSessionEndTime launchReason:v18];

          self = v17;
          v7 = v24;

          v8 = v22;
          v5 = v27;
        }

        else
        {
          [v23 addObject:v5];
          v19 = v10;

          v5 = v19;
        }
      }

      else
      {
        v5 = v10;
      }

      objc_autoreleasePoolPop(v11);
      ++v9;
    }

    while (v7 != v9);
    v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v7);

  if (v5)
  {
    [v23 addObject:v5];
LABEL_15:
  }

  v20 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)shouldCoalesceLaunch:(id)launch nextLaunch:(id)nextLaunch
{
  nextLaunchCopy = nextLaunch;
  launchCopy = launch;
  bundleID = [launchCopy bundleID];
  bundleID2 = [nextLaunchCopy bundleID];
  v9 = [bundleID isEqualToString:bundleID2];

  appSessionStartTime = [nextLaunchCopy appSessionStartTime];

  appSessionEndTime = [launchCopy appSessionEndTime];

  [appSessionStartTime timeIntervalSinceDate:appSessionEndTime];
  if (v12 < 10.0)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)stripStoreEvent:(id)event
{
  v3 = [event filterWithIsIncluded:&__block_literal_global_247];
  v4 = [v3 mapWithTransform:&__block_literal_global_23_9];

  return v4;
}

BOOL __50__ATXAppSessionModeLoggingHelper_stripStoreEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = v2 != 0;

  return v3;
}

@end