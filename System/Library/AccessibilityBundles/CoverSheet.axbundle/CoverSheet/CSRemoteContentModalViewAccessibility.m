@interface CSRemoteContentModalViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CSRemoteContentModalViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CSRemoteContentModalViewAccessibility;
  [(CSRemoteContentModalViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CSRemoteContentModalViewAccessibility *)self safeValueForKey:@"_backgroundDismissButton"];
  [v3 setIsAccessibilityElement:0];
}

@end