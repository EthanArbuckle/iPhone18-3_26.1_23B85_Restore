@interface ATXParameterSuggestionServer
+ (id)sharedInstance;
- (ATXParameterSuggestionServer)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)dealloc;
- (void)parameterSuggestionsForBundleID:(id)a3 intentName:(id)a4 toolID:(id)a5 limit:(unint64_t)a6 withCompletion:(id)a7;
- (void)suggestionMetadataForActions:(id)a3 withCompletion:(id)a4;
@end

@implementation ATXParameterSuggestionServer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_15 != -1)
  {
    +[ATXParameterSuggestionServer sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_2;

  return v3;
}

uint64_t __46__ATXParameterSuggestionServer_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ATXParameterSuggestionServer);
  v1 = sharedInstance_sharedInstance_2;
  sharedInstance_sharedInstance_2 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (ATXParameterSuggestionServer)init
{
  v7.receiver = self;
  v7.super_class = ATXParameterSuggestionServer;
  v2 = [(ATXParameterSuggestionServer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_machServiceName, *MEMORY[0x277D41FE0]);
    v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:v3->_machServiceName];
    listener = v3->_listener;
    v3->_listener = v4;

    [(NSXPCListener *)v3->_listener setDelegate:v3];
    [(NSXPCListener *)v3->_listener resume];
  }

  return v3;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = ATXParameterSuggestionServer;
  [(ATXParameterSuggestionServer *)&v3 dealloc];
}

- (void)parameterSuggestionsForBundleID:(id)a3 intentName:(id)a4 toolID:(id)a5 limit:(unint64_t)a6 withCompletion:(id)a7
{
  v7 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CEB260];
  v9 = a7;
  v10 = [v7 errorWithDomain:v8 code:4 userInfo:0];
  v9[2](v9, 0, v10);
}

- (void)suggestionMetadataForActions:(id)a3 withCompletion:(id)a4
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CEB260];
  v6 = a4;
  v7 = [v4 errorWithDomain:v5 code:4 userInfo:0];
  v6[2](v6, 0, v7);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = *MEMORY[0x277D41FE0];
  v7 = [v5 valueForEntitlement:*MEMORY[0x277D41FE0]];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && ([v7 BOOLValue] & 1) != 0)
  {
    v8 = ATXProactivePredictionXPCInterface();
    [v5 setExportedInterface:v8];

    [v5 setExportedObject:self];
    [v5 setInterruptionHandler:&__block_literal_global_24_5];
    [v5 setInvalidationHandler:&__block_literal_global_27_1];
    [v5 resume];
    v9 = 1;
  }

  else
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationDigestRankerServer *)v5 listener:v6 shouldAcceptNewConnection:v10];
    }

    v9 = 0;
  }

  return v9;
}

void __67__ATXParameterSuggestionServer_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __67__ATXParameterSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(v0);
  }
}

void __67__ATXParameterSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_25()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __67__ATXParameterSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_25_cold_1(v0);
  }
}

@end