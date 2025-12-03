@interface ATXDefaultWidgetSuggesterServer
+ (id)sharedInstance;
- (ATXDefaultWidgetSuggesterServer)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)shouldSuggestTVWithCompletionHandler:(id)handler;
- (void)updateCachedValuesWithActivity:(id)activity;
@end

@implementation ATXDefaultWidgetSuggesterServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_39 != -1)
  {
    +[ATXDefaultWidgetSuggesterServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_47;

  return v3;
}

void __49__ATXDefaultWidgetSuggesterServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_47;
  sharedInstance__pasExprOnceResult_47 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXDefaultWidgetSuggesterServer)init
{
  v7.receiver = self;
  v7.super_class = ATXDefaultWidgetSuggesterServer;
  v2 = [(ATXDefaultWidgetSuggesterServer *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAE98]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x277CEBA80]];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = *MEMORY[0x277CEBA80];
  v7 = [connectionCopy valueForEntitlement:*MEMORY[0x277CEBA80]];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && ([v7 BOOLValue] & 1) != 0)
  {
    v8 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(ATXDefaultWidgetSuggesterServer *)v8 listener:v9 shouldAcceptNewConnection:v10, v11, v12, v13, v14, v15];
    }

    v16 = ATXDefaultWidgetSuggesterInterface();
    [connectionCopy setExportedInterface:v16];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_21_5];
    [connectionCopy setInvalidationHandler:&__block_literal_global_24_4];
    [connectionCopy resume];
    v17 = 1;
  }

  else
  {
    v18 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationDigestRankerServer *)connectionCopy listener:v6 shouldAcceptNewConnection:v18];
    }

    v17 = 0;
  }

  return v17;
}

void __70__ATXDefaultWidgetSuggesterServer_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __70__ATXDefaultWidgetSuggesterServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

void __70__ATXDefaultWidgetSuggesterServer_listener_shouldAcceptNewConnection___block_invoke_22()
{
  v0 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __70__ATXDefaultWidgetSuggesterServer_listener_shouldAcceptNewConnection___block_invoke_22_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

- (void)shouldSuggestTVWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [ATXDefaultWidgetSuggester alloc];
  v5 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v6 = [(ATXDefaultWidgetSuggester *)v4 initWithHistogramManager:v5];

  handlerCopy[2](handlerCopy, [(ATXDefaultWidgetSuggester *)v6 shouldSuggestTV], 0);
}

- (void)updateCachedValuesWithActivity:(id)activity
{
  if (([activity didDefer] & 1) == 0)
  {
    v3 = [ATXDefaultWidgetSuggester alloc];
    v4 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v22 = [(ATXDefaultWidgetSuggester *)v3 initWithHistogramManager:v4];

    [(ATXDefaultWidgetSuggester *)v22 upcomingMediaCountForTVApp];
    v6 = v5;
    [(ATXDefaultWidgetSuggester *)v22 intentDonationCountForTVApp];
    v8 = v7;
    [(ATXDefaultWidgetSuggester *)v22 appLaunchCountForTVApp];
    v10 = v9;
    LODWORD(v4) = [MEMORY[0x277CEB478] shouldSuggestTVWithAppLaunchCount:? intentDonationCount:? upcomingMediaCount:?];
    v11 = objc_alloc(MEMORY[0x277CBEBD0]);
    v12 = [v11 initWithSuiteName:*MEMORY[0x277CEBD00]];
    v13 = MEMORY[0x277CEB478];
    v14 = *MEMORY[0x277CEBB50];
    [v12 doubleForKey:*MEMORY[0x277CEBB50]];
    v16 = v15;
    v17 = *MEMORY[0x277CEBB60];
    [v12 doubleForKey:*MEMORY[0x277CEBB60]];
    v19 = v18;
    v20 = *MEMORY[0x277CEBB68];
    [v12 doubleForKey:*MEMORY[0x277CEBB68]];
    LODWORD(v13) = [v13 shouldSuggestTVWithAppLaunchCount:v16 intentDonationCount:v19 upcomingMediaCount:v21];
    [v12 setDouble:v20 forKey:v6];
    [v12 setDouble:v17 forKey:v8];
    [v12 setDouble:v14 forKey:v10];
    if (v4 != v13)
    {
      notify_post([*MEMORY[0x277CEB1F8] UTF8String]);
    }
  }
}

@end