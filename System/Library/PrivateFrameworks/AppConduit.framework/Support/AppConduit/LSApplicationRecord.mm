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
  typeForInstallMachinery = [(LSApplicationRecord *)self typeForInstallMachinery];
  v3 = [typeForInstallMachinery isEqualToString:LSUserApplicationType];

  return v3 ^ 1;
}

- (BOOL)ACX_shouldBeTrackedByAppConduit
{
  v3 = [LSApplicationRecord alloc];
  bundleIdentifier = [(LSApplicationRecord *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifierOfSystemPlaceholder:bundleIdentifier error:0];

  if (!v5)
  {
    if ([(LSApplicationRecord *)self ACX_isHidden]|| ([(LSApplicationRecord *)self isLaunchProhibited]& 1) != 0)
    {
      return 0;
    }

    if (([(LSApplicationRecord *)self isDeletable]& 1) == 0)
    {
      aCX_watchKitAppExtensionBundleID = [(LSApplicationRecord *)self ACX_watchKitAppExtensionBundleID];
      v6 = aCX_watchKitAppExtensionBundleID != 0;

      return v6;
    }
  }

  return 1;
}

- (BOOL)ACX_shouldBeTrackedByLaunchServicesWatcher
{
  v3 = [LSApplicationRecord alloc];
  bundleIdentifier = [(LSApplicationRecord *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifierOfSystemPlaceholder:bundleIdentifier error:0];

  if (v5)
  {
    return 1;
  }

  typeForInstallMachinery = [(LSApplicationRecord *)self typeForInstallMachinery];
  if ([(LSApplicationRecord *)self ACX_isHidden])
  {
    v6 = 0;
  }

  else if ([typeForInstallMachinery isEqualToString:LSSystemApplicationType])
  {
    v6 = 1;
  }

  else
  {
    v6 = [typeForInstallMachinery isEqualToString:LSUserApplicationType];
  }

  return v6;
}

- (BOOL)ACX_isHidden
{
  appTags = [(LSApplicationRecord *)self appTags];
  v3 = [appTags containsObject:@"hidden"];

  return v3;
}

- (NSString)ACX_watchKitAppExtensionBundleID
{
  infoDictionary = [(LSApplicationRecord *)self infoDictionary];
  v3 = [infoDictionary objectForKey:@"WKPluginBundleIdKey" ofClass:objc_opt_class()];

  return v3;
}

- (LSApplicationExtensionRecord)ACX_watchKitExtension
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  applicationExtensionRecords = [(LSApplicationRecord *)self applicationExtensionRecords];
  v3 = [applicationExtensionRecords countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(applicationExtensionRecords);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        extensionPointRecord = [v7 extensionPointRecord];
        name = [extensionPointRecord name];
        v10 = [name isEqualToString:@"com.apple.watchkit"];

        if (v10)
        {
          v11 = v7;
          goto LABEL_11;
        }
      }

      v4 = [applicationExtensionRecords countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  teamIdentifier = [(LSApplicationRecord *)self teamIdentifier];
  v3 = teamIdentifier;
  if (teamIdentifier && ([teamIdentifier isEqualToString:@"0000000000"] & 1) == 0)
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
  iTunesMetadata = [(LSApplicationRecord *)self iTunesMetadata];
  versionIdentifier = [iTunesMetadata versionIdentifier];

  if (versionIdentifier)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:versionIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end