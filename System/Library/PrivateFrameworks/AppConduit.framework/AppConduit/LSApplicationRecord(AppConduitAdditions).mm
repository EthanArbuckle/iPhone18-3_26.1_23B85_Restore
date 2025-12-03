@interface LSApplicationRecord(AppConduitAdditions)
- (__CFString)ACX_wkTeamID;
- (id)ACX_externalVersionIdentifier;
- (id)ACX_watchKitAppExtensionBundleID;
- (id)ACX_watchKitExtension;
- (uint64_t)ACX_isBuiltIn;
- (uint64_t)ACX_isHidden;
- (uint64_t)ACX_shouldBeTrackedByAppConduit;
- (uint64_t)ACX_shouldBeTrackedByLaunchServicesWatcher;
@end

@implementation LSApplicationRecord(AppConduitAdditions)

- (uint64_t)ACX_isBuiltIn
{
  typeForInstallMachinery = [self typeForInstallMachinery];
  v2 = [typeForInstallMachinery isEqualToString:*MEMORY[0x277CC1E40]];

  return v2 ^ 1u;
}

- (uint64_t)ACX_shouldBeTrackedByAppConduit
{
  v2 = objc_alloc(MEMORY[0x277CC1E70]);
  bundleIdentifier = [self bundleIdentifier];
  v4 = [v2 initWithBundleIdentifierOfSystemPlaceholder:bundleIdentifier error:0];

  if (!v4)
  {
    if ([self ACX_isHidden] & 1) != 0 || (objc_msgSend(self, "isLaunchProhibited"))
    {
      return 0;
    }

    if (([self isDeletable] & 1) == 0)
    {
      aCX_watchKitAppExtensionBundleID = [self ACX_watchKitAppExtensionBundleID];
      v5 = aCX_watchKitAppExtensionBundleID != 0;

      return v5;
    }
  }

  return 1;
}

- (uint64_t)ACX_shouldBeTrackedByLaunchServicesWatcher
{
  v2 = objc_alloc(MEMORY[0x277CC1E70]);
  bundleIdentifier = [self bundleIdentifier];
  v4 = [v2 initWithBundleIdentifierOfSystemPlaceholder:bundleIdentifier error:0];

  if (v4)
  {
    return 1;
  }

  typeForInstallMachinery = [self typeForInstallMachinery];
  if ([self ACX_isHidden])
  {
    v5 = 0;
  }

  else if ([typeForInstallMachinery isEqualToString:*MEMORY[0x277CC1E30]])
  {
    v5 = 1;
  }

  else
  {
    v5 = [typeForInstallMachinery isEqualToString:*MEMORY[0x277CC1E40]];
  }

  return v5;
}

- (uint64_t)ACX_isHidden
{
  appTags = [self appTags];
  v2 = [appTags containsObject:@"hidden"];

  return v2;
}

- (id)ACX_watchKitAppExtensionBundleID
{
  infoDictionary = [self infoDictionary];
  v2 = [infoDictionary objectForKey:@"WKPluginBundleIdKey" ofClass:objc_opt_class()];

  return v2;
}

- (id)ACX_watchKitExtension
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  applicationExtensionRecords = [self applicationExtensionRecords];
  v2 = [applicationExtensionRecords countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(applicationExtensionRecords);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        extensionPointRecord = [v6 extensionPointRecord];
        name = [extensionPointRecord name];
        v9 = [name isEqualToString:@"com.apple.watchkit"];

        if (v9)
        {
          v10 = v6;
          goto LABEL_11;
        }
      }

      v3 = [applicationExtensionRecords countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (__CFString)ACX_wkTeamID
{
  teamIdentifier = [self teamIdentifier];
  v2 = teamIdentifier;
  if (teamIdentifier && ([teamIdentifier isEqualToString:@"0000000000"] & 1) == 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = &stru_2851ED680;
  }

  return v3;
}

- (id)ACX_externalVersionIdentifier
{
  iTunesMetadata = [self iTunesMetadata];
  versionIdentifier = [iTunesMetadata versionIdentifier];

  if (versionIdentifier)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:versionIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end