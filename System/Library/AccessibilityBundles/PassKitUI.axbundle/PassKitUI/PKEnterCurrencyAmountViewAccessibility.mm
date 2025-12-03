@interface PKEnterCurrencyAmountViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)accessibilityLabel;
@end

@implementation PKEnterCurrencyAmountViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKEnterCurrencyAmountView" hasInstanceMethod:@"amountTextField" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKEnterCurrencyAmountView" hasInstanceMethod:@"textField:shouldChangeCharactersInRange:replacementString:" withFullSignature:{"B", "@", "{_NSRange=QQ}", "@", 0}];
  [validationsCopy validateClass:@"PKEnterCurrencyAmountView" hasInstanceMethod:@"amountLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKEnterCurrencyAmountView" hasInstanceMethod:@"amountString" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(PKEnterCurrencyAmountViewAccessibility *)self accessibilityUserDefinedLabel];
  v4 = [accessibilityUserDefinedLabel length];

  if (v4)
  {
    v7.receiver = self;
    v7.super_class = PKEnterCurrencyAmountViewAccessibility;
    accessibilityLabel = [(PKEnterCurrencyAmountViewAccessibility *)&v7 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = accessibilityLocalizedString(@"currency.amount");
  }

  return accessibilityLabel;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  accessibilityValue = [(PKEnterCurrencyAmountViewAccessibility *)self accessibilityValue];
  v3 = [accessibilityValue length];

  v4 = v3;
  v5 = 0;
  result.length = v5;
  result.location = v4;
  return result;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  fieldCopy = field;
  v11 = [(PKEnterCurrencyAmountViewAccessibility *)self safeValueForKey:@"amountTextField"];
  [v11 setAccessibilityElementsHidden:1];

  v12 = [(PKEnterCurrencyAmountViewAccessibility *)self safeStringForKey:@"amountString"];
  v13 = [v12 copy];

  v31.receiver = self;
  v31.super_class = PKEnterCurrencyAmountViewAccessibility;
  stringCopy = [(PKEnterCurrencyAmountViewAccessibility *)&v31 textField:fieldCopy shouldChangeCharactersInRange:location replacementString:length, stringCopy];

  v15 = [(PKEnterCurrencyAmountViewAccessibility *)self safeStringForKey:@"amountString"];
  v16 = [v15 copy];

  if (v16 && ([v16 isEqualToString:v13] & 1) == 0)
  {
    v17 = objc_opt_new();
    groupingSeparator = [v17 groupingSeparator];
    if ([v16 isEqualToString:@"0"] && objc_msgSend(v13, "length") == 1)
    {
      v19 = v13;
    }

    else
    {
      if ([v13 isEqualToString:@"0"] && objc_msgSend(v16, "length") == 1)
      {
        v20 = v16;
        v21 = 0;
        goto LABEL_18;
      }

      v22 = [v16 length];
      v23 = [v13 length];
      v24 = [v16 length];
      if (v22 >= v23)
      {
        if (v24 <= [v13 length])
        {
          goto LABEL_23;
        }

        v20 = [v16 substringFromIndex:{objc_msgSend(v13, "length")}];
        v21 = 0;
        if (!v20)
        {
          goto LABEL_23;
        }

        goto LABEL_18;
      }

      v19 = [v13 substringFromIndex:v24];
    }

    v20 = v19;
    v21 = 1;
    if (!v19)
    {
LABEL_23:

      goto LABEL_24;
    }

LABEL_18:
    if (groupingSeparator)
    {
      v25 = [v20 stringByReplacingOccurrencesOfString:groupingSeparator withString:&stru_2A22657E8];

      v20 = v25;
    }

    v26 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v20];
    v27 = v26;
    v28 = MEMORY[0x29EDBDA10];
    if (!v21)
    {
      v28 = MEMORY[0x29EDBDA18];
    }

    [v26 setAttribute:MEMORY[0x29EDB8EB0] forKey:*v28];
    [v27 setAttribute:&unk_2A2272980 forKey:*MEMORY[0x29EDBD860]];
    accessibilityValue = [(PKEnterCurrencyAmountViewAccessibility *)self accessibilityValue];
    [v27 appendFormat:@", %@", accessibilityValue];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v27);
    goto LABEL_23;
  }

  if ([v16 isEqualToString:@"0"] && objc_msgSend(v13, "isEqualToString:", @"0"))
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7458], 0);
  }

LABEL_24:

  return stringCopy;
}

@end