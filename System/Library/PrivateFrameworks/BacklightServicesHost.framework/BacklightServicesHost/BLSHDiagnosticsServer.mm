@interface BLSHDiagnosticsServer
+ (BLSHDiagnosticsServer)serverWithFlipbookDiagnosticsProvider:(id)provider;
+ (id)domainSpecification;
- (BLSHDiagnosticsServer)initWithFlipbookDiagnosticsProvider:(id)provider;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation BLSHDiagnosticsServer

+ (BLSHDiagnosticsServer)serverWithFlipbookDiagnosticsProvider:(id)provider
{
  providerCopy = provider;
  v4 = [[BLSHDiagnosticsServer alloc] initWithFlipbookDiagnosticsProvider:providerCopy];
  v5 = bls_diagnostics_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[BLSHDiagnosticsServer serverWithFlipbookDiagnosticsProvider:];
  }

  return v4;
}

+ (id)domainSpecification
{
  if (domainSpecification_onceToken_1 != -1)
  {
    +[BLSHDiagnosticsServer domainSpecification];
  }

  v3 = domainSpecification_domain_1;

  return v3;
}

void __44__BLSHDiagnosticsServer_domainSpecification__block_invoke()
{
  v0 = [MEMORY[0x277CF32D0] bootstrapConfiguration];
  v1 = [MEMORY[0x277CF08F0] identifier];
  v2 = [v0 domainsContainingServiceIdentifier:v1];

  v3 = [v2 anyObject];
  v4 = domainSpecification_domain_1;
  domainSpecification_domain_1 = v3;

  v5 = [MEMORY[0x277CF3288] defaultShellMachName];
  v6 = [v0 domainForMachName:v5];

  if (v6)
  {
    v7 = v6 == domainSpecification_domain_1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = bls_diagnostics_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __44__BLSHDiagnosticsServer_domainSpecification__block_invoke_cold_1();
    }
  }
}

- (BLSHDiagnosticsServer)initWithFlipbookDiagnosticsProvider:(id)provider
{
  providerCopy = provider;
  v27.receiver = self;
  v27.super_class = BLSHDiagnosticsServer;
  v6 = [(BLSHDiagnosticsServer *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_flipbookDiagnosticsProvider, provider);
    v8 = +[BLSHDiagnosticsServer domainSpecification];
    if (v8)
    {
      v9 = bls_diagnostics_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(BLSHDiagnosticsServer *)v7 initWithFlipbookDiagnosticsProvider:v8, v9];
      }

      serviceQuality = [MEMORY[0x277CF08F0] serviceQuality];
      serial = [MEMORY[0x277CF0C18] serial];
      v12 = [serial serviceClass:objc_msgSend(serviceQuality relativePriority:{"serviceClass"), objc_msgSend(serviceQuality, "relativePriority")}];
      v13 = BSDispatchQueueCreate();
      callbackQueue = v7->_callbackQueue;
      v7->_callbackQueue = v13;

      v15 = MEMORY[0x277CF32A0];
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __61__BLSHDiagnosticsServer_initWithFlipbookDiagnosticsProvider___block_invoke;
      v24 = &unk_27841EB68;
      v25 = v8;
      v16 = v7;
      v26 = v16;
      v17 = [v15 listenerWithConfigurator:&v21];
      v18 = v16[2];
      v16[2] = v17;

      v19 = bls_diagnostics_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [(BLSHDiagnosticsServer *)v16 initWithFlipbookDiagnosticsProvider:?];
      }

      [v16[2] activate];
    }
  }

  return v7;
}

void __61__BLSHDiagnosticsServer_initWithFlipbookDiagnosticsProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setDomain:v5];

  v6 = [MEMORY[0x277CF08F0] identifier];
  [v4 setService:v6];

  v8 = *(a1 + 40);
  v7 = (a1 + 40);
  [v4 setDelegate:v8];

  v9 = bls_diagnostics_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __61__BLSHDiagnosticsServer_initWithFlipbookDiagnosticsProvider___block_invoke_cold_1(v7, v9);
  }
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __67__BLSHDiagnosticsServer_listener_didReceiveConnection_withContext___block_invoke;
  v12 = &unk_27841EBB8;
  selfCopy = self;
  v7 = connectionCopy;
  v14 = v7;
  [v7 configureConnection:&v9];
  [v7 activate];
  v8 = bls_diagnostics_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [BLSHDiagnosticsServer listener:didReceiveConnection:withContext:];
  }
}

void __67__BLSHDiagnosticsServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v4 = (a1 + 32);
  v17 = [[BLSHDiagnosticsHostPeer alloc] initWithFlipbookDiagnosticsProvider:*(*(a1 + 32) + 8) peer:*(a1 + 40)];
  v5 = [MEMORY[0x277CF08F0] serviceQuality];
  [v3 setServiceQuality:v5];

  [v3 setTargetQueue:*(*(a1 + 32) + 24)];
  v6 = [MEMORY[0x277CF08F0] interface];
  [v3 setInterface:v6];

  [v3 setInterfaceTarget:v13[5]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__BLSHDiagnosticsServer_listener_didReceiveConnection_withContext___block_invoke_8;
  v9[3] = &unk_27841EB90;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v11 = &v12;
  v10 = v7;
  [v3 setInvalidationHandler:v9];
  v8 = bls_diagnostics_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __67__BLSHDiagnosticsServer_listener_didReceiveConnection_withContext___block_invoke_cold_1(v4);
  }

  _Block_object_dispose(&v12, 8);
}

uint64_t __67__BLSHDiagnosticsServer_listener_didReceiveConnection_withContext___block_invoke_8(uint64_t a1)
{
  v2 = bls_diagnostics_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __67__BLSHDiagnosticsServer_listener_didReceiveConnection_withContext___block_invoke_8_cold_1(a1, v2);
  }

  [*(*(*(a1 + 48) + 8) + 40) invalidate];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  return [*(a1 + 40) invalidate];
}

+ (void)serverWithFlipbookDiagnosticsProvider:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_4(&dword_21FD11000, v0, v1, "did startServer:%{public}@ withFlipbookDiagnosticsProvider:%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __44__BLSHDiagnosticsServer_domainSpecification__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_fault_impl(&dword_21FD11000, v1, OS_LOG_TYPE_FAULT, "if we own the defaultShellMachName:%{public}@ then BacklightServices.diagnostics must be registered there not:%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithFlipbookDiagnosticsProvider:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 identifier];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_debug_impl(&dword_21FD11000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ init with diagnostics domain:%{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithFlipbookDiagnosticsProvider:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4(&dword_21FD11000, v3, v4, "%p diagnostics init with listener:%{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

void __61__BLSHDiagnosticsServer_initWithFlipbookDiagnosticsProvider___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "%p did config diagnostics server", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)listener:didReceiveConnection:withContext:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_4(&dword_21FD11000, v0, v1, "%p did activate diagnostics peer:%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __67__BLSHDiagnosticsServer_listener_didReceiveConnection_withContext___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 134218242;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_4(&dword_21FD11000, v1, v2, "%p did configure diagnostics connection:%{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __67__BLSHDiagnosticsServer_listener_didReceiveConnection_withContext___block_invoke_8_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v5 = 134218242;
  v6 = v2;
  v7 = 2114;
  v8 = v3;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "%p did invalidate diagnostics connection for interfaceTarget:%{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end