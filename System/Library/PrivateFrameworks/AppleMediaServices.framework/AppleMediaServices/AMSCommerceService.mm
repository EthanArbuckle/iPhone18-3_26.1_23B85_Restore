@interface AMSCommerceService
+ (AMSCommerceService)proxyObject;
+ (AMSCommerceService)proxyObjectAsync;
+ (NSXPCConnection)sharedConnection;
+ (OS_dispatch_queue)sharedConnectionAccessQueue;
+ (id)_createXPCConnection;
+ (void)setSharedConnection:(id)connection;
@end

@implementation AMSCommerceService

+ (AMSCommerceService)proxyObject
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__17;
  v11 = __Block_byref_object_dispose__17;
  v12 = 0;
  sharedConnectionAccessQueue = [self sharedConnectionAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__AMSCommerceService_proxyObject__block_invoke;
  v6[3] = &unk_1E73B5F60;
  v6[4] = &v7;
  v6[5] = self;
  dispatch_sync(sharedConnectionAccessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __33__AMSCommerceService_proxyObject__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 40) sharedConnection];
  v2 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_31];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __33__AMSCommerceService_proxyObject__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "AMSCommerceService: Failed to create the proxy object (sync). error = %{public}@", &v5, 0xCu);
  }
}

+ (AMSCommerceService)proxyObjectAsync
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__17;
  v11 = __Block_byref_object_dispose__17;
  v12 = 0;
  sharedConnectionAccessQueue = [self sharedConnectionAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__AMSCommerceService_proxyObjectAsync__block_invoke;
  v6[3] = &unk_1E73B5F60;
  v6[4] = &v7;
  v6[5] = self;
  dispatch_sync(sharedConnectionAccessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __38__AMSCommerceService_proxyObjectAsync__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 40) sharedConnection];
  v2 = [v5 remoteObjectProxyWithErrorHandler:&__block_literal_global_3_2];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __38__AMSCommerceService_proxyObjectAsync__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "AMSCommerceService: Failed to create the proxy object (async). error = %{public}@", &v5, 0xCu);
  }
}

+ (void)setSharedConnection:(id)connection
{
  connectionCopy = connection;
  sharedConnectionAccessQueue = [self sharedConnectionAccessQueue];
  dispatch_assert_queue_V2(sharedConnectionAccessQueue);

  v6 = kSharedConnection;
  kSharedConnection = connectionCopy;
}

+ (NSXPCConnection)sharedConnection
{
  sharedConnectionAccessQueue = [self sharedConnectionAccessQueue];
  dispatch_assert_queue_V2(sharedConnectionAccessQueue);

  v4 = kSharedConnection;
  if (!kSharedConnection)
  {
    _createXPCConnection = [self _createXPCConnection];
    v6 = kSharedConnection;
    kSharedConnection = _createXPCConnection;

    [kSharedConnection resume];
    v4 = kSharedConnection;
  }

  return v4;
}

+ (OS_dispatch_queue)sharedConnectionAccessQueue
{
  if (_MergedGlobals_95 != -1)
  {
    dispatch_once(&_MergedGlobals_95, &__block_literal_global_5);
  }

  v3 = qword_1ED6E2838;

  return v3;
}

uint64_t __49__AMSCommerceService_sharedConnectionAccessQueue__block_invoke()
{
  qword_1ED6E2838 = dispatch_queue_create("com.apple.AppleMediaServices.AMSCommerceService.sharedConnection", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_createXPCConnection
{
  v3 = +[AMSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "AMSCommerceService: Initializing commerce xpc connection", buf, 2u);
  }

  if (getuid() || +[AMSProcessInfo isBuddyRunning])
  {
    v5 = @"com.apple.commerce";
  }

  else
  {
    v5 = @"com.apple.commerced";
  }

  v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v5 options:0];
  objc_initWeak(buf, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__AMSCommerceService__createXPCConnection__block_invoke;
  v14[3] = &unk_1E73B4418;
  objc_copyWeak(&v15, buf);
  [v6 setInterruptionHandler:v14];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __42__AMSCommerceService__createXPCConnection__block_invoke_2;
  v12 = &unk_1E73B4418;
  objc_copyWeak(&v13, buf);
  [v6 setInvalidationHandler:&v9];
  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:{&unk_1F07CDA48, v9, v10, v11, v12}];
  [v6 setRemoteObjectInterface:v7];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  return v6;
}

void __42__AMSCommerceService__createXPCConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[AMSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "AMSCommerceService: The connection was interrupted.", buf, 2u);
  }

  v5 = [WeakRetained sharedConnectionAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AMSCommerceService__createXPCConnection__block_invoke_13;
  block[3] = &unk_1E73B4418;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(v5, block);

  objc_destroyWeak(&v7);
}

void __42__AMSCommerceService__createXPCConnection__block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSharedConnection:0];
}

void __42__AMSCommerceService__createXPCConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[AMSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "AMSCommerceService: The connection was invalidated.", buf, 2u);
  }

  v5 = [WeakRetained sharedConnectionAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AMSCommerceService__createXPCConnection__block_invoke_14;
  block[3] = &unk_1E73B4418;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(v5, block);

  objc_destroyWeak(&v7);
}

void __42__AMSCommerceService__createXPCConnection__block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSharedConnection:0];
}

@end