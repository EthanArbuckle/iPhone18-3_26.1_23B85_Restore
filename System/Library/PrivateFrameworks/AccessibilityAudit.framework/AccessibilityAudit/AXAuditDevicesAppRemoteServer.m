@interface AXAuditDevicesAppRemoteServer
- (AXAuditDevicesAppRemoteServer)initWithTransport:(id)a3;
- (void)accessibilityTranslationTransportSendData:(id)a3 completionHandler:(id)a4;
- (void)cancel;
- (void)clientNeedsAccessibility:(id)a3;
- (void)connectionInterrupted;
- (void)dealloc;
- (void)processDataFromHost:(id)a3;
- (void)requestHostAPIVersion;
- (void)resume;
- (void)setMaxConnectionEnqueue:(unint64_t)a3;
@end

@implementation AXAuditDevicesAppRemoteServer

- (AXAuditDevicesAppRemoteServer)initWithTransport:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = AXAuditDevicesAppRemoteServer;
  v5 = [(AXAuditDevicesAppRemoteServer *)&v18 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [objc_alloc(MEMORY[0x277D03650]) initWithTransport:v4];
      [v6 setMaximumEnqueueSize:0x800000];
      [v6 setDispatchTarget:v5];
      v7 = os_transaction_create();
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __51__AXAuditDevicesAppRemoteServer_initWithTransport___block_invoke;
      v15 = &unk_278BE3200;
      v8 = v5;
      v16 = v8;
      v17 = v7;
      v5 = v7;
      [v6 setMessageHandler:&v12];
      [v6 setChannelHandler:{&__block_literal_global_22, v12, v13, v14, v15}];
      connection = v8->_connection;
      v8->_connection = v6;
      v10 = v6;
    }

    else
    {
      v8 = 0;
    }

    v5 = v8;
  }

  return v5;
}

void __51__AXAuditDevicesAppRemoteServer_initWithTransport___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if ([a2 errorStatus] == 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[AXAuditDevicesAppRemoteServer initWithTransport:]_block_invoke";
      _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: DTXMessageErrorStatus_ConnectionInterrupted", &v7, 0xCu);
    }

    [*(a1 + 32) connectionInterrupted];
    v3 = [*(a1 + 32) connection];
    [v3 setDispatchTarget:0];

    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __51__AXAuditDevicesAppRemoteServer_initWithTransport___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  if (a4)
  {
    [a4 instantiateServiceWithChannel:v6];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __51__AXAuditDevicesAppRemoteServer_initWithTransport___block_invoke_2_cold_1(v7);
    }

    [v6 cancel];
  }
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v6 = "[AXAuditDevicesAppRemoteServer dealloc]";
    _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = AXAuditDevicesAppRemoteServer;
  [(AXAuditDevicesAppRemoteServer *)&v4 dealloc];
  v3 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AXAuditDevicesAppRemoteServer cancel]";
    _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
  }

  v3 = [(AXAuditDevicesAppRemoteServer *)self connection];
  [v3 cancel];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)resume
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AXAuditDevicesAppRemoteServer resume]";
    _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
  }

  v3 = [(AXAuditDevicesAppRemoteServer *)self connection];
  [v3 resume];

  [(AXAuditDevicesAppRemoteServer *)self requestHostAPIVersion];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setMaxConnectionEnqueue:(unint64_t)a3
{
  v4 = [(AXAuditDevicesAppRemoteServer *)self connection];
  [v4 setMaximumEnqueueSize:a3];
}

- (void)connectionInterrupted
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[AXAuditDevicesAppRemoteServer connectionInterrupted]";
    _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)requestHostAPIVersion
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__AXAuditDevicesAppRemoteServer_requestHostAPIVersion__block_invoke;
  v6[3] = &unk_278BE3248;
  v6[4] = self;
  v3 = MEMORY[0x23EEEA2E0](v6, a2);
  v4 = [MEMORY[0x277D03668] messageWithSelector:sel_hostAPIVersion objectArguments:0];
  if ([(AXAuditDevicesAppRemoteServer *)self hostAPIVersion]<= 0)
  {
    v5 = [(AXAuditDevicesAppRemoteServer *)self connection];
    [v5 sendControlAsync:v4 replyHandler:v3];
  }
}

void __54__AXAuditDevicesAppRemoteServer_requestHostAPIVersion__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__AXAuditDevicesAppRemoteServer_requestHostAPIVersion__block_invoke_2;
  v6[3] = &unk_278BE2CA8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __54__AXAuditDevicesAppRemoteServer_requestHostAPIVersion__block_invoke_2(uint64_t a1)
{
  if (![*(a1 + 32) errorStatus])
  {
    v2 = [*(a1 + 32) object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 40) setHostAPIVersion:{objc_msgSend(v2, "integerValue")}];
    }
  }
}

- (void)accessibilityTranslationTransportSendData:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277D03668] messageWithSelector:sel_processDataFromRemoteDevice_ objectArguments:{a3, 0}];
  v8 = [(AXAuditDevicesAppRemoteServer *)self connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__AXAuditDevicesAppRemoteServer_accessibilityTranslationTransportSendData_completionHandler___block_invoke;
  v10[3] = &unk_278BE3298;
  v11 = v6;
  v9 = v6;
  [v8 sendControlAsync:v7 replyHandler:v10];
}

void __93__AXAuditDevicesAppRemoteServer_accessibilityTranslationTransportSendData_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __93__AXAuditDevicesAppRemoteServer_accessibilityTranslationTransportSendData_completionHandler___block_invoke_2;
  v5[3] = &unk_278BE3270;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __93__AXAuditDevicesAppRemoteServer_accessibilityTranslationTransportSendData_completionHandler___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) errorStatus])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.AXAuditDevicesAppRemoteServer" code:0 userInfo:0];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  (*(*(a1 + 40) + 16))();
}

- (void)clientNeedsAccessibility:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 BOOLValue];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[AXAuditDevicesAppRemoteServer clientNeedsAccessibility:]";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s, needsAX: %@", &v13, 0x16u);
  }

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CE7180]);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CE7180]) initWithCachedTreeClientType:2];
      [(AXAuditDevicesAppRemoteServer *)self setRemoteCacheManager:v8];

      v9 = [(AXAuditDevicesAppRemoteServer *)self remoteCacheManager];
      [v9 setTransportDelegate:self];

      v10 = [(AXAuditDevicesAppRemoteServer *)self remoteCacheManager];
      [v10 start];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AXAuditDevicesAppRemoteServer clientNeedsAccessibility:];
    }
  }

  else
  {
    v11 = [(AXAuditDevicesAppRemoteServer *)self remoteCacheManager];
    [v11 setTransportDelegate:0];

    [(AXAuditDevicesAppRemoteServer *)self setRemoteCacheManager:0];
    [(AXAuditDevicesAppRemoteServer *)self cancel];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)processDataFromHost:(id)a3
{
  v4 = a3;
  v5 = [(AXAuditDevicesAppRemoteServer *)self axpTransportDataHandler];

  if (v5)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__AXAuditDevicesAppRemoteServer_processDataFromHost___block_invoke;
    v6[3] = &unk_278BE2CA8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [AXAuditDevicesAppRemoteServer processDataFromHost:];
  }
}

void __53__AXAuditDevicesAppRemoteServer_processDataFromHost___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) axpTransportDataHandler];
  v2[2](v2, *(a1 + 40), &stru_284FBB130);
}

void __51__AXAuditDevicesAppRemoteServer_initWithTransport___block_invoke_2_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not create service named %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)processDataFromHost:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[AXAuditDevicesAppRemoteServer processDataFromHost:]";
  _os_log_error_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: axpTransportDataHandler is nil!", &v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

@end