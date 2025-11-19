@interface ATXUrgencyTuningGlobalMetricsLogger
- (ATXUrgencyTuningGlobalMetricsLogger)init;
- (void)logUrgencyTuningGlobalMetricsWithXPCActivity:(id)a3;
@end

@implementation ATXUrgencyTuningGlobalMetricsLogger

- (ATXUrgencyTuningGlobalMetricsLogger)init
{
  v6.receiver = self;
  v6.super_class = ATXUrgencyTuningGlobalMetricsLogger;
  v2 = [(ATXUrgencyTuningGlobalMetricsLogger *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    eventTrackerLogger = v2->_eventTrackerLogger;
    v2->_eventTrackerLogger = v3;
  }

  return v2;
}

- (void)logUrgencyTuningGlobalMetricsWithXPCActivity:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v5 = v4 + -86400.0;
  v6 = objc_opt_new();
  v34 = [v6 engagementStatusOfActiveAndProminentNotificationsWithUrgency:1 sinceTimestamp:v5];
  if ([v3 didDefer])
  {
    v7 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138412290;
      v42 = v9;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "%@ - XPC Activity deferred, terminating.", buf, 0xCu);
    }
  }

  else
  {
    v7 = [v6 totalNotificationsPerAppFromStartTime:v5 toEndTime:CFAbsoluteTimeGetCurrent()];
    if ([v3 didDefer])
    {
      v10 = __atxlog_handle_metrics();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138412290;
        v42 = v12;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "%@ - XPC Activity deferred, terminating.", buf, 0xCu);
      }

      v13 = v10;
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v13 = v7;
      v35 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v35)
      {
        v30 = v7;
        v31 = v6;
        v32 = *v37;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v37 != v32)
            {
              objc_enumerationMutation(v13);
            }

            v15 = *(*(&v36 + 1) + 8 * i);
            v16 = [v34 objectForKeyedSubscript:{v15, v30, v31}];
            v17 = [v16 second];

            v18 = [v13 objectForKeyedSubscript:v15];
            v19 = [v18 unsignedIntegerValue];

            if (v17)
            {
              v20 = [v17 first];
              v21 = v3;
              v22 = v13;
              v23 = [v20 unsignedIntegerValue];
              v24 = [v17 second];
              v25 = [v24 unsignedIntegerValue] + v23;

              v26 = [v17 first];
              v27 = [v26 unsignedIntegerValue];

              v13 = v22;
              v3 = v21;
              v28 = v27;
            }

            else
            {
              v25 = 0;
              v28 = 0.0;
            }

            [(ATXUrgencyTuningGlobalMetricsLogger *)self logCountForNotificationWithBundleId:v15 isTimeSensitiveNotification:1 isEngagedTimeSensitiveNotification:1 count:v3 xpcActivity:v28];
            [(ATXUrgencyTuningGlobalMetricsLogger *)self logCountForNotificationWithBundleId:v15 isTimeSensitiveNotification:1 isEngagedTimeSensitiveNotification:0 count:v3 xpcActivity:v25];
            [(ATXUrgencyTuningGlobalMetricsLogger *)self logCountForNotificationWithBundleId:v15 isTimeSensitiveNotification:0 isEngagedTimeSensitiveNotification:0 count:v3 xpcActivity:(v19 - v25)];
          }

          v35 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v35);
        v7 = v30;
        v6 = v31;
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

@end