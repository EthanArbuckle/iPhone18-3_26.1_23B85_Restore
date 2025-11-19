@interface AsyncTask
- (void)completeWithError:(id)a3;
- (void)completeWithSuccess;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation AsyncTask

- (void)setExecuting:(BOOL)a3
{
  if (self->_executing != a3)
  {
    [(AsyncTask *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = a3;

    [(AsyncTask *)self didChangeValueForKey:@"isExecuting"];
  }
}

- (void)setFinished:(BOOL)a3
{
  if (self->_finished != a3)
  {
    [(AsyncTask *)self willChangeValueForKey:@"isFinished"];
    self->_finished = a3;

    [(AsyncTask *)self didChangeValueForKey:@"isFinished"];
  }
}

- (void)start
{
  [(AsyncTask *)self setExecuting:1];

  [(AsyncTask *)self main];
}

- (void)completeWithError:(id)a3
{
  v4.receiver = self;
  v4.super_class = AsyncTask;
  [(Task *)&v4 completeWithError:a3];
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