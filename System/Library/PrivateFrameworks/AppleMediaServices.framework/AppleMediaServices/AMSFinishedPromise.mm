@interface AMSFinishedPromise
+ (BOOL)_errorIsCanceledError:(id)error;
+ (BOOL)_errorIsTimeOutError:(id)error;
+ (id)promiseWithError:(id)error;
+ (id)promiseWithPromiseResult:(id)result;
+ (id)promiseWithResult:(id)result;
+ (void)logUnavailableInitWithSelector:(SEL)selector;
- (AMSFinishedPromise)init;
- (AMSFinishedPromise)initWithTimeout:(double)timeout;
- (BOOL)isCancelled;
- (id)BOOLCompletionHandlerAdapter;
- (id)binaryPromiseAdapterForClass:(Class)class;
- (id)completionHandlerAdapter;
- (id)continueWithBlock:(id)block;
- (id)nilValueCompletionHandlerAdapter;
- (id)resultWithError:(id *)error;
- (id)valueFromAddingBlock:(id)block orCallWithResult:(id)result;
- (void)addBlock:(id)block orCallWithResult:(id)result;
- (void)addErrorBlock:(id)block;
- (void)addFinishBlock:(id)block;
- (void)addSuccessBlock:(id)block;
- (void)resultWithCompletion:(id)completion;
@end

@implementation AMSFinishedPromise

+ (void)logUnavailableInitWithSelector:(SEL)selector
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 = AMSLogKey();
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = v9;
    if (v7)
    {
      self = AMSLogKey();
      [v8 stringWithFormat:@"%@: [%@] ", v10, self];
    }

    else
    {
      [v8 stringWithFormat:@"%@: ", v9];
    }
    selfCopy = ;
    v12 = NSStringFromSelector(selector);
    *buf = 138543618;
    v14 = selfCopy;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@Attempt to initialize AMSFinishedPromise using %@. A mutable promise will be returned instead.", buf, 0x16u);
    if (v7)
    {

      selfCopy = self;
    }
  }
}

- (AMSFinishedPromise)init
{
  [AMSFinishedPromise logUnavailableInitWithSelector:a2];
  v3 = objc_alloc_init(AMSMutablePromise);

  return v3;
}

- (AMSFinishedPromise)initWithTimeout:(double)timeout
{
  [AMSFinishedPromise logUnavailableInitWithSelector:a2];
  v5 = [[AMSMutablePromise alloc] initWithTimeout:timeout];

  return v5;
}

+ (id)promiseWithError:(id)error
{
  errorCopy = error;
  v5 = [self alloc];
  v6 = [[AMSPromiseResult alloc] initWithResult:0 error:errorCopy];

  v7 = [v5 initWithPromiseResult:v6];

  return v7;
}

+ (id)promiseWithResult:(id)result
{
  resultCopy = result;
  if (*MEMORY[0x1E695E4D0] == resultCopy && objc_opt_class() == self)
  {
    if (_MergedGlobals_113 != -1)
    {
      dispatch_once(&_MergedGlobals_113, &__block_literal_global_63);
    }

    v7 = qword_1ED6E2A00;
  }

  else
  {
    v5 = [self alloc];
    v6 = [[AMSPromiseResult alloc] initWithResult:resultCopy error:0];
    v7 = [v5 initWithPromiseResult:v6];
  }

  return v7;
}

void __40__AMSFinishedPromise_promiseWithResult___block_invoke()
{
  v0 = [AMSFinishedPromise alloc];
  v1 = [AMSPromiseResult alloc];
  v4 = [(AMSPromiseResult *)v1 initWithResult:MEMORY[0x1E695E118] error:0];
  v2 = [(AMSPromise *)v0 initWithPromiseResult:v4];
  v3 = qword_1ED6E2A00;
  qword_1ED6E2A00 = v2;
}

+ (id)promiseWithPromiseResult:(id)result
{
  resultCopy = result;
  v5 = [[self alloc] initWithPromiseResult:resultCopy];

  return v5;
}

- (void)addErrorBlock:(id)block
{
  blockCopy = block;
  promiseResult = [(AMSPromise *)self promiseResult];
  error = [promiseResult error];

  if (error)
  {
    blockCopy[2](blockCopy, error);
  }
}

- (void)addFinishBlock:(id)block
{
  blockCopy = block;
  promiseResult = [(AMSPromise *)self promiseResult];
  result = [promiseResult result];
  error = [promiseResult error];
  blockCopy[2](blockCopy, result, error);
}

- (void)addSuccessBlock:(id)block
{
  blockCopy = block;
  promiseResult = [(AMSPromise *)self promiseResult];
  result = [promiseResult result];

  if (result)
  {
    blockCopy[2](blockCopy, result);
  }
}

- (id)resultWithError:(id *)error
{
  promiseResult = [(AMSPromise *)self promiseResult];
  error = [promiseResult error];

  if (error && error)
  {
    *error = [promiseResult error];
  }

  result = [promiseResult result];

  return result;
}

- (void)resultWithCompletion:(id)completion
{
  completionCopy = completion;
  promiseResult = [(AMSPromise *)self promiseResult];
  result = [promiseResult result];
  error = [promiseResult error];
  completionCopy[2](completionCopy, result, error);
}

- (id)continueWithBlock:(id)block
{
  blockCopy = block;
  promiseResult = [(AMSPromise *)self promiseResult];
  result = [promiseResult result];
  error = [promiseResult error];
  v8 = blockCopy[2](blockCopy, result, error);

  return v8;
}

- (void)addBlock:(id)block orCallWithResult:(id)result
{
  resultCopy = result;
  promiseResult = [(AMSPromise *)self promiseResult];
  (*(result + 2))(resultCopy, promiseResult);
}

- (id)valueFromAddingBlock:(id)block orCallWithResult:(id)result
{
  resultCopy = result;
  promiseResult = [(AMSPromise *)self promiseResult];
  v8 = (*(result + 2))(resultCopy, promiseResult);

  return v8;
}

- (id)binaryPromiseAdapterForClass:(Class)class
{
  promiseResult = [(AMSPromise *)self promiseResult];
  result = [promiseResult result];

  if (result)
  {
    promiseWithSuccess = [(objc_class *)class promiseWithSuccess];
  }

  else
  {
    error = [promiseResult error];
    promiseWithSuccess = [(objc_class *)class promiseWithError:error];
  }

  return promiseWithSuccess;
}

- (BOOL)isCancelled
{
  v3 = objc_opt_class();
  promiseResult = [(AMSPromise *)self promiseResult];
  error = [promiseResult error];
  LOBYTE(v3) = [v3 _errorIsCanceledError:error];

  return v3;
}

+ (BOOL)_errorIsCanceledError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    v5 = [errorCopy code] == 3072;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_errorIsTimeOutError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:@"AMSErrorDomain"])
  {
    v5 = [errorCopy code] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)BOOLCompletionHandlerAdapter
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = AMSLogKey();
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = v7;
    if (v5)
    {
      self = AMSLogKey();
      [v6 stringWithFormat:@"%@: [%@] ", v8, self];
    }

    else
    {
      [v6 stringWithFormat:@"%@: ", v7];
    }
    selfCopy = ;
    *buf = 138543362;
    v12 = selfCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Attempted to get a completion handler for an already-finished promise, which will have no effect when called.", buf, 0xCu);
    if (v5)
    {

      selfCopy = self;
    }
  }

  return &__block_literal_global_11;
}

- (id)completionHandlerAdapter
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = AMSLogKey();
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = v7;
    if (v5)
    {
      self = AMSLogKey();
      [v6 stringWithFormat:@"%@: [%@] ", v8, self];
    }

    else
    {
      [v6 stringWithFormat:@"%@: ", v7];
    }
    selfCopy = ;
    *buf = 138543362;
    v12 = selfCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Attempted to get a completion handler for an already-finished promise, which will have no effect when called.", buf, 0xCu);
    if (v5)
    {

      selfCopy = self;
    }
  }

  return &__block_literal_global_14;
}

- (id)nilValueCompletionHandlerAdapter
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = AMSLogKey();
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = v7;
    if (v5)
    {
      self = AMSLogKey();
      [v6 stringWithFormat:@"%@: [%@] ", v8, self];
    }

    else
    {
      [v6 stringWithFormat:@"%@: ", v7];
    }
    selfCopy = ;
    *buf = 138543362;
    v12 = selfCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Attempted to get a completion handler for an already-finished promise, which will have no effect when called.", buf, 0xCu);
    if (v5)
    {

      selfCopy = self;
    }
  }

  return &__block_literal_global_16;
}

@end