@interface ATXNotificationCategorizationClient
- (ATXNotificationCategorizationClient)init;
- (void)collectCoreAnalyticsJsonForNotification:(id)a3 completion:(id)a4;
- (void)collectDynamicBreakthroughFeaturesForNotification:(id)a3 completion:(id)a4;
- (void)fetchContextForMailWithRequest:(id)a3 completion:(id)a4;
- (void)fetchContextForMessageWithRequest:(id)a3 completion:(id)a4;
- (void)fetchContextForNotificationWithRequest:(id)a3 completion:(id)a4;
- (void)rankUserNotificationWithRequest:(id)a3 completion:(id)a4;
@end

@implementation ATXNotificationCategorizationClient

- (ATXNotificationCategorizationClient)init
{
  v7.receiver = self;
  v7.super_class = ATXNotificationCategorizationClient;
  v2 = [(ATXNotificationCategorizationClient *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.personalization.notificationCategorization" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    v5 = ATXNotificationCategorizationXPCInterface();
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_xpcConnection setExportedObject:v2];
    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_18];
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:&__block_literal_global_10_0];
    [(NSXPCConnection *)v2->_xpcConnection resume];
  }

  return v2;
}

void __43__ATXNotificationCategorizationClient_init__block_invoke()
{
  v0 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __43__ATXNotificationCategorizationClient_init__block_invoke_cold_1(v0);
  }
}

void __43__ATXNotificationCategorizationClient_init__block_invoke_8()
{
  v0 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __43__ATXNotificationCategorizationClient_init__block_invoke_8_cold_1(v0);
  }
}

- (void)collectDynamicBreakthroughFeaturesForNotification:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[ATXNotificationCategorizationClient collectDynamicBreakthroughFeaturesForNotification:completion:]";
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "Starting %s", buf, 0xCu);
  }

  if (v8)
  {
    xpcConnection = self->_xpcConnection;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke;
    v21[3] = &unk_1E80C1100;
    v23 = a2;
    v21[4] = self;
    v11 = v8;
    v22 = v11;
    v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_16;
    v19[3] = &unk_1E80C1938;
    v20 = v11;
    [v12 collectDynamicBreakthroughFeaturesForNotification:v7 completion:v19];
  }

  else
  {
    v13 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationCategorizationClient collectDynamicBreakthroughFeaturesForNotification:completion:];
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 raise:v15 format:{@"No completion handler provided for %@ in %@", v16, v18}];
  }
}

void __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ATXNotificationCategorizationClient collectDynamicBreakthroughFeaturesForNotification:completion:]_block_invoke";
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "%s: finished", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)collectCoreAnalyticsJsonForNotification:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[ATXNotificationCategorizationClient collectCoreAnalyticsJsonForNotification:completion:]";
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "Starting %s", buf, 0xCu);
  }

  if (v8)
  {
    xpcConnection = self->_xpcConnection;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __90__ATXNotificationCategorizationClient_collectCoreAnalyticsJsonForNotification_completion___block_invoke;
    v21[3] = &unk_1E80C1100;
    v23 = a2;
    v21[4] = self;
    v11 = v8;
    v22 = v11;
    v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __90__ATXNotificationCategorizationClient_collectCoreAnalyticsJsonForNotification_completion___block_invoke_18;
    v19[3] = &unk_1E80C1960;
    v20 = v11;
    [v12 collectCoreAnalyticsJsonForNotification:v7 completion:v19];
  }

  else
  {
    v13 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationCategorizationClient collectDynamicBreakthroughFeaturesForNotification:completion:];
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 raise:v15 format:{@"No completion handler provided for %@ in %@", v16, v18}];
  }
}

void __90__ATXNotificationCategorizationClient_collectCoreAnalyticsJsonForNotification_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __90__ATXNotificationCategorizationClient_collectCoreAnalyticsJsonForNotification_completion___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ATXNotificationCategorizationClient collectCoreAnalyticsJsonForNotification:completion:]_block_invoke";
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "%s: finished", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)rankUserNotificationWithRequest:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[ATXNotificationCategorizationClient rankUserNotificationWithRequest:completion:]";
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "Starting %s", buf, 0xCu);
  }

  if (v8)
  {
    xpcConnection = self->_xpcConnection;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __82__ATXNotificationCategorizationClient_rankUserNotificationWithRequest_completion___block_invoke;
    v21[3] = &unk_1E80C1100;
    v23 = a2;
    v21[4] = self;
    v11 = v8;
    v22 = v11;
    v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__ATXNotificationCategorizationClient_rankUserNotificationWithRequest_completion___block_invoke_20;
    v19[3] = &unk_1E80C1988;
    v20 = v11;
    [v12 rankUserNotificationWithRequest:v7 completion:v19];
  }

  else
  {
    v13 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationCategorizationClient collectDynamicBreakthroughFeaturesForNotification:completion:];
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 raise:v15 format:{@"No completion handler provided for %@ in %@", v16, v18}];
  }
}

void __82__ATXNotificationCategorizationClient_rankUserNotificationWithRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __82__ATXNotificationCategorizationClient_rankUserNotificationWithRequest_completion___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ATXNotificationCategorizationClient rankUserNotificationWithRequest:completion:]_block_invoke";
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "%s: finished", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchContextForNotificationWithRequest:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[ATXNotificationCategorizationClient fetchContextForNotificationWithRequest:completion:]";
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "Fetching notification context %s", buf, 0xCu);
  }

  if (v8)
  {
    xpcConnection = self->_xpcConnection;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __89__ATXNotificationCategorizationClient_fetchContextForNotificationWithRequest_completion___block_invoke;
    v21[3] = &unk_1E80C1100;
    v23 = a2;
    v21[4] = self;
    v11 = v8;
    v22 = v11;
    v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __89__ATXNotificationCategorizationClient_fetchContextForNotificationWithRequest_completion___block_invoke_22;
    v19[3] = &unk_1E80C19B0;
    v20 = v11;
    [v12 fetchContextForNotificationWithRequest:v7 completion:v19];
  }

  else
  {
    v13 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationCategorizationClient collectDynamicBreakthroughFeaturesForNotification:completion:];
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 raise:v15 format:{@"No completion handler provided for %@ in %@", v16, v18}];
  }
}

void __89__ATXNotificationCategorizationClient_fetchContextForNotificationWithRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __89__ATXNotificationCategorizationClient_fetchContextForNotificationWithRequest_completion___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ATXNotificationCategorizationClient fetchContextForNotificationWithRequest:completion:]_block_invoke";
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "%s: finished", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchContextForMailWithRequest:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[ATXNotificationCategorizationClient fetchContextForMailWithRequest:completion:]";
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "Fetching mail context %s", buf, 0xCu);
  }

  if (v8)
  {
    xpcConnection = self->_xpcConnection;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __81__ATXNotificationCategorizationClient_fetchContextForMailWithRequest_completion___block_invoke;
    v21[3] = &unk_1E80C1100;
    v23 = a2;
    v21[4] = self;
    v11 = v8;
    v22 = v11;
    v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __81__ATXNotificationCategorizationClient_fetchContextForMailWithRequest_completion___block_invoke_24;
    v19[3] = &unk_1E80C19D8;
    v20 = v11;
    [v12 fetchContextForMailWithRequest:v7 completion:v19];
  }

  else
  {
    v13 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationCategorizationClient collectDynamicBreakthroughFeaturesForNotification:completion:];
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 raise:v15 format:{@"No completion handler provided for %@ in %@", v16, v18}];
  }
}

void __81__ATXNotificationCategorizationClient_fetchContextForMailWithRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __81__ATXNotificationCategorizationClient_fetchContextForMailWithRequest_completion___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ATXNotificationCategorizationClient fetchContextForMailWithRequest:completion:]_block_invoke";
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "%s: finished", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchContextForMessageWithRequest:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[ATXNotificationCategorizationClient fetchContextForMessageWithRequest:completion:]";
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "Fetching message context %s", buf, 0xCu);
  }

  if (v8)
  {
    xpcConnection = self->_xpcConnection;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __84__ATXNotificationCategorizationClient_fetchContextForMessageWithRequest_completion___block_invoke;
    v21[3] = &unk_1E80C1100;
    v23 = a2;
    v21[4] = self;
    v11 = v8;
    v22 = v11;
    v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __84__ATXNotificationCategorizationClient_fetchContextForMessageWithRequest_completion___block_invoke_26;
    v19[3] = &unk_1E80C1A00;
    v20 = v11;
    [v12 fetchContextForMessageWithRequest:v7 completion:v19];
  }

  else
  {
    v13 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationCategorizationClient collectDynamicBreakthroughFeaturesForNotification:completion:];
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 raise:v15 format:{@"No completion handler provided for %@ in %@", v16, v18}];
  }
}

void __84__ATXNotificationCategorizationClient_fetchContextForMessageWithRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __84__ATXNotificationCategorizationClient_fetchContextForMessageWithRequest_completion___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ATXNotificationCategorizationClient fetchContextForMessageWithRequest:completion:]_block_invoke";
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "%s: finished", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __43__ATXNotificationCategorizationClient_init__block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ATXNotificationCategorizationClient init]_block_invoke";
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: Interruption handler called", &v1, 0xCu);
}

void __43__ATXNotificationCategorizationClient_init__block_invoke_8_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ATXNotificationCategorizationClient init]_block_invoke";
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: Invalidation handler called", &v1, 0xCu);
}

- (void)collectDynamicBreakthroughFeaturesForNotification:completion:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_7();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  v2 = OUTLINED_FUNCTION_5_1(v1);
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_6_0();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

@end