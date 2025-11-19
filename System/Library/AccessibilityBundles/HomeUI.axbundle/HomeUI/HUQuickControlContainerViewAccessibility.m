@interface HUQuickControlContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation HUQuickControlContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUQuickControlContainerView" hasInstanceMethod:@"detailsButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlContainerView" isKindOfClass:@"UIView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HUQuickControlContainerViewAccessibility;
  [(HUQuickControlContainerViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilityHomeUILocalizedString(@"settings.button");
  v4 = [(HUQuickControlContainerViewAccessibility *)self safeUIViewForKey:@"detailsButton"];
  [v4 setAccessibilityLabel:v3];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUQuickControlContainerViewAccessibility;
  [(HUQuickControlContainerViewAccessibility *)&v3 layoutSubviews];
  [(HUQuickControlContainerViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end