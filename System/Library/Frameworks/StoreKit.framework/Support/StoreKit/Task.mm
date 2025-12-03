@interface Task
- (BOOL)runSubTask:(id)task returningError:(id *)error;
- (BOOL)runTaskReturningError:(id *)error;
- (Task)init;
- (Task)initWithoutKeepAlive;
- (void)_dispatchCompletionBlock;
- (void)completeWithError:(id)error;
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

- (void)completeWithError:(id)error
{
  errorCopy = error;
  [(NSLock *)self->_lock lock];
  error = self->_error;
  self->_error = errorCopy;
  v6 = errorCopy;

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

- (BOOL)runTaskReturningError:(id *)error
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

  if (error)
  {
    *error = [(Task *)self error];
  }

  return [(Task *)self success];
}

- (BOOL)runSubTask:(id)task returningError:(id *)error
{
  taskCopy = task;
  if ([taskCopy isAsynchronous])
  {
    v8 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Cannot execute asynchronous tasks inline" userInfo:0];
    objc_exception_throw(v8);
  }

  if (([taskCopy isCancelled] & 1) == 0)
  {
    [taskCopy main];
    [taskCopy _dispatchCompletionBlock];
  }

  if (error)
  {
    *error = [taskCopy error];
  }

  success = [taskCopy success];

  return success;
}

- (void)_dispatchCompletionBlock
{
  completionBlock = [(Task *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(Task *)self completionBlock];
    v5 = [completionBlock2 copy];

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