@interface PopUpCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation PopUpCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_SFBrowsingAssistantPopUpCell" isKindOfClass:@"UICollectionViewListCell"];
  [v3 validateClass:@"_SFBrowsingAssistantPopUpCell" hasSwiftField:@"title" withSwiftType:"Optional<String>"];
  [v3 validateClass:@"_SFBrowsingAssistantPopUpCell" hasSwiftField:@"subtitle" withSwiftType:"Optional<String>"];
}

- (id)accessibilityValue
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = [(PopUpCellAccessibility *)self safeSwiftStringForKey:@"subtitle"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v19 = 0;
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    v6 = v5;
    if (v5)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = [v5 accessories];
      v4 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v4)
      {
        v8 = *v16;
        while (2)
        {
          for (i = 0; i != v4; i = i + 1)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v7);
            }

            v10 = *(*(&v15 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = 0;
              objc_opt_class();
              v11 = __UIAccessibilityCastAsClass();
              if (v19 == 1)
              {
                abort();
              }

              v12 = v11;
              v4 = [v11 text];

              goto LABEL_15;
            }
          }

          v4 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    else
    {
      v4 = 0;
    }
  }

  v13 = *MEMORY[0x29EDCA608];

  return v4;
}

@end