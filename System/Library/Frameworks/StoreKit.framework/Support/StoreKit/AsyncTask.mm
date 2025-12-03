@interface AsyncTask
- (void)completeWithError:(id)error;
- (void)completeWithSuccess;
- (void)setExecuting:(BOOL)executing;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation AsyncTask

- (void)setExecuting:(BOOL)executing
{
  if (self->_executing != executing)
  {
    [(AsyncTask *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = executing;

    [(AsyncTask *)self didChangeValueForKey:@"isExecuting"];
  }
}

- (void)setFinished:(BOOL)finished
{
  if (self->_finished != finished)
  {
    [(AsyncTask *)self willChangeValueForKey:@"isFinished"];
    self->_finished = finished;

    [(AsyncTask *)self didChangeValueForKey:@"isFinished"];
  }
}

- (void)start
{
  [(AsyncTask *)self setExecuting:1];

  [(AsyncTask *)self main];
}

- (void)completeWithError:(id)error
{
  v4.receiver = self;
  v4.super_class = AsyncTask;
  [(Task *)&v4 completeWithError:error];
  [(AsyncTask *)self setExecuting:0];
  [(AsyncTask *)self setFinished:1];
}

- (void)completeWithSuccess
{
  v3.receiver = self;
  v3.super_class = AsyncTask;
  [(Task *)&v3 completeWithSuccess];
  [(AsyncTask *)self setExecuting:0];
  [(AsyncTask *)self setFinished:1];
}

@end