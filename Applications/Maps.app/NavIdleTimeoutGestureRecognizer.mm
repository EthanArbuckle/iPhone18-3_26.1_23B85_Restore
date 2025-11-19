@interface NavIdleTimeoutGestureRecognizer
- (NavIdleTimeoutGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation NavIdleTimeoutGestureRecognizer

- (void)reset
{
  v4.receiver = self;
  v4.super_class = NavIdleTimeoutGestureRecognizer;
  [(NavIdleTimeoutGestureRecognizer *)&v4 reset];
  event = self->_event;
  self->_event = 0;
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  objc_storeStrong(&self->_event, a4);

  [(NavIdleTimeoutGestureRecognizer *)self setState:4];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  objc_storeStrong(&self->_event, a4);

  [(NavIdleTimeoutGestureRecognizer *)self setState:3];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  objc_storeStrong(&self->_event, a4);

  [(NavIdleTimeoutGestureRecognizer *)self setState:1];
}

- (NavIdleTimeoutGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = NavIdleTimeoutGestureRecognizer;
  v4 = [(NavIdleTimeoutGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(NavIdleTimeoutGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(NavIdleTimeoutGestureRecognizer *)v5 setDelaysTouchesBegan:0];
    [(NavIdleTimeoutGestureRecognizer *)v5 setDelaysTouchesEnded:0];
  }

  return v5;
}

@end