@interface AVUserInteractionObserverGestureRecognizer
- (AVUserInteractionObserverGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_touchesEndedOrCancelled:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation AVUserInteractionObserverGestureRecognizer

- (void)_touchesEndedOrCancelled:(id)a3
{
  [(NSMutableSet *)self->_trackedTouches minusSet:a3];
  if (![(NSMutableSet *)self->_trackedTouches count])
  {

    [(AVUserInteractionObserverGestureRecognizer *)self setState:3];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  [(AVUserInteractionObserverGestureRecognizer *)self setState:1];
  [(NSMutableSet *)self->_trackedTouches unionSet:v5];
}

- (AVUserInteractionObserverGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v8.receiver = self;
  v8.super_class = AVUserInteractionObserverGestureRecognizer;
  v4 = [(AVUserInteractionObserverGestureRecognizer *)&v8 initWithTarget:a3 action:a4];
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