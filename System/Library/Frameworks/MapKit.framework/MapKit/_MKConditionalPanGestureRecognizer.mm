@interface _MKConditionalPanGestureRecognizer
- (BOOL)_shouldReceiveEvent:(id)event;
- (_MKConditionalPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
@end

@implementation _MKConditionalPanGestureRecognizer

- (BOOL)_shouldReceiveEvent:(id)event
{
  eventCopy = event;
  if (!-[_MKConditionalPanGestureRecognizer state](self, "state") && (self->_requiredModifierFlags & ~[eventCopy modifierFlags]) != 0)
  {
    [(_MKConditionalPanGestureRecognizer *)self setState:5];
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _MKConditionalPanGestureRecognizer;
    v5 = [(_MKConditionalPanGestureRecognizer *)&v7 _shouldReceiveEvent:eventCopy];
  }

  return v5;
}

- (_MKConditionalPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v5.receiver = self;
  v5.super_class = _MKConditionalPanGestureRecognizer;
  return [(_MKConditionalPanGestureRecognizer *)&v5 initWithTarget:target action:action];
}

@end