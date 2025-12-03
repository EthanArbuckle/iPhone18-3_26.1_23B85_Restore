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
  pauseLock = [(DrainOperation *)self pauseLock];
  [pauseLock lock];

  [(DrainOperation *)self setIsPaused:1];
  pauseLock2 = [(DrainOperation *)self pauseLock];
  [pauseLock2 unlock];
}

- (void)resume
{
  pauseLock = [(DrainOperation *)self pauseLock];
  [pauseLock lock];

  [(DrainOperation *)self setIsPaused:0];
  pauseLock2 = [(DrainOperation *)self pauseLock];
  [pauseLock2 signal];

  pauseLock3 = [(DrainOperation *)self pauseLock];
  [pauseLock3 unlock];
}

- (void)waitIfPaused
{
  pauseLock = [(DrainOperation *)self pauseLock];
  [pauseLock lock];

  if ([(DrainOperation *)self isPaused])
  {
    do
    {
      pauseLock2 = [(DrainOperation *)self pauseLock];
      [pauseLock2 wait];
    }

    while ([(DrainOperation *)self isPaused]);
  }

  pauseLock3 = [(DrainOperation *)self pauseLock];
  [pauseLock3 unlock];
}

@end