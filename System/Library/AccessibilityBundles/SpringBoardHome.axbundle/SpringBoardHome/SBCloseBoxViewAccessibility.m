@interface SBCloseBoxViewAccessibility
- (CGPoint)_accessibilityVisiblePoint;
@end

@implementation SBCloseBoxViewAccessibility

- (CGPoint)_accessibilityVisiblePoint
{
  v5.receiver = self;
  v5.super_class = SBCloseBoxViewAccessibility;
  [(SBCloseBoxViewAccessibility *)&v5 _accessibilityVisiblePoint];
  v4 = fmax(v3, 0.0);
  result.y = v2;
  result.x = v4;
  return result;
}

@end