@interface _UIGrabberAccessibility
- (CGPoint)_accessibilityVisiblePoint;
- (id)accessibilityLabel;
@end

@implementation _UIGrabberAccessibility

- (CGPoint)_accessibilityVisiblePoint
{
  [(_UIGrabberAccessibility *)self accessibilityFrame];
  AX_CGRectGetCenter();
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)accessibilityLabel
{
  v7[2] = self;
  v7[1] = a2;
  v6.receiver = self;
  v6.super_class = _UIGrabberAccessibility;
  v7[0] = [(_UIGrabberAccessibility *)&v6 accessibilityLabel];
  if (![v7[0] length])
  {
    v2 = accessibilityLocalizedString(@"sheet.grabber");
    v3 = v7[0];
    v7[0] = v2;
    MEMORY[0x29EDC9740](v3);
  }

  v5 = MEMORY[0x29EDC9748](v7[0]);
  objc_storeStrong(v7, 0);

  return v5;
}

@end