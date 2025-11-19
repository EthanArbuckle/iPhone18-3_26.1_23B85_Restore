@interface WTMainPopoverViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation WTMainPopoverViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = WTMainPopoverViewControllerAccessibility;
  [(WTMainPopoverViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

@end