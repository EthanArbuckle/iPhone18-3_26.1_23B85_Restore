@interface ASTRepairSessionProvider
- (ASTRepairDelegateProtocol)delegate;
- (ASTRepairProtocol)receiver;
- (ASTRepairSessionProvider)initWithServiceName:(id)name entitlements:(id)entitlements;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)cancelSuite;
- (void)completeTestSuite:(id)suite description:(id)description;
- (void)dealloc;
- (void)endWithCompletionHandler:(id)handler;
- (void)establishConnectionWithCompletionHandler:(id)handler;
- (void)estimatedTimeRemainingForTest:(id)test completion:(id)completion;
- (void)ping:(id)ping;
- (void)progressForTest:(id)test completion:(id)completion;
- (void)requestAsset:(id)asset withCompletion:(id)completion;
- (void)requestSuiteResult:(id)result withCompletion:(id)completion;
- (void)requestSuiteStart:(id)start withCompletionHandler:(id)handler;
- (void)requestSuitesAvailableWithCompletionHandler:(id)handler;
- (void)sendTestResult:(id)result withCompletion:(id)completion;
- (void)setClientConnection:(id)connection;
- (void)setListenerConnection:(id)connection;
- (void)showInstructionalPrompt:(id)prompt withConfirmation:(id)confirmation;
- (void)startListening;
- (void)startTest:(id)test parameters:(id)parameters;
- (void)startWithCompletionHandler:(id)handler;
- (void)updateTestSuiteImage:(id)image;
- (void)updateTestSuiteProgress:(id)progress;
@end

@implementation ASTRepairSessionProvider

- (ASTRepairSessionProvider)initWithServiceName:(id)name entitlements:(id)entitlements
{
  nameCopy = name;
  entitlementsCopy = entitlements;
  v11.receiver = self;
  v11.super_class = ASTRepairSessionProvider;
  v8 = [(ASTRepairSessionProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ASTRepairSessionProvider *)v8 setServiceName:nameCopy];
    [(ASTRepairSessionProvider *)v9 setEntitlements:entitlementsCopy];
  }

  return v9;
}

- (void)setClientConnection:(id)connection
{
  objc_storeStrong(&self->_clientConnection, connection);
  connectionCopy = connection;
  [(ASTRepairSessionProvider *)self setReceiver:connectionCopy];
}

- (void)setListenerConnection:(id)connection
{
  objc_storeStrong(&self->_listenerConnection, connection);
  connectionCopy = connection;
  [(ASTRepairSessionProvider *)self setDelegate:connectionCopy];
}

- (void)establishConnectionWithCompletionHandler:(id)handler
{
  v50[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ASTRepairSessionProvider establishConnectionWithCompletionHandler:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &buf, 0xCu);
  }

  v6 = objc_alloc(MEMORY[0x277CCAE80]);
  serviceName = [(ASTRepairSessionProvider *)self serviceName];
  v8 = [v6 initWithMachServiceName:serviceName options:4096];

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
        handlerCopy[2](handlerCopy, v26);
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
        handlerCopy[2](handlerCopy, 0);
      }

      _Block_object_dispose(v35, 8);
      goto LABEL_18;
    }

LABEL_10:
    (handlerCopy[2])(handlerCopy);
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
  handlerCopy[2](handlerCopy, v28);

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

- (void)startWithCompletionHandler:(id)handler
{
  v10 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASTRepairSessionProvider startWithCompletionHandler:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v8, 0xCu);
  }

  receiver = [(ASTRepairSessionProvider *)self receiver];
  [receiver startWithCompletionHandler:handlerCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)endWithCompletionHandler:(id)handler
{
  v10 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASTRepairSessionProvider endWithCompletionHandler:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v8, 0xCu);
  }

  receiver = [(ASTRepairSessionProvider *)self receiver];
  [receiver endWithCompletionHandler:handlerCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)requestSuitesAvailableWithCompletionHandler:(id)handler
{
  v10 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASTRepairSessionProvider requestSuitesAvailableWithCompletionHandler:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v8, 0xCu);
  }

  receiver = [(ASTRepairSessionProvider *)self receiver];
  [receiver requestSuitesAvailableWithCompletionHandler:handlerCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)requestSuiteStart:(id)start withCompletionHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  startCopy = start;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider requestSuiteStart:withCompletionHandler:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  receiver = [(ASTRepairSessionProvider *)self receiver];
  [receiver requestSuiteStart:startCopy withCompletionHandler:handlerCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendTestResult:(id)result withCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  resultCopy = result;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider sendTestResult:withCompletion:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  receiver = [(ASTRepairSessionProvider *)self receiver];
  [receiver sendTestResult:resultCopy withCompletion:completionCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requestSuiteResult:(id)result withCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  resultCopy = result;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider requestSuiteResult:withCompletion:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  receiver = [(ASTRepairSessionProvider *)self receiver];
  [receiver requestSuiteResult:resultCopy withCompletion:completionCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requestAsset:(id)asset withCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  assetCopy = asset;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider requestAsset:withCompletion:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  receiver = [(ASTRepairSessionProvider *)self receiver];
  [receiver requestAsset:assetCopy withCompletion:completionCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)ping:(id)ping
{
  v10 = *MEMORY[0x277D85DE8];
  pingCopy = ping;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASTRepairSessionProvider ping:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v8, 0xCu);
  }

  receiver = [(ASTRepairSessionProvider *)self receiver];
  [receiver ping:pingCopy];

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
  serviceName = [(ASTRepairSessionProvider *)self serviceName];
  v6 = [v4 initWithMachServiceName:serviceName];
  [(ASTRepairSessionProvider *)self setListener:v6];

  listener = [(ASTRepairSessionProvider *)self listener];
  [listener setDelegate:self];

  listener2 = [(ASTRepairSessionProvider *)self listener];
  [listener2 resume];

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v40 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
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
    serviceName = [(ASTRepairSessionProvider *)self serviceName];
    *buf = 138412546;
    *&buf[4] = connectionCopy;
    *&buf[12] = 2112;
    *&buf[14] = serviceName;
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] New connection %@ requested for %@", buf, 0x16u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  entitlements = [(ASTRepairSessionProvider *)self entitlements];
  v11 = [entitlements countByEnumeratingWithState:&v29 objects:v39 count:16];
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
          objc_enumerationMutation(entitlements);
        }

        v15 = [connectionCopy valueForEntitlement:{*(*(&v29 + 1) + 8 * i), listenerCopy}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bOOLValue = [v15 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        v13 &= bOOLValue;
      }

      v11 = [entitlements countByEnumeratingWithState:&v29 objects:v39 count:16];
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

      [connectionCopy invalidate];
      v18 = 0;
      goto LABEL_27;
    }
  }

  else
  {
  }

  v19 = [MEMORY[0x277CCAE90] interfaceWithProtocol:{&unk_2852DB150, listenerCopy}];
  [connectionCopy setExportedObject:self];
  [connectionCopy setExportedInterface:v19];
  v20 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2852DC8B8];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  objc_initWeak(&location, connectionCopy);
  [connectionCopy setRemoteObjectInterface:v20];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __63__ASTRepairSessionProvider_listener_shouldAcceptNewConnection___block_invoke;
  v26[3] = &unk_278CBD250;
  v26[4] = buf;
  objc_copyWeak(&v27, &location);
  v21 = [connectionCopy synchronousRemoteObjectProxyWithErrorHandler:v26];
  if (v21 && !*(*&buf[8] + 40))
  {
    [(ASTRepairSessionProvider *)self setListenerConnection:v21];
    [connectionCopy resume];
    v22 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 138412290;
      v34 = connectionCopy;
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

  delegate = [(ASTRepairSessionProvider *)self delegate];
  [delegate cancelSuite];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)completeTestSuite:(id)suite description:(id)description
{
  v13 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  suiteCopy = suite;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider completeTestSuite:description:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  delegate = [(ASTRepairSessionProvider *)self delegate];
  [delegate completeTestSuite:suiteCopy description:descriptionCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)estimatedTimeRemainingForTest:(id)test completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  testCopy = test;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider estimatedTimeRemainingForTest:completion:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  delegate = [(ASTRepairSessionProvider *)self delegate];
  [delegate estimatedTimeRemainingForTest:testCopy completion:completionCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)progressForTest:(id)test completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  testCopy = test;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider progressForTest:completion:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  delegate = [(ASTRepairSessionProvider *)self delegate];
  [delegate progressForTest:testCopy completion:completionCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)startTest:(id)test parameters:(id)parameters
{
  v13 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  testCopy = test;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider startTest:parameters:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  delegate = [(ASTRepairSessionProvider *)self delegate];
  [delegate startTest:testCopy parameters:parametersCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateTestSuiteImage:(id)image
{
  v10 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASTRepairSessionProvider updateTestSuiteImage:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v8, 0xCu);
  }

  delegate = [(ASTRepairSessionProvider *)self delegate];
  [delegate updateTestSuiteImage:imageCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateTestSuiteProgress:(id)progress
{
  v10 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASTRepairSessionProvider updateTestSuiteProgress:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v8, 0xCu);
  }

  delegate = [(ASTRepairSessionProvider *)self delegate];
  [delegate updateTestSuiteProgress:progressCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)showInstructionalPrompt:(id)prompt withConfirmation:(id)confirmation
{
  v13 = *MEMORY[0x277D85DE8];
  confirmationCopy = confirmation;
  promptCopy = prompt;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASTRepairSessionProvider showInstructionalPrompt:withConfirmation:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTSessionRepairProvider] %s", &v11, 0xCu);
  }

  delegate = [(ASTRepairSessionProvider *)self delegate];
  [delegate showInstructionalPrompt:promptCopy withConfirmation:confirmationCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  connection = [(ASTRepairSessionProvider *)self connection];

  if (connection)
  {
    connection2 = [(ASTRepairSessionProvider *)self connection];
    [connection2 suspend];

    connection3 = [(ASTRepairSessionProvider *)self connection];
    [connection3 invalidate];

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