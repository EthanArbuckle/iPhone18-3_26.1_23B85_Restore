@interface UIKitButtonBaseAccessibility
- (BOOL)canBecomeFocused;
@end

@implementation UIKitButtonBaseAccessibility

- (BOOL)canBecomeFocused
{
  if ([(UIKitButtonBaseAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {

    return [(UIKitButtonBaseAccessibility *)self isAccessibilityElement];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = UIKitButtonBaseAccessibility;
    return [(UIKitButtonBaseAccessibility *)&v4 canBecomeFocused];
  }
}

@end