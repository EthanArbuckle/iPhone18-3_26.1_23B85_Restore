@interface AMSHTTPArchiveService
+ (id)_sharedProxy;
+ (void)recordTrafficWithTaskInfo:(id)info;
- (AMSHTTPArchiveService)init;
- (id)_createProxy;
- (id)_createRemoteConnection;
- (void)_removeRemoteConnection;
- (void)dealloc;
@end

@implementation AMSHTTPArchiveService

uint64_t __37__AMSHTTPArchiveService__sharedProxy__block_invoke()
{
  qword_1ED6E2A88 = dispatch_queue_create("com.apple.AppleMediaServices.harconnection", 0);

  return MEMORY[0x1EEE66BB8]();
}

- (AMSHTTPArchiveService)init
{
  v6.receiver = self;
  v6.super_class = AMSHTTPArchiveService;
  v2 = [(AMSHTTPArchiveService *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.AppleMediaServices.harservice", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

+ (id)_sharedProxy
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__36;
  v13 = __Block_byref_object_dispose__36;
  v14 = 0;
  if (_MergedGlobals_118 != -1)
  {
    dispatch_once(&_MergedGlobals_118, &__block_literal_global_71);
  }

  v2 = qword_1ED6E2A88;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__AMSHTTPArchiveService__sharedProxy__block_invoke_2;
  v6[3] = &unk_1E73B82D0;
  v7 = v2;
  v8 = &v9;
  v3 = v2;
  dispatch_sync(v3, v6);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

void __37__AMSHTTPArchiveService__sharedProxy__block_invoke_2(uint64_t a1)
{
  v2 = _sharedProxy_sharedService;
  if (!_sharedProxy_sharedService)
  {
    v3 = objc_alloc_init(AMSHTTPArchiveService);
    v4 = _sharedProxy_sharedService;
    _sharedProxy_sharedService = v3;

    v2 = _sharedProxy_sharedService;
  }

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__36;
  v15[4] = __Block_byref_object_dispose__36;
  v16 = v2;
  v5 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __37__AMSHTTPArchiveService__sharedProxy__block_invoke_3;
  v14[3] = &unk_1E73B3880;
  v14[4] = v15;
  v6 = v14;
  v7 = v5;
  v8 = AMSLogKey();
  v9 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAfter_block_invoke_1;
  block[3] = &unk_1E73B36D0;
  v18 = v8;
  v19 = v6;
  v10 = v8;
  dispatch_after(v9, v7, block);

  v11 = [_sharedProxy_sharedService _createProxy];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  _Block_object_dispose(v15, 8);
}

- (id)_createProxy
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__36;
  v11 = __Block_byref_object_dispose__36;
  v12 = 0;
  queue = [(AMSHTTPArchiveService *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__AMSHTTPArchiveService__createProxy__block_invoke;
  v6[3] = &unk_1E73B82D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __37__AMSHTTPArchiveService__createProxy__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  if (!v2)
  {
    v2 = [*(a1 + 32) _createRemoteConnection];
    [*(a1 + 32) setConnection:v2];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__AMSHTTPArchiveService__createProxy__block_invoke_2;
  v6[3] = &unk_1E73B34B8;
  v6[4] = *(a1 + 32);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_createRemoteConnection
{
  queue = [(AMSHTTPArchiveService *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.xpc.amstoold" options:0];
  queue2 = [(AMSHTTPArchiveService *)self queue];
  [v4 _setQueue:queue2];

  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CE0A8];
  [v6 setClass:objc_opt_class() forSelector:sel_recordTrafficWithTaskInfo_ argumentIndex:0 ofReply:0];
  [v4 setRemoteObjectInterface:v6];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__AMSHTTPArchiveService__createRemoteConnection__block_invoke;
  v10[3] = &unk_1E73B4418;
  objc_copyWeak(&v11, &location);
  [v4 setInvalidationHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__AMSHTTPArchiveService__createRemoteConnection__block_invoke_54;
  v8[3] = &unk_1E73B4418;
  objc_copyWeak(&v9, &location);
  [v4 setInterruptionHandler:v8];
  [v4 resume];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v4;
}

void __37__AMSHTTPArchiveService__sharedProxy__block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

+ (void)recordTrafficWithTaskInfo:(id)info
{
  infoCopy = info;
  _sharedProxy = [self _sharedProxy];
  [_sharedProxy recordTrafficWithTaskInfo:infoCopy];
}

- (void)dealloc
{
  [(AMSHTTPArchiveService *)self _removeRemoteConnection];
  v3.receiver = self;
  v3.super_class = AMSHTTPArchiveService;
  [(AMSHTTPArchiveService *)&v3 dealloc];
}

void __37__AMSHTTPArchiveService__createProxy__block_invoke_2(uint64_t a1, void *a2)
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

void __48__AMSHTTPArchiveService__createRemoteConnection__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Invalidation Handler Reached", &v8, 0x16u);
  }

  [WeakRetained _removeRemoteConnection];
  v6 = [WeakRetained errorHandler];

  if (v6)
  {
    v7 = [WeakRetained errorHandler];
    v7[2]();
  }
}

void __48__AMSHTTPArchiveService__createRemoteConnection__block_invoke_54(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Interruption Handler Reached", &v8, 0x16u);
  }

  [WeakRetained _removeRemoteConnection];
  v6 = [WeakRetained errorHandler];

  if (v6)
  {
    v7 = [WeakRetained errorHandler];
    v7[2]();
  }
}

- (void)_removeRemoteConnection
{
  connection = [(AMSHTTPArchiveService *)self connection];
  [connection invalidate];

  [(AMSHTTPArchiveService *)self setConnection:0];
}

@end