@interface ATXUsageInsightsServer
+ (id)sharedInstance;
- (ATXUsageInsightsServer)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)fetchAllContinuousUsageSessionsWithCompletion:(id)a3;
- (void)fetchAllDeliveredNotificationsWithCompletion:(id)a3;
- (void)fetchAllInterruptingAppSessionsWithCompletion:(id)a3;
- (void)fetchAllMindlessCyclingSessionsWithCompletion:(id)a3;
- (void)fetchAllPhubbingSessionsWithCompletion:(id)a3;
- (void)fetchSuggestedBundleIDsForAllowListForAllModesWithCompletion:(id)a3;
- (void)fetchSuggestedBundleIDsForDenyListForAllModesWithCompletion:(id)a3;
- (void)fetchUsageInsightsInferredATXModeEventsWithCompletion:(id)a3;
@end

@implementation ATXUsageInsightsServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_7 != -1)
  {
    +[ATXUsageInsightsServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_9;

  return v3;
}

void __40__ATXUsageInsightsServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_9;
  sharedInstance__pasExprOnceResult_9 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXUsageInsightsServer)init
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = ATXUsageInsightsServer;
  v2 = [(ATXUsageInsightsServer *)&v9 init];
  if (v2)
  {
    v3 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXUsageInsightsServer: launched", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.UsageInsights"];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v6 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[ATXUsageInsightsServer init]";
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%s: Listening for connections", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_usage_insights();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[ATXUsageInsightsServer listener:shouldAcceptNewConnection:]";
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "%s: Connection attempted", buf, 0xCu);
  }

  v9 = [v7 valueForEntitlement:@"com.apple.proactive.UsageInsights"];
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0 && ([v9 BOOLValue] & 1) != 0)
  {
    v10 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[ATXUsageInsightsServer listener:shouldAcceptNewConnection:]";
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "%s: Connection established", buf, 0xCu);
    }

    v11 = ATXUsageInsightsInterface();
    [v7 setExportedInterface:v11];

    [v7 setExportedObject:self];
    objc_initWeak(buf, v7);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __61__ATXUsageInsightsServer_listener_shouldAcceptNewConnection___block_invoke;
    v27[3] = &unk_2785977B0;
    objc_copyWeak(&v28, buf);
    [v7 setInterruptionHandler:v27];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __61__ATXUsageInsightsServer_listener_shouldAcceptNewConnection___block_invoke_23;
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
    v13 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ATXUsageInsightsServer *)v7 listener:v13 shouldAcceptNewConnection:v14, v15, v16, v17, v18, v19];
    }

    v12 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

void __61__ATXUsageInsightsServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = __atxlog_handle_usage_insights();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__ATXUsageInsightsServer_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __61__ATXUsageInsightsServer_listener_shouldAcceptNewConnection___block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = __atxlog_handle_usage_insights();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__ATXUsageInsightsServer_listener_shouldAcceptNewConnection___block_invoke_23_cold_1();
  }
}

- (void)fetchAllDeliveredNotificationsWithCompletion:(id)a3
{
  v3 = a3;
  v8 = objc_opt_new();
  [v8 successfullyAccumulatedNotificationEvents];
  v4 = objc_alloc(MEMORY[0x277CEB4D0]);
  v5 = [v8 allDeliveredNotifications];
  v6 = [v4 initWithAllDeliveredNotifications:v5 allInterruptingAppSessions:0];

  v7 = [v6 allDeliveredNotifications];
  v3[2](v3, v7, 0);
}

- (void)fetchSuggestedBundleIDsForAllowListForAllModesWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__ATXUsageInsightsServer_fetchSuggestedBundleIDsForAllowListForAllModesWithCompletion___block_invoke;
  v6[3] = &unk_27859A2B8;
  v7 = v3;
  v5 = v3;
  [v4 suggestedBundleIDsForAllowListWithCompletion:v6];
}

- (void)fetchSuggestedBundleIDsForDenyListForAllModesWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__ATXUsageInsightsServer_fetchSuggestedBundleIDsForDenyListForAllModesWithCompletion___block_invoke;
  v6[3] = &unk_27859A2B8;
  v7 = v3;
  v5 = v3;
  [v4 suggestedBundleIDsForDenyListWithCompletion:v6];
}

- (void)fetchUsageInsightsInferredATXModeEventsWithCompletion:(id)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  v4 = [v5 usageInsightsInferredATXModeEvents];
  v3[2](v3, v4, 0);
}

- (void)fetchAllInterruptingAppSessionsWithCompletion:(id)a3
{
  v3 = a3;
  v8 = objc_opt_new();
  [v8 successfullyAccumulatedInterruptingSessions];
  v4 = objc_alloc(MEMORY[0x277CEB4D0]);
  v5 = [v8 allInterruptingAppSessions];
  v6 = [v4 initWithAllDeliveredNotifications:0 allInterruptingAppSessions:v5];

  v7 = [v6 allInterruptingAppSessions];
  v3[2](v3, v7, 0);
}

- (void)fetchAllPhubbingSessionsWithCompletion:(id)a3
{
  v3 = a3;
  v8 = objc_opt_new();
  [v8 successfullyAccumulatedPhubbingEvents];
  v4 = objc_alloc(MEMORY[0x277CEB798]);
  v5 = [v8 phubbingSessions];
  v6 = [v4 initWithPhubbingSessions:v5];

  v7 = [v6 phubbingSessions];
  v3[2](v3, v7, 0);
}

- (void)fetchAllMindlessCyclingSessionsWithCompletion:(id)a3
{
  v3 = a3;
  v8 = objc_opt_new();
  [v8 accumulateMindlessCyclingEvents];
  v4 = objc_alloc(MEMORY[0x277CEB488]);
  v5 = [v8 mindlessCyclingEvents];
  v6 = [v4 initWithContinuousDeviceUsageEvent:0 mindlessCyclingEvents:v5];

  v7 = [v6 mindlessCyclingEvents];
  v3[2](v3, v7, 0);
}

- (void)fetchAllContinuousUsageSessionsWithCompletion:(id)a3
{
  v3 = a3;
  v8 = objc_opt_new();
  [v8 successfullyAccumulatedContinuousUseEvents];
  v4 = objc_alloc(MEMORY[0x277CEB488]);
  v5 = [v8 continuousUseSessions];
  v6 = [v4 initWithContinuousDeviceUsageEvent:v5 mindlessCyclingEvents:0];

  v7 = [v6 continuousDeviceUsageEvents];
  v3[2](v3, v7, 0);
}

- (void)listener:(uint64_t)a3 shouldAcceptNewConnection:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, a2, a3, "ATXUsageInsightsServer: Rejecting connection %@ without entitlement %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __61__ATXUsageInsightsServer_listener_shouldAcceptNewConnection___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "%s: Unexpected Interruption: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__ATXUsageInsightsServer_listener_shouldAcceptNewConnection___block_invoke_23_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "%s: Connection invalidated: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end