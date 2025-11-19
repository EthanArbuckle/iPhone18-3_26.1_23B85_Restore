@interface AMSMultiUserService
+ (AMSMultiUserServiceProtocol)proxyObject;
+ (AMSMultiUserServiceProtocol)proxyObjectAsync;
+ (BOOL)isConnectionEntitled:(id)a3;
+ (NSXPCConnection)sharedConnection;
+ (NSXPCInterface)serviceInterface;
+ (OS_dispatch_queue)sharedConnectionAccessQueue;
+ (id)_createXPCConnection;
+ (void)setSharedConnection:(id)a3;
@end

@implementation AMSMultiUserService

+ (AMSMultiUserServiceProtocol)proxyObject
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = +[AMSProcessInfo currentProcess];
  v5 = [v4 isAMSAccountsDaemon];

  if (v5)
  {
    v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = NSStringFromSelector(a2);
      *buf = 138543874;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2114;
      v16 = v10;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@ is unavailable from amsaccountsd.", buf, 0x20u);
    }

    v11 = 0;
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v16 = __Block_byref_object_copy__49;
    v17 = __Block_byref_object_dispose__49;
    v18 = 0;
    v12 = [a1 sharedConnectionAccessQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __34__AMSMultiUserService_proxyObject__block_invoke;
    v14[3] = &unk_1E73B5F60;
    v14[4] = buf;
    v14[5] = a1;
    dispatch_sync(v12, v14);

    v11 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  return v11;
}

void __34__AMSMultiUserService_proxyObject__block_invoke(uint64_t a1)
{
  v2 = AMSLogKey();
  objc_initWeak(&location, *(a1 + 40));
  v3 = [*(a1 + 40) sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__AMSMultiUserService_proxyObject__block_invoke_2;
  v8[3] = &unk_1E73BA320;
  v4 = v2;
  v9 = v4;
  objc_copyWeak(&v10, &location);
  v5 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __34__AMSMultiUserService_proxyObject__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AMSSetLogKey(*(a1 + 32));
  v5 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = AMSLogableError(v3);
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create the proxy object (sync). error = %{public}@", &v11, 0x20u);
  }
}

+ (AMSMultiUserServiceProtocol)proxyObjectAsync
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = +[AMSProcessInfo currentProcess];
  v5 = [v4 isAMSAccountsDaemon];

  if (v5)
  {
    v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = NSStringFromSelector(a2);
      *buf = 138543874;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2114;
      v16 = v10;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@ is unavailable from amsaccountsd.", buf, 0x20u);
    }

    v11 = 0;
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v16 = __Block_byref_object_copy__49;
    v17 = __Block_byref_object_dispose__49;
    v18 = 0;
    v12 = [a1 sharedConnectionAccessQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __39__AMSMultiUserService_proxyObjectAsync__block_invoke;
    v14[3] = &unk_1E73B5F60;
    v14[4] = buf;
    v14[5] = a1;
    dispatch_sync(v12, v14);

    v11 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  return v11;
}

void __39__AMSMultiUserService_proxyObjectAsync__block_invoke(uint64_t a1)
{
  v2 = AMSLogKey();
  objc_initWeak(&location, *(a1 + 40));
  v3 = [*(a1 + 40) sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__AMSMultiUserService_proxyObjectAsync__block_invoke_2;
  v8[3] = &unk_1E73BA320;
  v4 = v2;
  v9 = v4;
  objc_copyWeak(&v10, &location);
  v5 = [v3 remoteObjectProxyWithErrorHandler:v8];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __39__AMSMultiUserService_proxyObjectAsync__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AMSSetLogKey(*(a1 + 32));
  v5 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = AMSLogableError(v3);
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create the proxy object (async). error = %{public}@", &v11, 0x20u);
  }
}

+ (void)setSharedConnection:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedConnectionAccessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = kSharedConnection_0;
  kSharedConnection_0 = v4;
}

+ (NSXPCConnection)sharedConnection
{
  v3 = [a1 sharedConnectionAccessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = kSharedConnection_0;
  if (!kSharedConnection_0)
  {
    v5 = [a1 _createXPCConnection];
    v6 = kSharedConnection_0;
    kSharedConnection_0 = v5;

    [kSharedConnection_0 resume];
    v4 = kSharedConnection_0;
  }

  return v4;
}

+ (OS_dispatch_queue)sharedConnectionAccessQueue
{
  if (_MergedGlobals_137 != -1)
  {
    dispatch_once(&_MergedGlobals_137, &__block_literal_global_103);
  }

  v3 = qword_1ED6E2FC8;

  return v3;
}

uint64_t __50__AMSMultiUserService_sharedConnectionAccessQueue__block_invoke()
{
  qword_1ED6E2FC8 = dispatch_queue_create("com.apple.AppleMediaServices.AMSMultiUserService.sharedConnection", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (NSXPCInterface)serviceInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CE108];
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 initWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_exportMultiUserTokenForHomeIdentifier_generateIfMissing_generateIfInvalid_completion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_multiUserTokenFromCloudKitForAccount_homeUserIdentifier_qualityOfService_completion_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_multiUserTokenFromCloudKitForAccount_homeUserIdentifier_qualityOfService_completion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_multiUserTokenFromCloudKitForAccount_homeUserIdentifier_qualityOfService_completion_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_multiUserTokenFromKeychainForAccount_completion_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_multiUserTokenFromKeychainForAccount_completion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_multiUserTokenFromKeychainForAccount_completion_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_refreshMultiUserDatabaseNotificationSubscriptionsForced_completion_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_resetMultiUserDatabaseNotificationSubscriptionsCompletion_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_storeMultiUserTokenInKeychainForAccount_token_completion_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_storeMultiUserTokenInKeychainForAccount_token_completion_ argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_storeMultiUserTokenInKeychainForAccount_token_completion_ argumentIndex:1 ofReply:1];

  return v2;
}

+ (BOOL)isConnectionEntitled:(id)a3
{
  v3 = [a3 valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];
  return v5;
}

+ (id)_createXPCConnection
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v25 = v5;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Initializing amsaccountsd XPC connection.", buf, 0x16u);
  }

  v7 = objc_alloc(MEMORY[0x1E696B0B8]);
  v8 = [a1 machServiceName];
  v9 = [v7 initWithMachServiceName:v8 options:0];

  v10 = AMSLogKey();
  objc_initWeak(buf, a1);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __43__AMSMultiUserService__createXPCConnection__block_invoke;
  v21[3] = &unk_1E73B4328;
  objc_copyWeak(&v23, buf);
  v11 = v10;
  v22 = v11;
  [v9 setInterruptionHandler:v21];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __43__AMSMultiUserService__createXPCConnection__block_invoke_2;
  v18 = &unk_1E73B4328;
  objc_copyWeak(&v20, buf);
  v12 = v11;
  v19 = v12;
  [v9 setInvalidationHandler:&v15];
  v13 = [a1 serviceInterface];
  [v9 setRemoteObjectInterface:v13];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);

  return v9;
}

void __43__AMSMultiUserService__createXPCConnection__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = AMSSetLogKey(*(a1 + 32));
  v4 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The connection was interrupted.", buf, 0x16u);
  }

  v8 = [WeakRetained sharedConnectionAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AMSMultiUserService__createXPCConnection__block_invoke_100;
  block[3] = &unk_1E73B4418;
  objc_copyWeak(&v10, (a1 + 40));
  dispatch_async(v8, block);

  objc_destroyWeak(&v10);
}

void __43__AMSMultiUserService__createXPCConnection__block_invoke_100(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSharedConnection:0];
}

void __43__AMSMultiUserService__createXPCConnection__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = AMSSetLogKey(*(a1 + 32));
  v4 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] The connection was invalidated.", buf, 0x16u);
  }

  v8 = [WeakRetained sharedConnectionAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AMSMultiUserService__createXPCConnection__block_invoke_101;
  block[3] = &unk_1E73B4418;
  objc_copyWeak(&v10, (a1 + 40));
  dispatch_async(v8, block);

  objc_destroyWeak(&v10);
}

void __43__AMSMultiUserService__createXPCConnection__block_invoke_101(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSharedConnection:0];
}

@end