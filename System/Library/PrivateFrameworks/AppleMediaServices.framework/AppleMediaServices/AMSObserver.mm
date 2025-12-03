@interface AMSObserver
- (AMSObserver)initWithResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock;
- (void)_sendCompletionUsingQueue:(id)queue;
- (void)_sendFailure:(id)failure usingQueue:(id)queue;
- (void)_sendResult:(id)result usingQueue:(id)queue;
@end

@implementation AMSObserver

- (AMSObserver)initWithResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  failureBlockCopy = failureBlock;
  v19.receiver = self;
  v19.super_class = AMSObserver;
  v11 = [(AMSObserver *)&v19 init];
  if (v11)
  {
    v12 = [completionBlockCopy copy];
    completionBlock = v11->_completionBlock;
    v11->_completionBlock = v12;

    v14 = [failureBlockCopy copy];
    failureBlock = v11->_failureBlock;
    v11->_failureBlock = v14;

    v16 = [blockCopy copy];
    resultBlock = v11->_resultBlock;
    v11->_resultBlock = v16;
  }

  return v11;
}

- (void)_sendCompletionUsingQueue:(id)queue
{
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  completionBlock = [(AMSObserver *)selfCopy completionBlock];
  objc_sync_exit(selfCopy);

  if (completionBlock)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__AMSObserver_AMSObservable___sendCompletionUsingQueue___block_invoke;
    block[3] = &unk_1E73B76D8;
    v8 = completionBlock;
    dispatch_async(queueCopy, block);
  }
}

- (void)_sendFailure:(id)failure usingQueue:(id)queue
{
  failureCopy = failure;
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  failureBlock = [(AMSObserver *)selfCopy failureBlock];
  objc_sync_exit(selfCopy);

  if (failureBlock)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__AMSObserver_AMSObservable___sendFailure_usingQueue___block_invoke;
    v10[3] = &unk_1E73B43F0;
    v12 = failureBlock;
    v11 = failureCopy;
    dispatch_async(queueCopy, v10);
  }
}

- (void)_sendResult:(id)result usingQueue:(id)queue
{
  resultCopy = result;
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  resultBlock = [(AMSObserver *)selfCopy resultBlock];
  objc_sync_exit(selfCopy);

  if (resultBlock)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__AMSObserver_AMSObservable___sendResult_usingQueue___block_invoke;
    v10[3] = &unk_1E73B43F0;
    v12 = resultBlock;
    v11 = resultCopy;
    dispatch_async(queueCopy, v10);
  }
}

@end