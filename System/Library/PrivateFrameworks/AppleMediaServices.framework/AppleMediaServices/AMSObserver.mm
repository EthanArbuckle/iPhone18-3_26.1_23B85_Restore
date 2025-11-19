@interface AMSObserver
- (AMSObserver)initWithResultBlock:(id)a3 completionBlock:(id)a4 failureBlock:(id)a5;
- (void)_sendCompletionUsingQueue:(id)a3;
- (void)_sendFailure:(id)a3 usingQueue:(id)a4;
- (void)_sendResult:(id)a3 usingQueue:(id)a4;
@end

@implementation AMSObserver

- (AMSObserver)initWithResultBlock:(id)a3 completionBlock:(id)a4 failureBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = AMSObserver;
  v11 = [(AMSObserver *)&v19 init];
  if (v11)
  {
    v12 = [v9 copy];
    completionBlock = v11->_completionBlock;
    v11->_completionBlock = v12;

    v14 = [v10 copy];
    failureBlock = v11->_failureBlock;
    v11->_failureBlock = v14;

    v16 = [v8 copy];
    resultBlock = v11->_resultBlock;
    v11->_resultBlock = v16;
  }

  return v11;
}

- (void)_sendCompletionUsingQueue:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(AMSObserver *)v5 completionBlock];
  objc_sync_exit(v5);

  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__AMSObserver_AMSObservable___sendCompletionUsingQueue___block_invoke;
    block[3] = &unk_1E73B76D8;
    v8 = v6;
    dispatch_async(v4, block);
  }
}

- (void)_sendFailure:(id)a3 usingQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(AMSObserver *)v8 failureBlock];
  objc_sync_exit(v8);

  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__AMSObserver_AMSObservable___sendFailure_usingQueue___block_invoke;
    v10[3] = &unk_1E73B43F0;
    v12 = v9;
    v11 = v6;
    dispatch_async(v7, v10);
  }
}

- (void)_sendResult:(id)a3 usingQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(AMSObserver *)v8 resultBlock];
  objc_sync_exit(v8);

  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__AMSObserver_AMSObservable___sendResult_usingQueue___block_invoke;
    v10[3] = &unk_1E73B43F0;
    v12 = v9;
    v11 = v6;
    dispatch_async(v7, v10);
  }
}

@end