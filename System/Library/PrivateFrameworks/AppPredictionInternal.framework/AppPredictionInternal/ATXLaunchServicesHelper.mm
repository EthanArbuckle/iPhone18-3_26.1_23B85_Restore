@interface ATXLaunchServicesHelper
+ (BOOL)bundleIsExtension:(id)extension;
+ (id)getGenreIdsForBundleId:(id)id remoteBundleIDMappings:(id)mappings;
+ (id)getGenreIdsForRecord:(id)record;
@end

@implementation ATXLaunchServicesHelper

+ (BOOL)bundleIsExtension:(id)extension
{
  v3 = MEMORY[0x277CC1E50];
  extensionCopy = extension;
  v5 = [[v3 alloc] initWithBundleIdentifier:extensionCopy error:0];

  return v5 != 0;
}

+ (id)getGenreIdsForBundleId:(id)id remoteBundleIDMappings:(id)mappings
{
  v5 = MEMORY[0x277CC1E70];
  idCopy = id;
  v7 = [[v5 alloc] initWithBundleIdentifier:idCopy allowPlaceholder:1 error:0];

  v8 = 0;
  if (([v7 isLaunchProhibited] & 1) == 0)
  {
    v8 = [self getGenreIdsForRecord:v7];
  }

  return v8;
}

+ (id)getGenreIdsForRecord:(id)record
{
  v25 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v4 = MEMORY[0x277CCABB0];
  iTunesMetadata = [recordCopy iTunesMetadata];
  v18 = [v4 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "genreIdentifier")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = recordCopy;
  iTunesMetadata2 = [recordCopy iTunesMetadata];
  subgenres = [iTunesMetadata2 subgenres];

  v8 = [subgenres countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(subgenres);
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

      v9 = [subgenres countByEnumeratingWithState:&v20 objects:v24 count:16];
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