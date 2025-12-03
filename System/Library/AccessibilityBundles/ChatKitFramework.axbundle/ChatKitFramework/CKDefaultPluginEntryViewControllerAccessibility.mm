@interface CKDefaultPluginEntryViewControllerAccessibility
- (void)_axSetCloseActionProviderOnBubbleView:(id)view;
@end

@implementation CKDefaultPluginEntryViewControllerAccessibility

- (void)_axSetCloseActionProviderOnBubbleView:(id)view
{
  viewCopy = view;
  v5 = [(CKDefaultPluginEntryViewControllerAccessibility *)self safeValueForKey:@"balloonView"];
  [v5 _accessibilitySetRetainedValue:viewCopy forKey:@"AXPluginClearActionProvider"];
}

@end