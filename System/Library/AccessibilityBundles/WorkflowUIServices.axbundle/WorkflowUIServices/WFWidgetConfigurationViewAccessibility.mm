@interface WFWidgetConfigurationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation WFWidgetConfigurationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WFWidgetConfigurationView" hasInstanceMethod:@"containerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFWidgetConfigurationContainerView" hasInstanceMethod:@"requestDismissal" withFullSignature:{"v", 0}];
}

void __68__WFWidgetConfigurationViewAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"containerView"];
  [v1 requestDismissal];
}

@end