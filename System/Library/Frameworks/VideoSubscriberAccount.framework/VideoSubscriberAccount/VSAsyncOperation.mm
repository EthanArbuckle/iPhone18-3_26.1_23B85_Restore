@interface VSAsyncOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (void)cancel;
- (void)finishExecutionIfPossible;
- (void)start;
@end

@implementation VSAsyncOperation

- (void)finishExecutionIfPossible
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[VSAsyncOperation finishExecutionIfPossible]";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", &v6, 0xCu);
  }

  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = self;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Finishing execution of operation %p.", &v6, 0xCu);
  }

  [(VSAsyncOperation *)self willChangeValueForKey:@"isExecuting"];
  [(VSAsyncOperation *)self willChangeValueForKey:@"isFinished"];
  v5 = 1;
  atomic_compare_exchange_strong(&self->_state, &v5, 2u);
  [(VSAsyncOperation *)self didChangeValueForKey:@"isFinished"];
  [(VSAsyncOperation *)self didChangeValueForKey:@"isExecuting"];
}

- (BOOL)isExecuting
{
  v2 = 1;
  atomic_compare_exchange_strong(&self->_state, &v2, v2);
  return v2 == 1;
}

- (BOOL)isFinished
{
  v2 = 2;
  atomic_compare_exchange_strong(&self->_state, &v2, v2);
  return v2 == 2;
}

- (void)start
{
  v11 = *MEMORY[0x277D85DE8];
  if (([(VSAsyncOperation *)self isReady]& 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Operation cannot start before it's ready."];
  }

  [(VSAsyncOperation *)self willChangeValueForKey:@"isExecuting"];
  v3 = 0;
  atomic_compare_exchange_strong(&self->_state, &v3, 1u);
  v4 = v3 == 0;
  [(VSAsyncOperation *)self didChangeValueForKey:@"isExecuting"];
  if (v4)
  {
    if ([(VSAsyncOperation *)self isCancelled])
    {

      [(VSAsyncOperation *)self finishExecutionIfPossible];
    }

    else
    {
      v7 = VSDefaultLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = self;
        _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Will begin execution of %@", &v9, 0xCu);
      }

      [(VSAsyncOperation *)self executionDidBegin];
      v8 = VSDefaultLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = self;
        _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Did begin execution of %@", &v9, 0xCu);
      }
    }
  }

  else
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE660];

    [v5 raise:v6 format:@"The -start method may only be called once."];
  }
}

- (void)cancel
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Will cancel operation %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = VSAsyncOperation;
  [(VSAsyncOperation *)&v5 cancel];
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Did cancel operation %@", buf, 0xCu);
  }
}

@end