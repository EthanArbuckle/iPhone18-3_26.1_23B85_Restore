@interface _AXTodayPanGestureRecognizer
- (CGPoint)translationInView:(id)view;
- (CGPoint)velocityInView:(id)view;
@end

@implementation _AXTodayPanGestureRecognizer

- (CGPoint)translationInView:(id)view
{
  show = [(_AXTodayPanGestureRecognizer *)self show];
  _accessibilityIsRTL = [(_AXTodayPanGestureRecognizer *)self _accessibilityIsRTL];
  v6 = -5000.0;
  if (_accessibilityIsRTL != show)
  {
    v6 = 5000.0;
  }

  v7 = 0.0;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)velocityInView:(id)view
{
  show = [(_AXTodayPanGestureRecognizer *)self show];
  _accessibilityIsRTL = [(_AXTodayPanGestureRecognizer *)self _accessibilityIsRTL];
  v6 = -5000.0;
  if (_accessibilityIsRTL != show)
  {
    v6 = 5000.0;
  }

  v7 = 0.0;
  result.y = v7;
  result.x = v6;
  return result;
}

@end