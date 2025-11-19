@interface PhoneRootViewAccessibility
- (BOOL)accessibilityViewIsModal;
@end

@implementation PhoneRootViewAccessibility

- (BOOL)accessibilityViewIsModal
{
  if (([(PhoneRootViewAccessibility *)self _accessibilityViewIsVisible]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = PhoneRootViewAccessibility;
  return [(PhoneRootViewAccessibility *)&v4 accessibilityViewIsModal];
}

@end