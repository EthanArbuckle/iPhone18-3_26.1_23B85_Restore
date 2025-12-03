@interface FBASubmissionTimer
- (FBASubmissionTimer)initWithDelegate:(id)delegate forTask:(id)task initialTimeout:(double)timeout;
- (FBASubmissionTimerDelegate)delegate;
- (void)dealloc;
- (void)resetTimerWithInterval:(double)interval;
- (void)timerDidTick;
@end

@implementation FBASubmissionTimer

- (FBASubmissionTimer)initWithDelegate:(id)delegate forTask:(id)task initialTimeout:(double)timeout
{
  delegateCopy = delegate;
  taskCopy = task;
  v15.receiver = self;
  v15.super_class = FBASubmissionTimer;
  v10 = [(FBASubmissionTimer *)&v15 init];
  if (v10)
  {
    v11 = +[FBALog appHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      taskIdentifier = [taskCopy taskIdentifier];
      intValue = [taskIdentifier intValue];
      *buf = 67109376;
      v17 = intValue;
      v18 = 2048;
      timeoutCopy = timeout;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "starting submission timer for [%i] with timeout [%f]", buf, 0x12u);
    }

    [(FBASubmissionTimer *)v10 setGivenInterval:timeout];
    [(FBASubmissionTimer *)v10 resetTimerWithInterval:timeout];
    [(FBASubmissionTimer *)v10 setDelegate:delegateCopy];
    [(FBASubmissionTimer *)v10 setTask:taskCopy];
  }

  return v10;
}

- (void)dealloc
{
  timer = [(FBASubmissionTimer *)self timer];
  [timer invalidate];

  [(FBASubmissionTimer *)self setTimer:0];
  v4.receiver = self;
  v4.super_class = FBASubmissionTimer;
  [(FBASubmissionTimer *)&v4 dealloc];
}

- (void)timerDidTick
{
  timer = [(FBASubmissionTimer *)self timer];
  [timer invalidate];

  [(FBASubmissionTimer *)self setTimer:0];
  delegate = [(FBASubmissionTimer *)self delegate];
  task = [(FBASubmissionTimer *)self task];
  [delegate timer:self didTimeoutForTask:task];
}

- (void)resetTimerWithInterval:(double)interval
{
  timer = [(FBASubmissionTimer *)self timer];
  [timer invalidate];

  v6 = [NSTimer timerWithTimeInterval:self target:"timerDidTick" selector:0 userInfo:1 repeats:interval];
  [(FBASubmissionTimer *)self setTimer:v6];

  v8 = +[NSRunLoop currentRunLoop];
  timer2 = [(FBASubmissionTimer *)self timer];
  [v8 addTimer:timer2 forMode:NSRunLoopCommonModes];
}

- (FBASubmissionTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end