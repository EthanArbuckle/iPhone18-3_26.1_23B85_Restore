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
  v1 = [a1 typeForInstallMachinery];
  v2 = [v1 isEqualToString:*MEMORY[0x277CC1E40]];

  return v2 ^ 1u;
}

- (uint64_t)ACX_shouldBeTrackedByAppConduit
{
  v2 = objc_alloc(MEMORY[0x277CC1E70]);
  v3 = [a1 bundleIdentifier];
  v4 = [v2 initWithBundleIdentifierOfSystemPlaceholder:v3 error:0];

  if (!v4)
  {
    if ([a1 ACX_isHidden] & 1) != 0 || (objc_msgSend(a1, "isLaunchProhibited"))
    {
      return 0;
    }

    if (([a1 isDeletable] & 1) == 0)
    {
      v7 = [a1 ACX_watchKitAppExtensionBundleID];
      v5 = v7 != 0;

      return v5;
    }
  }

  return 1;
}

- (uint64_t)ACX_shouldBeTrackedByLaunchServicesWatcher
{
  v2 = objc_alloc(MEMORY[0x277CC1E70]);
  v3 = [a1 bundleIdentifier];
  v4 = [v2 initWithBundleIdentifierOfSystemPlaceholder:v3 error:0];

  if (v4)
  {
    return 1;
  }

  v6 = [a1 typeForInstallMachinery];
  if ([a1 ACX_isHidden])
  {
    v5 = 0;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CC1E30]])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v6 isEqualToString:*MEMORY[0x277CC1E40]];
  }

  return v5;
}

- (uint64_t)ACX_isHidden
{
  v1 = [a1 appTags];
  v2 = [v1 containsObject:@"hidden"];

  return v2;
}

- (id)ACX_watchKitAppExtensionBundleID
{
  v1 = [a1 infoDictionary];
  v2 = [v1 objectForKey:@"WKPluginBundleIdKey" ofClass:objc_opt_class()];

  return v2;
}

- (id)ACX_watchKitExtension
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = [a1 applicationExtensionRecords];
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [v6 extensionPointRecord];
        v8 = [v7 name];
        v9 = [v8 isEqualToString:@"com.apple.watchkit"];

        if (v9)
        {
          v10 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v1 = [a1 teamIdentifier];
  v2 = v1;
  if (v1 && ([v1 isEqualToString:@"0000000000"] & 1) == 0)
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
  v1 = [a1 iTunesMetadata];
  v2 = [v1 versionIdentifier];

  if (v2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end