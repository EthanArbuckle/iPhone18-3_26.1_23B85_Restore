@interface AMSLazyPromise
- (AMSLazyPromise)initWithBlock:(id)a3;
- (AMSLazyPromise)initWithPromiseResult:(id)a3;
- (AMSLazyPromise)initWithTimeout:(double)a3 block:(id)a4;
- (BOOL)_runBlock;
- (BOOL)executedBlock;
- (id)resultBeforeDate:(id)a3 error:(id *)a4;
- (id)resultWithError:(id *)a3;
- (id)resultWithTimeout:(double)a3 error:(id *)a4;
- (id)valueFromAddingBlock:(id)a3 orCallWithResult:(id)a4;
- (void)addBlock:(id)a3 orCallWithResult:(id)a4;
- (void)addErrorBlock:(id)a3;
- (void)addFinishBlock:(id)a3;
- (void)addSuccessBlock:(id)a3;
@end

@implementation AMSLazyPromise

- (BOOL)_runBlock
{
  os_unfair_lock_lock_with_options();
  if ([(AMSPromise *)self isFinishedWithLock]|| *(&self->_executedBlock + 4))
  {
    os_unfair_lock_unlock(&self->super._stateLock);
    return 0;
  }

  else
  {
    v3 = 1;
    *(&self->_executedBlock + 4) = 1;
    os_unfair_lock_unlock(&self->super._stateLock);
    [(AMSLazyPromise *)self timeout];
    [AMSMutablePromise startTimeoutForPromise:self timeout:?];
    v4 = [(AMSLazyPromise *)self block];
    (v4)[2](v4, self);
  }

  return v3;
}

- (AMSLazyPromise)initWithBlock:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v26.receiver = self;
  v26.super_class = AMSLazyPromise;
  v6 = [(AMSPromise *)&v26 init];
  v7 = v6;
  if (v6)
  {
    v6->_timeout = 0.0;
    if (v5)
    {
      v8 = [v5 copy];
      block = v7->_block;
      v7->_block = v8;
    }

    else
    {
      v10 = +[AMSUnitTests isRunningUnitTests];
      v11 = +[AMSLogConfig sharedPromiseConfig];
      v12 = v11;
      if (v10)
      {
        if (!v11)
        {
          v12 = +[AMSLogConfig sharedConfig];
        }

        v13 = [v12 OSLogObject];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = AMSLogKey();
          v15 = MEMORY[0x1E696AEC0];
          v16 = objc_opt_class();
          v17 = v16;
          if (v14)
          {
            v3 = AMSLogKey();
            [v15 stringWithFormat:@"%@: [%@] ", v17, v3];
          }

          else
          {
            [v15 stringWithFormat:@"%@: ", v16];
          }
          v18 = ;
          *buf = 138543362;
          v28 = v18;
          _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@An AMSLazyPromise instance was unexpectedly initialized without a block. It will fail immediately with an error.", buf, 0xCu);
          if (v14)
          {

            v18 = v3;
          }
        }

        v12 = [MEMORY[0x1E696AD88] defaultCenter];
        v19 = +[AMSLogConfig sharedPromiseConfig];
        [v12 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v19 userInfo:0];
      }

      else
      {
        if (!v11)
        {
          v12 = +[AMSLogConfig sharedConfig];
        }

        v19 = [v12 OSLogObject];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          v20 = AMSLogKey();
          v21 = MEMORY[0x1E696AEC0];
          v22 = objc_opt_class();
          v23 = v22;
          if (v20)
          {
            v3 = AMSLogKey();
            [v21 stringWithFormat:@"%@: [%@] ", v23, v3];
          }

          else
          {
            [v21 stringWithFormat:@"%@: ", v22];
          }
          v24 = ;
          *buf = 138543362;
          v28 = v24;
          _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_FAULT, "%{public}@An AMSLazyPromise instance was unexpectedly initialized without a block. It will fail immediately with an error.", buf, 0xCu);
          if (v20)
          {

            v24 = v3;
          }
        }
      }

      block = [MEMORY[0x1E696ABC0] errorWithDomain:@"AMSErrorDomain" code:2 userInfo:0];
      [AMSMutablePromise finishPromise:v7 withError:block];
    }
  }

  return v7;
}

- (AMSLazyPromise)initWithTimeout:(double)a3 block:(id)a4
{
  result = [(AMSLazyPromise *)self initWithBlock:a4];
  if (result)
  {
    result->_timeout = a3;
  }

  return result;
}

- (AMSLazyPromise)initWithPromiseResult:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__AMSLazyPromise_initWithPromiseResult___block_invoke;
  v8[3] = &unk_1E73B87B0;
  v9 = v4;
  v5 = v4;
  v6 = [(AMSLazyPromise *)self initWithBlock:v8];

  return v6;
}

- (BOOL)executedBlock
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->_executedBlock + 4);
  os_unfair_lock_unlock(&self->super._stateLock);
  return v3;
}

- (void)addErrorBlock:(id)a3
{
  v4 = a3;
  [(AMSLazyPromise *)self _runBlock];
  v5.receiver = self;
  v5.super_class = AMSLazyPromise;
  [(AMSPromise *)&v5 addErrorBlock:v4];
}

- (void)addFinishBlock:(id)a3
{
  v4 = a3;
  [(AMSLazyPromise *)self _runBlock];
  v5.receiver = self;
  v5.super_class = AMSLazyPromise;
  [(AMSPromise *)&v5 addFinishBlock:v4];
}

- (void)addSuccessBlock:(id)a3
{
  v4 = a3;
  [(AMSLazyPromise *)self _runBlock];
  v5.receiver = self;
  v5.super_class = AMSLazyPromise;
  [(AMSPromise *)&v5 addSuccessBlock:v4];
}

- (id)resultBeforeDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(AMSLazyPromise *)self _runBlock];
  v9.receiver = self;
  v9.super_class = AMSLazyPromise;
  v7 = [(AMSPromise *)&v9 resultBeforeDate:v6 error:a4];

  return v7;
}

- (id)resultWithError:(id *)a3
{
  [(AMSLazyPromise *)self _runBlock];
  v7.receiver = self;
  v7.super_class = AMSLazyPromise;
  v5 = [(AMSPromise *)&v7 resultWithError:a3];

  return v5;
}

- (id)resultWithTimeout:(double)a3 error:(id *)a4
{
  [(AMSLazyPromise *)self _runBlock];
  v9.receiver = self;
  v9.super_class = AMSLazyPromise;
  v7 = [(AMSPromise *)&v9 resultWithTimeout:a4 error:a3];

  return v7;
}

- (void)addBlock:(id)a3 orCallWithResult:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AMSLazyPromise *)self _runBlock];
  v8.receiver = self;
  v8.super_class = AMSLazyPromise;
  [(AMSPromise *)&v8 addBlock:v7 orCallWithResult:v6];
}

- (id)valueFromAddingBlock:(id)a3 orCallWithResult:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AMSLazyPromise *)self _runBlock];
  v10.receiver = self;
  v10.super_class = AMSLazyPromise;
  v8 = [(AMSPromise *)&v10 valueFromAddingBlock:v7 orCallWithResult:v6];

  return v8;
}

@end