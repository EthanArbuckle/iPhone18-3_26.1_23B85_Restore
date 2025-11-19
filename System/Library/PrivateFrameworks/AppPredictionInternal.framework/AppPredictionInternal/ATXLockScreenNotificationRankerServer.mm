@interface ATXLockScreenNotificationRankerServer
+ (id)sharedInstance;
- (ATXLockScreenNotificationRankerServer)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)rankNewNotificationIntoNotificationArrays:(id)a3 newNotification:(id)a4 notificationArrayIndex:(unint64_t)a5 reply:(id)a6;
- (void)rankNotificationArrays:(id)a3 reply:(id)a4;
@end

@implementation ATXLockScreenNotificationRankerServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_44 != -1)
  {
    +[ATXLockScreenNotificationRankerServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_56;

  return v3;
}

void __55__ATXLockScreenNotificationRankerServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_56;
  sharedInstance__pasExprOnceResult_56 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXLockScreenNotificationRankerServer)init
{
  v7.receiver = self;
  v7.super_class = ATXLockScreenNotificationRankerServer;
  v2 = [(ATXLockScreenNotificationRankerServer *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAE98]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x277CEBAF8]];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForEntitlement:*MEMORY[0x277CEBAF8]];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0 && ([v8 BOOLValue] & 1) != 0)
  {
    v9 = ATXLockScreenNotificationRankerXPCInterface();
    [v7 setExportedInterface:v9];

    [v7 setExportedObject:self];
    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__ATXLockScreenNotificationRankerServer_listener_shouldAcceptNewConnection___block_invoke;
    v19[3] = &unk_2785977B0;
    objc_copyWeak(&v20, &location);
    [v7 setInterruptionHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __76__ATXLockScreenNotificationRankerServer_listener_shouldAcceptNewConnection___block_invoke_20;
    v17[3] = &unk_2785977B0;
    objc_copyWeak(&v18, &location);
    [v7 setInvalidationHandler:v17];
    [v7 resume];
    v10 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_loadWeakRetained(&location);
      v12 = objc_opt_class();
      [(ATXLockScreenNotificationRankerServer *)v12 listener:v22 shouldAcceptNewConnection:v10, v11];
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
    v13 = 1;
  }

  else
  {
    v14 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXLockScreenNotificationRankerServer listener:shouldAcceptNewConnection:];
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

void __76__ATXLockScreenNotificationRankerServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __76__ATXLockScreenNotificationRankerServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(a1);
  }
}

void __76__ATXLockScreenNotificationRankerServer_listener_shouldAcceptNewConnection___block_invoke_20(uint64_t a1)
{
  v2 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __76__ATXLockScreenNotificationRankerServer_listener_shouldAcceptNewConnection___block_invoke_20_cold_1(a1);
  }
}

- (void)rankNotificationArrays:(id)a3 reply:(id)a4
{
  v7 = a4;
  if (v7)
  {
    v14 = 0;
    v8 = [ATXLockScreenNotificationRanker rankNotificationArrays:a3 error:&v14];
    v9 = v14;
    v7[2](v7, v8, v9);
  }

  else
  {
    v10 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXLockScreenNotificationRankerServer rankNotificationArrays:a2 reply:?];
    }

    v11 = MEMORY[0x277CBEAD8];
    v12 = *MEMORY[0x277CBE658];
    v13 = objc_opt_class();
    v9 = NSStringFromSelector(a2);
    [v11 raise:v12 format:{@"[%@] No reply handler provided for %@", v13, v9}];
  }
}

- (void)rankNewNotificationIntoNotificationArrays:(id)a3 newNotification:(id)a4 notificationArrayIndex:(unint64_t)a5 reply:(id)a6
{
  v11 = a6;
  if (v11)
  {
    v23 = 0;
    v12 = [ATXLockScreenNotificationRanker rankNewNotificationIntoNotificationArrays:a3 newNotification:a4 notificationArrayIndex:a5 error:&v23];
    v13 = v23;
    v14 = v13;
    if (v12)
    {
      v15 = [v12 first];
      v16 = [v15 unsignedIntegerValue];
      v17 = [v12 second];
      v11[2](v11, v16, [v17 unsignedIntegerValue], v14);
    }

    else
    {
      if (!v13)
      {
        v22 = __atxlog_handle_notification_management();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          [ATXLockScreenNotificationRankerServer rankNewNotificationIntoNotificationArrays:newNotification:notificationArrayIndex:reply:];
        }
      }

      v11[2](v11, 0, 0, v14);
    }
  }

  else
  {
    v18 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXLockScreenNotificationRankerServer rankNotificationArrays:a2 reply:?];
    }

    v19 = MEMORY[0x277CBEAD8];
    v20 = *MEMORY[0x277CBE658];
    v21 = objc_opt_class();
    v14 = NSStringFromSelector(a2);
    [v19 raise:v20 format:{@"[%@] No reply handler provided for %@", v21, v14}];
  }
}

- (void)listener:(NSObject *)a3 shouldAcceptNewConnection:(void *)a4 .cold.1(void *a1, uint64_t a2, NSObject *a3, void *a4)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  v7 = a1;
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "[%@] Connection established", a2, 0xCu);
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_2263AA000, v1, OS_LOG_TYPE_ERROR, "Rejecting connection %@ without entitlement %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __76__ATXLockScreenNotificationRankerServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __76__ATXLockScreenNotificationRankerServer_listener_shouldAcceptNewConnection___block_invoke_20_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)rankNotificationArrays:(uint64_t)a1 reply:(const char *)a2 .cold.1(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, OS_LOG_TYPE_ERROR, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)rankNewNotificationIntoNotificationArrays:newNotification:notificationArrayIndex:reply:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end