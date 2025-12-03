@interface PKObserverGestureRecognizer
- (PKObserverGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation PKObserverGestureRecognizer

- (PKObserverGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = PKObserverGestureRecognizer;
  v4 = [(PKObserverGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(PKObserverGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(PKObserverGestureRecognizer *)v5 setDelaysTouchesBegan:0];
    [(PKObserverGestureRecognizer *)v5 setDelaysTouchesEnded:0];
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = PKObserverGestureRecognizer;
  [(PKObserverGestureRecognizer *)&v10 touchesBegan:beganCopy withEvent:eventCopy];
  eventHandler = [(PKObserverGestureRecognizer *)self eventHandler];

  if (eventHandler)
  {
    eventHandler2 = [(PKObserverGestureRecognizer *)self eventHandler];
    (eventHandler2)[2](eventHandler2, beganCopy, eventCopy);
  }

  [(PKObserverGestureRecognizer *)self setState:0];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = PKObserverGestureRecognizer;
  [(PKObserverGestureRecognizer *)&v5 touchesMoved:moved withEvent:event];
  [(PKObserverGestureRecognizer *)self setState:0];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = PKObserverGestureRecognizer;
  [(PKObserverGestureRecognizer *)&v5 touchesEnded:ended withEvent:event];
  [(PKObserverGestureRecognizer *)self setState:0];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = PKObserverGestureRecognizer;
  [(PKObserverGestureRecognizer *)&v5 touchesCancelled:cancelled withEvent:event];
  [(PKObserverGestureRecognizer *)self setState:0];
}

@end