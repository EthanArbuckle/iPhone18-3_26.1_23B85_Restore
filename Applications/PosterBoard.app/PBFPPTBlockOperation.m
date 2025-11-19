@interface PBFPPTBlockOperation
+ (PBFPPTBlockOperation)operationWithBlock:(id)a3;
+ (PBFPPTBlockOperation)operationWithName:(id)a3 block:(id)a4;
- (PBFPPTBlockOperation)initWithBlock:(id)a3;
- (PBFPPTBlockOperation)initWithName:(id)a3 block:(id)a4;
- (id)description;
- (id)timeoutBlock;
- (void)cancel;
- (void)cancelAndFailTestWithReason:(id)a3;
- (void)finish;
- (void)main;
- (void)start;
@end

@implementation PBFPPTBlockOperation

+ (PBFPPTBlockOperation)operationWithBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBlock:v4];

  return v5;
}

+ (PBFPPTBlockOperation)operationWithName:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithName:v7 block:v6];

  return v8;
}

- (PBFPPTBlockOperation)initWithBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PBFPPTBlockOperation;
  v5 = [(PBFPPTOperation *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_timeoutInterval = 15.0;
    v5->_state = 0;
    v7 = [v4 copy];
    block = v6->_block;
    v6->_block = v7;
  }

  return v6;
}

- (PBFPPTBlockOperation)initWithName:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = [(PBFPPTBlockOperation *)self initWithBlock:a4];
  v8 = v7;
  if (v7)
  {
    [(PBFPPTOperation *)v7 setOperationName:v6];
  }

  return v8;
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [(PBFPPTBlockOperation *)self state];
  v5 = @"Pending";
  if (v4 == 2)
  {
    v5 = @"Finished";
  }

  if (v4 == 1)
  {
    v6 = @"Executing";
  }

  else
  {
    v6 = v5;
  }

  [v3 appendString:v6 withName:@"state"];
  v7 = [v3 appendFloat:@"timeoutInterval" withName:self->_timeoutInterval];
  v8 = [(PBFPPTOperation *)self operationName];
  [v3 appendString:v8 withName:@"operationName"];

  v9 = [v3 build];

  return v9;
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

- (void)cancelAndFailTestWithReason:(id)a3
{
  v4 = a3;
  v5 = [UIApp runningPPTTestName];
  [UIApp failedTest:v5 withFailure:v4];
  v9.receiver = self;
  v9.super_class = PBFPPTBlockOperation;
  [(PBFPPTBlockOperation *)&v9 cancel];
  self->_cancelled = 1;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PBFPPTOperation *)self operationName];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = self;
    }

    *buf = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
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
  v3 = [(PBFPPTBlockOperation *)self dependencies];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * v7) isCancelled])
        {
          [(PBFPPTBlockOperation *)self cancel];

          return;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v7 = [(PBFPPTBlockOperation *)self block];
  (v7)[2](v7, self);
}

- (id)timeoutBlock
{
  WeakRetained = objc_loadWeakRetained(&self->_timeoutBlock);

  return WeakRetained;
}

@end