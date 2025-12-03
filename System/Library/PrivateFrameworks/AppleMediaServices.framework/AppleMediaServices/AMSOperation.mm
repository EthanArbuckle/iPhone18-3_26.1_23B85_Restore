@interface AMSOperation
- (AMSOperation)init;
- (AMSOperation)parentOperation;
- (BOOL)isCancelled;
- (void)cancel;
- (void)main;
- (void)runSubOperation:(id)operation;
- (void)runSubOperation:(id)operation onQueue:(id)queue;
@end

@implementation AMSOperation

- (AMSOperation)init
{
  v8.receiver = self;
  v8.super_class = AMSOperation;
  v2 = [(AMSOperation *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(AMSMutableBinaryPromise);
    promise = v2->_promise;
    v2->_promise = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    subOperations = v2->_subOperations;
    v2->_subOperations = v5;
  }

  return v2;
}

- (void)main
{
  [(AMSOperation *)self run];
  error = [(AMSOperation *)self error];

  promise = self->_promise;
  if (error)
  {
    error2 = [(AMSOperation *)self error];
    [(AMSMutableBinaryPromise *)promise finishWithError:error2];
  }

  else
  {
    [(AMSMutableBinaryPromise *)self->_promise finishWithSuccess];
    self->_success = 1;
  }
}

- (void)cancel
{
  [(AMSOperation *)self lock];
  self->_cancelled = 1;
  v3 = [(NSMutableSet *)self->_subOperations copy];
  [(AMSOperation *)self unlock];
  [v3 makeObjectsPerformSelector:sel_cancel];
}

- (BOOL)isCancelled
{
  [(AMSOperation *)self lock];
  cancelled = self->_cancelled;
  [(AMSOperation *)self unlock];
  if (cancelled)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_parentOperation);
  isCancelled = [WeakRetained isCancelled];

  return isCancelled;
}

- (void)runSubOperation:(id)operation
{
  v4 = MEMORY[0x1E696ADC8];
  operationCopy = operation;
  currentQueue = [v4 currentQueue];
  [(AMSOperation *)self runSubOperation:operationCopy onQueue:currentQueue];
}

- (void)runSubOperation:(id)operation onQueue:(id)queue
{
  v10[1] = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  queueCopy = queue;
  [(AMSOperation *)self lock];
  [(NSMutableSet *)self->_subOperations addObject:operationCopy];
  [operationCopy setParentOperation:self];
  [(AMSOperation *)self unlock];
  currentQueue = [MEMORY[0x1E696ADC8] currentQueue];

  if (currentQueue == queueCopy)
  {
    [operationCopy start];
  }

  else
  {
    v10[0] = operationCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [queueCopy addOperations:v9 waitUntilFinished:1];
  }

  [(AMSOperation *)self lock];
  [operationCopy setParentOperation:0];
  [(NSMutableSet *)self->_subOperations removeObject:operationCopy];
  [(AMSOperation *)self unlock];
}

- (AMSOperation)parentOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_parentOperation);

  return WeakRetained;
}

@end