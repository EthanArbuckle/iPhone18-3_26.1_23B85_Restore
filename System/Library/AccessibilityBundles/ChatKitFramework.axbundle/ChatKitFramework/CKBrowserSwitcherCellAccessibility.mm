@interface CKBrowserSwitcherCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)canBecomeFocused;
@end

@implementation CKBrowserSwitcherCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKBrowserPluginCell" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (BOOL)canBecomeFocused
{
  v5.receiver = self;
  v5.super_class = CKBrowserSwitcherCellAccessibility;
  v3 = [(CKBrowserSwitcherCellAccessibility *)&v5 canBecomeFocused];
  return ([(CKBrowserSwitcherCellAccessibility *)self _accessibilityIsFKARunningForFocusItem]^ 1) & v3;
}

@end