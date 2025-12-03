@interface PKPeerPaymentBankAccountDetailCellAccessibility
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PKPeerPaymentBankAccountDetailCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = PKPeerPaymentBankAccountDetailCellAccessibility;
  [(PKPeerPaymentBankAccountDetailCellAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v7 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  editableTextField = [v3 editableTextField];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __93__PKPeerPaymentBankAccountDetailCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2E1B98;
  objc_copyWeak(&v6, &location);
  [editableTextField _setAccessibilityLabelBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __93__PKPeerPaymentBankAccountDetailCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = __UIAccessibilityCastAsClass();

  v4 = [v3 textLabel];
  v5 = [v4 accessibilityLabel];

  return v5;
}

- (id)accessibilityElements
{
  v2 = MEMORY[0x29EDB8D80];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  editableTextField = [v3 editableTextField];
  v5 = [v2 axArrayByIgnoringNilElementsWithCount:{1, editableTextField}];

  return v5;
}

@end