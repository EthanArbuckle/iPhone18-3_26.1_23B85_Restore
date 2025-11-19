@interface _MKConditionalPanZoomGestureRecognizer
- (_MKConditionalPanZoomGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
@end

@implementation _MKConditionalPanZoomGestureRecognizer

- (_MKConditionalPanZoomGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _MKConditionalPanZoomGestureRecognizer;
  v4 = [(_MKConditionalPanGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(_MKConditionalPanZoomGestureRecognizer *)v4 _setCanPanHorizontally:0];
    [(_MKConditionalPanGestureRecognizer *)v5 setRequiredModifierFlags:0x20000];
  }

  return v5;
}

@end