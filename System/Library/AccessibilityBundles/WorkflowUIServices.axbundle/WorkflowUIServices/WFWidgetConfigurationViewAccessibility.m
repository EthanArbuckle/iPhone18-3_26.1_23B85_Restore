@interface WFWidgetConfigurationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation WFWidgetConfigurationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WFWidgetConfigurationView" hasInstanceMethod:@"containerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFWidgetConfigurationContainerView" hasInstanceMethod:@"requestDismissal" withFullSignature:{"v", 0}];
}

void __68__WFWidgetConfigurationViewAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"containerView"];
  [v1 requestDismissal];
}

@end