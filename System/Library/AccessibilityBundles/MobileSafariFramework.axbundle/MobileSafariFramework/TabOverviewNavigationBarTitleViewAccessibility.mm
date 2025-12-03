@interface TabOverviewNavigationBarTitleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation TabOverviewNavigationBarTitleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFTabOverviewNavigationBarTitleView" conformsToProtocol:@"UITextFieldDelegate"];
  [validationsCopy validateClass:@"SFTabOverviewNavigationBarTitleView" hasInstanceMethod:@"textFieldDidEndEditing:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SFTabOverviewNavigationBarTitleView" hasSwiftField:@"titleButton" withSwiftType:"UIButton"];
}

- (void)textFieldDidEndEditing:(id)editing
{
  v6.receiver = self;
  v6.super_class = TabOverviewNavigationBarTitleViewAccessibility;
  [(TabOverviewNavigationBarTitleViewAccessibility *)&v6 textFieldDidEndEditing:editing];
  v4 = *MEMORY[0x29EDC7ED8];
  v5 = [(TabOverviewNavigationBarTitleViewAccessibility *)self safeSwiftValueForKey:@"titleButton"];
  UIAccessibilityPostNotification(v4, v5);
}

@end