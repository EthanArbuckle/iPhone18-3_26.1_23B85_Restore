@interface SOAsynchronousOperation
- (BOOL)isReady;
- (SOAsynchronousOperation)init;
- (void)finish;
- (void)start;
@end

@implementation SOAsynchronousOperation

- (SOAsynchronousOperation)init
{
  v5.receiver = self;
  v5.super_class = SOAsynchronousOperation;
  v2 = [(SOAsynchronousOperation *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SOAsynchronousOperation *)v2 setState:0];
  }

  return v3;
}

- (BOOL)isReady
{
  v5.receiver = self;
  v5.super_class = SOAsynchronousOperation;
  v3 = [(SOAsynchronousOperation *)&v5 isReady];
  if (v3)
  {
    LOBYTE(v3) = [(SOAsynchronousOperation *)self state]== 0;
  }

  return v3;
}

- (void)start
{
  if ([(SOAsynchronousOperation *)self isCancelled])
  {

    [(SOAsynchronousOperation *)self finish];
  }

  else
  {
    [(SOAsynchronousOperation *)self willChangeValueForKey:@"isExecuting"];
    [(SOAsynchronousOperation *)self setState:1];
    [(SOAsynchronousOperation *)self didChangeValueForKey:@"isExecuting"];

    [(SOAsynchronousOperation *)self main];
  }
}

- (void)finish
{
  [(SOAsynchronousOperation *)self willChangeValueForKey:@"isFinished"];
  [(SOAsynchronousOperation *)self setState:2];

  [(SOAsynchronousOperation *)self didChangeValueForKey:@"isFinished"];
}

@end