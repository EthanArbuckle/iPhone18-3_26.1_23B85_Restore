@interface PKPaymentSetupFieldsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setHeaderViewTitle:(id)a3 subtitle:(id)a4;
@end

@implementation PKPaymentSetupFieldsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPaymentSetupFieldsViewController" hasInstanceVariable:@"_headerView" withType:"PKTableHeaderView"];
  [v3 validateClass:@"PKTableHeaderView"];
  [v3 validateClass:@"PKTableHeaderView" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
  [v3 validateClass:@"PKPaymentSetupFieldsViewController" hasInstanceMethod:@"setHeaderViewTitle:subtitle:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)setHeaderViewTitle:(id)a3 subtitle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  objc_opt_class();
  v8 = [(PKPaymentSetupFieldsViewControllerAccessibility *)self safeValueForKey:@"_headerView"];
  v9 = [v8 safeValueForKey:@"_subtitleLabel"];
  v10 = __UIAccessibilityCastAsClass();

  v11 = [v10 text];

  v14.receiver = self;
  v14.super_class = PKPaymentSetupFieldsViewControllerAccessibility;
  [(PKPaymentSetupFieldsViewControllerAccessibility *)&v14 setHeaderViewTitle:v6 subtitle:v7];
  v15 = 0;
  objc_opt_class();
  v12 = __UIAccessibilityCastAsClass();
  if (v15 == 1)
  {
    abort();
  }

  v13 = v12;
  if (([v11 isEqualToString:v12] & 1) == 0 && objc_msgSend(v13, "length"))
  {
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

@end