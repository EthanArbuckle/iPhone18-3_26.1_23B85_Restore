@interface ATXAppDisplayIdentifiers
+ (BOOL)isWidgetOrWebClipIdentifier:(id)identifier;
+ (NSSet)allIdentifiers;
+ (NSSet)appIdentifiers;
+ (id)_allIdentifiersIncludingRemoteApps:(BOOL)apps includeInternalMacOSApps:(BOOL)sApps;
+ (id)_appIdentifiersIncludingRemoteApps:(BOOL)apps includeInternalMacOSApps:(BOOL)sApps;
+ (void)_processIdentifiersFromEnumerator:(id)enumerator intoSet:(id)set includeInternalMacOSApps:(BOOL)apps;
@end

@implementation ATXAppDisplayIdentifiers

+ (NSSet)appIdentifiers
{
  v3 = ATXRemoteAppSuggestionsEnabled();

  return [self _appIdentifiersIncludingRemoteApps:v3 includeInternalMacOSApps:1];
}

+ (void)_processIdentifiersFromEnumerator:(id)enumerator intoSet:(id)set includeInternalMacOSApps:(BOOL)apps
{
  v29 = *MEMORY[0x1E69E9840];
  enumeratorCopy = enumerator;
  setCopy = set;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [enumeratorCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(enumeratorCopy);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        applicationState = [v12 applicationState];
        isInstalled = [applicationState isInstalled];

        if (isInstalled)
        {
          applicationState2 = [v12 applicationState];
          isRestricted = [applicationState2 isRestricted];

          if ((isRestricted & 1) == 0)
          {
            appTags = [v12 appTags];
            v18 = [appTags containsObject:@"hidden"];

            if ((v18 & 1) == 0)
            {
              bundleIdentifier = [v12 bundleIdentifier];
              v20 = [bundleIdentifier length];

              if (v20)
              {
                compatibilityObject = [v12 compatibilityObject];
                applicationType = [compatibilityObject applicationType];

                if (([applicationType isEqualToString:@"Internal"] & 1) == 0)
                {
                  bundleIdentifier2 = [v12 bundleIdentifier];
                  [setCopy addObject:bundleIdentifier2];
                }
              }
            }
          }
        }
      }

      v9 = [enumeratorCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }
}

+ (id)_allIdentifiersIncludingRemoteApps:(BOOL)apps includeInternalMacOSApps:(BOOL)sApps
{
  v4 = SBSCopyDisplayIdentifiers();

  return v4;
}

+ (NSSet)allIdentifiers
{
  v3 = ATXRemoteAppSuggestionsEnabled();

  return [self _allIdentifiersIncludingRemoteApps:v3 includeInternalMacOSApps:1];
}

+ (id)_appIdentifiersIncludingRemoteApps:(BOOL)apps includeInternalMacOSApps:(BOOL)sApps
{
  sAppsCopy = sApps;
  appsCopy = apps;
  v20 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [self _allIdentifiersIncludingRemoteApps:appsCopy includeInternalMacOSApps:{sAppsCopy, 0}];
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
        if (([self isWidgetOrWebClipIdentifier:v13] & 1) == 0 && (objc_msgSend(v13, "hasPrefix:", @"com.apple.downloadingicon") & 1) == 0)
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

+ (BOOL)isWidgetOrWebClipIdentifier:(id)identifier
{
  v14[5] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([identifierCopy length] == 36)
  {
    v4 = identifierCopy;
  }

  else
  {
    if ([identifierCopy length] != 32)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v5 = [identifierCopy substringToIndex:8];
    v6 = [identifierCopy substringWithRange:{8, 4, v5}];
    v14[1] = v6;
    v7 = [identifierCopy substringWithRange:{12, 4}];
    v14[2] = v7;
    v8 = [identifierCopy substringWithRange:{16, 4}];
    v14[3] = v8;
    v9 = [identifierCopy substringFromIndex:20];
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