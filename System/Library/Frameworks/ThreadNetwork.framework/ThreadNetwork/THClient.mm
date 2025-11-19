@interface THClient
- (BOOL)getConnectionEntitlementValidity;
- (BOOL)getConnectionEntitlementValidity:(id)a3;
- (BOOL)initCommon;
- (BOOL)initCommon:(id)a3;
- (BOOL)isConnected;
- (THClient)init;
- (THClient)initWithKeychainAccessGroup:(id)a3;
- (id)asynchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)clientProxyWithErrorHandler:(id)a3;
- (id)clientProxyWithErrorHandler:(id)a3 pingService:(BOOL)a4;
- (id)getTheProxyWithBoolCompletion:(id)a3;
- (id)getTheProxyWithErrorParameterCompletion:(id)a3;
- (id)getTheProxyWithPrefEntryCompletion:(id)a3;
- (id)getTheProxyWithRecordCompletion:(id)a3;
- (id)getTheProxyWithResultBlockCompletion:(id)a3;
- (id)getTheProxyWithSetOfTHCredsParameterCompletion:(id)a3;
- (id)getTheProxyWithTHCredsAndUuidParametersCompletion:(id)a3;
- (id)getTheProxyWithTHCredsParameterCompletion:(id)a3;
- (id)performXPCRequestBlock:(id)a3 timeout:(double)a4 error:(id *)a5;
- (id)synchronousClientProxyWithErrorHandler:(id)a3;
- (void)checkPreferredNetworkForActiveOperationalDataset:(NSData *)activeOperationalDataSet completion:(void *)completion;
- (void)connectToXPCService;
- (void)ctcsAddPreferredNetworkWithCompletionInternally:(id)a3 extendedPANId:(id)a4 borderAgentID:(id)a5 ipV4NwSignature:(id)a6 ipv6NwSignature:(id)a7 wifiSSID:(id)a8 wifiPassword:(id)a9 completion:(id)a10;
- (void)ctcsCleanKeychainThreadNetworksWithCompletion:(id)a3;
- (void)ctcsCleanPreferredAndFrozenThreadNetworksWithCompletion:(id)a3;
- (void)ctcsDeleteActiveDataSetRecordWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)ctcsDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion:(id)a3 extendedPANId:(id)a4 ipV4NwSignature:(id)a5 ipv6NwSignature:(id)a6 wifiSSID:(id)a7 completion:(id)a8;
- (void)ctcsDeletePreferredNetworkWithCompletion:(id)a3;
- (void)ctcsRetrieveActiveDataSetRecordWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)ctcsRetrieveOrGeneratePreferredNetworkInternallyWithCompletion:(id)a3;
- (void)ctcsRetrievePreferredNetworkInternallyWithCompletion:(id)a3;
- (void)dealloc;
- (void)deleteCredentialsForBorderAgent:(NSData *)borderAgentID completion:(void *)completion;
- (void)handleXPCConnectionInterrupted;
- (void)handleXPCConnectionInvalidated;
- (void)init;
- (void)invalidate;
- (void)isPreferredNetworkAvailableWithCompletion:(void *)completion;
- (void)pingXPCServiceWithClientProxy:(id)a3 completion:(id)a4;
- (void)retrieveActiveDataSetRecordInternallyForExtendedPANID:(id)a3 completion:(id)a4;
- (void)retrieveAllActiveCredentials:(void *)completion;
- (void)retrieveAllCredentials:(void *)completion;
- (void)retrieveCredentialsForBorderAgent:(NSData *)borderAgentID completion:(void *)completion;
- (void)retrieveCredentialsForExtendedPANID:(NSData *)extendedPANID completion:(void *)completion;
- (void)retrieveCredentialsForUUID:(id)a3 completion:(id)a4;
- (void)retrieveOrGeneratePreferredNetworkInternally:(id)a3;
- (void)retrievePreferredCredentials:(void *)completion;
- (void)retrievePreferredCredentialsInternally:(id)a3;
- (void)retrievePreferredNetworkInternallyOnMdnsAndSig:(id)a3;
- (void)retrievePreferredNetworkWithNoScan:(id)a3;
- (void)setIsConnected:(BOOL)a3;
- (void)storeCachedAODasPreferredNetwork:(id)a3 completion:(id)a4;
- (void)storeCredentialsForBorderAgent:(NSData *)borderAgentID activeOperationalDataSet:(NSData *)activeOperationalDataSet completion:(void *)completion;
- (void)storeCredentialsForBorderAgentInternally:(id)a3 networkName:(id)a4 extendedPANId:(id)a5 activeOperationalDataSet:(id)a6 completion:(id)a7;
- (void)updatePreferredCredentialsInternally:(id)a3;
- (void)validateAODInternally:(id)a3 completion:(id)a4;
@end

@implementation THClient

- (THClient)init
{
  v13 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = THClient;
  v2 = [(THClient *)&v10 init];
  v3 = v2;
  if (!v2)
  {
LABEL_5:
    v7 = v3;
    goto LABEL_9;
  }

  v4 = [(THClient *)v2 initCommon];
  v5 = ThreadNetworkLoggingCategory(0);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[THClient init]";
      _os_log_impl(&dword_23AAC8000, v6, OS_LOG_TYPE_INFO, "Client: %s - XPC Client Init done", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [THClient init];
  }

  [(THClient *)v3 invalidate];
  v7 = 0;
LABEL_9:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(THClient *)self xpcConnection];

  if (v3)
  {
    v4 = [(THClient *)self xpcConnection];
    [v4 invalidate];
  }

  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[THClient dealloc]";
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_DEFAULT, "%s : Client: Connection - deallocated...", buf, 0xCu);
  }

  if ([(THClient *)self threadSafePropertyQueue])
  {
    dispatch_release(self->_threadSafePropertyQueue);
  }

  v6 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[THClient dealloc]";
    _os_log_impl(&dword_23AAC8000, v6, OS_LOG_TYPE_DEFAULT, "%s : Client: thread safe property queue - deallocated...", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = THClient;
  [(THClient *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (THClient)initWithKeychainAccessGroup:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = THClient;
  v5 = [(THClient *)&v13 init];
  v6 = v5;
  if (!v5)
  {
LABEL_5:
    v10 = v6;
    goto LABEL_9;
  }

  v7 = [(THClient *)v5 initCommon:v4];
  v8 = ThreadNetworkLoggingCategory(0);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[THClient initWithKeychainAccessGroup:]";
      _os_log_impl(&dword_23AAC8000, v9, OS_LOG_TYPE_DEFAULT, "Client: %s - XPC Client Init done", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [THClient initWithKeychainAccessGroup:];
  }

  [(THClient *)v6 invalidate];
  v10 = 0;
LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)initCommon:(id)a3
{
  v5 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, 0);
  v6 = a3;
  self->_threadSafePropertyQueue = dispatch_queue_create("CTCS XPC Client Thread Safe Property Queue", v5);
  self->_isConnected = 0;
  LOBYTE(self) = [(THClient *)self getConnectionEntitlementValidity:v6];

  return self;
}

- (BOOL)initCommon
{
  v3 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, 0);
  self->_threadSafePropertyQueue = dispatch_queue_create("CTCS XPC Client Thread Safe Property Queue", v3);
  self->_isConnected = 0;

  return [(THClient *)self getConnectionEntitlementValidity];
}

- (void)pingXPCServiceWithClientProxy:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__THClient_pingXPCServiceWithClientProxy_completion___block_invoke;
  v9[3] = &unk_278B6A980;
  objc_copyWeak(&v11, &location);
  v8 = v7;
  v10 = v8;
  [v6 ping:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __53__THClient_pingXPCServiceWithClientProxy_completion___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  LODWORD(v4) = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      v4 = 0;
    }

    else
    {
      v4 = v4;
    }

    if (v4 == 1)
    {
      [WeakRetained setIsConnected:1];
      v8 = ThreadNetworkLoggingCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Successfully established connection", v11, 2u);
      }
    }

    else
    {
      v9 = ThreadNetworkLoggingCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __53__THClient_pingXPCServiceWithClientProxy_completion___block_invoke_cold_1();
      }

      [v7 setIsConnected:0];
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, v4);
    }
  }
}

void __26__THClient_pingXPCService__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_23AAC8000, v3, OS_LOG_TYPE_INFO, "clientProxyWithErrorHandler: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)getTheProxyWithErrorParameterCompletion:(id)a3
{
  v4 = a3;
  if ([(THClient *)self isConnected])
  {
    v5 = [(THClient *)self xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__THClient_getTheProxyWithErrorParameterCompletion___block_invoke;
    v8[3] = &unk_278B6A9C8;
    v9 = v4;
    v6 = [v5 remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    v6 = [(THClient *)self pingXPCService];
  }

  return v6;
}

void __52__THClient_getTheProxyWithErrorParameterCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__THClient_getTheProxyWithErrorParameterCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getTheProxyWithTHCredsParameterCompletion:(id)a3
{
  v4 = a3;
  if ([(THClient *)self isConnected])
  {
    v5 = [(THClient *)self xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__THClient_getTheProxyWithTHCredsParameterCompletion___block_invoke;
    v8[3] = &unk_278B6A9C8;
    v9 = v4;
    v6 = [v5 remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    v6 = [(THClient *)self pingXPCService];
  }

  return v6;
}

void __54__THClient_getTheProxyWithTHCredsParameterCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__THClient_getTheProxyWithTHCredsParameterCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getTheProxyWithSetOfTHCredsParameterCompletion:(id)a3
{
  v4 = a3;
  if ([(THClient *)self isConnected])
  {
    v5 = [(THClient *)self xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__THClient_getTheProxyWithSetOfTHCredsParameterCompletion___block_invoke;
    v8[3] = &unk_278B6A9C8;
    v9 = v4;
    v6 = [v5 remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    v6 = [(THClient *)self pingXPCService];
  }

  return v6;
}

void __59__THClient_getTheProxyWithSetOfTHCredsParameterCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__THClient_getTheProxyWithSetOfTHCredsParameterCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getTheProxyWithTHCredsAndUuidParametersCompletion:(id)a3
{
  v4 = a3;
  if ([(THClient *)self isConnected])
  {
    v5 = [(THClient *)self xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__THClient_getTheProxyWithTHCredsAndUuidParametersCompletion___block_invoke;
    v8[3] = &unk_278B6A9C8;
    v9 = v4;
    v6 = [v5 remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    v6 = [(THClient *)self pingXPCService];
  }

  return v6;
}

void __62__THClient_getTheProxyWithTHCredsAndUuidParametersCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__THClient_getTheProxyWithTHCredsAndUuidParametersCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getTheProxyWithResultBlockCompletion:(id)a3
{
  v4 = a3;
  if ([(THClient *)self isConnected])
  {
    v5 = [(THClient *)self xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__THClient_getTheProxyWithResultBlockCompletion___block_invoke;
    v8[3] = &unk_278B6A9C8;
    v9 = v4;
    v6 = [v5 remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    v6 = [(THClient *)self pingXPCService];
  }

  return v6;
}

void __49__THClient_getTheProxyWithResultBlockCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__THClient_getTheProxyWithResultBlockCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getTheProxyWithRecordCompletion:(id)a3
{
  v4 = a3;
  if ([(THClient *)self isConnected])
  {
    v5 = [(THClient *)self xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__THClient_getTheProxyWithRecordCompletion___block_invoke;
    v8[3] = &unk_278B6A9C8;
    v9 = v4;
    v6 = [v5 remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    v6 = [(THClient *)self pingXPCService];
  }

  return v6;
}

void __44__THClient_getTheProxyWithRecordCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __44__THClient_getTheProxyWithRecordCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getTheProxyWithBoolCompletion:(id)a3
{
  v4 = a3;
  if ([(THClient *)self isConnected])
  {
    v5 = [(THClient *)self xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__THClient_getTheProxyWithBoolCompletion___block_invoke;
    v8[3] = &unk_278B6A9C8;
    v9 = v4;
    v6 = [v5 remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    v6 = [(THClient *)self pingXPCService];
  }

  return v6;
}

void __42__THClient_getTheProxyWithBoolCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __42__THClient_getTheProxyWithBoolCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getTheProxyWithPrefEntryCompletion:(id)a3
{
  v4 = a3;
  if ([(THClient *)self isConnected])
  {
    v5 = [(THClient *)self xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__THClient_getTheProxyWithPrefEntryCompletion___block_invoke;
    v8[3] = &unk_278B6A9C8;
    v9 = v4;
    v6 = [v5 remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    v6 = [(THClient *)self pingXPCService];
  }

  return v6;
}

void __47__THClient_getTheProxyWithPrefEntryCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__THClient_getTheProxyWithPrefEntryCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)handleXPCConnectionInterrupted
{
  v3 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AAC8000, v3, OS_LOG_TYPE_INFO, "Handle interrupted XPC Connection", v4, 2u);
  }

  [(THClient *)self setIsConnected:0];
}

- (void)handleXPCConnectionInvalidated
{
  v3 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23AAC8000, v3, OS_LOG_TYPE_INFO, "Handle invalidated XPC Connection", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__THClient_handleXPCConnectionInvalidated__block_invoke;
  v4[3] = &unk_278B6A9F0;
  objc_copyWeak(&v5, buf);
  DispatchXPCConnectionQueueIfNecessaryAndWait(v4, 1);
  [(THClient *)self setIsConnected:0];
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

void __42__THClient_handleXPCConnectionInvalidated__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setXpcConnection:0];
}

- (void)connectToXPCService
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = ThreadNetworkLoggingCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[THClient connectToXPCService]";
    v21 = 1024;
    v22 = 275;
    _os_log_impl(&dword_23AAC8000, v3, OS_LOG_TYPE_DEFAULT, "Client: %s:%d", buf, 0x12u);
  }

  v4 = [(THClient *)self xpcConnection];
  v5 = v4 == 0;

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ThreadNetwork.xpc" options:4096];
    [(THClient *)self setXpcConnection:v6];

    v7 = +[XPCInterface CTCSCreateXPCTransportInterface];
    v8 = [(THClient *)self xpcConnection];
    [v8 setRemoteObjectInterface:v7];

    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __31__THClient_connectToXPCService__block_invoke;
    v16[3] = &unk_278B6A9F0;
    objc_copyWeak(&v17, &location);
    v9 = [(THClient *)self xpcConnection];
    [v9 setInterruptionHandler:v16];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __31__THClient_connectToXPCService__block_invoke_7;
    v14[3] = &unk_278B6A9F0;
    objc_copyWeak(&v15, &location);
    v10 = [(THClient *)self xpcConnection];
    [v10 setInvalidationHandler:v14];

    v11 = [(THClient *)self xpcConnection];
    [v11 resume];

    v12 = ThreadNetworkLoggingCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[THClient connectToXPCService]";
      _os_log_impl(&dword_23AAC8000, v12, OS_LOG_TYPE_INFO, "Client: %s - connectToXPCService Connection resumed", buf, 0xCu);
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __31__THClient_connectToXPCService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = ThreadNetworkLoggingCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __31__THClient_connectToXPCService__block_invoke_cold_1();
    }

    [WeakRetained handleXPCConnectionInterrupted];
  }
}

void __31__THClient_connectToXPCService__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = ThreadNetworkLoggingCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __31__THClient_connectToXPCService__block_invoke_7_cold_1();
    }

    [WeakRetained handleXPCConnectionInvalidated];
  }
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __22__THClient_invalidate__block_invoke;
  v2[3] = &unk_278B6A9F0;
  objc_copyWeak(&v3, &location);
  DispatchXPCConnectionQueueIfNecessaryAndWait(v2, 1);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __22__THClient_invalidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = ThreadNetworkLoggingCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __22__THClient_invalidate__block_invoke_cold_1();
    }

    v3 = [WeakRetained xpcConnection];

    if (v3)
    {
      v4 = [WeakRetained xpcConnection];
      [v4 invalidate];
    }

    [WeakRetained setIsConnected:0];
  }
}

- (id)clientProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(THClient *)self clientProxyWithErrorHandler:v4 pingService:[(THClient *)self isConnected]^ 1];

  return v5;
}

- (id)clientProxyWithErrorHandler:(id)a3 pingService:(BOOL)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  objc_initWeak(&location, self);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy_;
  v16[4] = __Block_byref_object_dispose_;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__THClient_clientProxyWithErrorHandler_pingService___block_invoke;
  v10[3] = &unk_278B6AA60;
  objc_copyWeak(&v14, &location);
  v12 = &v19;
  v13 = v16;
  v7 = v6;
  v15 = a4;
  v10[4] = self;
  v11 = v7;
  DispatchXPCConnectionQueueIfNecessaryAndWait(v10, 1);
  v8 = v20[5];

  objc_destroyWeak(&v14);
  _Block_object_dispose(v16, 8);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v19, 8);

  return v8;
}

void __52__THClient_clientProxyWithErrorHandler_pingService___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained connectToXPCService];
    v4 = [v3 xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__THClient_clientProxyWithErrorHandler_pingService___block_invoke_2;
    v8[3] = &unk_278B6AA18;
    v8[4] = *(a1 + 56);
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v8];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      (*(*(a1 + 40) + 16))();
    }

    if (*(a1 + 72) == 1)
    {
      [*(a1 + 32) pingXPCServiceWithClientProxy:*(*(*(a1 + 48) + 8) + 40) completion:&__block_literal_global_11];
    }
  }
}

void __52__THClient_clientProxyWithErrorHandler_pingService___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_23AAC8000, v4, OS_LOG_TYPE_INFO, "synchronousRemoteObjectProxyWithErrorHandler: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x277D85DE8];
}

void __52__THClient_clientProxyWithErrorHandler_pingService___block_invoke_8(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = @"NO";
    if (a2)
    {
      v4 = @"YES";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_23AAC8000, v3, OS_LOG_TYPE_INFO, "clientProxyWithErrorHandler connected=%@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __40__THClient_synchronousRemoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_23AAC8000, v3, OS_LOG_TYPE_INFO, "synchronousRemoteObjectProxy - %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)synchronousClientProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  objc_initWeak(&location, self);
  if (![(THClient *)self isConnected])
  {
    v5 = [(THClient *)self pingXPCService];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__THClient_synchronousClientProxyWithErrorHandler___block_invoke;
  v9[3] = &unk_278B6AA88;
  objc_copyWeak(&v12, &location);
  v11 = &v14;
  v6 = v4;
  v10 = v6;
  DispatchXPCConnectionQueueIfNecessaryAndWait(v9, 1);
  v7 = v15[5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __51__THClient_synchronousClientProxyWithErrorHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__THClient_synchronousClientProxyWithErrorHandler___block_invoke_2;
    v8[3] = &unk_278B6A9C8;
    v9 = *(a1 + 32);
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v8];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __51__THClient_synchronousClientProxyWithErrorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__THClient_synchronousClientProxyWithErrorHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (id)performXPCRequestBlock:(id)a3 timeout:(double)a4 error:(id *)a5
{
  v43[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = dispatch_semaphore_create(0);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __49__THClient_performXPCRequestBlock_timeout_error___block_invoke;
  v27[3] = &unk_278B6AAB0;
  v27[4] = &v34;
  v27[5] = &v28;
  v27[6] = v8;
  v7[2](v7, v27);
  if (a4 <= 0.0)
  {
    v9 = -1;
  }

  else
  {
    v9 = dispatch_time(0, (a4 * 1000000000.0));
  }

  if (!dispatch_semaphore_wait(v8, v9))
  {
    v15 = 0;
    if (!a5)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v12 = [v10 stringWithFormat:@"XPC method request timed out after %@ seconds", v11];

  v13 = MEMORY[0x277CCA9B8];
  v42 = *MEMORY[0x277CCA450];
  v43[0] = v12;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  v15 = [v13 errorWithDomain:@"com.apple.ThreadNetwork" code:3 userInfo:v14];

  v16 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v15 description];
    *buf = 138412290;
    v41 = v17;
    _os_log_impl(&dword_23AAC8000, v16, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v18 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 138412290;
    v41 = v19;
    _os_log_impl(&dword_23AAC8000, v18, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if (a5)
  {
LABEL_12:
    v20 = v29[5];
    if (v20)
    {
      *a5 = v20;
      v21 = ThreadNetworkLoggingCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [v29[5] description];
        [THClient performXPCRequestBlock:v22 timeout:buf error:v21];
      }
    }

    else if (v15)
    {
      v23 = v15;
      *a5 = v15;
    }
  }

LABEL_17:
  v24 = v35[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

void __49__THClient_performXPCRequestBlock_timeout_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 48));
}

- (BOOL)isConnected
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  threadSafePropertyQueue = self->_threadSafePropertyQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __23__THClient_isConnected__block_invoke;
  v8[3] = &unk_278B6AAD8;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(threadSafePropertyQueue, v8);
  v3 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v10 + 24))
    {
      v4 = @"true";
    }

    else
    {
      v4 = @"false";
    }

    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_23AAC8000, v3, OS_LOG_TYPE_DEFAULT, "XPC Client - isConnected: %@", buf, 0xCu);
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)setIsConnected:(BOOL)a3
{
  threadSafePropertyQueue = self->_threadSafePropertyQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__THClient_setIsConnected___block_invoke;
  v4[3] = &unk_278B6AB00;
  v5 = a3;
  v4[4] = self;
  dispatch_barrier_async(threadSafePropertyQueue, v4);
}

void __27__THClient_setIsConnected___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 8))
  {
    *(v2 + 8) = v1;
    v4 = ThreadNetworkLoggingCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 40))
      {
        v5 = @"true";
      }

      else
      {
        v5 = @"false";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_23AAC8000, v4, OS_LOG_TYPE_DEFAULT, "XPC Client - set connected: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)getConnectionEntitlementValidity:(id)a3
{
  v3 = [(THClient *)self clientProxyWithErrorHandler:&__block_literal_global_39];
  v4 = v3 != 0;

  return v4;
}

void __45__THClient_getConnectionEntitlementValidity___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__THClient_getConnectionEntitlementValidity___block_invoke_cold_1();
  }
}

- (BOOL)getConnectionEntitlementValidity
{
  v2 = [(THClient *)self clientProxyWithErrorHandler:&__block_literal_global_41];
  v3 = v2 != 0;

  return v3;
}

void __44__THClient_getConnectionEntitlementValidity__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__THClient_getConnectionEntitlementValidity__block_invoke_cold_1();
  }
}

- (id)asynchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(THClient *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__THClient_asynchronousRemoteObjectProxyWithErrorHandler___block_invoke;
  v9[3] = &unk_278B6A9C8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __58__THClient_asynchronousRemoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 description];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_23AAC8000, v4, OS_LOG_TYPE_INFO, "Connection failed while trying to get async remote object proxy (%@)\n", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)ctcsDeleteActiveDataSetRecordWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[THClient ctcsDeleteActiveDataSetRecordWithUniqueIdentifier:completion:]";
    v16 = 1024;
    v17 = 530;
    _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v9 = [(THClient *)self getTheProxyWithErrorParameterCompletion:v6];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__THClient_ctcsDeleteActiveDataSetRecordWithUniqueIdentifier_completion___block_invoke;
  v12[3] = &unk_278B6A9C8;
  v13 = v6;
  v10 = v6;
  [v9 ctcsServerDeleteActiveDataSetRecordWithUniqueIdentifier:v7 completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)ctcsRetrieveActiveDataSetRecordWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[THClient ctcsRetrieveActiveDataSetRecordWithUniqueIdentifier:completion:]";
    v16 = 1024;
    v17 = 540;
    _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v9 = [(THClient *)self getTheProxyWithRecordCompletion:v6];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__THClient_ctcsRetrieveActiveDataSetRecordWithUniqueIdentifier_completion___block_invoke;
  v12[3] = &unk_278B6AB50;
  v13 = v6;
  v10 = v6;
  [v9 ctcsServerRetrieveActiveDataSetRecordWithUniqueIdentifier:v7 completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)ctcsRetrievePreferredNetworkInternallyWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[THClient ctcsRetrievePreferredNetworkInternallyWithCompletion:]";
    v13 = 1024;
    v14 = 550;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithRecordCompletion:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__THClient_ctcsRetrievePreferredNetworkInternallyWithCompletion___block_invoke;
  v9[3] = &unk_278B6AB50;
  v10 = v4;
  v7 = v4;
  [v6 ctcsServerRetrievePreferredNetworkInternallyWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)ctcsRetrieveOrGeneratePreferredNetworkInternallyWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[THClient ctcsRetrieveOrGeneratePreferredNetworkInternallyWithCompletion:]";
    v13 = 1024;
    v14 = 560;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithRecordCompletion:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__THClient_ctcsRetrieveOrGeneratePreferredNetworkInternallyWithCompletion___block_invoke;
  v9[3] = &unk_278B6AB50;
  v10 = v4;
  v7 = v4;
  [v6 ctcsServerRetrieveOrGeneratePreferredNetworkInternallyWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)ctcsDeletePreferredNetworkWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[THClient ctcsDeletePreferredNetworkWithCompletion:]";
    v13 = 1024;
    v14 = 571;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithErrorParameterCompletion:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__THClient_ctcsDeletePreferredNetworkWithCompletion___block_invoke;
  v9[3] = &unk_278B6A9C8;
  v10 = v4;
  v7 = v4;
  [v6 ctcsServerDeletePreferredNetworkWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)ctcsCleanPreferredAndFrozenThreadNetworksWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[THClient ctcsCleanPreferredAndFrozenThreadNetworksWithCompletion:]";
    v13 = 1024;
    v14 = 582;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithErrorParameterCompletion:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__THClient_ctcsCleanPreferredAndFrozenThreadNetworksWithCompletion___block_invoke;
  v9[3] = &unk_278B6A9C8;
  v10 = v4;
  v7 = v4;
  [v6 ctcsServerCleanPreferredAndFrozenThreadNetworksWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)ctcsCleanKeychainThreadNetworksWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[THClient ctcsCleanKeychainThreadNetworksWithCompletion:]";
    v13 = 1024;
    v14 = 592;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithErrorParameterCompletion:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__THClient_ctcsCleanKeychainThreadNetworksWithCompletion___block_invoke;
  v9[3] = &unk_278B6A9C8;
  v10 = v4;
  v7 = v4;
  [v6 ctcsServerCleanKeychainThreadNetworksWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)storeCredentialsForBorderAgentInternally:(id)a3 networkName:(id)a4 extendedPANId:(id)a5 activeOperationalDataSet:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v14 || !v13 || !v12 || !v15)
  {
    v17 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    v16[2](v16, v17);
  }

  v18 = [(THClient *)self getTheProxyWithErrorParameterCompletion:v16];
  v19 = [[THThreadNetworkBorderAgent alloc] initWithBaDiscrId:v12];
  v20 = [[THThreadNetwork alloc] initWithName:v13 extendedPANID:v14];
  v21 = [[THThreadNetworkCredentialsDataSet alloc] initWithDataSetArray:v15 userInfo:0];
  v22 = v21;
  if (!v19 || !v20 || !v21)
  {
    v23 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter caused error"];
    v16[2](v16, v23);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __115__THClient_storeCredentialsForBorderAgentInternally_networkName_extendedPANId_activeOperationalDataSet_completion___block_invoke;
  v25[3] = &unk_278B6AB28;
  v26 = v16;
  v24 = v16;
  [v18 ctcsServerStoreThreadNetworkCredentialActiveDataSetInternally:v19 network:v20 credentialsDataSet:v22 waitForSync:0 completion:v25];
}

- (void)retrieveActiveDataSetRecordInternallyForExtendedPANID:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[THClient retrieveActiveDataSetRecordInternallyForExtendedPANID:completion:]";
    v17 = 1024;
    v18 = 633;
    _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  if (!v7)
  {
    v9 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    v6[2](v6, 0, v9);
  }

  v10 = [(THClient *)self getTheProxyWithTHCredsParameterCompletion:v6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__THClient_retrieveActiveDataSetRecordInternallyForExtendedPANID_completion___block_invoke;
  v13[3] = &unk_278B6AB50;
  v14 = v6;
  v11 = v6;
  [v10 ctcsServerRetrieveActiveDataSetRecordInternallyWithXPANId:v7 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __77__THClient_retrieveActiveDataSetRecordInternallyForExtendedPANID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v5 = a3;
  if (v30)
  {
    v27 = a1;
    v28 = v5;
    v6 = [THCredentials alloc];
    v26 = [v30 network];
    v29 = [v26 networkName];
    v25 = [v30 network];
    v21 = [v25 extendedPANID];
    v24 = [v30 borderAgent];
    v19 = [v24 discriminatorId];
    v23 = [v30 credentialsDataSet];
    v18 = [v23 dataSetArray];
    v22 = [v30 credentials];
    v7 = [v22 PSKc];
    v20 = [v30 credentials];
    v8 = [v20 masterKey];
    v9 = [v30 credentials];
    v10 = [v9 channel];
    v11 = [v30 credentials];
    v12 = [v11 PANID];
    v13 = [v30 creationDate];
    v14 = [v30 lastModificationDate];
    LOBYTE(v17) = v10;
    v15 = [(THCredentials *)v6 initThreadCredentials:v29 extendedPANID:v21 borderAgentID:v19 activeOperationalDataSet:v18 PSKC:v7 networkKey:v8 channel:v17 panID:v12 creationDate:v13 lastModificationDate:v14];

    if (v15)
    {
      v5 = v28;
      (*(*(v27 + 32) + 16))();
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v27 + 32) + 16))();

      v5 = v28;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)updatePreferredCredentialsInternally:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[THClient updatePreferredCredentialsInternally:]";
    v13 = 1024;
    v14 = 664;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithBoolCompletion:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__THClient_updatePreferredCredentialsInternally___block_invoke;
  v9[3] = &unk_278B6AB78;
  v10 = v4;
  v7 = v4;
  [v6 ctcsUpdatePreferredNetworkInternallyWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)validateAODInternally:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[THClient validateAODInternally:completion:]";
    v17 = 1024;
    v18 = 675;
    _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  if (!v7)
  {
    v9 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    v6[2](v6, 0, v9);
  }

  v10 = [(THClient *)self getTheProxyWithTHCredsParameterCompletion:v6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__THClient_validateAODInternally_completion___block_invoke;
  v13[3] = &unk_278B6AB50;
  v14 = v6;
  v11 = v6;
  [v10 ctcsValidateAODInternally:v7 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __45__THClient_validateAODInternally_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v5 = a3;
  if (v30)
  {
    v27 = a1;
    v28 = v5;
    v6 = [THCredentials alloc];
    v26 = [v30 network];
    v29 = [v26 networkName];
    v25 = [v30 network];
    v21 = [v25 extendedPANID];
    v24 = [v30 borderAgent];
    v19 = [v24 discriminatorId];
    v23 = [v30 credentialsDataSet];
    v18 = [v23 dataSetArray];
    v22 = [v30 credentials];
    v7 = [v22 PSKc];
    v20 = [v30 credentials];
    v8 = [v20 masterKey];
    v9 = [v30 credentials];
    v10 = [v9 channel];
    v11 = [v30 credentials];
    v12 = [v11 PANID];
    v13 = [v30 creationDate];
    v14 = [v30 lastModificationDate];
    LOBYTE(v17) = v10;
    v15 = [(THCredentials *)v6 initThreadCredentials:v29 extendedPANID:v21 borderAgentID:v19 activeOperationalDataSet:v18 PSKC:v7 networkKey:v8 channel:v17 panID:v12 creationDate:v13 lastModificationDate:v14];

    if (v15)
    {
      v5 = v28;
      (*(*(v27 + 32) + 16))();
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v27 + 32) + 16))();

      v5 = v28;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __129__THClient_retrieveListOfPreferredNetworkEntriesInternally_ipV4NwSignature_ipv6NwSignature_wifiSSID_showCurrentEntry_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v8 = v5;
    v42 = [v8 countByEnumeratingWithState:&v67 objects:v71 count:16];
    if (v42)
    {
      v40 = v7;
      v41 = *v68;
      v37 = v6;
      v38 = v5;
      v36 = a1;
      v39 = v8;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v68 != v41)
          {
            objc_enumerationMutation(v8);
          }

          v10 = *(*(&v67 + 1) + 8 * v9);
          if (!v10)
          {
            v32 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve Preferred Network Entry"];
            (*(*(v36 + 32) + 16))();
            v5 = v38;
LABEL_19:

            v6 = v37;
            goto LABEL_20;
          }

          v57 = v9;
          v11 = [v10 credentialsDataSetRecord];

          if (v11)
          {
            v12 = [THCredentials alloc];
            v58 = [v10 network];
            v64 = [v58 networkName];
            v56 = [v10 network];
            v62 = [v56 extendedPANID];
            v55 = [v10 credentialsDataSetRecord];
            v54 = [v55 borderAgent];
            v60 = [v54 discriminatorId];
            v53 = [v10 credentialsDataSetRecord];
            v52 = [v53 credentialsDataSet];
            v13 = [v52 dataSetArray];
            v51 = [v10 credentialsDataSetRecord];
            v50 = [v51 credentials];
            v45 = [v50 PSKc];
            v49 = [v10 credentialsDataSetRecord];
            v48 = [v49 credentials];
            v43 = [v48 masterKey];
            v47 = [v10 credentialsDataSetRecord];
            v46 = [v47 credentials];
            v14 = [v46 channel];
            v44 = [v10 credentialsDataSetRecord];
            v15 = [v44 credentials];
            v16 = [v15 PANID];
            v17 = [v10 credentialsDataSetRecord];
            v18 = [v17 creationDate];
            v19 = [v10 credentialsDataSetRecord];
            v20 = [v19 lastModificationDate];
            LOBYTE(v35) = v14;
            v66 = [(THCredentials *)v12 initThreadCredentials:v64 extendedPANID:v62 borderAgentID:v60 activeOperationalDataSet:v13 PSKC:v45 networkKey:v43 channel:v35 panID:v16 creationDate:v18 lastModificationDate:v20];
          }

          else
          {
            v66 = 0;
          }

          v59 = [THPreferredNetworkEntry alloc];
          v65 = [v10 network];
          v21 = [v65 networkName];
          v63 = [v10 network];
          v22 = [v63 extendedPANID];
          v61 = [v10 networkSignature];
          v23 = [v61 ipv4NwSignature];
          v24 = [v10 networkSignature];
          v25 = [v24 ipv6NwSignature];
          v26 = [v10 networkSignature];
          v27 = [v26 wifiSSID];
          v28 = [v10 creationDate];
          v29 = [v10 lastModificationDate];
          v30 = [(THPreferredNetworkEntry *)v59 initPrefEntry:v21 extendedPANID:v22 ipv4Signature:v23 ipv6Signature:v25 wifiSSID:v27 creationDate:v28 lastModificationDate:v29 credentialsRecord:v66];

          if (!v30)
          {
            v33 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
            (*(*(v36 + 32) + 16))();

            v5 = v38;
            v8 = v39;
            v7 = v40;
            v32 = v66;
            goto LABEL_19;
          }

          v7 = v40;
          [v40 addObject:v30];

          v9 = v57 + 1;
          v8 = v39;
        }

        while (v42 != v57 + 1);
        v6 = v37;
        v5 = v38;
        a1 = v36;
        v42 = [v39 countByEnumeratingWithState:&v67 objects:v71 count:16];
        if (v42)
        {
          continue;
        }

        break;
      }
    }

    v31 = *(a1 + 32);
    v8 = [MEMORY[0x277CBEB98] setWithArray:v7];
    (*(v31 + 16))(v31, v8, 0);
LABEL_20:
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)deleteCredentialsForBorderAgent:(NSData *)borderAgentID completion:(void *)completion
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = borderAgentID;
  v7 = completion;
  v8 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[THClient deleteCredentialsForBorderAgent:completion:]";
    v15 = 1024;
    v16 = 756;
    _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  if (v6)
  {
    v9 = [(THClient *)self getTheProxyWithErrorParameterCompletion:v7];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__THClient_deleteCredentialsForBorderAgent_completion___block_invoke;
    v11[3] = &unk_278B6A9C8;
    v12 = v7;
    [v9 ctcsServerDeleteActiveDataSetRecordForThreadBorderAgent:v6 completion:v11];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    (*(v7 + 2))(v7, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)storeCredentialsForBorderAgent:(NSData *)borderAgentID activeOperationalDataSet:(NSData *)activeOperationalDataSet completion:(void *)completion
{
  v8 = borderAgentID;
  v9 = activeOperationalDataSet;
  v10 = completion;
  if (!v8 || !v9)
  {
    v11 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    v10[2](v10, v11);
  }

  v12 = [(THClient *)self getTheProxyWithErrorParameterCompletion:v10];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__THClient_storeCredentialsForBorderAgent_activeOperationalDataSet_completion___block_invoke;
  v14[3] = &unk_278B6AB28;
  v15 = v10;
  v13 = v10;
  [v12 ctcsServerStoreThreadNetworkCredentialActiveDataSet:v8 credentialsDataSet:v9 completion:v14];
}

void __79__THClient_storeCredentialsForBorderAgent_activeOperationalDataSet_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __79__THClient_storeCredentialsForBorderAgent_activeOperationalDataSet_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)storeCachedAODasPreferredNetwork:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    v7[2](v7, v8);
  }

  v9 = [(THClient *)self getTheProxyWithErrorParameterCompletion:v7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__THClient_storeCachedAODasPreferredNetwork_completion___block_invoke;
  v11[3] = &unk_278B6AB28;
  v12 = v7;
  v10 = v7;
  [v9 ctcsServerStoreCachedAODasPreferredNetwork:v6 completion:v11];
}

void __56__THClient_storeCachedAODasPreferredNetwork_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __56__THClient_storeCachedAODasPreferredNetwork_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)retrieveAllCredentials:(void *)completion
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = completion;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[THClient retrieveAllCredentials:]";
    v13 = 1024;
    v14 = 806;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithSetOfTHCredsParameterCompletion:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__THClient_retrieveAllCredentials___block_invoke;
  v9[3] = &unk_278B6ABA0;
  v10 = v4;
  v7 = v4;
  [v6 ctcsServerRetrieveAllActiveDataSetRecordsWithActiveFlag:0 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __35__THClient_retrieveAllCredentials___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v7 = v5;
    v30 = [v7 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v30)
    {
      obj = v7;
      v29 = *v44;
      v26 = v6;
      v27 = v5;
      v25 = a1;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v44 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v43 + 1) + 8 * v8);
          if (!v9)
          {
            goto LABEL_14;
          }

          v10 = [THCredentials alloc];
          v40 = [v9 network];
          v42 = [v40 networkName];
          v39 = [v9 network];
          v41 = [v39 extendedPANID];
          v38 = [v9 borderAgent];
          v33 = [v38 discriminatorId];
          v37 = [v9 credentialsDataSet];
          v11 = [v37 dataSetArray];
          v36 = [v9 credentials];
          v12 = [v36 PSKc];
          v34 = [v9 credentials];
          v32 = [v34 masterKey];
          v13 = [v9 credentials];
          v14 = [v13 channel];
          v15 = [v9 credentials];
          [v15 PANID];
          v16 = v35 = v8;
          v17 = [v9 creationDate];
          v18 = [v9 lastModificationDate];
          LOBYTE(v24) = v14;
          v19 = [(THCredentials *)v10 initThreadCredentials:v42 extendedPANID:v41 borderAgentID:v33 activeOperationalDataSet:v11 PSKC:v12 networkKey:v32 channel:v24 panID:v16 creationDate:v17 lastModificationDate:v18];

          if (!v19)
          {
LABEL_14:
            v22 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
            (*(*(v25 + 32) + 16))();

            v6 = v26;
            v5 = v27;
            v21 = obj;
            goto LABEL_15;
          }

          [v31 addObject:v19];

          v8 = v35 + 1;
        }

        while (v30 != v35 + 1);
        v7 = obj;
        v6 = v26;
        v5 = v27;
        a1 = v25;
        v30 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

    v20 = *(a1 + 32);
    v21 = [MEMORY[0x277CBEB98] setWithArray:v31];
    (*(v20 + 16))(v20, v21, 0);
LABEL_15:
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)retrieveCredentialsForBorderAgent:(NSData *)borderAgentID completion:(void *)completion
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = completion;
  v7 = borderAgentID;
  v8 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[THClient retrieveCredentialsForBorderAgent:completion:]";
    v18 = 1024;
    v19 = 845;
    _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v9 = [[THThreadNetworkBorderAgent alloc] initWithBaDiscrId:v7];

  if (!v7 || !v9)
  {
    v10 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    v6[2](v6, 0, v10);
  }

  v11 = [(THClient *)self getTheProxyWithTHCredsParameterCompletion:v6];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__THClient_retrieveCredentialsForBorderAgent_completion___block_invoke;
  v14[3] = &unk_278B6AB50;
  v15 = v6;
  v12 = v6;
  [v11 ctcsServerRetrieveActiveDataSetRecordForThreadBorderAgent:v9 completion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __57__THClient_retrieveCredentialsForBorderAgent_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v5 = a3;
  if (v30)
  {
    v27 = a1;
    v28 = v5;
    v6 = [THCredentials alloc];
    v26 = [v30 network];
    v29 = [v26 networkName];
    v25 = [v30 network];
    v21 = [v25 extendedPANID];
    v24 = [v30 borderAgent];
    v19 = [v24 discriminatorId];
    v23 = [v30 credentialsDataSet];
    v18 = [v23 dataSetArray];
    v22 = [v30 credentials];
    v7 = [v22 PSKc];
    v20 = [v30 credentials];
    v8 = [v20 masterKey];
    v9 = [v30 credentials];
    v10 = [v9 channel];
    v11 = [v30 credentials];
    v12 = [v11 PANID];
    v13 = [v30 creationDate];
    v14 = [v30 lastModificationDate];
    LOBYTE(v17) = v10;
    v15 = [(THCredentials *)v6 initThreadCredentials:v29 extendedPANID:v21 borderAgentID:v19 activeOperationalDataSet:v18 PSKC:v7 networkKey:v8 channel:v17 panID:v12 creationDate:v13 lastModificationDate:v14];

    if (v15)
    {
      v5 = v28;
      (*(*(v27 + 32) + 16))();
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v27 + 32) + 16))();

      v5 = v28;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)retrievePreferredCredentials:(void *)completion
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = completion;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[THClient retrievePreferredCredentials:]";
    v13 = 1024;
    v14 = 880;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithTHCredsParameterCompletion:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__THClient_retrievePreferredCredentials___block_invoke;
  v9[3] = &unk_278B6AB50;
  v10 = v4;
  v7 = v4;
  [v6 ctcsServerRetrievePreferredNetworkWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __41__THClient_retrievePreferredCredentials___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v5 = a3;
  if (v30)
  {
    v27 = a1;
    v28 = v5;
    v6 = [THCredentials alloc];
    v26 = [v30 network];
    v29 = [v26 networkName];
    v25 = [v30 network];
    v21 = [v25 extendedPANID];
    v24 = [v30 borderAgent];
    v19 = [v24 discriminatorId];
    v23 = [v30 credentialsDataSet];
    v18 = [v23 dataSetArray];
    v22 = [v30 credentials];
    v7 = [v22 PSKc];
    v20 = [v30 credentials];
    v8 = [v20 masterKey];
    v9 = [v30 credentials];
    v10 = [v9 channel];
    v11 = [v30 credentials];
    v12 = [v11 PANID];
    v13 = [v30 creationDate];
    v14 = [v30 lastModificationDate];
    LOBYTE(v17) = v10;
    v15 = [(THCredentials *)v6 initThreadCredentials:v29 extendedPANID:v21 borderAgentID:v19 activeOperationalDataSet:v18 PSKC:v7 networkKey:v8 channel:v17 panID:v12 creationDate:v13 lastModificationDate:v14];

    if (v15)
    {
      v5 = v28;
      (*(*(v27 + 32) + 16))();
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v27 + 32) + 16))();

      v5 = v28;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)retrieveCredentialsForExtendedPANID:(NSData *)extendedPANID completion:(void *)completion
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = completion;
  v7 = extendedPANID;
  v8 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[THClient retrieveCredentialsForExtendedPANID:completion:]";
    v17 = 1024;
    v18 = 904;
    _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  if (!v7)
  {
    v9 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    v6[2](v6, 0, v9);
  }

  v10 = [(THClient *)self getTheProxyWithTHCredsParameterCompletion:v6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__THClient_retrieveCredentialsForExtendedPANID_completion___block_invoke;
  v13[3] = &unk_278B6AB50;
  v14 = v6;
  v11 = v6;
  [v10 ctcsServerRetrieveActiveDataSetRecordWithXPANId:v7 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __59__THClient_retrieveCredentialsForExtendedPANID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v5 = a3;
  if (v30)
  {
    v27 = a1;
    v28 = v5;
    v6 = [THCredentials alloc];
    v26 = [v30 network];
    v29 = [v26 networkName];
    v25 = [v30 network];
    v21 = [v25 extendedPANID];
    v24 = [v30 borderAgent];
    v19 = [v24 discriminatorId];
    v23 = [v30 credentialsDataSet];
    v18 = [v23 dataSetArray];
    v22 = [v30 credentials];
    v7 = [v22 PSKc];
    v20 = [v30 credentials];
    v8 = [v20 masterKey];
    v9 = [v30 credentials];
    v10 = [v9 channel];
    v11 = [v30 credentials];
    v12 = [v11 PANID];
    v13 = [v30 creationDate];
    v14 = [v30 lastModificationDate];
    LOBYTE(v17) = v10;
    v15 = [(THCredentials *)v6 initThreadCredentials:v29 extendedPANID:v21 borderAgentID:v19 activeOperationalDataSet:v18 PSKC:v7 networkKey:v8 channel:v17 panID:v12 creationDate:v13 lastModificationDate:v14];

    if (v15)
    {
      v5 = v28;
      (*(*(v27 + 32) + 16))();
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v27 + 32) + 16))();

      v5 = v28;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)retrievePreferredNetworkInternallyOnMdnsAndSig:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[THClient retrievePreferredNetworkInternallyOnMdnsAndSig:]";
    v13 = 1024;
    v14 = 934;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithTHCredsAndUuidParametersCompletion:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__THClient_retrievePreferredNetworkInternallyOnMdnsAndSig___block_invoke;
  v9[3] = &unk_278B6AB50;
  v10 = v4;
  v7 = v4;
  [v6 ctcsServerRetrievePreferredNetworkInternallyOnMdnsAndSigWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __59__THClient_retrievePreferredNetworkInternallyOnMdnsAndSig___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = a3;
  if (v33)
  {
    v30 = a1;
    v31 = v5;
    v6 = [THCredentials alloc];
    v29 = [v33 network];
    v32 = [v29 networkName];
    v28 = [v33 network];
    v7 = [v28 extendedPANID];
    v27 = [v33 borderAgent];
    v8 = [v27 discriminatorId];
    v26 = [v33 credentialsDataSet];
    v23 = [v26 dataSetArray];
    v25 = [v33 credentials];
    v21 = [v25 PSKc];
    v24 = [v33 credentials];
    v9 = [v24 masterKey];
    v10 = [v33 credentials];
    v11 = [v10 channel];
    v12 = [v33 credentials];
    v13 = [v12 PANID];
    v14 = [v33 creationDate];
    v15 = [v33 lastModificationDate];
    LOBYTE(v20) = v11;
    v22 = [(THCredentials *)v6 initThreadCredentials:v32 extendedPANID:v7 borderAgentID:v8 activeOperationalDataSet:v23 PSKC:v21 networkKey:v9 channel:v20 panID:v13 creationDate:v14 lastModificationDate:v15];

    if (v22)
    {
      v16 = *(v30 + 32);
      v17 = [v33 uniqueIdentifier];
      v18 = *(v16 + 16);
      v19 = v16;
      v5 = v31;
      v18(v19, v22, v17, v31);
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v30 + 32) + 16))();
      v5 = v31;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)retrieveOrGeneratePreferredNetworkInternally:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[THClient retrieveOrGeneratePreferredNetworkInternally:]";
    v13 = 1024;
    v14 = 958;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithTHCredsAndUuidParametersCompletion:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__THClient_retrieveOrGeneratePreferredNetworkInternally___block_invoke;
  v9[3] = &unk_278B6AB50;
  v10 = v4;
  v7 = v4;
  [v6 ctcsServerRetrieveOrGeneratePreferredNetworkInternallyWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __57__THClient_retrieveOrGeneratePreferredNetworkInternally___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = a3;
  if (v33)
  {
    v30 = a1;
    v31 = v5;
    v6 = [THCredentials alloc];
    v29 = [v33 network];
    v32 = [v29 networkName];
    v28 = [v33 network];
    v7 = [v28 extendedPANID];
    v27 = [v33 borderAgent];
    v8 = [v27 discriminatorId];
    v26 = [v33 credentialsDataSet];
    v23 = [v26 dataSetArray];
    v25 = [v33 credentials];
    v21 = [v25 PSKc];
    v24 = [v33 credentials];
    v9 = [v24 masterKey];
    v10 = [v33 credentials];
    v11 = [v10 channel];
    v12 = [v33 credentials];
    v13 = [v12 PANID];
    v14 = [v33 creationDate];
    v15 = [v33 lastModificationDate];
    LOBYTE(v20) = v11;
    v22 = [(THCredentials *)v6 initThreadCredentials:v32 extendedPANID:v7 borderAgentID:v8 activeOperationalDataSet:v23 PSKC:v21 networkKey:v9 channel:v20 panID:v13 creationDate:v14 lastModificationDate:v15];

    if (v22)
    {
      v16 = *(v30 + 32);
      v17 = [v33 uniqueIdentifier];
      v18 = *(v16 + 16);
      v19 = v16;
      v5 = v31;
      v18(v19, v22, v17, v31);
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v30 + 32) + 16))();
      v5 = v31;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)retrievePreferredCredentialsInternally:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[THClient retrievePreferredCredentialsInternally:]";
    v13 = 1024;
    v14 = 982;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithTHCredsAndUuidParametersCompletion:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__THClient_retrievePreferredCredentialsInternally___block_invoke;
  v9[3] = &unk_278B6AB50;
  v10 = v4;
  v7 = v4;
  [v6 ctcsServerRetrievePreferredNetworkInternallyWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __51__THClient_retrievePreferredCredentialsInternally___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = a3;
  if (v33)
  {
    v30 = a1;
    v31 = v5;
    v6 = [THCredentials alloc];
    v29 = [v33 network];
    v32 = [v29 networkName];
    v28 = [v33 network];
    v7 = [v28 extendedPANID];
    v27 = [v33 borderAgent];
    v8 = [v27 discriminatorId];
    v26 = [v33 credentialsDataSet];
    v23 = [v26 dataSetArray];
    v25 = [v33 credentials];
    v21 = [v25 PSKc];
    v24 = [v33 credentials];
    v9 = [v24 masterKey];
    v10 = [v33 credentials];
    v11 = [v10 channel];
    v12 = [v33 credentials];
    v13 = [v12 PANID];
    v14 = [v33 creationDate];
    v15 = [v33 lastModificationDate];
    LOBYTE(v20) = v11;
    v22 = [(THCredentials *)v6 initThreadCredentials:v32 extendedPANID:v7 borderAgentID:v8 activeOperationalDataSet:v23 PSKC:v21 networkKey:v9 channel:v20 panID:v13 creationDate:v14 lastModificationDate:v15];

    if (v22)
    {
      v16 = *(v30 + 32);
      v17 = [v33 uniqueIdentifier];
      v18 = *(v16 + 16);
      v19 = v16;
      v5 = v31;
      v18(v19, v22, v17, v31);
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v30 + 32) + 16))();
      v5 = v31;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)retrieveCredentialsForUUID:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[THClient retrieveCredentialsForUUID:completion:]";
    v17 = 1024;
    v18 = 1006;
    _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  if (!v7)
  {
    v9 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    v6[2](v6, 0, v9);
  }

  v10 = [(THClient *)self getTheProxyWithTHCredsParameterCompletion:v6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__THClient_retrieveCredentialsForUUID_completion___block_invoke;
  v13[3] = &unk_278B6AB50;
  v14 = v6;
  v11 = v6;
  [v10 ctcsServerRetrieveActiveDataSetRecordWithUniqueIdentifier:v7 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __50__THClient_retrieveCredentialsForUUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v5 = a3;
  if (v30)
  {
    v27 = a1;
    v28 = v5;
    v6 = [THCredentials alloc];
    v26 = [v30 network];
    v29 = [v26 networkName];
    v25 = [v30 network];
    v21 = [v25 extendedPANID];
    v24 = [v30 borderAgent];
    v19 = [v24 discriminatorId];
    v23 = [v30 credentialsDataSet];
    v18 = [v23 dataSetArray];
    v22 = [v30 credentials];
    v7 = [v22 PSKc];
    v20 = [v30 credentials];
    v8 = [v20 masterKey];
    v9 = [v30 credentials];
    v10 = [v9 channel];
    v11 = [v30 credentials];
    v12 = [v11 PANID];
    v13 = [v30 creationDate];
    v14 = [v30 lastModificationDate];
    LOBYTE(v17) = v10;
    v15 = [(THCredentials *)v6 initThreadCredentials:v29 extendedPANID:v21 borderAgentID:v19 activeOperationalDataSet:v18 PSKC:v7 networkKey:v8 channel:v17 panID:v12 creationDate:v13 lastModificationDate:v14];

    if (v15)
    {
      v5 = v28;
      (*(*(v27 + 32) + 16))();
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v27 + 32) + 16))();

      v5 = v28;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)checkPreferredNetworkForActiveOperationalDataset:(NSData *)activeOperationalDataSet completion:(void *)completion
{
  v6 = activeOperationalDataSet;
  v7 = completion;
  if (v6)
  {
    v8 = [(THClient *)self getTheProxyWithBoolCompletion:v7];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__THClient_checkPreferredNetworkForActiveOperationalDataset_completion___block_invoke;
    v10[3] = &unk_278B6AB78;
    v11 = v7;
    [v8 ctcsIsPreferredNetworkForActiveOperationalDataset:v6 completion:v10];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    v9 = ThreadNetworkLoggingCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [THClient checkPreferredNetworkForActiveOperationalDataset:completion:];
    }

    (*(v7 + 2))(v7, 0);
  }
}

uint64_t __72__THClient_checkPreferredNetworkForActiveOperationalDataset_completion___block_invoke(uint64_t a1)
{
  v2 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __72__THClient_checkPreferredNetworkForActiveOperationalDataset_completion___block_invoke_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)ctcsAddPreferredNetworkWithCompletionInternally:(id)a3 extendedPANId:(id)a4 borderAgentID:(id)a5 ipV4NwSignature:(id)a6 ipv6NwSignature:(id)a7 wifiSSID:(id)a8 wifiPassword:(id)a9 completion:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  if (v16 && v17)
  {
    v24 = [(THClient *)self getTheProxyWithErrorParameterCompletion:v23];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __153__THClient_ctcsAddPreferredNetworkWithCompletionInternally_extendedPANId_borderAgentID_ipV4NwSignature_ipv6NwSignature_wifiSSID_wifiPassword_completion___block_invoke;
    v26[3] = &unk_278B6A9C8;
    v27 = v23;
    [v24 ctcsServerAddPreferredNetworkWithCompletionInternally:v16 extendedPANId:v17 borderAgentID:v18 ipV4NwSignature:v19 ipv6NwSignature:v20 wifiSSID:v21 wifiPassword:v22 completion:v26];
  }

  else
  {
    v24 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    v25 = ThreadNetworkLoggingCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [THClient ctcsAddPreferredNetworkWithCompletionInternally:extendedPANId:borderAgentID:ipV4NwSignature:ipv6NwSignature:wifiSSID:wifiPassword:completion:];
    }

    (*(v23 + 2))(v23, v24);
  }
}

void __153__THClient_ctcsAddPreferredNetworkWithCompletionInternally_extendedPANId_borderAgentID_ipV4NwSignature_ipv6NwSignature_wifiSSID_wifiPassword_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __153__THClient_ctcsAddPreferredNetworkWithCompletionInternally_extendedPANId_borderAgentID_ipV4NwSignature_ipv6NwSignature_wifiSSID_wifiPassword_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)ctcsDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion:(id)a3 extendedPANId:(id)a4 ipV4NwSignature:(id)a5 ipv6NwSignature:(id)a6 wifiSSID:(id)a7 completion:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(THClient *)self getTheProxyWithErrorParameterCompletion:v14];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __148__THClient_ctcsDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion_extendedPANId_ipV4NwSignature_ipv6NwSignature_wifiSSID_completion___block_invoke;
  v22[3] = &unk_278B6A9C8;
  v23 = v14;
  v21 = v14;
  [v20 ctcsServerDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion:v19 extendedPANId:v18 ipV4NwSignature:v17 ipv6NwSignature:v16 wifiSSID:v15 completion:v22];
}

void __148__THClient_ctcsDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion_extendedPANId_ipV4NwSignature_ipv6NwSignature_wifiSSID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __148__THClient_ctcsDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion_extendedPANId_ipV4NwSignature_ipv6NwSignature_wifiSSID_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)retrieveAllActiveCredentials:(void *)completion
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = completion;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[THClient retrieveAllActiveCredentials:]";
    v13 = 1024;
    v14 = 1090;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithSetOfTHCredsParameterCompletion:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__THClient_retrieveAllActiveCredentials___block_invoke;
  v9[3] = &unk_278B6ABA0;
  v10 = v4;
  v7 = v4;
  [v6 ctcsServerRetrieveAllActiveDataSetRecordsWithActiveFlag:1 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __41__THClient_retrieveAllActiveCredentials___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v7 = v5;
    v30 = [v7 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v30)
    {
      obj = v7;
      v29 = *v44;
      v26 = v6;
      v27 = v5;
      v25 = a1;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v44 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v43 + 1) + 8 * v8);
          if (!v9)
          {
            goto LABEL_14;
          }

          v10 = [THCredentials alloc];
          v40 = [v9 network];
          v42 = [v40 networkName];
          v39 = [v9 network];
          v41 = [v39 extendedPANID];
          v38 = [v9 borderAgent];
          v33 = [v38 discriminatorId];
          v37 = [v9 credentialsDataSet];
          v11 = [v37 dataSetArray];
          v36 = [v9 credentials];
          v12 = [v36 PSKc];
          v34 = [v9 credentials];
          v32 = [v34 masterKey];
          v13 = [v9 credentials];
          v14 = [v13 channel];
          v15 = [v9 credentials];
          [v15 PANID];
          v16 = v35 = v8;
          v17 = [v9 creationDate];
          v18 = [v9 lastModificationDate];
          LOBYTE(v24) = v14;
          v19 = [(THCredentials *)v10 initThreadCredentials:v42 extendedPANID:v41 borderAgentID:v33 activeOperationalDataSet:v11 PSKC:v12 networkKey:v32 channel:v24 panID:v16 creationDate:v17 lastModificationDate:v18];

          if (!v19)
          {
LABEL_14:
            v22 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
            (*(*(v25 + 32) + 16))();

            v6 = v26;
            v5 = v27;
            v21 = obj;
            goto LABEL_15;
          }

          [v31 addObject:v19];

          v8 = v35 + 1;
        }

        while (v30 != v35 + 1);
        v7 = obj;
        v6 = v26;
        v5 = v27;
        a1 = v25;
        v30 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

    v20 = *(a1 + 32);
    v21 = [MEMORY[0x277CBEB98] setWithArray:v31];
    (*(v20 + 16))(v20, v21, 0);
LABEL_15:
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)isPreferredNetworkAvailableWithCompletion:(void *)completion
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = completion;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[THClient isPreferredNetworkAvailableWithCompletion:]";
    v13 = 1024;
    v14 = 1129;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithBoolCompletion:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__THClient_isPreferredNetworkAvailableWithCompletion___block_invoke;
  v9[3] = &unk_278B6AB78;
  v10 = v4;
  v7 = v4;
  [v6 ctcsServerRetrieveIsPreferredNetworkAvailable:v9];

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __54__THClient_isPreferredNetworkAvailableWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[THClient isPreferredNetworkAvailableWithCompletion:]_block_invoke";
    v9 = 1024;
    v10 = 1134;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_23AAC8000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d: - Response: isPreferredAvailable : %d", &v7, 0x18u);
  }

  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)retrievePreferredNetworkWithNoScan:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[THClient retrievePreferredNetworkWithNoScan:]";
    v13 = 1024;
    v14 = 1141;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithTHCredsAndUuidParametersCompletion:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__THClient_retrievePreferredNetworkWithNoScan___block_invoke;
  v9[3] = &unk_278B6AB50;
  v10 = v4;
  v7 = v4;
  [v6 ctcsServerRetrievePreferredNetworkWithNoScanWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __47__THClient_retrievePreferredNetworkWithNoScan___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = a3;
  if (v33)
  {
    v30 = a1;
    v31 = v5;
    v6 = [THCredentials alloc];
    v29 = [v33 network];
    v32 = [v29 networkName];
    v28 = [v33 network];
    v7 = [v28 extendedPANID];
    v27 = [v33 borderAgent];
    v8 = [v27 discriminatorId];
    v26 = [v33 credentialsDataSet];
    v23 = [v26 dataSetArray];
    v25 = [v33 credentials];
    v21 = [v25 PSKc];
    v24 = [v33 credentials];
    v9 = [v24 masterKey];
    v10 = [v33 credentials];
    v11 = [v10 channel];
    v12 = [v33 credentials];
    v13 = [v12 PANID];
    v14 = [v33 creationDate];
    v15 = [v33 lastModificationDate];
    LOBYTE(v20) = v11;
    v22 = [(THCredentials *)v6 initThreadCredentials:v32 extendedPANID:v7 borderAgentID:v8 activeOperationalDataSet:v23 PSKC:v21 networkKey:v9 channel:v20 panID:v13 creationDate:v14 lastModificationDate:v15];

    if (v22)
    {
      v16 = *(v30 + 32);
      v17 = [v33 uniqueIdentifier];
      v18 = *(v16 + 16);
      v19 = v16;
      v5 = v31;
      v18(v19, v22, v17, v31);
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v30 + 32) + 16))();
      v5 = v31;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithKeychainAccessGroup:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__THClient_getTheProxyWithErrorParameterCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__THClient_getTheProxyWithTHCredsParameterCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__THClient_getTheProxyWithSetOfTHCredsParameterCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__THClient_getTheProxyWithTHCredsAndUuidParametersCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__THClient_getTheProxyWithResultBlockCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __44__THClient_getTheProxyWithRecordCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __42__THClient_getTheProxyWithBoolCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __47__THClient_getTheProxyWithPrefEntryCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __31__THClient_connectToXPCService__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __31__THClient_connectToXPCService__block_invoke_7_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__THClient_synchronousClientProxyWithErrorHandler___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)performXPCRequestBlock:(void *)a1 timeout:(uint8_t *)buf error:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_23AAC8000, log, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
}

void __45__THClient_getConnectionEntitlementValidity___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __44__THClient_getConnectionEntitlementValidity__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __79__THClient_storeCredentialsForBorderAgent_activeOperationalDataSet_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__THClient_storeCachedAODasPreferredNetwork_completion___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315906;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_23AAC8000, v2, OS_LOG_TYPE_ERROR, "%s:%d: - Response: recordUniqueIdentifier %@ error %@", v4, 0x26u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)checkPreferredNetworkForActiveOperationalDataset:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __72__THClient_checkPreferredNetworkForActiveOperationalDataset_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)ctcsAddPreferredNetworkWithCompletionInternally:extendedPANId:borderAgentID:ipV4NwSignature:ipv6NwSignature:wifiSSID:wifiPassword:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __153__THClient_ctcsAddPreferredNetworkWithCompletionInternally_extendedPANId_borderAgentID_ipV4NwSignature_ipv6NwSignature_wifiSSID_wifiPassword_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __148__THClient_ctcsDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion_extendedPANId_ipV4NwSignature_ipv6NwSignature_wifiSSID_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

@end