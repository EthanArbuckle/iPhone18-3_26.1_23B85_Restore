@interface NSDictionary(MPModelStoreGroupingsMusicKitResponseParser)
- (id)arrayAtKeyPath:()MPModelStoreGroupingsMusicKitResponseParser;
- (id)objectAtKeyPath:()MPModelStoreGroupingsMusicKitResponseParser;
- (id)stringAtKeyPath:()MPModelStoreGroupingsMusicKitResponseParser;
@end

@implementation NSDictionary(MPModelStoreGroupingsMusicKitResponseParser)

- (id)arrayAtKeyPath:()MPModelStoreGroupingsMusicKitResponseParser
{
  v1 = [self objectAtKeyPath:?];
  if (_NSIsNSArray())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)stringAtKeyPath:()MPModelStoreGroupingsMusicKitResponseParser
{
  v1 = [self objectAtKeyPath:?];
  if (_NSIsNSString())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)objectAtKeyPath:()MPModelStoreGroupingsMusicKitResponseParser
{
  v31 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v4 = [v19 componentsSeparatedByString:@"."];
  selfCopy = self;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = *v26;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        if ([v9 hasPrefix:@"@"])
        {
          v10 = [v9 substringFromIndex:1];
          v11 = [selfCopy valueForKeyPath:v10];

LABEL_23:
          selfCopy = v11;
        }

        else if ([v9 hasPrefix:@"["] && (objc_msgSend(v9, "hasSuffix:", @"]") & 1) != 0)
        {
          if (!_NSIsNSArray())
          {
            goto LABEL_27;
          }

          v12 = [v9 substringWithRange:{1, objc_msgSend(v9, "length") - 1}];
          integerValue = [v12 integerValue];

          [selfCopy objectAtIndex:integerValue];
          selfCopy = v10 = selfCopy;
        }

        else
        {
          if (!_NSIsNSDictionary())
          {
LABEL_27:

            v17 = 0;
            goto LABEL_28;
          }

          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v10 = [v9 componentsSeparatedByString:@"??"];
          v14 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v14)
          {
            v15 = *v22;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v22 != v15)
                {
                  objc_enumerationMutation(v10);
                }

                v11 = [selfCopy objectForKey:*(*(&v21 + 1) + 8 * j)];
                if (v11)
                {

                  goto LABEL_23;
                }
              }

              v14 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  selfCopy = selfCopy;
  v17 = selfCopy;
LABEL_28:

  return v17;
}

@end