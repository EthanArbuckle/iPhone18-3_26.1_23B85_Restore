@interface THTimeoutLongPressGestureRecognizer
- (void)cancel;
- (void)dealloc;
- (void)p_startCancelTimer;
- (void)p_teardownTimer;
- (void)reset;
- (void)setState:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation THTimeoutLongPressGestureRecognizer

- (void)dealloc
{
  if (self->_cancelTimer)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3.receiver = self;
  v3.super_class = THTimeoutLongPressGestureRecognizer;
  [(THTimeoutLongPressGestureRecognizer *)&v3 dealloc];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = THTimeoutLongPressGestureRecognizer;
  [(THTimeoutLongPressGestureRecognizer *)&v5 touchesBegan:a3 withEvent:a4];
  if (![(THTimeoutLongPressGestureRecognizer *)self state])
  {
    [(THTimeoutLongPressGestureRecognizer *)self p_startCancelTimer];
  }
}

- (void)setState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = THTimeoutLongPressGestureRecognizer;
  [(THTimeoutLongPressGestureRecognizer *)&v5 setState:?];
  if ((a3 - 3) <= 2)
  {
    [(THTimeoutLongPressGestureRecognizer *)self p_teardownTimer];
  }
}

- (void)cancel
{
  if ([(THTimeoutLongPressGestureRecognizer *)self cancelTimer])
  {
    v3.receiver = self;
    v3.super_class = THTimeoutLongPressGestureRecognizer;
    [(THTimeoutLongPressGestureRecognizer *)&v3 cancel];
    [(THTimeoutLongPressGestureRecognizer *)self p_teardownTimer];
  }
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = THTimeoutLongPressGestureRecognizer;
  [(THTimeoutLongPressGestureRecognizer *)&v3 reset];
  [(THTimeoutLongPressGestureRecognizer *)self p_teardownTimer];
}

- (void)p_startCancelTimer
{
  [(NSTimer *)[(THTimeoutLongPressGestureRecognizer *)self cancelTimer] invalidate];
  [(THTimeoutLongPressGestureRecognizer *)self maximumPressDuration];
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"p_cancelTimerFired" selector:0 userInfo:0 repeats:?];

  [(THTimeoutLongPressGestureRecognizer *)self setCancelTimer:v3];
}

- (void)p_teardownTimer
{
  [(NSTimer *)[(THTimeoutLongPressGestureRecognizer *)self cancelTimer] invalidate];

  [(THTimeoutLongPressGestureRecognizer *)self setCancelTimer:0];
}

@end