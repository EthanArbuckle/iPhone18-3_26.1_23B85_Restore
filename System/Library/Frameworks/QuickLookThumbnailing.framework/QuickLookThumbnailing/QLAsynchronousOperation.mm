@interface QLAsynchronousOperation
- (void)finish;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation QLAsynchronousOperation

- (void)setFinished:(BOOL)a3
{
  if (self->_finished != a3)
  {
    [(QLAsynchronousOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = a3;

    [(QLAsynchronousOperation *)self didChangeValueForKey:@"isFinished"];
  }
}

- (void)setExecuting:(BOOL)a3
{
  if (self->_executing != a3)
  {
    [(QLAsynchronousOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = a3;

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