@interface DisplayViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation DisplayViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = DisplayViewControllerAccessibility;
  [(DisplayViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(DisplayViewControllerAccessibility *)self safeValueForKey:@"displayView"];
  v4 = accessibilityLocalizedString(@"display.view.label");
  [v3 setAccessibilityLabel:v4];

  [v3 setIsAccessibilityElement:1];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F68]];
}

@end