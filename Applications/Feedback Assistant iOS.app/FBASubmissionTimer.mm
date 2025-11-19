@interface FBASubmissionTimer
- (FBASubmissionTimer)initWithDelegate:(id)a3 forTask:(id)a4 initialTimeout:(double)a5;
- (FBASubmissionTimerDelegate)delegate;
- (void)dealloc;
- (void)resetTimerWithInterval:(double)a3;
- (void)timerDidTick;
@end

@implementation FBASubmissionTimer

- (FBASubmissionTimer)initWithDelegate:(id)a3 forTask:(id)a4 initialTimeout:(double)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = FBASubmissionTimer;
  v10 = [(FBASubmissionTimer *)&v15 init];
  if (v10)
  {
    v11 = +[FBALog appHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v9 taskIdentifier];
      v13 = [v12 intValue];
      *buf = 67109376;
      v17 = v13;
      v18 = 2048;
      v19 = a5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "starting submission timer for [%i] with timeout [%f]", buf, 0x12u);
    }

    [(FBASubmissionTimer *)v10 setGivenInterval:a5];
    [(FBASubmissionTimer *)v10 resetTimerWithInterval:a5];
    [(FBASubmissionTimer *)v10 setDelegate:v8];
    [(FBASubmissionTimer *)v10 setTask:v9];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [(FBASubmissionTimer *)self timer];
  [v3 invalidate];

  [(FBASubmissionTimer *)self setTimer:0];
  v4.receiver = self;
  v4.super_class = FBASubmissionTimer;
  [(FBASubmissionTimer *)&v4 dealloc];
}

- (void)timerDidTick
{
  v3 = [(FBASubmissionTimer *)self timer];
  [v3 invalidate];

  [(FBASubmissionTimer *)self setTimer:0];
  v5 = [(FBASubmissionTimer *)self delegate];
  v4 = [(FBASubmissionTimer *)self task];
  [v5 timer:self didTimeoutForTask:v4];
}

- (void)resetTimerWithInterval:(double)a3
{
  v5 = [(FBASubmissionTimer *)self timer];
  [v5 invalidate];

  v6 = [NSTimer timerWithTimeInterval:self target:"timerDidTick" selector:0 userInfo:1 repeats:a3];
  [(FBASubmissionTimer *)self setTimer:v6];

  v8 = +[NSRunLoop currentRunLoop];
  v7 = [(FBASubmissionTimer *)self timer];
  [v8 addTimer:v7 forMode:NSRunLoopCommonModes];
}

- (FBASubmissionTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end