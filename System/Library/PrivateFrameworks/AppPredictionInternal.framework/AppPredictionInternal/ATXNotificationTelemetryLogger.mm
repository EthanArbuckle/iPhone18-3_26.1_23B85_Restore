@interface ATXNotificationTelemetryLogger
- (ATXNotificationTelemetryLogger)initWithContactStore:(id)store;
- (ATXNotificationTelemetryLogger)initWithDatastore:(id)datastore featuresCorrelator:(id)correlator modeConfigClient:(id)client contactStore:(id)store;
- (id)summaryMetricsForActivityType:(unint64_t)type;
- (id)userNotificationWithUUID:(id)d withTimeStamp:(double)stamp urgency:(int64_t)urgency fromNotificationStreamWithStartTime:(id)time endTime:(id)endTime;
- (void)logNotificationMetricsFromStartTimestamp:(id)timestamp toEndTimestamp:(id)endTimestamp withTask:(id)task;
- (void)logNotificationMetricsWithBreakthroughFeaturesFromStartTimestamp:(id)timestamp toEndTimestamp:(id)endTimestamp withTelemetryQueryResult:(id)result withTask:(id)task;
- (void)logNotificationMetricsWithTask:(id)task;
@end

@implementation ATXNotificationTelemetryLogger

- (ATXNotificationTelemetryLogger)initWithContactStore:(id)store
{
  storeCopy = store;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
  v8 = [(ATXNotificationTelemetryLogger *)self initWithDatastore:v5 featuresCorrelator:v6 modeConfigClient:mEMORY[0x277CEB440] contactStore:storeCopy];

  return v8;
}

- (ATXNotificationTelemetryLogger)initWithDatastore:(id)datastore featuresCorrelator:(id)correlator modeConfigClient:(id)client contactStore:(id)store
{
  datastoreCopy = datastore;
  correlatorCopy = correlator;
  clientCopy = client;
  storeCopy = store;
  v27.receiver = self;
  v27.super_class = ATXNotificationTelemetryLogger;
  v15 = [(ATXNotificationTelemetryLogger *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_datastore, datastore);
    objc_storeStrong(&v16->_featuresCorrelator, correlator);
    objc_storeStrong(&v16->_modeConfigClient, client);
    v17 = objc_opt_new();
    summaryMetrics = v16->_summaryMetrics;
    v16->_summaryMetrics = v17;

    objc_storeStrong(&v16->_contactStore, store);
    v19 = [[ATXContactRelationshipsCollector alloc] initWithContactStore:storeCopy];
    contactRelationships = v16->_contactRelationships;
    v16->_contactRelationships = v19;

    v21 = [ATXNotificationNextAppLaunchRecorder alloc];
    v22 = objc_alloc(MEMORY[0x277CBEBD0]);
    v23 = [v22 initWithSuiteName:*MEMORY[0x277CEBD00]];
    v24 = [(ATXNotificationNextAppLaunchRecorder *)v21 initWithDefaults:v23 dataStore:v16->_datastore];
    notificationNextAppLaunchRecorder = v16->_notificationNextAppLaunchRecorder;
    v16->_notificationNextAppLaunchRecorder = v24;
  }

  return v16;
}

- (void)logNotificationMetricsFromStartTimestamp:(id)timestamp toEndTimestamp:(id)endTimestamp withTask:(id)task
{
  timestampCopy = timestamp;
  endTimestampCopy = endTimestamp;
  taskCopy = task;
  v11 = __atxlog_handle_metrics();
  v12 = os_signpost_id_generate(v11);

  [(ATXNotificationAndSuggestionDatastore *)self->_datastore updateDatabase];
  [(ATXNotificationNextAppLaunchRecorder *)self->_notificationNextAppLaunchRecorder updateNotificationsWithNextAppLaunch];
  datastore = self->_datastore;
  [timestampCopy timeIntervalSinceReferenceDate];
  v15 = v14;
  [endTimestampCopy timeIntervalSinceReferenceDate];
  v17 = [(ATXNotificationAndSuggestionDatastore *)datastore telemetryDataForNotificationsFromTimestamp:v15 endTimestamp:v16];
  v18 = objc_alloc_init(ATXBundleIdRedactor);
  v19 = [v17 _pas_mappedArrayWithTransform:&__block_literal_global_237];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __99__ATXNotificationTelemetryLogger_logNotificationMetricsFromStartTimestamp_toEndTimestamp_withTask___block_invoke_2;
  v24[3] = &unk_2785A14C8;
  v25 = v17;
  v26 = taskCopy;
  selfCopy = self;
  v28 = timestampCopy;
  v29 = endTimestampCopy;
  v30 = v12;
  v20 = endTimestampCopy;
  v21 = timestampCopy;
  v22 = taskCopy;
  v23 = v17;
  [(ATXBundleIdRedactor *)v18 redactWithBundleIds:v19 completionHandler:v24];
}

void __99__ATXNotificationTelemetryLogger_logNotificationMetricsFromStartTimestamp_toEndTimestamp_withTask___block_invoke_2(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v4 = 0;
    do
    {
      if (v4 >= [v3 count])
      {
        v5 = [*(a1 + 32) objectAtIndexedSubscript:v4];
        [v5 setBundleId:@"redacted-failed-count-mismatch"];
      }

      else
      {
        v5 = [v3 objectAtIndexedSubscript:v4];
        v6 = [*(a1 + 32) objectAtIndexedSubscript:v4];
        [v6 setBundleId:v5];
      }

      ++v4;
    }

    while (v4 < [*(a1 + 32) count]);
  }

  v50 = v3;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v61;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v61 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v60 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [[ATXNotificationEventMetric alloc] initWithQueryResult:v12];
        [(_ATXCoreAnalyticsMetric *)v14 logToCoreAnalytics];

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v9);
  }

  if ([*(a1 + 40) didDefer])
  {
    v15 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 48);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138412290;
      v67 = v18;
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "%@ - Deferring after notification event metrics logging", buf, 0xCu);
    }

    v19 = v50;
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = *(a1 + 32);
    v21 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v57;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v57 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v56 + 1) + 8 * j);
          v26 = objc_autoreleasePoolPush();
          v27 = [v25 receiveModeIdentifier];
          if (v27)
          {
            v28 = *(*(a1 + 48) + 24);
            v29 = a1;
            v30 = objc_alloc(MEMORY[0x277CCAD78]);
            v31 = [v25 receiveModeIdentifier];
            v32 = [v30 initWithUUIDString:v31];
            [v28 atxModeForDNDMode:v32];
            v33 = ATXActivityTypeFromMode();

            a1 = v29;
          }

          else
          {
            v33 = ATXActivityTypeFromMode();
          }

          v34 = [*(a1 + 48) summaryMetricsForActivityType:v33];
          [v34 handleTelemetryResult:v25];

          objc_autoreleasePoolPop(v26);
        }

        v22 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v22);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v35 = [*(*(a1 + 48) + 32) allValues];
    v36 = [v35 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v53;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v53 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v52 + 1) + 8 * k);
          v41 = objc_autoreleasePoolPush();
          [v40 logToCoreAnalytics];
          objc_autoreleasePoolPop(v41);
        }

        v37 = [v35 countByEnumeratingWithState:&v52 objects:v64 count:16];
      }

      while (v37);
    }

    if ([*(a1 + 40) didDefer])
    {
      v15 = __atxlog_handle_metrics();
      v19 = v50;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v42 = *(a1 + 48);
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        *buf = 138412290;
        v67 = v44;
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "%@ - Deferring after summary metrics logging", buf, 0xCu);
      }
    }

    else
    {
      v19 = v50;
      if (![MEMORY[0x277CEBC58] isBreakthroughDataCollectionEnabled])
      {
        goto LABEL_19;
      }

      v45 = __atxlog_handle_metrics();
      v46 = v45;
      v47 = *(a1 + 72);
      if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v46, OS_SIGNPOST_INTERVAL_BEGIN, v47, "FocusMetricsLogging.NotificationBreakthroughMetrics", " enableTelemetry=YES ", buf, 2u);
      }

      [*(a1 + 48) logNotificationMetricsWithBreakthroughFeaturesFromStartTimestamp:*(a1 + 56) toEndTimestamp:*(a1 + 64) withTelemetryQueryResult:*(a1 + 32) withTask:*(a1 + 40)];
      v48 = __atxlog_handle_metrics();
      v15 = v48;
      v49 = *(a1 + 72);
      if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v15, OS_SIGNPOST_INTERVAL_END, v49, "FocusMetricsLogging.NotificationBreakthroughMetrics", " enableTelemetry=YES ", buf, 2u);
      }
    }
  }

LABEL_19:
  v20 = *MEMORY[0x277D85DE8];
}

- (id)summaryMetricsForActivityType:(unint64_t)type
{
  v4 = [ATXModeDimensionSet alloc];
  v5 = ATXActivityTypeToString();
  v6 = [(ATXModeDimensionSet *)v4 initWithMode:v5];

  v7 = [(NSMutableDictionary *)self->_summaryMetrics objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [[ATXNotificationHandleSummaryMetrics alloc] initWithDimensions:v6];
    [(NSMutableDictionary *)self->_summaryMetrics setObject:v8 forKeyedSubscript:v6];
  }

  v9 = [(NSMutableDictionary *)self->_summaryMetrics objectForKeyedSubscript:v6];

  return v9;
}

- (void)logNotificationMetricsWithBreakthroughFeaturesFromStartTimestamp:(id)timestamp toEndTimestamp:(id)endTimestamp withTelemetryQueryResult:(id)result withTask:(id)task
{
  v44 = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  endTimestampCopy = endTimestamp;
  resultCopy = result;
  taskCopy = task;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = resultCopy;
  v11 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v38;
    while (2)
    {
      v15 = 0;
      v16 = v13;
      v17 = v13 <= 0x63;
      v18 = 99 - v13;
      v32 = v16 + v12;
      if (v17)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      do
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v37 + 1) + 8 * v15);
        v21 = objc_autoreleasePoolPush();
        notificationUUID = [v20 notificationUUID];
        receiveTimestamp = [v20 receiveTimestamp];
        [receiveTimestamp timeIntervalSinceReferenceDate];
        v25 = -[ATXNotificationTelemetryLogger userNotificationWithUUID:withTimeStamp:urgency:fromNotificationStreamWithStartTime:endTime:](self, "userNotificationWithUUID:withTimeStamp:urgency:fromNotificationStreamWithStartTime:endTime:", notificationUUID, [v20 urgency], timestampCopy, endTimestampCopy, v24);

        v26 = [(ATXDynamicBreakthroughFeaturesCorrelator *)self->_featuresCorrelator collectDynamicBreakthroughFeaturesForNotification:v25 contactStore:self->_contactStore withContactRelationships:self->_contactRelationships];
        v27 = [[ATXNotificationBreakthroughEventMetric alloc] initWithQueryResult:v20 featureCollectionSet:v26];
        [(_ATXCoreAnalyticsMetric *)v27 logToCoreAnalytics];
        if (v19 == v15)
        {
          goto LABEL_16;
        }

        if ([taskCopy didDefer])
        {
          v28 = __atxlog_handle_metrics();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = objc_opt_class();
            v30 = NSStringFromClass(v29);
            *buf = 138412290;
            v42 = v30;
            _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_INFO, "%@ - Terminating due to XPC deferral", buf, 0xCu);
          }

LABEL_16:
          objc_autoreleasePoolPop(v21);
          goto LABEL_17;
        }

        objc_autoreleasePoolPop(v21);
        ++v15;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      v13 = v32;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)logNotificationMetricsWithTask:(id)task
{
  v29 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v5 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v23 = 138412290;
    v24 = v7;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "[%@] - Logging notification metrics", &v23, 0xCu);
  }

  v8 = objc_alloc(MEMORY[0x277CBEBD0]);
  v9 = [v8 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v9 doubleForKey:@"notificationTelemetryLoggingTimestampKey"];
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
  v12 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v10 timeIntervalSinceReferenceDate];
    v16 = v15;
    [v11 timeIntervalSinceReferenceDate];
    v23 = 138412802;
    v24 = v14;
    v25 = 2048;
    v26 = v16;
    v27 = 2048;
    v28 = v17;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "[%@] - Start timestamp found: %f, End Timestamp: %f", &v23, 0x20u);
  }

  if ([v10 compare:v11] == -1)
  {
    [(ATXNotificationTelemetryLogger *)self logNotificationMetricsFromStartTimestamp:v10 toEndTimestamp:v11 withTask:taskCopy];
    v18 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      [v11 timeIntervalSinceReferenceDate];
      v23 = 138412546;
      v24 = v20;
      v25 = 2048;
      v26 = v21;
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_INFO, "[%@] - Finished logging.  Setting stored timestamp to timestamp: %f", &v23, 0x16u);
    }

    [v11 timeIntervalSinceReferenceDate];
    [v9 setDouble:@"notificationTelemetryLoggingTimestampKey" forKey:?];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)userNotificationWithUUID:(id)d withTimeStamp:(double)stamp urgency:(int64_t)urgency fromNotificationStreamWithStartTime:(id)time endTime:(id)endTime
{
  dCopy = d;
  timeCopy = time;
  endTimeCopy = endTime;
  uUIDString = [dCopy UUIDString];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__99;
  v34 = __Block_byref_object_dispose__99;
  v35 = 0;
  v15 = BiomeLibrary();
  notification = [v15 Notification];
  usage = [notification Usage];
  v18 = [usage atx_publisherWithStartDate:timeCopy endDate:endTimeCopy maxEvents:0 lastN:0 reversed:0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __125__ATXNotificationTelemetryLogger_userNotificationWithUUID_withTimeStamp_urgency_fromNotificationStreamWithStartTime_endTime___block_invoke_41;
  v24[3] = &unk_2785A14F0;
  v19 = uUIDString;
  v25 = v19;
  v27 = &v30;
  v20 = dCopy;
  v26 = v20;
  stampCopy = stamp;
  urgencyCopy = urgency;
  v21 = [v18 sinkWithCompletion:&__block_literal_global_40_1 shouldContinue:v24];

  v22 = v31[5];
  _Block_object_dispose(&v30, 8);

  return v22;
}

void __125__ATXNotificationTelemetryLogger_userNotificationWithUUID_withTimeStamp_urgency_fromNotificationStreamWithStartTime_endTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __125__ATXNotificationTelemetryLogger_userNotificationWithUUID_withTimeStamp_urgency_fromNotificationStreamWithStartTime_endTime___block_invoke_cold_1(v2, v4);
    }
  }
}

uint64_t __125__ATXNotificationTelemetryLogger_userNotificationWithUUID_withTimeStamp_urgency_fromNotificationStreamWithStartTime_endTime___block_invoke_41(double *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 notificationID];
  v6 = [v5 isEqualToString:*(a1 + 4)];

  if (v6)
  {
    v7 = [v3 eventBody];
    v24 = objc_alloc(MEMORY[0x277CEB958]);
    v23 = *(a1 + 5);
    v8 = a1[7];
    v9 = [v7 title];
    v22 = [v7 subtitle];
    v21 = [v7 body];
    v20 = [v7 badge];
    v19 = [v7 bundleID];
    v18 = [v7 threadID];
    v10 = [v7 categoryID];
    v11 = [v7 sectionID];
    v12 = [v7 contactIDs];
    LOBYTE(v17) = [v7 isGroupMessage];
    v13 = [v24 initFromNotificationData:v23 timestamp:v9 title:v22 subtitle:v21 body:v20 badge:0 userInfo:v8 bundleID:v19 threadID:v18 categoryID:v10 sectionID:v11 contactIDs:v12 rawIdentifiers:0 isGroupMessage:v17 derivedData:0 urgency:*(a1 + 8)];
    v14 = *(*(a1 + 6) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  return v6 ^ 1u;
}

void __125__ATXNotificationTelemetryLogger_userNotificationWithUUID_withTimeStamp_urgency_fromNotificationStreamWithStartTime_endTime___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXNotificationTelemetryLogger: Error reading Notification.Usage stream: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end