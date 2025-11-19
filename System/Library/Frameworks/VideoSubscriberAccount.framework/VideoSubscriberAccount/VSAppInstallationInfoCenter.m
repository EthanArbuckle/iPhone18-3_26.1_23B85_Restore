@interface VSAppInstallationInfoCenter
- (VSOptional)installedAppBundleIDs;
@end

@implementation VSAppInstallationInfoCenter

- (VSOptional)installedAppBundleIDs
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_autoreleasePoolPush();
  [MEMORY[0x277CC1E70] enumeratorWithOptions:128];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 bundleIdentifier];
        if (v11)
        {
          [v2 addObject:v11];
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v3);
  v12 = [VSOptional optionalWithObject:v2];

  return v12;
}

@end