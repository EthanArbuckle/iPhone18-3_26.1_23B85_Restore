@interface NavIdleTimeoutGestureRecognizer
- (NavIdleTimeoutGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
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

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  objc_storeStrong(&self->_event, event);

  [(NavIdleTimeoutGestureRecognizer *)self setState:4];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  objc_storeStrong(&self->_event, event);

  [(NavIdleTimeoutGestureRecognizer *)self setState:3];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  objc_storeStrong(&self->_event, event);

  [(NavIdleTimeoutGestureRecognizer *)self setState:1];
}

- (NavIdleTimeoutGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = NavIdleTimeoutGestureRecognizer;
  v4 = [(NavIdleTimeoutGestureRecognizer *)&v7 initWithTarget:target action:action];
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