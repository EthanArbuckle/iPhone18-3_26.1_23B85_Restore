@interface AMSLazyPromise
- (AMSLazyPromise)initWithBlock:(id)block;
- (AMSLazyPromise)initWithPromiseResult:(id)result;
- (AMSLazyPromise)initWithTimeout:(double)timeout block:(id)block;
- (BOOL)_runBlock;
- (BOOL)executedBlock;
- (id)resultBeforeDate:(id)date error:(id *)error;
- (id)resultWithError:(id *)error;
- (id)resultWithTimeout:(double)timeout error:(id *)error;
- (id)valueFromAddingBlock:(id)block orCallWithResult:(id)result;
- (void)addBlock:(id)block orCallWithResult:(id)result;
- (void)addErrorBlock:(id)block;
- (void)addFinishBlock:(id)block;
- (void)addSuccessBlock:(id)block;
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
    block = [(AMSLazyPromise *)self block];
    (block)[2](block, self);
  }

  return v3;
}

- (AMSLazyPromise)initWithBlock:(id)block
{
  v29 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v26.receiver = self;
  v26.super_class = AMSLazyPromise;
  v6 = [(AMSPromise *)&v26 init];
  v7 = v6;
  if (v6)
  {
    v6->_timeout = 0.0;
    if (blockCopy)
    {
      v8 = [blockCopy copy];
      block = v7->_block;
      v7->_block = v8;
    }

    else
    {
      v10 = +[AMSUnitTests isRunningUnitTests];
      v11 = +[AMSLogConfig sharedPromiseConfig];
      defaultCenter = v11;
      if (v10)
      {
        if (!v11)
        {
          defaultCenter = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [defaultCenter OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@An AMSLazyPromise instance was unexpectedly initialized without a block. It will fail immediately with an error.", buf, 0xCu);
          if (v14)
          {

            v18 = v3;
          }
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        oSLogObject2 = +[AMSLogConfig sharedPromiseConfig];
        [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
      }

      else
      {
        if (!v11)
        {
          defaultCenter = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [defaultCenter OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
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
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@An AMSLazyPromise instance was unexpectedly initialized without a block. It will fail immediately with an error.", buf, 0xCu);
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

- (AMSLazyPromise)initWithTimeout:(double)timeout block:(id)block
{
  result = [(AMSLazyPromise *)self initWithBlock:block];
  if (result)
  {
    result->_timeout = timeout;
  }

  return result;
}

- (AMSLazyPromise)initWithPromiseResult:(id)result
{
  resultCopy = result;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__AMSLazyPromise_initWithPromiseResult___block_invoke;
  v8[3] = &unk_1E73B87B0;
  v9 = resultCopy;
  v5 = resultCopy;
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

- (void)addErrorBlock:(id)block
{
  blockCopy = block;
  [(AMSLazyPromise *)self _runBlock];
  v5.receiver = self;
  v5.super_class = AMSLazyPromise;
  [(AMSPromise *)&v5 addErrorBlock:blockCopy];
}

- (void)addFinishBlock:(id)block
{
  blockCopy = block;
  [(AMSLazyPromise *)self _runBlock];
  v5.receiver = self;
  v5.super_class = AMSLazyPromise;
  [(AMSPromise *)&v5 addFinishBlock:blockCopy];
}

- (void)addSuccessBlock:(id)block
{
  blockCopy = block;
  [(AMSLazyPromise *)self _runBlock];
  v5.receiver = self;
  v5.super_class = AMSLazyPromise;
  [(AMSPromise *)&v5 addSuccessBlock:blockCopy];
}

- (id)resultBeforeDate:(id)date error:(id *)error
{
  dateCopy = date;
  [(AMSLazyPromise *)self _runBlock];
  v9.receiver = self;
  v9.super_class = AMSLazyPromise;
  v7 = [(AMSPromise *)&v9 resultBeforeDate:dateCopy error:error];

  return v7;
}

- (id)resultWithError:(id *)error
{
  [(AMSLazyPromise *)self _runBlock];
  v7.receiver = self;
  v7.super_class = AMSLazyPromise;
  v5 = [(AMSPromise *)&v7 resultWithError:error];

  return v5;
}

- (id)resultWithTimeout:(double)timeout error:(id *)error
{
  [(AMSLazyPromise *)self _runBlock];
  v9.receiver = self;
  v9.super_class = AMSLazyPromise;
  v7 = [(AMSPromise *)&v9 resultWithTimeout:error error:timeout];

  return v7;
}

- (void)addBlock:(id)block orCallWithResult:(id)result
{
  resultCopy = result;
  blockCopy = block;
  [(AMSLazyPromise *)self _runBlock];
  v8.receiver = self;
  v8.super_class = AMSLazyPromise;
  [(AMSPromise *)&v8 addBlock:blockCopy orCallWithResult:resultCopy];
}

- (id)valueFromAddingBlock:(id)block orCallWithResult:(id)result
{
  resultCopy = result;
  blockCopy = block;
  [(AMSLazyPromise *)self _runBlock];
  v10.receiver = self;
  v10.super_class = AMSLazyPromise;
  v8 = [(AMSPromise *)&v10 valueFromAddingBlock:blockCopy orCallWithResult:resultCopy];

  return v8;
}

@end