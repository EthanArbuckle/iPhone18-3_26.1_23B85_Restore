@interface TabOverviewNavigationBarTitleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation TabOverviewNavigationBarTitleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFTabOverviewNavigationBarTitleView" conformsToProtocol:@"UITextFieldDelegate"];
  [v3 validateClass:@"SFTabOverviewNavigationBarTitleView" hasInstanceMethod:@"textFieldDidEndEditing:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SFTabOverviewNavigationBarTitleView" hasSwiftField:@"titleButton" withSwiftType:"UIButton"];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v6.receiver = self;
  v6.super_class = TabOverviewNavigationBarTitleViewAccessibility;
  [(TabOverviewNavigationBarTitleViewAccessibility *)&v6 textFieldDidEndEditing:a3];
  v4 = *MEMORY[0x29EDC7ED8];
  v5 = [(TabOverviewNavigationBarTitleViewAccessibility *)self safeSwiftValueForKey:@"titleButton"];
  UIAccessibilityPostNotification(v4, v5);
}

@end