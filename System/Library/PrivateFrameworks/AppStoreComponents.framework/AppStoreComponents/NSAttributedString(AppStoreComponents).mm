@interface NSAttributedString(AppStoreComponents)
+ (id)asc_attributedStringWithLockupHeading:()AppStoreComponents compatibleWithTraitCollection:;
+ (id)asc_attributedStringWithLockupTextContainingSymbols:()AppStoreComponents compatibleWithTraitCollection:;
@end

@implementation NSAttributedString(AppStoreComponents)

+ (id)asc_attributedStringWithLockupHeading:()AppStoreComponents compatibleWithTraitCollection:
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v7;
  if (v7 && [v7 length])
  {
    v9 = [v8 componentsSeparatedByString:@":::"];
    v10 = [v9 count];
    v11 = [v9 objectAtIndexedSubscript:0];
    v12 = v11;
    v13 = v10 - 1;
    if (v10 == 1)
    {
      v14 = 0;
    }

    else if (v10 == 2)
    {
      [v9 objectAtIndexedSubscript:{1, v13}];
      v11 = v14 = v11;
    }

    else
    {
      v15 = [v9 subarrayWithRange:{1, v13}];
      v16 = [v15 componentsJoinedByString:@":::"];
      v17 = v16;

      v14 = v11;
      v11 = v16;
    }
  }

  else
  {
    v14 = 0;
    v11 = 0;
  }

  v18 = v14;
  v19 = v11;
  if (v19)
  {
    v20 = ASCLockupImageStringForName(v18, v6);
    if (v20)
    {
      v21 = objc_alloc_init(MEMORY[0x277CCAB48]);
      [v21 appendAttributedString:v20];
      [v21 addAttribute:@"ASCLockupHeadingImageName" value:v18 range:{0, objc_msgSend(v20, "length")}];
      v22 = [v21 mutableString];
      v24 = ASCLocalizedString(@"LOCKUP_HEADING_JOINER", v23);
      [v22 appendString:v24];

      v25 = [v21 mutableString];
      [v25 appendString:v19];

      v26 = [v21 copy];
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v19];
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (id)asc_attributedStringWithLockupTextContainingSymbols:()AppStoreComponents compatibleWithTraitCollection:
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v16 = 0;
    goto LABEL_13;
  }

  v7 = [v5 componentsSeparatedByString:@":::"];
  v8 = objc_alloc_init(MEMORY[0x277CCAB48]);
  if (![v7 count])
  {
LABEL_9:
    v16 = [v8 copy];
    goto LABEL_12;
  }

  v9 = 0;
  while (1)
  {
    v10 = [v7 objectAtIndexedSubscript:v9];
    v11 = v10;
    if (v9)
    {
      break;
    }

    v12 = [v8 mutableString];
    [v12 appendString:v11];
LABEL_8:

    if (++v9 >= [v7 count])
    {
      goto LABEL_9;
    }
  }

  v12 = v10;
  v13 = ASCLockupImageStringForName(v12, v6);
  if (v13)
  {
    v14 = v13;
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASCLockupTextImageName %ld ", v9];
    [v8 appendAttributedString:v14];
    [v8 addAttribute:v15 value:v12 range:{0, objc_msgSend(v14, "length")}];

    goto LABEL_8;
  }

  v16 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5];

LABEL_12:
LABEL_13:

  return v16;
}

@end