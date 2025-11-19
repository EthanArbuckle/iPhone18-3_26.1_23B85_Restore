@interface AMUIInfographViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_showLaunchConfirmationForApplicationWithBundleIdentifier:(id)a3 withActions:(id)a4 iconView:(id)a5;
@end

@implementation AMUIInfographViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AMUIInfographViewController" hasInstanceMethod:@"launchConfirmationView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AMUIInfographViewController" hasInstanceMethod:@"_showLaunchConfirmationForApplicationWithBundleIdentifier:withActions:iconView:" withFullSignature:{"v", "@", "@", "@", 0}];
}

- (void)_showLaunchConfirmationForApplicationWithBundleIdentifier:(id)a3 withActions:(id)a4 iconView:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = AMUIInfographViewControllerAccessibility;
  [(AMUIInfographViewControllerAccessibility *)&v12 _showLaunchConfirmationForApplicationWithBundleIdentifier:a3 withActions:a4 iconView:v8];
  if (v8)
  {
    v9 = [(AMUIInfographViewControllerAccessibility *)self safeValueForKey:@"launchConfirmationView"];
    [v9 setIsAccessibilityElementBlock:&__block_literal_global_0];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __123__AMUIInfographViewControllerAccessibility__showLaunchConfirmationForApplicationWithBundleIdentifier_withActions_iconView___block_invoke_2;
    v10[3] = &unk_29F29CB68;
    v11 = v8;
    [v9 setAccessibilityLabelBlock:v10];
  }
}

id __123__AMUIInfographViewControllerAccessibility__showLaunchConfirmationForApplicationWithBundleIdentifier_withActions_iconView___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = accessibilityLocalizedString(@"widget.launched");
  v4 = [*(a1 + 32) accessibilityLabel];
  v5 = v4;
  v6 = &stru_2A20E7ED0;
  if (v4)
  {
    v6 = v4;
  }

  v7 = [v2 localizedStringWithFormat:v3, v6];

  return v7;
}

@end