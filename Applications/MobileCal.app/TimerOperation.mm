@interface TimerOperation
+ (id)operationWithTimeInterval:(double)interval;
- (TimerOperation)initWithTimeInterval:(double)interval;
- (void)cancel;
- (void)finish;
- (void)main;
- (void)start;
- (void)timerFired:(id)fired;
@end

@implementation TimerOperation

+ (id)operationWithTimeInterval:(double)interval
{
  v3 = [[TimerOperation alloc] initWithTimeInterval:interval];

  return v3;
}

- (TimerOperation)initWithTimeInterval:(double)interval
{
  v7.receiver = self;
  v7.super_class = TimerOperation;
  v4 = [(TimerOperation *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_executing = 0;
    v4->_finished = 0;
    [(TimerOperation *)v4 setTimeInterval:interval];
  }

  return v5;
}

- (void)finish
{
  [(TimerOperation *)self willChangeValueForKey:@"isFinished"];
  [(TimerOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_executing = 0;
  self->_finished = 1;
  [(TimerOperation *)self didChangeValueForKey:@"isExecuting"];

  [(TimerOperation *)self didChangeValueForKey:@"isFinished"];
}

- (void)start
{
  if ([(TimerOperation *)self isCancelled])
  {
    v3 = @"isFinished";
    [(TimerOperation *)self willChangeValueForKey:@"isFinished"];
    v4 = &OBJC_IVAR___TimerOperation__finished;
  }

  else
  {
    v3 = @"isExecuting";
    [(TimerOperation *)self willChangeValueForKey:@"isExecuting"];
    [(TimerOperation *)self performSelectorOnMainThread:"main" withObject:0 waitUntilDone:0];
    v4 = &OBJC_IVAR___TimerOperation__executing;
  }

  *(&self->super.super.isa + *v4) = 1;

  [(TimerOperation *)self didChangeValueForKey:v3];
}

- (void)timerFired:(id)fired
{
  if (([(TimerOperation *)self isCancelled]& 1) == 0)
  {

    [(TimerOperation *)self finish];
  }
}

- (void)main
{
  [(TimerOperation *)self timeInterval];
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"timerFired:" selector:0 userInfo:0 repeats:?];
  [(TimerOperation *)self setTimer:v3];
}

- (void)cancel
{
  timer = [(TimerOperation *)self timer];
  [timer invalidate];

  v4.receiver = self;
  v4.super_class = TimerOperation;
  [(TimerOperation *)&v4 cancel];
  [(TimerOperation *)self finish];
}

@end