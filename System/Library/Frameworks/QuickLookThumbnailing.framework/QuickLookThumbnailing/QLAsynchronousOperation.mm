@interface QLAsynchronousOperation
- (void)finish;
- (void)setExecuting:(BOOL)executing;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation QLAsynchronousOperation

- (void)setFinished:(BOOL)finished
{
  if (self->_finished != finished)
  {
    [(QLAsynchronousOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = finished;

    [(QLAsynchronousOperation *)self didChangeValueForKey:@"isFinished"];
  }
}

- (void)setExecuting:(BOOL)executing
{
  if (self->_executing != executing)
  {
    [(QLAsynchronousOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = executing;

    [(QLAsynchronousOperation *)self didChangeValueForKey:@"isExecuting"];
  }
}

- (void)start
{
  [(QLAsynchronousOperation *)self setExecuting:1];

  [(QLAsynchronousOperation *)self main];
}

- (void)finish
{
  [(QLAsynchronousOperation *)self setExecuting:0];

  [(QLAsynchronousOperation *)self setFinished:1];
}

@end