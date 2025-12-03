@interface HKSignedClinicalDataUtilities
+ (id)preferredRecordIssuerDisplayNameWithIssuerIdentifier:(id)identifier;
+ (id)recordIssuerDisplayNameWithIssuerIdentifier:(id)identifier;
+ (id)recordItemsDisplayNameWithItems:(id)items;
+ (id)recordTypeDisplayNameWithTypes:(id)types;
@end

@implementation HKSignedClinicalDataUtilities

+ (id)recordTypeDisplayNameWithTypes:(id)types
{
  typesCopy = types;
  v4 = [typesCopy containsObject:@"https://smarthealth.cards#covid19"];
  if ([typesCopy containsObject:@"https://smarthealth.cards#immunization"])
  {
    v5 = HKHealthKitFrameworkBundle();
    if (v4)
    {
      v6 = @"HEALTH_CARD_TYPE_COVID_IMMUNIZATION";
    }

    else
    {
      v6 = @"HEALTH_CARD_TYPE_IMMUNIZATION";
    }
  }

  else
  {
    v7 = [typesCopy containsObject:@"https://smarthealth.cards#laboratory"];
    v5 = HKHealthKitFrameworkBundle();
    if (v7)
    {
      if (v4)
      {
        v6 = @"HEALTH_CARD_TYPE_COVID_LABORATORY";
      }

      else
      {
        v6 = @"HEALTH_CARD_TYPE_LABORATORY";
      }
    }

    else if (v4)
    {
      v6 = @"HEALTH_CARD_TYPE_COVID_CARD";
    }

    else
    {
      v6 = @"HEALTH_CARD_TYPE_SMART_HEALTH_CARD";
    }
  }

  v8 = [v5 localizedStringForKey:v6 value:&stru_1F05FF230 table:@"Localizable-Pasadena"];

  return v8;
}

+ (id)recordItemsDisplayNameWithItems:(id)items
{
  v29 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v3 = [objc_alloc(MEMORY[0x1E696AB50]) initWithArray:itemsCopy];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [v3 objectEnumerator];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v3 countForObject:v9];
        if (v10 == 1)
        {
          [v4 addObject:v9];
        }

        else
        {
          v11 = v10;
          v12 = MEMORY[0x1E696AEC0];
          v13 = HKHealthKitFrameworkBundle();
          v14 = [v13 localizedStringForKey:@"HEALTH_CARD_DISPLAY_NAME_COUNTED" value:&stru_1F05FF230 table:@"Localizable-Pasadena"];
          v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
          v16 = [v12 stringWithFormat:v14, v9, v15];

          [v4 addObject:v16];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    [v4 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
    v17 = HKHealthKitFrameworkBundle();
    v18 = [v17 localizedStringForKey:@"HEALTH_CARD_DISPLAY_NAME_JOIN_STRING" value:&stru_1F05FF230 table:@"Localizable-Pasadena"];

    [v4 componentsJoinedByString:v18];
  }

  else
  {
    v18 = HKHealthKitFrameworkBundle();
    [v18 localizedStringForKey:@"HEALTH_CARD_DISPLAY_NAME_EMPTY_CARD" value:&stru_1F05FF230 table:@"Localizable-Pasadena"];
  }
  v19 = ;

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)recordIssuerDisplayNameWithIssuerIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E695DFF8];
  identifierCopy = identifier;
  v5 = [v3 URLWithString:identifierCopy];
  host = [v5 host];
  v7 = host;
  if (host)
  {
    v8 = host;
  }

  else
  {
    v8 = identifierCopy;
  }

  v9 = v8;

  return v8;
}

+ (id)preferredRecordIssuerDisplayNameWithIssuerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy hasPrefix:@"http://www.iso.org/3166-1/a2/"])
  {
    v4 = [identifierCopy substringWithRange:{objc_msgSend(@"http://www.iso.org/3166-1/a2/", "length"), objc_msgSend(identifierCopy, "length") - objc_msgSend(@"http://www.iso.org/3166-1/a2/", "length")}];
    hk_testableCurrentLocale = [MEMORY[0x1E695DF58] hk_testableCurrentLocale];
    v6 = [hk_testableCurrentLocale localizedStringForCountryCode:v4];

    if ([v6 length])
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end