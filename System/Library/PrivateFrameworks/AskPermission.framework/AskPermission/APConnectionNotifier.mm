@interface APConnectionNotifier
+ (APConnectionNotifier)sharedNotifier;
- (APConnectionNotifier)init;
- (ConnectionProtocol)remoteObjectProxy;
- (id)_newRemoteConnection;
- (id)_remoteConnection;
@end

@implementation APConnectionNotifier

- (APConnectionNotifier)init
{
  v6.receiver = self;
  v6.super_class = APConnectionNotifier;
  v2 = [(APConnectionNotifier *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.AskPermission.APConnectionNotifier", 0);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v3;
  }

  return v2;
}

- (ConnectionProtocol)remoteObjectProxy
{
  objc_initWeak(&location, self);
  _remoteConnection = [(APConnectionNotifier *)self _remoteConnection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__APConnectionNotifier_remoteObjectProxy__block_invoke;
  v6[3] = &unk_278CC1568;
  objc_copyWeak(&v7, &location);
  v4 = [_remoteConnection remoteObjectProxyWithErrorHandler:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

void __41__APConnectionNotifier_remoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[APLogConfig sharedFrameworkConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v3;
    v7 = v10;
    _os_log_impl(&dword_241063000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Remote object proxy error. Error:%{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (APConnectionNotifier)sharedNotifier
{
  if (sharedNotifier_ap_once_token___COUNTER__ != -1)
  {
    +[APConnectionNotifier sharedNotifier];
  }

  v3 = sharedNotifier_ap_once_object___COUNTER__;

  return v3;
}

uint64_t __38__APConnectionNotifier_sharedNotifier__block_invoke()
{
  sharedNotifier_ap_once_object___COUNTER__ = objc_alloc_init(APConnectionNotifier);

  return MEMORY[0x2821F96F8]();
}

- (id)_remoteConnection
{
  underlyingRemoteConnection = [(APConnectionNotifier *)self underlyingRemoteConnection];

  if (!underlyingRemoteConnection)
  {
    connectionQueue = [(APConnectionNotifier *)self connectionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__APConnectionNotifier__remoteConnection__block_invoke;
    block[3] = &unk_278CC15B0;
    block[4] = self;
    dispatch_sync(connectionQueue, block);
  }

  underlyingRemoteConnection2 = [(APConnectionNotifier *)self underlyingRemoteConnection];

  return underlyingRemoteConnection2;
}

void __41__APConnectionNotifier__remoteConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingRemoteConnection];

  if (!v2)
  {
    v3 = [*(a1 + 32) _newRemoteConnection];
    [*(a1 + 32) setUnderlyingRemoteConnection:v3];
  }
}

- (id)_newRemoteConnection
{
  v22 = *MEMORY[0x277D85DE8];
  connectionQueue = [(APConnectionNotifier *)self connectionQueue];
  dispatch_assert_queue_V2(connectionQueue);

  v4 = +[APLogConfig sharedFrameworkConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = objc_opt_class();
    v6 = v21;
    _os_log_impl(&dword_241063000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Creating a remote connection", buf, 0xCu);
  }

  v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.askpermissiond" options:0];
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2852E7BC8];
  [v7 setRemoteObjectInterface:v8];
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__APConnectionNotifier__newRemoteConnection__block_invoke;
  v17[3] = &unk_278CC15D8;
  objc_copyWeak(&v18, &location);
  [v7 setInvalidationHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__APConnectionNotifier__newRemoteConnection__block_invoke_93;
  v15[3] = &unk_278CC15D8;
  objc_copyWeak(&v16, &location);
  [v7 setInterruptionHandler:v15];
  v9 = +[APLogConfig sharedFrameworkConfig];
  if (!v9)
  {
    v9 = +[APLogConfig sharedConfig];
  }

  oSLogObject2 = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    *buf = 138543362;
    v21 = v11;
    v12 = v11;
    _os_log_impl(&dword_241063000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: Resuming remote connection", buf, 0xCu);
  }

  [v7 resume];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

void __44__APConnectionNotifier__newRemoteConnection__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[APLogConfig sharedFrameworkConfig];
  if (!v2)
  {
    v2 = +[APLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_241063000, v3, OS_LOG_TYPE_ERROR, "%{public}@: Remote connection invalidated", &v6, 0xCu);
  }

  [WeakRetained setUnderlyingRemoteConnection:0];
  v5 = *MEMORY[0x277D85DE8];
}

void __44__APConnectionNotifier__newRemoteConnection__block_invoke_93(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[APLogConfig sharedFrameworkConfig];
  if (!v2)
  {
    v2 = +[APLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_241063000, v3, OS_LOG_TYPE_ERROR, "%{public}@: Remote connection interrupted", &v6, 0xCu);
  }

  [WeakRetained setUnderlyingRemoteConnection:0];
  v5 = *MEMORY[0x277D85DE8];
}

@end