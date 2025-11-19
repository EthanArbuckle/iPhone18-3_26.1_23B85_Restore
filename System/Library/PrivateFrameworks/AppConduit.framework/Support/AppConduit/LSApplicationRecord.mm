@interface LSApplicationRecord
- (BOOL)ACX_isBuiltIn;
- (BOOL)ACX_isHidden;
- (BOOL)ACX_shouldBeTrackedByAppConduit;
- (BOOL)ACX_shouldBeTrackedByLaunchServicesWatcher;
- (LSApplicationExtensionRecord)ACX_watchKitExtension;
- (NSNumber)ACX_externalVersionIdentifier;
- (NSString)ACX_watchKitAppExtensionBundleID;
- (NSString)ACX_wkTeamID;
@end

@implementation LSApplicationRecord

- (BOOL)ACX_isBuiltIn
{
  v2 = [(LSApplicationRecord *)self typeForInstallMachinery];
  v3 = [v2 isEqualToString:LSUserApplicationType];

  return v3 ^ 1;
}

- (BOOL)ACX_shouldBeTrackedByAppConduit
{
  v3 = [LSApplicationRecord alloc];
  v4 = [(LSApplicationRecord *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifierOfSystemPlaceholder:v4 error:0];

  if (!v5)
  {
    if ([(LSApplicationRecord *)self ACX_isHidden]|| ([(LSApplicationRecord *)self isLaunchProhibited]& 1) != 0)
    {
      return 0;
    }

    if (([(LSApplicationRecord *)self isDeletable]& 1) == 0)
    {
      v8 = [(LSApplicationRecord *)self ACX_watchKitAppExtensionBundleID];
      v6 = v8 != 0;

      return v6;
    }
  }

  return 1;
}

- (BOOL)ACX_shouldBeTrackedByLaunchServicesWatcher
{
  v3 = [LSApplicationRecord alloc];
  v4 = [(LSApplicationRecord *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifierOfSystemPlaceholder:v4 error:0];

  if (v5)
  {
    return 1;
  }

  v7 = [(LSApplicationRecord *)self typeForInstallMachinery];
  if ([(LSApplicationRecord *)self ACX_isHidden])
  {
    v6 = 0;
  }

  else if ([v7 isEqualToString:LSSystemApplicationType])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v7 isEqualToString:LSUserApplicationType];
  }

  return v6;
}

- (BOOL)ACX_isHidden
{
  v2 = [(LSApplicationRecord *)self appTags];
  v3 = [v2 containsObject:@"hidden"];

  return v3;
}

- (NSString)ACX_watchKitAppExtensionBundleID
{
  v2 = [(LSApplicationRecord *)self infoDictionary];
  v3 = [v2 objectForKey:@"WKPluginBundleIdKey" ofClass:objc_opt_class()];

  return v3;
}

- (LSApplicationExtensionRecord)ACX_watchKitExtension
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(LSApplicationRecord *)self applicationExtensionRecords];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 extensionPointRecord];
        v9 = [v8 name];
        v10 = [v9 isEqualToString:@"com.apple.watchkit"];

        if (v10)
        {
          v11 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (NSString)ACX_wkTeamID
{
  v2 = [(LSApplicationRecord *)self teamIdentifier];
  v3 = v2;
  if (v2 && ([v2 isEqualToString:@"0000000000"] & 1) == 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_10008F378;
  }

  return v4;
}

- (NSNumber)ACX_externalVersionIdentifier
{
  v2 = [(LSApplicationRecord *)self iTunesMetadata];
  v3 = [v2 versionIdentifier];

  if (v3)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end