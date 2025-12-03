@interface GEOETATrafficUpdateErrorInfo
- (BOOL)shouldPromptForRadar;
@end

@implementation GEOETATrafficUpdateErrorInfo

- (BOOL)shouldPromptForRadar
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  internalErrors = [(GEOETATrafficUpdateErrorInfo *)self internalErrors];
  v3 = [internalErrors countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(internalErrors);
        }

        if ([*(*(&v9 + 1) + 8 * i) containsString:@"[PROMPT]"])
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v4 = [internalErrors countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

@end