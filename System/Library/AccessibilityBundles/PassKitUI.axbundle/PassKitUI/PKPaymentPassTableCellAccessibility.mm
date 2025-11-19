@interface PKPaymentPassTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (PKPaymentPassTableCellAccessibility)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PKPaymentPassTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPaymentPassTableCell" isKindOfClass:@"PSTableCell"];
  [v3 validateClass:@"PSTableCell" hasInstanceMethod:@"specifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPaymentPassTableCell" hasInstanceVariable:@"_subTextLabel" withType:"UILabel"];
  [v3 validateClass:@"PKPaymentPassTableCell" hasInstanceVariable:@"_pass" withType:"PKPaymentPass"];
  [v3 validateClass:@"PKSecureElementPass" hasInstanceMethod:@"primaryAccountNumberSuffix" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPaymentPassTableCell" hasInstanceMethod:@"initWithStyle:reuseIdentifier:" withFullSignature:{"@", "q", "@", 0}];
  [v3 validateClass:@"PKPaymentPassTableCell" hasInstanceMethod:@"refreshCellContentsWithSpecifier:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v28.receiver = self;
  v28.super_class = PKPaymentPassTableCellAccessibility;
  [(PKPaymentPassTableCellAccessibility *)&v28 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(PKPaymentPassTableCellAccessibility *)self safeValueForKey:@"_subTextLabel"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(PKPaymentPassTableCellAccessibility *)self safeValueForKey:@"_pass"];
  v6 = __UIAccessibilityCastAsClass();

  v27 = 0;
  objc_opt_class();
  v7 = [(PKPaymentPassTableCellAccessibility *)self safeValueForKey:@"_pass"];
  v8 = __UIAccessibilityCastAsClass();

  v9 = [v8 secureElementPass];
  LOBYTE(v7) = [v9 isStoredValuePass];

  v10 = PKSanitizedPrimaryAccountRepresentationForPass();
  if (v7)
  {
    goto LABEL_7;
  }

  v11 = [v4 text];
  if (![v11 length] || !v6)
  {

    goto LABEL_7;
  }

  v12 = [v4 text];
  v13 = [v12 isEqualToString:v10];

  if (!v13)
  {
LABEL_7:
    [v4 setAccessibilityLabelBlock:0];
    goto LABEL_8;
  }

  v14 = [v4 accessibilityLabel];
  v15 = [MEMORY[0x29EDB9F50] decimalDigitCharacterSet];
  v16 = [v15 invertedSet];
  v17 = [v14 componentsSeparatedByCharactersInSet:v16];
  v18 = [v17 componentsJoinedByString:&stru_2A22657E8];

  v19 = MEMORY[0x29EDBD7E8];
  v20 = MEMORY[0x29EDBA0F8];
  v21 = accessibilityLocalizedString(@"ends.with");
  v22 = [v20 stringWithFormat:v21, v18];
  v23 = [v19 axAttributedStringWithString:v22];

  [v23 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD9D0]];
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 3221225472;
  v25[2] = __81__PKPaymentPassTableCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v25[3] = &unk_29F2E1E88;
  v26 = v23;
  v24 = v23;
  [v4 setAccessibilityLabelBlock:v25];

LABEL_8:
}

- (unint64_t)accessibilityTraits
{
  v3 = [(PKPaymentPassTableCellAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];

  if (v3)
  {
    v7.receiver = self;
    v7.super_class = PKPaymentPassTableCellAccessibility;
    v4 = [(PKPaymentPassTableCellAccessibility *)&v7 accessibilityTraits];
    if (*MEMORY[0x29EDC7FA8])
    {
      return 0;
    }

    else
    {
      return v4 & 1;
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PKPaymentPassTableCellAccessibility;
    return [(PKPaymentPassTableCellAccessibility *)&v6 accessibilityTraits];
  }
}

- (PKPaymentPassTableCellAccessibility)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6.receiver = self;
  v6.super_class = PKPaymentPassTableCellAccessibility;
  v4 = [(PKPaymentPassTableCellAccessibility *)&v6 initWithStyle:a3 reuseIdentifier:a4];
  [(PKPaymentPassTableCellAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentPassTableCellAccessibility;
  [(PKPaymentPassTableCellAccessibility *)&v4 refreshCellContentsWithSpecifier:a3];
  [(PKPaymentPassTableCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end