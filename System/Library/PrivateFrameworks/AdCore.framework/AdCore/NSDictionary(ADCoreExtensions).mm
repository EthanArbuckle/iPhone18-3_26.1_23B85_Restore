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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = [selfCopy objectForKey:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          stringValue = [v8 stringValue];
        }

        else
        {
          objc_opt_class();
          v11 = @"UNKNOWN_KEY";
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          stringValue = v8;
        }

        v11 = stringValue;
LABEL_11:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          aD_dictionaryForJSON = [v9 AD_dictionaryForJSON];
LABEL_19:
          dictionaryRepresentation = aD_dictionaryForJSON;
          [dictionary setObject:aD_dictionaryForJSON forKey:v11];
LABEL_20:

          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          aD_dictionaryForJSON = [v9 AD_arrayForJSON];
          goto LABEL_19;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          aD_dictionaryForJSON = [v9 AD_dataStringForJSON];
          goto LABEL_19;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          aD_dictionaryForJSON = [v9 absoluteString];
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
            dictionaryRepresentation = [v9 dictionaryRepresentation];
            aD_dictionaryForJSON2 = [dictionaryRepresentation AD_dictionaryForJSON];
            [dictionary setObject:aD_dictionaryForJSON2 forKey:v11];
          }

          else
          {
            dictionaryRepresentation = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Unable to serialize the following object into JSON. Please file a radar against SearchAds Framework.\n%@ (%@)", v9, objc_opt_class()];
            _ADLog(@"ToroLogging", dictionaryRepresentation, 0);
          }

          goto LABEL_20;
        }

        [v9 doubleValue];
        if (fabs(v14) != INFINITY)
        {
LABEL_24:
          [dictionary setObject:v9 forKey:v11];
        }

        else
        {
          dictionaryRepresentation = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to serialize the following number into JSON. Please file a radar against SearchAds | iOS: %@ (%@). Self: %@", v9, objc_opt_class(), selfCopy];
          [dictionary setObject:@"∞" forKey:v11];
          if (dictionaryRepresentation)
          {
            ADSimulateCrash(3501905313, dictionaryRepresentation, 0);
            goto LABEL_20;
          }
        }

LABEL_21:

        ++v7;
      }

      while (v5 != v7);
      v16 = [selfCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      v5 = v16;
    }

    while (v16);
  }

  v17 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)AD_objectForKey:()ADCoreExtensions ofKindOfClass:
{
  v1 = [self objectForKey:?];
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
  v1 = [self AD_objectForKey:? ofKindOfClass:?];
  v2 = v1 != 0;

  return v2;
}

- (__CFString)AD_jsonStringWithPrettyPrint:()ADCoreExtensions
{
  v4 = a3;
  v5 = MEMORY[0x277CCAAA0];
  aD_dictionaryForJSON = [self AD_dictionaryForJSON];
  v15 = 0;
  v7 = [v5 dataWithJSONObject:aD_dictionaryForJSON options:v4 error:&v15];
  v8 = v15;

  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    localizedDescription = [v8 localizedDescription];
    aD_dictionaryForJSON2 = [self AD_dictionaryForJSON];
    v12 = [v9 stringWithFormat:@"There was an error serializing the following dictionary into JSON (%@):\n%@", localizedDescription, aD_dictionaryForJSON2];
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