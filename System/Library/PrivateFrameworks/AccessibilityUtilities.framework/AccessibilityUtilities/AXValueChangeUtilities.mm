@interface AXValueChangeUtilities
+ (id)handleValueChangeForPhoneDeletionWithOldString:(id)a3 newString:(id)a4;
+ (id)phoneNumberWithoutFormattingCharacters:(id)a3;
+ (int64_t)findLocationOfDifferenceInOldString:(id)a3 withNewString:(id)a4;
@end

@implementation AXValueChangeUtilities

+ (id)phoneNumberWithoutFormattingCharacters:(id)a3
{
  v3 = a3;
  v4 = [v3 stringByReplacingOccurrencesOfString:@"[-()\\s]" withString:&stru_1EFE6D570 options:1024 range:{0, objc_msgSend(v3, "length")}];

  return v4;
}

+ (id)handleValueChangeForPhoneDeletionWithOldString:(id)a3 newString:(id)a4
{
  v5 = a4;
  v6 = [AXValueChangeUtilities phoneNumberWithoutFormattingCharacters:a3];
  v7 = [AXValueChangeUtilities phoneNumberWithoutFormattingCharacters:v5];

  if ([v6 length] && objc_msgSend(v7, "length"))
  {
    v8 = [AXValueChangeUtilities findLocationOfDifferenceInOldString:v6 withNewString:v7];
  }

  else
  {
    [v6 length];
    v8 = 0;
  }

  if (v8 + 1 <= [v6 length])
  {
    v9 = [v6 substringWithRange:{v8, 1}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (int64_t)findLocationOfDifferenceInOldString:(id)a3 withNewString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 length];
  v8 = [v6 length];
  v9 = v8;
  if (v7 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v10 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    while (1)
    {
      v12 = [v5 characterAtIndex:v11];
      v13 = [v6 characterAtIndex:v11];
      if (v12 != 160 || v13 != 32)
      {
        v14 = v12 == 32 && v13 == 160;
        v15 = v14;
        if (v12 != v13 && !v15)
        {
          break;
        }
      }

      if (v10 == ++v11)
      {
        v11 = v10;
        break;
      }
    }
  }

  if (v7 >= v9 && v11 == v7)
  {
    v17 = v7 - 1;
  }

  else
  {
    v17 = v11;
  }

  return v17;
}

@end