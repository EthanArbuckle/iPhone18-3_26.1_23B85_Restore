@interface ATXAppProtectionInfo
- (BOOL)bundleIdIsHiddenByUserPreference:(id)preference;
- (BOOL)bundleIdIsLockedByUserPreference:(id)preference;
- (BOOL)bundleIdIsLockedOrHiddenByUserPreference:(id)preference;
- (id)_effectiveBundleIdentifierForBundleIdentifier:(id)identifier;
- (id)hiddenBundleIDs;
- (id)hiddenOrLockedBundleIDs;
- (id)lockedBundleIDs;
@end

@implementation ATXAppProtectionInfo

- (id)hiddenOrLockedBundleIDs
{
  v3 = MEMORY[0x1E695DFA8];
  hiddenBundleIDs = [(ATXAppProtectionInfo *)self hiddenBundleIDs];
  v5 = [v3 setWithArray:hiddenBundleIDs];

  v6 = MEMORY[0x1E695DFD8];
  lockedBundleIDs = [(ATXAppProtectionInfo *)self lockedBundleIDs];
  v8 = [v6 setWithArray:lockedBundleIDs];
  [v5 unionSet:v8];

  return v5;
}

- (id)hiddenBundleIDs
{
  v16 = *MEMORY[0x1E69E9840];
  hiddenApplications = [MEMORY[0x1E698B0D0] hiddenApplications];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = hiddenApplications;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        bundleIdentifier = [*(*(&v11 + 1) + 8 * i) bundleIdentifier];
        [v3 addObject:bundleIdentifier];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if ([v3 containsObject:@"com.apple.Health"])
  {
    [v3 addObject:@"com.apple.Health.Sleep"];
  }

  return v3;
}

- (id)lockedBundleIDs
{
  v16 = *MEMORY[0x1E69E9840];
  lockedApplications = [MEMORY[0x1E698B0D0] lockedApplications];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = lockedApplications;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        bundleIdentifier = [*(*(&v11 + 1) + 8 * i) bundleIdentifier];
        [v3 addObject:bundleIdentifier];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if ([v3 containsObject:@"com.apple.Health"])
  {
    [v3 addObject:@"com.apple.Health.Sleep"];
  }

  return v3;
}

- (BOOL)bundleIdIsHiddenByUserPreference:(id)preference
{
  v3 = [(ATXAppProtectionInfo *)self _effectiveBundleIdentifierForBundleIdentifier:preference];
  v4 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:v3];
  isHidden = [v4 isHidden];

  return isHidden;
}

- (BOOL)bundleIdIsLockedByUserPreference:(id)preference
{
  v3 = [(ATXAppProtectionInfo *)self _effectiveBundleIdentifierForBundleIdentifier:preference];
  v4 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:v3];
  isLocked = [v4 isLocked];

  return isLocked;
}

- (BOOL)bundleIdIsLockedOrHiddenByUserPreference:(id)preference
{
  v4 = [(ATXAppProtectionInfo *)self _effectiveBundleIdentifierForBundleIdentifier:preference];
  v5 = [(ATXAppProtectionInfo *)self bundleIdIsLockedByUserPreference:v4]|| [(ATXAppProtectionInfo *)self bundleIdIsHiddenByUserPreference:v4];

  return v5;
}

- (id)_effectiveBundleIdentifierForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.Health.Sleep"])
  {
    v4 = @"com.apple.Health";
  }

  else
  {
    v4 = identifierCopy;
  }

  return v4;
}

@end