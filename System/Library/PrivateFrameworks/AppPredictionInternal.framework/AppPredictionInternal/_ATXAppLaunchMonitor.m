@interface _ATXAppLaunchMonitor
+ (id)predictionUpdateBlacklistedBundleIds;
+ (int)petClipCaptureTypeFromDuetClipLaunchReason:(int)a3;
+ (void)_logAppLaunch:(id)a3 from:(unint64_t)a4;
+ (void)mergeAppLaunches:(id)a3 andBacklightTransitions:(id)a4 callingAppLaunchBlock:(id)a5;
- (BOOL)isValidAppLaunchBundleId:(id)a3;
- (_ATXAppLaunchMonitor)initWithAppInfoManager:(id)a3 appLaunchHistogramManager:(id)a4 appLaunchSequenceManager:(id)a5 appDailyDose:(id)a6 appInFocusStream:(id)a7 displayOnIntervalStream:(id)a8 contextBuilder:(id)a9 tracker:(id)a10;
- (_ATXAppLaunchMonitor)initWithAppInfoManager:(id)a3 appLaunchHistogramManager:(id)a4 appLaunchSequenceManager:(id)a5 appDailyDose:(id)a6 appInFocusStream:(id)a7 displayOnIntervalStream:(id)a8 contextBuilder:(id)a9 tracker:(id)a10 predictionUpdateBlacklist:(id)a11 heroPoiManager:(id)a12;
- (_ATXAppLaunchMonitor)initWithInMemoryStore;
- (id)appIconState;
- (id)appInfoManager;
- (id)appLaunchHistogramManager;
- (id)appLaunchSequenceManager;
- (id)dailyDose;
- (id)stopDeltaRecording;
- (void)_addLaunchWithLockWitness:(id)a3 bundleId:(id)a4 date:(id)a5 timeZone:(id)a6 reason:(id)a7 context:(id)a8;
- (void)_logAppLaunchOverallCaptureRateForBundleId:(id)a3 launchReason:(id)a4;
- (void)_logAppPanelCaptureRateForBundleId:(id)a3;
- (void)_logAppPanelLaunchRatioForBundleId:(id)a3 launchReason:(id)a4;
- (void)_syncForTests;
- (void)addLaunchWithBundleId:(id)a3 date:(id)a4 timeZone:(id)a5 reason:(id)a6;
- (void)dealloc;
- (void)handleAppOrClipLaunchNotificationForBundleId:(id)a3 poweringAppClipBundleId:(id)a4 urlHash:(id)a5 isClip:(BOOL)a6 appLaunchReason:(id)a7 appClipLaunchReason:(int)a8 date:(id)a9;
- (void)handleBacklightChangeNotificationWithValue:(int)a3 date:(id)a4;
- (void)handleRemoteAppLaunch:(id)a3 context:(id)a4;
- (void)logAppLaunchForBundleId:(id)a3 launchReason:(id)a4;
- (void)processDonationsForPreviousAppSessionEndIfNeeded;
- (void)registerForAppChange;
- (void)registerForAppClipLaunch;
- (void)registerForBacklightChange;
- (void)start;
- (void)swapAppInFocusStream:(id)a3 andDisplayOnIntervalStream:(id)a4;
- (void)updateLaunchHistoryFromStream:(double)a3 callback:(id)a4;
@end

@implementation _ATXAppLaunchMonitor

- (id)appIconState
{
  appIconState = self->_appIconState;
  if (!appIconState)
  {
    v4 = +[_ATXAppIconState sharedInstance];
    v5 = self->_appIconState;
    self->_appIconState = v4;

    appIconState = self->_appIconState;
  }

  return appIconState;
}

+ (id)predictionUpdateBlacklistedBundleIds
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.ClipViewService", 0}];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (_ATXAppLaunchMonitor)initWithInMemoryStore
{
  v19 = [[_ATXAppInfoManager alloc] initWithInMemoryStore];
  v3 = [ATXPredictionContextBuilder alloc];
  v4 = [MEMORY[0x277D41BF8] sharedInstance];
  v5 = objc_opt_new();
  v6 = [[ATXAmbientLightMonitor alloc] initWithoutMonitoring];
  v18 = [(ATXPredictionContextBuilder *)v3 initWithAppInfoManager:v19 locationManager:v4 motionManagerWrapper:v5 ambientLightMonitor:v6 deviceStateMonitorClass:objc_opt_class() contextSourcesInitialized:1];

  v7 = [[_ATXAppLaunchHistogramManager alloc] initWithInMemoryStore];
  v8 = [[_ATXAppLaunchSequenceManager alloc] initWithInMemoryStore];
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v13 = self;
  v14 = [objc_opt_class() predictionUpdateBlacklistedBundleIds];
  v15 = objc_opt_new();
  v16 = [(_ATXAppLaunchMonitor *)v13 initWithAppInfoManager:v19 appLaunchHistogramManager:v7 appLaunchSequenceManager:v8 appDailyDose:v9 appInFocusStream:v10 displayOnIntervalStream:v11 contextBuilder:v18 tracker:v12 predictionUpdateBlacklist:v14 heroPoiManager:v15];

  return v16;
}

- (_ATXAppLaunchMonitor)initWithAppInfoManager:(id)a3 appLaunchHistogramManager:(id)a4 appLaunchSequenceManager:(id)a5 appDailyDose:(id)a6 appInFocusStream:(id)a7 displayOnIntervalStream:(id)a8 contextBuilder:(id)a9 tracker:(id)a10
{
  v17 = a10;
  v27 = a9;
  v28 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [objc_opt_class() predictionUpdateBlacklistedBundleIds];
  v24 = objc_opt_new();
  v26 = [(_ATXAppLaunchMonitor *)self initWithAppInfoManager:v22 appLaunchHistogramManager:v21 appLaunchSequenceManager:v20 appDailyDose:v19 appInFocusStream:v18 displayOnIntervalStream:v28 contextBuilder:v27 tracker:v17 predictionUpdateBlacklist:v23 heroPoiManager:v24];

  return v26;
}

- (_ATXAppLaunchMonitor)initWithAppInfoManager:(id)a3 appLaunchHistogramManager:(id)a4 appLaunchSequenceManager:(id)a5 appDailyDose:(id)a6 appInFocusStream:(id)a7 displayOnIntervalStream:(id)a8 contextBuilder:(id)a9 tracker:(id)a10 predictionUpdateBlacklist:(id)a11 heroPoiManager:(id)a12
{
  v17 = a3;
  v47 = a4;
  v18 = a4;
  v19 = a6;
  v20 = a8;
  v56 = a5;
  v55 = v19;
  v54 = a7;
  v53 = a8;
  v52 = a9;
  v51 = a10;
  v50 = a11;
  v21 = a12;
  v57.receiver = self;
  v57.super_class = _ATXAppLaunchMonitor;
  v22 = [(_ATXAppLaunchMonitor *)&v57 init];
  if (v22)
  {
    v45 = v18;
    v49 = v17;
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create("com.apple.duetexpertcenter.AppPredictionExpert.AppLaunchHistory", v23);
    appLaunchHistoryQueue = v22->_appLaunchHistoryQueue;
    v22->_appLaunchHistoryQueue = v24;

    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_attr_make_with_qos_class(v26, QOS_CLASS_BACKGROUND, 0);
    v28 = dispatch_queue_create("com.apple.duetexpertcenter.AppPredictionExpert.AppLaunchHistory.logging", v27);
    logQueue = v22->_logQueue;
    v22->_logQueue = v28;

    v30 = objc_opt_new();
    appClipChangeListener = v22->_appClipChangeListener;
    v22->_appClipChangeListener = v30;

    v32 = objc_opt_new();
    objc_storeStrong(v32 + 2, a7);
    objc_storeStrong(v32 + 3, v20);
    objc_storeStrong(v32 + 4, v19);
    objc_storeStrong(v32 + 5, a3);
    objc_storeStrong(v32 + 6, v47);
    objc_storeStrong(v32 + 7, a5);
    objc_storeStrong(v32 + 8, a9);
    objc_storeStrong(v32 + 9, a12);
    v33 = [objc_alloc(MEMORY[0x277D42610]) initWithGuardedData:v32 serialQueue:v22->_appLaunchHistoryQueue];

    history = v22->_history;
    v22->_history = v33;

    v35 = objc_opt_new();
    v36 = objc_opt_new();
    v37 = v35[2];
    v35[2] = v36;

    v38 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v35];
    cdContext = v22->_cdContext;
    v22->_cdContext = v38;

    objc_storeStrong(&v22->_tracker, a10);
    v40 = objc_alloc(MEMORY[0x277CBEBD0]);
    v41 = [v40 initWithSuiteName:*MEMORY[0x277CEBD00]];
    userDefaults = v22->_userDefaults;
    v22->_userDefaults = v41;

    objc_storeStrong(&v22->_predictionUpdateBlacklist, a11);
    v43 = __atxlog_handle_default();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchMonitor initWithAppInfoManager:appLaunchHistogramManager:appLaunchSequenceManager:appDailyDose:appInFocusStream:displayOnIntervalStream:contextBuilder:tracker:predictionUpdateBlacklist:heroPoiManager:];
    }

    v17 = v49;
    v18 = v45;
  }

  return v22;
}

- (void)start
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 stringByAppendingString:@"-start"];
  v6 = [v5 UTF8String];
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);
  v9 = dispatch_queue_create(v6, v8);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29___ATXAppLaunchMonitor_start__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_async(v9, block);
  [(_PASLock *)self->_cdContext runWithLockAcquired:&__block_literal_global_97];
  [(_ATXAppLaunchMonitor *)self registerForAppChange];
  [(_ATXAppLaunchMonitor *)self registerForAppClipLaunch];
  [(_ATXAppLaunchMonitor *)self registerForBacklightChange];
}

+ (void)mergeAppLaunches:(id)a3 andBacklightTransitions:(id)a4 callingAppLaunchBlock:(id)a5
{
  v29 = a3;
  v7 = a4;
  v8 = a5;
  v9 = 0x277CBE000uLL;
  if ([v29 count])
  {
    v10 = 0;
    v11 = 0;
    v28 = (v8 + 2);
    do
    {
      if (v11 >= [v7 count])
      {
        break;
      }

      v12 = [v29 objectAtIndexedSubscript:v10];
      v13 = [v7 objectAtIndexedSubscript:v11];
      v14 = [v12 appSessionStartTime];
      v15 = [v14 earlierDate:v13];
      v16 = [v12 appSessionStartTime];
      v17 = [v15 isEqualToDate:v16];

      if (v17)
      {
        v18 = [v12 bundleID];
        v19 = [v12 appSessionStartTime];
        v20 = [MEMORY[0x277CBEBB0] defaultTimeZone];
        v21 = [v12 launchReason];
        v8[2](v8, v18, v19, v20, v21, 1);

        ++v10;
      }

      else
      {
        v8[2](v8, 0, v13, 0, 0, 0);
        ++v11;
      }

      v9 = 0x277CBE000;
    }

    while (v10 < [v29 count]);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  while (v10 < [v29 count])
  {
    v22 = [v29 objectAtIndexedSubscript:v10];
    v23 = [v22 bundleID];
    v24 = [v22 appSessionStartTime];
    v25 = [*(v9 + 2992) defaultTimeZone];
    v26 = [v22 launchReason];
    v8[2](v8, v23, v24, v25, v26, 1);

    v9 = 0x277CBE000;
    ++v10;
  }

  for (; v11 < [v7 count]; ++v11)
  {
    v27 = [v7 objectAtIndexedSubscript:v11];
    v8[2](v8, 0, v27, 0, 0, 0);
  }
}

- (void)updateLaunchHistoryFromStream:(double)a3 callback:(id)a4
{
  v7 = a4;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v9 stringByAppendingString:@"-update"];
  v11 = [v10 UTF8String];
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_UTILITY, 0);
  v14 = dispatch_queue_create(v11, v13);

  sel_getName(a2);
  v15 = os_transaction_create();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63___ATXAppLaunchMonitor_updateLaunchHistoryFromStream_callback___block_invoke;
  v18[3] = &unk_27859BBC0;
  v21 = a3;
  v19 = v15;
  v20 = v7;
  v18[4] = self;
  v16 = v15;
  v17 = v7;
  dispatch_async(v14, v18);
}

- (void)registerForAppChange
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x277CFE338] keyPathForAppDataDictionary];
  v4 = [MEMORY[0x277CFE360] predicateForChangeAtKeyPath:v3];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __44___ATXAppLaunchMonitor_registerForAppChange__block_invoke;
  aBlock[3] = &unk_27859BC38;
  objc_copyWeak(&v14, &location);
  v5 = v3;
  v13 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.duetexpertd.appchangeprediction" contextualPredicate:v4 clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:v6];
  cdContext = self->_cdContext;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44___ATXAppLaunchMonitor_registerForAppChange__block_invoke_2;
  v10[3] = &unk_27859BC60;
  v9 = v7;
  v11 = v9;
  [(_PASLock *)cdContext runWithLockAcquired:v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)registerForAppClipLaunch
{
  objc_initWeak(&location, self);
  appClipChangeListener = self->_appClipChangeListener;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48___ATXAppLaunchMonitor_registerForAppClipLaunch__block_invoke;
  v4[3] = &unk_278598070;
  objc_copyWeak(&v5, &location);
  [(ATXAppClipUsageDuetContextUpdateListener *)appClipChangeListener startListeningWithCallback:v4 clientId:@"_ATXAppLaunchMonitor"];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

+ (int)petClipCaptureTypeFromDuetClipLaunchReason:(int)a3
{
  if ((a3 - 1) >= 9)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (BOOL)isValidAppLaunchBundleId:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 isEqualToString:@"unknown"] & 1) == 0)
  {
    v5 = [v4 hasPrefix:@"com.apple.springboard."] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)registerForBacklightChange
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x277CFE338] keyPathForBacklightOnStatus];
  v4 = [MEMORY[0x277CFE360] predicateForChangeAtKeyPath:v3];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __50___ATXAppLaunchMonitor_registerForBacklightChange__block_invoke;
  aBlock[3] = &unk_27859BC38;
  objc_copyWeak(&v14, &location);
  v5 = v3;
  v13 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [MEMORY[0x277CFE350] localNonWakingRegistrationWithIdentifier:@"com.apple.duetexpertd.screensleepchangeprediction" contextualPredicate:v4 clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:v6];
  cdContext = self->_cdContext;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50___ATXAppLaunchMonitor_registerForBacklightChange__block_invoke_3;
  v10[3] = &unk_27859BC60;
  v9 = v7;
  v11 = v9;
  [(_PASLock *)cdContext runWithLockAcquired:v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)processDonationsForPreviousAppSessionEndIfNeeded
{
  if ([(NSUserDefaults *)self->_userDefaults BOOLForKey:@"ATXAppLaunchMonitor_LastLaunchWasHomescreen"])
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Last app launch was the homescreen. Not going to process donations for previous app session end.", buf, 2u);
    }
  }

  else
  {
    v4 = +[_ATXAppPredictor sharedInstance];
    v5 = [v4 appIntentMonitor];

    *buf = 0;
    v14 = buf;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__45;
    v17 = __Block_byref_object_dispose__45;
    v18 = 0;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy__45;
    v11[4] = __Block_byref_object_dispose__45;
    v12 = 0;
    history = self->_history;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72___ATXAppLaunchMonitor_processDonationsForPreviousAppSessionEndIfNeeded__block_invoke;
    v7[3] = &unk_27859BCB0;
    v9 = buf;
    v10 = v11;
    v3 = v5;
    v8 = v3;
    [(_PASQueueLock *)history runAsyncWithLockAcquired:v7];

    _Block_object_dispose(v11, 8);
    _Block_object_dispose(buf, 8);
  }
}

- (void)handleAppOrClipLaunchNotificationForBundleId:(id)a3 poweringAppClipBundleId:(id)a4 urlHash:(id)a5 isClip:(BOOL)a6 appLaunchReason:(id)a7 appClipLaunchReason:(int)a8 date:(id)a9
{
  v44 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a9;
  sel_getName(a2);
  v21 = os_transaction_create();
  [(_ATXAppLaunchMonitor *)self processDonationsForPreviousAppSessionEndIfNeeded];
  if ([v16 length])
  {
    [(NSUserDefaults *)self->_userDefaults setBool:0 forKey:@"ATXAppLaunchMonitor_LastLaunchWasHomescreen"];
    v22 = __atxlog_handle_default();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v41 = v16;
      v42 = 2112;
      v43 = v19;
      _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_INFO, "App launch: %@ for reason %@", buf, 0x16u);
    }

    logQueue = self->_logQueue;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __149___ATXAppLaunchMonitor_handleAppOrClipLaunchNotificationForBundleId_poweringAppClipBundleId_urlHash_isClip_appLaunchReason_appClipLaunchReason_date___block_invoke_135;
    v28[3] = &unk_27859BD28;
    v28[4] = self;
    v29 = v16;
    v30 = v19;
    v31 = v17;
    v32 = v18;
    v36 = a6;
    v35 = a8;
    v33 = v20;
    v34 = v21;
    dispatch_async(logQueue, v28);

    v24 = v29;
  }

  else
  {
    history = self->_history;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __149___ATXAppLaunchMonitor_handleAppOrClipLaunchNotificationForBundleId_poweringAppClipBundleId_urlHash_isClip_appLaunchReason_appClipLaunchReason_date___block_invoke;
    v37[3] = &unk_27859BCD8;
    v38 = v20;
    v39 = v21;
    [(_PASQueueLock *)history runAsyncWithLockAcquired:v37];
    [(NSUserDefaults *)self->_userDefaults setBool:1 forKey:@"ATXAppLaunchMonitor_LastLaunchWasHomescreen"];
    v26 = __atxlog_handle_default();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchMonitor handleAppOrClipLaunchNotificationForBundleId:poweringAppClipBundleId:urlHash:isClip:appLaunchReason:appClipLaunchReason:date:];
    }

    v24 = v38;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoteAppLaunch:(id)a3 context:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  sel_getName(a2);
  v9 = os_transaction_create();
  v10 = [v8 launchReason];
  v11 = [v8 appSessionStartTime];
  v12 = [v8 bundleID];

  v13 = ATXRemoteBundleIdForBundleId();

  v14 = __atxlog_handle_default();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = v13;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_INFO, "Remote app launch: %@ for reason %@", buf, 0x16u);
  }

  logQueue = self->_logQueue;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54___ATXAppLaunchMonitor_handleRemoteAppLaunch_context___block_invoke;
  v22[3] = &unk_27859BD78;
  v22[4] = self;
  v23 = v13;
  v24 = v11;
  v25 = v10;
  v26 = v7;
  v27 = v9;
  v16 = v9;
  v17 = v7;
  v18 = v10;
  v19 = v11;
  v20 = v13;
  dispatch_async(logQueue, v22);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)logAppLaunchForBundleId:(id)a3 launchReason:(id)a4
{
  v13 = a3;
  v6 = a4;
  if ([v6 isEqualToString:*MEMORY[0x277D66DE0]])
  {
    v7 = [(_ATXAppLaunchMonitor *)self appIconState];
    if ([v7 appOnDockWithBundleId:v13])
    {
      v8 = v13;
      v9 = 16;
    }

    else
    {
      v12 = [v7 springboardPageNumberForBundleId:v13];
      if ((v12 & 0x8000000000000000) != 0)
      {
LABEL_11:
        [(_ATXAppLaunchMonitor *)self _logAppPanelCaptureRateForBundleId:v13];

        goto LABEL_23;
      }

      v8 = v13;
      if (v12 >= 0xA)
      {
        v9 = 10;
      }

      else
      {
        v9 = v12;
      }
    }

    [_ATXAppLaunchMonitor _logAppLaunch:v8 from:v9];
    goto LABEL_11;
  }

  if ([v6 isEqualToString:*MEMORY[0x277D66E28]])
  {
    v10 = v13;
    v11 = 14;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D66E18]])
  {
    v10 = v13;
    v11 = 11;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D66DF0]])
  {
    v10 = v13;
    v11 = 18;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D66E10]])
  {
    v10 = v13;
    v11 = 19;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D66D90]])
  {
    v10 = v13;
    v11 = 20;
  }

  else
  {
    if (![v6 isEqualToString:*MEMORY[0x277D66DA0]])
    {
      goto LABEL_23;
    }

    v10 = v13;
    v11 = 21;
  }

  [_ATXAppLaunchMonitor _logAppLaunch:v10 from:v11];
LABEL_23:
  [(_ATXAppLaunchMonitor *)self _logAppLaunchOverallCaptureRateForBundleId:v13 launchReason:v6];
  [(_ATXAppLaunchMonitor *)self _logAppPanelLaunchRatioForBundleId:v13 launchReason:v6];
}

- (void)_logAppPanelLaunchRatioForBundleId:(id)a3 launchReason:(id)a4
{
  v12 = a3;
  if ([a4 isEqualToString:*MEMORY[0x277D66DE0]])
  {
    v6 = [(_ATXAppLaunchMonitor *)self appIconState];
    v7 = [v6 springboardPageNumbersWithAppPredictionPanels];
    v8 = [v7 mutableCopy];

    v9 = *MEMORY[0x277CEBAE8];
    [v8 removeIndex:*MEMORY[0x277CEBAE8]];
    if ([v8 count])
    {
      if ([v6 appOnDockWithBundleId:v12])
      {
        [MEMORY[0x277CEB398] logNonAppPanelAppLaunchFromDock];
      }

      else
      {
        v10 = [v6 springboardPageNumberForBundleId:v12];
        v11 = [v8 containsIndex:v10];
        if ((v10 & 0x8000000000000000) == 0 && v10 < v9 && v11)
        {
          [MEMORY[0x277CEB398] logNonAppPanelAppLaunchWithSBPageIndex:v10];
        }
      }
    }
  }
}

- (void)_logAppPanelCaptureRateForBundleId:(id)a3
{
  v15 = a3;
  v4 = [(_ATXAppLaunchMonitor *)self appIconState];
  v5 = [v4 springboardPageNumbersWithAppPredictionPanels];
  v6 = [v5 mutableCopy];

  v7 = *MEMORY[0x277CEBAE8];
  [v6 removeIndex:*MEMORY[0x277CEBAE8]];
  if ([v6 count])
  {
    if ([v4 appOnDockWithBundleId:v15])
    {
      v8 = 5004;
LABEL_15:
      [MEMORY[0x277CEB3F0] logHomeScreenDiversionWithCaptureType:v8 tracker:self->_tracker];
      goto LABEL_16;
    }

    v9 = [v4 springboardPageNumberForBundleId:v15];
    if ((v9 & 0x8000000000000000) == 0)
    {
      v10 = v9;
      if (v9 < v7)
      {
        v11 = [v4 appInFolderWithBundleId:v15];
        v12 = [v6 containsIndex:v10];
        if (v11)
        {
          v13 = 5006;
        }

        else
        {
          v13 = 5005;
        }

        if (v11)
        {
          v14 = 5008;
        }

        else
        {
          v14 = 5007;
        }

        if (v12)
        {
          v8 = v13;
        }

        else
        {
          v8 = v14;
        }

        goto LABEL_15;
      }
    }
  }

LABEL_16:
}

- (void)_logAppLaunchOverallCaptureRateForBundleId:(id)a3 launchReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_ATXAppLaunchMonitor *)self appIconState];
  v9 = [v8 appOnDockWithBundleId:v6];
  if ([v7 isEqualToString:*MEMORY[0x277D66DE0]])
  {
    if (v9)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

  else if ([v7 isEqualToString:*MEMORY[0x277D66E18]])
  {
    v10 = 3;
  }

  else if ([v7 isEqualToString:*MEMORY[0x277D66D68]] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277D66D78]) & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277D66D70]) & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277D66D80]) & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277D66D88]))
  {
    v10 = 4;
  }

  else
  {
    if (![v7 isEqualToString:*MEMORY[0x277D66E28]])
    {
      goto LABEL_24;
    }

    v10 = 5;
  }

  v11 = [v8 springboardPageNumberForBundleId:v6];
  v30 = v7;
  v31 = v6;
  v29 = self;
  if (v9)
  {
    v12 = 1;
  }

  else if ((v11 + 1) > 6)
  {
    v12 = 8;
  }

  else
  {
    v12 = dword_2268724B0[v11 + 1];
  }

  v13 = [v8 springboardPageNumbersWithAppPredictionPanels];
  v14 = [v13 mutableCopy];

  v15 = [v8 springboardPageNumbersWithSuggestionsWidgets];
  v16 = [v15 mutableCopy];

  v17 = *MEMORY[0x277CEBAE8];
  v18 = [v14 containsIndex:*MEMORY[0x277CEBAE8]];
  v19 = [v16 containsIndex:v17];
  [v14 removeIndex:v17];
  [v16 removeIndex:v17];
  v20 = [v14 count];
  v21 = [v16 count];
  v22 = objc_opt_new();
  [v22 setCaptureType:v10];
  [v22 setIconLocation:v12];
  v23 = CFPreferencesCopyValue(@"SBSearchDisabledDomains", @"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v24 = [v23 containsObject:@"DOMAIN_ZKWS"];

  [v22 setSpotlightEnabled:v24 ^ 1u];
  v25 = CFPreferencesCopyAppValue(@"SuggestionsAppLibraryEnabled", @"com.apple.suggestions");
  v26 = v25;
  if (v25)
  {
    v27 = [v25 BOOLValue];
  }

  else
  {
    v27 = 1;
  }

  [v22 setAppLibraryEnabled:v27];
  [v22 setAppPredictionPanelTodayEnabled:v18];
  [v22 setAppPredictionPanelEnabled:v20 != 0];
  [v22 setSuggestionsWidgetEnabled:v21 != 0];
  [v22 setSuggestionsWidgetTodayEnabled:v19];
  [(ATXPETEventTracker2Protocol *)v29->_tracker trackScalarForMessage:v22];
  v28 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [(_ATXAppLaunchMonitor *)v29 _logAppLaunchOverallCaptureRateForBundleId:v22 launchReason:v28];
  }

  v7 = v30;
  v6 = v31;
LABEL_24:
}

+ (void)_logAppLaunch:(id)a3 from:(unint64_t)a4
{
  v9 = a3;
  v5 = +[ATXAppLaunchLogger sharedInstance];
  v6 = [MEMORY[0x277CBEAA8] date];
  [v5 logAppLaunchFrom:a4 at:v6];

  if (a4 == 16)
  {
    goto LABEL_6;
  }

  if (([v9 isEqualToString:@"com.apple.camera"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"com.apple.mobilephone") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"com.apple.Music"))
  {
    a4 = 22;
LABEL_6:
    v7 = +[_ATXAggregateLogger sharedInstance];
    v8 = ATXAppLaunchFromToString(a4);
    [v7 logAppLaunch:v8 bundleId:v9];
  }
}

- (void)handleBacklightChangeNotificationWithValue:(int)a3 date:(id)a4
{
  v7 = a4;
  sel_getName(a2);
  v8 = os_transaction_create();
  history = self->_history;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72___ATXAppLaunchMonitor_handleBacklightChangeNotificationWithValue_date___block_invoke;
  v12[3] = &unk_27859BDA0;
  v15 = a3;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [(_PASQueueLock *)history runAsyncWithLockAcquired:v12];
}

- (void)addLaunchWithBundleId:(id)a3 date:(id)a4 timeZone:(id)a5 reason:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  history = self->_history;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67___ATXAppLaunchMonitor_addLaunchWithBundleId_date_timeZone_reason___block_invoke;
  v19[3] = &unk_27859BE08;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [(_PASQueueLock *)history runWithLockAcquired:v19];
}

- (void)_addLaunchWithLockWitness:(id)a3 bundleId:(id)a4 date:(id)a5 timeZone:(id)a6 reason:(id)a7 context:(id)a8
{
  v83[4] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v18 userContext];
  v20 = [v19 lastAppLaunch];

  if (v20)
  {
    v21 = *(v13 + 7);
    v22 = [v18 userContext];
    v23 = [v22 lastAppLaunch];
    v24 = [v21 launchSequenceForBundle:v23];
    [v24 addSubsequentLaunch:v14];

    [*(v13 + 7) addBundleIdToLaunchSequence:v14 date:v15];
  }

  [*(v13 + 5) addLaunchForBundleId:v14 date:v15];
  v25 = [*(v13 + 6) histogramForLaunchType:0];
  [v25 addLaunchWithBundleId:v14 date:v15 timeZone:v16];

  v26 = [*(v13 + 6) histogramForLaunchType:5];
  [v26 addLaunchWithBundleId:v14 date:v15 timeZone:v16];

  v27 = [*(v13 + 6) histogramForLaunchType:2];
  [v27 addLaunchWithBundleId:v14 date:v15 timeZone:v16];

  v28 = [v18 userContext];
  v29 = [v28 lastUnlockDate];

  if (v29)
  {
    v30 = [v18 userContext];
    v31 = [v30 lastUnlockDate];
    [v15 timeIntervalSinceDate:v31];
    v33 = v32;

    if (v33 >= 0.0)
    {
      if (v33 >= 3600.0)
      {
        v33 = 3599.0;
      }

      v34 = [*(v13 + 6) histogramForLaunchType:11];
      [v34 addLaunchWithBundleId:v14 elapsedTime:v33];
    }
  }

  if (([v17 isEqualToString:*MEMORY[0x277D66E18]] & 1) != 0 || objc_msgSend(v17, "isEqualToString:", *MEMORY[0x277D66E28]))
  {
    [*(v13 + 5) addSpotlightLaunchForBundleId:v14 date:v15];
    v35 = [*(v13 + 6) histogramForLaunchType:1];
    [v35 addLaunchWithBundleId:v14 date:v15 timeZone:v16];
  }

  if ([v17 isEqualToString:*MEMORY[0x277D66DE0]])
  {
    v36 = [*(v13 + 6) histogramForLaunchType:92];
    [v36 addLaunchWithBundleId:v14 date:v15 timeZone:v16];
  }

  if (([v17 isEqualToString:*MEMORY[0x277D66D88]] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", *MEMORY[0x277D66D68]) & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", *MEMORY[0x277D66D78]) & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", *MEMORY[0x277D66D70]) & 1) != 0 || objc_msgSend(v17, "isEqualToString:", *MEMORY[0x277D66D80]))
  {
    v37 = [*(v13 + 6) histogramForLaunchType:93];
    [v37 addLaunchWithBundleId:v14 date:v15 timeZone:v16];
  }

  v38 = [v18 deviceStateContext];
  v39 = [v38 inAirplaneMode];

  if (v39)
  {
    v40 = [*(v13 + 6) histogramForLaunchType:3];
    [v40 addLaunchWithBundleId:v14 date:v15 timeZone:v16];
  }

  v41 = [v18 deviceStateContext];
  v42 = [v41 wifiSSID];

  if ([v42 length])
  {
    v43 = [*(v13 + 6) categoricalHistogramForLaunchType:4];
    [v43 addLaunchWithBundleId:v14 date:v15 category:v42];
  }

  v81 = v42;
  v44 = *(v13 + 1);
  if (v44)
  {
    v83[0] = v14;
    v45 = v17;
    if (!v17)
    {
      v45 = [MEMORY[0x277CBEB68] null];
    }

    v83[1] = v45;
    v83[2] = v15;
    v46 = v16;
    if (!v16)
    {
      v46 = [MEMORY[0x277CBEB68] null];
    }

    v83[3] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];
    [v44 addObject:v47];

    if (v16)
    {
      if (v17)
      {
        goto LABEL_30;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_30:
  v82 = v17;
  v48 = v16;
  v49 = [v18 ambientLightContext];
  v50 = [v49 ambientLightType];

  if (v50 != 7)
  {
    v51 = [*(v13 + 6) categoricalHistogramForLaunchType:41];
    v52 = [MEMORY[0x277CCABB0] numberWithInt:v50];
    v53 = [v52 stringValue];
    [v51 addLaunchWithBundleId:v14 date:v15 category:v53];
  }

  v54 = MEMORY[0x277D41C30];
  v55 = [v18 locationMotionContext];
  v80 = [v54 getMotionStringFromMotionType:{objc_msgSend(v55, "motionType")}];

  v56 = [*(v13 + 6) categoricalHistogramForLaunchType:37];
  [v56 addLaunchWithBundleId:v14 date:v15 category:v80];

  v79 = [_ATXActionUtils stringForTimeOfDayAndDayOfWeek:v15 timeZone:0];
  v57 = [*(v13 + 6) categoricalHistogramForLaunchType:42];
  [v57 addLaunchWithBundleId:v14 date:v15 category:v79];

  v58 = [v18 locationMotionContext];
  v78 = +[_ATXActionUtils stringForCoarseTimePOWLocation:timeZone:coarseGeohash:](_ATXActionUtils, "stringForCoarseTimePOWLocation:timeZone:coarseGeohash:", v15, 0, [v58 coarseGeohash]);

  v59 = [v18 locationMotionContext];
  v77 = +[_ATXActionUtils stringForSpecificTimeDOWLocation:timeZone:geohash:](_ATXActionUtils, "stringForSpecificTimeDOWLocation:timeZone:geohash:", v15, 0, [v59 geohash]);

  v60 = [*(v13 + 6) categoricalHistogramForLaunchType:43];
  [v60 addLaunchWithBundleId:v14 date:v15 category:v78];

  v61 = [*(v13 + 6) categoricalHistogramForLaunchType:44];
  [v61 addLaunchWithBundleId:v14 date:v15 category:v77];

  v62 = [v18 locationMotionContext];
  v63 = +[_ATXActionUtils stringForCoarseGeohash:](_ATXActionUtils, "stringForCoarseGeohash:", [v62 coarseGeohash]);

  v64 = [v18 locationMotionContext];
  v65 = +[_ATXActionUtils stringForSpecificGeohash:](_ATXActionUtils, "stringForSpecificGeohash:", [v64 geohash]);

  [v18 locationMotionContext];
  v66 = v76 = v18;
  v67 = +[_ATXActionUtils stringForZoom7Geohash:](_ATXActionUtils, "stringForZoom7Geohash:", [v66 largeGeohash]);

  v68 = [*(v13 + 6) categoricalHistogramForLaunchType:50];
  [v68 addLaunchWithBundleId:v14 date:v15 category:v65];

  v69 = [*(v13 + 6) categoricalHistogramForLaunchType:51];
  [v69 addLaunchWithBundleId:v14 date:v15 category:v63];

  v70 = [*(v13 + 6) categoricalHistogramForLaunchType:61];
  [v70 addLaunchWithBundleId:v14 date:v15 category:v67];

  v71 = [_ATXActionUtils stringForTwoHourTimeWindow:v15 timeZone:v16];
  v72 = [*(v13 + 6) categoricalHistogramForLaunchType:52];
  [v72 addLaunchWithBundleId:v14 date:v15 category:v71];

  v73 = [*(v13 + 9) currentPoiCategory];
  v74 = [*(v13 + 6) categoricalHistogramForLaunchType:95];
  [v74 addLaunchWithBundleId:v14 date:v15 category:v73];

  v75 = *MEMORY[0x277D85DE8];
}

- (id)stopDeltaRecording
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__45;
  v10 = __Block_byref_object_dispose__45;
  v11 = 0;
  history = self->_history;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42___ATXAppLaunchMonitor_stopDeltaRecording__block_invoke;
  v5[3] = &unk_27859BB28;
  v5[4] = &v6;
  [(_PASQueueLock *)history runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)dealloc
{
  [(_ATXAppLaunchMonitor *)self stop];
  v3.receiver = self;
  v3.super_class = _ATXAppLaunchMonitor;
  [(_ATXAppLaunchMonitor *)&v3 dealloc];
}

- (id)appInfoManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__45;
  v10 = __Block_byref_object_dispose__45;
  v11 = 0;
  history = self->_history;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38___ATXAppLaunchMonitor_appInfoManager__block_invoke;
  v5[3] = &unk_27859BB28;
  v5[4] = &v6;
  [(_PASQueueLock *)history runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)appLaunchHistogramManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__45;
  v10 = __Block_byref_object_dispose__45;
  v11 = 0;
  history = self->_history;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49___ATXAppLaunchMonitor_appLaunchHistogramManager__block_invoke;
  v5[3] = &unk_27859BB28;
  v5[4] = &v6;
  [(_PASQueueLock *)history runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)appLaunchSequenceManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__45;
  v10 = __Block_byref_object_dispose__45;
  v11 = 0;
  history = self->_history;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48___ATXAppLaunchMonitor_appLaunchSequenceManager__block_invoke;
  v5[3] = &unk_27859BB28;
  v5[4] = &v6;
  [(_PASQueueLock *)history runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)swapAppInFocusStream:(id)a3 andDisplayOnIntervalStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  history = self->_history;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72___ATXAppLaunchMonitor_swapAppInFocusStream_andDisplayOnIntervalStream___block_invoke;
  v11[3] = &unk_27859BCD8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(_PASQueueLock *)history runAsyncWithLockAcquired:v11];
}

- (id)dailyDose
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__45;
  v10 = __Block_byref_object_dispose__45;
  v11 = 0;
  history = self->_history;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33___ATXAppLaunchMonitor_dailyDose__block_invoke;
  v5[3] = &unk_27859BB28;
  v5[4] = &v6;
  [(_PASQueueLock *)history runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_syncForTests
{
  dispatch_sync(self->_logQueue, &__block_literal_global_180);
  appLaunchHistoryQueue = self->_appLaunchHistoryQueue;

  dispatch_sync(appLaunchHistoryQueue, &__block_literal_global_182);
}

- (void)handleAppOrClipLaunchNotificationForBundleId:poweringAppClipBundleId:urlHash:isClip:appLaunchReason:appClipLaunchReason:date:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1(&dword_2263AA000, v0, v1, "Ignoring app launch with nil or empty value for bundleId (%@) and launchReason of %@)");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_logPredictionForBundleId:(void *)a1 poweringAppClipBundleId:(NSObject *)a2 urlHash:isClip:appLaunchReason:appClipLaunchReason:consumerType:consumerSubType:context:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "No results predicted. Error: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_logAppLaunchOverallCaptureRateForBundleId:(NSObject *)a3 launchReason:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 captureType];
  if (v7 >= 0xA)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v7];
  }

  else
  {
    v8 = off_27859BE28[v7];
  }

  v9 = v8;
  v10 = [a2 iconLocation];
  if (v10 >= 9)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v10];
  }

  else
  {
    v11 = off_27859BE78[v10];
  }

  *buf = 138414338;
  v14 = v6;
  v15 = 2112;
  v16 = v9;
  v17 = 2112;
  v18 = v11;
  v19 = 1024;
  v20 = [a2 spotlightEnabled];
  v21 = 1024;
  v22 = [a2 appLibraryEnabled];
  v23 = 1024;
  v24 = [a2 appPredictionPanelEnabled];
  v25 = 1024;
  v26 = [a2 appPredictionPanelTodayEnabled];
  v27 = 1024;
  v28 = [a2 suggestionsWidgetEnabled];
  v29 = 1024;
  v30 = [a2 suggestionsWidgetTodayEnabled];
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBAppLaunchOverallCaptureRateTracker with captureType: %@, iconLocation: %@, spotlightEnabled: %u, appLibraryEnabled: %u, hasAppPanel: %u, hasAppPanelToday: %u, suggestionsWidgetEnabled: %u, suggestionsWidgetTodayEnabled: %u", buf, 0x44u);

  v12 = *MEMORY[0x277D85DE8];
}

@end