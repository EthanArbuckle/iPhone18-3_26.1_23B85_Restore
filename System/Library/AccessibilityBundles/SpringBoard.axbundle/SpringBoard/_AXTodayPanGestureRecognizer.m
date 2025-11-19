@interface _AXTodayPanGestureRecognizer
- (CGPoint)translationInView:(id)a3;
- (CGPoint)velocityInView:(id)a3;
- (double)_xDimensionForTransition;
- (id)initGestureToShow:(BOOL)a3 leading:(BOOL)a4;
@end

@implementation _AXTodayPanGestureRecognizer

- (id)initGestureToShow:(BOOL)a3 leading:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AXTodayPanGestureRecognizer;
  v6 = [(_AXTodayPanGestureRecognizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(_AXTodayPanGestureRecognizer *)v6 setShow:v5];
    [(_AXTodayPanGestureRecognizer *)v7 setLeading:v4];
  }

  return v7;
}

- (CGPoint)translationInView:(id)a3
{
  [(_AXTodayPanGestureRecognizer *)self _xDimensionForTransition];
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)velocityInView:(id)a3
{
  [(_AXTodayPanGestureRecognizer *)self _xDimensionForTransition];
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (double)_xDimensionForTransition
{
  v3 = [(_AXTodayPanGestureRecognizer *)self _accessibilityIsRTL];
  if ([(_AXTodayPanGestureRecognizer *)self leading]!= v3)
  {
    v4 = 5000.0;
  }

  else
  {
    v4 = -5000.0;
  }

  v5 = [(_AXTodayPanGestureRecognizer *)self show];
  result = -v4;
  if (v5)
  {
    return v4;
  }

  return result;
}

@end