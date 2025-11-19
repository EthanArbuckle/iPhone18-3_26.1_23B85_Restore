@interface _MKConditionalPanTiltGestureRecognizer
- (_MKConditionalPanTiltGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
@end

@implementation _MKConditionalPanTiltGestureRecognizer

- (_MKConditionalPanTiltGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _MKConditionalPanTiltGestureRecognizer;
  v4 = [(_MKConditionalPanGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(_MKConditionalPanTiltGestureRecognizer *)v4 _setCanPanHorizontally:0];
    [(_MKConditionalPanGestureRecognizer *)v5 setRequiredModifierFlags:0x80000];
  }

  return v5;
}

@end