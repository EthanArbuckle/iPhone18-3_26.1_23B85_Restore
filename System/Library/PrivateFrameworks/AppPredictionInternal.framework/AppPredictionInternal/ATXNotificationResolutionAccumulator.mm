@interface ATXNotificationResolutionAccumulator
- (ATXNotificationResolutionAccumulator)init;
- (id)dateIntervalFromModeEvent:(id)event;
- (id)dateIntervalFromNotificationEvent:(id)event;
- (void)cacheAppLaunchDataFromStartTime:(id)time toEndTime:(id)endTime;
- (void)computeFeaturesForNotification:(id)notification mode:(unint64_t)mode;
- (void)computeHistoricalResolutionsIfNecessary;
- (void)computeTimeToLaunchAppForNotification;
- (void)dealloc;
- (void)historicalResolutionForNotification;
- (void)removeOldestEntry;
- (void)unloadHistoricalResolutionsForNotifications;
@end

@implementation ATXNotificationResolutionAccumulator

- (ATXNotificationResolutionAccumulator)init
{
  v6.receiver = self;
  v6.super_class = ATXNotificationResolutionAccumulator;
  v2 = [(ATXNotificationResolutionAccumulator *)&v6 init];
  if (v2)
  {
    mEMORY[0x277CEBC88] = [MEMORY[0x277CEBC88] sharedInstance];
    memoryPressureMonitor = v2->_memoryPressureMonitor;
    v2->_memoryPressureMonitor = mEMORY[0x277CEBC88];

    [(ATXMemoryPressureMonitor *)v2->_memoryPressureMonitor registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(ATXMemoryPressureMonitor *)self->_memoryPressureMonitor unregisterObserver:self];
  memoryPressureMonitor = self->_memoryPressureMonitor;
  self->_memoryPressureMonitor = 0;

  v4.receiver = self;
  v4.super_class = ATXNotificationResolutionAccumulator;
  [(ATXNotificationResolutionAccumulator *)&v4 dealloc];
}

- (void)computeFeaturesForNotification:(id)notification mode:(unint64_t)mode
{
  objc_storeStrong(&self->_userNotification, notification);
  notificationCopy = notification;
  self->_mode = mode;
  v8 = MEMORY[0x277CBEAA8];
  [notificationCopy timestamp];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  v10 = [(NSDate *)v9 dateByAddingTimeInterval:-1209600.0];
  v11 = [[ATXUnifiedComputedAndInferredModeStream alloc] initWithStartTime:v10 toEndTime:v9];
  fetchUnifiedModeEvents = [(ATXUnifiedComputedAndInferredModeStream *)v11 fetchUnifiedModeEvents];
  unifiedModePublisher = self->_unifiedModePublisher;
  self->_unifiedModePublisher = fetchUnifiedModeEvents;

  v14 = BiomeLibrary();
  notification = [v14 Notification];
  usage = [notification Usage];
  v17 = [usage atx_publisherWithStartDate:v10 endDate:v9 maxEvents:0 lastN:0 reversed:0];
  notificationPublisher = self->_notificationPublisher;
  self->_notificationPublisher = v17;

  startDate = self->_startDate;
  self->_startDate = v10;
  v20 = v10;

  endDate = self->_endDate;
  self->_endDate = v9;

  [(ATXNotificationResolutionAccumulator *)self computeTimeToLaunchAppForNotification];

  [(ATXNotificationResolutionAccumulator *)self computeHistoricalResolutionsIfNecessary];
}

- (void)computeTimeToLaunchAppForNotification
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v3 = MEMORY[0x277CBEAA8];
  [(ATXUserNotification *)self->_userNotification timestamp];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v5 = MEMORY[0x277CBEAA8];
  [(ATXUserNotification *)self->_userNotification timestamp];
  v7 = [v5 dateWithTimeIntervalSinceReferenceDate:v6 + 3600.0];
  v8 = BiomeLibrary();
  v9 = [v8 App];
  inFocus = [v9 InFocus];
  v11 = [inFocus atx_publisherWithStartDate:v4 endDate:v7 maxEvents:0 lastN:0 reversed:0];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__ATXNotificationResolutionAccumulator_computeTimeToLaunchAppForNotification__block_invoke_50;
  v14[3] = &unk_278597C90;
  v14[4] = self;
  v12 = v4;
  v15 = v12;
  v16 = &v17;
  v13 = [v11 sinkWithCompletion:&__block_literal_global_18 shouldContinue:v14];
  self->_timeToLaunchApp = v18[3];

  _Block_object_dispose(&v17, 8);
}

void __77__ATXNotificationResolutionAccumulator_computeTimeToLaunchAppForNotification__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__ATXNotificationResolutionAccumulator_computeTimeToLaunchAppForNotification__block_invoke_cold_1(v2);
    }
  }
}

uint64_t __77__ATXNotificationResolutionAccumulator_computeTimeToLaunchAppForNotification__block_invoke_50(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 bundleID];
  v6 = [*(a1[4] + 8) bundleID];
  v7 = [v5 isEqualToString:v6];

  if (v7 && ([v3 eventBody], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "starting"), v8, v9))
  {
    v10 = [v3 eventBody];
    v11 = [v10 absoluteTimestamp];
    [v11 timeIntervalSinceDate:a1[5]];
    v13 = v12;

    v14 = 0;
    v15 = 0.0;
    if (v13 >= 0.0)
    {
      v15 = v13;
    }

    *(*(a1[6] + 8) + 24) = (ceil(v15 / 10.0) * 10.0);
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (void)computeHistoricalResolutionsIfNecessary
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  cachedHistoricalResolutionsForNotifications = obj->_cachedHistoricalResolutionsForNotifications;
  if (!cachedHistoricalResolutionsForNotifications)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
    v5 = obj->_cachedHistoricalResolutionsForNotifications;
    obj->_cachedHistoricalResolutionsForNotifications = v4;

    v2 = obj;
    cachedHistoricalResolutionsForNotifications = obj->_cachedHistoricalResolutionsForNotifications;
  }

  bundleID = [(ATXUserNotification *)v2->_userNotification bundleID];
  v7 = [(NSMutableDictionary *)cachedHistoricalResolutionsForNotifications objectForKeyedSubscript:bundleID];

  if (v7)
  {
    userNotification = [v7 userNotification];
    bundleID2 = [userNotification bundleID];
    bundleID3 = [(ATXUserNotification *)obj->_userNotification bundleID];
    v11 = [bundleID2 isEqualToString:bundleID3];

    if (v11)
    {
      [(ATXUserNotification *)obj->_userNotification timestamp];
      v13 = v12;
      userNotification2 = [v7 userNotification];
      [userNotification2 timestamp];
      v16 = (v13 - v15);

      if ((v16 - 1) <= 0xE0F)
      {
        v17 = v7;
        historicalResolutionsForNotification = obj->_historicalResolutionsForNotification;
        obj->_historicalResolutionsForNotification = v17;
LABEL_11:

        goto LABEL_12;
      }
    }
  }

  [(ATXNotificationResolutionAccumulator *)obj cacheAppLaunchDataFromStartTime:obj->_startDate toEndTime:obj->_endDate];
  [(ATXNotificationResolutionAccumulator *)obj historicalResolutionForNotification];
  if ([(NSMutableDictionary *)obj->_cachedHistoricalResolutionsForNotifications count]>= 0xA)
  {
    [(ATXNotificationResolutionAccumulator *)obj removeOldestEntry];
  }

  bundleID4 = [(ATXUserNotification *)obj->_userNotification bundleID];

  if (bundleID4)
  {
    v20 = obj->_historicalResolutionsForNotification;
    v21 = obj->_cachedHistoricalResolutionsForNotifications;
    historicalResolutionsForNotification = [(ATXUserNotification *)obj->_userNotification bundleID];
    [(NSMutableDictionary *)v21 setObject:v20 forKeyedSubscript:historicalResolutionsForNotification];
    goto LABEL_11;
  }

LABEL_12:

  objc_sync_exit(obj);
}

- (void)cacheAppLaunchDataFromStartTime:(id)time toEndTime:(id)endTime
{
  v31 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  endTimeCopy = endTime;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = BiomeLibrary();
  v10 = [v9 App];
  inFocus = [v10 InFocus];
  v12 = [inFocus atx_publisherWithStartDate:timeCopy endDate:endTimeCopy maxEvents:0 lastN:0 reversed:0];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __82__ATXNotificationResolutionAccumulator_cacheAppLaunchDataFromStartTime_toEndTime___block_invoke_55;
  v28[3] = &unk_278596F60;
  v13 = v8;
  v29 = v13;
  v14 = [v12 sinkWithCompletion:&__block_literal_global_54 receiveInput:v28];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v13;
  v16 = [(NSDictionary *)v15 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [(NSDictionary *)v15 objectForKeyedSubscript:*(*(&v24 + 1) + 8 * v19), v24];
        [v20 sortUsingComparator:&__block_literal_global_60];

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSDictionary *)v15 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v17);
  }

  cacheHistoricalAppLaunches = self->_cacheHistoricalAppLaunches;
  self->_cacheHistoricalAppLaunches = v15;
  v22 = v15;

  v23 = *MEMORY[0x277D85DE8];
}

void __82__ATXNotificationResolutionAccumulator_cacheAppLaunchDataFromStartTime_toEndTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__ATXNotificationResolutionAccumulator_computeTimeToLaunchAppForNotification__block_invoke_cold_1(v2);
    }
  }
}

void __82__ATXNotificationResolutionAccumulator_cacheAppLaunchDataFromStartTime_toEndTime___block_invoke_55(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 eventBody];
  v4 = [v3 starting];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v19 eventBody];
    v7 = [v6 bundleID];
    v8 = [v5 objectForKeyedSubscript:v7];

    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 32);
      v11 = [v19 eventBody];
      v12 = [v11 bundleID];
      [v10 setObject:v9 forKeyedSubscript:v12];
    }

    v13 = *(a1 + 32);
    v14 = [v19 eventBody];
    v15 = [v14 bundleID];
    v16 = [v13 objectForKeyedSubscript:v15];
    v17 = [v19 eventBody];
    v18 = [v17 absoluteTimestamp];
    [v16 addObject:v18];
  }
}

- (void)historicalResolutionForNotification
{
  v3 = MEMORY[0x277CBEAA8];
  [(ATXUserNotification *)self->_userNotification timestamp];
  v107 = [v3 dateWithTimeIntervalSinceReferenceDate:v4 + -86400.0];
  v5 = MEMORY[0x277CBEAA8];
  [(ATXUserNotification *)self->_userNotification timestamp];
  v105 = [v5 dateWithTimeIntervalSinceReferenceDate:v6 + -604800.0];
  v7 = objc_alloc_init(MEMORY[0x277CCA940]);
  v102 = objc_alloc_init(MEMORY[0x277CCA940]);
  v8 = objc_alloc_init(MEMORY[0x277CCA940]);
  v86 = objc_alloc_init(MEMORY[0x277CCA940]);
  v100 = objc_alloc_init(MEMORY[0x277CCA940]);
  v98 = objc_alloc_init(MEMORY[0x277CCA940]);
  v96 = objc_alloc_init(MEMORY[0x277CCA940]);
  v94 = objc_alloc_init(MEMORY[0x277CCA940]);
  v92 = objc_alloc_init(MEMORY[0x277CCA940]);
  v90 = objc_alloc_init(MEMORY[0x277CCA940]);
  v88 = objc_alloc_init(MEMORY[0x277CCA940]);
  v9 = objc_alloc_init(MEMORY[0x277CCA940]);
  v10 = objc_alloc_init(MEMORY[0x277CCA940]);
  v11 = objc_alloc_init(MEMORY[0x277CCA940]);
  v12 = objc_alloc_init(MEMORY[0x277CCA940]);
  v81 = objc_alloc_init(MEMORY[0x277CCA940]);
  v79 = objc_alloc_init(MEMORY[0x277CCA940]);
  v77 = objc_alloc_init(MEMORY[0x277CCA940]);
  v13 = objc_opt_new();
  unifiedModePublisher = self->_unifiedModePublisher;
  notificationPublisher = self->_notificationPublisher;
  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 3221225472;
  v138[2] = __75__ATXNotificationResolutionAccumulator_historicalResolutionForNotification__block_invoke;
  v138[3] = &unk_278597CB8;
  v138[4] = self;
  v16 = [(BPSPublisher *)unifiedModePublisher orderedMergeWithOther:notificationPublisher comparator:v138];
  v136[0] = 0;
  v136[1] = v136;
  v136[2] = 0x3032000000;
  v136[3] = __Block_byref_object_copy__5;
  v136[4] = __Block_byref_object_dispose__5;
  v137 = 0;
  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3221225472;
  v109[2] = __75__ATXNotificationResolutionAccumulator_historicalResolutionForNotification__block_invoke_68;
  v109[3] = &unk_278597CE0;
  v109[4] = self;
  v131 = v136;
  v73 = v107;
  v110 = v73;
  v108 = v7;
  v111 = v108;
  v104 = v8;
  v112 = v104;
  v72 = v105;
  v113 = v72;
  v106 = v102;
  v114 = v106;
  v103 = v86;
  v115 = v103;
  v70 = v13;
  v116 = v70;
  v132 = xmmword_226871EE0;
  v101 = v100;
  v117 = v101;
  v87 = v9;
  v118 = v87;
  v99 = v98;
  v119 = v99;
  v85 = v10;
  v120 = v85;
  v133 = xmmword_226871EF0;
  v97 = v96;
  v121 = v97;
  v84 = v11;
  v122 = v84;
  v95 = v94;
  v123 = v95;
  v83 = v12;
  v124 = v83;
  v134 = xmmword_226871F00;
  v93 = v92;
  v125 = v93;
  v82 = v81;
  v126 = v82;
  v135 = 1800;
  v91 = v90;
  v127 = v91;
  v80 = v79;
  v128 = v80;
  v89 = v88;
  v129 = v89;
  v78 = v77;
  v130 = v78;
  v71 = v16;
  v17 = [v16 sinkWithCompletion:&__block_literal_global_66 shouldContinue:v109];
  v18 = objc_alloc(MEMORY[0x277CEB778]);
  bundleID = [(ATXUserNotification *)self->_userNotification bundleID];
  bundleID2 = [(ATXUserNotification *)self->_userNotification bundleID];
  v21 = [v108 countForObject:bundleID2];
  bundleID3 = [(ATXUserNotification *)self->_userNotification bundleID];
  v23 = [v106 countForObject:bundleID3];
  bundleID4 = [(ATXUserNotification *)self->_userNotification bundleID];
  v25 = percentageOfBundleIDInBucket(bundleID4, v108);
  bundleID5 = [(ATXUserNotification *)self->_userNotification bundleID];
  v76 = [v18 initWithBundleID:bundleID dailyNumberOfNotificationsReceivedForBundleID:v21 weeklyNumberOfNotificationsReceivedForBundleID:v23 dailyPercentageOfNotificationsReceivedForBundleID:v25 weeklyPercentageOfNotificationsReceivedForBundleID:{percentageOfBundleIDInBucket(bundleID5, v106)}];

  v27 = objc_alloc(MEMORY[0x277CEB778]);
  bundleID6 = [(ATXUserNotification *)self->_userNotification bundleID];
  bundleID7 = [(ATXUserNotification *)self->_userNotification bundleID];
  v30 = [v104 countForObject:bundleID7];
  bundleID8 = [(ATXUserNotification *)self->_userNotification bundleID];
  v32 = [v103 countForObject:bundleID8];
  bundleID9 = [(ATXUserNotification *)self->_userNotification bundleID];
  v34 = percentageOfBundleIDInBucket(bundleID9, v104);
  bundleID10 = [(ATXUserNotification *)self->_userNotification bundleID];
  v75 = [v27 initWithBundleID:bundleID6 dailyNumberOfNotificationsReceivedForBundleID:v30 weeklyNumberOfNotificationsReceivedForBundleID:v32 dailyPercentageOfNotificationsReceivedForBundleID:v34 weeklyPercentageOfNotificationsReceivedForBundleID:{percentageOfBundleIDInBucket(bundleID10, v103)}];

  v36 = objc_alloc(MEMORY[0x277CEB748]);
  bundleID11 = [(ATXUserNotification *)self->_userNotification bundleID];
  bundleID12 = [(ATXUserNotification *)self->_userNotification bundleID];
  v39 = percentageOfBundleIDInBucket(bundleID12, v101);
  bundleID13 = [(ATXUserNotification *)self->_userNotification bundleID];
  v41 = percentageOfBundleIDInBucket(bundleID13, v99);
  bundleID14 = [(ATXUserNotification *)self->_userNotification bundleID];
  v43 = percentageOfBundleIDInBucket(bundleID14, v97);
  bundleID15 = [(ATXUserNotification *)self->_userNotification bundleID];
  v45 = percentageOfBundleIDInBucket(bundleID15, v95);
  bundleID16 = [(ATXUserNotification *)self->_userNotification bundleID];
  v47 = percentageOfBundleIDInBucket(bundleID16, v93);
  bundleID17 = [(ATXUserNotification *)self->_userNotification bundleID];
  v49 = percentageOfBundleIDInBucket(bundleID17, v91);
  bundleID18 = [(ATXUserNotification *)self->_userNotification bundleID];
  v74 = [v36 initWithBundleID:bundleID11 percentageForOneMinuteDuration:v39 percentageForTwoMinutesDuration:v41 percentageForFiveMinutesDuration:v43 percentageForTenMinutesDuration:v45 percentageForTwentyMinutesDuration:v47 percentageForThirtyMinutesDuration:v49 percentageForSixtyMinutesDuration:{percentageOfBundleIDInBucket(bundleID18, v89)}];

  v51 = objc_alloc(MEMORY[0x277CEB748]);
  bundleID19 = [(ATXUserNotification *)self->_userNotification bundleID];
  bundleID20 = [(ATXUserNotification *)self->_userNotification bundleID];
  v54 = percentageOfBundleIDInBucket(bundleID20, v87);
  bundleID21 = [(ATXUserNotification *)self->_userNotification bundleID];
  v56 = percentageOfBundleIDInBucket(bundleID21, v85);
  bundleID22 = [(ATXUserNotification *)self->_userNotification bundleID];
  v58 = percentageOfBundleIDInBucket(bundleID22, v84);
  bundleID23 = [(ATXUserNotification *)self->_userNotification bundleID];
  v60 = percentageOfBundleIDInBucket(bundleID23, v83);
  bundleID24 = [(ATXUserNotification *)self->_userNotification bundleID];
  v62 = percentageOfBundleIDInBucket(bundleID24, v82);
  bundleID25 = [(ATXUserNotification *)self->_userNotification bundleID];
  v64 = percentageOfBundleIDInBucket(bundleID25, v80);
  bundleID26 = [(ATXUserNotification *)self->_userNotification bundleID];
  v66 = [v51 initWithBundleID:bundleID19 percentageForOneMinuteDuration:v54 percentageForTwoMinutesDuration:v56 percentageForFiveMinutesDuration:v58 percentageForTenMinutesDuration:v60 percentageForTwentyMinutesDuration:v62 percentageForThirtyMinutesDuration:v64 percentageForSixtyMinutesDuration:{percentageOfBundleIDInBucket(bundleID26, v78)}];

  v67 = [[ATXHistoricalResolutonsForNotification alloc] initWithNotification:self->_userNotification historicalVolumeByCountAndPercentage:v76 modeConditionedHistoricalVolumeByCountAndPercentage:v75 historicalResolutionByPercentage:v74 modeConditionedHistoricalResolutionByPercentage:v66];
  historicalResolutionsForNotification = self->_historicalResolutionsForNotification;
  self->_historicalResolutionsForNotification = v67;

  cacheHistoricalAppLaunches = self->_cacheHistoricalAppLaunches;
  self->_cacheHistoricalAppLaunches = 0;

  _Block_object_dispose(v136, 8);
}

uint64_t __75__ATXNotificationResolutionAccumulator_historicalResolutionForNotification__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) dateIntervalFromModeEvent:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [*(a1 + 32) dateIntervalFromNotificationEvent:v5];
  }

  v10 = v9;

  v11 = [*(a1 + 32) dateIntervalFromModeEvent:v6];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [*(a1 + 32) dateIntervalFromNotificationEvent:v6];
  }

  v14 = v13;

  if (v10)
  {
    if (v14)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v15 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    __75__ATXNotificationResolutionAccumulator_historicalResolutionForNotification__block_invoke_cold_1();
  }

  if (!v14)
  {
LABEL_13:
    v16 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __75__ATXNotificationResolutionAccumulator_historicalResolutionForNotification__block_invoke_cold_1();
    }
  }

LABEL_16:
  v17 = [v10 startDate];
  [v17 timeIntervalSinceReferenceDate];
  v19 = v18;

  v20 = [v14 startDate];
  [v20 timeIntervalSinceReferenceDate];
  v22 = v21;

  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
  v25 = [v23 compare:v24];

  return v25;
}

void __75__ATXNotificationResolutionAccumulator_historicalResolutionForNotification__block_invoke_64(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75__ATXNotificationResolutionAccumulator_historicalResolutionForNotification__block_invoke_64_cold_1(v2);
    }
  }
}

uint64_t __75__ATXNotificationResolutionAccumulator_historicalResolutionForNotification__block_invoke_68(void **a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 mode] == *(a1[4] + 2))
    {
      objc_storeStrong((*(a1[26] + 1) + 40), a2);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = [v6 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
LABEL_72:

      goto LABEL_73;
    }

    v9 = [v6 eventBody];
    if ([v9 usageType] != 17)
    {
LABEL_71:

      goto LABEL_72;
    }

    v108 = v6;
    v10 = a1[5];
    v11 = [v9 absoluteTimestamp];
    [v11 timeIntervalSinceDate:v10];
    v13 = v12;

    if (v13 >= 0.0 && v13 <= 86400.0)
    {
      v14 = a1[6];
      v15 = [v9 bundleID];
      [v14 addObject:v15];

      if (*(*(a1[26] + 1) + 40))
      {
        v16 = [v9 absoluteTimestamp];
        v17 = [*(*(a1[26] + 1) + 40) startTime];
        if ([v16 compare:v17] == -1)
        {

          goto LABEL_15;
        }

        v18 = [v9 absoluteTimestamp];
        v19 = [*(*(a1[26] + 1) + 40) endTime];
        v20 = [v18 compare:v19];

        if (v20 != 1)
        {
          v21 = a1[7];
          v16 = [v9 bundleID];
          [v21 addObject:v16];
LABEL_15:
        }
      }
    }

    v22 = a1[8];
    v23 = [v9 absoluteTimestamp];
    [v23 timeIntervalSinceDate:v22];
    v25 = v24;

    if (v25 < 0.0)
    {
      goto LABEL_24;
    }

    if (v25 > 604800.0)
    {
      goto LABEL_24;
    }

    v26 = a1[9];
    v27 = [v9 bundleID];
    [v26 addObject:v27];

    if (!*(*(a1[26] + 1) + 40))
    {
      goto LABEL_24;
    }

    v28 = [v9 absoluteTimestamp];
    v29 = [*(*(a1[26] + 1) + 40) startTime];
    if ([v28 compare:v29] == -1)
    {
    }

    else
    {
      v30 = [v9 absoluteTimestamp];
      v31 = [*(*(a1[26] + 1) + 40) endTime];
      v32 = [v30 compare:v31];

      if (v32 == 1)
      {
LABEL_24:
        v34 = *(a1[4] + 8);
        v35 = [v9 bundleID];
        v36 = [v34 objectForKeyedSubscript:v35];

        if (v36)
        {
          v37 = a1[11];
          v38 = [v9 bundleID];
          v39 = [v37 objectForKeyedSubscript:v38];

          v106 = v39;
          if (v39)
          {
            v40 = [v39 integerValue];
          }

          else
          {
            v40 = 0;
          }

          v41 = [v36 count] - 1;
          if (v40 <= v41)
          {
            v105 = a1 + 25;
            do
            {
              v42 = v40 + (v41 - v40) / 2;
              v43 = [v36 objectAtIndexedSubscript:{v42, v105}];
              v44 = [v9 absoluteTimestamp];
              [v43 timeIntervalSinceDate:v44];
              v46 = v45;

              if (v46 <= 0.0)
              {
                v40 = v42 + 1;
              }

              else if (v46 <= a1[27])
              {
                v107 = v43;
                do
                {
                  v47 = v42;
                  if (v42 <= v40)
                  {
                    break;
                  }

                  --v42;
                  v48 = [v36 objectAtIndexedSubscript:v47 - 1];
                  v49 = [v9 absoluteTimestamp];
                  [v48 timeIntervalSinceDate:v49];
                  v51 = v50;

                  if (v51 <= 0.0)
                  {
                    break;
                  }
                }

                while (v51 <= a1[27]);
                v52 = [v36 objectAtIndexedSubscript:v47];
                v53 = [v9 absoluteTimestamp];
                [v52 timeIntervalSinceDate:v53];
                v55 = v54;

                if (v55 <= a1[28])
                {
                  v56 = a1[12];
                  v57 = [v9 bundleID];
                  [v56 addObject:v57];

                  v58 = a1 + 13;
                  if (!*(*(a1[26] + 1) + 40))
                  {
                    goto LABEL_68;
                  }

                  v59 = [v9 absoluteTimestamp];
                  v60 = a1[28];
                  v61 = [*(*(a1[26] + 1) + 40) startTime];
                  v62 = [*(*(a1[26] + 1) + 40) endTime];
                  LOBYTE(v60) = isTimeRangeWithinTimeRange(v59, v60, v61, v62);

                  if ((v60 & 1) == 0)
                  {
LABEL_68:
                    v101 = [MEMORY[0x277CCABB0] numberWithInteger:v47];
                    v102 = a1[11];
                    v103 = [v9 bundleID];
                    [v102 setObject:v101 forKeyedSubscript:v103];

                    break;
                  }

LABEL_67:
                  v99 = *v58;
                  v100 = [v9 bundleID];
                  [v99 addObject:v100];

                  goto LABEL_68;
                }

                if (v55 <= a1[29])
                {
                  v63 = a1[14];
                  v64 = [v9 bundleID];
                  [v63 addObject:v64];

                  if (!*(*(a1[26] + 1) + 40))
                  {
                    goto LABEL_68;
                  }

                  v65 = [v9 absoluteTimestamp];
                  v66 = a1[29];
                  v67 = [*(*(a1[26] + 1) + 40) startTime];
                  v68 = [*(*(a1[26] + 1) + 40) endTime];
                  LOBYTE(v66) = isTimeRangeWithinTimeRange(v65, v66, v67, v68);

                  v58 = a1 + 15;
                  if ((v66 & 1) == 0)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_67;
                }

                if (v55 <= a1[30])
                {
                  v69 = a1[16];
                  v70 = [v9 bundleID];
                  [v69 addObject:v70];

                  if (!*(*(a1[26] + 1) + 40))
                  {
                    goto LABEL_68;
                  }

                  v71 = [v9 absoluteTimestamp];
                  v72 = a1[30];
                  v73 = [*(*(a1[26] + 1) + 40) startTime];
                  v74 = [*(*(a1[26] + 1) + 40) endTime];
                  LOBYTE(v72) = isTimeRangeWithinTimeRange(v71, v72, v73, v74);

                  v58 = a1 + 17;
                  if ((v72 & 1) == 0)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_67;
                }

                if (v55 <= a1[31])
                {
                  v75 = a1[18];
                  v76 = [v9 bundleID];
                  [v75 addObject:v76];

                  if (!*(*(a1[26] + 1) + 40))
                  {
                    goto LABEL_68;
                  }

                  v77 = [v9 absoluteTimestamp];
                  v78 = a1[31];
                  v79 = [*(*(a1[26] + 1) + 40) startTime];
                  v80 = [*(*(a1[26] + 1) + 40) endTime];
                  LOBYTE(v78) = isTimeRangeWithinTimeRange(v77, v78, v79, v80);

                  v58 = a1 + 19;
                  if ((v78 & 1) == 0)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_67;
                }

                if (v55 <= a1[32])
                {
                  v81 = a1[20];
                  v82 = [v9 bundleID];
                  [v81 addObject:v82];

                  if (!*(*(a1[26] + 1) + 40))
                  {
                    goto LABEL_68;
                  }

                  v83 = [v9 absoluteTimestamp];
                  v84 = a1[32];
                  v85 = [*(*(a1[26] + 1) + 40) startTime];
                  v86 = [*(*(a1[26] + 1) + 40) endTime];
                  LOBYTE(v84) = isTimeRangeWithinTimeRange(v83, v84, v85, v86);

                  v58 = a1 + 21;
                  if ((v84 & 1) == 0)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_67;
                }

                if (v55 <= a1[33])
                {
                  v87 = a1[22];
                  v88 = [v9 bundleID];
                  [v87 addObject:v88];

                  if (!*(*(a1[26] + 1) + 40))
                  {
                    goto LABEL_68;
                  }

                  v89 = [v9 absoluteTimestamp];
                  v90 = a1[33];
                  v91 = [*(*(a1[26] + 1) + 40) startTime];
                  v92 = [*(*(a1[26] + 1) + 40) endTime];
                  LOBYTE(v90) = isTimeRangeWithinTimeRange(v89, v90, v91, v92);

                  v58 = a1 + 23;
                  if ((v90 & 1) == 0)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_67;
                }

                v43 = v107;
                if (v55 <= a1[27])
                {
                  v93 = a1[24];
                  v94 = [v9 bundleID];
                  [v93 addObject:v94];

                  if (!*(*(a1[26] + 1) + 40))
                  {
                    goto LABEL_68;
                  }

                  v95 = [v9 absoluteTimestamp];
                  v96 = a1[27];
                  v97 = [*(*(a1[26] + 1) + 40) startTime];
                  v98 = [*(*(a1[26] + 1) + 40) endTime];
                  LOBYTE(v96) = isTimeRangeWithinTimeRange(v95, v96, v97, v98);

                  v58 = v105;
                  if ((v96 & 1) == 0)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_67;
                }
              }

              else
              {
                v41 = v42 - 1;
              }
            }

            while (v40 <= v41);
          }
        }

        v6 = v108;
        goto LABEL_71;
      }

      v33 = a1[10];
      v28 = [v9 bundleID];
      [v33 addObject:v28];
    }

    goto LABEL_24;
  }

LABEL_73:

  return 1;
}

- (id)dateIntervalFromModeEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
    endTime = [v4 endTime];

    v6 = objc_alloc(MEMORY[0x277CCA970]);
    startTime = [v4 startTime];
    if (endTime)
    {
      [v4 endTime];
    }

    else
    {
      [v4 startTime];
    }
    v9 = ;
    v8 = [v6 initWithStartDate:startTime endDate:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)dateIntervalFromNotificationEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
    eventBody = [v4 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      eventBody2 = [v4 eventBody];
      v8 = objc_alloc(MEMORY[0x277CCA970]);
      absoluteTimestamp = [eventBody2 absoluteTimestamp];
      absoluteTimestamp2 = [eventBody2 absoluteTimestamp];
      v11 = [v8 initWithStartDate:absoluteTimestamp endDate:absoluteTimestamp2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)removeOldestEntry
{
  v24 = *MEMORY[0x277D85DE8];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [(NSMutableDictionary *)self->_cachedHistoricalResolutionsForNotifications allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    obj = allKeys;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_cachedHistoricalResolutionsForNotifications objectForKeyedSubscript:v10];
        v12 = MEMORY[0x277CBEAA8];
        userNotification = [v11 userNotification];
        [userNotification timestamp];
        v14 = [v12 dateWithTimeIntervalSinceReferenceDate:?];

        if ([v14 compare:distantFuture] == -1)
        {
          v15 = v14;

          v16 = v10;
          distantFuture = v15;
          v7 = v16;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);

    if (v7)
    {
      [(NSMutableDictionary *)self->_cachedHistoricalResolutionsForNotifications removeObjectForKey:v7];
    }
  }

  else
  {

    v7 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)unloadHistoricalResolutionsForNotifications
{
  obj = self;
  objc_sync_enter(obj);
  cachedHistoricalResolutionsForNotifications = obj->_cachedHistoricalResolutionsForNotifications;
  obj->_cachedHistoricalResolutionsForNotifications = 0;

  objc_sync_exit(obj);
}

void __77__ATXNotificationResolutionAccumulator_computeTimeToLaunchAppForNotification__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "ATXNotificationResolutionAccumulator: Error reading App.InFocus stream: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __75__ATXNotificationResolutionAccumulator_historicalResolutionForNotification__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "ATXNotificationResolutionAccumulator: During ordered merge, encountered unknown event: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __75__ATXNotificationResolutionAccumulator_historicalResolutionForNotification__block_invoke_64_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "ATXNotificationResolutionAccumulator: Error from merged publishers: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end