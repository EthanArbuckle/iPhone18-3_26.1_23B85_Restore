@interface ATXParameterSuggestionServer
+ (id)sharedInstance;
- (ATXParameterSuggestionServer)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)dealloc;
- (void)parameterSuggestionsForBundleID:(id)d intentName:(id)name toolID:(id)iD limit:(unint64_t)limit withCompletion:(id)completion;
- (void)suggestionMetadataForActions:(id)actions withCompletion:(id)completion;
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

- (void)parameterSuggestionsForBundleID:(id)d intentName:(id)name toolID:(id)iD limit:(unint64_t)limit withCompletion:(id)completion
{
  v7 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CEB260];
  completionCopy = completion;
  v10 = [v7 errorWithDomain:v8 code:4 userInfo:0];
  completionCopy[2](completionCopy, 0, v10);
}

- (void)suggestionMetadataForActions:(id)actions withCompletion:(id)completion
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CEB260];
  completionCopy = completion;
  v7 = [v4 errorWithDomain:v5 code:4 userInfo:0];
  completionCopy[2](completionCopy, 0, v7);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = *MEMORY[0x277D41FE0];
  v7 = [connectionCopy valueForEntitlement:*MEMORY[0x277D41FE0]];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && ([v7 BOOLValue] & 1) != 0)
  {
    v8 = ATXProactivePredictionXPCInterface();
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_24_5];
    [connectionCopy setInvalidationHandler:&__block_literal_global_27_1];
    [connectionCopy resume];
    v9 = 1;
  }

  else
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationDigestRankerServer *)connectionCopy listener:v6 shouldAcceptNewConnection:v10];
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