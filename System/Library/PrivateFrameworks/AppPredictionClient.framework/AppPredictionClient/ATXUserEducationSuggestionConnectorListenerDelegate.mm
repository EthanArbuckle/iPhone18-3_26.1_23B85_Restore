@interface ATXUserEducationSuggestionConnectorListenerDelegate
- (ATXUserEducationSuggestionConnectorListenerDelegate)initWithServiceName:(id)name interfaceFactory:(void *)factory requestHandler:(id)handler;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ATXUserEducationSuggestionConnectorListenerDelegate

- (ATXUserEducationSuggestionConnectorListenerDelegate)initWithServiceName:(id)name interfaceFactory:(void *)factory requestHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = ATXUserEducationSuggestionConnectorListenerDelegate;
  v11 = [(ATXUserEducationSuggestionConnectorListenerDelegate *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_serviceName, name);
    v12->_interfaceFactory = factory;
    objc_storeStrong(&v12->_requestHandler, handler);
  }

  return v12;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__ATXUserEducationSuggestionConnectorListenerDelegate_listener_shouldAcceptNewConnection___block_invoke;
  v13[3] = &unk_1E80C32D0;
  v13[4] = self;
  connectionCopy = connection;
  v6 = MEMORY[0x1BFB5BA40](v13);
  v7 = MEMORY[0x1E69C5DB0];
  serviceName = self->_serviceName;
  v9 = (self->_interfaceFactory)();
  requestHandler = self->_requestHandler;
  v11 = __atxlog_handle_context_user_education_suggestions();
  LOBYTE(requestHandler) = [v7 shouldAcceptConnection:connectionCopy serviceName:serviceName whitelistedServerInterface:v9 whitelistedClientInterface:0 requestHandler:requestHandler validateConnection:v6 setupClientProxy:0 interruptionHandler:&__block_literal_global_31_0 invalidationHandler:&__block_literal_global_33_0 logHandle:v11];

  return requestHandler;
}

uint64_t __90__ATXUserEducationSuggestionConnectorListenerDelegate_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C5DB0];
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  v5 = __atxlog_handle_context_user_education_suggestions();
  v6 = [v2 checkForAndLogTrueBooleanEntitlement:v3 connection:v4 serviceName:v3 logHandle:v5];

  return v6;
}

@end