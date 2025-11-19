@interface AMSUniversalLinks
+ (id)_connection;
+ (id)_privateQueue;
+ (void)update;
- (AMSUniversalLinks)init;
- (id)updateUniversalLinks;
@end

@implementation AMSUniversalLinks

+ (void)update
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedConfig];
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
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating Universal Links rules", buf, 0x16u);
  }

  v7 = objc_alloc_init(AMSUniversalLinks);
  v8 = [(AMSUniversalLinks *)v7 updateUniversalLinks];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __27__AMSUniversalLinks_update__block_invoke;
  v9[3] = &__block_descriptor_40_e51_v24__0__AMSUniversalLinksUpdateResult_8__NSError_16l;
  v9[4] = a1;
  [v8 addFinishBlock:v9];
}

void __27__AMSUniversalLinks_update__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([a2 success] & 1) == 0)
  {
    v5 = +[AMSLogConfig sharedDataMigrationConfig];
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
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Universal Links rules update failed: %{public}@", &v9, 0x20u);
    }
  }
}

- (AMSUniversalLinks)init
{
  v6.receiver = self;
  v6.super_class = AMSUniversalLinks;
  v2 = [(AMSUniversalLinks *)&v6 init];
  if (v2)
  {
    v3 = +[AMSUniversalLinks _connection];
    connection = v2->_connection;
    v2->_connection = v3;
  }

  return v2;
}

- (id)updateUniversalLinks
{
  v3 = [[AMSMutablePromise alloc] initWithTimeout:3.0];
  v4 = [objc_opt_class() _privateQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__AMSUniversalLinks_updateUniversalLinks__block_invoke;
  v12[3] = &unk_1E73B3DE0;
  v12[4] = self;
  v5 = v3;
  v13 = v5;
  v6 = v12;
  v7 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_10;
  block[3] = &unk_1E73B36D0;
  v15 = v7;
  v16 = v6;
  v8 = v7;
  dispatch_async(v4, block);

  v9 = v13;
  v10 = v5;

  return v5;
}

void __41__AMSUniversalLinks_updateUniversalLinks__block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__70;
  v10 = __Block_byref_object_dispose__70;
  v11 = [*(a1 + 32) connection];
  v2 = [v7[5] proxy];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__AMSUniversalLinks_updateUniversalLinks__block_invoke_3;
  v3[3] = &unk_1E73BCDB0;
  v5 = &v6;
  v4 = *(a1 + 40);
  [v2 updateWithCompletion:v3];

  _Block_object_dispose(&v6, 8);
}

void __41__AMSUniversalLinks_updateUniversalLinks__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1 + 32);
  if (v5)
  {
    [v8 finishWithError:v5];
  }

  else
  {
    [v8 finishWithResult:v9];
  }
}

+ (id)_privateQueue
{
  if (_MergedGlobals_155 != -1)
  {
    dispatch_once(&_MergedGlobals_155, &__block_literal_global_143);
  }

  v3 = qword_1ED6E31A8;

  return v3;
}

void __34__AMSUniversalLinks__privateQueue__block_invoke()
{
  v2 = dispatch_get_global_queue(0, 0);
  v0 = dispatch_queue_create_with_target_V2("com.apple.AMSUniversalLinks.queue", 0, v2);
  v1 = qword_1ED6E31A8;
  qword_1ED6E31A8 = v0;
}

+ (id)_connection
{
  v2 = [a1 _privateQueue];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__70;
  v14 = __Block_byref_object_dispose__70;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __32__AMSUniversalLinks__connection__block_invoke;
  v9[3] = &unk_1E73B3880;
  v9[4] = &v10;
  v3 = v9;
  v4 = v2;
  v5 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchSync_block_invoke_1;
  block[3] = &unk_1E73B36D0;
  v17 = v5;
  v18 = v3;
  v6 = v5;
  dispatch_sync(v4, block);

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __32__AMSUniversalLinks__connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained(&_connection_connection_0);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v5 = objc_alloc_init(AMSUniversalLinksConnection);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(*(*(a1 + 32) + 8) + 40);

    objc_storeWeak(&_connection_connection_0, v8);
  }
}

@end