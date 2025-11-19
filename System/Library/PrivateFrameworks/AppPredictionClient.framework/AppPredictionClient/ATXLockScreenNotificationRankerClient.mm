@interface ATXLockScreenNotificationRankerClient
- (ATXLockScreenNotificationRankerClient)init;
- (void)dealloc;
- (void)init;
- (void)rankNewNotificationIntoNotificationArrays:(id)a3 newNotification:(id)a4 notificationArrayIndex:(unint64_t)a5 reply:(id)a6;
- (void)rankNotificationArrays:(id)a3 reply:(id)a4;
@end

@implementation ATXLockScreenNotificationRankerClient

- (ATXLockScreenNotificationRankerClient)init
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = ATXLockScreenNotificationRankerClient;
  v2 = [(ATXLockScreenNotificationRankerClient *)&v18 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.LockScreenNotificationRanking.xpc" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    v5 = v2->_xpcConnection;
    v6 = ATXLockScreenNotificationRankerXPCInterface();
    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

    objc_initWeak(&location, v2);
    v7 = v2->_xpcConnection;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__ATXLockScreenNotificationRankerClient_init__block_invoke;
    v15[3] = &unk_1E80C10D8;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v7 setInterruptionHandler:v15];
    v8 = v2->_xpcConnection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__ATXLockScreenNotificationRankerClient_init__block_invoke_67;
    v13[3] = &unk_1E80C10D8;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v8 setInvalidationHandler:v13];
    [(NSXPCConnection *)v2->_xpcConnection resume];
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_loadWeakRetained(&location);
      v11 = objc_opt_class();
      [(ATXLockScreenNotificationRankerClient *)v11 init:v19];
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __45__ATXLockScreenNotificationRankerClient_init__block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __45__ATXLockScreenNotificationRankerClient_init__block_invoke_cold_1(a1);
  }
}

void __45__ATXLockScreenNotificationRankerClient_init__block_invoke_67(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 138412290;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "[%@] Connection invalidated", &v5, 0xCu);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = ATXLockScreenNotificationRankerClient;
  [(ATXLockScreenNotificationRankerClient *)&v3 dealloc];
}

- (void)rankNotificationArrays:(id)a3 reply:(id)a4
{
  v7 = a4;
  xpcConnection = self->_xpcConnection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__ATXLockScreenNotificationRankerClient_rankNotificationArrays_reply___block_invoke;
  v12[3] = &unk_1E80C1100;
  v13 = v7;
  v14 = a2;
  v12[4] = self;
  v9 = v7;
  v10 = a3;
  v11 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v12];
  [v11 rankNotificationArrays:v10 reply:v9];
}

void __70__ATXLockScreenNotificationRankerClient_rankNotificationArrays_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__ATXLockScreenNotificationRankerClient_rankNotificationArrays_reply___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)rankNewNotificationIntoNotificationArrays:(id)a3 newNotification:(id)a4 notificationArrayIndex:(unint64_t)a5 reply:(id)a6
{
  v11 = a6;
  xpcConnection = self->_xpcConnection;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __128__ATXLockScreenNotificationRankerClient_rankNewNotificationIntoNotificationArrays_newNotification_notificationArrayIndex_reply___block_invoke;
  v17[3] = &unk_1E80C1100;
  v18 = v11;
  v19 = a2;
  v17[4] = self;
  v13 = v11;
  v14 = a4;
  v15 = a3;
  v16 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v17];
  [v16 rankNewNotificationIntoNotificationArrays:v15 newNotification:v14 notificationArrayIndex:a5 reply:v13];
}

void __128__ATXLockScreenNotificationRankerClient_rankNewNotificationIntoNotificationArrays_newNotification_notificationArrayIndex_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__ATXLockScreenNotificationRankerClient_rankNotificationArrays_reply___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)init
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  v7 = a1;
  _os_log_debug_impl(&dword_1BF549000, a3, OS_LOG_TYPE_DEBUG, "[%@] Connection established", a2, 0xCu);
}

void __45__ATXLockScreenNotificationRankerClient_init__block_invoke_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __70__ATXLockScreenNotificationRankerClient_rankNotificationArrays_reply___block_invoke_cold_1(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 48);
  v4 = v2;
  v5 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

@end