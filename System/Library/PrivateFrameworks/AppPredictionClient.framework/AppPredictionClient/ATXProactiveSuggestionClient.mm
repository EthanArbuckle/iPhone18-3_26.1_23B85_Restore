@interface ATXProactiveSuggestionClient
- (ATXProactiveSuggestionClient)initWithConsumerSubType:(unsigned __int8)type;
- (id)layoutForRequest:(id)request;
- (id)remoteSyncBlendingLayerServer;
- (id)spotlightSuggestionLayoutFromCache;
- (id)suggestionLayoutFromCache;
- (id)suggestionsForRequest:(id)request limit:(id)limit;
- (void)dealloc;
- (void)remoteSyncBlendingLayerServer;
- (void)setupRemoteClientXPCConnection;
- (void)spotlightSuggestionLayoutFromCache;
- (void)suggestionLayoutFromCache;
@end

@implementation ATXProactiveSuggestionClient

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = ATXProactiveSuggestionClient;
  [(ATXProactiveSuggestionClient *)&v3 dealloc];
}

- (id)suggestionLayoutFromCache
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = __atxlog_handle_blending();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumer];
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "Accessing Blending's suggestionLayout cache for consumer subtype: %@", &v11, 0xCu);
  }

  consumer = self->_consumer;
  p_consumer = &self->_consumer;
  v7 = [*(p_consumer + 1) cachedLayoutForConsumerSubType:consumer expectedClass:objc_opt_class()];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = __atxlog_handle_blending();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(ATXProactiveSuggestionClient *)p_consumer suggestionLayoutFromCache];
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (id)spotlightSuggestionLayoutFromCache
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = __atxlog_handle_blending();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumer];
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "Accessing Blending's spotlightSuggestionLayout cache for consumer subtype: %@", &v11, 0xCu);
  }

  consumer = self->_consumer;
  p_consumer = &self->_consumer;
  v7 = [*(p_consumer + 1) cachedLayoutForConsumerSubType:consumer expectedClass:objc_opt_class()];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = __atxlog_handle_blending();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(ATXProactiveSuggestionClient *)p_consumer spotlightSuggestionLayoutFromCache];
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (ATXProactiveSuggestionClient)initWithConsumerSubType:(unsigned __int8)type
{
  v9.receiver = self;
  v9.super_class = ATXProactiveSuggestionClient;
  v4 = [(ATXProactiveSuggestionClient *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_consumer = type;
    v6 = objc_opt_new();
    cacheManager = v5->_cacheManager;
    v5->_cacheManager = v6;
  }

  return v5;
}

- (id)layoutForRequest:(id)request
{
  requestCopy = request;
  if (!self->_xpcConnection)
  {
    [(ATXProactiveSuggestionClient *)self setupRemoteClientXPCConnection];
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__20;
  v13 = __Block_byref_object_dispose__20;
  v14 = 0;
  remoteSyncBlendingLayerServer = [(ATXProactiveSuggestionClient *)self remoteSyncBlendingLayerServer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__ATXProactiveSuggestionClient_layoutForRequest___block_invoke;
  v8[3] = &unk_1E80C61B0;
  v8[4] = &v9;
  [remoteSyncBlendingLayerServer generateLayoutForRequest:requestCopy reply:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)suggestionsForRequest:(id)request limit:(id)limit
{
  requestCopy = request;
  limitCopy = limit;
  if (!self->_xpcConnection)
  {
    [(ATXProactiveSuggestionClient *)self setupRemoteClientXPCConnection];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__20;
  v16 = __Block_byref_object_dispose__20;
  v17 = 0;
  remoteSyncBlendingLayerServer = [(ATXProactiveSuggestionClient *)self remoteSyncBlendingLayerServer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__ATXProactiveSuggestionClient_suggestionsForRequest_limit___block_invoke;
  v11[3] = &unk_1E80C61D8;
  v11[4] = &v12;
  [remoteSyncBlendingLayerServer generateRankedSuggestionsForRequest:requestCopy limit:limitCopy reply:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)remoteSyncBlendingLayerServer
{
  p_xpcConnection = &self->_xpcConnection;
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v8[1] = v2;
    v9 = v3;
    [(ATXProactiveSuggestionClient *)a2 remoteSyncBlendingLayerServer:p_xpcConnection];
    xpcConnection = v8[0];
    v3 = v9;
  }

  return [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_98];
}

void __61__ATXProactiveSuggestionClient_remoteSyncBlendingLayerServer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_blending();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __61__ATXProactiveSuggestionClient_remoteSyncBlendingLayerServer__block_invoke_cold_1(v2, v3);
  }
}

- (void)setupRemoteClientXPCConnection
{
  v3 = objc_alloc(MEMORY[0x1E696B0B8]);
  v4 = [v3 initWithMachServiceName:*MEMORY[0x1E69C5C38] options:0];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v4;

  v6 = ATXCreateProactiveSuggestionClientModelXPCInterface();
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v6];

  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&__block_literal_global_26_0];
  v7 = self->_xpcConnection;

  [(NSXPCConnection *)v7 resume];
}

void __62__ATXProactiveSuggestionClient_setupRemoteClientXPCConnection__block_invoke()
{
  v0 = __atxlog_handle_blending();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __62__ATXProactiveSuggestionClient_setupRemoteClientXPCConnection__block_invoke_cold_1(v0);
  }
}

- (void)suggestionLayoutFromCache
{
  v1 = [MEMORY[0x1E698B028] stringForConsumerSubtype:*self];
  OUTLINED_FUNCTION_0(&dword_1BF549000, v2, v3, "A suggestion client tried to access cached suggestions for consumerSubType: %@, but the object type wasn't an ATXSuggestionLayout.", v4, v5, v6, v7, 2u);
}

- (void)spotlightSuggestionLayoutFromCache
{
  v1 = [MEMORY[0x1E698B028] stringForConsumerSubtype:*self];
  OUTLINED_FUNCTION_0(&dword_1BF549000, v2, v3, "A suggestion client tried to access cached suggestions for consumerSubType: %@, but the object type wasn't an ATXSpotlightSuggestionLayout.", v4, v5, v6, v7, 2u);
}

- (void)remoteSyncBlendingLayerServer
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"ATXProactiveSuggestionClient.m" lineNumber:91 description:@"Blending: XPC Connection was not initialized when Proactive Suggestion Client Model tried to acquire a remote object proxy."];

  *a4 = *a3;
}

void __61__ATXProactiveSuggestionClient_remoteSyncBlendingLayerServer__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Blending: Error while communicating with Suggestion Receiver. Error: %@.", &v2, 0xCu);
}

@end