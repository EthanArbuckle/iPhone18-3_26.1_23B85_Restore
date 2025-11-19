@interface ATXNotificationDigestRankerClient
- (ATXNotificationDigestRankerClient)init;
- (void)appsSortedByNotificationsReceivedInPreviousNumDays:(unint64_t)a3 reply:(id)a4;
- (void)dealloc;
- (void)generateDigestForAppGroupedNotificationStacks:(id)a3 maxGlobalMarqueeGroups:(unint64_t)a4 maxAppMarqueeGroups:(unint64_t)a5 reply:(id)a6;
- (void)generateDigestForNotificationStacks:(id)a3 reply:(id)a4;
- (void)numberOfActiveNotificationsWithCompletionHandler:(id)a3;
@end

@implementation ATXNotificationDigestRankerClient

- (ATXNotificationDigestRankerClient)init
{
  v27[2] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = ATXNotificationDigestRankerClient;
  v2 = [(ATXNotificationDigestRankerClient *)&v22 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.NotificationDigest.xpc" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E8B6F0];
    v6 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v8 = [v6 setWithArray:v7];
    [v5 setClasses:v8 forSelector:sel_generateDigestForNotificationStacks_reply_ argumentIndex:0 ofReply:0];

    v9 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v11 = [v9 setWithArray:v10];
    [v5 setClasses:v11 forSelector:sel_generateDigestForNotificationStacks_reply_ argumentIndex:0 ofReply:1];

    v12 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v14 = [v12 setWithArray:v13];
    [v5 setClasses:v14 forSelector:sel_appsSortedByNotificationsReceivedInPreviousNumDays_reply_ argumentIndex:0 ofReply:1];

    v15 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v17 = [v15 setWithArray:v16];
    [v5 setClasses:v17 forSelector:sel_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply_ argumentIndex:0 ofReply:0];

    v18 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v20 = [v18 setWithArray:v19];
    [v5 setClasses:v20 forSelector:sel_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply_ argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v5];
    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_83];
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:&__block_literal_global_78];
    [(NSXPCConnection *)v2->_xpcConnection resume];
  }

  return v2;
}

void __41__ATXNotificationDigestRankerClient_init__block_invoke()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __41__ATXNotificationDigestRankerClient_init__block_invoke_cold_1(v0);
  }
}

void __41__ATXNotificationDigestRankerClient_init__block_invoke_76()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_INFO, "[ATXNotificationDigestRankerClient] Invalidation Handler Called", v1, 2u);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = ATXNotificationDigestRankerClient;
  [(ATXNotificationDigestRankerClient *)&v3 dealloc];
}

- (void)generateDigestForAppGroupedNotificationStacks:(id)a3 maxGlobalMarqueeGroups:(unint64_t)a4 maxAppMarqueeGroups:(unint64_t)a5 reply:(id)a6
{
  v30[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  if (!v12)
  {
    v16 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationDigestRankerClient generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
    }

    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D930];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = NSStringFromSelector(a2);
    [v17 raise:v18 format:{@"[%@] No reply handler provided for %@", v20, v21}];

    goto LABEL_10;
  }

  if (([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.proactive.NotificationDigest.xpc" logHandle:0] & 1) == 0)
  {
    v22 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationDigestRankerClient generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
    }

    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = *MEMORY[0x1E696A5A0];
    v29 = *MEMORY[0x1E696A578];
    v30[0] = @"Missing entitlement for digest generation.  Not calling XPC service.";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v20 = [v23 initWithDomain:v24 code:1 userInfo:v25];

    v12[2](v12, 0, v20);
LABEL_10:

    goto LABEL_11;
  }

  xpcConnection = self->_xpcConnection;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __132__ATXNotificationDigestRankerClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke;
  v26[3] = &unk_1E80C1100;
  v26[4] = self;
  v28 = a2;
  v14 = v12;
  v27 = v14;
  v15 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v26];
  [v15 generateDigestForAppGroupedNotificationStacks:v11 maxGlobalMarqueeGroups:a4 maxAppMarqueeGroups:a5 reply:v14];

LABEL_11:
}

void __132__ATXNotificationDigestRankerClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __132__ATXNotificationDigestRankerClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)generateDigestForNotificationStacks:(id)a3 reply:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationDigestRankerClient generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
    }

    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D930];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    [v13 raise:v14 format:{@"[%@] No reply handler provided for %@", v16, v17}];

    goto LABEL_10;
  }

  if (([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.proactive.NotificationDigest.xpc" logHandle:0] & 1) == 0)
  {
    v18 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationDigestRankerClient generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
    }

    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = *MEMORY[0x1E696A5A0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = @"Missing entitlement for digest generation.  Not calling XPC service.";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v16 = [v19 initWithDomain:v20 code:1 userInfo:v21];

    v8[2](v8, 0, v16);
LABEL_10:

    goto LABEL_11;
  }

  xpcConnection = self->_xpcConnection;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __79__ATXNotificationDigestRankerClient_generateDigestForNotificationStacks_reply___block_invoke;
  v22[3] = &unk_1E80C1100;
  v22[4] = self;
  v24 = a2;
  v10 = v8;
  v23 = v10;
  v11 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v22];
  [v11 generateDigestForNotificationStacks:v7 reply:v10];

LABEL_11:
}

void __79__ATXNotificationDigestRankerClient_generateDigestForNotificationStacks_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __132__ATXNotificationDigestRankerClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)appsSortedByNotificationsReceivedInPreviousNumDays:(unint64_t)a3 reply:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.proactive.NotificationDigest.xpc" logHandle:0];
    v9 = __atxlog_handle_notification_management();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [ATXNotificationDigestRankerClient appsSortedByNotificationsReceivedInPreviousNumDays:reply:];
      }

      xpcConnection = self->_xpcConnection;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __94__ATXNotificationDigestRankerClient_appsSortedByNotificationsReceivedInPreviousNumDays_reply___block_invoke;
      v26[3] = &unk_1E80C1100;
      v26[4] = self;
      v28 = a2;
      v12 = v7;
      v27 = v12;
      v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v26];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __94__ATXNotificationDigestRankerClient_appsSortedByNotificationsReceivedInPreviousNumDays_reply___block_invoke_95;
      v24[3] = &unk_1E80C5478;
      v25 = v12;
      [v13 appsSortedByNotificationsReceivedInPreviousNumDays:a3 reply:v24];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ATXNotificationDigestRankerClient generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
      }

      v20 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A5A0];
      v29 = *MEMORY[0x1E696A578];
      v30[0] = @"Missing entitlement for apps sorted by notifications.  Not calling XPC service.";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v23 = [v20 initWithDomain:v21 code:1 userInfo:v22];

      (*(v7 + 2))(v7, 0, 0, 0, v23);
    }
  }

  else
  {
    v14 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationDigestRankerClient generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
    }

    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D930];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    [v15 raise:v16 format:{@"[%@] No reply handler provided for %@", v18, v19}];
  }
}

void __94__ATXNotificationDigestRankerClient_appsSortedByNotificationsReceivedInPreviousNumDays_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __132__ATXNotificationDigestRankerClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)numberOfActiveNotificationsWithCompletionHandler:(id)a3
{
  v5 = a3;
  xpcConnection = self->_xpcConnection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__ATXNotificationDigestRankerClient_numberOfActiveNotificationsWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E80C1100;
  v10 = v5;
  v11 = a2;
  v9[4] = self;
  v7 = v5;
  v8 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v9];
  [v8 numberOfActiveNotificationsWithCompletionHandler:v7];
}

void __86__ATXNotificationDigestRankerClient_numberOfActiveNotificationsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __132__ATXNotificationDigestRankerClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __132__ATXNotificationDigestRankerClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  v1 = OUTLINED_FUNCTION_8_1();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_7_3();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)appsSortedByNotificationsReceivedInPreviousNumDays:reply:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  v7 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = v2;
  v4 = NSStringFromSelector(v1);
  v5 = 138412546;
  v6 = v2;
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEBUG, "[%@ %@] Fetching sorted apps", &v5, 0x16u);
}

@end