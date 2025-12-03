@interface VSTimeoutOperation
- (VSTimeoutOperation)init;
- (VSTimeoutOperation)initWithOperation:(id)operation timeout:(double)timeout;
- (void)cancel;
- (void)executionDidBegin;
@end

@implementation VSTimeoutOperation

- (VSTimeoutOperation)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Use -initWithOperation:timeout: instead of -init."];

  return 0;
}

- (VSTimeoutOperation)initWithOperation:(id)operation timeout:(double)timeout
{
  operationCopy = operation;
  v12.receiver = self;
  v12.super_class = VSTimeoutOperation;
  v8 = [(VSTimeoutOperation *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v8->_privateQueue;
    v8->_privateQueue = v9;

    [(NSOperationQueue *)v8->_privateQueue setName:@"VSTimeoutOperation"];
    objc_storeStrong(&v8->_operation, operation);
    v8->_timeout = timeout;
  }

  return v8;
}

- (void)executionDidBegin
{
  privateQueue = [(VSTimeoutOperation *)self privateQueue];
  operation = [(VSTimeoutOperation *)self operation];
  [privateQueue addOperation:operation];
  [(VSTimeoutOperation *)self timeout];
  v5 = [VSDelayOperation delayOperationWithDelay:?];
  [privateQueue addOperation:v5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__VSTimeoutOperation_executionDidBegin__block_invoke;
  v13[3] = &unk_278B733D8;
  v13[4] = self;
  v6 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v13];
  [v6 addDependency:v5];
  [privateQueue addOperation:v6];
  v7 = MEMORY[0x277CCA8C8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__VSTimeoutOperation_executionDidBegin__block_invoke_2;
  v10[3] = &unk_278B73708;
  v11 = v5;
  selfCopy = self;
  v8 = v5;
  v9 = [v7 blockOperationWithBlock:v10];
  [v9 addDependency:operation];
  [privateQueue addOperation:v9];
}

uint64_t __39__VSTimeoutOperation_executionDidBegin__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(a1 + 40);

  return [v2 finishExecutionIfPossible];
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VSTimeoutOperation;
  [(VSAsyncOperation *)&v4 cancel];
  privateQueue = [(VSTimeoutOperation *)self privateQueue];
  [privateQueue cancelAllOperations];

  [(VSAsyncOperation *)self finishExecutionIfPossible];
}

@end