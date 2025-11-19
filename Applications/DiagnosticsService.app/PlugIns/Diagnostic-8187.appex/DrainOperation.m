@interface DrainOperation
- (void)cancel;
- (void)finish;
- (void)pause;
- (void)resume;
- (void)start;
- (void)waitIfPaused;
@end

@implementation DrainOperation

- (void)start
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000B7A4();
  }

  if (([(DrainOperation *)self isCancelled]& 1) == 0)
  {
    [(DrainOperation *)self willChangeValueForKey:@"isFinished"];
    [(DrainOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_finished = 0;
    self->_executing = 1;
    v4 = objc_opt_new();
    pauseLock = self->_pauseLock;
    self->_pauseLock = v4;

    self->_isPaused = 0;
    [(DrainOperation *)self didChangeValueForKey:@"isFinished"];
    [(DrainOperation *)self didChangeValueForKey:@"isExecuting"];
    if (([(DrainOperation *)self isCancelled]& 1) == 0)
    {
      [(DrainOperation *)self main];
    }
  }
}

- (void)cancel
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000B82C();
  }

  [(DrainOperation *)self finish];
}

- (void)finish
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000B8B4();
  }

  [(DrainOperation *)self willChangeValueForKey:@"isFinished"];
  [(DrainOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_finished = 1;
  self->_executing = 0;
  [(DrainOperation *)self didChangeValueForKey:@"isFinished"];
  [(DrainOperation *)self didChangeValueForKey:@"isExecuting"];
}

- (void)pause
{
  v3 = [(DrainOperation *)self pauseLock];
  [v3 lock];

  [(DrainOperation *)self setIsPaused:1];
  v4 = [(DrainOperation *)self pauseLock];
  [v4 unlock];
}

- (void)resume
{
  v3 = [(DrainOperation *)self pauseLock];
  [v3 lock];

  [(DrainOperation *)self setIsPaused:0];
  v4 = [(DrainOperation *)self pauseLock];
  [v4 signal];

  v5 = [(DrainOperation *)self pauseLock];
  [v5 unlock];
}

- (void)waitIfPaused
{
  v3 = [(DrainOperation *)self pauseLock];
  [v3 lock];

  if ([(DrainOperation *)self isPaused])
  {
    do
    {
      v4 = [(DrainOperation *)self pauseLock];
      [v4 wait];
    }

    while ([(DrainOperation *)self isPaused]);
  }

  v5 = [(DrainOperation *)self pauseLock];
  [v5 unlock];
}

@end