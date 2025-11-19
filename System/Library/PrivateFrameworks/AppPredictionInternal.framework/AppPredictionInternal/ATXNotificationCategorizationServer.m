@interface ATXNotificationCategorizationServer
+ (id)sharedInstance;
- (ATXNotificationCategorizationServer)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)collectCoreAnalyticsJsonForNotification:(id)a3 completion:(id)a4;
- (void)collectDynamicBreakthroughFeaturesForNotification:(id)a3 completion:(id)a4;
- (void)fetchContextForMailWithRequest:(id)a3 completion:(id)a4;
- (void)fetchContextForMessageWithRequest:(id)a3 completion:(id)a4;
- (void)fetchContextForNotificationWithRequest:(id)a3 completion:(id)a4;
- (void)rankUserNotificationWithRequest:(id)a3 completion:(id)a4;
@end

@implementation ATXNotificationCategorizationServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_16 != -1)
  {
    +[ATXNotificationCategorizationServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_20;

  return v3;
}

void __53__ATXNotificationCategorizationServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_20;
  sharedInstance__pasExprOnceResult_20 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXNotificationCategorizationServer)init
{
  v32 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = ATXNotificationCategorizationServer;
  v2 = [(ATXNotificationCategorizationServer *)&v29 init];
  if (v2)
  {
    v3 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXNotificationCategorizationServer: launched", buf, 2u);
    }

    objc_initWeak(&location, v2);
    v4 = [objc_alloc(MEMORY[0x277D425F0]) initWithBlock:&__block_literal_global_38_0];
    contactStore = v2->_contactStore;
    v2->_contactStore = v4;

    v6 = objc_alloc(MEMORY[0x277D425F0]);
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __43__ATXNotificationCategorizationServer_init__block_invoke_2;
    v26 = &unk_27859D180;
    objc_copyWeak(&v27, &location);
    v7 = [v6 initWithBlock:&v23];
    contactRelationships = v2->_contactRelationships;
    v2->_contactRelationships = v7;

    v9 = objc_alloc(MEMORY[0x277D425F0]);
    v10 = [v9 initWithBlock:{&__block_literal_global_44, v23, v24, v25, v26}];
    featuresCorrelator = v2->_featuresCorrelator;
    v2->_featuresCorrelator = v10;

    v12 = [objc_alloc(MEMORY[0x277D425F0]) initWithBlock:&__block_literal_global_48];
    notificationSenderImportanceModel = v2->_notificationSenderImportanceModel;
    v2->_notificationSenderImportanceModel = v12;

    v14 = [objc_alloc(MEMORY[0x277D425F0]) initWithBlock:&__block_literal_global_52_0];
    mailSenderImportanceModel = v2->_mailSenderImportanceModel;
    v2->_mailSenderImportanceModel = v14;

    v16 = [objc_alloc(MEMORY[0x277D425F0]) initWithBlock:&__block_literal_global_56_0];
    messageSenderImportanceModel = v2->_messageSenderImportanceModel;
    v2->_messageSenderImportanceModel = v16;

    v18 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.personalization.notificationCategorization"];
    listener = v2->_listener;
    v2->_listener = v18;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v20 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[ATXNotificationCategorizationServer init]";
      _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "%s: Listening for connections", buf, 0xCu);
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v2;
}

id __43__ATXNotificationCategorizationServer_init__block_invoke()
{
  v0 = objc_opt_new();

  return v0;
}

ATXContactRelationshipsCollector *__43__ATXNotificationCategorizationServer_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [ATXContactRelationshipsCollector alloc];
    v3 = [WeakRetained[6] result];
    v4 = [(ATXContactRelationshipsCollector *)v2 initWithContactStore:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __43__ATXNotificationCategorizationServer_init__block_invoke_3()
{
  v0 = objc_opt_new();

  return v0;
}

id __43__ATXNotificationCategorizationServer_init__block_invoke_4()
{
  v0 = objc_opt_new();

  return v0;
}

id __43__ATXNotificationCategorizationServer_init__block_invoke_5()
{
  v0 = objc_opt_new();

  return v0;
}

id __43__ATXNotificationCategorizationServer_init__block_invoke_6()
{
  v0 = objc_opt_new();

  return v0;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[ATXNotificationCategorizationServer listener:shouldAcceptNewConnection:]";
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "%s: Connection attempted", buf, 0xCu);
  }

  v9 = [v7 valueForEntitlement:@"com.apple.personalization.notificationCategorization"];
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0 && ([v9 BOOLValue] & 1) != 0)
  {
    v10 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[ATXNotificationCategorizationServer listener:shouldAcceptNewConnection:]";
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "%s: Connection established", buf, 0xCu);
    }

    v11 = ATXNotificationCategorizationXPCInterface();
    [v7 setExportedInterface:v11];

    [v7 setExportedObject:self];
    objc_initWeak(buf, v7);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __74__ATXNotificationCategorizationServer_listener_shouldAcceptNewConnection___block_invoke;
    v27[3] = &unk_2785977B0;
    objc_copyWeak(&v28, buf);
    [v7 setInterruptionHandler:v27];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __74__ATXNotificationCategorizationServer_listener_shouldAcceptNewConnection___block_invoke_64;
    v25 = &unk_2785977B0;
    objc_copyWeak(&v26, buf);
    [v7 setInvalidationHandler:&v22];
    [v7 resume];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
    v12 = 1;
  }

  else
  {
    v13 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationCategorizationServer *)v7 listener:v13 shouldAcceptNewConnection:v14, v15, v16, v17, v18, v19];
    }

    v12 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

void __74__ATXNotificationCategorizationServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __74__ATXNotificationCategorizationServer_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __74__ATXNotificationCategorizationServer_listener_shouldAcceptNewConnection___block_invoke_64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __74__ATXNotificationCategorizationServer_listener_shouldAcceptNewConnection___block_invoke_64_cold_1();
  }
}

- (void)collectDynamicBreakthroughFeaturesForNotification:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315138;
    v21 = "[ATXNotificationCategorizationServer collectDynamicBreakthroughFeaturesForNotification:completion:]";
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Starting %s", &v20, 0xCu);
  }

  v9 = __atxlog_handle_notification_categorization();
  v10 = os_signpost_id_generate(v9);

  v11 = __atxlog_handle_notification_categorization();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ATXNotificationCategorizationServer.dynamicBreakthroughDataCollection", " enableTelemetry=YES ", &v20, 2u);
  }

  v13 = [(_PASLazyResult *)self->_featuresCorrelator result];
  v14 = [(_PASLazyResult *)self->_contactStore result];
  v15 = [(_PASLazyResult *)self->_contactRelationships result];
  v16 = [v13 collectDynamicBreakthroughFeaturesForNotification:v7 contactStore:v14 withContactRelationships:v15];

  v17 = __atxlog_handle_notification_categorization();
  v18 = v17;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v18, OS_SIGNPOST_INTERVAL_END, v10, "ATXNotificationCategorizationServer.dynamicBreakthroughDataCollection", " enableTelemetry=YES ", &v20, 2u);
  }

  v6[2](v6, v16, 0);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)collectCoreAnalyticsJsonForNotification:(id)a3 completion:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[ATXNotificationCategorizationServer collectCoreAnalyticsJsonForNotification:completion:]";
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Starting %s", buf, 0xCu);
  }

  v9 = __atxlog_handle_notification_categorization();
  v10 = os_signpost_id_generate(v9);

  v11 = __atxlog_handle_notification_categorization();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ATXNotificationCategorizationServer.collectCoreAnalyticsJsonForNotification", " enableTelemetry=YES ", buf, 2u);
  }

  v13 = objc_opt_new();
  v14 = [v6 bundleID];
  v15 = [v6 notificationID];
  v16 = [v6 recordDate];
  [v16 timeIntervalSinceReferenceDate];
  v17 = [v13 telemetryDataForNotificationWithBundleId:v14 notificationId:v15 recordTimestamp:?];

  if (!v17)
  {
    v18 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationCategorizationServer collectCoreAnalyticsJsonForNotification:v6 completion:v18];
    }
  }

  v19 = [(_PASLazyResult *)self->_featuresCorrelator result];
  v20 = [(_PASLazyResult *)self->_contactStore result];
  v21 = [(_PASLazyResult *)self->_contactRelationships result];
  v22 = [v19 collectDynamicBreakthroughFeaturesForNotification:v6 contactStore:v20 withContactRelationships:v21];

  v23 = [ATXNotificationBreakthroughEventMetric coreAnalyticsDictionaryFromQueryResult:v17 featureCollectionSet:v22];
  v24 = __atxlog_handle_notification_categorization();
  v25 = v24;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v25, OS_SIGNPOST_INTERVAL_END, v10, "ATXNotificationCategorizationServer.collectCoreAnalyticsJsonForNotification", " enableTelemetry=YES ", buf, 2u);
  }

  v32 = 0;
  v26 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v23 options:1 error:&v32];
  v27 = v32;
  v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v26 encoding:4];
  if (v27)
  {
    v29 = 0;
    v30 = v27;
  }

  else
  {
    v29 = v28;
    v30 = 0;
  }

  v7[2](v7, v29, v30);

  v31 = *MEMORY[0x277D85DE8];
}

- (void)rankUserNotificationWithRequest:(id)a3 completion:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v24 = a4;
  v5 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v26 userNotifications];
    *buf = 136315394;
    *&buf[4] = "[ATXNotificationCategorizationServer rankUserNotificationWithRequest:completion:]";
    *&buf[12] = 2048;
    *&buf[14] = [v6 count];
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: Received request to rank: %ld notifications", buf, 0x16u);
  }

  v28 = objc_opt_new();
  v7 = [v26 useLLM];
  v8 = &unk_283A58F90;
  [v28 setObject:&unk_283A58F90 forKeyedSubscript:@"critical"];
  if (v7)
  {
    v8 = &unk_283A58FA0;
    v9 = &unk_283A58FB0;
  }

  else
  {
    v9 = &unk_283A58FC0;
  }

  [v28 setObject:v8 forKeyedSubscript:{@"timeSensitive", v24}];
  [v28 setObject:&unk_283A58F90 forKeyedSubscript:@"isMessage"];
  [v28 setObject:v8 forKeyedSubscript:@"personScore"];
  [v28 setObject:v8 forKeyedSubscript:@"tendencyToOpenAppAfterNotification"];
  [v28 setObject:v9 forKeyedSubscript:@"llmScore"];
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  queue = dispatch_queue_create("ATXNotificationCategorizationServer.rankUserNotificationWithRequest.concurrent", v10);

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create("ATXNotificationCategorizationServer.rankUserNotificationWithRequest.serial", v11);

  v13 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v43 = __Block_byref_object_copy__52;
  v44 = __Block_byref_object_dispose__52;
  v45 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = [v26 userNotifications];
  v15 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v15)
  {
    v16 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v33 + 1) + 8 * i);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __82__ATXNotificationCategorizationServer_rankUserNotificationWithRequest_completion___block_invoke;
        block[3] = &unk_27859C520;
        block[4] = v18;
        v30 = v28;
        v31 = v12;
        v32 = buf;
        dispatch_group_async(v13, queue, block);
      }

      v15 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v15);
  }

  dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  v19 = objc_alloc(MEMORY[0x277CEB738]);
  v20 = [v19 initWithnotificationRankingSections:*(*&buf[8] + 40)];
  v21 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [*(*&buf[8] + 40) count];
    *v37 = 136315394;
    v38 = "[ATXNotificationCategorizationServer rankUserNotificationWithRequest:completion:]";
    v39 = 2048;
    v40 = v22;
    _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "%s: Ranked notifications into %ld sections", v37, 0x16u);
  }

  (v25)[2](v25, v20, 0);
  _Block_object_dispose(buf, 8);

  v23 = *MEMORY[0x277D85DE8];
}

void __82__ATXNotificationCategorizationServer_rankUserNotificationWithRequest_completion___block_invoke(uint64_t a1)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __82__ATXNotificationCategorizationServer_rankUserNotificationWithRequest_completion___block_invoke_cold_1(a1, v2);
  }

  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x277CEB728]);
  v5 = [*(a1 + 40) objectForKeyedSubscript:@"critical"];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "urgency") == 0}];
  v7 = [v4 initWithWeight:v5 value:v6];
  [v3 setObject:v7 forKeyedSubscript:@"critical"];

  v8 = objc_alloc(MEMORY[0x277CEB728]);
  v9 = [*(a1 + 40) objectForKeyedSubscript:@"timeSensitive"];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "urgency") == 1}];
  v11 = [v8 initWithWeight:v9 value:v10];
  [v3 setObject:v11 forKeyedSubscript:@"timeSensitive"];

  v12 = objc_alloc(MEMORY[0x277CEB728]);
  v13 = [*(a1 + 40) objectForKeyedSubscript:@"isMessage"];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isMessage")}];
  v15 = [v12 initWithWeight:v13 value:v14];
  [v3 setObject:v15 forKeyedSubscript:@"isMessage"];

  v16 = objc_alloc(MEMORY[0x277CEB728]);
  v17 = [*(a1 + 40) objectForKeyedSubscript:@"personScore"];
  v18 = [v16 initWithWeight:v17 value:&unk_283A560F0];
  [v3 setObject:v18 forKeyedSubscript:@"personScore"];

  v19 = objc_alloc(MEMORY[0x277CEB728]);
  v20 = [*(a1 + 40) objectForKeyedSubscript:@"tendencyToOpenAppAfterNotification"];
  v21 = [v19 initWithWeight:v20 value:&unk_283A560F0];
  [v3 setObject:v21 forKeyedSubscript:@"tendencyToOpenAppAfterNotification"];

  v22 = objc_alloc(MEMORY[0x277CEB728]);
  v23 = [*(a1 + 40) objectForKeyedSubscript:@"llmScore"];
  v24 = [v22 initWithWeight:v23 value:&unk_283A560F0];
  [v3 setObject:v24 forKeyedSubscript:@"llmScore"];

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__52;
  v44 = __Block_byref_object_dispose__52;
  v45 = objc_opt_new();
  v25 = objc_alloc(MEMORY[0x277CEB730]);
  v26 = [v25 initWithFeatures:v3 metadata:v41[5]];
  v27 = objc_alloc(MEMORY[0x277CEB740]);
  v46[0] = *(a1 + 32);
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
  v29 = [v27 initWithUserNotifications:v28 featureSet:v26];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __82__ATXNotificationCategorizationServer_rankUserNotificationWithRequest_completion___block_invoke_85;
  v35[3] = &unk_27859D228;
  v31 = *(a1 + 48);
  v30 = *(a1 + 56);
  v32 = *(a1 + 32);
  v36 = v29;
  v37 = v32;
  v38 = v30;
  v39 = &v40;
  v33 = v29;
  dispatch_sync(v31, v35);

  _Block_object_dispose(&v40, 8);
  v34 = *MEMORY[0x277D85DE8];
}

void __82__ATXNotificationCategorizationServer_rankUserNotificationWithRequest_completion___block_invoke_85(uint64_t a1)
{
  [*(*(*(a1 + 48) + 8) + 40) addObject:*(a1 + 32)];
  v2 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __82__ATXNotificationCategorizationServer_rankUserNotificationWithRequest_completion___block_invoke_85_cold_1(a1, v2);
  }
}

- (void)fetchContextForNotificationWithRequest:(id)a3 completion:(id)a4
{
  v34[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v6 userNotification];
  if (v9)
  {
    v10 = [(_PASLazyResult *)self->_notificationSenderImportanceModel result];
    v11 = [v10 calculateSenderImportanceForNotificationWithContextRequest:v6];

    [v11 senderImportanceScore];
    v13 = v12;
    [v8 notificationSenderImportanceThreshold];
    if (v13 >= v14)
    {
      v28 = objc_alloc(MEMORY[0x277CEB6E8]);
      [v11 senderImportanceScore];
      v30 = v29;
      v22 = [v11 featureDictionary];
      v31 = [v28 initWithNotificationSenderImportance:2 importanceConfidenceScore:v22 notificationFeatureDictionary:v30];
    }

    else
    {
      [v11 senderImportanceScore];
      v16 = v15;
      [v8 notificationSenderImportanceThreshold];
      v18 = v17;
      v19 = objc_alloc(MEMORY[0x277CEB6E8]);
      [v11 senderImportanceScore];
      v21 = v20;
      v22 = [v11 featureDictionary];
      v31 = [v19 initWithNotificationSenderImportance:v16 < v18 importanceConfidenceScore:v22 notificationFeatureDictionary:v21];
    }

    v7[2](v7, v31, 0);
  }

  else
  {
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CEB250];
    v25 = *MEMORY[0x277CEB258];
    v33 = *MEMORY[0x277CCA068];
    v34[0] = @"ATXNotificationCategorizationServer: Invalid Request Object: Nil ATXUserNotification object.";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v27 = [v23 errorWithDomain:v24 code:v25 userInfo:v26];
    (v7)[2](v7, 0, v27);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)fetchContextForMailWithRequest:(id)a3 completion:(id)a4
{
  v36[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v6 mailMessage];
  if (v9)
  {
    v10 = [(_PASLazyResult *)self->_mailSenderImportanceModel result];
    v11 = [(_PASLazyResult *)self->_contactStore result];
    v12 = [(_PASLazyResult *)self->_contactRelationships result];
    v13 = [v10 calculateSenderImportanceForMailWithContextRequest:v6 contactStore:v11 contactRelationships:v12];

    [v13 senderImportanceScore];
    v15 = v14;
    [v8 mailSenderImportanceThreshold];
    if (v15 >= v16)
    {
      v30 = objc_alloc(MEMORY[0x277CEB638]);
      [v13 senderImportanceScore];
      v32 = v31;
      v24 = [v13 featureDictionary];
      v33 = [v30 initWithMailSenderImportance:2 importanceConfidenceScore:v24 mailFeatureDictionary:v32];
    }

    else
    {
      [v13 senderImportanceScore];
      v18 = v17;
      [v8 mailSenderImportanceThreshold];
      v20 = v19;
      v21 = objc_alloc(MEMORY[0x277CEB638]);
      [v13 senderImportanceScore];
      v23 = v22;
      v24 = [v13 featureDictionary];
      v33 = [v21 initWithMailSenderImportance:v18 < v20 importanceConfidenceScore:v24 mailFeatureDictionary:v23];
    }

    v7[2](v7, v33, 0);
  }

  else
  {
    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CEB220];
    v27 = *MEMORY[0x277CEB228];
    v35 = *MEMORY[0x277CCA068];
    v36[0] = @"ATXNotificationCategorizationServer: Invalid Request Object: Nil ATXMailMessage object.";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v29 = [v25 errorWithDomain:v26 code:v27 userInfo:v28];
    (v7)[2](v7, 0, v29);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)fetchContextForMessageWithRequest:(id)a3 completion:(id)a4
{
  v36[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v6 textMessage];
  if (v9)
  {
    v10 = [(_PASLazyResult *)self->_messageSenderImportanceModel result];
    v11 = [(_PASLazyResult *)self->_contactStore result];
    v12 = [(_PASLazyResult *)self->_contactRelationships result];
    v13 = [v10 calculateSenderImportanceForMessageWithContextRequest:v6 contactStore:v11 contactRelationships:v12];

    [v13 senderImportanceScore];
    v15 = v14;
    [v8 messageSenderImportanceThreshold];
    if (v15 >= v16)
    {
      v30 = objc_alloc(MEMORY[0x277CEB660]);
      [v13 senderImportanceScore];
      v32 = v31;
      v24 = [v13 featureDictionary];
      v33 = [v30 initWithMessageSenderImportance:2 importanceConfidenceScore:v24 messageFeatureDictionary:v32];
    }

    else
    {
      [v13 senderImportanceScore];
      v18 = v17;
      [v8 messageSenderImportanceThreshold];
      v20 = v19;
      v21 = objc_alloc(MEMORY[0x277CEB660]);
      [v13 senderImportanceScore];
      v23 = v22;
      v24 = [v13 featureDictionary];
      v33 = [v21 initWithMessageSenderImportance:v18 < v20 importanceConfidenceScore:v24 messageFeatureDictionary:v23];
    }

    v7[2](v7, v33, 0);
  }

  else
  {
    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CEB240];
    v27 = *MEMORY[0x277CEB248];
    v35 = *MEMORY[0x277CCA068];
    v36[0] = @"ATXNotificationCategorizationServer: Invalid Request Object: Nil ATXTextMessage object.";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v29 = [v25 errorWithDomain:v26 code:v27 userInfo:v28];
    (v7)[2](v7, 0, v29);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)listener:(uint64_t)a3 shouldAcceptNewConnection:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, a2, a3, "ATXNotificationCategorizationServer: Rejecting connection %@ without entitlement %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __74__ATXNotificationCategorizationServer_listener_shouldAcceptNewConnection___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "%s: Unexpected Interruption: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __74__ATXNotificationCategorizationServer_listener_shouldAcceptNewConnection___block_invoke_64_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "%s: Connection invalidated: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)collectCoreAnalyticsJsonForNotification:(void *)a1 completion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a1 bundleID];
  v5 = [a1 notificationID];
  v6 = [a1 recordDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = [a1 body];
  v13[0] = 136316163;
  OUTLINED_FUNCTION_0_24();
  v14 = v4;
  v15 = v10;
  v16 = v5;
  v17 = 2048;
  v18 = v8;
  v19 = 2117;
  v20 = v11;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: Got nil queryResult. Failed to find notification in database with bundleId: %@ notificationId: %@ recordTimestamp: %f body: %{sensitive}@", v13, 0x34u);

  v12 = *MEMORY[0x277D85DE8];
}

void __82__ATXNotificationCategorizationServer_rankUserNotificationWithRequest_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) uuid];
  v6[0] = 136315394;
  OUTLINED_FUNCTION_0_24();
  v7 = v4;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "%s: Ranking notification %@", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void __82__ATXNotificationCategorizationServer_rankUserNotificationWithRequest_completion___block_invoke_85_cold_1(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 40) uuid];
  v5 = *(*(*(a1 + 56) + 8) + 40);
  v7 = 136315650;
  v8 = "[ATXNotificationCategorizationServer rankUserNotificationWithRequest:completion:]_block_invoke";
  v9 = 2112;
  v10 = v4;
  v11 = 2112;
  v12 = v5;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "%s: Done ranking notification %@, llmMetadata: %@", &v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

@end