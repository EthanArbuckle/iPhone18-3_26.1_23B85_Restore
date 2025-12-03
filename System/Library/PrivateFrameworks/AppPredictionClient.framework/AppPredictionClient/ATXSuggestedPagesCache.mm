@interface ATXSuggestedPagesCache
- (ATXSuggestedPagesCache)init;
- (ATXSuggestedPagesCache)initWithPath:(id)path;
- (id)_cacheForPageType:(int64_t)type;
- (id)cachedSuggestedPagesForPageType:(int64_t)type;
- (void)cacheSuggestedPages:(id)pages forPageType:(int64_t)type;
- (void)evictCachedSuggestedPages;
- (void)printCachedSuggestedPagesStats;
@end

@implementation ATXSuggestedPagesCache

- (ATXSuggestedPagesCache)init
{
  appPredictionCacheDirectory = [MEMORY[0x1E698B010] appPredictionCacheDirectory];
  v4 = [(ATXSuggestedPagesCache *)self initWithPath:appPredictionCacheDirectory];

  return v4;
}

- (ATXSuggestedPagesCache)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = ATXSuggestedPagesCache;
  v5 = [(ATXSuggestedPagesCache *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    basePath = v5->_basePath;
    v5->_basePath = v6;
  }

  return v5;
}

- (id)cachedSuggestedPagesForPageType:(int64_t)type
{
  v23 = *MEMORY[0x1E69E9840];
  if (type >= 4)
  {
    v4 = [(ATXSuggestedPagesCache *)self _cacheForPageType:?];
    v5 = objc_autoreleasePoolPush();
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v5);
    v9 = [v4 readSecureCodedObjectWithMaxValidAge:v8 allowableClasses:0 error:432000.0];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = v9;
    v10 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v3);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          leafIcons = [v14 leafIcons];
          v16 = [leafIcons _pas_filteredArrayWithTest:&__block_literal_global_45];
          [v14 setLeafIcons:v16];
        }

        v11 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL __58__ATXSuggestedPagesCache_cachedSuggestedPagesForPageType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 bundleId];
    v4 = [ATXApplicationRecord isInstalledAndNotRestrictedForBundle:v3];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)evictCachedSuggestedPages
{
  for (i = 4; i != 12; ++i)
  {
    v4 = [(ATXSuggestedPagesCache *)self _cacheForPageType:i];
    [v4 evict];
  }
}

- (void)cacheSuggestedPages:(id)pages forPageType:(int64_t)type
{
  pagesCopy = pages;
  if ([pagesCopy count])
  {
    v6 = [(ATXSuggestedPagesCache *)self _cacheForPageType:type];
    v7 = [pagesCopy copy];
    [v6 storeSecureCodedObject:v7 error:0];
  }
}

- (id)_cacheForPageType:(int64_t)type
{
  basePath = self->_basePath;
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromATXSuggestedPageType(type);
  v6 = [v4 stringWithFormat:@"SuggestedPage-%@", v5];
  v7 = [(NSString *)basePath stringByAppendingPathComponent:v6];

  v8 = objc_alloc(MEMORY[0x1E698AFF0]);
  v9 = __atxlog_handle_modes();
  v10 = [v8 initWithCacheFilePath:v7 loggingHandle:v9 debugName:@"suggested pages"];

  return v10;
}

- (void)printCachedSuggestedPagesStats
{
  for (i = 4; i != 12; ++i)
  {
    v4 = NSStringFromATXSuggestedPageType(i);
    v5 = [(ATXSuggestedPagesCache *)self _cacheForPageType:i];
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    v10 = [v5 readSecureCodedObjectWithMaxValidAge:v9 allowableClasses:0 error:3.40282347e38];

    if ([v10 count])
    {
      v11 = MEMORY[0x1E698B010];
      cacheFilePath = [v5 cacheFilePath];
      v13 = [v11 modificationDateOfFileAtPath:cacheFilePath];

      NSLog(&cfstr_LdCachedPagesL.isa, v4, [v10 count], v13);
    }

    else
    {
      NSLog(&cfstr_NoCachedPages.isa, v4);
    }
  }
}

@end