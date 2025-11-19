@interface INCurrencyAmount(AssistantCardService)
+ (id)_acs_currencySymbolForCode:()AssistantCardService;
+ (id)_acs_localeForCode:()AssistantCardService;
- (id)_acs_currencySymbol;
- (id)_acs_formattedStringIncludeSymbol:()AssistantCardService;
@end

@implementation INCurrencyAmount(AssistantCardService)

- (id)_acs_formattedStringIncludeSymbol:()AssistantCardService
{
  v5 = [a1 amount];
  if (v5 && (v6 = v5, [a1 currencyCode], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    if (_acs_formattedStringIncludeSymbol__once != -1)
    {
      [INCurrencyAmount(AssistantCardService) _acs_formattedStringIncludeSymbol:];
    }

    v8 = [a1 currencyCode];
    [_acs_formattedStringIncludeSymbol__sCurrencyFormatter setCurrencyCode:v8];

    if (a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = &stru_2853137F0;
    }

    [_acs_formattedStringIncludeSymbol__sCurrencyFormatter setCurrencySymbol:v9];
    v11 = _acs_formattedStringIncludeSymbol__sCurrencyFormatter;
    v12 = [a1 amount];
    v10 = [v11 stringFromNumber:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_acs_currencySymbol
{
  v1 = MEMORY[0x277CD3B50];
  v2 = [a1 currencyCode];
  v3 = [v1 _acs_currencySymbolForCode:v2];

  return v3;
}

+ (id)_acs_localeForCode:()AssistantCardService
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

+ (id)_acs_currencySymbolForCode:()AssistantCardService
{
  v4 = MEMORY[0x277CCABB8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [a1 _acs_localeForCode:v5];

  if (v7)
  {
    [v6 setLocale:v7];
    [v6 setNumberStyle:2];
    v8 = [v6 currencySymbol];
    if ([v8 length] >= 2)
    {
      v9 = [v8 substringToIndex:1];

      v8 = v9;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end