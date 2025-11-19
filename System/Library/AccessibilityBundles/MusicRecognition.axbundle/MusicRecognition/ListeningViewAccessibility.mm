@interface ListeningViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation ListeningViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = ListeningViewAccessibility;
  [(ListeningViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(ListeningViewAccessibility *)self safeSwiftValueForKey:@"cancelButton"];
  v4 = accessibilityLocalizedString(@"ACCESSIBILITY_STOP_LISTENING");
  [v3 setAccessibilityLabel:v4];
}

@end