@interface CAMApplicationDelegateAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CAMApplicationDelegateAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CAMApplicationDelegateAccessibility;
  [(CAMApplicationDelegateAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CAMApplicationDelegateAccessibility *)self safeValueForKey:@"captureController"];
  [v3 _accessibilityLoadAccessibilityInformation];
}

@end