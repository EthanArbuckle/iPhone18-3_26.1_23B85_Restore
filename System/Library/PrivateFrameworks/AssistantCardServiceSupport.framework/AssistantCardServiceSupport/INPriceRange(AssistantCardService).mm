@interface INPriceRange(AssistantCardService)
+ (id)_currencySymbolForCode:()AssistantCardService;
+ (id)_localeForCode:()AssistantCardService;
- (id)acs_formattedRangeString;
@end

@implementation INPriceRange(AssistantCardService)

- (id)acs_formattedRangeString
{
  v2 = objc_opt_class();
  currencyCode = [self currencyCode];
  v4 = [v2 _currencySymbolForCode:currencyCode];

  if (acs_formattedRangeString_once != -1)
  {
    [INPriceRange(AssistantCardService) acs_formattedRangeString];
  }

  currencyCode2 = [self currencyCode];
  [acs_formattedRangeString_minimumPriceRangeCurrencyFormatter setCurrencyCode:currencyCode2];

  [acs_formattedRangeString_minimumPriceRangeCurrencyFormatter setCurrencySymbol:v4];
  currencyCode3 = [self currencyCode];
  [acs_formattedRangeString_maximumPriceRangeCurrencyFormatter setCurrencyCode:currencyCode3];

  [acs_formattedRangeString_maximumPriceRangeCurrencyFormatter setCurrencySymbol:0];
  v7 = acs_formattedRangeString_minimumPriceRangeCurrencyFormatter;
  minimumPrice = [self minimumPrice];
  v9 = [v7 stringFromNumber:minimumPrice];

  v10 = acs_formattedRangeString_maximumPriceRangeCurrencyFormatter;
  maximumPrice = [self maximumPrice];
  v12 = [v10 stringFromNumber:maximumPrice];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v9, v12];

  return v13;
}

+ (id)_localeForCode:()AssistantCardService
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [MEMORY[0x277CBEAF8] availableLocaleIdentifiers];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = *MEMORY[0x277CBE698];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x277CBEAF8]);
        v12 = [v11 initWithLocaleIdentifier:{v10, v16}];
        v13 = [v12 objectForKey:v8];
        if ([v13 isEqualToString:v3])
        {

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_currencySymbolForCode:()AssistantCardService
{
  v4 = MEMORY[0x277CCABB8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [self _localeForCode:v5];

  if (v7)
  {
    [v6 setLocale:v7];
    [v6 setNumberStyle:2];
    currencySymbol = [v6 currencySymbol];
    if ([currencySymbol length] >= 2)
    {
      v9 = [currencySymbol substringToIndex:1];

      currencySymbol = v9;
    }
  }

  else
  {
    currencySymbol = 0;
  }

  return currencySymbol;
}

@end