@interface AMSUniversalLinksConnection
- (AMSUniversalLinksConnection)init;
- (AMSUniversalLinksServiceProtocol)proxy;
- (id)_makeRemoteConnectionInterface;
- (id)_newRemoteConnection;
- (void)_removeRemoteConnection;
- (void)dealloc;
@end

@implementation AMSUniversalLinksConnection

- (AMSUniversalLinksConnection)init
{
  v6.receiver = self;
  v6.super_class = AMSUniversalLinksConnection;
  v2 = [(AMSUniversalLinksConnection *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.AppleMediaServices.UniversalLinks", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (AMSUniversalLinksServiceProtocol)proxy
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__71;
  v11 = __Block_byref_object_dispose__71;
  v12 = 0;
  v3 = [(AMSUniversalLinksConnection *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__AMSUniversalLinksConnection_proxy__block_invoke;
  v6[3] = &unk_1E73B82D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __36__AMSUniversalLinksConnection_proxy__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  if (!v2)
  {
    v2 = [*(a1 + 32) _newRemoteConnection];
    [*(a1 + 32) setConnection:v2];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__AMSUniversalLinksConnection_proxy__block_invoke_2;
  v6[3] = &unk_1E73B34B8;
  v6[4] = *(a1 + 32);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __36__AMSUniversalLinksConnection_proxy__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = 138543874;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    v11 = 2114;
    v12 = v2;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to retrieve remote object. %{public}@", &v7, 0x20u);
  }
}

- (void)dealloc
{
  [(AMSUniversalLinksConnection *)self _removeRemoteConnection];
  v3.receiver = self;
  v3.super_class = AMSUniversalLinksConnection;
  [(AMSUniversalLinksConnection *)&v3 dealloc];
}

- (id)_makeRemoteConnectionInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CE228];
  v3 = +[AMSUniversalLinksUpdateResult archiveClasses];
  [v2 setClasses:v3 forSelector:sel_updateWithCompletion_ argumentIndex:0 ofReply:1];

  return v2;
}

- (id)_newRemoteConnection
{
  v3 = [(AMSUniversalLinksConnection *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.xpc.amsuniversallinks" options:0];
  v5 = [(AMSUniversalLinksConnection *)self queue];
  [v4 _setQueue:v5];

  v6 = [(AMSUniversalLinksConnection *)self _makeRemoteConnectionInterface];
  [v4 setRemoteObjectInterface:v6];

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__AMSUniversalLinksConnection__newRemoteConnection__block_invoke;
  v10[3] = &unk_1E73B4418;
  objc_copyWeak(&v11, &location);
  [v4 setInvalidationHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__AMSUniversalLinksConnection__newRemoteConnection__block_invoke_2;
  v8[3] = &unk_1E73B4418;
  objc_copyWeak(&v9, &location);
  [v4 setInterruptionHandler:v8];
  [v4 resume];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return v4;
}

void __51__AMSUniversalLinksConnection__newRemoteConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeRemoteConnection];
}

void __51__AMSUniversalLinksConnection__newRemoteConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeRemoteConnection];
}

- (void)_removeRemoteConnection
{
  v3 = [(AMSUniversalLinksConnection *)self connection];
  [v3 invalidate];

  [(AMSUniversalLinksConnection *)self setConnection:0];
}

@end