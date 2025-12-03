@interface ATXUsageInsightsClient
- (ATXUsageInsightsClient)init;
- (void)fetchAllContinuousUsageSessionsWithCompletion:(id)completion;
- (void)fetchAllDeliveredNotificationsWithCompletion:(id)completion;
- (void)fetchAllInterruptingAppSessionsWithCompletion:(id)completion;
- (void)fetchAllMindlessCyclingSessionsWithCompletion:(id)completion;
- (void)fetchAllPhubbingSessionsWithCompletion:(id)completion;
- (void)fetchSuggestedBundleIDsForAllowListForAllModesWithCompletion:(id)completion;
- (void)fetchSuggestedBundleIDsForDenyListForAllModesWithCompletion:(id)completion;
- (void)fetchUsageInsightsInferredATXModeEventsWithCompletion:(id)completion;
@end

@implementation ATXUsageInsightsClient

- (ATXUsageInsightsClient)init
{
  v7.receiver = self;
  v7.super_class = ATXUsageInsightsClient;
  v2 = [(ATXUsageInsightsClient *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.UsageInsights" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    v5 = ATXUsageInsightsInterface();
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_xpcConnection setExportedObject:v2];
    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_51];
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:&__block_literal_global_10_1];
    [(NSXPCConnection *)v2->_xpcConnection resume];
  }

  return v2;
}

void __30__ATXUsageInsightsClient_init__block_invoke()
{
  v0 = __atxlog_handle_usage_insights();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __30__ATXUsageInsightsClient_init__block_invoke_cold_1(v0);
  }
}

void __30__ATXUsageInsightsClient_init__block_invoke_8()
{
  v0 = __atxlog_handle_usage_insights();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __30__ATXUsageInsightsClient_init__block_invoke_8_cold_1(v0);
  }
}

- (void)fetchAllDeliveredNotificationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    xpcConnection = self->_xpcConnection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__ATXUsageInsightsClient_fetchAllDeliveredNotificationsWithCompletion___block_invoke;
    v16[3] = &unk_1E80C1100;
    v18 = a2;
    v16[4] = self;
    v8 = completionCopy;
    v17 = v8;
    v9 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v16];
    [v9 fetchAllDeliveredNotificationsWithCompletion:v8];
  }

  else
  {
    v10 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationCategorizationClient collectDynamicBreakthroughFeaturesForNotification:completion:];
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = NSStringFromSelector(a2);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v11 raise:v12 format:{@"No completion handler provided for %@ in %@", v13, v15}];
  }
}

void __71__ATXUsageInsightsClient_fetchAllDeliveredNotificationsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_usage_insights();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchSuggestedBundleIDsForAllowListForAllModesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    xpcConnection = self->_xpcConnection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__ATXUsageInsightsClient_fetchSuggestedBundleIDsForAllowListForAllModesWithCompletion___block_invoke;
    v16[3] = &unk_1E80C1100;
    v18 = a2;
    v16[4] = self;
    v8 = completionCopy;
    v17 = v8;
    v9 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v16];
    [v9 fetchSuggestedBundleIDsForAllowListForAllModesWithCompletion:v8];
  }

  else
  {
    v10 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationCategorizationClient collectDynamicBreakthroughFeaturesForNotification:completion:];
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = NSStringFromSelector(a2);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v11 raise:v12 format:{@"No completion handler provided for %@ in %@", v13, v15}];
  }
}

void __87__ATXUsageInsightsClient_fetchSuggestedBundleIDsForAllowListForAllModesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_usage_insights();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchSuggestedBundleIDsForDenyListForAllModesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    xpcConnection = self->_xpcConnection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __86__ATXUsageInsightsClient_fetchSuggestedBundleIDsForDenyListForAllModesWithCompletion___block_invoke;
    v16[3] = &unk_1E80C1100;
    v18 = a2;
    v16[4] = self;
    v8 = completionCopy;
    v17 = v8;
    v9 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v16];
    [v9 fetchSuggestedBundleIDsForDenyListForAllModesWithCompletion:v8];
  }

  else
  {
    v10 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationCategorizationClient collectDynamicBreakthroughFeaturesForNotification:completion:];
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = NSStringFromSelector(a2);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v11 raise:v12 format:{@"No completion handler provided for %@ in %@", v13, v15}];
  }
}

void __86__ATXUsageInsightsClient_fetchSuggestedBundleIDsForDenyListForAllModesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_usage_insights();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchUsageInsightsInferredATXModeEventsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    xpcConnection = self->_xpcConnection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __80__ATXUsageInsightsClient_fetchUsageInsightsInferredATXModeEventsWithCompletion___block_invoke;
    v16[3] = &unk_1E80C1100;
    v18 = a2;
    v16[4] = self;
    v8 = completionCopy;
    v17 = v8;
    v9 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v16];
    [v9 fetchUsageInsightsInferredATXModeEventsWithCompletion:v8];
  }

  else
  {
    v10 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationCategorizationClient collectDynamicBreakthroughFeaturesForNotification:completion:];
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = NSStringFromSelector(a2);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v11 raise:v12 format:{@"No completion handler provided for %@ in %@", v13, v15}];
  }
}

void __80__ATXUsageInsightsClient_fetchUsageInsightsInferredATXModeEventsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_usage_insights();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchAllInterruptingAppSessionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    xpcConnection = self->_xpcConnection;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__ATXUsageInsightsClient_fetchAllInterruptingAppSessionsWithCompletion___block_invoke;
    v18[3] = &unk_1E80C1100;
    v20 = a2;
    v18[4] = self;
    v8 = completionCopy;
    v19 = v8;
    v9 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v18];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__ATXUsageInsightsClient_fetchAllInterruptingAppSessionsWithCompletion___block_invoke_16;
    v16[3] = &unk_1E80C0908;
    v17 = v8;
    [v9 fetchAllInterruptingAppSessionsWithCompletion:v16];
  }

  else
  {
    v10 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationCategorizationClient collectDynamicBreakthroughFeaturesForNotification:completion:];
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = NSStringFromSelector(a2);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v11 raise:v12 format:{@"No completion handler provided for %@ in %@", v13, v15}];
  }
}

void __72__ATXUsageInsightsClient_fetchAllInterruptingAppSessionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_usage_insights();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchAllPhubbingSessionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    xpcConnection = self->_xpcConnection;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__ATXUsageInsightsClient_fetchAllPhubbingSessionsWithCompletion___block_invoke;
    v18[3] = &unk_1E80C1100;
    v20 = a2;
    v18[4] = self;
    v8 = completionCopy;
    v19 = v8;
    v9 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v18];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__ATXUsageInsightsClient_fetchAllPhubbingSessionsWithCompletion___block_invoke_18;
    v16[3] = &unk_1E80C0908;
    v17 = v8;
    [v9 fetchAllPhubbingSessionsWithCompletion:v16];
  }

  else
  {
    v10 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationCategorizationClient collectDynamicBreakthroughFeaturesForNotification:completion:];
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = NSStringFromSelector(a2);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v11 raise:v12 format:{@"No completion handler provided for %@ in %@", v13, v15}];
  }
}

void __65__ATXUsageInsightsClient_fetchAllPhubbingSessionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_usage_insights();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchAllMindlessCyclingSessionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    xpcConnection = self->_xpcConnection;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__ATXUsageInsightsClient_fetchAllMindlessCyclingSessionsWithCompletion___block_invoke;
    v18[3] = &unk_1E80C1100;
    v20 = a2;
    v18[4] = self;
    v8 = completionCopy;
    v19 = v8;
    v9 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v18];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__ATXUsageInsightsClient_fetchAllMindlessCyclingSessionsWithCompletion___block_invoke_19;
    v16[3] = &unk_1E80C0908;
    v17 = v8;
    [v9 fetchAllMindlessCyclingSessionsWithCompletion:v16];
  }

  else
  {
    v10 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationCategorizationClient collectDynamicBreakthroughFeaturesForNotification:completion:];
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = NSStringFromSelector(a2);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v11 raise:v12 format:{@"No completion handler provided for %@ in %@", v13, v15}];
  }
}

void __72__ATXUsageInsightsClient_fetchAllMindlessCyclingSessionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_usage_insights();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchAllContinuousUsageSessionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    xpcConnection = self->_xpcConnection;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__ATXUsageInsightsClient_fetchAllContinuousUsageSessionsWithCompletion___block_invoke;
    v18[3] = &unk_1E80C1100;
    v20 = a2;
    v18[4] = self;
    v8 = completionCopy;
    v19 = v8;
    v9 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v18];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__ATXUsageInsightsClient_fetchAllContinuousUsageSessionsWithCompletion___block_invoke_20;
    v16[3] = &unk_1E80C0908;
    v17 = v8;
    [v9 fetchAllContinuousUsageSessionsWithCompletion:v16];
  }

  else
  {
    v10 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationCategorizationClient collectDynamicBreakthroughFeaturesForNotification:completion:];
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = NSStringFromSelector(a2);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v11 raise:v12 format:{@"No completion handler provided for %@ in %@", v13, v15}];
  }
}

void __72__ATXUsageInsightsClient_fetchAllContinuousUsageSessionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_usage_insights();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __30__ATXUsageInsightsClient_init__block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ATXUsageInsightsClient init]_block_invoke";
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: Interruption handler called", &v1, 0xCu);
}

void __30__ATXUsageInsightsClient_init__block_invoke_8_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ATXUsageInsightsClient init]_block_invoke";
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: Invalidation handler called", &v1, 0xCu);
}

@end