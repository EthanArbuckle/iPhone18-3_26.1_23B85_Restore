@interface CKDefaultPluginEntryViewControllerAccessibility
- (void)_axSetCloseActionProviderOnBubbleView:(id)a3;
@end

@implementation CKDefaultPluginEntryViewControllerAccessibility

- (void)_axSetCloseActionProviderOnBubbleView:(id)a3
{
  v4 = a3;
  v5 = [(CKDefaultPluginEntryViewControllerAccessibility *)self safeValueForKey:@"balloonView"];
  [v5 _accessibilitySetRetainedValue:v4 forKey:@"AXPluginClearActionProvider"];
}

@end