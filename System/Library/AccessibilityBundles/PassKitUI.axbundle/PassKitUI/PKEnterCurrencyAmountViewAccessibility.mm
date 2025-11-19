@interface PKEnterCurrencyAmountViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)accessibilityLabel;
@end

@implementation PKEnterCurrencyAmountViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKEnterCurrencyAmountView" hasInstanceMethod:@"amountTextField" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKEnterCurrencyAmountView" hasInstanceMethod:@"textField:shouldChangeCharactersInRange:replacementString:" withFullSignature:{"B", "@", "{_NSRange=QQ}", "@", 0}];
  [v3 validateClass:@"PKEnterCurrencyAmountView" hasInstanceMethod:@"amountLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKEnterCurrencyAmountView" hasInstanceMethod:@"amountString" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PKEnterCurrencyAmountViewAccessibility *)self accessibilityUserDefinedLabel];
  v4 = [v3 length];

  if (v4)
  {
    v7.receiver = self;
    v7.super_class = PKEnterCurrencyAmountViewAccessibility;
    v5 = [(PKEnterCurrencyAmountViewAccessibility *)&v7 accessibilityLabel];
  }

  else
  {
    v5 = accessibilityLocalizedString(@"currency.amount");
  }

  return v5;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v2 = [(PKEnterCurrencyAmountViewAccessibility *)self accessibilityValue];
  v3 = [v2 length];

  v4 = v3;
  v5 = 0;
  result.length = v5;
  result.location = v4;
  return result;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = a3;
  v11 = [(PKEnterCurrencyAmountViewAccessibility *)self safeValueForKey:@"amountTextField"];
  [v11 setAccessibilityElementsHidden:1];

  v12 = [(PKEnterCurrencyAmountViewAccessibility *)self safeStringForKey:@"amountString"];
  v13 = [v12 copy];

  v31.receiver = self;
  v31.super_class = PKEnterCurrencyAmountViewAccessibility;
  v14 = [(PKEnterCurrencyAmountViewAccessibility *)&v31 textField:v10 shouldChangeCharactersInRange:location replacementString:length, v9];

  v15 = [(PKEnterCurrencyAmountViewAccessibility *)self safeStringForKey:@"amountString"];
  v16 = [v15 copy];

  if (v16 && ([v16 isEqualToString:v13] & 1) == 0)
  {
    v17 = objc_opt_new();
    v18 = [v17 groupingSeparator];
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
    if (v18)
    {
      v25 = [v20 stringByReplacingOccurrencesOfString:v18 withString:&stru_2A22657E8];

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
    v29 = [(PKEnterCurrencyAmountViewAccessibility *)self accessibilityValue];
    [v27 appendFormat:@", %@", v29];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v27);
    goto LABEL_23;
  }

  if ([v16 isEqualToString:@"0"] && objc_msgSend(v13, "isEqualToString:", @"0"))
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7458], 0);
  }

LABEL_24:

  return v14;
}

@end