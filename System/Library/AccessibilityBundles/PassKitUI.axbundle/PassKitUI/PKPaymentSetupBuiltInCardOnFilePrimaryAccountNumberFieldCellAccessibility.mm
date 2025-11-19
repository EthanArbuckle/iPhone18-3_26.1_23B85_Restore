@interface PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell" hasInstanceMethod:@"paymentCredentialType" withFullSignature:{"q", 0}];
  [v3 validateClass:@"PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell" isKindOfClass:@"UITableViewCell"];
}

- (id)accessibilityLabel
{
  [(PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCellAccessibility *)self safeIntegerForKey:@"paymentCredentialType"];
  v3 = PKDisplayablePaymentNetworkNameForPaymentCredentialType();
  v4 = [(PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCellAccessibility *)self safeUIViewForKey:@"textLabel"];
  v5 = [v4 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end