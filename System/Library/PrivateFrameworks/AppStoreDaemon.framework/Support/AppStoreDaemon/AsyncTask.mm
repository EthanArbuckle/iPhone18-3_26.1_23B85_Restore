@interface AsyncTask
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (void)completeWithError:(id)error;
- (void)completeWithSuccess;
- (void)main;
- (void)start;
@end

@implementation AsyncTask

- (BOOL)isExecuting
{
  [(Task *)self lock];
  executing = self->_executing;
  [(Task *)self unlock];
  return executing;
}

- (BOOL)isFinished
{
  [(Task *)self lock];
  finished = self->_finished;
  [(Task *)self unlock];
  return finished;
}

- (void)start
{
  if (self && ![(AsyncTask *)self isExecuting])
  {
    [(AsyncTask *)self willChangeValueForKey:@"isExecuting"];
    [(Task *)self lock];
    self->_executing = 1;
    [(Task *)self unlock];
    [(AsyncTask *)self didChangeValueForKey:@"isExecuting"];
  }

  [(AsyncTask *)self main];
}

- (void)main
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100239460;
  v2[3] = &unk_10051B5C0;
  v2[4] = self;
  [(AsyncTask *)self mainWithCompletionHandler:v2];
}

- (void)completeWithError:(id)error
{
  v4.receiver = self;
  v4.super_class = AsyncTask;
  [(Task *)&v4 completeWithError:error];
  sub_1002394D0(self);
}

- (void)completeWithSuccess
{
  v3.receiver = self;
  v3.super_class = AsyncTask;
  [(Task *)&v3 completeWithSuccess];
  sub_1002394D0(self);
}

@end