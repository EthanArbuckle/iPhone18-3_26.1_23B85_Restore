@interface ATXDigestSetupFlowProvider
- (ATXDigestSetupFlowProvider)init;
- (ATXDigestSetupFlowProvider)initWithDatastore:(id)a3;
- (id)appsSortedByNumOfNotificationsGivenNumOfDays:(unint64_t)a3;
- (unint64_t)numDaysSinceTimestamp:(double)a3;
- (void)addRemainingAppsWithNoNotificationVolume:(id)a3;
@end

@implementation ATXDigestSetupFlowProvider

- (ATXDigestSetupFlowProvider)init
{
  v3 = objc_opt_new();
  v4 = [(ATXDigestSetupFlowProvider *)self initWithDatastore:v3];

  return v4;
}

- (ATXDigestSetupFlowProvider)initWithDatastore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXDigestSetupFlowProvider;
  v6 = [(ATXDigestSetupFlowProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_datastore, a3);
    v7->_containsMessageAndTimeSensitiveData = 1;
    v7->_numDaysOfData = 0;
  }

  return v7;
}

- (id)appsSortedByNumOfNotificationsGivenNumOfDays:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  [(ATXNotificationAndSuggestionDatastore *)self->_datastore receiveTimeStampOfFirstNotification];
  v6 = v5;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v8 = v7 - (86400 * a3);
  v9 = __atxlog_handle_notification_management();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v6 == 0.0)
  {
    if (v10)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Notifications database was empty", &v18, 2u);
    }

    v11 = 0;
  }

  else
  {
    if (v10)
    {
      v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
      v18 = 138412290;
      v19 = v12;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "First notification in the database was on: %@", &v18, 0xCu);
    }

    v11 = [(ATXDigestSetupFlowProvider *)self numDaysSinceTimestamp:v6];
  }

  self->_numDaysOfData = v11;
  v13 = [(ATXNotificationAndSuggestionDatastore *)self->_datastore appSortedByNumOfNotificationsSinceTimestamp:v8];
  v14 = [v13 mutableCopy];

  [(ATXDigestSetupFlowProvider *)self addRemainingAppsWithNoNotificationVolume:v14];
  v15 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [(ATXDigestSetupFlowProvider *)v14 appsSortedByNumOfNotificationsGivenNumOfDays:v15];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (unint64_t)numDaysSinceTimestamp:(double)a3
{
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a3];
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [v4 components:16 fromDate:v5 toDate:v6 options:2];

  v8 = [v7 day];
  return v8 + 1;
}

- (void)addRemainingAppsWithNoNotificationVolume:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[_ATXAppIconState sharedInstance];
  v5 = MEMORY[0x277CBEB58];
  v6 = [v4 allAppsKnownToSpringBoard];
  v7 = [v5 setWithArray:v6];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = [v13 bundleId];
        v15 = [v7 containsObject:v14];

        if (v15)
        {
          v16 = [v13 bundleId];
          [v7 removeObject:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  v17 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = v7;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v27 + 1) + 8 * j);
        v24 = objc_alloc(MEMORY[0x277CEB348]);
        v25 = [v24 initWithBundleId:v23 numBasicNotifications:0 numMessageNotifications:0 numTimeSenstiveNonMessageNotifications:{0, v27}];
        [v17 addObject:v25];
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }

  [v8 addObjectsFromArray:v17];
  v26 = *MEMORY[0x277D85DE8];
}

- (void)appsSortedByNumOfNotificationsGivenNumOfDays:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 count];
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Total number of apps being returned: %lu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end