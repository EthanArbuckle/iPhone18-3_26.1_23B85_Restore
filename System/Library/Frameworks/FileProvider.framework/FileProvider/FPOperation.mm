@interface FPOperation
- (BOOL)_finishIfCancelled;
- (BOOL)finishIfCancelled;
- (FPOperation)init;
- (id)description;
- (void)_setExecuting:(BOOL)a3;
- (void)_setFinished:(BOOL)a3;
- (void)_setRemoteCancellationHandler:(id)a3;
- (void)cancel;
- (void)completedWithResult:(id)a3 error:(id)a4;
- (void)dealloc;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)resetRemoteOperation;
- (void)setCallbackQueue:(id)a3;
- (void)setCancellationHandler:(id)a3;
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

    v7 = [(FPOperation *)v2 name];
    v8 = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UNSPECIFIED, 0);
    v11 = dispatch_queue_attr_make_initially_inactive(v10);
    v12 = dispatch_queue_create(v8, v11);
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
    LOBYTE(v2) = 1;
  }

  else if (self->_executionTransaction)
  {
    v2 = [(FPOperation *)self isCancelled];
    if (v2)
    {
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
      [(FPOperation *)self finishWithResult:0 error:v4];

      LOBYTE(v2) = 1;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPOperation.m" lineNumber:84 description:&stru_1F1F94B20];
}

- (BOOL)finishIfCancelled
{
  v3 = [(FPOperation *)self isCancelled];
  if (v3)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__FPOperation_finishIfCancelled__block_invoke;
    block[3] = &unk_1E79399B0;
    block[4] = self;
    dispatch_async(queue, block);
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FPOperation *)self name];
  v6 = [(FPOperation *)self operationDescription];
  v7 = [(FPOperation *)self operationDescription];
  v8 = [v7 hasSuffix:@" "];
  if ([(FPOperation *)self isExecuting])
  {
    v9 = @"executing";
  }

  else
  {
    v10 = [(FPOperation *)self isFinished];
    v9 = @"idle";
    if (v10)
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

  if (v5)
  {
    v11 = v5;
  }

  v13 = [v3 stringWithFormat:@"<%@: %p, %@ %@%@%@>", v4, self, v11, v6, v12, v9];

  return v13;
}

- (void)setCallbackQueue:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_activate(queue);
  }

  v6 = self->_queue;
  self->_queue = v4;
}

- (void)_setFinished:(BOOL)a3
{
  if (self->_finished != a3)
  {
    [(FPOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = a3;

    [(FPOperation *)self didChangeValueForKey:@"isFinished"];
  }
}

- (void)_setExecuting:(BOOL)a3
{
  if ((((self->_executionTransaction == 0) ^ a3) & 1) == 0)
  {
    v3 = a3;
    [(FPOperation *)self willChangeValueForKey:@"isExecuting"];
    if (v3)
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
  v4 = a1;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] cancelling %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t __21__FPOperation_cancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setRemoteCancellationHandler:0];
  v2 = *(a1 + 32);

  return [v2 _finishIfCancelled];
}

- (void)completedWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__FPOperation_completedWithResult_error___block_invoke;
  block[3] = &unk_1E7939090;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(FPOperation *)self finishedBlock];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, v9, v6);
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

- (void)_setRemoteCancellationHandler:(id)a3
{
  v5 = a3;
  remoteOperation = self->_remoteOperation;
  if (v5 && remoteOperation)
  {
    [(FPOperation *)a2 _setRemoteCancellationHandler:&self->_remoteOperation, &v11];
    remoteOperation = v11;
  }

  [(FPCancellable *)remoteOperation cancel];
  if (self->_finished)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = [(FPOperation *)self isCancelled];
  if (v5 && (v7 & 1) != 0)
  {
LABEL_9:
    [v5 cancel];

    v5 = 0;
  }

LABEL_10:
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__FPOperation__setRemoteCancellationHandler___block_invoke;
  v10[3] = &unk_1E7939C00;
  v10[4] = self;
  v8 = [v5 remoteObjectProxyWithErrorHandler:v10];
  v9 = self->_remoteOperation;
  self->_remoteOperation = v8;
}

- (void)setCancellationHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__FPOperation_setCancellationHandler___block_invoke;
  v7[3] = &unk_1E79390B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_setRemoteCancellationHandler:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"FPOperation.m" lineNumber:219 description:&stru_1F1F94B20];

  *a4 = *a3;
}

@end