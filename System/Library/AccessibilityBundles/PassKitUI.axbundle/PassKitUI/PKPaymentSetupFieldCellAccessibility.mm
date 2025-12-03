@interface PKPaymentSetupFieldCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsPickerType;
- (BOOL)_axIsTextFieldType;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation PKPaymentSetupFieldCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPaymentSetupFieldCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"PKPaymentSetupFieldCell" hasInstanceVariable:@"_paymentSetupField" withType:"PKPaymentSetupField"];
  [validationsCopy validateClass:@"PKPaymentSetupFieldCell" hasInstanceMethod:@"editableTextField" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPaymentSetupField" hasInstanceMethod:@"isFieldTypeDate" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PKPaymentSetupField" hasInstanceMethod:@"isFieldTypeText" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PKPaymentSetupField" hasInstanceMethod:@"isFieldTypePicker" withFullSignature:{"B", 0}];
}

- (BOOL)_axIsPickerType
{
  v3 = [(PKPaymentSetupFieldCellAccessibility *)self safeValueForKey:@"_paymentSetupField"];
  if ([v3 safeBoolForKey:@"isFieldTypeDate"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PKPaymentSetupFieldCellAccessibility *)self safeValueForKey:@"_paymentSetupField"];
    v4 = [v5 safeBoolForKey:@"isFieldTypePicker"];
  }

  return v4;
}

- (BOOL)_axIsTextFieldType
{
  v2 = [(PKPaymentSetupFieldCellAccessibility *)self safeValueForKey:@"_paymentSetupField"];
  v3 = [v2 safeBoolForKey:@"isFieldTypeText"];

  return v3;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKPaymentSetupFieldCellAccessibility;
  [(PKPaymentSetupFieldCellAccessibility *)&v9 layoutSubviews];
  objc_initWeak(&location, self);
  if ([(PKPaymentSetupFieldCellAccessibility *)self _axIsPickerType])
  {
    v3 = [(PKPaymentSetupFieldCellAccessibility *)self safeUIViewForKey:@"editableTextField"];
    [v3 setAccessibilityElementsHidden:1];

    v4 = [(PKPaymentSetupFieldCellAccessibility *)self safeUIViewForKey:@"editableTextField"];
    [v4 _accessibilitySetTextViewIgnoresValueChanges:1];
  }

  else if ([(PKPaymentSetupFieldCellAccessibility *)self _axIsTextFieldType])
  {
    v5 = [(PKPaymentSetupFieldCellAccessibility *)self safeUIViewForKey:@"editableTextField"];
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = __54__PKPaymentSetupFieldCellAccessibility_layoutSubviews__block_invoke;
    v6[3] = &unk_29F2E1B98;
    objc_copyWeak(&v7, &location);
    [v5 _setAccessibilityLabelBlock:v6];

    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&location);
}

id __54__PKPaymentSetupFieldCellAccessibility_layoutSubviews__block_invoke(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeUIViewForKey:@"textLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 accessibilityLabel];

  return v5;
}

- (BOOL)isAccessibilityElement
{
  if ([(PKPaymentSetupFieldCellAccessibility *)self _axIsPickerType])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = PKPaymentSetupFieldCellAccessibility;
  return [(PKPaymentSetupFieldCellAccessibility *)&v4 isAccessibilityElement];
}

- (id)accessibilityValue
{
  v3 = [(PKPaymentSetupFieldCellAccessibility *)self safeUIViewForKey:@"editableTextField"];
  accessibilityValue = [v3 accessibilityValue];

  if (accessibilityValue)
  {
    accessibilityValue2 = accessibilityValue;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PKPaymentSetupFieldCellAccessibility;
    accessibilityValue2 = [(PKPaymentSetupFieldCellAccessibility *)&v8 accessibilityValue];
  }

  v6 = accessibilityValue2;

  return v6;
}

- (unint64_t)accessibilityTraits
{
  if ([(PKPaymentSetupFieldCellAccessibility *)self _axIsPickerType])
  {
    return *MEMORY[0x29EDC7F70];
  }

  v4.receiver = self;
  v4.super_class = PKPaymentSetupFieldCellAccessibility;
  return [(PKPaymentSetupFieldCellAccessibility *)&v4 accessibilityTraits];
}

- (CGPoint)accessibilityActivationPoint
{
  if ([(PKPaymentSetupFieldCellAccessibility *)self _axIsPickerType])
  {
    v3 = [(PKPaymentSetupFieldCellAccessibility *)self safeUIViewForKey:@"editableTextField"];
    [v3 accessibilityActivationPoint];
    v5 = v4;
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PKPaymentSetupFieldCellAccessibility;
    [(PKPaymentSetupFieldCellAccessibility *)&v10 accessibilityActivationPoint];
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (id)accessibilityLabel
{
  v11 = 0;
  objc_opt_class();
  v3 = [(PKPaymentSetupFieldCellAccessibility *)self safeUIViewForKey:@"textLabel"];
  v4 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v4 accessibilityLabel];
  v6 = accessibilityLabel;
  if (accessibilityLabel)
  {
    accessibilityLabel2 = accessibilityLabel;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PKPaymentSetupFieldCellAccessibility;
    accessibilityLabel2 = [(PKPaymentSetupFieldCellAccessibility *)&v10 accessibilityLabel];
  }

  v8 = accessibilityLabel2;

  return v8;
}

@end