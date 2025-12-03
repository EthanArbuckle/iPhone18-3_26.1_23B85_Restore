@interface _ATXAppLaunchMonitor
+ (id)predictionUpdateBlacklistedBundleIds;
+ (int)petClipCaptureTypeFromDuetClipLaunchReason:(int)reason;
+ (void)_logAppLaunch:(id)launch from:(unint64_t)from;
+ (void)mergeAppLaunches:(id)launches andBacklightTransitions:(id)transitions callingAppLaunchBlock:(id)block;
- (BOOL)isValidAppLaunchBundleId:(id)id;
- (_ATXAppLaunchMonitor)initWithAppInfoManager:(id)manager appLaunchHistogramManager:(id)histogramManager appLaunchSequenceManager:(id)sequenceManager appDailyDose:(id)dose appInFocusStream:(id)stream displayOnIntervalStream:(id)intervalStream contextBuilder:(id)builder tracker:(id)self0;
- (_ATXAppLaunchMonitor)initWithAppInfoManager:(id)manager appLaunchHistogramManager:(id)histogramManager appLaunchSequenceManager:(id)sequenceManager appDailyDose:(id)dose appInFocusStream:(id)stream displayOnIntervalStream:(id)intervalStream contextBuilder:(id)builder tracker:(id)self0 predictionUpdateBlacklist:(id)self1 heroPoiManager:(id)self2;
- (_ATXAppLaunchMonitor)initWithInMemoryStore;
- (id)appIconState;
- (id)appInfoManager;
- (id)appLaunchHistogramManager;
- (id)appLaunchSequenceManager;
- (id)dailyDose;
- (id)stopDeltaRecording;
- (void)_addLaunchWithLockWitness:(id)witness bundleId:(id)id date:(id)date timeZone:(id)zone reason:(id)reason context:(id)context;
- (void)_logAppLaunchOverallCaptureRateForBundleId:(id)id launchReason:(id)reason;
- (void)_logAppPanelCaptureRateForBundleId:(id)id;
- (void)_logAppPanelLaunchRatioForBundleId:(id)id launchReason:(id)reason;
- (void)_syncForTests;
- (void)addLaunchWithBundleId:(id)id date:(id)date timeZone:(id)zone reason:(id)reason;
- (void)dealloc;
- (void)handleAppOrClipLaunchNotificationForBundleId:(id)id poweringAppClipBundleId:(id)bundleId urlHash:(id)hash isClip:(BOOL)clip appLaunchReason:(id)reason appClipLaunchReason:(int)launchReason date:(id)date;
- (void)handleBacklightChangeNotificationWithValue:(int)value date:(id)date;
- (void)handleRemoteAppLaunch:(id)launch context:(id)context;
- (void)logAppLaunchForBundleId:(id)id launchReason:(id)reason;
- (void)processDonationsForPreviousAppSessionEndIfNeeded;
- (void)registerForAppChange;
- (void)registerForAppClipLaunch;
- (void)registerForBacklightChange;
- (void)start;
- (void)swapAppInFocusStream:(id)stream andDisplayOnIntervalStream:(id)intervalStream;
- (void)updateLaunchHistoryFromStream:(double)stream callback:(id)callback;
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
  initWithInMemoryStore = [[_ATXAppInfoManager alloc] initWithInMemoryStore];
  v3 = [ATXPredictionContextBuilder alloc];
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  v5 = objc_opt_new();
  initWithoutMonitoring = [[ATXAmbientLightMonitor alloc] initWithoutMonitoring];
  v18 = [(ATXPredictionContextBuilder *)v3 initWithAppInfoManager:initWithInMemoryStore locationManager:mEMORY[0x277D41BF8] motionManagerWrapper:v5 ambientLightMonitor:initWithoutMonitoring deviceStateMonitorClass:objc_opt_class() contextSourcesInitialized:1];

  initWithInMemoryStore2 = [[_ATXAppLaunchHistogramManager alloc] initWithInMemoryStore];
  initWithInMemoryStore3 = [[_ATXAppLaunchSequenceManager alloc] initWithInMemoryStore];
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  selfCopy = self;
  predictionUpdateBlacklistedBundleIds = [objc_opt_class() predictionUpdateBlacklistedBundleIds];
  v15 = objc_opt_new();
  v16 = [(_ATXAppLaunchMonitor *)selfCopy initWithAppInfoManager:initWithInMemoryStore appLaunchHistogramManager:initWithInMemoryStore2 appLaunchSequenceManager:initWithInMemoryStore3 appDailyDose:v9 appInFocusStream:v10 displayOnIntervalStream:v11 contextBuilder:v18 tracker:v12 predictionUpdateBlacklist:predictionUpdateBlacklistedBundleIds heroPoiManager:v15];

  return v16;
}

- (_ATXAppLaunchMonitor)initWithAppInfoManager:(id)manager appLaunchHistogramManager:(id)histogramManager appLaunchSequenceManager:(id)sequenceManager appDailyDose:(id)dose appInFocusStream:(id)stream displayOnIntervalStream:(id)intervalStream contextBuilder:(id)builder tracker:(id)self0
{
  trackerCopy = tracker;
  builderCopy = builder;
  intervalStreamCopy = intervalStream;
  streamCopy = stream;
  doseCopy = dose;
  sequenceManagerCopy = sequenceManager;
  histogramManagerCopy = histogramManager;
  managerCopy = manager;
  predictionUpdateBlacklistedBundleIds = [objc_opt_class() predictionUpdateBlacklistedBundleIds];
  v24 = objc_opt_new();
  v26 = [(_ATXAppLaunchMonitor *)self initWithAppInfoManager:managerCopy appLaunchHistogramManager:histogramManagerCopy appLaunchSequenceManager:sequenceManagerCopy appDailyDose:doseCopy appInFocusStream:streamCopy displayOnIntervalStream:intervalStreamCopy contextBuilder:builderCopy tracker:trackerCopy predictionUpdateBlacklist:predictionUpdateBlacklistedBundleIds heroPoiManager:v24];

  return v26;
}

- (_ATXAppLaunchMonitor)initWithAppInfoManager:(id)manager appLaunchHistogramManager:(id)histogramManager appLaunchSequenceManager:(id)sequenceManager appDailyDose:(id)dose appInFocusStream:(id)stream displayOnIntervalStream:(id)intervalStream contextBuilder:(id)builder tracker:(id)self0 predictionUpdateBlacklist:(id)self1 heroPoiManager:(id)self2
{
  managerCopy = manager;
  histogramManagerCopy = histogramManager;
  histogramManagerCopy2 = histogramManager;
  doseCopy = dose;
  intervalStreamCopy = intervalStream;
  sequenceManagerCopy = sequenceManager;
  v55 = doseCopy;
  streamCopy = stream;
  intervalStreamCopy2 = intervalStream;
  builderCopy = builder;
  trackerCopy = tracker;
  blacklistCopy = blacklist;
  poiManagerCopy = poiManager;
  v57.receiver = self;
  v57.super_class = _ATXAppLaunchMonitor;
  v22 = [(_ATXAppLaunchMonitor *)&v57 init];
  if (v22)
  {
    v45 = histogramManagerCopy2;
    v49 = managerCopy;
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
    objc_storeStrong(v32 + 2, stream);
    objc_storeStrong(v32 + 3, intervalStreamCopy);
    objc_storeStrong(v32 + 4, doseCopy);
    objc_storeStrong(v32 + 5, manager);
    objc_storeStrong(v32 + 6, histogramManagerCopy);
    objc_storeStrong(v32 + 7, sequenceManager);
    objc_storeStrong(v32 + 8, builder);
    objc_storeStrong(v32 + 9, poiManager);
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

    objc_storeStrong(&v22->_tracker, tracker);
    v40 = objc_alloc(MEMORY[0x277CBEBD0]);
    v41 = [v40 initWithSuiteName:*MEMORY[0x277CEBD00]];
    userDefaults = v22->_userDefaults;
    v22->_userDefaults = v41;

    objc_storeStrong(&v22->_predictionUpdateBlacklist, blacklist);
    v43 = __atxlog_handle_default();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchMonitor initWithAppInfoManager:appLaunchHistogramManager:appLaunchSequenceManager:appDailyDose:appInFocusStream:displayOnIntervalStream:contextBuilder:tracker:predictionUpdateBlacklist:heroPoiManager:];
    }

    managerCopy = v49;
    histogramManagerCopy2 = v45;
  }

  return v22;
}

- (void)start
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 stringByAppendingString:@"-start"];
  uTF8String = [v5 UTF8String];
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);
  v9 = dispatch_queue_create(uTF8String, v8);

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

+ (void)mergeAppLaunches:(id)launches andBacklightTransitions:(id)transitions callingAppLaunchBlock:(id)block
{
  launchesCopy = launches;
  transitionsCopy = transitions;
  blockCopy = block;
  v9 = 0x277CBE000uLL;
  if ([launchesCopy count])
  {
    v10 = 0;
    v11 = 0;
    v28 = (blockCopy + 2);
    do
    {
      if (v11 >= [transitionsCopy count])
      {
        break;
      }

      v12 = [launchesCopy objectAtIndexedSubscript:v10];
      v13 = [transitionsCopy objectAtIndexedSubscript:v11];
      appSessionStartTime = [v12 appSessionStartTime];
      v15 = [appSessionStartTime earlierDate:v13];
      appSessionStartTime2 = [v12 appSessionStartTime];
      v17 = [v15 isEqualToDate:appSessionStartTime2];

      if (v17)
      {
        bundleID = [v12 bundleID];
        appSessionStartTime3 = [v12 appSessionStartTime];
        defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
        launchReason = [v12 launchReason];
        blockCopy[2](blockCopy, bundleID, appSessionStartTime3, defaultTimeZone, launchReason, 1);

        ++v10;
      }

      else
      {
        blockCopy[2](blockCopy, 0, v13, 0, 0, 0);
        ++v11;
      }

      v9 = 0x277CBE000;
    }

    while (v10 < [launchesCopy count]);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  while (v10 < [launchesCopy count])
  {
    v22 = [launchesCopy objectAtIndexedSubscript:v10];
    bundleID2 = [v22 bundleID];
    appSessionStartTime4 = [v22 appSessionStartTime];
    defaultTimeZone2 = [*(v9 + 2992) defaultTimeZone];
    launchReason2 = [v22 launchReason];
    blockCopy[2](blockCopy, bundleID2, appSessionStartTime4, defaultTimeZone2, launchReason2, 1);

    v9 = 0x277CBE000;
    ++v10;
  }

  for (; v11 < [transitionsCopy count]; ++v11)
  {
    v27 = [transitionsCopy objectAtIndexedSubscript:v11];
    blockCopy[2](blockCopy, 0, v27, 0, 0, 0);
  }
}

- (void)updateLaunchHistoryFromStream:(double)stream callback:(id)callback
{
  callbackCopy = callback;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v9 stringByAppendingString:@"-update"];
  uTF8String = [v10 UTF8String];
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_UTILITY, 0);
  v14 = dispatch_queue_create(uTF8String, v13);

  sel_getName(a2);
  v15 = os_transaction_create();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63___ATXAppLaunchMonitor_updateLaunchHistoryFromStream_callback___block_invoke;
  v18[3] = &unk_27859BBC0;
  streamCopy = stream;
  v19 = v15;
  v20 = callbackCopy;
  v18[4] = self;
  v16 = v15;
  v17 = callbackCopy;
  dispatch_async(v14, v18);
}

- (void)registerForAppChange
{
  objc_initWeak(&location, self);
  keyPathForAppDataDictionary = [MEMORY[0x277CFE338] keyPathForAppDataDictionary];
  v4 = [MEMORY[0x277CFE360] predicateForChangeAtKeyPath:keyPathForAppDataDictionary];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __44___ATXAppLaunchMonitor_registerForAppChange__block_invoke;
  aBlock[3] = &unk_27859BC38;
  objc_copyWeak(&v14, &location);
  v5 = keyPathForAppDataDictionary;
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

+ (int)petClipCaptureTypeFromDuetClipLaunchReason:(int)reason
{
  if ((reason - 1) >= 9)
  {
    return 0;
  }

  else
  {
    return reason;
  }
}

- (BOOL)isValidAppLaunchBundleId:(id)id
{
  idCopy = id;
  v4 = idCopy;
  if (idCopy && ([idCopy isEqualToString:@"unknown"] & 1) == 0)
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
  keyPathForBacklightOnStatus = [MEMORY[0x277CFE338] keyPathForBacklightOnStatus];
  v4 = [MEMORY[0x277CFE360] predicateForChangeAtKeyPath:keyPathForBacklightOnStatus];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __50___ATXAppLaunchMonitor_registerForBacklightChange__block_invoke;
  aBlock[3] = &unk_27859BC38;
  objc_copyWeak(&v14, &location);
  v5 = keyPathForBacklightOnStatus;
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
    appIntentMonitor = [v4 appIntentMonitor];

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
    v3 = appIntentMonitor;
    v8 = v3;
    [(_PASQueueLock *)history runAsyncWithLockAcquired:v7];

    _Block_object_dispose(v11, 8);
    _Block_object_dispose(buf, 8);
  }
}

- (void)handleAppOrClipLaunchNotificationForBundleId:(id)id poweringAppClipBundleId:(id)bundleId urlHash:(id)hash isClip:(BOOL)clip appLaunchReason:(id)reason appClipLaunchReason:(int)launchReason date:(id)date
{
  v44 = *MEMORY[0x277D85DE8];
  idCopy = id;
  bundleIdCopy = bundleId;
  hashCopy = hash;
  reasonCopy = reason;
  dateCopy = date;
  sel_getName(a2);
  v21 = os_transaction_create();
  [(_ATXAppLaunchMonitor *)self processDonationsForPreviousAppSessionEndIfNeeded];
  if ([idCopy length])
  {
    [(NSUserDefaults *)self->_userDefaults setBool:0 forKey:@"ATXAppLaunchMonitor_LastLaunchWasHomescreen"];
    v22 = __atxlog_handle_default();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v41 = idCopy;
      v42 = 2112;
      v43 = reasonCopy;
      _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_INFO, "App launch: %@ for reason %@", buf, 0x16u);
    }

    logQueue = self->_logQueue;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __149___ATXAppLaunchMonitor_handleAppOrClipLaunchNotificationForBundleId_poweringAppClipBundleId_urlHash_isClip_appLaunchReason_appClipLaunchReason_date___block_invoke_135;
    v28[3] = &unk_27859BD28;
    v28[4] = self;
    v29 = idCopy;
    v30 = reasonCopy;
    v31 = bundleIdCopy;
    v32 = hashCopy;
    clipCopy = clip;
    launchReasonCopy = launchReason;
    v33 = dateCopy;
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
    v38 = dateCopy;
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

- (void)handleRemoteAppLaunch:(id)launch context:(id)context
{
  v32 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  launchCopy = launch;
  sel_getName(a2);
  v9 = os_transaction_create();
  launchReason = [launchCopy launchReason];
  appSessionStartTime = [launchCopy appSessionStartTime];
  bundleID = [launchCopy bundleID];

  v13 = ATXRemoteBundleIdForBundleId();

  v14 = __atxlog_handle_default();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = v13;
    v30 = 2112;
    v31 = launchReason;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_INFO, "Remote app launch: %@ for reason %@", buf, 0x16u);
  }

  logQueue = self->_logQueue;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54___ATXAppLaunchMonitor_handleRemoteAppLaunch_context___block_invoke;
  v22[3] = &unk_27859BD78;
  v22[4] = self;
  v23 = v13;
  v24 = appSessionStartTime;
  v25 = launchReason;
  v26 = contextCopy;
  v27 = v9;
  v16 = v9;
  v17 = contextCopy;
  v18 = launchReason;
  v19 = appSessionStartTime;
  v20 = v13;
  dispatch_async(logQueue, v22);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)logAppLaunchForBundleId:(id)id launchReason:(id)reason
{
  idCopy = id;
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:*MEMORY[0x277D66DE0]])
  {
    appIconState = [(_ATXAppLaunchMonitor *)self appIconState];
    if ([appIconState appOnDockWithBundleId:idCopy])
    {
      v8 = idCopy;
      v9 = 16;
    }

    else
    {
      v12 = [appIconState springboardPageNumberForBundleId:idCopy];
      if ((v12 & 0x8000000000000000) != 0)
      {
LABEL_11:
        [(_ATXAppLaunchMonitor *)self _logAppPanelCaptureRateForBundleId:idCopy];

        goto LABEL_23;
      }

      v8 = idCopy;
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

  if ([reasonCopy isEqualToString:*MEMORY[0x277D66E28]])
  {
    v10 = idCopy;
    v11 = 14;
  }

  else if ([reasonCopy isEqualToString:*MEMORY[0x277D66E18]])
  {
    v10 = idCopy;
    v11 = 11;
  }

  else if ([reasonCopy isEqualToString:*MEMORY[0x277D66DF0]])
  {
    v10 = idCopy;
    v11 = 18;
  }

  else if ([reasonCopy isEqualToString:*MEMORY[0x277D66E10]])
  {
    v10 = idCopy;
    v11 = 19;
  }

  else if ([reasonCopy isEqualToString:*MEMORY[0x277D66D90]])
  {
    v10 = idCopy;
    v11 = 20;
  }

  else
  {
    if (![reasonCopy isEqualToString:*MEMORY[0x277D66DA0]])
    {
      goto LABEL_23;
    }

    v10 = idCopy;
    v11 = 21;
  }

  [_ATXAppLaunchMonitor _logAppLaunch:v10 from:v11];
LABEL_23:
  [(_ATXAppLaunchMonitor *)self _logAppLaunchOverallCaptureRateForBundleId:idCopy launchReason:reasonCopy];
  [(_ATXAppLaunchMonitor *)self _logAppPanelLaunchRatioForBundleId:idCopy launchReason:reasonCopy];
}

- (void)_logAppPanelLaunchRatioForBundleId:(id)id launchReason:(id)reason
{
  idCopy = id;
  if ([reason isEqualToString:*MEMORY[0x277D66DE0]])
  {
    appIconState = [(_ATXAppLaunchMonitor *)self appIconState];
    springboardPageNumbersWithAppPredictionPanels = [appIconState springboardPageNumbersWithAppPredictionPanels];
    v8 = [springboardPageNumbersWithAppPredictionPanels mutableCopy];

    v9 = *MEMORY[0x277CEBAE8];
    [v8 removeIndex:*MEMORY[0x277CEBAE8]];
    if ([v8 count])
    {
      if ([appIconState appOnDockWithBundleId:idCopy])
      {
        [MEMORY[0x277CEB398] logNonAppPanelAppLaunchFromDock];
      }

      else
      {
        v10 = [appIconState springboardPageNumberForBundleId:idCopy];
        v11 = [v8 containsIndex:v10];
        if ((v10 & 0x8000000000000000) == 0 && v10 < v9 && v11)
        {
          [MEMORY[0x277CEB398] logNonAppPanelAppLaunchWithSBPageIndex:v10];
        }
      }
    }
  }
}

- (void)_logAppPanelCaptureRateForBundleId:(id)id
{
  idCopy = id;
  appIconState = [(_ATXAppLaunchMonitor *)self appIconState];
  springboardPageNumbersWithAppPredictionPanels = [appIconState springboardPageNumbersWithAppPredictionPanels];
  v6 = [springboardPageNumbersWithAppPredictionPanels mutableCopy];

  v7 = *MEMORY[0x277CEBAE8];
  [v6 removeIndex:*MEMORY[0x277CEBAE8]];
  if ([v6 count])
  {
    if ([appIconState appOnDockWithBundleId:idCopy])
    {
      v8 = 5004;
LABEL_15:
      [MEMORY[0x277CEB3F0] logHomeScreenDiversionWithCaptureType:v8 tracker:self->_tracker];
      goto LABEL_16;
    }

    v9 = [appIconState springboardPageNumberForBundleId:idCopy];
    if ((v9 & 0x8000000000000000) == 0)
    {
      v10 = v9;
      if (v9 < v7)
      {
        v11 = [appIconState appInFolderWithBundleId:idCopy];
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

- (void)_logAppLaunchOverallCaptureRateForBundleId:(id)id launchReason:(id)reason
{
  idCopy = id;
  reasonCopy = reason;
  appIconState = [(_ATXAppLaunchMonitor *)self appIconState];
  v9 = [appIconState appOnDockWithBundleId:idCopy];
  if ([reasonCopy isEqualToString:*MEMORY[0x277D66DE0]])
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

  else if ([reasonCopy isEqualToString:*MEMORY[0x277D66E18]])
  {
    v10 = 3;
  }

  else if ([reasonCopy isEqualToString:*MEMORY[0x277D66D68]] & 1) != 0 || (objc_msgSend(reasonCopy, "isEqualToString:", *MEMORY[0x277D66D78]) & 1) != 0 || (objc_msgSend(reasonCopy, "isEqualToString:", *MEMORY[0x277D66D70]) & 1) != 0 || (objc_msgSend(reasonCopy, "isEqualToString:", *MEMORY[0x277D66D80]) & 1) != 0 || (objc_msgSend(reasonCopy, "isEqualToString:", *MEMORY[0x277D66D88]))
  {
    v10 = 4;
  }

  else
  {
    if (![reasonCopy isEqualToString:*MEMORY[0x277D66E28]])
    {
      goto LABEL_24;
    }

    v10 = 5;
  }

  v11 = [appIconState springboardPageNumberForBundleId:idCopy];
  v30 = reasonCopy;
  v31 = idCopy;
  selfCopy = self;
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

  springboardPageNumbersWithAppPredictionPanels = [appIconState springboardPageNumbersWithAppPredictionPanels];
  v14 = [springboardPageNumbersWithAppPredictionPanels mutableCopy];

  springboardPageNumbersWithSuggestionsWidgets = [appIconState springboardPageNumbersWithSuggestionsWidgets];
  v16 = [springboardPageNumbersWithSuggestionsWidgets mutableCopy];

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
    bOOLValue = [v25 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  [v22 setAppLibraryEnabled:bOOLValue];
  [v22 setAppPredictionPanelTodayEnabled:v18];
  [v22 setAppPredictionPanelEnabled:v20 != 0];
  [v22 setSuggestionsWidgetEnabled:v21 != 0];
  [v22 setSuggestionsWidgetTodayEnabled:v19];
  [(ATXPETEventTracker2Protocol *)selfCopy->_tracker trackScalarForMessage:v22];
  v28 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [(_ATXAppLaunchMonitor *)selfCopy _logAppLaunchOverallCaptureRateForBundleId:v22 launchReason:v28];
  }

  reasonCopy = v30;
  idCopy = v31;
LABEL_24:
}

+ (void)_logAppLaunch:(id)launch from:(unint64_t)from
{
  launchCopy = launch;
  v5 = +[ATXAppLaunchLogger sharedInstance];
  date = [MEMORY[0x277CBEAA8] date];
  [v5 logAppLaunchFrom:from at:date];

  if (from == 16)
  {
    goto LABEL_6;
  }

  if (([launchCopy isEqualToString:@"com.apple.camera"] & 1) != 0 || (objc_msgSend(launchCopy, "isEqualToString:", @"com.apple.mobilephone") & 1) != 0 || objc_msgSend(launchCopy, "isEqualToString:", @"com.apple.Music"))
  {
    from = 22;
LABEL_6:
    v7 = +[_ATXAggregateLogger sharedInstance];
    v8 = ATXAppLaunchFromToString(from);
    [v7 logAppLaunch:v8 bundleId:launchCopy];
  }
}

- (void)handleBacklightChangeNotificationWithValue:(int)value date:(id)date
{
  dateCopy = date;
  sel_getName(a2);
  v8 = os_transaction_create();
  history = self->_history;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72___ATXAppLaunchMonitor_handleBacklightChangeNotificationWithValue_date___block_invoke;
  v12[3] = &unk_27859BDA0;
  valueCopy = value;
  v13 = dateCopy;
  v14 = v8;
  v10 = v8;
  v11 = dateCopy;
  [(_PASQueueLock *)history runAsyncWithLockAcquired:v12];
}

- (void)addLaunchWithBundleId:(id)id date:(id)date timeZone:(id)zone reason:(id)reason
{
  idCopy = id;
  dateCopy = date;
  zoneCopy = zone;
  reasonCopy = reason;
  history = self->_history;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67___ATXAppLaunchMonitor_addLaunchWithBundleId_date_timeZone_reason___block_invoke;
  v19[3] = &unk_27859BE08;
  v19[4] = self;
  v20 = idCopy;
  v21 = dateCopy;
  v22 = zoneCopy;
  v23 = reasonCopy;
  v15 = reasonCopy;
  v16 = zoneCopy;
  v17 = dateCopy;
  v18 = idCopy;
  [(_PASQueueLock *)history runWithLockAcquired:v19];
}

- (void)_addLaunchWithLockWitness:(id)witness bundleId:(id)id date:(id)date timeZone:(id)zone reason:(id)reason context:(id)context
{
  v83[4] = *MEMORY[0x277D85DE8];
  witnessCopy = witness;
  idCopy = id;
  dateCopy = date;
  zoneCopy = zone;
  reasonCopy = reason;
  contextCopy = context;
  userContext = [contextCopy userContext];
  lastAppLaunch = [userContext lastAppLaunch];

  if (lastAppLaunch)
  {
    v21 = *(witnessCopy + 7);
    userContext2 = [contextCopy userContext];
    lastAppLaunch2 = [userContext2 lastAppLaunch];
    v24 = [v21 launchSequenceForBundle:lastAppLaunch2];
    [v24 addSubsequentLaunch:idCopy];

    [*(witnessCopy + 7) addBundleIdToLaunchSequence:idCopy date:dateCopy];
  }

  [*(witnessCopy + 5) addLaunchForBundleId:idCopy date:dateCopy];
  v25 = [*(witnessCopy + 6) histogramForLaunchType:0];
  [v25 addLaunchWithBundleId:idCopy date:dateCopy timeZone:zoneCopy];

  v26 = [*(witnessCopy + 6) histogramForLaunchType:5];
  [v26 addLaunchWithBundleId:idCopy date:dateCopy timeZone:zoneCopy];

  v27 = [*(witnessCopy + 6) histogramForLaunchType:2];
  [v27 addLaunchWithBundleId:idCopy date:dateCopy timeZone:zoneCopy];

  userContext3 = [contextCopy userContext];
  lastUnlockDate = [userContext3 lastUnlockDate];

  if (lastUnlockDate)
  {
    userContext4 = [contextCopy userContext];
    lastUnlockDate2 = [userContext4 lastUnlockDate];
    [dateCopy timeIntervalSinceDate:lastUnlockDate2];
    v33 = v32;

    if (v33 >= 0.0)
    {
      if (v33 >= 3600.0)
      {
        v33 = 3599.0;
      }

      v34 = [*(witnessCopy + 6) histogramForLaunchType:11];
      [v34 addLaunchWithBundleId:idCopy elapsedTime:v33];
    }
  }

  if (([reasonCopy isEqualToString:*MEMORY[0x277D66E18]] & 1) != 0 || objc_msgSend(reasonCopy, "isEqualToString:", *MEMORY[0x277D66E28]))
  {
    [*(witnessCopy + 5) addSpotlightLaunchForBundleId:idCopy date:dateCopy];
    v35 = [*(witnessCopy + 6) histogramForLaunchType:1];
    [v35 addLaunchWithBundleId:idCopy date:dateCopy timeZone:zoneCopy];
  }

  if ([reasonCopy isEqualToString:*MEMORY[0x277D66DE0]])
  {
    v36 = [*(witnessCopy + 6) histogramForLaunchType:92];
    [v36 addLaunchWithBundleId:idCopy date:dateCopy timeZone:zoneCopy];
  }

  if (([reasonCopy isEqualToString:*MEMORY[0x277D66D88]] & 1) != 0 || (objc_msgSend(reasonCopy, "isEqualToString:", *MEMORY[0x277D66D68]) & 1) != 0 || (objc_msgSend(reasonCopy, "isEqualToString:", *MEMORY[0x277D66D78]) & 1) != 0 || (objc_msgSend(reasonCopy, "isEqualToString:", *MEMORY[0x277D66D70]) & 1) != 0 || objc_msgSend(reasonCopy, "isEqualToString:", *MEMORY[0x277D66D80]))
  {
    v37 = [*(witnessCopy + 6) histogramForLaunchType:93];
    [v37 addLaunchWithBundleId:idCopy date:dateCopy timeZone:zoneCopy];
  }

  deviceStateContext = [contextCopy deviceStateContext];
  inAirplaneMode = [deviceStateContext inAirplaneMode];

  if (inAirplaneMode)
  {
    v40 = [*(witnessCopy + 6) histogramForLaunchType:3];
    [v40 addLaunchWithBundleId:idCopy date:dateCopy timeZone:zoneCopy];
  }

  deviceStateContext2 = [contextCopy deviceStateContext];
  wifiSSID = [deviceStateContext2 wifiSSID];

  if ([wifiSSID length])
  {
    v43 = [*(witnessCopy + 6) categoricalHistogramForLaunchType:4];
    [v43 addLaunchWithBundleId:idCopy date:dateCopy category:wifiSSID];
  }

  v81 = wifiSSID;
  v44 = *(witnessCopy + 1);
  if (v44)
  {
    v83[0] = idCopy;
    null = reasonCopy;
    if (!reasonCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v83[1] = null;
    v83[2] = dateCopy;
    null2 = zoneCopy;
    if (!zoneCopy)
    {
      null2 = [MEMORY[0x277CBEB68] null];
    }

    v83[3] = null2;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];
    [v44 addObject:v47];

    if (zoneCopy)
    {
      if (reasonCopy)
      {
        goto LABEL_30;
      }
    }

    else
    {

      if (reasonCopy)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_30:
  v82 = reasonCopy;
  v48 = zoneCopy;
  ambientLightContext = [contextCopy ambientLightContext];
  ambientLightType = [ambientLightContext ambientLightType];

  if (ambientLightType != 7)
  {
    v51 = [*(witnessCopy + 6) categoricalHistogramForLaunchType:41];
    v52 = [MEMORY[0x277CCABB0] numberWithInt:ambientLightType];
    stringValue = [v52 stringValue];
    [v51 addLaunchWithBundleId:idCopy date:dateCopy category:stringValue];
  }

  v54 = MEMORY[0x277D41C30];
  locationMotionContext = [contextCopy locationMotionContext];
  v80 = [v54 getMotionStringFromMotionType:{objc_msgSend(locationMotionContext, "motionType")}];

  v56 = [*(witnessCopy + 6) categoricalHistogramForLaunchType:37];
  [v56 addLaunchWithBundleId:idCopy date:dateCopy category:v80];

  v79 = [_ATXActionUtils stringForTimeOfDayAndDayOfWeek:dateCopy timeZone:0];
  v57 = [*(witnessCopy + 6) categoricalHistogramForLaunchType:42];
  [v57 addLaunchWithBundleId:idCopy date:dateCopy category:v79];

  locationMotionContext2 = [contextCopy locationMotionContext];
  v78 = +[_ATXActionUtils stringForCoarseTimePOWLocation:timeZone:coarseGeohash:](_ATXActionUtils, "stringForCoarseTimePOWLocation:timeZone:coarseGeohash:", dateCopy, 0, [locationMotionContext2 coarseGeohash]);

  locationMotionContext3 = [contextCopy locationMotionContext];
  v77 = +[_ATXActionUtils stringForSpecificTimeDOWLocation:timeZone:geohash:](_ATXActionUtils, "stringForSpecificTimeDOWLocation:timeZone:geohash:", dateCopy, 0, [locationMotionContext3 geohash]);

  v60 = [*(witnessCopy + 6) categoricalHistogramForLaunchType:43];
  [v60 addLaunchWithBundleId:idCopy date:dateCopy category:v78];

  v61 = [*(witnessCopy + 6) categoricalHistogramForLaunchType:44];
  [v61 addLaunchWithBundleId:idCopy date:dateCopy category:v77];

  locationMotionContext4 = [contextCopy locationMotionContext];
  v63 = +[_ATXActionUtils stringForCoarseGeohash:](_ATXActionUtils, "stringForCoarseGeohash:", [locationMotionContext4 coarseGeohash]);

  locationMotionContext5 = [contextCopy locationMotionContext];
  v65 = +[_ATXActionUtils stringForSpecificGeohash:](_ATXActionUtils, "stringForSpecificGeohash:", [locationMotionContext5 geohash]);

  [contextCopy locationMotionContext];
  v66 = v76 = contextCopy;
  v67 = +[_ATXActionUtils stringForZoom7Geohash:](_ATXActionUtils, "stringForZoom7Geohash:", [v66 largeGeohash]);

  v68 = [*(witnessCopy + 6) categoricalHistogramForLaunchType:50];
  [v68 addLaunchWithBundleId:idCopy date:dateCopy category:v65];

  v69 = [*(witnessCopy + 6) categoricalHistogramForLaunchType:51];
  [v69 addLaunchWithBundleId:idCopy date:dateCopy category:v63];

  v70 = [*(witnessCopy + 6) categoricalHistogramForLaunchType:61];
  [v70 addLaunchWithBundleId:idCopy date:dateCopy category:v67];

  v71 = [_ATXActionUtils stringForTwoHourTimeWindow:dateCopy timeZone:zoneCopy];
  v72 = [*(witnessCopy + 6) categoricalHistogramForLaunchType:52];
  [v72 addLaunchWithBundleId:idCopy date:dateCopy category:v71];

  currentPoiCategory = [*(witnessCopy + 9) currentPoiCategory];
  v74 = [*(witnessCopy + 6) categoricalHistogramForLaunchType:95];
  [v74 addLaunchWithBundleId:idCopy date:dateCopy category:currentPoiCategory];

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

- (void)swapAppInFocusStream:(id)stream andDisplayOnIntervalStream:(id)intervalStream
{
  streamCopy = stream;
  intervalStreamCopy = intervalStream;
  history = self->_history;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72___ATXAppLaunchMonitor_swapAppInFocusStream_andDisplayOnIntervalStream___block_invoke;
  v11[3] = &unk_27859BCD8;
  v12 = streamCopy;
  v13 = intervalStreamCopy;
  v9 = intervalStreamCopy;
  v10 = streamCopy;
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