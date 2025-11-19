@interface ATXLaunchServicesHelper
+ (BOOL)bundleIsExtension:(id)a3;
+ (id)getGenreIdsForBundleId:(id)a3 remoteBundleIDMappings:(id)a4;
+ (id)getGenreIdsForRecord:(id)a3;
@end

@implementation ATXLaunchServicesHelper

+ (BOOL)bundleIsExtension:(id)a3
{
  v3 = MEMORY[0x277CC1E50];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 error:0];

  return v5 != 0;
}

+ (id)getGenreIdsForBundleId:(id)a3 remoteBundleIDMappings:(id)a4
{
  v5 = MEMORY[0x277CC1E70];
  v6 = a3;
  v7 = [[v5 alloc] initWithBundleIdentifier:v6 allowPlaceholder:1 error:0];

  v8 = 0;
  if (([v7 isLaunchProhibited] & 1) == 0)
  {
    v8 = [a1 getGenreIdsForRecord:v7];
  }

  return v8;
}

+ (id)getGenreIdsForRecord:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CCABB0];
  v5 = [v3 iTunesMetadata];
  v18 = [v4 numberWithUnsignedLongLong:{objc_msgSend(v5, "genreIdentifier")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = v3;
  v6 = [v3 iTunesMetadata];
  v7 = [v6 subgenres];

  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:{@"genreId", v18}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          if (!v10)
          {
            v10 = objc_opt_new();
          }

          [v10 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v15 = [MEMORY[0x277D42648] tupleWithFirst:v18 second:v10];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end