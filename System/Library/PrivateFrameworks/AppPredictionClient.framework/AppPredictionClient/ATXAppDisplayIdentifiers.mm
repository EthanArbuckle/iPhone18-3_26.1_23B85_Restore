@interface ATXAppDisplayIdentifiers
+ (BOOL)isWidgetOrWebClipIdentifier:(id)a3;
+ (NSSet)allIdentifiers;
+ (NSSet)appIdentifiers;
+ (id)_allIdentifiersIncludingRemoteApps:(BOOL)a3 includeInternalMacOSApps:(BOOL)a4;
+ (id)_appIdentifiersIncludingRemoteApps:(BOOL)a3 includeInternalMacOSApps:(BOOL)a4;
+ (void)_processIdentifiersFromEnumerator:(id)a3 intoSet:(id)a4 includeInternalMacOSApps:(BOOL)a5;
@end

@implementation ATXAppDisplayIdentifiers

+ (NSSet)appIdentifiers
{
  v3 = ATXRemoteAppSuggestionsEnabled();

  return [a1 _appIdentifiersIncludingRemoteApps:v3 includeInternalMacOSApps:1];
}

+ (void)_processIdentifiersFromEnumerator:(id)a3 intoSet:(id)a4 includeInternalMacOSApps:(BOOL)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 applicationState];
        v14 = [v13 isInstalled];

        if (v14)
        {
          v15 = [v12 applicationState];
          v16 = [v15 isRestricted];

          if ((v16 & 1) == 0)
          {
            v17 = [v12 appTags];
            v18 = [v17 containsObject:@"hidden"];

            if ((v18 & 1) == 0)
            {
              v19 = [v12 bundleIdentifier];
              v20 = [v19 length];

              if (v20)
              {
                v21 = [v12 compatibilityObject];
                v22 = [v21 applicationType];

                if (([v22 isEqualToString:@"Internal"] & 1) == 0)
                {
                  v23 = [v12 bundleIdentifier];
                  [v7 addObject:v23];
                }
              }
            }
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }
}

+ (id)_allIdentifiersIncludingRemoteApps:(BOOL)a3 includeInternalMacOSApps:(BOOL)a4
{
  v4 = SBSCopyDisplayIdentifiers();

  return v4;
}

+ (NSSet)allIdentifiers
{
  v3 = ATXRemoteAppSuggestionsEnabled();

  return [a1 _allIdentifiersIncludingRemoteApps:v3 includeInternalMacOSApps:1];
}

+ (id)_appIdentifiersIncludingRemoteApps:(BOOL)a3 includeInternalMacOSApps:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [a1 _allIdentifiersIncludingRemoteApps:v5 includeInternalMacOSApps:{v4, 0}];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (([a1 isWidgetOrWebClipIdentifier:v13] & 1) == 0 && (objc_msgSend(v13, "hasPrefix:", @"com.apple.downloadingicon") & 1) == 0)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (BOOL)isWidgetOrWebClipIdentifier:(id)a3
{
  v14[5] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length] == 36)
  {
    v4 = v3;
  }

  else
  {
    if ([v3 length] != 32)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v5 = [v3 substringToIndex:8];
    v6 = [v3 substringWithRange:{8, 4, v5}];
    v14[1] = v6;
    v7 = [v3 substringWithRange:{12, 4}];
    v14[2] = v7;
    v8 = [v3 substringWithRange:{16, 4}];
    v14[3] = v8;
    v9 = [v3 substringFromIndex:20];
    v14[4] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:5];

    v4 = [v10 componentsJoinedByString:@"-"];
  }

  v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];
  v12 = v11 != 0;

LABEL_7:
  return v12;
}

@end