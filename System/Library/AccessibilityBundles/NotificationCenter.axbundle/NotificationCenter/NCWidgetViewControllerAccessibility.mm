@interface NCWidgetViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation NCWidgetViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_NCWidgetViewController" hasInstanceMethod:@"_setActiveDisplayMode: unconditionallyNotifyingContentProvidingViewController:" withFullSignature:{"v", "q", "B", 0}];
  [validationsCopy validateClass:@"_NCWidgetViewController" hasInstanceMethod:@"_widgetExtensionContext" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_NCWidgetExtensionContext" hasInstanceMethod:@"_activeDisplayMode" withFullSignature:{"q", 0}];
}

@end