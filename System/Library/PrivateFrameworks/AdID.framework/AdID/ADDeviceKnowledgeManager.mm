@interface ADDeviceKnowledgeManager
+ (id)sharedInstance;
- (ADDeviceKnowledgeManager)init;
- (BOOL)runTask:(id)a3;
- (id)minimumRefreshInterval;
- (void)checkOnTask:(id)a3 activity:(id)a4;
- (void)processDeviceData:(id)a3;
- (void)scheduleDeviceDataProcessing:(double)a3;
@end

@implementation ADDeviceKnowledgeManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ADDeviceKnowledgeManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__onceToken_4 != -1)
  {
    dispatch_once(&sharedInstance__onceToken_4, block);
  }

  v2 = sharedInstance__instance_4;

  return v2;
}

uint64_t __42__ADDeviceKnowledgeManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance__instance_4 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (ADDeviceKnowledgeManager)init
{
  v10.receiver = self;
  v10.super_class = ADDeviceKnowledgeManager;
  v2 = [(ADDeviceKnowledgeManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_taskIsRunning = 0;
    v4 = [(ADDeviceKnowledgeManager *)v2 minimumRefreshInterval];
    refreshInterval = v3->_refreshInterval;
    v3->_refreshInterval = v4;

    [MEMORY[0x277CE9600] registerTaskDelegate:v3 forRequestID:@"com.apple.ap.adprivacyd.deviceKnowledge"];
    v6 = [MEMORY[0x277CE9638] sharedInstance];
    v7 = [v6 unitTesting];

    if (v7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] WARNING: Check On Task has been disabled. If you see this outside of unit tests, Please file a radar...", objc_opt_class()];
      _ADLog();
    }

    else
    {
      v8 = [MEMORY[0x277CE9600] sharedInstance];
      [v8 checkOnTask:@"com.apple.ap.adprivacyd.deviceKnowledge"];
    }
  }

  return v3;
}

- (id)minimumRefreshInterval
{
  v2 = [MEMORY[0x277D42CB0] sharedAssetManagerCoordinator];
  v3 = [v2 assetManagerForPlacementType:0 assetManagerType:0];
  v4 = [v2 assetManagerForPlacementType:0 assetManagerType:1];
  v5 = *MEMORY[0x277D42D08];
  v6 = [v3 doubleValueForFactor:*MEMORY[0x277D42D08]];
  v7 = [v4 doubleValueForFactor:v5];
  v8 = MEMORY[0x277CCABB0];
  [v6 doubleValue];
  v10 = v9;
  [v7 doubleValue];
  if (v10 < v11)
  {
    v11 = v10;
  }

  v12 = [v8 numberWithDouble:v11];

  return v12;
}

- (BOOL)runTask:(id)a3
{
  v5 = a3;
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = [v5 requestIdentifier];
  v9 = [v6 stringWithFormat:@"[%@]: Received request to run background task %@", v7, v8];
  _ADLog();

  v10 = [v5 requestIdentifier];
  LODWORD(v7) = [v10 isEqualToString:@"com.apple.ap.adprivacyd.deviceKnowledge"];

  v11 = 0;
  if (v7)
  {
    v12 = self;
    objc_sync_enter(v12);
    if (v12->_taskIsRunning)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] ERROR: We should not be running the task twice at the same time.", objc_opt_class()];
      _ADLog();

      objc_sync_exit(v12);
      v11 = 0;
    }

    else
    {
      v12->_taskIsRunning = 1;
      objc_sync_exit(v12);

      v14 = +[ADAdTrackingSchedulingManager sharedInstance];
      v15 = [v14 isAdEnabledLocality];

      if (v15)
      {
        objc_storeStrong(&v12->_xpc_task, a3);
        if (([(ADBackgroundTaskRequest *)v12->_xpc_task continueTask]& 1) == 0)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] ERROR: Unable to inform the system we need to run Device Knowledge asynchronously. Please file a radar...", objc_opt_class()];
          _ADLog();
        }

        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Taking an XPC transaction for %@", objc_opt_class(), @"Device Knowledge In Progress"];
        _ADLog();

        takeXPCTransaction();
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __36__ADDeviceKnowledgeManager_runTask___block_invoke;
        v21[3] = &unk_278C57E10;
        v21[4] = v12;
        [(ADDeviceKnowledgeManager *)v12 processDeviceData:v21];
      }

      else
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: This is not an Ad enabled country. Skipping Device Knoweldge.", objc_opt_class()];
        _ADLog();

        [(ADDeviceKnowledgeManager *)v12 scheduleDeviceDataProcessing:86400.0];
        v19 = v12;
        objc_sync_enter(v19);
        v12->_taskIsRunning = 0;
        objc_sync_exit(v19);
      }

      v11 = 1;
    }
  }

  return v11;
}

uint64_t __36__ADDeviceKnowledgeManager_runTask___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 16) taskIsDeferred] & 1) == 0)
  {
    if ([*(*(a1 + 32) + 16) finishTask])
    {
      v2 = *(a1 + 32);
      v3 = v2[3];
      if (v3 && ([v3 doubleValue], v2 = *(a1 + 32), v4 > 0.0))
      {
        [v2[3] doubleValue];
      }

      else
      {
        v5 = 86400.0;
      }

      [v2 scheduleDeviceDataProcessing:v5];
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] ERROR Unable to inform the system we have completed the Device Knowledge task. Please file a radar...", objc_opt_class()];
      _ADLog();
    }
  }

  v8 = *(a1 + 32);
  objc_sync_enter(v8);
  *(*(a1 + 32) + 8) = 0;
  objc_sync_exit(v8);

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Releasing an XPC transaction for %@", objc_opt_class(), @"Device Knowledge In Progress"];
  _ADLog();

  return releaseXPCTransaction();
}

- (void)checkOnTask:(id)a3 activity:(id)a4
{
  activity = a4;
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = [v6 stringWithFormat:@"[%@]: Checking in on task: %@", objc_opt_class(), v7];
  _ADLog();

  LODWORD(v8) = [v7 isEqualToString:@"com.apple.ap.adprivacyd.deviceKnowledge"];
  v9 = activity;
  if (v8)
  {
    v10 = xpc_activity_copy_criteria(activity);
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    if (v10)
    {
      v13 = [v11 stringWithFormat:@"[%@]: Device Knowledge task already scheduled: %@", v12, v10];
      _ADLog();
    }

    else
    {
      v14 = [v11 stringWithFormat:@"[%@]: First checkin for Device Knowledge task. Rescheduling...", v12];
      _ADLog();

      [(ADDeviceKnowledgeManager *)self scheduleDeviceDataProcessing:30.0];
    }

    v9 = activity;
  }
}

- (void)scheduleDeviceDataProcessing:(double)a3
{
  if (MGGetBoolAnswer())
  {
    v4 = [MEMORY[0x277CE9630] sharedInstance];
    v5 = [v4 stringForKey:@"DeviceKnowledgeScheduleOverride"];

    if (v5 && ([v5 isEqualToString:&stru_285107440] & 1) == 0)
    {
      [v5 doubleValue];
      a3 = v6;
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Overriding reschedule period to %f seconds", objc_opt_class(), *&v6];
      _ADLog();
    }
  }

  v11 = [objc_alloc(MEMORY[0x277CE95F8]) initWithID:@"com.apple.ap.adprivacyd.deviceKnowledge"];
  [v11 setDelay:a3];
  [v11 setAllowBattery:0];
  [v11 setIsCPUIntensive:1];
  [v11 setRequiresNetworkConnectivity:0];
  [v11 setRequireBuddyComplete:1];
  [v11 setRequireClassCData:1];
  v8 = [MEMORY[0x277CCACA8] stringWithCString:*MEMORY[0x277D86348] encoding:4];
  [v11 setPriority:v8];

  [v11 setGracePeriod:*MEMORY[0x277D86298]];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Scheduling device knowledge update to run.", objc_opt_class()];
  _ADLog();

  v10 = [MEMORY[0x277CE9600] sharedInstance];
  [v10 addBackgroundTask:v11];
}

- (void)processDeviceData:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CE96B8] workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ADDeviceKnowledgeManager_processDeviceData___block_invoke;
  v7[3] = &unk_278C57E60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

void __46__ADDeviceKnowledgeManager_processDeviceData___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D42CB0] sharedAssetManagerCoordinator];
  v3 = MEMORY[0x277CBEA60];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
  v5 = [v3 arrayWithObjects:{v4, 0}];
  [v2 refreshTrialClientForPlacementTypes:v5];

  v6 = [MEMORY[0x277D42CB0] sharedAssetManagerCoordinator];
  [v6 setRespondToRefreshNotification:0];

  v7 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v7 postNotificationName:*MEMORY[0x277D42D00] object:0];

  v8 = objc_alloc(MEMORY[0x277D42CB8]);
  v9 = [*(*(a1 + 32) + 16) activity];
  v10 = [v8 initWithActivity:v9];

  [v10 calculateAllFeatures:*(a1 + 40)];
}

@end