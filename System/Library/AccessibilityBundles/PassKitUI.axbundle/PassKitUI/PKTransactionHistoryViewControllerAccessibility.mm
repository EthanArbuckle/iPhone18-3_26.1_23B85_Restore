@interface PKTransactionHistoryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_barButtonItems;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PKTransactionHistoryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKTransactionHistoryViewController" hasInstanceVariable:@"_detailsButton" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"PKTransactionHistoryViewController" hasInstanceVariable:@"_phoneButton" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"PKTransactionHistoryViewController" hasInstanceVariable:@"_messageButton" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"PKTransactionHistoryViewController" hasInstanceMethod:@"_barButtonItems" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = PKTransactionHistoryViewControllerAccessibility;
  [(PKTransactionHistoryViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKTransactionHistoryViewControllerAccessibility *)self safeValueForKey:@"_detailsButton"];
  v4 = accessibilityLocalizedString(@"details.button");
  [v3 setAccessibilityLabel:v4];

  v5 = [(PKTransactionHistoryViewControllerAccessibility *)self safeValueForKey:@"_phoneButton"];
  v6 = accessibilityLocalizedString(@"phone.contact.button");
  [v5 setAccessibilityLabel:v6];

  v7 = [(PKTransactionHistoryViewControllerAccessibility *)self safeValueForKey:@"_messageButton"];
  v8 = accessibilityLocalizedString(@"message.contact.button");
  [v7 setAccessibilityLabel:v8];
}

- (id)_barButtonItems
{
  v5.receiver = self;
  v5.super_class = PKTransactionHistoryViewControllerAccessibility;
  _barButtonItems = [(PKTransactionHistoryViewControllerAccessibility *)&v5 _barButtonItems];
  [(PKTransactionHistoryViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return _barButtonItems;
}

@end