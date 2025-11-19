@interface WFWidgetConfigurationCardHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation WFWidgetConfigurationCardHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WFWidgetConfigurationCardHeaderView" hasInstanceMethod:@"labelsStackView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFWidgetConfigurationCardHeaderView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFWidgetConfigurationCardHeaderView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = WFWidgetConfigurationCardHeaderViewAccessibility;
  [(WFWidgetConfigurationCardHeaderViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(WFWidgetConfigurationCardHeaderViewAccessibility *)self safeValueForKey:@"labelsStackView"];
  [v3 setIsAccessibilityElement:1];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  v4 = [(WFWidgetConfigurationCardHeaderViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v5 = [(WFWidgetConfigurationCardHeaderViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v6 = __UIAXStringForVariables();
  [v3 setAccessibilityLabel:{v6, v5, @"__AXStringForVariablesSentinel"}];
}

@end