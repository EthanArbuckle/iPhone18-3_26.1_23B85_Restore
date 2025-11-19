@interface BLSHXPCAssertionServiceHostServer
+ (id)domainSpecification;
+ (id)serverWithLocalAssertionService:(id)a3;
- (BLSHXPCAssertionServiceHostServer)initWithLocalAssertionService:(id)a3;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation BLSHXPCAssertionServiceHostServer

+ (id)serverWithLocalAssertionService:(id)a3
{
  v3 = a3;
  v4 = [[BLSHXPCAssertionServiceHostServer alloc] initWithLocalAssertionService:v3];
  v5 = bls_assertions_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[BLSHXPCAssertionServiceHostServer serverWithLocalAssertionService:];
  }

  return v4;
}

+ (id)domainSpecification
{
  if (domainSpecification_onceToken_0 != -1)
  {
    +[BLSHXPCAssertionServiceHostServer domainSpecification];
  }

  v3 = domainSpecification_domain_0;

  return v3;
}

void __56__BLSHXPCAssertionServiceHostServer_domainSpecification__block_invoke()
{
  v0 = [MEMORY[0x277CF32D0] bootstrapConfiguration];
  v1 = [MEMORY[0x277CF09F8] identifier];
  v2 = [v0 domainsContainingServiceIdentifier:v1];

  v3 = [v2 anyObject];
  v4 = domainSpecification_domain_0;
  domainSpecification_domain_0 = v3;

  v5 = [MEMORY[0x277CF3288] defaultShellMachName];
  v6 = [v0 domainForMachName:v5];

  if (v6)
  {
    v7 = v6 == domainSpecification_domain_0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = bls_assertions_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __56__BLSHXPCAssertionServiceHostServer_domainSpecification__block_invoke_cold_1();
    }
  }
}

- (BLSHXPCAssertionServiceHostServer)initWithLocalAssertionService:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = BLSHXPCAssertionServiceHostServer;
  v6 = [(BLSHXPCAssertionServiceHostServer *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localAssertionService, a3);
    v8 = +[BLSHXPCAssertionServiceHostServer domainSpecification];
    v9 = bls_assertions_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(BLSHXPCBacklightProxyHostServer *)v7 initWithLocalBacklightProxy:v8, v9];
    }

    v10 = [MEMORY[0x277CF09F8] serviceQuality];
    v11 = [MEMORY[0x277CF0C18] serial];
    v12 = [v11 serviceClass:objc_msgSend(v10 relativePriority:{"serviceClass"), objc_msgSend(v10, "relativePriority")}];
    v13 = BSDispatchQueueCreate();
    callbackQueue = v7->_callbackQueue;
    v7->_callbackQueue = v13;

    v15 = MEMORY[0x277CF32A0];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __67__BLSHXPCAssertionServiceHostServer_initWithLocalAssertionService___block_invoke;
    v25 = &unk_27841EB68;
    v16 = v8;
    v26 = v16;
    v17 = v7;
    v27 = v17;
    v18 = [v15 listenerWithConfigurator:&v22];
    v19 = v17[2];
    v17[2] = v18;

    v20 = bls_assertions_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [(BLSHXPCBacklightProxyHostServer *)v17 initWithLocalBacklightProxy:?];
    }

    [v17[2] activate];
  }

  return v7;
}

void __67__BLSHXPCAssertionServiceHostServer_initWithLocalAssertionService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setDomain:v5];

  v6 = [MEMORY[0x277CF09F8] identifier];
  [v4 setService:v6];

  v8 = *(a1 + 40);
  v7 = (a1 + 40);
  [v4 setDelegate:v8];

  v9 = bls_assertions_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __63__BLSHXPCBacklightProxyHostServer_initWithLocalBacklightProxy___block_invoke_cold_1(v7, v9);
  }
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v6 = a4;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __79__BLSHXPCAssertionServiceHostServer_listener_didReceiveConnection_withContext___block_invoke;
  v12 = &unk_27841EBB8;
  v13 = self;
  v7 = v6;
  v14 = v7;
  [v7 configureConnection:&v9];
  [v7 activate];
  v8 = bls_assertions_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [BLSHXPCBacklightProxyHostServer listener:didReceiveConnection:withContext:];
  }
}

void __79__BLSHXPCAssertionServiceHostServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v4 = (a1 + 32);
  v17 = [[BLSHXPCAssertionServiceHost alloc] initWithLocalService:*(*(a1 + 32) + 8) peer:*(a1 + 40)];
  v5 = [MEMORY[0x277CF09F8] serviceQuality];
  [v3 setServiceQuality:v5];

  [v3 setTargetQueue:*(*(a1 + 32) + 24)];
  v6 = [MEMORY[0x277CF09F8] interface];
  [v3 setInterface:v6];

  [v3 setInterfaceTarget:v13[5]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__BLSHXPCAssertionServiceHostServer_listener_didReceiveConnection_withContext___block_invoke_8;
  v9[3] = &unk_27841EB90;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v11 = &v12;
  v10 = v7;
  [v3 setInvalidationHandler:v9];
  v8 = bls_assertions_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __77__BLSHXPCBacklightProxyHostServer_listener_didReceiveConnection_withContext___block_invoke_cold_1(v4);
  }

  _Block_object_dispose(&v12, 8);
}

uint64_t __79__BLSHXPCAssertionServiceHostServer_listener_didReceiveConnection_withContext___block_invoke_8(uint64_t a1)
{
  v2 = bls_assertions_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __77__BLSHXPCBacklightProxyHostServer_listener_didReceiveConnection_withContext___block_invoke_8_cold_1(a1, v2);
  }

  [*(*(*(a1 + 48) + 8) + 40) invalidate];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  return [*(a1 + 40) invalidate];
}

+ (void)serverWithLocalAssertionService:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_4(&dword_21FD11000, v0, v1, "did startServer:%{public}@ withLocalAssertionService:%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __56__BLSHXPCAssertionServiceHostServer_domainSpecification__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_fault_impl(&dword_21FD11000, v1, OS_LOG_TYPE_FAULT, "if we own the defaultShellMachName:%{public}@ then BacklightServices.assertions must be registered there not:%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end