@interface MTTimedOperation
- (MTTimedOperation)init;
- (void)cancel;
- (void)finish;
- (void)main;
- (void)setMainBlock:(id)a3;
- (void)start;
- (void)waitForStartDelay;
@end

@implementation MTTimedOperation

- (MTTimedOperation)init
{
  v9.receiver = self;
  v9.super_class = MTTimedOperation;
  v2 = [(MTTimedOperation *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_executing = 0;
    v2->_finished = 0;
    v2->_startDelay = 1.0;
    v4 = +[NSUUID UUID];
    identifier = v3->_identifier;
    v3->_identifier = v4;

    v6 = dispatch_queue_create("MTTimedOperation.workQueue", 0);
    workQueue = v3->_workQueue;
    v3->_workQueue = v6;
  }

  return v3;
}

- (void)finish
{
  [(MTTimedOperation *)self willChangeValueForKey:@"isFinished"];
  [(MTTimedOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_executing = 0;
  self->_finished = 1;
  [(MTTimedOperation *)self didChangeValueForKey:@"isExecuting"];
  [(MTTimedOperation *)self didChangeValueForKey:@"isFinished"];
  v7[0] = @"MTTimedOperationIsCancelledKey";
  v3 = [NSNumber numberWithBool:[(MTTimedOperation *)self isCancelled]];
  v7[1] = @"MTTimedOperationIdentifierKey";
  v8[0] = v3;
  v4 = [(MTTimedOperation *)self identifier];
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"MTTimedOperationFinished" object:0 userInfo:v5];
}

- (void)start
{
  if ([(MTTimedOperation *)self isCancelled])
  {

    [(MTTimedOperation *)self finish];
  }

  else
  {
    [(MTTimedOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = 1;
    [(MTTimedOperation *)self didChangeValueForKey:@"isExecuting"];
    [(MTTimedOperation *)self startDelay];
    if (v3 <= 0.0)
    {

      [(MTTimedOperation *)self main];
    }

    else
    {

      [(MTTimedOperation *)self waitForStartDelay];
    }
  }
}

- (void)main
{
  if (([(MTTimedOperation *)self isCancelled]& 1) == 0)
  {
    mainBlock = self->_mainBlock;
    if (mainBlock)
    {
      mainBlock[2]();
    }
  }

  [(MTTimedOperation *)self finish];
}

- (void)waitForStartDelay
{
  if (([(MTTimedOperation *)self isCancelled]& 1) == 0)
  {
    [(MTTimedOperation *)self setIsSleepingOnStartDelay:1];
    objc_initWeak(&location, self);
    [(MTTimedOperation *)self startDelay];
    v4 = dispatch_time(0, (v3 * 1000000000.0));
    v5 = [(MTTimedOperation *)self workQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000DBA7C;
    v6[3] = &unk_1004D9E80;
    objc_copyWeak(&v7, &location);
    dispatch_after(v4, v5, v6);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = MTTimedOperation;
  [(MTTimedOperation *)&v3 cancel];
  [(MTTimedOperation *)self setIsSleepingOnStartDelay:0];
  [(MTTimedOperation *)self finish];
}

- (void)setMainBlock:(id)a3
{
  v4 = objc_retainBlock(a3);
  mainBlock = self->_mainBlock;
  self->_mainBlock = v4;
}

@end