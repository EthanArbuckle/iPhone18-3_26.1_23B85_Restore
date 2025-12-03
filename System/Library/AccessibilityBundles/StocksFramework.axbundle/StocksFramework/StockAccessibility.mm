@interface StockAccessibility
- (id)_accessibilityLabelWithMarketCap:(BOOL)cap;
- (id)_accessibilitySpeakThisString;
@end

@implementation StockAccessibility

- (id)_accessibilityLabelWithMarketCap:(BOOL)cap
{
  capCopy = cap;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = v4;
  if (v4)
  {
    companyName = [v4 companyName];
    formattedPrice = [v5 formattedPrice];
    formattedChange = [v5 formattedChange];
    formattedChangePercent = [v5 formattedChangePercent];
    marketcap = [v5 marketcap];
    blankValueString = [MEMORY[0x29EDC6D20] BlankValueString];
    if (([marketcap isEqualToString:blankValueString] & 1) == 0)
    {
      v12 = MEMORY[0x29EDBA078];
      v13 = [MEMORY[0x29EDBA070] numberWithLongLong:{objc_msgSend(marketcap, "longLongValue")}];
      v14 = [v12 localizedStringFromNumber:v13 numberStyle:5];

      marketcap = v14;
    }

    changeIsNegative = [v5 changeIsNegative];
    if (changeIsNegative)
    {
      v16 = [@"-" stringByAppendingString:formattedChangePercent];

      formattedChangePercent = v16;
    }

    if (companyName)
    {
      v35 = capCopy;
      v41 = companyName;
      v42 = formattedPrice;
      if (formattedPrice)
      {
        v17 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:formattedPrice];
        [v17 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD948]];
      }

      else
      {
        v17 = 0;
      }

      v39 = v17;
      if (changeIsNegative)
      {
        v19 = @"down";
      }

      else
      {
        v19 = @"up";
      }

      v38 = accessibilityLocalizedString(v19);
      v20 = [MEMORY[0x29EDBA0F8] stringWithFormat:formattedChange];
      v21 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v20];
      if (formattedChange)
      {
        v22 = [v20 rangeOfString:formattedChange];
        if (v22 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v21 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD948] withRange:{v22, v23}];
        }
      }

      v36 = v20;
      v37 = v21;
      v40 = formattedChange;
      v24 = MEMORY[0x29EDBA0F8];
      v25 = accessibilityLocalizedString(@"change.of");
      v26 = [v24 stringWithFormat:v25, formattedChangePercent];

      v27 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v26];
      if (formattedChangePercent)
      {
        v28 = [v26 rangeOfString:formattedChangePercent];
        if (v28 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v27 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD948] withRange:{v28, v29}];
        }
      }

      v30 = 0;
      if (([marketcap isEqualToString:blankValueString] & 1) == 0 && v35)
      {
        v31 = MEMORY[0x29EDBA0F8];
        v32 = accessibilityLocalizedString(@"market.cap");
        v30 = [v31 stringWithFormat:v32, marketcap];
      }

      if ([formattedPrice integerValue] < 0)
      {
        v18 = 0;
        companyName = v41;
        v33 = v37;
      }

      else
      {
        v33 = v37;
        companyName = v41;
        v18 = __UIAXStringForVariables();
      }

      formattedPrice = v42;
      formattedChange = v40;
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
    companyName = [v2 companyName];
    formattedPrice = [v3 formattedPrice];
    formattedChange = [v3 formattedChange];
    if ([v3 changeIsNegative])
    {
      v7 = @"ticker.cell.format.down.short";
    }

    else
    {
      v7 = @"ticker.cell.format.up.short";
    }

    v8 = accessibilityLocalizedString(v7);
    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:v8, companyName, formattedPrice, formattedChange];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end