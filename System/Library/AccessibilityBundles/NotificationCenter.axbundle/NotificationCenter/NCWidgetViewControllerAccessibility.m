@interface NCWidgetViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation NCWidgetViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_NCWidgetViewController" hasInstanceMethod:@"_setActiveDisplayMode: unconditionallyNotifyingContentProvidingViewController:" withFullSignature:{"v", "q", "B", 0}];
  [v3 validateClass:@"_NCWidgetViewController" hasInstanceMethod:@"_widgetExtensionContext" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_NCWidgetExtensionContext" hasInstanceMethod:@"_activeDisplayMode" withFullSignature:{"q", 0}];
}

@end