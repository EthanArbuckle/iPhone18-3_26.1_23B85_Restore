@interface AMSFinishedPromise
+ (BOOL)_errorIsCanceledError:(id)a3;
+ (BOOL)_errorIsTimeOutError:(id)a3;
+ (id)promiseWithError:(id)a3;
+ (id)promiseWithPromiseResult:(id)a3;
+ (id)promiseWithResult:(id)a3;
+ (void)logUnavailableInitWithSelector:(SEL)a3;
- (AMSFinishedPromise)init;
- (AMSFinishedPromise)initWithTimeout:(double)a3;
- (BOOL)isCancelled;
- (id)BOOLCompletionHandlerAdapter;
- (id)binaryPromiseAdapterForClass:(Class)a3;
- (id)completionHandlerAdapter;
- (id)continueWithBlock:(id)a3;
- (id)nilValueCompletionHandlerAdapter;
- (id)resultWithError:(id *)a3;
- (id)valueFromAddingBlock:(id)a3 orCallWithResult:(id)a4;
- (void)addBlock:(id)a3 orCallWithResult:(id)a4;
- (void)addErrorBlock:(id)a3;
- (void)addFinishBlock:(id)a3;
- (void)addSuccessBlock:(id)a3;
- (void)resultWithCompletion:(id)a3;
@end

@implementation AMSFinishedPromise

+ (void)logUnavailableInitWithSelector:(SEL)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = AMSLogKey();
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = v9;
    if (v7)
    {
      a1 = AMSLogKey();
      [v8 stringWithFormat:@"%@: [%@] ", v10, a1];
    }

    else
    {
      [v8 stringWithFormat:@"%@: ", v9];
    }
    v11 = ;
    v12 = NSStringFromSelector(a3);
    *buf = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Attempt to initialize AMSFinishedPromise using %@. A mutable promise will be returned instead.", buf, 0x16u);
    if (v7)
    {

      v11 = a1;
    }
  }
}

- (AMSFinishedPromise)init
{
  [AMSFinishedPromise logUnavailableInitWithSelector:a2];
  v3 = objc_alloc_init(AMSMutablePromise);

  return v3;
}

- (AMSFinishedPromise)initWithTimeout:(double)a3
{
  [AMSFinishedPromise logUnavailableInitWithSelector:a2];
  v5 = [[AMSMutablePromise alloc] initWithTimeout:a3];

  return v5;
}

+ (id)promiseWithError:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [[AMSPromiseResult alloc] initWithResult:0 error:v4];

  v7 = [v5 initWithPromiseResult:v6];

  return v7;
}

+ (id)promiseWithResult:(id)a3
{
  v4 = a3;
  if (*MEMORY[0x1E695E4D0] == v4 && objc_opt_class() == a1)
  {
    if (_MergedGlobals_113 != -1)
    {
      dispatch_once(&_MergedGlobals_113, &__block_literal_global_63);
    }

    v7 = qword_1ED6E2A00;
  }

  else
  {
    v5 = [a1 alloc];
    v6 = [[AMSPromiseResult alloc] initWithResult:v4 error:0];
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

+ (id)promiseWithPromiseResult:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPromiseResult:v4];

  return v5;
}

- (void)addErrorBlock:(id)a3
{
  v6 = a3;
  v4 = [(AMSPromise *)self promiseResult];
  v5 = [v4 error];

  if (v5)
  {
    v6[2](v6, v5);
  }
}

- (void)addFinishBlock:(id)a3
{
  v4 = a3;
  v7 = [(AMSPromise *)self promiseResult];
  v5 = [v7 result];
  v6 = [v7 error];
  v4[2](v4, v5, v6);
}

- (void)addSuccessBlock:(id)a3
{
  v6 = a3;
  v4 = [(AMSPromise *)self promiseResult];
  v5 = [v4 result];

  if (v5)
  {
    v6[2](v6, v5);
  }
}

- (id)resultWithError:(id *)a3
{
  v4 = [(AMSPromise *)self promiseResult];
  v5 = [v4 error];

  if (a3 && v5)
  {
    *a3 = [v4 error];
  }

  v6 = [v4 result];

  return v6;
}

- (void)resultWithCompletion:(id)a3
{
  v4 = a3;
  v7 = [(AMSPromise *)self promiseResult];
  v5 = [v7 result];
  v6 = [v7 error];
  v4[2](v4, v5, v6);
}

- (id)continueWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(AMSPromise *)self promiseResult];
  v6 = [v5 result];
  v7 = [v5 error];
  v8 = v4[2](v4, v6, v7);

  return v8;
}

- (void)addBlock:(id)a3 orCallWithResult:(id)a4
{
  v6 = a4;
  v7 = [(AMSPromise *)self promiseResult];
  (*(a4 + 2))(v6, v7);
}

- (id)valueFromAddingBlock:(id)a3 orCallWithResult:(id)a4
{
  v6 = a4;
  v7 = [(AMSPromise *)self promiseResult];
  v8 = (*(a4 + 2))(v6, v7);

  return v8;
}

- (id)binaryPromiseAdapterForClass:(Class)a3
{
  v4 = [(AMSPromise *)self promiseResult];
  v5 = [v4 result];

  if (v5)
  {
    v6 = [(objc_class *)a3 promiseWithSuccess];
  }

  else
  {
    v7 = [v4 error];
    v6 = [(objc_class *)a3 promiseWithError:v7];
  }

  return v6;
}

- (BOOL)isCancelled
{
  v3 = objc_opt_class();
  v4 = [(AMSPromise *)self promiseResult];
  v5 = [v4 error];
  LOBYTE(v3) = [v3 _errorIsCanceledError:v5];

  return v3;
}

+ (BOOL)_errorIsCanceledError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v5 = [v3 code] == 3072;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_errorIsTimeOutError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"AMSErrorDomain"])
  {
    v5 = [v3 code] == 1;
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

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
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
    v9 = ;
    *buf = 138543362;
    v12 = v9;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@Attempted to get a completion handler for an already-finished promise, which will have no effect when called.", buf, 0xCu);
    if (v5)
    {

      v9 = self;
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

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
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
    v9 = ;
    *buf = 138543362;
    v12 = v9;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@Attempted to get a completion handler for an already-finished promise, which will have no effect when called.", buf, 0xCu);
    if (v5)
    {

      v9 = self;
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

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
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
    v9 = ;
    *buf = 138543362;
    v12 = v9;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@Attempted to get a completion handler for an already-finished promise, which will have no effect when called.", buf, 0xCu);
    if (v5)
    {

      v9 = self;
    }
  }

  return &__block_literal_global_16;
}

@end