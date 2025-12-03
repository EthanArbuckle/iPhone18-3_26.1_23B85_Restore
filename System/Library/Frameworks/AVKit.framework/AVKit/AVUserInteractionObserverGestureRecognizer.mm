@interface AVUserInteractionObserverGestureRecognizer
- (AVUserInteractionObserverGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)_touchesEndedOrCancelled:(id)cancelled;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation AVUserInteractionObserverGestureRecognizer

- (void)_touchesEndedOrCancelled:(id)cancelled
{
  [(NSMutableSet *)self->_trackedTouches minusSet:cancelled];
  if (![(NSMutableSet *)self->_trackedTouches count])
  {

    [(AVUserInteractionObserverGestureRecognizer *)self setState:3];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  [(AVUserInteractionObserverGestureRecognizer *)self setState:1];
  [(NSMutableSet *)self->_trackedTouches unionSet:beganCopy];
}

- (AVUserInteractionObserverGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = AVUserInteractionObserverGestureRecognizer;
  v4 = [(AVUserInteractionObserverGestureRecognizer *)&v8 initWithTarget:target action:action];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    trackedTouches = v4->_trackedTouches;
    v4->_trackedTouches = v5;

    [(AVUserInteractionObserverGestureRecognizer *)v4 setCancelsTouchesInView:0];
  }

  return v4;
}

@end