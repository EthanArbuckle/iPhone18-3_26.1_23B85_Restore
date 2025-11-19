@interface StockAccessibility
- (id)_accessibilityLabelWithMarketCap:(BOOL)a3;
- (id)_accessibilitySpeakThisString;
@end

@implementation StockAccessibility

- (id)_accessibilityLabelWithMarketCap:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = v4;
  if (v4)
  {
    v6 = [v4 companyName];
    v7 = [v5 formattedPrice];
    v8 = [v5 formattedChange];
    v9 = [v5 formattedChangePercent];
    v10 = [v5 marketcap];
    v11 = [MEMORY[0x29EDC6D20] BlankValueString];
    if (([v10 isEqualToString:v11] & 1) == 0)
    {
      v12 = MEMORY[0x29EDBA078];
      v13 = [MEMORY[0x29EDBA070] numberWithLongLong:{objc_msgSend(v10, "longLongValue")}];
      v14 = [v12 localizedStringFromNumber:v13 numberStyle:5];

      v10 = v14;
    }

    v15 = [v5 changeIsNegative];
    if (v15)
    {
      v16 = [@"-" stringByAppendingString:v9];

      v9 = v16;
    }

    if (v6)
    {
      v35 = v3;
      v41 = v6;
      v42 = v7;
      if (v7)
      {
        v17 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v7];
        [v17 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD948]];
      }

      else
      {
        v17 = 0;
      }

      v39 = v17;
      if (v15)
      {
        v19 = @"down";
      }

      else
      {
        v19 = @"up";
      }

      v38 = accessibilityLocalizedString(v19);
      v20 = [MEMORY[0x29EDBA0F8] stringWithFormat:v8];
      v21 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v20];
      if (v8)
      {
        v22 = [v20 rangeOfString:v8];
        if (v22 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v21 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD948] withRange:{v22, v23}];
        }
      }

      v36 = v20;
      v37 = v21;
      v40 = v8;
      v24 = MEMORY[0x29EDBA0F8];
      v25 = accessibilityLocalizedString(@"change.of");
      v26 = [v24 stringWithFormat:v25, v9];

      v27 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v26];
      if (v9)
      {
        v28 = [v26 rangeOfString:v9];
        if (v28 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v27 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD948] withRange:{v28, v29}];
        }
      }

      v30 = 0;
      if (([v10 isEqualToString:v11] & 1) == 0 && v35)
      {
        v31 = MEMORY[0x29EDBA0F8];
        v32 = accessibilityLocalizedString(@"market.cap");
        v30 = [v31 stringWithFormat:v32, v10];
      }

      if ([v7 integerValue] < 0)
      {
        v18 = 0;
        v6 = v41;
        v33 = v37;
      }

      else
      {
        v33 = v37;
        v6 = v41;
        v18 = __UIAXStringForVariables();
      }

      v7 = v42;
      v8 = v40;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_accessibilitySpeakThisString
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 companyName];
    v5 = [v3 formattedPrice];
    v6 = [v3 formattedChange];
    if ([v3 changeIsNegative])
    {
      v7 = @"ticker.cell.format.down.short";
    }

    else
    {
      v7 = @"ticker.cell.format.up.short";
    }

    v8 = accessibilityLocalizedString(v7);
    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:v8, v4, v5, v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end