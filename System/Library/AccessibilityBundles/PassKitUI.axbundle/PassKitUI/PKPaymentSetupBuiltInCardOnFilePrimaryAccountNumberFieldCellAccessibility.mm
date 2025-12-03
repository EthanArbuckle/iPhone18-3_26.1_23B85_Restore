@interface PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell" hasInstanceMethod:@"paymentCredentialType" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCell" isKindOfClass:@"UITableViewCell"];
}

- (id)accessibilityLabel
{
  [(PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCellAccessibility *)self safeIntegerForKey:@"paymentCredentialType"];
  v3 = PKDisplayablePaymentNetworkNameForPaymentCredentialType();
  v4 = [(PKPaymentSetupBuiltInCardOnFilePrimaryAccountNumberFieldCellAccessibility *)self safeUIViewForKey:@"textLabel"];
  accessibilityLabel = [v4 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end