@interface AAFAnalyticsTransportRTC
+ (id)analyticsTransportRTCWithClientType:(id)type clientBundleId:(id)id clientName:(id)name;
- (AAFAnalyticsTransportRTC)initWithClientType:(id)type clientBundleId:(id)id clientName:(id)name;
- (NSString)debugDescription;
- (void)dealloc;
- (void)sendEvent:(id)event;
@end

@implementation AAFAnalyticsTransportRTC

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  clientType = [(AAFAnalyticsTransportRTC *)self clientType];
  clientBundleId = [(AAFAnalyticsTransportRTC *)self clientBundleId];
  clientName = [(AAFAnalyticsTransportRTC *)self clientName];
  v8 = [v3 stringWithFormat:@"<%@: %p> ClientType: [%@], ClientBundleId: [%@], ClientName: [%@]", v4, self, clientType, clientBundleId, clientName];

  return v8;
}

- (AAFAnalyticsTransportRTC)initWithClientType:(id)type clientBundleId:(id)id clientName:(id)name
{
  typeCopy = type;
  idCopy = id;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = AAFAnalyticsTransportRTC;
  v12 = [(AAFAnalyticsTransportRTC *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientType, type);
    objc_storeStrong(&v13->_clientBundleId, id);
    objc_storeStrong(&v13->_clientName, name);
    v14 = [[AAFXPCSessionConfig alloc] initWithServiceName:@"com.apple.cdp.daemon" remoteProtocol:&unk_1F4849630 options:0];
    v15 = [[AAFXPCSession alloc] initWithRemoteServiceConfig:v14 delegate:v13];
    remoteService = v13->_remoteService;
    v13->_remoteService = v15;

    [(AAFXPCSession *)v13->_remoteService resume];
  }

  return v13;
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  v5 = [(AAFXPCSession *)self->_remoteService remoteServiceProxyWithErrorHandler:&__block_literal_global_5];
  clientName = [eventCopy clientName];

  if (!clientName)
  {
    v7 = _AAFLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [AAFAnalyticsTransportRTC sendEvent:];
    }

    clientName2 = [(AAFAnalyticsTransportRTC *)self clientName];
    [eventCopy setClientName:clientName2];
  }

  clientBundleId = [eventCopy clientBundleId];

  if (!clientBundleId)
  {
    v10 = _AAFLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [AAFAnalyticsTransportRTC sendEvent:];
    }

    clientBundleId2 = [(AAFAnalyticsTransportRTC *)self clientBundleId];
    [eventCopy setClientBundleId:clientBundleId2];
  }

  clientType = [eventCopy clientType];

  if (!clientType)
  {
    v13 = _AAFLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [AAFAnalyticsTransportRTC sendEvent:];
    }

    clientType2 = [(AAFAnalyticsTransportRTC *)self clientType];
    [eventCopy setClientType:clientType2];
  }

  [v5 sendEvent:eventCopy];
}

void __38__AAFAnalyticsTransportRTC_sendEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _AAFLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __38__AAFAnalyticsTransportRTC_sendEvent___block_invoke_cold_1(v2, v3);
  }
}

- (void)dealloc
{
  [(AAFXPCSession *)self->_remoteService invalidate];
  remoteService = self->_remoteService;
  self->_remoteService = 0;

  v4.receiver = self;
  v4.super_class = AAFAnalyticsTransportRTC;
  [(AAFAnalyticsTransportRTC *)&v4 dealloc];
}

+ (id)analyticsTransportRTCWithClientType:(id)type clientBundleId:(id)id clientName:(id)name
{
  typeCopy = type;
  idCopy = id;
  nameCopy = name;
  v11 = nameCopy;
  if (typeCopy && idCopy && nameCopy)
  {
    v12 = [[self alloc] initWithClientType:typeCopy clientBundleId:idCopy clientName:nameCopy];
  }

  else
  {
    v13 = _AAFLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AAFAnalyticsTransportInProcessRTC analyticsTransportRTCWithClientType:v13 clientBundleId:? clientName:?];
    }

    v12 = 0;
  }

  return v12;
}

- (void)sendEvent:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v14 = *MEMORY[0x1E69E9840];
  v3 = [v2 eventName];
  v4 = [v0 clientName];
  v5 = [v1 clientName];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2(&dword_1C8644000, v6, v7, "Overriding event [%@] clientName to [%@] from [%@]", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)sendEvent:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v14 = *MEMORY[0x1E69E9840];
  v3 = [v2 eventName];
  v4 = [v0 clientBundleId];
  v5 = [v1 clientBundleId];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2(&dword_1C8644000, v6, v7, "Overriding event [%@] clientBundleId to [%@] from [%@]", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)sendEvent:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v14 = *MEMORY[0x1E69E9840];
  v3 = [v2 eventName];
  v4 = [v0 clientType];
  v5 = [v1 clientType];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2(&dword_1C8644000, v6, v7, "Overriding event [%@] clientType to [%@] from [%@]", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __38__AAFAnalyticsTransportRTC_sendEvent___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C8644000, a2, OS_LOG_TYPE_ERROR, "Error sending report for event. XPC error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end