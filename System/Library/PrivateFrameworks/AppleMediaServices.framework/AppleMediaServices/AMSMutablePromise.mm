@interface AMSMutablePromise
+ (AMSMutablePromise)promiseWithAll:(id)all;
+ (AMSMutablePromise)promiseWithAll:(id)all timeout:(double)timeout;
+ (AMSMutablePromise)promiseWithAny:(id)any;
+ (AMSMutablePromise)promiseWithAny:(id)any timeout:(double)timeout;
+ (AMSMutablePromise)promiseWithFlattenedPromises:(id)promises;
+ (BOOL)_finishPromise:(id)promise withResult:(id)result error:(id)error logDuplicateFinishes:(BOOL)finishes;
+ (BOOL)cancelPromise:(id)promise;
+ (BOOL)finishPromise:(id)promise withPromise:(id)withPromise;
+ (void)startTimeoutForPromise:(id)promise timeout:(double)timeout;
- (AMSMutablePromise)initWithTimeout:(double)timeout;
- (AMSMutablePromise)promiseWithTimeout:(double)timeout;
- (BOOL)cancel;
- (BOOL)finishWithPromise:(id)promise;
- (BOOL)finishWithPromiseResult:(id)result;
- (BOOL)finishWithResult:(id)result error:(id)error logDuplicateFinishes:(BOOL)finishes;
- (id)_mutableBinaryPromiseWrappingBinaryPromise:(id)promise;
- (id)_mutablePromiseWrappingPromise:(id)promise;
- (id)catchWithBinaryPromiseBlock:(id)block;
- (id)catchWithBlock:(id)block;
- (id)continueWithBinaryPromiseBlock:(id)block;
- (id)continueWithBlock:(id)block;
- (id)thenWithBinaryPromiseBlock:(id)block;
- (id)thenWithBlock:(id)block;
- (void)startTimeout:(double)timeout;
@end

@implementation AMSMutablePromise

- (BOOL)cancel
{
  v3 = objc_opt_class();

  return [v3 cancelPromise:self];
}

- (AMSMutablePromise)initWithTimeout:(double)timeout
{
  v4 = [(AMSPromise *)self init];
  v5 = v4;
  if (v4)
  {
    [(AMSMutablePromise *)v4 startTimeout:timeout];
  }

  return v5;
}

- (void)startTimeout:(double)timeout
{
  v5 = objc_opt_class();

  [v5 startTimeoutForPromise:self timeout:timeout];
}

+ (void)startTimeoutForPromise:(id)promise timeout:(double)timeout
{
  promiseCopy = promise;
  if (timeout > 0.0)
  {
    objc_initWeak(&location, promiseCopy);
    v7 = dispatch_get_global_queue(17, 0);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__AMSMutablePromise_startTimeoutForPromise_timeout___block_invoke;
    v13[3] = &unk_1E73B9368;
    objc_copyWeak(v14, &location);
    v14[1] = self;
    v8 = v7;
    v9 = v13;
    v10 = AMSLogKey();
    if (timeout * 1000000000.0 <= 9.22337204e18)
    {
      v11 = dispatch_time(0, (timeout * 1000000000.0));
    }

    else
    {
      v11 = -1;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AMSDispatchAfter_block_invoke_4;
    block[3] = &unk_1E73B36D0;
    v17 = v10;
    v18 = v9;
    v12 = v10;
    dispatch_after(v11, v8, block);

    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }
}

void __52__AMSMutablePromise_startTimeoutForPromise_timeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = AMSError(1, @"Promise Timed Out", 0, 0);
    [*(a1 + 40) _finishPromise:v4 withResult:0 error:v3 logDuplicateFinishes:0];

    WeakRetained = v4;
  }
}

+ (AMSMutablePromise)promiseWithAll:(id)all
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AMSMutablePromise;
  v3 = objc_msgSendSuper2(&v5, sel_promiseWithAll_, all);

  return v3;
}

+ (AMSMutablePromise)promiseWithAll:(id)all timeout:(double)timeout
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AMSMutablePromise;
  v4 = objc_msgSendSuper2(&v6, sel_promiseWithAll_timeout_, all, timeout);

  return v4;
}

+ (AMSMutablePromise)promiseWithAny:(id)any
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AMSMutablePromise;
  v3 = objc_msgSendSuper2(&v5, sel_promiseWithAny_, any);

  return v3;
}

+ (AMSMutablePromise)promiseWithAny:(id)any timeout:(double)timeout
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AMSMutablePromise;
  v4 = objc_msgSendSuper2(&v6, sel_promiseWithAny_timeout_, any, timeout);

  return v4;
}

+ (AMSMutablePromise)promiseWithFlattenedPromises:(id)promises
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AMSMutablePromise;
  v3 = objc_msgSendSuper2(&v5, sel_promiseWithFlattenedPromises_, promises);

  return v3;
}

- (AMSMutablePromise)promiseWithTimeout:(double)timeout
{
  v5.receiver = self;
  v5.super_class = AMSMutablePromise;
  v3 = [(AMSPromise *)&v5 promiseWithTimeout:timeout];

  return v3;
}

- (id)catchWithBinaryPromiseBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = AMSMutablePromise;
  v4 = [(AMSPromise *)&v7 catchWithBinaryPromiseBlock:block];
  v5 = [(AMSMutablePromise *)self _mutableBinaryPromiseWrappingBinaryPromise:v4];

  return v5;
}

- (id)catchWithBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = AMSMutablePromise;
  v4 = [(AMSPromise *)&v7 catchWithBlock:block];
  v5 = [(AMSMutablePromise *)self _mutablePromiseWrappingPromise:v4];

  return v5;
}

- (id)continueWithBinaryPromiseBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = AMSMutablePromise;
  v4 = [(AMSPromise *)&v7 continueWithBinaryPromiseBlock:block];
  v5 = [(AMSMutablePromise *)self _mutableBinaryPromiseWrappingBinaryPromise:v4];

  return v5;
}

- (id)continueWithBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = AMSMutablePromise;
  v4 = [(AMSPromise *)&v7 continueWithBlock:block];
  v5 = [(AMSMutablePromise *)self _mutablePromiseWrappingPromise:v4];

  return v5;
}

- (id)thenWithBinaryPromiseBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = AMSMutablePromise;
  v4 = [(AMSPromise *)&v7 thenWithBinaryPromiseBlock:block];
  v5 = [(AMSMutablePromise *)self _mutableBinaryPromiseWrappingBinaryPromise:v4];

  return v5;
}

- (id)thenWithBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = AMSMutablePromise;
  v4 = [(AMSPromise *)&v7 thenWithBlock:block];
  v5 = [(AMSMutablePromise *)self _mutablePromiseWrappingPromise:v4];

  return v5;
}

- (id)_mutableBinaryPromiseWrappingBinaryPromise:(id)promise
{
  promiseCopy = promise;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = promiseCopy;
  }

  else
  {
    v4 = objc_alloc_init(AMSMutableBinaryPromise);
    [(AMSMutableBinaryPromise *)v4 finishWithPromise:promiseCopy];
  }

  return v4;
}

- (id)_mutablePromiseWrappingPromise:(id)promise
{
  promiseCopy = promise;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = promiseCopy;
  }

  else
  {
    v4 = objc_alloc_init(AMSMutablePromise);
    [(AMSMutablePromise *)v4 finishWithPromise:promiseCopy];
  }

  return v4;
}

- (BOOL)finishWithPromise:(id)promise
{
  promiseCopy = promise;
  LOBYTE(self) = [objc_opt_class() finishPromise:self withPromise:promiseCopy];

  return self;
}

- (BOOL)finishWithPromiseResult:(id)result
{
  resultCopy = result;
  result = [resultCopy result];
  error = [resultCopy error];

  LOBYTE(self) = [(AMSMutablePromise *)self finishWithResult:result error:error logDuplicateFinishes:1];
  return self;
}

- (BOOL)finishWithResult:(id)result error:(id)error logDuplicateFinishes:(BOOL)finishes
{
  finishesCopy = finishes;
  errorCopy = error;
  resultCopy = result;
  LOBYTE(finishesCopy) = [objc_opt_class() _finishPromise:self withResult:resultCopy error:errorCopy logDuplicateFinishes:finishesCopy];

  return finishesCopy;
}

+ (BOOL)cancelPromise:(id)promise
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A250];
  promiseCopy = promise;
  v7 = [v4 errorWithDomain:v5 code:3072 userInfo:0];
  LOBYTE(self) = [self finishPromise:promiseCopy withResult:0 error:v7];

  return self;
}

+ (BOOL)finishPromise:(id)promise withPromise:(id)withPromise
{
  promiseCopy = promise;
  withPromiseCopy = withPromise;
  isFinished = [promiseCopy isFinished];
  if ((isFinished & 1) == 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__AMSMutablePromise_finishPromise_withPromise___block_invoke;
    v12[3] = &unk_1E73B2E78;
    v8 = promiseCopy;
    v13 = v8;
    [withPromiseCopy addSuccessBlock:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__AMSMutablePromise_finishPromise_withPromise___block_invoke_2;
    v10[3] = &unk_1E73B34B8;
    v11 = v8;
    [withPromiseCopy addErrorBlock:v10];
  }

  return isFinished ^ 1;
}

+ (BOOL)_finishPromise:(id)promise withResult:(id)result error:(id)error logDuplicateFinishes:(BOOL)finishes
{
  finishesCopy = finishes;
  v30 = *MEMORY[0x1E69E9840];
  promiseCopy = promise;
  resultCopy = result;
  errorCopy = error;
  v13 = errorCopy;
  if (resultCopy && errorCopy)
  {
    v14 = +[AMSLogConfig sharedPromiseConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v24 = 138543874;
      selfCopy3 = self;
      v26 = 2114;
      v27 = resultCopy;
      v28 = 2114;
      v29 = v13;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Someone is finishing a promise with both a result and an error. This will result in both the success and error blocks being called. result = %{public}@ error = %{public}@", &v24, 0x20u);
    }
  }

  else if (!(resultCopy | errorCopy))
  {
    v16 = +[AMSLogConfig sharedPromiseConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v24 = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Someone is finishing a promise with neither a result nor an error.", &v24, 0xCu);
    }

    v13 = AMSError(2, @"Invalid Parameter", @"Some attempted to finish a promise without a result/error.", 0);
  }

  os_unfair_lock_lock_with_options();
  isFinishedWithLock = [(os_unfair_lock_s *)promiseCopy isFinishedWithLock];
  if (isFinishedWithLock)
  {
    if (finishesCopy)
    {
      v19 = +[AMSLogConfig sharedPromiseConfig];
      if (!v19)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v19 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
      {
        v24 = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEBUG, "%{public}@: Someone is attempting to finish or cancel a finished AMSPromise.", &v24, 0xCu);
      }
    }

    os_unfair_lock_unlock(promiseCopy + 2);
  }

  else
  {
    v21 = [[AMSPromiseResult alloc] initWithResult:resultCopy error:v13];
    [(os_unfair_lock_s *)promiseCopy setPromiseResult:v21];
    condition = [(os_unfair_lock_s *)promiseCopy condition];
    os_unfair_lock_unlock(promiseCopy + 2);
    if (condition)
    {
      [condition lock];
      [(os_unfair_lock_s *)promiseCopy setConditionHasSignaled:1];
      [condition broadcast];
      [condition unlock];
    }

    [(os_unfair_lock_s *)promiseCopy flushCompletionBlocksWithResult:v21];
    [(os_unfair_lock_s *)promiseCopy stopRetainingSelf];
  }

  return isFinishedWithLock ^ 1;
}

@end