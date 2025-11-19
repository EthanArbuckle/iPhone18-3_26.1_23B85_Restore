@interface NSArray(ADCoreExtensions)
- (__CFString)AD_jsonStringWithPrettyPrint:()ADCoreExtensions;
- (id)AD_arrayForJSON;
@end

@implementation NSArray(ADCoreExtensions)

- (id)AD_arrayForJSON
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_30;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0x277CBE000uLL;
  v8 = *v21;
  do
  {
    v9 = 0;
    do
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v20 + 1) + 8 * v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 AD_arrayForJSON];
LABEL_14:
        v13 = v11;
        [v2 addObject:v11];

        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 AD_dictionaryForJSON];
        goto LABEL_14;
      }

      v12 = *(v7 + 2704);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 AD_dataStringForJSON];
        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 absoluteString];
        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_20:
        [v2 addObject:v10];
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 doubleValue];
        if (fabs(v14) != INFINITY)
        {
          goto LABEL_20;
        }

        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to serialize the following number into JSON. Please file a radar against SearchAds | iOS: %@ (%@). Self: %@", v10, objc_opt_class(), v3];

        [v2 addObject:@"∞"];
        v6 = v16;
      }

      else
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Unable to serialize the following object into JSON. Please file a radar against SearchAds Framework.\n%@ (%@)", v10, objc_opt_class()];
        _ADLog(@"ToroLogging", v15, 0);
      }

      v7 = 0x277CBE000;
LABEL_15:
      if (v6)
      {
        ADSimulateCrash(2696598945, v6, 0);
      }

      ++v9;
    }

    while (v5 != v9);
    v17 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    v5 = v17;
  }

  while (v17);
LABEL_30:

  v18 = *MEMORY[0x277D85DE8];

  return v2;
}

- (__CFString)AD_jsonStringWithPrettyPrint:()ADCoreExtensions
{
  v4 = a3;
  v5 = MEMORY[0x277CCAAA0];
  v6 = [a1 AD_arrayForJSON];
  v15 = 0;
  v7 = [v5 dataWithJSONObject:v6 options:v4 error:&v15];
  v8 = v15;

  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [v8 localizedDescription];
    v11 = [a1 AD_arrayForJSON];
    v12 = [v9 stringWithFormat:@"There was an error serializing the following array into JSON (%@):\n%@", v10, v11];
    _ADLog(@"ToroLogging", v12, 0);
  }

  if (v7)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
  }

  else
  {
    v13 = @"[]";
  }

  return v13;
}

@end