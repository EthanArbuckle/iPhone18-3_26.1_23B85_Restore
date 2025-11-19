@interface FIUIActionButtonAccessibility
- (id)accessibilityPath;
@end

@implementation FIUIActionButtonAccessibility

- (id)accessibilityPath
{
  v7.receiver = self;
  v7.super_class = FIUIActionButtonAccessibility;
  v3 = [(FIUIActionButtonAccessibility *)&v7 accessibilityPath];
  if ([(FIUIActionButtonAccessibility *)self _accessibilityIsFKARunningForFocusItem]&& !v3)
  {
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    v5 = [v4 _backgroundView];

    if ([v5 _accessibilityViewIsVisible])
    {
      [v5 accessibilityFrame];
      v3 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

@end