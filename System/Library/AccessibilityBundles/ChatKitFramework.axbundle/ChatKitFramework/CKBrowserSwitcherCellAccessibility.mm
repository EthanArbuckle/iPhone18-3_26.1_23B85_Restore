@interface CKBrowserSwitcherCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
@end

@implementation CKBrowserSwitcherCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKBrowserPluginCell" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (BOOL)canBecomeFocused
{
  v5.receiver = self;
  v5.super_class = CKBrowserSwitcherCellAccessibility;
  canBecomeFocused = [(CKBrowserSwitcherCellAccessibility *)&v5 canBecomeFocused];
  return ([(CKBrowserSwitcherCellAccessibility *)self _accessibilityIsFKARunningForFocusItem]^ 1) & canBecomeFocused;
}

@end