@interface AMSTask
+ (AMSThreadSafeSet)taskCache;
- (AMSTask)init;
- (BOOL)cancel;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)isRunning;
- (id)performBinaryTaskWithBlock:(id)block;
- (id)performTaskWithBlock:(id)block;
- (id)performTaskWithPromiseBlock:(id)block;
@end

@implementation AMSTask

- (AMSTask)init
{
  v3.receiver = self;
  v3.super_class = AMSTask;
  result = [(AMSTask *)&v3 init];
  if (result)
  {
    result->_promiseAccessLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

uint64_t __20__AMSTask_taskCache__block_invoke()
{
  qword_1ED6E3158 = objc_alloc_init(AMSThreadSafeSet);

  return MEMORY[0x1EEE66BB8]();
}

+ (AMSThreadSafeSet)taskCache
{
  if (_MergedGlobals_151 != -1)
  {
    dispatch_once(&_MergedGlobals_151, &__block_literal_global_138);
  }

  v3 = qword_1ED6E3158;

  return v3;
}

- (BOOL)isFinished
{
  os_unfair_lock_lock_with_options();
  promise = [(AMSTask *)self promise];
  isFinished = [promise isFinished];

  os_unfair_lock_unlock(&self->_promiseAccessLock);
  return isFinished;
}

- (BOOL)isRunning
{
  os_unfair_lock_lock_with_options();
  promise = [(AMSTask *)self promise];
  if (promise)
  {
    promise2 = [(AMSTask *)self promise];
    v5 = [promise2 isFinished] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  os_unfair_lock_unlock(&self->_promiseAccessLock);
  return v5;
}

- (BOOL)isCancelled
{
  os_unfair_lock_lock_with_options();
  promise = [(AMSTask *)self promise];
  isCancelled = [promise isCancelled];

  os_unfair_lock_unlock(&self->_promiseAccessLock);
  return isCancelled;
}

- (BOOL)cancel
{
  os_unfair_lock_lock(&self->_promiseAccessLock);
  v3 = +[AMSLogConfig sharedActionConfig];
  v4 = v3;
  if (!v3)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  v6 = os_signpost_enabled(oSLogObject);

  if (!v3)
  {
  }

  if (v6)
  {
    v7 = +[AMSLogConfig sharedActionConfig];
    v8 = v7;
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v8 OSLogObject];
    v10 = os_signpost_id_make_with_pointer(oSLogObject2, self);

    if (!v7)
    {
    }

    v11 = +[AMSLogConfig sharedActionConfig];
    v12 = v11;
    if (v11)
    {
      oSLogObject3 = [v11 OSLogObject];
    }

    else
    {
      v14 = +[AMSLogConfig sharedConfig];
      oSLogObject3 = [v14 OSLogObject];
    }

    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(oSLogObject3))
    {
      *v18 = 0;
      _os_signpost_emit_with_name_impl(&dword_192869000, oSLogObject3, OS_SIGNPOST_EVENT, v10, "Task Cancel", "Cancelling task", v18, 2u);
    }
  }

  promise = [(AMSTask *)self promise];
  cancel = [promise cancel];

  os_unfair_lock_unlock(&self->_promiseAccessLock);
  return cancel;
}

- (id)performBinaryTaskWithBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__AMSTask_performBinaryTaskWithBlock___block_invoke;
  v9[3] = &unk_1E73BC920;
  v10 = blockCopy;
  v5 = blockCopy;
  v6 = [(AMSTask *)self performTaskWithBlock:v9];
  binaryPromiseAdapter = [v6 binaryPromiseAdapter];

  return binaryPromiseAdapter;
}

id __38__AMSTask_performBinaryTaskWithBlock___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 16))())
  {
    v1 = [MEMORY[0x1E696AD98] numberWithBool:1];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)performTaskWithBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__AMSTask_performTaskWithBlock___block_invoke;
  v8[3] = &unk_1E73BC948;
  v9 = blockCopy;
  v5 = blockCopy;
  v6 = [(AMSTask *)self performTaskWithPromiseBlock:v8];

  return v6;
}

id __32__AMSTask_performTaskWithBlock___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = 0;
  if (v1)
  {
    [AMSPromise promiseWithResult:v1];
  }

  else
  {
    [AMSPromise promiseWithError:v2];
  }
  v3 = ;

  return v3;
}

- (id)performTaskWithPromiseBlock:(id)block
{
  blockCopy = block;
  v5 = AMSLogKey();
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  os_unfair_lock_lock_with_options();
  promise = [(AMSTask *)self promise];
  if (promise)
  {
    os_unfair_lock_unlock(&self->_promiseAccessLock);
  }

  else
  {
    v7 = objc_alloc_init(AMSMutablePromise);
    [(AMSTask *)self setPromise:v7];
    os_unfair_lock_unlock(&self->_promiseAccessLock);
    taskCache = [objc_opt_class() taskCache];
    [taskCache addObject:self];

    aBlock = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __39__AMSTask_performTaskWithPromiseBlock___block_invoke;
    v24 = &unk_1E73BC998;
    v29 = v30;
    v25 = v5;
    selfCopy = self;
    promise = v7;
    v27 = promise;
    v28 = blockCopy;
    v9 = _Block_copy(&aBlock);
    if ([(AMSTask *)self runMode]== 1)
    {
      v9[2](v9);
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.AppleMediaServices.%@.performTask", objc_opt_class(), aBlock, v22, v23, v24, v25, selfCopy, v27];
      uTF8String = [v10 UTF8String];
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create(uTF8String, v12);
      [(AMSTask *)self setPerformTaskQueue:v13];

      performTaskQueue = [(AMSTask *)self performTaskQueue];
      v15 = v9;
      v16 = performTaskQueue;
      v17 = AMSLogKey();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __AMSDispatchAsync_block_invoke_8;
      block[3] = &unk_1E73B36D0;
      v32 = v17;
      v33 = v15;
      v18 = v17;
      v19 = v15;
      dispatch_async(v16, block);
    }
  }

  _Block_object_dispose(v30, 8);

  return promise;
}

void __39__AMSTask_performTaskWithPromiseBlock___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = AMSSetLogKey(*(a1 + 32));
  v3 = +[AMSLogConfig sharedActionConfig];
  v4 = v3;
  if (!v3)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  v6 = os_signpost_enabled(v5);

  if (!v3)
  {
  }

  if (v6)
  {
    v7 = +[AMSLogConfig sharedActionConfig];
    v8 = v7;
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    *(*(*(a1 + 64) + 8) + 24) = os_signpost_id_make_with_pointer(v9, *(a1 + 40));

    if (!v7)
    {
    }

    v10 = +[AMSLogConfig sharedActionConfig];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 OSLogObject];
    }

    else
    {
      v13 = +[AMSLogConfig sharedConfig];
      v12 = [v13 OSLogObject];
    }

    v14 = *(*(*(a1 + 64) + 8) + 24);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 138543362;
      v32 = objc_opt_class();
      _os_signpost_emit_with_name_impl(&dword_192869000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Task", "%{public}@", buf, 0xCu);
    }
  }

  v15 = [*(a1 + 40) activity];
  [v15 activate];

  v16 = [*(a1 + 40) activity];
  [v16 completeAfter:*(a1 + 48)];

  v17 = +[AMSLogConfig sharedActionConfig];
  if (!v17)
  {
    v17 = +[AMSLogConfig sharedConfig];
  }

  v18 = [v17 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v20 = AMSLogKey();
    *buf = 138543618;
    v32 = v19;
    v33 = 2114;
    v34 = v20;
    _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] === Starting ===", buf, 0x16u);
  }

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.AppleMediaServices.%@", objc_opt_class()];
  v22 = [AMSKeepAlive keepAliveWithName:v21 style:3];
  v23 = (*(*(a1 + 56) + 16))();
  objc_initWeak(buf, v23);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __39__AMSTask_performTaskWithPromiseBlock___block_invoke_13;
  v26[3] = &unk_1E73BC970;
  v24 = *(a1 + 40);
  v29 = *(a1 + 64);
  v26[4] = v24;
  v27 = *(a1 + 48);
  objc_copyWeak(&v30, buf);
  v25 = v22;
  v28 = v25;
  [v23 addFinishBlock:v26];

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);
}

void __39__AMSTask_performTaskWithPromiseBlock___block_invoke_13(uint64_t a1, uint64_t a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedActionConfig];
  v7 = v6;
  if (a2)
  {
    v8 = v6;
    if (!v6)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    v10 = os_signpost_enabled(v9);

    if (!v7)
    {
    }

    if (v10)
    {
      v11 = +[AMSLogConfig sharedActionConfig];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 OSLogObject];
      }

      else
      {
        v20 = +[AMSLogConfig sharedConfig];
        v13 = [v20 OSLogObject];
      }

      v21 = *(*(*(a1 + 56) + 8) + 24);
      if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        LOWORD(v39) = 0;
        _os_signpost_emit_with_name_impl(&dword_192869000, v13, OS_SIGNPOST_INTERVAL_END, v21, "Task", "Finished", &v39, 2u);
      }
    }

    v22 = +[AMSLogConfig sharedActionConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      v39 = 138543618;
      v40 = v24;
      v41 = 2114;
      v42 = v25;
      _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] === Finished ===", &v39, 0x16u);
LABEL_40:
    }
  }

  else
  {
    v14 = v6;
    if (!v6)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    v16 = os_signpost_enabled(v15);

    if (!v7)
    {
    }

    if (v16)
    {
      v17 = +[AMSLogConfig sharedActionConfig];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 OSLogObject];
      }

      else
      {
        v26 = +[AMSLogConfig sharedConfig];
        v19 = [v26 OSLogObject];
      }

      v27 = *(*(*(a1 + 56) + 8) + 24);
      if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        v28 = AMSHashIfNeeded(v5);
        v39 = 138543362;
        v40 = v28;
        _os_signpost_emit_with_name_impl(&dword_192869000, v19, OS_SIGNPOST_EVENT, v27, "Error occurred", "%{public}@", &v39, 0xCu);
      }

      v29 = +[AMSLogConfig sharedActionConfig];
      v30 = v29;
      if (v29)
      {
        v31 = [v29 OSLogObject];
      }

      else
      {
        v32 = +[AMSLogConfig sharedConfig];
        v31 = [v32 OSLogObject];
      }

      v33 = *(*(*(a1 + 56) + 8) + 24);
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        LOWORD(v39) = 0;
        _os_signpost_emit_with_name_impl(&dword_192869000, v31, OS_SIGNPOST_INTERVAL_END, v33, "Task", "Failed", &v39, 2u);
      }
    }

    v22 = +[AMSLogConfig sharedActionConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      v25 = AMSLogKey();
      v35 = AMSHashIfNeeded(v5);
      v39 = 138543874;
      v40 = v34;
      v41 = 2114;
      v42 = v25;
      v43 = 2114;
      v44 = v35;
      _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] === Failed === -> error = %{public}@", &v39, 0x20u);

      goto LABEL_40;
    }
  }

  v36 = [objc_opt_class() taskCache];
  v37 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [v37 finishWithPromise:WeakRetained];

  [v36 removeObject:*(a1 + 32)];
  [*(a1 + 48) invalidate];
}

@end