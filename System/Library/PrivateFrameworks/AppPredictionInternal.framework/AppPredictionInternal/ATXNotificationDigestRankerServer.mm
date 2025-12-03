@interface ATXNotificationDigestRankerServer
+ (id)sharedInstance;
- (ATXNotificationDigestRankerServer)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)appsSortedByNotificationsReceivedInPreviousNumDays:(unint64_t)days reply:(id)reply;
- (void)generateDigestForAppGroupedNotificationStacks:(id)stacks maxGlobalMarqueeGroups:(unint64_t)groups maxAppMarqueeGroups:(unint64_t)marqueeGroups reply:(id)reply;
- (void)generateDigestForNotificationStacks:(id)stacks reply:(id)reply;
- (void)numberOfActiveNotificationsWithCompletionHandler:(id)handler;
@end

@implementation ATXNotificationDigestRankerServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_9 != -1)
  {
    +[ATXNotificationDigestRankerServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_11;

  return v3;
}

void __51__ATXNotificationDigestRankerServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_11;
  sharedInstance__pasExprOnceResult_11 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXNotificationDigestRankerServer)init
{
  v7.receiver = self;
  v7.super_class = ATXNotificationDigestRankerServer;
  v2 = [(ATXNotificationDigestRankerServer *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAE98]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x277CEBB00]];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v39[2] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = *MEMORY[0x277CEBB00];
  v7 = [connectionCopy valueForEntitlement:*MEMORY[0x277CEBB00]];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && ([v7 BOOLValue] & 1) != 0)
  {
    v8 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(ATXNotificationDigestRankerServer *)v8 listener:v9 shouldAcceptNewConnection:v10, v11, v12, v13, v14, v15];
    }

    v16 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283AA7AF8];
    v17 = MEMORY[0x277CBEB98];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v19 = [v17 setWithArray:v18];
    [v16 setClasses:v19 forSelector:sel_generateDigestForNotificationStacks_reply_ argumentIndex:0 ofReply:0];

    v20 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v21 = 1;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    v23 = [v20 setWithArray:v22];
    [v16 setClasses:v23 forSelector:sel_generateDigestForNotificationStacks_reply_ argumentIndex:0 ofReply:1];

    v24 = MEMORY[0x277CBEB98];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v26 = [v24 setWithArray:v25];
    [v16 setClasses:v26 forSelector:sel_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply_ argumentIndex:0 ofReply:0];

    v27 = MEMORY[0x277CBEB98];
    v36 = objc_opt_class();
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    v29 = [v27 setWithArray:v28];
    [v16 setClasses:v29 forSelector:sel_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply_ argumentIndex:0 ofReply:1];

    v30 = MEMORY[0x277CBEB98];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v32 = [v30 setWithArray:v31];
    [v16 setClasses:v32 forSelector:sel_appsSortedByNotificationsReceivedInPreviousNumDays_reply_ argumentIndex:0 ofReply:1];

    [connectionCopy setExportedInterface:v16];
    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_83_0];
    [connectionCopy setInvalidationHandler:&__block_literal_global_86_0];
    [connectionCopy resume];
  }

  else
  {
    v16 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationDigestRankerServer *)connectionCopy listener:v6 shouldAcceptNewConnection:v16];
    }

    v21 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v21;
}

void __72__ATXNotificationDigestRankerServer_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __72__ATXNotificationDigestRankerServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

void __72__ATXNotificationDigestRankerServer_listener_shouldAcceptNewConnection___block_invoke_84()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __72__ATXNotificationDigestRankerServer_listener_shouldAcceptNewConnection___block_invoke_84_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

- (void)generateDigestForAppGroupedNotificationStacks:(id)stacks maxGlobalMarqueeGroups:(unint64_t)groups maxAppMarqueeGroups:(unint64_t)marqueeGroups reply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  stacksCopy = stacks;
  replyCopy = reply;
  if (replyCopy)
  {
    v12 = objc_opt_new();
    v25 = 0;
    v13 = [v12 createDigestForAppGroupedNotificationStacks:stacksCopy maxGlobalMarqueeGroups:groups maxAppMarqueeGroups:marqueeGroups outError:&v25];
    v14 = v25;

    v15 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      uuid = [v13 uuid];
      uUIDString = [uuid UUIDString];
      *buf = 138412802;
      v27 = v17;
      v28 = 2112;
      v29 = uUIDString;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "[%@] Returning digest with UUID %@ and err %@", buf, 0x20u);
    }

    replyCopy[2](replyCopy, v13, v14);
  }

  else
  {
    v20 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationDigestRankerServer generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
    }

    v21 = MEMORY[0x277CBEAD8];
    v22 = *MEMORY[0x277CBE658];
    v23 = objc_opt_class();
    v14 = NSStringFromClass(v23);
    v13 = NSStringFromSelector(a2);
    [v21 raise:v22 format:{@"[%@] No reply handler provided for %@", v14, v13}];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)generateDigestForNotificationStacks:(id)stacks reply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  stacksCopy = stacks;
  replyCopy = reply;
  if (replyCopy)
  {
    v8 = objc_opt_new();
    v21 = 0;
    v9 = [v8 createDigestForNotificationStacks:stacksCopy outError:&v21];
    v10 = v21;

    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      uuid = [v9 uuid];
      uUIDString = [uuid UUIDString];
      *buf = 138412802;
      v23 = v13;
      v24 = 2112;
      v25 = uUIDString;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "[%@] Returning digest with UUID %@ and err %@", buf, 0x20u);
    }

    replyCopy[2](replyCopy, v9, v10);
  }

  else
  {
    v16 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationDigestRankerServer generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
    }

    v17 = MEMORY[0x277CBEAD8];
    v18 = *MEMORY[0x277CBE658];
    v19 = objc_opt_class();
    v10 = NSStringFromClass(v19);
    v9 = NSStringFromSelector(a2);
    [v17 raise:v18 format:{@"[%@] No reply handler provided for %@", v10, v9}];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)appsSortedByNotificationsReceivedInPreviousNumDays:(unint64_t)days reply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v7 = __atxlog_handle_notification_management();
  v8 = v7;
  if (replyCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ATXNotificationDigestRankerServer appsSortedByNotificationsReceivedInPreviousNumDays:reply:];
    }

    v9 = objc_opt_new();
    v10 = [v9 appsSortedByNumOfNotificationsGivenNumOfDays:days];
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138412290;
      v19 = v13;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "[%@] Returning apps sorted by number of notifications", buf, 0xCu);
    }

    replyCopy[2](replyCopy, v10, [v9 containsMessageAndTimeSensitiveData], objc_msgSend(v9, "numDaysOfData"), 0);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationDigestRankerServer generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
    }

    v14 = MEMORY[0x277CBEAD8];
    v15 = *MEMORY[0x277CBE658];
    v16 = objc_opt_class();
    v9 = NSStringFromClass(v16);
    v10 = NSStringFromSelector(a2);
    [v14 raise:v15 format:{@"[%@] No reply handler provided for %@", v9, v10}];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)numberOfActiveNotificationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_opt_new();
  [v4 numberOfActiveNotificationsWithCompletionHandler:handlerCopy];
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Rejecting connection %@ without entitlement %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v12 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v4, v5, "[%@] No reply handler provided for %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)appsSortedByNotificationsReceivedInPreviousNumDays:reply:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v6 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEBUG, "[%@ %@] Fetching sorted apps", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end