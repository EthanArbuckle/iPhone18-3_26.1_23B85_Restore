@interface _MKConditionalPanRotationGestureRecognizer
- (_MKConditionalPanRotationGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
@end

@implementation _MKConditionalPanRotationGestureRecognizer

- (_MKConditionalPanRotationGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _MKConditionalPanRotationGestureRecognizer;
  v4 = [(_MKConditionalPanGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(_MKConditionalPanRotationGestureRecognizer *)v4 _setCanPanVertically:0];
    [(_MKConditionalPanGestureRecognizer *)v5 setRequiredModifierFlags:0x80000];
  }

  return v5;
}

@end