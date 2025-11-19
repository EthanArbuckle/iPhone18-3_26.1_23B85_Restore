@interface ATXAppProtectionInfo
- (BOOL)bundleIdIsHiddenByUserPreference:(id)a3;
- (BOOL)bundleIdIsLockedByUserPreference:(id)a3;
- (BOOL)bundleIdIsLockedOrHiddenByUserPreference:(id)a3;
- (id)_effectiveBundleIdentifierForBundleIdentifier:(id)a3;
- (id)hiddenBundleIDs;
- (id)hiddenOrLockedBundleIDs;
- (id)lockedBundleIDs;
@end

@implementation ATXAppProtectionInfo

- (id)hiddenOrLockedBundleIDs
{
  v3 = MEMORY[0x1E695DFA8];
  v4 = [(ATXAppProtectionInfo *)self hiddenBundleIDs];
  v5 = [v3 setWithArray:v4];

  v6 = MEMORY[0x1E695DFD8];
  v7 = [(ATXAppProtectionInfo *)self lockedBundleIDs];
  v8 = [v6 setWithArray:v7];
  [v5 unionSet:v8];

  return v5;
}

- (id)hiddenBundleIDs
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698B0D0] hiddenApplications];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
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

        v9 = [*(*(&v11 + 1) + 8 * i) bundleIdentifier];
        [v3 addObject:v9];
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
  v2 = [MEMORY[0x1E698B0D0] lockedApplications];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
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

        v9 = [*(*(&v11 + 1) + 8 * i) bundleIdentifier];
        [v3 addObject:v9];
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

- (BOOL)bundleIdIsHiddenByUserPreference:(id)a3
{
  v3 = [(ATXAppProtectionInfo *)self _effectiveBundleIdentifierForBundleIdentifier:a3];
  v4 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:v3];
  v5 = [v4 isHidden];

  return v5;
}

- (BOOL)bundleIdIsLockedByUserPreference:(id)a3
{
  v3 = [(ATXAppProtectionInfo *)self _effectiveBundleIdentifierForBundleIdentifier:a3];
  v4 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:v3];
  v5 = [v4 isLocked];

  return v5;
}

- (BOOL)bundleIdIsLockedOrHiddenByUserPreference:(id)a3
{
  v4 = [(ATXAppProtectionInfo *)self _effectiveBundleIdentifierForBundleIdentifier:a3];
  v5 = [(ATXAppProtectionInfo *)self bundleIdIsLockedByUserPreference:v4]|| [(ATXAppProtectionInfo *)self bundleIdIsHiddenByUserPreference:v4];

  return v5;
}

- (id)_effectiveBundleIdentifierForBundleIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.Health.Sleep"])
  {
    v4 = @"com.apple.Health";
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

@end