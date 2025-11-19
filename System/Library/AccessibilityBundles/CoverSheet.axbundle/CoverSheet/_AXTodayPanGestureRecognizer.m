@interface _AXTodayPanGestureRecognizer
- (CGPoint)translationInView:(id)a3;
- (CGPoint)velocityInView:(id)a3;
@end

@implementation _AXTodayPanGestureRecognizer

- (CGPoint)translationInView:(id)a3
{
  v4 = [(_AXTodayPanGestureRecognizer *)self show];
  v5 = [(_AXTodayPanGestureRecognizer *)self _accessibilityIsRTL];
  v6 = -5000.0;
  if (v5 != v4)
  {
    v6 = 5000.0;
  }

  v7 = 0.0;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)velocityInView:(id)a3
{
  v4 = [(_AXTodayPanGestureRecognizer *)self show];
  v5 = [(_AXTodayPanGestureRecognizer *)self _accessibilityIsRTL];
  v6 = -5000.0;
  if (v5 != v4)
  {
    v6 = 5000.0;
  }

  v7 = 0.0;
  result.y = v7;
  result.x = v6;
  return result;
}

@end