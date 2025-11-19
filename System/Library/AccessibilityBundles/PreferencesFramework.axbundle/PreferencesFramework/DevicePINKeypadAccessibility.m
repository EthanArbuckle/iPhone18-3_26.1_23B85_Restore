@interface DevicePINKeypadAccessibility
- (CGRect)accessibilityFrame;
@end

@implementation DevicePINKeypadAccessibility

- (CGRect)accessibilityFrame
{
  [(DevicePINKeypadAccessibility *)self bounds];
  UIAccessibilityFrameForBounds();
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v11 = [(DevicePINKeypadAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Devicepinpane.isa)];
  v12 = v11;
  if (v11)
  {
    [v11 accessibilityFrame];
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v18 = CGRectIntersection(v17, v20);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

@end