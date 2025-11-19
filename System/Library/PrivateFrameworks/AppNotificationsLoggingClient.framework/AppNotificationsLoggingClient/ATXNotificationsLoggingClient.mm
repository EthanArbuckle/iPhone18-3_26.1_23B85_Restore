@interface ATXNotificationsLoggingClient
+ (id)sharedInstance;
- (ATXNotificationsLoggingClient)init;
- (void)_processActiveSuggestionsRequests;
- (void)activeSuggestionsWithReply:(id)a3;
- (void)dealloc;
- (void)logNotificationDeliveryUI:(unint64_t)a3 notificationUUIDs:(id)a4;
- (void)logNotificationEvent:(int64_t)a3 notification:(id)a4;
- (void)logNotificationEvent:(int64_t)a3 notification:(id)a4 reason:(unint64_t)a5;
- (void)logNotificationEvent:(int64_t)a3 notification:(id)a4 reason:(unint64_t)a5 interactionUI:(unint64_t)a6;
- (void)logNotificationGroupEvent:(int64_t)a3 eventIdentifier:(id)a4;
- (void)logNotificationGroupEvent:(int64_t)a3 eventIdentifier:(id)a4 timestamp:(id)a5;
- (void)logSuggestionEvent:(int64_t)a3 suggestionType:(int64_t)a4 suggestionIdentifier:(id)a5 timestamp:(id)a6;
@end

@implementation ATXNotificationsLoggingClient

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ATXNotificationsLoggingClient sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __47__ATXNotificationsLoggingClient_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = ATXNotificationsLoggingClient;
  [(ATXNotificationsLoggingClient *)&v3 dealloc];
}

- (ATXNotificationsLoggingClient)init
{
  v23.receiver = self;
  v23.super_class = ATXNotificationsLoggingClient;
  v2 = [(ATXNotificationsLoggingClient *)&v23 init];
  if (v2)
  {
    v3 = objc_opt_new();
    activeSuggestionsRequests = v2->_activeSuggestionsRequests;
    v2->_activeSuggestionsRequests = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("ATXNotificationsLoggingClient.queue", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    objc_initWeak(&location, v2);
    v8 = objc_alloc(MEMORY[0x277D42628]);
    v9 = v2->_queue;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __37__ATXNotificationsLoggingClient_init__block_invoke;
    v20 = &unk_278C8F638;
    objc_copyWeak(&v21, &location);
    v10 = [v8 initWithQueue:v9 operation:&v17];
    coalescingTimer = v2->_coalescingTimer;
    v2->_coalescingTimer = v10;

    v12 = objc_alloc(MEMORY[0x277CCAE80]);
    v13 = [v12 initWithMachServiceName:@"com.apple.notifications.logging" options:{0, v17, v18, v19, v20}];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v13;

    v15 = ATXNotificationsLoggingInterface();
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v15];
    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_68_0];
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:&__block_literal_global_71_0];
    [(NSXPCConnection *)v2->_xpcConnection resume];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __37__ATXNotificationsLoggingClient_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processActiveSuggestionsRequests];
}

void __37__ATXNotificationsLoggingClient_init__block_invoke_2()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __37__ATXNotificationsLoggingClient_init__block_invoke_2_cold_1();
  }
}

void __37__ATXNotificationsLoggingClient_init__block_invoke_69()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_24001A000, v0, OS_LOG_TYPE_INFO, "ATXNotificationsLoggingClient invalidation handler called", v1, 2u);
  }
}

- (void)_processActiveSuggestionsRequests
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke;
  v12[3] = &unk_278C8F688;
  v12[4] = self;
  v3 = MEMORY[0x245CB55D0](v12, a2);
  xpcConnection = self->_xpcConnection;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke_76;
  v10 = &unk_278C8F6B0;
  v11 = v3;
  v5 = v3;
  v6 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:&v7];
  [v6 activeSuggestionsWithReply:{v5, v7, v8, v9, v10}];
}

void __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  v8 = [*(*(a1 + 32) + 24) count];
  if (v8 >= 2)
  {
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke_cold_1(v8, v9);
    }
  }

  v10 = *(*(a1 + 32) + 24);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke_72;
  v13[3] = &unk_278C8F660;
  v16 = v8;
  v11 = v5;
  v14 = v11;
  v12 = v6;
  v15 = v12;
  [v10 enumerateObjectsUsingBlock:v13];
  [*(*(a1 + 32) + 24) removeAllObjects];

  objc_sync_exit(v7);
}

void __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke_72(uint64_t a1, void (**a2)(void, void), uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) - 1 == a3)
  {
    v5 = a2;
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) count];
      *buf = 134217984;
      v15 = v7;
      _os_log_impl(&dword_24001A000, v6, OS_LOG_TYPE_INFO, "activeSuggestionsWithReply: delivering %tu suggestions.", buf, 0xCu);
    }

    (*(v5 + 2))(v5, *(a1 + 32), *(a1 + 40));
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = ATXNotificationsLoggingClientErrorDomain;
    v11 = a2;
    v13 = [v9 errorWithDomain:v10 code:1 userInfo:0];
    a2[2](v11, 0);

    v12 = *MEMORY[0x277D85DE8];
  }
}

void __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke_76_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)activeSuggestionsWithReply:(id)a3
{
  v4 = a3;
  v5 = __atxlog_handle_notification_management();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_24001A000, v6, OS_LOG_TYPE_DEFAULT, "activeSuggestionsWithReply: queued request", v10, 2u);
    }

    v7 = self;
    objc_sync_enter(v7);
    activeSuggestionsRequests = v7->_activeSuggestionsRequests;
    v9 = MEMORY[0x245CB55D0](v4);
    [(NSMutableArray *)activeSuggestionsRequests addObject:v9];

    objc_sync_exit(v7);
    [(_PASSimpleCoalescingTimer *)v7->_coalescingTimer runAfterDelaySeconds:1 coalescingBehavior:0.5];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationsLoggingClient activeSuggestionsWithReply:];
    }
  }
}

- (void)logNotificationEvent:(int64_t)a3 notification:(id)a4 reason:(unint64_t)a5 interactionUI:(unint64_t)a6
{
  v10 = a4;
  v11 = [v10 uuid];

  if (v11)
  {
    v12 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_79];
    [v12 logNotificationEvent:a3 notification:v10 reason:a5 interactionUI:a6];
  }

  else
  {
    v13 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [ATXNotificationsLoggingClient logNotificationEvent:notification:reason:interactionUI:];
    }
  }
}

void __88__ATXNotificationsLoggingClient_logNotificationEvent_notification_reason_interactionUI___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __88__ATXNotificationsLoggingClient_logNotificationEvent_notification_reason_interactionUI___block_invoke_cold_1();
  }
}

- (void)logNotificationEvent:(int64_t)a3 notification:(id)a4
{
  v6 = a4;
  v7 = [v6 uuid];

  if (v7)
  {
    v8 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_81];
    [v8 logNotificationEvent:a3 notification:v6 reason:0 interactionUI:5];
  }

  else
  {
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXNotificationsLoggingClient logNotificationEvent:notification:reason:interactionUI:];
    }
  }
}

void __67__ATXNotificationsLoggingClient_logNotificationEvent_notification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __67__ATXNotificationsLoggingClient_logNotificationEvent_notification___block_invoke_cold_1();
  }
}

- (void)logNotificationEvent:(int64_t)a3 notification:(id)a4 reason:(unint64_t)a5
{
  v8 = a4;
  v9 = [v8 uuid];

  if (v9)
  {
    v10 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_83_0];
    [v10 logNotificationEvent:a3 notification:v8 reason:a5 interactionUI:5];
  }

  else
  {
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXNotificationsLoggingClient logNotificationEvent:notification:reason:interactionUI:];
    }
  }
}

void __74__ATXNotificationsLoggingClient_logNotificationEvent_notification_reason___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __74__ATXNotificationsLoggingClient_logNotificationEvent_notification_reason___block_invoke_cold_1();
  }
}

- (void)logSuggestionEvent:(int64_t)a3 suggestionType:(int64_t)a4 suggestionIdentifier:(id)a5 timestamp:(id)a6
{
  xpcConnection = self->_xpcConnection;
  v10 = a6;
  v11 = a5;
  v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_85];
  [v12 logSuggestionEvent:a3 suggestionType:a4 suggestionIdentifier:v11 timestamp:v10];
}

void __98__ATXNotificationsLoggingClient_logSuggestionEvent_suggestionType_suggestionIdentifier_timestamp___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __98__ATXNotificationsLoggingClient_logSuggestionEvent_suggestionType_suggestionIdentifier_timestamp___block_invoke_cold_1();
  }
}

- (void)logNotificationGroupEvent:(int64_t)a3 eventIdentifier:(id)a4 timestamp:(id)a5
{
  xpcConnection = self->_xpcConnection;
  v8 = a5;
  v9 = a4;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_87];
  [v10 logNotificationGroupEvent:a3 eventIdentifier:v9 timestamp:v8];
}

void __85__ATXNotificationsLoggingClient_logNotificationGroupEvent_eventIdentifier_timestamp___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __85__ATXNotificationsLoggingClient_logNotificationGroupEvent_eventIdentifier_timestamp___block_invoke_cold_1();
  }
}

- (void)logNotificationGroupEvent:(int64_t)a3 eventIdentifier:(id)a4
{
  xpcConnection = self->_xpcConnection;
  v6 = a4;
  v8 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_89_0];
  v7 = [MEMORY[0x277CBEAA8] now];
  [v8 logNotificationGroupEvent:a3 eventIdentifier:v6 timestamp:v7];
}

void __75__ATXNotificationsLoggingClient_logNotificationGroupEvent_eventIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __85__ATXNotificationsLoggingClient_logNotificationGroupEvent_eventIdentifier_timestamp___block_invoke_cold_1();
  }
}

- (void)logNotificationDeliveryUI:(unint64_t)a3 notificationUUIDs:(id)a4
{
  v6 = a4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ATXNotificationsLoggingClient logNotificationDeliveryUI:v6 notificationUUIDs:v8];
    }
  }

  else
  {
    v7 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_92_0];
    [v7 logNotificationDeliveryUI:a3 notificationUUIDs:v6];
  }
}

void __77__ATXNotificationsLoggingClient_logNotificationDeliveryUI_notificationUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77__ATXNotificationsLoggingClient_logNotificationDeliveryUI_notificationUUIDs___block_invoke_cold_1();
  }
}

void __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1 - 1;
  _os_log_debug_impl(&dword_24001A000, a2, OS_LOG_TYPE_DEBUG, "activeSuggestionsWithReply: throttling %tu earlier requests before delivering suggestions in the last request.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke_76_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24001A000, v0, v1, "activeSuggestionsWithReply: XPC error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __88__ATXNotificationsLoggingClient_logNotificationEvent_notification_reason_interactionUI___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24001A000, v0, v1, "logNotificationEvent:notification:reason:interactionUI XPC error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__ATXNotificationsLoggingClient_logNotificationEvent_notification___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24001A000, v0, v1, "logNotificationEvent:notification XPC error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __74__ATXNotificationsLoggingClient_logNotificationEvent_notification_reason___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24001A000, v0, v1, "logNotificationEvent:notification:reason XPC error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __98__ATXNotificationsLoggingClient_logSuggestionEvent_suggestionType_suggestionIdentifier_timestamp___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24001A000, v0, v1, "logSuggestionEvent:suggestionType:suggestionType:timestamp XPC error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __85__ATXNotificationsLoggingClient_logNotificationGroupEvent_eventIdentifier_timestamp___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24001A000, v0, v1, "logNotificationGroupEvent:eventIdentifier:timestamp XPC error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logNotificationDeliveryUI:(uint64_t)a1 notificationUUIDs:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_24001A000, a2, OS_LOG_TYPE_FAULT, "-logNotificationDeliveryUI:notificationUUIDs: was passed an object that is not an array: %{public}@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __77__ATXNotificationsLoggingClient_logNotificationDeliveryUI_notificationUUIDs___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_24001A000, v0, v1, "-logNotificationDeliveryUI:notificationUUIDs: XPC error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end