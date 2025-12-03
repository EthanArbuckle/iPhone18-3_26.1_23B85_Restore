@interface AMSDaemonConnection
- (AMSDaemonConnection)init;
- (id)_connectionProxyWithAccessBlock:(id)block;
- (id)_serviceInterfaceForSelector:(SEL)selector;
- (id)accountCachedServerDataService;
- (id)accountManagementServiceProxy;
- (id)accountManagementServiceProxySyncWithError:(id *)error;
- (id)accountPostSignInServiceProxy;
- (id)accountSignOutServiceProxy;
- (id)autoBugCaptureServiceProxy;
- (id)autoBugCaptureServiceProxySyncWithError:(id *)error;
- (id)callService:(id)service then:(id)then;
- (id)cookieServiceProxy;
- (id)cookieServiceProxySyncWithError:(id *)error;
- (id)deviceMessengerProxyWithDelegate:(id)delegate;
- (id)dismissQRDialogServiceProxy;
- (id)fraudReportServiceProxy;
- (id)keychainServiceProxy;
- (id)onDeviceDataServiceProxy;
- (id)paymentConfirmationProxy;
- (id)paymentValidationServiceProxy;
- (id)purchaseServiceProxy;
- (id)pushNotificationService;
- (id)securityServiceProxyWithDelegate:(id)delegate;
- (void)_connectionSyncProxyWithAccessBlock:(id)block;
- (void)_errorForwardingProxyForServiceProxy:(id)proxy proxyReplyError:(id)error interface:(id)interface proxyPromise:(id)promise;
- (void)_handleInterruption;
- (void)_handleInvalidation;
- (void)_initializeConnection;
- (void)addInterruptionHandler:(id)handler;
- (void)attemptResumeIfRequired;
- (void)dealloc;
@end

@implementation AMSDaemonConnection

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v5 = v9;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: deallocated", buf, 0xCu);
  }

  [(NSXPCConnection *)self->_sharedConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_sharedConnection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_sharedConnection invalidate];
  sharedConnection = self->_sharedConnection;
  self->_sharedConnection = 0;

  v7.receiver = self;
  v7.super_class = AMSDaemonConnection;
  [(AMSDaemonConnection *)&v7 dealloc];
}

- (AMSDaemonConnection)init
{
  v9.receiver = self;
  v9.super_class = AMSDaemonConnection;
  v2 = [(AMSDaemonConnection *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.serviceQueue", @"com.apple.xpc.amsaccountsd"];
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    interruptionHandlers = v2->_interruptionHandlers;
    v2->_interruptionHandlers = v4;

    v6 = dispatch_queue_create([v3 cStringUsingEncoding:4], 0);
    sharedConnectionAccessQueue = v2->_sharedConnectionAccessQueue;
    v2->_sharedConnectionAccessQueue = v6;

    [(AMSDaemonConnection *)v2 _initializeConnection];
  }

  return v2;
}

- (void)_initializeConnection
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = AMSSetLogKeyIfNeeded();
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = objc_opt_class();
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Initializing XPC connection", buf, 0x16u);
  }

  v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.xpc.amsaccountsd" options:0];
  sharedConnectionAccessQueue = [(AMSDaemonConnection *)self sharedConnectionAccessQueue];
  [(NSXPCConnection *)v6 _setQueue:sharedConnectionAccessQueue];

  objc_initWeak(buf, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __44__AMSDaemonConnection__initializeConnection__block_invoke;
  v19[3] = &unk_1E73B4328;
  objc_copyWeak(&v21, buf);
  v8 = v3;
  v20 = v8;
  [(NSXPCConnection *)v6 setInvalidationHandler:v19];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __44__AMSDaemonConnection__initializeConnection__block_invoke_2;
  v16 = &unk_1E73B4328;
  objc_copyWeak(&v18, buf);
  v9 = v8;
  v17 = v9;
  [(NSXPCConnection *)v6 setInterruptionHandler:&v13];
  v10 = [AMSDaemonConnectionInterface interface:v13];
  [(NSXPCConnection *)v6 setRemoteObjectInterface:v10];

  [(NSXPCConnection *)v6 resume];
  sharedConnection = self->_sharedConnection;
  self->_sharedConnection = v6;
  v12 = v6;

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

void __53__AMSDaemonConnection_accountCachedServerDataService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__AMSDaemonConnection_accountCachedServerDataService__block_invoke_2;
  v7[3] = &unk_1E73B63C8;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 getAccountCachedServerDataServiceProxyWithReplyHandler:v7];
}

- (void)attemptResumeIfRequired
{
  v12 = *MEMORY[0x1E69E9840];
  sharedConnection = [(AMSDaemonConnection *)self sharedConnection];

  if (!sharedConnection)
  {
    v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Reconnecting XPC connection", &v8, 0x16u);
    }

    [(AMSDaemonConnection *)self _initializeConnection];
  }
}

- (id)accountCachedServerDataService
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__AMSDaemonConnection_accountCachedServerDataService__block_invoke;
  v4[3] = &unk_1E73B63F0;
  v4[4] = self;
  v2 = [(AMSDaemonConnection *)self _connectionProxyWithAccessBlock:v4];

  return v2;
}

void __53__AMSDaemonConnection_accountCachedServerDataService__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _serviceInterfaceForSelector:sel_getAccountCachedServerDataServiceProxyWithReplyHandler_];
  [v5 _errorForwardingProxyForServiceProxy:v7 proxyReplyError:v6 interface:v8 proxyPromise:*(a1 + 40)];
}

- (void)addInterruptionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    sharedConnectionAccessQueue = [(AMSDaemonConnection *)self sharedConnectionAccessQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__AMSDaemonConnection_addInterruptionHandler___block_invoke;
    v6[3] = &unk_1E73B36D0;
    v6[4] = self;
    v7 = handlerCopy;
    dispatch_sync(sharedConnectionAccessQueue, v6);
  }
}

void __46__AMSDaemonConnection_addInterruptionHandler___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) interruptionHandlers];
  v2 = [*(a1 + 40) copy];
  [v3 addObject:v2];
}

- (id)callService:(id)service then:(id)then
{
  thenCopy = then;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__AMSDaemonConnection_callService_then___block_invoke;
  v9[3] = &unk_1E73B63A0;
  v10 = thenCopy;
  v6 = thenCopy;
  v7 = [service thenWithBlock:v9];

  return v7;
}

id __40__AMSDaemonConnection_callService_then___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 32) + 16))();
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__21;
  v8[4] = __Block_byref_object_dispose__21;
  v5 = v3;
  v9 = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__AMSDaemonConnection_callService_then___block_invoke_26;
  v7[3] = &unk_1E73B4030;
  v7[4] = v8;
  [v4 addFinishBlock:v7];
  _Block_object_dispose(v8, 8);

  return v4;
}

void __40__AMSDaemonConnection_callService_then___block_invoke_26(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (id)accountManagementServiceProxy
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__AMSDaemonConnection_accountManagementServiceProxy__block_invoke;
  v4[3] = &unk_1E73B63F0;
  v4[4] = self;
  v2 = [(AMSDaemonConnection *)self _connectionProxyWithAccessBlock:v4];

  return v2;
}

void __52__AMSDaemonConnection_accountManagementServiceProxy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__AMSDaemonConnection_accountManagementServiceProxy__block_invoke_2;
  v7[3] = &unk_1E73B6418;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 getAccountManagementServiceProxyWithReplyHandler:v7];
}

void __52__AMSDaemonConnection_accountManagementServiceProxy__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _serviceInterfaceForSelector:sel_getAccountManagementServiceProxyWithReplyHandler_];
  [v5 _errorForwardingProxyForServiceProxy:v7 proxyReplyError:v6 interface:v8 proxyPromise:*(a1 + 40)];
}

- (id)accountManagementServiceProxySyncWithError:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__21;
  v22 = __Block_byref_object_dispose__21;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__21;
  v16 = __Block_byref_object_dispose__21;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__AMSDaemonConnection_accountManagementServiceProxySyncWithError___block_invoke;
  v11[3] = &unk_1E73B6468;
  v11[4] = self;
  v11[5] = &v18;
  v11[6] = &v12;
  [(AMSDaemonConnection *)self _connectionSyncProxyWithAccessBlock:v11];
  if (v19[5])
  {
    v4 = +[AMSLogConfig sharedConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      v8 = AMSLogableError(v19[5]);
      *buf = 138543874;
      v25 = v6;
      v26 = 2114;
      v27 = v7;
      v28 = 2114;
      v29 = v8;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error connecting sync proxy. error = %{public}@", buf, 0x20u);
    }

    v9 = 0;
    if (error)
    {
      *error = v19[5];
    }
  }

  else
  {
    v9 = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v9;
}

void __66__AMSDaemonConnection_accountManagementServiceProxySyncWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__AMSDaemonConnection_accountManagementServiceProxySyncWithError___block_invoke_36;
    v12[3] = &unk_1E73B6440;
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    [a2 getAccountManagementServiceProxyWithReplyHandler:v12];
  }

  else
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSLogableError(v6);
      *buf = 138543874;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@]Failed to get sync remote object proxy. error = %{public}@", buf, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

void __66__AMSDaemonConnection_accountManagementServiceProxySyncWithError___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) _serviceInterfaceForSelector:sel_getAccountManagementServiceProxyWithReplyHandler_];
    v8 = [[AMSDaemonConnectionErrorForwardingProxy alloc] initWithProxy:v5 fromInterface:v7 isSync:1];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v15 = AMSLogableError(v6);
      v16 = 138543874;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@]Failed to get account management interface with proxy. error = %{public}@", &v16, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (id)accountPostSignInServiceProxy
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__AMSDaemonConnection_accountPostSignInServiceProxy__block_invoke;
  v4[3] = &unk_1E73B63F0;
  v4[4] = self;
  v2 = [(AMSDaemonConnection *)self _connectionProxyWithAccessBlock:v4];

  return v2;
}

void __52__AMSDaemonConnection_accountPostSignInServiceProxy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__AMSDaemonConnection_accountPostSignInServiceProxy__block_invoke_2;
  v7[3] = &unk_1E73B6490;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 getAccountPostSignInServiceProxyWithReplyHandler:v7];
}

void __52__AMSDaemonConnection_accountPostSignInServiceProxy__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _serviceInterfaceForSelector:sel_getAccountPostSignInServiceProxyWithReplyHandler_];
  [v5 _errorForwardingProxyForServiceProxy:v7 proxyReplyError:v6 interface:v8 proxyPromise:*(a1 + 40)];
}

- (id)accountSignOutServiceProxy
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__AMSDaemonConnection_accountSignOutServiceProxy__block_invoke;
  v4[3] = &unk_1E73B63F0;
  v4[4] = self;
  v2 = [(AMSDaemonConnection *)self _connectionProxyWithAccessBlock:v4];

  return v2;
}

void __49__AMSDaemonConnection_accountSignOutServiceProxy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__AMSDaemonConnection_accountSignOutServiceProxy__block_invoke_2;
  v7[3] = &unk_1E73B64B8;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 getAccountSignOutServiceProxyWithReplyHandler:v7];
}

void __49__AMSDaemonConnection_accountSignOutServiceProxy__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _serviceInterfaceForSelector:sel_getAccountSignOutServiceProxyWithReplyHandler_];
  [v5 _errorForwardingProxyForServiceProxy:v7 proxyReplyError:v6 interface:v8 proxyPromise:*(a1 + 40)];
}

- (id)autoBugCaptureServiceProxy
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__AMSDaemonConnection_autoBugCaptureServiceProxy__block_invoke;
  v4[3] = &unk_1E73B63F0;
  v4[4] = self;
  v2 = [(AMSDaemonConnection *)self _connectionProxyWithAccessBlock:v4];

  return v2;
}

void __49__AMSDaemonConnection_autoBugCaptureServiceProxy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__AMSDaemonConnection_autoBugCaptureServiceProxy__block_invoke_2;
  v7[3] = &unk_1E73B64E0;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 getAutoBugCaptureServiceProxyWithReplyHandler:v7];
}

void __49__AMSDaemonConnection_autoBugCaptureServiceProxy__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _serviceInterfaceForSelector:sel_getAutoBugCaptureServiceProxyWithReplyHandler_];
  [v5 _errorForwardingProxyForServiceProxy:v7 proxyReplyError:v6 interface:v8 proxyPromise:*(a1 + 40)];
}

- (id)onDeviceDataServiceProxy
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__AMSDaemonConnection_onDeviceDataServiceProxy__block_invoke;
  v4[3] = &unk_1E73B63F0;
  v4[4] = self;
  v2 = [(AMSDaemonConnection *)self _connectionProxyWithAccessBlock:v4];

  return v2;
}

void __47__AMSDaemonConnection_onDeviceDataServiceProxy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AMSDaemonConnection_onDeviceDataServiceProxy__block_invoke_2;
  v7[3] = &unk_1E73B6508;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 getOnDeviceDataServiceProxyWithReplyHandler:v7];
}

void __47__AMSDaemonConnection_onDeviceDataServiceProxy__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _serviceInterfaceForSelector:sel_getOnDeviceDataServiceProxyWithReplyHandler_];
  [v5 _errorForwardingProxyForServiceProxy:v7 proxyReplyError:v6 interface:v8 proxyPromise:*(a1 + 40)];
}

- (id)autoBugCaptureServiceProxySyncWithError:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__21;
  v22 = __Block_byref_object_dispose__21;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__21;
  v16 = __Block_byref_object_dispose__21;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__AMSDaemonConnection_autoBugCaptureServiceProxySyncWithError___block_invoke;
  v11[3] = &unk_1E73B6468;
  v11[4] = self;
  v11[5] = &v18;
  v11[6] = &v12;
  [(AMSDaemonConnection *)self _connectionSyncProxyWithAccessBlock:v11];
  if (v19[5])
  {
    v4 = +[AMSLogConfig sharedConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      v8 = AMSLogableError(v19[5]);
      *buf = 138543874;
      v25 = v6;
      v26 = 2114;
      v27 = v7;
      v28 = 2114;
      v29 = v8;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error connecting sync proxy. error = %{public}@", buf, 0x20u);
    }

    v9 = 0;
    if (error)
    {
      *error = v19[5];
    }
  }

  else
  {
    v9 = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v9;
}

void __63__AMSDaemonConnection_autoBugCaptureServiceProxySyncWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__AMSDaemonConnection_autoBugCaptureServiceProxySyncWithError___block_invoke_51;
    v12[3] = &unk_1E73B6530;
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    [a2 getAutoBugCaptureServiceProxyWithReplyHandler:v12];
  }

  else
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSLogableError(v6);
      *buf = 138543874;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@]Failed to get sync remote object proxy. error = %{public}@", buf, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

void __63__AMSDaemonConnection_autoBugCaptureServiceProxySyncWithError___block_invoke_51(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) _serviceInterfaceForSelector:sel_getAutoBugCaptureServiceProxyWithReplyHandler_];
    v8 = [[AMSDaemonConnectionErrorForwardingProxy alloc] initWithProxy:v5 fromInterface:v7 isSync:1];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v15 = AMSLogableError(v6);
      v16 = 138543874;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@]Failed to get service interface with proxy. error = %{public}@", &v16, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (id)cookieServiceProxy
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__AMSDaemonConnection_cookieServiceProxy__block_invoke;
  v4[3] = &unk_1E73B63F0;
  v4[4] = self;
  v2 = [(AMSDaemonConnection *)self _connectionProxyWithAccessBlock:v4];

  return v2;
}

void __41__AMSDaemonConnection_cookieServiceProxy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__AMSDaemonConnection_cookieServiceProxy__block_invoke_2;
  v7[3] = &unk_1E73B6558;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 getCookieServiceProxyWithReplyHandler:v7];
}

void __41__AMSDaemonConnection_cookieServiceProxy__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _serviceInterfaceForSelector:sel_getCookieServiceProxyWithReplyHandler_];
  [v5 _errorForwardingProxyForServiceProxy:v7 proxyReplyError:v6 interface:v8 proxyPromise:*(a1 + 40)];
}

- (id)cookieServiceProxySyncWithError:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__21;
  v22 = __Block_byref_object_dispose__21;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__21;
  v16 = __Block_byref_object_dispose__21;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__AMSDaemonConnection_cookieServiceProxySyncWithError___block_invoke;
  v11[3] = &unk_1E73B6468;
  v11[4] = self;
  v11[5] = &v18;
  v11[6] = &v12;
  [(AMSDaemonConnection *)self _connectionSyncProxyWithAccessBlock:v11];
  if (v19[5])
  {
    v4 = +[AMSLogConfig sharedConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      v8 = AMSLogableError(v19[5]);
      *buf = 138543874;
      v25 = v6;
      v26 = 2114;
      v27 = v7;
      v28 = 2114;
      v29 = v8;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error connecting sync proxy. error = %{public}@", buf, 0x20u);
    }

    v9 = 0;
    if (error)
    {
      *error = v19[5];
    }
  }

  else
  {
    v9 = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v9;
}

void __55__AMSDaemonConnection_cookieServiceProxySyncWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__AMSDaemonConnection_cookieServiceProxySyncWithError___block_invoke_55;
    v12[3] = &unk_1E73B6580;
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    [a2 getCookieServiceProxyWithReplyHandler:v12];
  }

  else
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSLogableError(v6);
      *buf = 138543874;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@]Failed to get sync remote object proxy. error = %{public}@", buf, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

void __55__AMSDaemonConnection_cookieServiceProxySyncWithError___block_invoke_55(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) _serviceInterfaceForSelector:sel_getCookieServiceProxyWithReplyHandler_];
    v8 = [[AMSDaemonConnectionErrorForwardingProxy alloc] initWithProxy:v5 fromInterface:v7 isSync:1];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v15 = AMSLogableError(v6);
      v16 = 138543874;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@]Failed to get service interface with proxy. error = %{public}@", &v16, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (id)deviceMessengerProxyWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__AMSDaemonConnection_deviceMessengerProxyWithDelegate___block_invoke;
  v8[3] = &unk_1E73B65D0;
  v9 = delegateCopy;
  selfCopy = self;
  v5 = delegateCopy;
  v6 = [(AMSDaemonConnection *)self _connectionProxyWithAccessBlock:v8];

  return v6;
}

void __56__AMSDaemonConnection_deviceMessengerProxyWithDelegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [AMSConnectionDelegateProxy proxyWithDelegate:v6];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__AMSDaemonConnection_deviceMessengerProxyWithDelegate___block_invoke_2;
  v10[3] = &unk_1E73B65A8;
  v10[4] = *(a1 + 40);
  v11 = v5;
  v9 = v5;
  [v7 getDeviceMessengerServiceProxyWithDelegate:v8 replyHandler:v10];
}

void __56__AMSDaemonConnection_deviceMessengerProxyWithDelegate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _serviceInterfaceForSelector:sel_getDeviceMessengerServiceProxyWithDelegate_replyHandler_];
  [v5 _errorForwardingProxyForServiceProxy:v7 proxyReplyError:v6 interface:v8 proxyPromise:*(a1 + 40)];
}

- (id)dismissQRDialogServiceProxy
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AMSDaemonConnection_dismissQRDialogServiceProxy__block_invoke;
  v4[3] = &unk_1E73B63F0;
  v4[4] = self;
  v2 = [(AMSDaemonConnection *)self _connectionProxyWithAccessBlock:v4];

  return v2;
}

void __50__AMSDaemonConnection_dismissQRDialogServiceProxy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AMSDaemonConnection_dismissQRDialogServiceProxy__block_invoke_2;
  v7[3] = &unk_1E73B65F8;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 getDismissQRDialogServiceProxyWithReplyHandler:v7];
}

void __50__AMSDaemonConnection_dismissQRDialogServiceProxy__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _serviceInterfaceForSelector:sel_getDismissQRDialogServiceProxyWithReplyHandler_];
  [v5 _errorForwardingProxyForServiceProxy:v7 proxyReplyError:v6 interface:v8 proxyPromise:*(a1 + 40)];
}

- (id)fraudReportServiceProxy
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__AMSDaemonConnection_fraudReportServiceProxy__block_invoke;
  v4[3] = &unk_1E73B63F0;
  v4[4] = self;
  v2 = [(AMSDaemonConnection *)self _connectionProxyWithAccessBlock:v4];

  return v2;
}

void __46__AMSDaemonConnection_fraudReportServiceProxy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__AMSDaemonConnection_fraudReportServiceProxy__block_invoke_2;
  v7[3] = &unk_1E73B6620;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 getFraudReportServiceProxyWithReplyHandler:v7];
}

void __46__AMSDaemonConnection_fraudReportServiceProxy__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _serviceInterfaceForSelector:sel_getFraudReportServiceProxyWithReplyHandler_];
  [v5 _errorForwardingProxyForServiceProxy:v7 proxyReplyError:v6 interface:v8 proxyPromise:*(a1 + 40)];
}

- (id)keychainServiceProxy
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__AMSDaemonConnection_keychainServiceProxy__block_invoke;
  v4[3] = &unk_1E73B63F0;
  v4[4] = self;
  v2 = [(AMSDaemonConnection *)self _connectionProxyWithAccessBlock:v4];

  return v2;
}

void __43__AMSDaemonConnection_keychainServiceProxy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AMSDaemonConnection_keychainServiceProxy__block_invoke_2;
  v7[3] = &unk_1E73B6648;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 getKeychainServiceProxyWithReplyHandler:v7];
}

void __43__AMSDaemonConnection_keychainServiceProxy__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _serviceInterfaceForSelector:sel_getKeychainServiceProxyWithReplyHandler_];
  [v5 _errorForwardingProxyForServiceProxy:v7 proxyReplyError:v6 interface:v8 proxyPromise:*(a1 + 40)];
}

- (id)purchaseServiceProxy
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__AMSDaemonConnection_purchaseServiceProxy__block_invoke;
  v4[3] = &unk_1E73B63F0;
  v4[4] = self;
  v2 = [(AMSDaemonConnection *)self _connectionProxyWithAccessBlock:v4];

  return v2;
}

void __43__AMSDaemonConnection_purchaseServiceProxy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AMSDaemonConnection_purchaseServiceProxy__block_invoke_2;
  v7[3] = &unk_1E73B6670;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 getPurchaseServiceProxyWithReplyHandler:v7];
}

void __43__AMSDaemonConnection_purchaseServiceProxy__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _serviceInterfaceForSelector:sel_getPurchaseServiceProxyWithReplyHandler_];
  [v5 _errorForwardingProxyForServiceProxy:v7 proxyReplyError:v6 interface:v8 proxyPromise:*(a1 + 40)];
}

- (id)paymentConfirmationProxy
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__AMSDaemonConnection_paymentConfirmationProxy__block_invoke;
  v4[3] = &unk_1E73B63F0;
  v4[4] = self;
  v2 = [(AMSDaemonConnection *)self _connectionProxyWithAccessBlock:v4];

  return v2;
}

void __47__AMSDaemonConnection_paymentConfirmationProxy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AMSDaemonConnection_paymentConfirmationProxy__block_invoke_2;
  v7[3] = &unk_1E73B6698;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 getPaymentConfirmationServiceProxyWithReplyHandler:v7];
}

void __47__AMSDaemonConnection_paymentConfirmationProxy__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _serviceInterfaceForSelector:sel_getPaymentConfirmationServiceProxyWithReplyHandler_];
  [v5 _errorForwardingProxyForServiceProxy:v7 proxyReplyError:v6 interface:v8 proxyPromise:*(a1 + 40)];
}

- (id)paymentValidationServiceProxy
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__AMSDaemonConnection_paymentValidationServiceProxy__block_invoke;
  v4[3] = &unk_1E73B63F0;
  v4[4] = self;
  v2 = [(AMSDaemonConnection *)self _connectionProxyWithAccessBlock:v4];

  return v2;
}

void __52__AMSDaemonConnection_paymentValidationServiceProxy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__AMSDaemonConnection_paymentValidationServiceProxy__block_invoke_2;
  v7[3] = &unk_1E73B66C0;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 getPaymentValidationServiceProxyWithReplyHandler:v7];
}

void __52__AMSDaemonConnection_paymentValidationServiceProxy__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _serviceInterfaceForSelector:sel_getPaymentValidationServiceProxyWithReplyHandler_];
  [v5 _errorForwardingProxyForServiceProxy:v7 proxyReplyError:v6 interface:v8 proxyPromise:*(a1 + 40)];
}

- (id)pushNotificationService
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__AMSDaemonConnection_pushNotificationService__block_invoke;
  v4[3] = &unk_1E73B63F0;
  v4[4] = self;
  v2 = [(AMSDaemonConnection *)self _connectionProxyWithAccessBlock:v4];

  return v2;
}

void __46__AMSDaemonConnection_pushNotificationService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__AMSDaemonConnection_pushNotificationService__block_invoke_2;
  v7[3] = &unk_1E73B66E8;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 getPushNotificationServiceProxyWithReplyHandler:v7];
}

void __46__AMSDaemonConnection_pushNotificationService__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _serviceInterfaceForSelector:sel_getPushNotificationServiceProxyWithReplyHandler_];
  [v5 _errorForwardingProxyForServiceProxy:v7 proxyReplyError:v6 interface:v8 proxyPromise:*(a1 + 40)];
}

- (id)securityServiceProxyWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__AMSDaemonConnection_securityServiceProxyWithDelegate___block_invoke;
  v8[3] = &unk_1E73B65D0;
  v9 = delegateCopy;
  selfCopy = self;
  v5 = delegateCopy;
  v6 = [(AMSDaemonConnection *)self _connectionProxyWithAccessBlock:v8];

  return v6;
}

void __56__AMSDaemonConnection_securityServiceProxyWithDelegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [AMSConnectionDelegateProxy proxyWithDelegate:v6];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__AMSDaemonConnection_securityServiceProxyWithDelegate___block_invoke_2;
  v10[3] = &unk_1E73B6710;
  v10[4] = *(a1 + 40);
  v11 = v5;
  v9 = v5;
  [v7 getSecurityServiceProxyWithDelegate:v8 replyHandler:v10];
}

void __56__AMSDaemonConnection_securityServiceProxyWithDelegate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _serviceInterfaceForSelector:sel_getSecurityServiceProxyWithDelegate_replyHandler_];
  [v5 _errorForwardingProxyForServiceProxy:v7 proxyReplyError:v6 interface:v8 proxyPromise:*(a1 + 40)];
}

- (void)_connectionSyncProxyWithAccessBlock:(id)block
{
  blockCopy = block;
  v5 = +[AMSProcessInfo currentProcess];
  isAMSAccountsDaemon = [v5 isAMSAccountsDaemon];

  if (isAMSAccountsDaemon)
  {
    v12 = AMSErrorWithFormat(11, @"Connection Proxy Failed", @"Sync proxy unavailable", v7, v8, v9, v10, v11, v15[0]);
    blockCopy[2](blockCopy, 0, v12);
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__21;
    v20 = __Block_byref_object_dispose__21;
    v21 = 0;
    sharedConnection = [(AMSDaemonConnection *)self sharedConnection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__AMSDaemonConnection__connectionSyncProxyWithAccessBlock___block_invoke;
    v15[3] = &unk_1E73B6738;
    v15[4] = self;
    v15[5] = &v16;
    v14 = [sharedConnection synchronousRemoteObjectProxyWithErrorHandler:v15];

    (blockCopy)[2](blockCopy, v14, v17[5]);
    _Block_object_dispose(&v16, 8);
  }
}

void __59__AMSDaemonConnection__connectionSyncProxyWithAccessBlock___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v9 = 138543874;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error connecting (sync) to daemon. %{public}@", &v9, 0x20u);
  }
}

- (id)_connectionProxyWithAccessBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = +[AMSProcessInfo currentProcess];
  isAMSAccountsDaemon = [v6 isAMSAccountsDaemon];

  if (isAMSAccountsDaemon)
  {
    v13 = AMSErrorWithFormat(11, @"Connection Proxy Failed", @"Async proxy unavailable", v8, v9, v10, v11, v12, v22);
    [(AMSMutablePromise *)v5 finishWithError:v13];
    v14 = v5;
  }

  else
  {
    sharedConnectionAccessQueue = [(AMSDaemonConnection *)self sharedConnectionAccessQueue];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __55__AMSDaemonConnection__connectionProxyWithAccessBlock___block_invoke;
    v23[3] = &unk_1E73B5230;
    v23[4] = self;
    v16 = v5;
    v24 = v16;
    v25 = blockCopy;
    v17 = v23;
    v18 = AMSLogKey();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AMSDispatchAsync_block_invoke_2;
    block[3] = &unk_1E73B36D0;
    v27 = v18;
    v28 = v17;
    v19 = v18;
    dispatch_async(sharedConnectionAccessQueue, block);

    v20 = v16;
  }

  return v5;
}

void __55__AMSDaemonConnection__connectionProxyWithAccessBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedConnection];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __55__AMSDaemonConnection__connectionProxyWithAccessBlock___block_invoke_2;
  v11 = &unk_1E73B32F0;
  v3 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v3;
  v4 = [v2 remoteObjectProxyWithErrorHandler:&v8];

  if (v4)
  {
    (*(*(a1 + 48) + 16))(*(a1 + 48), v4, *(a1 + 40), v5, v6);
  }

  else
  {
    v7 = AMSError(0, @"Proxy Failure", @"Failed to fetch connection proxy. Missing either an error or result.", 0);
    [*(a1 + 40) finishWithError:{v7, v8, v9, v10, v11, v12}];
  }
}

void __55__AMSDaemonConnection__connectionProxyWithAccessBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v3 = AMSError(0, @"AMSDaemonConnection Error", @"Unknown error occurred while fetching Async remote object proxy", 0);
  }

  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error connecting (async) to daemon. %{public}@", &v8, 0x20u);
  }

  if (([*(a1 + 40) isFinished] & 1) == 0)
  {
    [*(a1 + 40) finishWithError:v3];
  }
}

- (void)_errorForwardingProxyForServiceProxy:(id)proxy proxyReplyError:(id)error interface:(id)interface proxyPromise:(id)promise
{
  errorCopy = error;
  promiseCopy = promise;
  if (proxy)
  {
    interfaceCopy = interface;
    proxyCopy = proxy;
    proxy = [[AMSDaemonConnectionErrorForwardingProxy alloc] initWithProxy:proxyCopy fromInterface:interfaceCopy];
  }

  [promiseCopy finishWithResult:proxy error:errorCopy];
}

- (void)_handleInterruption
{
  v23 = *MEMORY[0x1E69E9840];
  sharedConnectionAccessQueue = [(AMSDaemonConnection *)self sharedConnectionAccessQueue];
  dispatch_assert_queue_V2(sharedConnectionAccessQueue);

  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = AMSLogKey();
    *buf = 138543618;
    v20 = v6;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Connection interrupted.", buf, 0x16u);
  }

  [(AMSDaemonConnection *)self setSharedConnection:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  interruptionHandlers = [(AMSDaemonConnection *)self interruptionHandlers];
  v10 = [interruptionHandlers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(interruptionHandlers);
        }

        (*(*(*(&v14 + 1) + 8 * v13++) + 16))();
      }

      while (v11 != v13);
      v11 = [interruptionHandlers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)_handleInvalidation
{
  v12 = *MEMORY[0x1E69E9840];
  sharedConnectionAccessQueue = [(AMSDaemonConnection *)self sharedConnectionAccessQueue];
  dispatch_assert_queue_V2(sharedConnectionAccessQueue);

  v3 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = AMSLogKey();
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Connection could not be established (invalidated)", &v8, 0x16u);
  }
}

- (id)_serviceInterfaceForSelector:(SEL)selector
{
  sharedConnection = [(AMSDaemonConnection *)self sharedConnection];
  remoteObjectInterface = [sharedConnection remoteObjectInterface];

  v6 = [remoteObjectInterface interfaceForSelector:selector argumentIndex:0 ofReply:1];

  return v6;
}

void __44__AMSDaemonConnection__initializeConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = AMSSetLogKey(*(a1 + 32));
  [WeakRetained _handleInvalidation];
}

void __44__AMSDaemonConnection__initializeConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = AMSSetLogKey(*(a1 + 32));
  [WeakRetained _handleInterruption];
}

@end