@interface PBFPPTBlockOperation
+ (PBFPPTBlockOperation)operationWithBlock:(id)block;
+ (PBFPPTBlockOperation)operationWithName:(id)name block:(id)block;
- (PBFPPTBlockOperation)initWithBlock:(id)block;
- (PBFPPTBlockOperation)initWithName:(id)name block:(id)block;
- (id)description;
- (id)timeoutBlock;
- (void)cancel;
- (void)cancelAndFailTestWithReason:(id)reason;
- (void)finish;
- (void)main;
- (void)start;
@end

@implementation PBFPPTBlockOperation

+ (PBFPPTBlockOperation)operationWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithBlock:blockCopy];

  return v5;
}

+ (PBFPPTBlockOperation)operationWithName:(id)name block:(id)block
{
  blockCopy = block;
  nameCopy = name;
  v8 = [[self alloc] initWithName:nameCopy block:blockCopy];

  return v8;
}

- (PBFPPTBlockOperation)initWithBlock:(id)block
{
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = PBFPPTBlockOperation;
  v5 = [(PBFPPTOperation *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_timeoutInterval = 15.0;
    v5->_state = 0;
    v7 = [blockCopy copy];
    block = v6->_block;
    v6->_block = v7;
  }

  return v6;
}

- (PBFPPTBlockOperation)initWithName:(id)name block:(id)block
{
  nameCopy = name;
  v7 = [(PBFPPTBlockOperation *)self initWithBlock:block];
  v8 = v7;
  if (v7)
  {
    [(PBFPPTOperation *)v7 setOperationName:nameCopy];
  }

  return v8;
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  state = [(PBFPPTBlockOperation *)self state];
  v5 = @"Pending";
  if (state == 2)
  {
    v5 = @"Finished";
  }

  if (state == 1)
  {
    v6 = @"Executing";
  }

  else
  {
    v6 = v5;
  }

  [v3 appendString:v6 withName:@"state"];
  v7 = [v3 appendFloat:@"timeoutInterval" withName:self->_timeoutInterval];
  operationName = [(PBFPPTOperation *)self operationName];
  [v3 appendString:operationName withName:@"operationName"];

  build = [v3 build];

  return build;
}

- (void)finish
{
  block = [(PBFPPTBlockOperation *)self timeoutBlock];
  if (block)
  {
    dispatch_block_cancel(block);
    [(PBFPPTBlockOperation *)self setTimeoutBlock:0];
  }

  [(PBFPPTBlockOperation *)self setState:2];
  [(PBFPPTOperation *)self operationDidFinish];
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = PBFPPTBlockOperation;
  [(PBFPPTBlockOperation *)&v3 cancel];
  self->_cancelled = 1;
  [(PBFPPTBlockOperation *)self finish];
}

- (void)cancelAndFailTestWithReason:(id)reason
{
  reasonCopy = reason;
  runningPPTTestName = [UIApp runningPPTTestName];
  [UIApp failedTest:runningPPTTestName withFailure:reasonCopy];
  v9.receiver = self;
  v9.super_class = PBFPPTBlockOperation;
  [(PBFPPTBlockOperation *)&v9 cancel];
  self->_cancelled = 1;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    operationName = [(PBFPPTOperation *)self operationName];
    v7 = operationName;
    if (operationName)
    {
      selfCopy = operationName;
    }

    else
    {
      selfCopy = self;
    }

    *buf = 138412546;
    v11 = selfCopy;
    v12 = 2112;
    v13 = reasonCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PPT Operation '%@' cancelled for reason: %@", buf, 0x16u);
  }

  [(PBFPPTBlockOperation *)self finish];
}

- (void)start
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  dependencies = [(PBFPPTBlockOperation *)self dependencies];
  v4 = [dependencies countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(dependencies);
        }

        if ([*(*(&v8 + 1) + 8 * v7) isCancelled])
        {
          [(PBFPPTBlockOperation *)self cancel];

          return;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [dependencies countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if (([(PBFPPTBlockOperation *)self isCancelled]& 1) == 0)
  {
    if ([(PBFPPTBlockOperation *)self isExecuting])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000077E4(self);
      }
    }

    else if ([(PBFPPTBlockOperation *)self isFinished])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10000774C(self);
      }
    }

    else
    {
      [(PBFPPTBlockOperation *)self setState:1];
      [(PBFPPTBlockOperation *)self main];
    }
  }
}

- (void)main
{
  [(PBFPPTBlockOperation *)self timeoutInterval];
  v4 = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007448;
  v8[3] = &unk_1000109D0;
  v8[4] = self;
  *&v8[5] = v3;
  v5 = dispatch_block_create(0, v8);
  [(PBFPPTBlockOperation *)self setTimeoutBlock:v5];
  v6 = dispatch_time(0, (v4 * 1000000000.0));
  dispatch_after(v6, &_dispatch_main_q, v5);
  [(PBFPPTOperation *)self operationWillStart];
  block = [(PBFPPTBlockOperation *)self block];
  (block)[2](block, self);
}

- (id)timeoutBlock
{
  WeakRetained = objc_loadWeakRetained(&self->_timeoutBlock);

  return WeakRetained;
}

@end