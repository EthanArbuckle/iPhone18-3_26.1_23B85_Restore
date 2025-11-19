@interface CSLPanGestureRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)a3;
- (CGPoint)touchPoint;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation CSLPanGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 anyObject];
  [v8 locationInView:0];
  [(CSLPanGestureRecognizer *)self setTouchPoint:?];
  v9.receiver = self;
  v9.super_class = CSLPanGestureRecognizer;
  [(CSLPanGestureRecognizer *)&v9 touchesBegan:v6 withEvent:v7];
}

- (BOOL)canBePreventedByGestureRecognizer:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CSLPanGestureRecognizer;
    v5 = [(CSLPanGestureRecognizer *)&v7 canBePreventedByGestureRecognizer:v4];
  }

  return v5;
}

- (CGPoint)touchPoint
{
  x = self->_touchPoint.x;
  y = self->_touchPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end