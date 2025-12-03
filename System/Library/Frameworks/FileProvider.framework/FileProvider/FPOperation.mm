@interface FPOperation
- (BOOL)_finishIfCancelled;
- (BOOL)finishIfCancelled;
- (FPOperation)init;
- (id)description;
- (void)_setExecuting:(BOOL)executing;
- (void)_setFinished:(BOOL)finished;
- (void)_setRemoteCancellationHandler:(id)handler;
- (void)cancel;
- (void)completedWithResult:(id)result error:(id)error;
- (void)dealloc;
- (void)finishWithResult:(id)result error:(id)error;
- (void)resetRemoteOperation;
- (void)setCallbackQueue:(id)queue;
- (void)setCancellationHandler:(id)handler;
- (void)start;
@end

@implementation FPOperation

- (FPOperation)init
{
  v20 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  v16.receiver = self;
  v16.super_class = FPOperation;
  v2 = [(FPOperation *)&v16 init];
  if (v2)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v2;
      _os_log_impl(&dword_1AAAE1000, v3, OS_LOG_TYPE_INFO, "[INFO] creating %@", buf, 0xCu);
    }

    MEMORY[0x1AC594B00](v2->_uuid);
    uuid_unparse_upper(v2->_uuid, out);
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
    v5 = [v4 componentsSeparatedByString:@"-"];
    v6 = [v5 objectAtIndexedSubscript:0];
    [(FPOperation *)v2 setName:v6];

    name = [(FPOperation *)v2 name];
    uTF8String = [name UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UNSPECIFIED, 0);
    v11 = dispatch_queue_attr_make_initially_inactive(v10);
    v12 = dispatch_queue_create(uTF8String, v11);
    queue = v2->_queue;
    v2->_queue = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)start
{
  dispatch_activate(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __20__FPOperation_start__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __20__FPOperation_start__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AAAE1000, v2, OS_LOG_TYPE_INFO, "[INFO] Starting %@", &v6, 0xCu);
  }

  [*(a1 + 32) _setExecuting:1];
  result = [*(a1 + 32) _finishIfCancelled];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) main];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_finishIfCancelled
{
  if (self->_finished)
  {
    LOBYTE(isCancelled) = 1;
  }

  else if (self->_executionTransaction)
  {
    isCancelled = [(FPOperation *)self isCancelled];
    if (isCancelled)
    {
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
      [(FPOperation *)self finishWithResult:0 error:v4];

      LOBYTE(isCancelled) = 1;
    }
  }

  else
  {
    LOBYTE(isCancelled) = 0;
  }

  return isCancelled;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"FPOperation.m" lineNumber:84 description:&stru_1F1F94B20];
}

- (BOOL)finishIfCancelled
{
  isCancelled = [(FPOperation *)self isCancelled];
  if (isCancelled)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__FPOperation_finishIfCancelled__block_invoke;
    block[3] = &unk_1E79399B0;
    block[4] = self;
    dispatch_async(queue, block);
  }

  return isCancelled;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(FPOperation *)self name];
  operationDescription = [(FPOperation *)self operationDescription];
  operationDescription2 = [(FPOperation *)self operationDescription];
  v8 = [operationDescription2 hasSuffix:@" "];
  if ([(FPOperation *)self isExecuting])
  {
    v9 = @"executing";
  }

  else
  {
    isFinished = [(FPOperation *)self isFinished];
    v9 = @"idle";
    if (isFinished)
    {
      v9 = @"finished";
    }
  }

  v11 = &stru_1F1F94B20;
  if (v8)
  {
    v12 = &stru_1F1F94B20;
  }

  else
  {
    v12 = @" ";
  }

  if (name)
  {
    v11 = name;
  }

  v13 = [v3 stringWithFormat:@"<%@: %p, %@ %@%@%@>", v4, self, v11, operationDescription, v12, v9];

  return v13;
}

- (void)setCallbackQueue:(id)queue
{
  queueCopy = queue;
  queue = self->_queue;
  if (queue)
  {
    dispatch_activate(queue);
  }

  v6 = self->_queue;
  self->_queue = queueCopy;
}

- (void)_setFinished:(BOOL)finished
{
  if (self->_finished != finished)
  {
    [(FPOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = finished;

    [(FPOperation *)self didChangeValueForKey:@"isFinished"];
  }
}

- (void)_setExecuting:(BOOL)executing
{
  if ((((self->_executionTransaction == 0) ^ executing) & 1) == 0)
  {
    executingCopy = executing;
    [(FPOperation *)self willChangeValueForKey:@"isExecuting"];
    if (executingCopy)
    {
      v5 = os_transaction_create();
    }

    else
    {
      v5 = 0;
    }

    executionTransaction = self->_executionTransaction;
    self->_executionTransaction = v5;

    [(FPOperation *)self didChangeValueForKey:@"isExecuting"];
  }
}

- (void)cancel
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] cancelling %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t __21__FPOperation_cancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setRemoteCancellationHandler:0];
  v2 = *(a1 + 32);

  return [v2 _finishIfCancelled];
}

- (void)completedWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__FPOperation_completedWithResult_error___block_invoke;
  block[3] = &unk_1E7939090;
  block[4] = self;
  v12 = resultCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = resultCopy;
  dispatch_async(queue, block);
}

uint64_t __41__FPOperation_completedWithResult_error___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _finishIfCancelled];
  if ((result & 1) == 0)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1AAAE1000, v3, OS_LOG_TYPE_INFO, "[INFO] finishing %@", &v6, 0xCu);
    }

    result = [*(a1 + 32) finishWithResult:*(a1 + 40) error:*(a1 + 48)];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  finishedBlock = [(FPOperation *)self finishedBlock];
  v8 = finishedBlock;
  if (finishedBlock)
  {
    (*(finishedBlock + 16))(finishedBlock, resultCopy, errorCopy);
    [(FPOperation *)self setFinishedBlock:0];
  }

  [(FPOperation *)self _setExecuting:0];
  [(FPOperation *)self _setFinished:1];
  [(FPOperation *)self _setRemoteCancellationHandler:0];
}

- (void)resetRemoteOperation
{
  remoteOperation = self->_remoteOperation;
  self->_remoteOperation = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)_setRemoteCancellationHandler:(id)handler
{
  handlerCopy = handler;
  remoteOperation = self->_remoteOperation;
  if (handlerCopy && remoteOperation)
  {
    [(FPOperation *)a2 _setRemoteCancellationHandler:&self->_remoteOperation, &v11];
    remoteOperation = v11;
  }

  [(FPCancellable *)remoteOperation cancel];
  if (self->_finished)
  {
    if (!handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  isCancelled = [(FPOperation *)self isCancelled];
  if (handlerCopy && (isCancelled & 1) != 0)
  {
LABEL_9:
    [handlerCopy cancel];

    handlerCopy = 0;
  }

LABEL_10:
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__FPOperation__setRemoteCancellationHandler___block_invoke;
  v10[3] = &unk_1E7939C00;
  v10[4] = self;
  v8 = [handlerCopy remoteObjectProxyWithErrorHandler:v10];
  v9 = self->_remoteOperation;
  self->_remoteOperation = v8;
}

- (void)setCancellationHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__FPOperation_setCancellationHandler___block_invoke;
  v7[3] = &unk_1E79390B8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_setRemoteCancellationHandler:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"FPOperation.m" lineNumber:219 description:&stru_1F1F94B20];

  *a4 = *a3;
}

@end