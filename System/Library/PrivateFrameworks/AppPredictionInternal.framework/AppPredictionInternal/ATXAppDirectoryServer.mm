@interface ATXAppDirectoryServer
+ (id)sharedInstance;
- (ATXAppDirectoryServer)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)appLaunchDatesWithReply:(id)a3;
- (void)categoriesWithReply:(id)a3;
- (void)notifyBookmarksDidChange;
- (void)requestNotificationWhenCategoriesAreReady;
@end

@implementation ATXAppDirectoryServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_31 != -1)
  {
    +[ATXAppDirectoryServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_38;

  return v3;
}

void __39__ATXAppDirectoryServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_38;
  sharedInstance__pasExprOnceResult_38 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXAppDirectoryServer)init
{
  v9.receiver = self;
  v9.super_class = ATXAppDirectoryServer;
  v2 = [(ATXAppDirectoryServer *)&v9 init];
  if (v2)
  {
    v3 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryServer launched", v8, 2u);
    }

    v4 = objc_alloc(MEMORY[0x277CCAE98]);
    v5 = [v4 initWithMachServiceName:*MEMORY[0x277CEBA28]];
    listener = v2->_listener;
    v2->_listener = v5;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (void)categoriesWithReply:(id)a3
{
  v3 = a3;
  v4 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v4 categoriesWithReply:v3];
}

- (void)appLaunchDatesWithReply:(id)a3
{
  v3 = a3;
  v4 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v4 appLaunchDatesWithReply:v3];
}

- (void)notifyBookmarksDidChange
{
  v2 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v2 notifyBookmarksDidChange];
}

- (void)requestNotificationWhenCategoriesAreReady
{
  v2 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v2 requestNotificationWhenCategoriesAreReady];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryServer connection attempted", v13, 2u);
  }

  v7 = *MEMORY[0x277CEBA28];
  v8 = [v5 valueForEntitlement:*MEMORY[0x277CEBA28]];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0 && ([v8 BOOLValue] & 1) != 0)
  {
    v9 = ATXAppDirectoryInterface();
    [v5 setExportedInterface:v9];

    [v5 setExportedObject:self];
    [v5 setInterruptionHandler:&__block_literal_global_25_4];
    [v5 setInvalidationHandler:&__block_literal_global_28_0];
    [v5 resume];
    v10 = 1;
  }

  else
  {
    v11 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ATXAppDirectoryServer *)v5 listener:v7 shouldAcceptNewConnection:v11];
    }

    v10 = 0;
  }

  return v10;
}

void __60__ATXAppDirectoryServer_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __60__ATXAppDirectoryServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(v0);
  }
}

void __60__ATXAppDirectoryServer_listener_shouldAcceptNewConnection___block_invoke_26()
{
  v0 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __60__ATXAppDirectoryServer_listener_shouldAcceptNewConnection___block_invoke_26_cold_1(v0);
  }
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXAppDirectoryServer: Rejecting connection %@ without entitlement %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end