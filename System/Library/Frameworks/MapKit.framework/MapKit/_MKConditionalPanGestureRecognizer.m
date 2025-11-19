@interface _MKConditionalPanGestureRecognizer
- (BOOL)_shouldReceiveEvent:(id)a3;
- (_MKConditionalPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
@end

@implementation _MKConditionalPanGestureRecognizer

- (BOOL)_shouldReceiveEvent:(id)a3
{
  v4 = a3;
  if (!-[_MKConditionalPanGestureRecognizer state](self, "state") && (self->_requiredModifierFlags & ~[v4 modifierFlags]) != 0)
  {
    [(_MKConditionalPanGestureRecognizer *)self setState:5];
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _MKConditionalPanGestureRecognizer;
    v5 = [(_MKConditionalPanGestureRecognizer *)&v7 _shouldReceiveEvent:v4];
  }

  return v5;
}

- (_MKConditionalPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v5.receiver = self;
  v5.super_class = _MKConditionalPanGestureRecognizer;
  return [(_MKConditionalPanGestureRecognizer *)&v5 initWithTarget:a3 action:a4];
}

@end