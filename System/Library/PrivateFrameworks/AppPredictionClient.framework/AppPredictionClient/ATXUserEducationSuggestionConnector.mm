@interface ATXUserEducationSuggestionConnector
- (ATXUserEducationSuggestionConnector)initWithOurInterfaceFactory:(void *)factory theirInterfaceFactory:(void *)interfaceFactory ourServiceName:(id)name theirServiceName:(id)serviceName requestHandler:(id)handler;
@end

@implementation ATXUserEducationSuggestionConnector

- (ATXUserEducationSuggestionConnector)initWithOurInterfaceFactory:(void *)factory theirInterfaceFactory:(void *)interfaceFactory ourServiceName:(id)name theirServiceName:(id)serviceName requestHandler:(id)handler
{
  nameCopy = name;
  serviceNameCopy = serviceName;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = ATXUserEducationSuggestionConnector;
  v15 = [(ATXUserEducationSuggestionConnector *)&v23 init];
  if (v15)
  {
    v16 = [[ATXUserEducationSuggestionConnectorListenerDelegate alloc] initWithServiceName:nameCopy interfaceFactory:factory requestHandler:handlerCopy];
    [MEMORY[0x1E69C5DA8] registerForService:nameCopy delegate:v16];
    v17 = objc_alloc(MEMORY[0x1E69C5DA0]);
    v18 = (interfaceFactory)();
    v19 = __atxlog_handle_context_user_education_suggestions();
    v20 = [v17 initWithServiceName:serviceNameCopy allowlistedServerInterface:v18 allowlistedClientInterface:0 serverInitiatedRequestHandler:0 interruptionHandler:&__block_literal_global_47 invalidationHandler:&__block_literal_global_14_0 logHandle:v19];
    xpcClientHelper = v15->_xpcClientHelper;
    v15->_xpcClientHelper = v20;
  }

  return v15;
}

void __56__ATXUserEducationSuggestionConnector_remoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_context_user_education_suggestions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__ATXUserEducationSuggestionConnector_remoteObjectProxy__block_invoke_cold_1(v2, v3);
  }
}

void __56__ATXUserEducationSuggestionConnector_remoteObjectProxy__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[ATXUserEducationSuggestionConnector remoteObjectProxy]_block_invoke";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "%s: error with xpc connection: %@", &v2, 0x16u);
}

@end