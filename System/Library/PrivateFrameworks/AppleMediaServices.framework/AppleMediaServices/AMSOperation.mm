@interface AMSOperation
- (AMSOperation)init;
- (AMSOperation)parentOperation;
- (BOOL)isCancelled;
- (void)cancel;
- (void)main;
- (void)runSubOperation:(id)a3;
- (void)runSubOperation:(id)a3 onQueue:(id)a4;
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
  v3 = [(AMSOperation *)self error];

  promise = self->_promise;
  if (v3)
  {
    v5 = [(AMSOperation *)self error];
    [(AMSMutableBinaryPromise *)promise finishWithError:v5];
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
  v6 = [WeakRetained isCancelled];

  return v6;
}

- (void)runSubOperation:(id)a3
{
  v4 = MEMORY[0x1E696ADC8];
  v5 = a3;
  v6 = [v4 currentQueue];
  [(AMSOperation *)self runSubOperation:v5 onQueue:v6];
}

- (void)runSubOperation:(id)a3 onQueue:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(AMSOperation *)self lock];
  [(NSMutableSet *)self->_subOperations addObject:v6];
  [v6 setParentOperation:self];
  [(AMSOperation *)self unlock];
  v8 = [MEMORY[0x1E696ADC8] currentQueue];

  if (v8 == v7)
  {
    [v6 start];
  }

  else
  {
    v10[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v7 addOperations:v9 waitUntilFinished:1];
  }

  [(AMSOperation *)self lock];
  [v6 setParentOperation:0];
  [(NSMutableSet *)self->_subOperations removeObject:v6];
  [(AMSOperation *)self unlock];
}

- (AMSOperation)parentOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_parentOperation);

  return WeakRetained;
}

@end