@interface _AXTodayPanGestureRecognizer
- (CGPoint)translationInView:(id)view;
- (CGPoint)velocityInView:(id)view;
- (double)_xDimensionForTransition;
- (id)initGestureToShow:(BOOL)show leading:(BOOL)leading;
@end

@implementation _AXTodayPanGestureRecognizer

- (id)initGestureToShow:(BOOL)show leading:(BOOL)leading
{
  leadingCopy = leading;
  showCopy = show;
  v9.receiver = self;
  v9.super_class = _AXTodayPanGestureRecognizer;
  v6 = [(_AXTodayPanGestureRecognizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(_AXTodayPanGestureRecognizer *)v6 setShow:showCopy];
    [(_AXTodayPanGestureRecognizer *)v7 setLeading:leadingCopy];
  }

  return v7;
}

- (CGPoint)translationInView:(id)view
{
  [(_AXTodayPanGestureRecognizer *)self _xDimensionForTransition];
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)velocityInView:(id)view
{
  [(_AXTodayPanGestureRecognizer *)self _xDimensionForTransition];
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (double)_xDimensionForTransition
{
  _accessibilityIsRTL = [(_AXTodayPanGestureRecognizer *)self _accessibilityIsRTL];
  if ([(_AXTodayPanGestureRecognizer *)self leading]!= _accessibilityIsRTL)
  {
    v4 = 5000.0;
  }

  else
  {
    v4 = -5000.0;
  }

  show = [(_AXTodayPanGestureRecognizer *)self show];
  result = -v4;
  if (show)
  {
    return v4;
  }

  return result;
}

@end