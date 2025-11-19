@interface Task
- (BOOL)runSubTask:(id)a3 returningError:(id *)a4;
- (BOOL)runTaskReturningError:(id *)a3;
- (Task)init;
- (Task)initWithoutKeepAlive;
- (void)_dispatchCompletionBlock;
- (void)completeWithError:(id)a3;
- (void)completeWithSuccess;
@end

@implementation Task

- (Task)init
{
  v10.receiver = self;
  v10.super_class = Task;
  v2 = [(Task *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [KeepAlive keepAliveWithFormat:@"com.apple.storekit.%@", v4];
    keepAlive = v2->_keepAlive;
    v2->_keepAlive = v5;

    v7 = objc_alloc_init(NSLock);
    lock = v2->_lock;
    v2->_lock = v7;
  }

  return v2;
}

- (Task)initWithoutKeepAlive
{
  v6.receiver = self;
  v6.super_class = Task;
  v2 = [(Task *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSLock);
    lock = v2->_lock;
    v2->_lock = v3;
  }

  return v2;
}

- (void)completeWithError:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  error = self->_error;
  self->_error = v4;
  v6 = v4;

  self->_success = 0;
  [(NSLock *)self->_lock unlock];
}

- (void)completeWithSuccess
{
  [(NSLock *)self->_lock lock];
  error = self->_error;
  self->_error = 0;

  self->_success = 1;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (BOOL)runTaskReturningError:(id *)a3
{
  if ([(Task *)self isAsynchronous])
  {
    v6 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Cannot execute asynchronous tasks inline" userInfo:0];
    objc_exception_throw(v6);
  }

  if (([(Task *)self isCancelled]& 1) == 0)
  {
    [(Task *)self main];
    [(Task *)self _dispatchCompletionBlock];
  }

  if (a3)
  {
    *a3 = [(Task *)self error];
  }

  return [(Task *)self success];
}

- (BOOL)runSubTask:(id)a3 returningError:(id *)a4
{
  v5 = a3;
  if ([v5 isAsynchronous])
  {
    v8 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Cannot execute asynchronous tasks inline" userInfo:0];
    objc_exception_throw(v8);
  }

  if (([v5 isCancelled] & 1) == 0)
  {
    [v5 main];
    [v5 _dispatchCompletionBlock];
  }

  if (a4)
  {
    *a4 = [v5 error];
  }

  v6 = [v5 success];

  return v6;
}

- (void)_dispatchCompletionBlock
{
  v3 = [(Task *)self completionBlock];

  if (v3)
  {
    v4 = [(Task *)self completionBlock];
    v5 = [v4 copy];

    v6 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004DAC;
    block[3] = &unk_10037F820;
    v9 = v5;
    v7 = v5;
    dispatch_async(v6, block);
  }

  [(Task *)self setCompletionBlock:0];
}

@end