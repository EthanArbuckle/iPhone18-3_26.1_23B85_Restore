@interface PKPaymentSetupFieldsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setHeaderViewTitle:(id)title subtitle:(id)subtitle;
@end

@implementation PKPaymentSetupFieldsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPaymentSetupFieldsViewController" hasInstanceVariable:@"_headerView" withType:"PKTableHeaderView"];
  [validationsCopy validateClass:@"PKTableHeaderView"];
  [validationsCopy validateClass:@"PKTableHeaderView" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPaymentSetupFieldsViewController" hasInstanceMethod:@"setHeaderViewTitle:subtitle:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)setHeaderViewTitle:(id)title subtitle:(id)subtitle
{
  titleCopy = title;
  subtitleCopy = subtitle;
  v15 = 0;
  objc_opt_class();
  v8 = [(PKPaymentSetupFieldsViewControllerAccessibility *)self safeValueForKey:@"_headerView"];
  v9 = [v8 safeValueForKey:@"_subtitleLabel"];
  v10 = __UIAccessibilityCastAsClass();

  text = [v10 text];

  v14.receiver = self;
  v14.super_class = PKPaymentSetupFieldsViewControllerAccessibility;
  [(PKPaymentSetupFieldsViewControllerAccessibility *)&v14 setHeaderViewTitle:titleCopy subtitle:subtitleCopy];
  v15 = 0;
  objc_opt_class();
  v12 = __UIAccessibilityCastAsClass();
  if (v15 == 1)
  {
    abort();
  }

  v13 = v12;
  if (([text isEqualToString:v12] & 1) == 0 && objc_msgSend(v13, "length"))
  {
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

@end