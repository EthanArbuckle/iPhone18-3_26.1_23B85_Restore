@interface FilterOptionsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)updateTitleView;
@end

@implementation FilterOptionsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SeymourUI.FilterOptionsViewController" hasInstanceMethod:@"updateTitleView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SeymourUI.FilterOptionsViewController" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
}

- (void)updateTitleView
{
  v3 = [(FilterOptionsViewControllerAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v13 = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v12.receiver = self;
  v12.super_class = FilterOptionsViewControllerAccessibility;
  [(FilterOptionsViewControllerAccessibility *)&v12 updateTitleView];
  v5 = [(FilterOptionsViewControllerAccessibility *)self safeValueForKey:@"subtitleLabel"];

  v13 = 0;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();
  if (v13 == 1)
  {
    abort();
  }

  v7 = v6;
  if (v4)
  {
    v8 = [v6 text];
    v9 = [v8 length];

    if (v9)
    {
      v10 = *MEMORY[0x29EDC7EA8];
      v11 = [v7 text];
      UIAccessibilityPostNotification(v10, v11);
    }
  }
}

@end