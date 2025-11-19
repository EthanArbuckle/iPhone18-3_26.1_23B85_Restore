@interface THShortTapGestureRecognizer
- (void)p_clearTimer;
- (void)p_timeout;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation THShortTapGestureRecognizer

- (void)p_clearTimer
{
  [(NSTimer *)self->_timer invalidate];

  self->_timer = 0;
}

- (void)p_timeout
{
  if (![(THShortTapGestureRecognizer *)self state])
  {

    [(THShortTapGestureRecognizer *)self setState:5];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = THShortTapGestureRecognizer;
  [(THShortTapGestureRecognizer *)&v5 touchesBegan:a3 withEvent:a4];
  if (![(THShortTapGestureRecognizer *)self state])
  {
    [(THShortTapGestureRecognizer *)self p_scheduleTimer];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  [(THShortTapGestureRecognizer *)self p_clearTimer];
  v7.receiver = self;
  v7.super_class = THShortTapGestureRecognizer;
  [(THShortTapGestureRecognizer *)&v7 touchesEnded:a3 withEvent:a4];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = THShortTapGestureRecognizer;
  [(THShortTapGestureRecognizer *)&v3 reset];
  [(THShortTapGestureRecognizer *)self delegate];
  [TSUProtocolCast() didReset:self];
}

@end