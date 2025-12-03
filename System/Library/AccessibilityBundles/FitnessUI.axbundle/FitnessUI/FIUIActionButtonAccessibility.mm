@interface FIUIActionButtonAccessibility
- (id)accessibilityPath;
@end

@implementation FIUIActionButtonAccessibility

- (id)accessibilityPath
{
  v7.receiver = self;
  v7.super_class = FIUIActionButtonAccessibility;
  accessibilityPath = [(FIUIActionButtonAccessibility *)&v7 accessibilityPath];
  if ([(FIUIActionButtonAccessibility *)self _accessibilityIsFKARunningForFocusItem]&& !accessibilityPath)
  {
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    _backgroundView = [v4 _backgroundView];

    if ([_backgroundView _accessibilityViewIsVisible])
    {
      [_backgroundView accessibilityFrame];
      accessibilityPath = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
    }

    else
    {
      accessibilityPath = 0;
    }
  }

  return accessibilityPath;
}

@end