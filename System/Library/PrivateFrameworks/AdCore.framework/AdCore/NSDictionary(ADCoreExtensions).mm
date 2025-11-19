@interface NSDictionary(ADCoreExtensions)
- (BOOL)AD_hasObjectForKey:()ADCoreExtensions ofKindOfClass:;
- (__CFString)AD_jsonStringWithPrettyPrint:()ADCoreExtensions;
- (id)AD_dictionaryForJSON;
- (id)AD_objectForKey:()ADCoreExtensions ofKindOfClass:;
@end

@implementation NSDictionary(ADCoreExtensions)

- (id)AD_dictionaryForJSON
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = [v3 objectForKey:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v8 stringValue];
        }

        else
        {
          objc_opt_class();
          v11 = @"UNKNOWN_KEY";
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v10 = v8;
        }

        v11 = v10;
LABEL_11:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v9 AD_dictionaryForJSON];
LABEL_19:
          v13 = v12;
          [v2 setObject:v12 forKey:v11];
LABEL_20:

          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v9 AD_arrayForJSON];
          goto LABEL_19;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v9 AD_dataStringForJSON];
          goto LABEL_19;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v9 absoluteString];
          goto LABEL_19;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_24;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (objc_opt_respondsToSelector())
          {
            v13 = [v9 dictionaryRepresentation];
            v15 = [v13 AD_dictionaryForJSON];
            [v2 setObject:v15 forKey:v11];
          }

          else
          {
            v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Unable to serialize the following object into JSON. Please file a radar against SearchAds Framework.\n%@ (%@)", v9, objc_opt_class()];
            _ADLog(@"ToroLogging", v13, 0);
          }

          goto LABEL_20;
        }

        [v9 doubleValue];
        if (fabs(v14) != INFINITY)
        {
LABEL_24:
          [v2 setObject:v9 forKey:v11];
        }

        else
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to serialize the following number into JSON. Please file a radar against SearchAds | iOS: %@ (%@). Self: %@", v9, objc_opt_class(), v3];
          [v2 setObject:@"∞" forKey:v11];
          if (v13)
          {
            ADSimulateCrash(3501905313, v13, 0);
            goto LABEL_20;
          }
        }

LABEL_21:

        ++v7;
      }

      while (v5 != v7);
      v16 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v5 = v16;
    }

    while (v16);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)AD_objectForKey:()ADCoreExtensions ofKindOfClass:
{
  v1 = [a1 objectForKey:?];
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)AD_hasObjectForKey:()ADCoreExtensions ofKindOfClass:
{
  v1 = [a1 AD_objectForKey:? ofKindOfClass:?];
  v2 = v1 != 0;

  return v2;
}

- (__CFString)AD_jsonStringWithPrettyPrint:()ADCoreExtensions
{
  v4 = a3;
  v5 = MEMORY[0x277CCAAA0];
  v6 = [a1 AD_dictionaryForJSON];
  v15 = 0;
  v7 = [v5 dataWithJSONObject:v6 options:v4 error:&v15];
  v8 = v15;

  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [v8 localizedDescription];
    v11 = [a1 AD_dictionaryForJSON];
    v12 = [v9 stringWithFormat:@"There was an error serializing the following dictionary into JSON (%@):\n%@", v10, v11];
    _ADLog(@"ToroLogging", v12, 0);
  }

  if (v7)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
  }

  else
  {
    v13 = @"{}";
  }

  return v13;
}

@end