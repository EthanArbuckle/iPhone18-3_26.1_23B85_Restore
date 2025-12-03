@interface AMSUniqueExecutionQueue
- (AMSUniqueExecutionQueue)initWithBlock:(id)block;
- (id)_createExecutionPromise;
- (void)_beginExecutingBlockWithPromise:(id)promise;
- (void)addCompletionBlock:(id)block;
- (void)addCompletionBlockForSubsequentExecution:(id)execution;
@end

@implementation AMSUniqueExecutionQueue

- (AMSUniqueExecutionQueue)initWithBlock:(id)block
{
  blockCopy = block;
  v18.receiver = self;
  v18.super_class = AMSUniqueExecutionQueue;
  v5 = [(AMSUniqueExecutionQueue *)&v18 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    block = v5->_block;
    v5->_block = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.AppleMediaServices.AMSUniqueExecutionQueue.completionCallbacks", v8);
    completionCallbacksQueue = v5->_completionCallbacksQueue;
    v5->_completionCallbacksQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.AppleMediaServices.AMSUniqueExecutionQueue.executeBlock", v11);
    executeBlockQueue = v5->_executeBlockQueue;
    v5->_executeBlockQueue = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.AppleMediaServices.AMSUniqueExecutionQueue.executionPromise", v14);
    executionPromiseAccessQueue = v5->_executionPromiseAccessQueue;
    v5->_executionPromiseAccessQueue = v15;
  }

  return v5;
}

- (void)addCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = AMSLogKey();
  objc_initWeak(&location, self);
  executionPromiseAccessQueue = [(AMSUniqueExecutionQueue *)self executionPromiseAccessQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__AMSUniqueExecutionQueue_addCompletionBlock___block_invoke;
  v13[3] = &unk_1E73BCCF0;
  objc_copyWeak(&v16, &location);
  v7 = v5;
  v14 = v7;
  v8 = blockCopy;
  v15 = v8;
  v9 = v13;
  v10 = executionPromiseAccessQueue;
  v11 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_9;
  block[3] = &unk_1E73B36D0;
  v19 = v11;
  v20 = v9;
  v12 = v11;
  dispatch_async(v10, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __46__AMSUniqueExecutionQueue_addCompletionBlock___block_invoke(id *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained executionPromise];
    v5 = +[AMSLogConfig sharedConfig];
    v6 = v5;
    if (v4)
    {
      if (!v5)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      v7 = [v6 OSLogObject];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = objc_loadWeakRetained(a1 + 6);
        v9 = objc_opt_class();
        v10 = a1[4];
        *buf = 138543874;
        *&buf[4] = v9;
        *&buf[12] = 2114;
        *&buf[14] = v10;
        *&buf[22] = 2048;
        v31 = v4;
        _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] addCompletionBlock: - Block is already running. tag = %p", buf, 0x20u);
      }
    }

    else
    {
      if (!v5)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      v16 = [v6 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = objc_loadWeakRetained(a1 + 6);
        v18 = objc_opt_class();
        v19 = a1[4];
        *buf = 138543618;
        *&buf[4] = v18;
        *&buf[12] = 2114;
        *&buf[14] = v19;
        _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] addCompletionBlock: - Block isn't running.", buf, 0x16u);
      }

      v4 = [v3 _createExecutionPromise];
      [v3 _beginExecutingBlockWithPromise:v4];
    }

    v20 = [v3 completionCallbacksQueue];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __46__AMSUniqueExecutionQueue_addCompletionBlock___block_invoke_3;
    v25[3] = &unk_1E73BCCC8;
    v15 = v4;
    v26 = v15;
    objc_copyWeak(&v29, a1 + 6);
    v27 = a1[4];
    v28 = a1[5];
    v21 = v25;
    v22 = v20;
    v23 = AMSLogKey();
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __AMSDispatchAsync_block_invoke_9;
    v31 = &unk_1E73B36D0;
    v32 = v23;
    v33 = v21;
    v24 = v23;
    dispatch_async(v22, buf);

    objc_destroyWeak(&v29);
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
      v13 = a1[4];
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "AMSUniqueExecutionQueue: [%{public}@] Someone is using AMSUniqueExecutionQueue without holding onto the object while it executes.", buf, 0xCu);
    }

    v14 = a1[5];
    v15 = AMSError(0, 0, 0, 0);
    v14[2](v14, 0, v15);
  }
}

void __46__AMSUniqueExecutionQueue_addCompletionBlock___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__AMSUniqueExecutionQueue_addCompletionBlock___block_invoke_2;
  v3[3] = &unk_1E73BCCA0;
  objc_copyWeak(&v6, (a1 + 56));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 addFinishBlock:v3];

  objc_destroyWeak(&v6);
}

void __46__AMSUniqueExecutionQueue_addCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v10 = objc_opt_class();
    v11 = *(a1 + 32);
    v12 = AMSHashIfNeeded(v5);
    v13 = AMSHashIfNeeded(v6);
    v14 = 138544130;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] addCompletionBlock: - Finished. result = %{public}@ | error = %{public}@", &v14, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)addCompletionBlockForSubsequentExecution:(id)execution
{
  executionCopy = execution;
  v5 = AMSLogKey();
  objc_initWeak(&location, self);
  executionPromiseAccessQueue = [(AMSUniqueExecutionQueue *)self executionPromiseAccessQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__AMSUniqueExecutionQueue_addCompletionBlockForSubsequentExecution___block_invoke;
  v13[3] = &unk_1E73BCCF0;
  objc_copyWeak(&v16, &location);
  v7 = v5;
  v14 = v7;
  v8 = executionCopy;
  v15 = v8;
  v9 = v13;
  v10 = executionPromiseAccessQueue;
  v11 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_9;
  block[3] = &unk_1E73B36D0;
  v19 = v11;
  v20 = v9;
  v12 = v11;
  dispatch_async(v10, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __68__AMSUniqueExecutionQueue_addCompletionBlockForSubsequentExecution___block_invoke(id *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained executionPromise];
    v5 = +[AMSLogConfig sharedConfig];
    v6 = v5;
    if (v4)
    {
      if (!v5)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      v7 = [v6 OSLogObject];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = objc_loadWeakRetained(a1 + 6);
        v9 = objc_opt_class();
        v10 = a1[4];
        *buf = 138543618;
        *&buf[4] = v9;
        *&buf[12] = 2114;
        *&buf[14] = v10;
        _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] addCompletionBlockForSubsequentExecution: - Block is already running.", buf, 0x16u);
      }

      v11 = [v3 completionCallbacksQueue];
      v12 = v32;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __68__AMSUniqueExecutionQueue_addCompletionBlockForSubsequentExecution___block_invoke_7;
      v32[3] = &unk_1E73BCCC8;
      v13 = v4;
      v32[4] = v13;
      v14 = &v33;
      objc_copyWeak(&v33, a1 + 6);
      v32[5] = a1[4];
      v32[6] = a1[5];
      v15 = v32;
      v16 = v11;
      v17 = AMSLogKey();
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __AMSDispatchAsync_block_invoke_9;
      v37 = &unk_1E73B36D0;
      v38 = v17;
      v39 = v15;
      v18 = v17;
      dispatch_async(v16, buf);
    }

    else
    {
      if (!v5)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v6 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = objc_loadWeakRetained(a1 + 6);
        v25 = objc_opt_class();
        v26 = a1[4];
        *buf = 138543618;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = v26;
        _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] addCompletionBlockForSubsequentExecution: - Block isn't running.", buf, 0x16u);
      }

      v27 = [v3 _createExecutionPromise];
      [v3 _beginExecutingBlockWithPromise:v27];
      v28 = [v3 completionCallbacksQueue];
      v12 = v34;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __68__AMSUniqueExecutionQueue_addCompletionBlockForSubsequentExecution___block_invoke_6;
      v34[3] = &unk_1E73BCCC8;
      v13 = v27;
      v34[4] = v13;
      v14 = &v35;
      objc_copyWeak(&v35, a1 + 6);
      v34[5] = a1[4];
      v34[6] = a1[5];
      v29 = v34;
      v16 = v28;
      v30 = AMSLogKey();
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __AMSDispatchAsync_block_invoke_9;
      v37 = &unk_1E73B36D0;
      v38 = v30;
      v39 = v29;
      v31 = v30;
      dispatch_async(v16, buf);
    }

    objc_destroyWeak(v14);
  }

  else
  {
    v19 = +[AMSLogConfig sharedConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = a1[4];
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "AMSUniqueExecutionQueue: [%{public}@] Someone is using AMSUniqueExecutionQueue without holding onto the object while it executes.", buf, 0xCu);
    }

    v22 = a1[5];
    v13 = AMSError(0, 0, 0, 0);
    v22[2](v22, 0, v13);
  }
}

void __68__AMSUniqueExecutionQueue_addCompletionBlockForSubsequentExecution___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__AMSUniqueExecutionQueue_addCompletionBlockForSubsequentExecution___block_invoke_2;
  v3[3] = &unk_1E73BCCA0;
  objc_copyWeak(&v6, (a1 + 56));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 addFinishBlock:v3];

  objc_destroyWeak(&v6);
}

void __68__AMSUniqueExecutionQueue_addCompletionBlockForSubsequentExecution___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v10 = objc_opt_class();
    v11 = *(a1 + 32);
    v12 = AMSHashIfNeeded(v5);
    v13 = AMSHashIfNeeded(v6);
    v14 = 138544130;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] addCompletionBlockForSubsequentExecution: - Finished. result = %{public}@ | error = %{public}@", &v14, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void __68__AMSUniqueExecutionQueue_addCompletionBlockForSubsequentExecution___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__AMSUniqueExecutionQueue_addCompletionBlockForSubsequentExecution___block_invoke_2_8;
  v3[3] = &unk_1E73BCCA0;
  objc_copyWeak(&v6, (a1 + 56));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 addFinishBlock:v3];

  objc_destroyWeak(&v6);
}

void __68__AMSUniqueExecutionQueue_addCompletionBlockForSubsequentExecution___block_invoke_2_8(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = AMSSetLogKey(*(a1 + 32));
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_loadWeakRetained((a1 + 48));
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Previous execution finished. Queuing a new execution.", &v9, 0x16u);
  }

  [WeakRetained addCompletionBlock:*(a1 + 40)];
}

- (void)_beginExecutingBlockWithPromise:(id)promise
{
  promiseCopy = promise;
  executeBlockQueue = [(AMSUniqueExecutionQueue *)self executeBlockQueue];
  dispatch_assert_queue_not_V2(executeBlockQueue);

  v6 = AMSLogKey();
  objc_initWeak(&location, self);
  executeBlockQueue2 = [(AMSUniqueExecutionQueue *)self executeBlockQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__AMSUniqueExecutionQueue__beginExecutingBlockWithPromise___block_invoke;
  v14[3] = &unk_1E73B5E28;
  objc_copyWeak(&v17, &location);
  v8 = v6;
  v15 = v8;
  v9 = promiseCopy;
  v16 = v9;
  v10 = v14;
  v11 = executeBlockQueue2;
  v12 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_9;
  block[3] = &unk_1E73B36D0;
  v20 = v12;
  v21 = v10;
  v13 = v12;
  dispatch_async(v11, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __59__AMSUniqueExecutionQueue__beginExecutingBlockWithPromise___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[AMSLogConfig sharedConfig];
  v4 = v3;
  if (WeakRetained)
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 32);
      *buf = 138543618;
      v23 = v6;
      v24 = 2114;
      v25 = v7;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Executing block.", buf, 0x16u);
    }

    v8 = [WeakRetained block];
    v21 = 0;
    v9 = (v8)[2](v8, &v21);
    v10 = v21;

    if (!(v9 | v10))
    {
      v10 = AMSError(0, 0, 0, 0);
    }

    v11 = [WeakRetained completionCallbacksQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__AMSUniqueExecutionQueue__beginExecutingBlockWithPromise___block_invoke_9;
    v17[3] = &unk_1E73B71B0;
    v18 = *(a1 + 40);
    v19 = v9;
    v20 = v10;
    v12 = v10;
    v13 = v9;
    dispatch_async(v11, v17);
  }

  else
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v4 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 138543362;
      v23 = v15;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "AMSUniqueExecutionQueue: [%{public}@] Someone is using AMSUniqueExecutionQueue without holding onto the object while it executes.", buf, 0xCu);
    }

    v16 = *(a1 + 40);
    v12 = AMSError(0, 0, 0, 0);
    [v16 finishWithError:v12];
  }
}

- (id)_createExecutionPromise
{
  executionPromiseAccessQueue = [(AMSUniqueExecutionQueue *)self executionPromiseAccessQueue];
  dispatch_assert_queue_V2(executionPromiseAccessQueue);

  v4 = objc_alloc_init(AMSMutablePromise);
  [(AMSUniqueExecutionQueue *)self setExecutionPromise:v4];

  objc_initWeak(&location, self);
  executionPromise = [(AMSUniqueExecutionQueue *)self executionPromise];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __50__AMSUniqueExecutionQueue__createExecutionPromise__block_invoke;
  v11 = &unk_1E73BCD18;
  objc_copyWeak(&v12, &location);
  [executionPromise addFinishBlock:&v8];

  v6 = [(AMSUniqueExecutionQueue *)self executionPromise:v8];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

void __50__AMSUniqueExecutionQueue__createExecutionPromise__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained executionPromiseAccessQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__AMSUniqueExecutionQueue__createExecutionPromise__block_invoke_11;
    v16[3] = &unk_1E73B4418;
    objc_copyWeak(&v17, (a1 + 32));
    v10 = v16;
    v11 = v9;
    v12 = AMSLogKey();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AMSDispatchAsync_block_invoke_9;
    block[3] = &unk_1E73B36D0;
    v19 = v12;
    v20 = v10;
    v13 = v12;
    dispatch_async(v11, block);

    objc_destroyWeak(&v17);
  }

  else
  {
    v14 = +[AMSLogConfig sharedConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "AMSUniqueExecutionQueue: Someone is using AMSUniqueExecutionQueue without holding onto the object while it executes.", block, 2u);
    }
  }
}

void __50__AMSUniqueExecutionQueue__createExecutionPromise__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExecutionPromise:0];
}

@end