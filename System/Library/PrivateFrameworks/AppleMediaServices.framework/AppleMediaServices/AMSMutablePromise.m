@interface AMSMutablePromise
+ (AMSMutablePromise)promiseWithAll:(id)a3;
+ (AMSMutablePromise)promiseWithAll:(id)a3 timeout:(double)a4;
+ (AMSMutablePromise)promiseWithAny:(id)a3;
+ (AMSMutablePromise)promiseWithAny:(id)a3 timeout:(double)a4;
+ (AMSMutablePromise)promiseWithFlattenedPromises:(id)a3;
+ (BOOL)_finishPromise:(id)a3 withResult:(id)a4 error:(id)a5 logDuplicateFinishes:(BOOL)a6;
+ (BOOL)cancelPromise:(id)a3;
+ (BOOL)finishPromise:(id)a3 withPromise:(id)a4;
+ (void)startTimeoutForPromise:(id)a3 timeout:(double)a4;
- (AMSMutablePromise)initWithTimeout:(double)a3;
- (AMSMutablePromise)promiseWithTimeout:(double)a3;
- (BOOL)cancel;
- (BOOL)finishWithPromise:(id)a3;
- (BOOL)finishWithPromiseResult:(id)a3;
- (BOOL)finishWithResult:(id)a3 error:(id)a4 logDuplicateFinishes:(BOOL)a5;
- (id)_mutableBinaryPromiseWrappingBinaryPromise:(id)a3;
- (id)_mutablePromiseWrappingPromise:(id)a3;
- (id)catchWithBinaryPromiseBlock:(id)a3;
- (id)catchWithBlock:(id)a3;
- (id)continueWithBinaryPromiseBlock:(id)a3;
- (id)continueWithBlock:(id)a3;
- (id)thenWithBinaryPromiseBlock:(id)a3;
- (id)thenWithBlock:(id)a3;
- (void)startTimeout:(double)a3;
@end

@implementation AMSMutablePromise

- (BOOL)cancel
{
  v3 = objc_opt_class();

  return [v3 cancelPromise:self];
}

- (AMSMutablePromise)initWithTimeout:(double)a3
{
  v4 = [(AMSPromise *)self init];
  v5 = v4;
  if (v4)
  {
    [(AMSMutablePromise *)v4 startTimeout:a3];
  }

  return v5;
}

- (void)startTimeout:(double)a3
{
  v5 = objc_opt_class();

  [v5 startTimeoutForPromise:self timeout:a3];
}

+ (void)startTimeoutForPromise:(id)a3 timeout:(double)a4
{
  v6 = a3;
  if (a4 > 0.0)
  {
    objc_initWeak(&location, v6);
    v7 = dispatch_get_global_queue(17, 0);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__AMSMutablePromise_startTimeoutForPromise_timeout___block_invoke;
    v13[3] = &unk_1E73B9368;
    objc_copyWeak(v14, &location);
    v14[1] = a1;
    v8 = v7;
    v9 = v13;
    v10 = AMSLogKey();
    if (a4 * 1000000000.0 <= 9.22337204e18)
    {
      v11 = dispatch_time(0, (a4 * 1000000000.0));
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

+ (AMSMutablePromise)promiseWithAll:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AMSMutablePromise;
  v3 = objc_msgSendSuper2(&v5, sel_promiseWithAll_, a3);

  return v3;
}

+ (AMSMutablePromise)promiseWithAll:(id)a3 timeout:(double)a4
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AMSMutablePromise;
  v4 = objc_msgSendSuper2(&v6, sel_promiseWithAll_timeout_, a3, a4);

  return v4;
}

+ (AMSMutablePromise)promiseWithAny:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AMSMutablePromise;
  v3 = objc_msgSendSuper2(&v5, sel_promiseWithAny_, a3);

  return v3;
}

+ (AMSMutablePromise)promiseWithAny:(id)a3 timeout:(double)a4
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AMSMutablePromise;
  v4 = objc_msgSendSuper2(&v6, sel_promiseWithAny_timeout_, a3, a4);

  return v4;
}

+ (AMSMutablePromise)promiseWithFlattenedPromises:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AMSMutablePromise;
  v3 = objc_msgSendSuper2(&v5, sel_promiseWithFlattenedPromises_, a3);

  return v3;
}

- (AMSMutablePromise)promiseWithTimeout:(double)a3
{
  v5.receiver = self;
  v5.super_class = AMSMutablePromise;
  v3 = [(AMSPromise *)&v5 promiseWithTimeout:a3];

  return v3;
}

- (id)catchWithBinaryPromiseBlock:(id)a3
{
  v7.receiver = self;
  v7.super_class = AMSMutablePromise;
  v4 = [(AMSPromise *)&v7 catchWithBinaryPromiseBlock:a3];
  v5 = [(AMSMutablePromise *)self _mutableBinaryPromiseWrappingBinaryPromise:v4];

  return v5;
}

- (id)catchWithBlock:(id)a3
{
  v7.receiver = self;
  v7.super_class = AMSMutablePromise;
  v4 = [(AMSPromise *)&v7 catchWithBlock:a3];
  v5 = [(AMSMutablePromise *)self _mutablePromiseWrappingPromise:v4];

  return v5;
}

- (id)continueWithBinaryPromiseBlock:(id)a3
{
  v7.receiver = self;
  v7.super_class = AMSMutablePromise;
  v4 = [(AMSPromise *)&v7 continueWithBinaryPromiseBlock:a3];
  v5 = [(AMSMutablePromise *)self _mutableBinaryPromiseWrappingBinaryPromise:v4];

  return v5;
}

- (id)continueWithBlock:(id)a3
{
  v7.receiver = self;
  v7.super_class = AMSMutablePromise;
  v4 = [(AMSPromise *)&v7 continueWithBlock:a3];
  v5 = [(AMSMutablePromise *)self _mutablePromiseWrappingPromise:v4];

  return v5;
}

- (id)thenWithBinaryPromiseBlock:(id)a3
{
  v7.receiver = self;
  v7.super_class = AMSMutablePromise;
  v4 = [(AMSPromise *)&v7 thenWithBinaryPromiseBlock:a3];
  v5 = [(AMSMutablePromise *)self _mutableBinaryPromiseWrappingBinaryPromise:v4];

  return v5;
}

- (id)thenWithBlock:(id)a3
{
  v7.receiver = self;
  v7.super_class = AMSMutablePromise;
  v4 = [(AMSPromise *)&v7 thenWithBlock:a3];
  v5 = [(AMSMutablePromise *)self _mutablePromiseWrappingPromise:v4];

  return v5;
}

- (id)_mutableBinaryPromiseWrappingBinaryPromise:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = objc_alloc_init(AMSMutableBinaryPromise);
    [(AMSMutableBinaryPromise *)v4 finishWithPromise:v3];
  }

  return v4;
}

- (id)_mutablePromiseWrappingPromise:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = objc_alloc_init(AMSMutablePromise);
    [(AMSMutablePromise *)v4 finishWithPromise:v3];
  }

  return v4;
}

- (BOOL)finishWithPromise:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [objc_opt_class() finishPromise:self withPromise:v4];

  return self;
}

- (BOOL)finishWithPromiseResult:(id)a3
{
  v4 = a3;
  v5 = [v4 result];
  v6 = [v4 error];

  LOBYTE(self) = [(AMSMutablePromise *)self finishWithResult:v5 error:v6 logDuplicateFinishes:1];
  return self;
}

- (BOOL)finishWithResult:(id)a3 error:(id)a4 logDuplicateFinishes:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  LOBYTE(v5) = [objc_opt_class() _finishPromise:self withResult:v9 error:v8 logDuplicateFinishes:v5];

  return v5;
}

+ (BOOL)cancelPromise:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A250];
  v6 = a3;
  v7 = [v4 errorWithDomain:v5 code:3072 userInfo:0];
  LOBYTE(a1) = [a1 finishPromise:v6 withResult:0 error:v7];

  return a1;
}

+ (BOOL)finishPromise:(id)a3 withPromise:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 isFinished];
  if ((v7 & 1) == 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__AMSMutablePromise_finishPromise_withPromise___block_invoke;
    v12[3] = &unk_1E73B2E78;
    v8 = v5;
    v13 = v8;
    [v6 addSuccessBlock:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__AMSMutablePromise_finishPromise_withPromise___block_invoke_2;
    v10[3] = &unk_1E73B34B8;
    v11 = v8;
    [v6 addErrorBlock:v10];
  }

  return v7 ^ 1;
}

+ (BOOL)_finishPromise:(id)a3 withResult:(id)a4 error:(id)a5 logDuplicateFinishes:(BOOL)a6
{
  v6 = a6;
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v11 && v12)
  {
    v14 = +[AMSLogConfig sharedPromiseConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = 138543874;
      v25 = a1;
      v26 = 2114;
      v27 = v11;
      v28 = 2114;
      v29 = v13;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Someone is finishing a promise with both a result and an error. This will result in both the success and error blocks being called. result = %{public}@ error = %{public}@", &v24, 0x20u);
    }
  }

  else if (!(v11 | v12))
  {
    v16 = +[AMSLogConfig sharedPromiseConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v24 = 138543362;
      v25 = a1;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Someone is finishing a promise with neither a result nor an error.", &v24, 0xCu);
    }

    v13 = AMSError(2, @"Invalid Parameter", @"Some attempted to finish a promise without a result/error.", 0);
  }

  os_unfair_lock_lock_with_options();
  v18 = [(os_unfair_lock_s *)v10 isFinishedWithLock];
  if (v18)
  {
    if (v6)
    {
      v19 = +[AMSLogConfig sharedPromiseConfig];
      if (!v19)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      v20 = [v19 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v24 = 138543362;
        v25 = a1;
        _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEBUG, "%{public}@: Someone is attempting to finish or cancel a finished AMSPromise.", &v24, 0xCu);
      }
    }

    os_unfair_lock_unlock(v10 + 2);
  }

  else
  {
    v21 = [[AMSPromiseResult alloc] initWithResult:v11 error:v13];
    [(os_unfair_lock_s *)v10 setPromiseResult:v21];
    v22 = [(os_unfair_lock_s *)v10 condition];
    os_unfair_lock_unlock(v10 + 2);
    if (v22)
    {
      [v22 lock];
      [(os_unfair_lock_s *)v10 setConditionHasSignaled:1];
      [v22 broadcast];
      [v22 unlock];
    }

    [(os_unfair_lock_s *)v10 flushCompletionBlocksWithResult:v21];
    [(os_unfair_lock_s *)v10 stopRetainingSelf];
  }

  return v18 ^ 1;
}

@end