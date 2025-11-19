@interface ASTRepairSessionProvider
- (ASTRepairDelegateProtocol)delegate;
- (ASTRepairProtocol)receiver;
- (ASTRepairSessionProvider)initWithServiceName:(id)a3 entitlements:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)cancelSuite;
- (void)completeTestSuite:(id)a3 description:(id)a4;
- (void)dealloc;
- (void)endWithCompletionHandler:(id)a3;
- (void)establishConnectionWithCompletionHandler:(id)a3;
- (void)estimatedTimeRemainingForTest:(id)a3 completion:(id)a4;
- (void)ping:(id)a3;
- (void)progressForTest:(id)a3 completion:(id)a4;
- (void)requestAsset:(id)a3 withCompletion:(id)a4;
- (void)requestSuiteResult:(id)a3 withCompletion:(id)a4;
- (void)requestSuiteStart:(id)a3 withCompletionHandler:(id)a4;
- (void)requestSuitesAvailableWithCompletionHandler:(id)a3;
- (void)sendTestResult:(id)a3 withCompletion:(id)a4;
- (void)setClientConnection:(id)a3;
- (void)setListenerConnection:(id)a3;
- (void)showInstructionalPrompt:(id)a3 withConfirmation:(id)a4;
- (void)startListening;
- (void)startTest:(id)a3 parameters:(id)a4;
- (void)startWithCompletionHandler:(id)a3;
- (void)updateTestSuiteImage:(id)a3;
- (void)updateTestSuiteProgress:(id)a3;
@end

@implementation ASTRepairSessionProvider

- (ASTRepairSessionProvider)initWithServiceName:(id)a3 entitlements:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ASTRepairSessionProvider;
  v8 = [(ASTRepairSessionProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ASTRepairSessionProvider *)v8 setServiceName:v6];
    [(ASTRepairSessionProvider *)v9 setEntitlements:v7];
  }

  return v9;
}

- (void)setClientConnection:(id)a3
{
  objc_storeStrong(&self->_clientConnection, a3);
  v5 = a3;
  [(ASTRepairSessionProvider *)self setReceiver:v5];
}

- (void)setListenerConnection:(id)a3
{
  objc_storeStrong(&self->_listenerConnection, a3);
  v5 = a3;
  [(ASTRepairSessionProvider *)self setDelegate:v5];
}

- (void)establishConnectionWithCompletionHandler:(id)a3
{
  v50[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ASTRepairSessionProvider establishConnectionWithCompletionHandler:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &buf, 0xCu);
  }

  v6 = objc_alloc(MEMORY[0x277CCAE80]);
  v7 = [(ASTRepairSessionProvider *)self serviceName];
  v8 = [v6 initWithMachServiceName:v7 options:4096];

  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2852DB150];
  v10 = MEMORY[0x277CBEB98];
  v50[0] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
  v12 = [v10 setWithArray:v11];
  [v9 setClasses:v12 forSelector:sel_requestSuiteStart_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v13 = MEMORY[0x277CBEB98];
  v49[0] = objc_opt_class();
  v49[1] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
  v15 = [v13 setWithArray:v14];
  [v9 setClasses:v15 forSelector:sel_requestSuitesAvailableWithCompletionHandler_ argumentIndex:0 ofReply:1];

  [v8 setRemoteObjectInterface:v9];
  v16 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2852DC8B8];
  [v8 setExportedInterface:v16];
  [v8 setExportedObject:self];
  [v8 activate];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = 0;
  objc_initWeak(&location, self);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __69__ASTRepairSessionProvider_establishConnectionWithCompletionHandler___block_invoke;
  v41[3] = &unk_278CBD250;
  v41[4] = &buf;
  objc_copyWeak(&v42, &location);
  v17 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v41];
  v18 = *(*(&buf + 1) + 40);
  if (v17)
  {
    if (!v18)
    {
      v19 = ASTLogHandleForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&dword_240F3C000, v19, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] Establishing connection...", v35, 2u);
      }

      v20 = dispatch_queue_create("com.apple.Diagnostics.ServiceAliveCheckQueue", MEMORY[0x277D85CD8]);
      serviceCheckQueue = self->_serviceCheckQueue;
      self->_serviceCheckQueue = v20;

      *v35 = 0;
      v36 = v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy_;
      v39 = __Block_byref_object_dispose_;
      v40 = dispatch_semaphore_create(0);
      v22 = self->_serviceCheckQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__ASTRepairSessionProvider_establishConnectionWithCompletionHandler___block_invoke_56;
      block[3] = &unk_278CBD2A0;
      v23 = v17;
      v33 = v23;
      v34 = v35;
      dispatch_async(v22, block);
      v24 = *(v36 + 5);
      v25 = dispatch_time(0, 2000000000);
      if (dispatch_semaphore_wait(v24, v25))
      {
        v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-6000 userInfo:0];
        v4[2](v4, v26);
      }

      else
      {
        v29 = ASTLogHandleForCategory(0);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v31[0] = 0;
          _os_log_impl(&dword_240F3C000, v29, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] Connection established!", v31, 2u);
        }

        [(ASTRepairSessionProvider *)self setConnection:v8];
        [(ASTRepairSessionProvider *)self setClientConnection:v23];
        v4[2](v4, 0);
      }

      _Block_object_dispose(v35, 8);
      goto LABEL_18;
    }

LABEL_10:
    (v4[2])(v4);
    goto LABEL_18;
  }

  if (v18)
  {
    goto LABEL_10;
  }

  v27 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 0;
    _os_log_impl(&dword_240F3C000, v27, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] Unknown error while creating connection..", v35, 2u);
  }

  v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-1 userInfo:0];
  v4[2](v4, v28);

LABEL_18:
  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);

  v30 = *MEMORY[0x277D85DE8];
}

void __69__ASTRepairSessionProvider_establishConnectionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 setConnection:0];
  }
}

uint64_t __69__ASTRepairSessionProvider_establishConnectionWithCompletionHandler___block_invoke_56(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__ASTRepairSessionProvider_establishConnectionWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_278CBD278;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 ping:v3];
}

- (void)startWithCompletionHandler:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASTRepairSessionProvider startWithCompletionHandler:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v8, 0xCu);
  }

  v6 = [(ASTRepairSessionProvider *)self receiver];
  [v6 startWithCompletionHandler:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)endWithCompletionHandler:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASTRepairSessionProvider endWithCompletionHandler:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v8, 0xCu);
  }

  v6 = [(ASTRepairSessionProvider *)self receiver];
  [v6 endWithCompletionHandler:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)requestSuitesAvailableWithCompletionHandler:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASTRepairSessionProvider requestSuitesAvailableWithCompletionHandler:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v8, 0xCu);
  }

  v6 = [(ASTRepairSessionProvider *)self receiver];
  [v6 requestSuitesAvailableWithCompletionHandler:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)requestSuiteStart:(id)a3 withCompletionHandler:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider requestSuiteStart:withCompletionHandler:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  v9 = [(ASTRepairSessionProvider *)self receiver];
  [v9 requestSuiteStart:v7 withCompletionHandler:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendTestResult:(id)a3 withCompletion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider sendTestResult:withCompletion:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  v9 = [(ASTRepairSessionProvider *)self receiver];
  [v9 sendTestResult:v7 withCompletion:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requestSuiteResult:(id)a3 withCompletion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider requestSuiteResult:withCompletion:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  v9 = [(ASTRepairSessionProvider *)self receiver];
  [v9 requestSuiteResult:v7 withCompletion:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requestAsset:(id)a3 withCompletion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider requestAsset:withCompletion:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  v9 = [(ASTRepairSessionProvider *)self receiver];
  [v9 requestAsset:v7 withCompletion:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)ping:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASTRepairSessionProvider ping:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v8, 0xCu);
  }

  v6 = [(ASTRepairSessionProvider *)self receiver];
  [v6 ping:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)startListening
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[ASTRepairSessionProvider startListening]";
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v10, 0xCu);
  }

  v4 = objc_alloc(MEMORY[0x277CCAE98]);
  v5 = [(ASTRepairSessionProvider *)self serviceName];
  v6 = [v4 initWithMachServiceName:v5];
  [(ASTRepairSessionProvider *)self setListener:v6];

  v7 = [(ASTRepairSessionProvider *)self listener];
  [v7 setDelegate:self];

  v8 = [(ASTRepairSessionProvider *)self listener];
  [v8 resume];

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v6 = a4;
  v7 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[ASTRepairSessionProvider listener:shouldAcceptNewConnection:]";
    _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", buf, 0xCu);
  }

  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(ASTRepairSessionProvider *)self serviceName];
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] New connection %@ requested for %@", buf, 0x16u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [(ASTRepairSessionProvider *)self entitlements];
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v11)
  {
    v12 = *v30;
    v13 = 1;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v6 valueForEntitlement:{*(*(&v29 + 1) + 8 * i), v25}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 BOOLValue];
        }

        else
        {
          v16 = 0;
        }

        v13 &= v16;
      }

      v11 = [v10 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v11);

    if ((v13 & 1) == 0)
    {
      v17 = ASTLogHandleForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_240F3C000, v17, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] Failed entitlements check, invalidating connection", buf, 2u);
      }

      [v6 invalidate];
      v18 = 0;
      goto LABEL_27;
    }
  }

  else
  {
  }

  v19 = [MEMORY[0x277CCAE90] interfaceWithProtocol:{&unk_2852DB150, v25}];
  [v6 setExportedObject:self];
  [v6 setExportedInterface:v19];
  v20 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2852DC8B8];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  objc_initWeak(&location, v6);
  [v6 setRemoteObjectInterface:v20];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __63__ASTRepairSessionProvider_listener_shouldAcceptNewConnection___block_invoke;
  v26[3] = &unk_278CBD250;
  v26[4] = buf;
  objc_copyWeak(&v27, &location);
  v21 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v26];
  if (v21 && !*(*&buf[8] + 40))
  {
    [(ASTRepairSessionProvider *)self setListenerConnection:v21];
    [v6 resume];
    v22 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 138412290;
      v34 = v6;
      _os_log_impl(&dword_240F3C000, v22, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] Connection %@ established with remote runner service", v33, 0xCu);
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);

LABEL_27:
  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

void __63__ASTRepairSessionProvider_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v6 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_loadWeakRetained((a1 + 40));
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_240F3C000, v6, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] Connection %@ broke with error %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancelSuite
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ASTRepairSessionProvider cancelSuite]";
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v6, 0xCu);
  }

  v4 = [(ASTRepairSessionProvider *)self delegate];
  [v4 cancelSuite];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)completeTestSuite:(id)a3 description:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider completeTestSuite:description:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  v9 = [(ASTRepairSessionProvider *)self delegate];
  [v9 completeTestSuite:v7 description:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)estimatedTimeRemainingForTest:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider estimatedTimeRemainingForTest:completion:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  v9 = [(ASTRepairSessionProvider *)self delegate];
  [v9 estimatedTimeRemainingForTest:v7 completion:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)progressForTest:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider progressForTest:completion:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  v9 = [(ASTRepairSessionProvider *)self delegate];
  [v9 progressForTest:v7 completion:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)startTest:(id)a3 parameters:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider startTest:parameters:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  v9 = [(ASTRepairSessionProvider *)self delegate];
  [v9 startTest:v7 parameters:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateTestSuiteImage:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASTRepairSessionProvider updateTestSuiteImage:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v8, 0xCu);
  }

  v6 = [(ASTRepairSessionProvider *)self delegate];
  [v6 updateTestSuiteImage:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateTestSuiteProgress:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASTRepairSessionProvider updateTestSuiteProgress:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v8, 0xCu);
  }

  v6 = [(ASTRepairSessionProvider *)self delegate];
  [v6 updateTestSuiteProgress:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)showInstructionalPrompt:(id)a3 withConfirmation:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider showInstructionalPrompt:withConfirmation:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  v9 = [(ASTRepairSessionProvider *)self delegate];
  [v9 showInstructionalPrompt:v7 withConfirmation:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [(ASTRepairSessionProvider *)self connection];

  if (v3)
  {
    v4 = [(ASTRepairSessionProvider *)self connection];
    [v4 suspend];

    v5 = [(ASTRepairSessionProvider *)self connection];
    [v5 invalidate];

    [(ASTRepairSessionProvider *)self setConnection:0];
  }

  v6.receiver = self;
  v6.super_class = ASTRepairSessionProvider;
  [(ASTRepairSessionProvider *)&v6 dealloc];
}

- (ASTRepairProtocol)receiver
{
  WeakRetained = objc_loadWeakRetained(&self->_receiver);

  return WeakRetained;
}

- (ASTRepairDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end