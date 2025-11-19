@interface ATXDailyNotificationsAccumulator
- (BOOL)successfullyAccumulatedNotificationEvents;
- (void)successfullyAccumulatedNotificationEvents;
@end

@implementation ATXDailyNotificationsAccumulator

- (BOOL)successfullyAccumulatedNotificationEvents
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x277CBEB58]);
  v5 = +[_ATXAppIconState sharedInstance];
  v6 = [v5 allInstalledAppsKnownToSpringBoard];
  v7 = [v4 initWithArray:v6];

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v9 = BiomeLibrary();
  v10 = [v9 Notification];
  v11 = [v10 Usage];

  v12 = [v11 atx_publisherWithStartDate:v8 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v24 = 0;
  v25[0] = &v24;
  v25[1] = 0x3032000000;
  v25[2] = __Block_byref_object_copy__48;
  v25[3] = __Block_byref_object_dispose__48;
  v26 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __77__ATXDailyNotificationsAccumulator_successfullyAccumulatedNotificationEvents__block_invoke;
  v23[3] = &unk_278597540;
  v23[4] = &v24;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__ATXDailyNotificationsAccumulator_successfullyAccumulatedNotificationEvents__block_invoke_2;
  v20[3] = &unk_2785988C8;
  v13 = v7;
  v21 = v13;
  v14 = v3;
  v22 = v14;
  v15 = [v12 sinkWithCompletion:v23 receiveInput:v20];
  v16 = *(v25[0] + 40);
  if (v16)
  {
    v17 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(ATXDailyNotificationsAccumulator *)v25 successfullyAccumulatedNotificationEvents];
    }
  }

  else
  {
    objc_storeStrong(&self->_allDeliveredNotifications, v3);
    v17 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v28 = "[ATXDailyNotificationsAccumulator successfullyAccumulatedNotificationEvents]";
      _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_INFO, "%s: Successfully accumulated notification events", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v24, 8);
  v18 = *MEMORY[0x277D85DE8];
  return v16 == 0;
}

uint64_t __77__ATXDailyNotificationsAccumulator_successfullyAccumulatedNotificationEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __77__ATXDailyNotificationsAccumulator_successfullyAccumulatedNotificationEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v28 = v3;
  v5 = [v3 eventBody];
  v6 = [v5 bundleID];
  LODWORD(v4) = [v4 containsObject:v6];

  if (v4)
  {
    v7 = [v28 eventBody];
    v8 = [v7 usageType];

    if (v8 == 17)
    {
      v9 = v28;
      v10 = 1;
    }

    else
    {
      v11 = [v28 eventBody];
      v12 = [v11 usageType];

      if (v12 != 18)
      {
        goto LABEL_7;
      }

      v9 = v28;
      v10 = 2;
    }

    v27 = v10;
    v13 = [v9 eventBody];
    v14 = [v13 bundleID];
    v15 = [ATXSessionTaggingAppEntity genreIdForBundleId:v14];
    v16 = [v15 unsignedIntegerValue];

    v17 = *(a1 + 40);
    v18 = objc_alloc(MEMORY[0x277CEB908]);
    v19 = [v28 eventBody];
    v20 = [v19 bundleID];
    v21 = [v28 eventBody];
    v22 = [v21 absoluteTimestamp];
    v23 = [v28 eventBody];
    v24 = [v23 contactIDs];
    v25 = [v28 eventBody];
    v26 = [v18 initWithBundleID:v20 category:v16 eventTime:v22 contactIDs:v24 isGroupMessage:objc_msgSend(v25 deliveryType:{"isGroupMessage"), v27}];
    [v17 addObject:v26];
  }

LABEL_7:
}

- (void)successfullyAccumulatedNotificationEvents
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v4 = 136315394;
  v5 = "[ATXDailyNotificationsAccumulator successfullyAccumulatedNotificationEvents]";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: Error with reading notifications stream: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end