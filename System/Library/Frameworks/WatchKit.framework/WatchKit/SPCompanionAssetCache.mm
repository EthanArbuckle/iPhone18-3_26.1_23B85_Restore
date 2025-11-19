@interface SPCompanionAssetCache
+ (id)sharedInstance;
- (BOOL)addImageToPermanentCache:(id)a3 withName:(id)a4;
- (BOOL)imageInPermanentCache:(id)a3;
- (BOOL)imageInTransientCache:(id)a3;
- (SPCompanionAssetCache)init;
- (id)cachedImages;
- (id)dataForImageWithName:(id)a3;
- (id)keyFromImageData:(id)a3;
- (void)addImageReferenceToTransientCache:(id)a3 withName:(id)a4;
- (void)addedAsset:(id)a3;
- (void)clearedCache:(id)a3;
- (void)deletedAsset:(id)a3;
- (void)handleCacheMessage:(id)a3;
- (void)removeAllImagesFromPermanentCache;
- (void)removeImageFromPermanentCacheWithName:(id)a3;
- (void)syncCache:(id)a3;
@end

@implementation SPCompanionAssetCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SPCompanionAssetCache sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __39__SPCompanionAssetCache_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(SPCompanionAssetCache);

  return MEMORY[0x2821F96F8]();
}

- (SPCompanionAssetCache)init
{
  v9.receiver = self;
  v9.super_class = SPCompanionAssetCache;
  v2 = [(SPCompanionAssetCache *)&v9 init];
  if (v2)
  {
    v3 = +[SPRemoteInterface cacheIdentifier];
    v4 = [[SPAssetCacheClientCache alloc] initWithIdentifier:v3 cacheType:1];
    permanentCache = v2->_permanentCache;
    v2->_permanentCache = v4;

    v6 = [[SPAssetCacheClientCache alloc] initWithIdentifier:v3 cacheType:2];
    transientCache = v2->_transientCache;
    v2->_transientCache = v6;
  }

  return v2;
}

- (BOOL)imageInTransientCache:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(SPAssetCacheClientCache *)v5->_transientCache assets];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    v8 = [v7 state] == 0;
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(v5);
  return v8;
}

- (void)addImageReferenceToTransientCache:(id)a3 withName:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  [(SPAssetCacheClientCache *)v7->_transientCache addAsset:v8 withName:v6 sendImage:0];
  objc_sync_exit(v7);
}

- (void)handleCacheMessage:(id)a3
{
  v4 = a3;
  if ([v4 messageType] == 6)
  {
    [(SPCompanionAssetCache *)self addedAsset:v4];
  }

  else if ([v4 messageType] == 7)
  {
    [(SPCompanionAssetCache *)self deletedAsset:v4];
  }

  else if ([v4 messageType] == 8)
  {
    [(SPCompanionAssetCache *)self clearedCache:v4];
  }

  else if ([v4 messageType] == 11)
  {
    [(SPCompanionAssetCache *)self syncCache:v4];
  }
}

- (void)addedAsset:(id)a3
{
  v12[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![v4 error])
  {
    if ([v4 cacheType] == 1)
    {
      permanentCache = v5->_permanentCache;
      v9 = [v4 assetKey];
      [(SPAssetCacheClientCache *)permanentCache addedAssetWithName:v9];
    }

    else
    {
      if ([v4 cacheType] != 2)
      {
        goto LABEL_10;
      }

      transientCache = v5->_transientCache;
      v9 = [v4 assetKey];
      [(SPAssetCacheClientCache *)transientCache addedAssetWithName:v9];
    }

    goto LABEL_10;
  }

  v6 = wk_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v4 assetKey];
    [(SPCompanionAssetCache *)v7 addedAsset:v12];
  }

LABEL_10:
  objc_sync_exit(v5);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deletedAsset:(id)a3
{
  v12[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![v4 error])
  {
    if ([v4 cacheType] == 1)
    {
      permanentCache = v5->_permanentCache;
      v9 = [v4 assetKey];
      [(SPAssetCacheClientCache *)permanentCache deletedAssetWithName:v9];
    }

    else
    {
      if ([v4 cacheType] != 2)
      {
        goto LABEL_10;
      }

      transientCache = v5->_transientCache;
      v9 = [v4 assetKey];
      [(SPAssetCacheClientCache *)transientCache deletedAssetWithName:v9];
    }

    goto LABEL_10;
  }

  v6 = wk_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v4 assetKey];
    [(SPCompanionAssetCache *)v7 deletedAsset:v12];
  }

LABEL_10:
  objc_sync_exit(v5);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)clearedCache:(id)a3
{
  v9[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![v4 error])
  {
    if ([v4 cacheType] == 1)
    {
      v7 = 8;
    }

    else
    {
      if ([v4 cacheType] != 2)
      {
        goto LABEL_10;
      }

      v7 = 16;
    }

    [*(&v5->super.isa + v7) clearedCache];
    goto LABEL_10;
  }

  v6 = wk_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    -[SPCompanionAssetCache clearedCache:].cold.1(v9, [v4 cacheType], v6);
  }

LABEL_10:
  objc_sync_exit(v5);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncCache:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([v4 error])
  {
    v6 = wk_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SPCompanionAssetCache syncCache:];
    }
  }

  else
  {
    transientCache = v5->_transientCache;
    v8 = [v4 syncData];
    [(SPAssetCacheClientCache *)transientCache syncAssets:v8];

    permanentCache = v5->_permanentCache;
    v6 = [v4 syncData];
    [(SPAssetCacheClientCache *)permanentCache syncAssets:v6];
  }

  objc_sync_exit(v5);
}

- (BOOL)imageInPermanentCache:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(SPAssetCacheClientCache *)v5->_permanentCache assets];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    v8 = [v7 state] == 0;
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(v5);
  return v8;
}

- (BOOL)addImageToPermanentCache:(id)a3 withName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(SPAssetCacheClientCache *)v8->_permanentCache addAsset:v6 withName:v7 sendImage:1];
  objc_sync_exit(v8);

  return v9;
}

- (void)removeImageFromPermanentCacheWithName:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(SPAssetCacheClientCache *)v4->_permanentCache deleteAssetWithName:v5];
  objc_sync_exit(v4);
}

- (void)removeAllImagesFromPermanentCache
{
  obj = self;
  objc_sync_enter(obj);
  [(SPAssetCacheClientCache *)obj->_permanentCache deleteAllAssets];
  objc_sync_exit(obj);
}

- (id)cachedImages
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SPAssetCacheClientCache *)v2->_permanentCache cachedImages];
  objc_sync_exit(v2);

  return v3;
}

- (id)dataForImageWithName:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(SPAssetCacheClientCache *)v5->_permanentCache dataForImageWithName:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)keyFromImageData:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  CC_MD5([v3 bytes], objc_msgSend(v3, "length"), md);
  v4 = [MEMORY[0x277CCAB68] stringWithCapacity:32];
  for (i = 0; i != 16; ++i)
  {
    [v4 appendFormat:@"%02x", md[i]];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)addedAsset:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  *a2 = 136446722;
  *(a2 + 4) = "[SPCompanionAssetCache addedAsset:]";
  *(a2 + 12) = 1024;
  OUTLINED_FUNCTION_4_1(a1, a2, 377);
  OUTLINED_FUNCTION_3_0(&dword_23B338000, v3, v4, "%{public}s:%d: asset caching error for asset id: %{public}@", v5);
}

- (void)deletedAsset:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  *a2 = 136446722;
  *(a2 + 4) = "[SPCompanionAssetCache deletedAsset:]";
  *(a2 + 12) = 1024;
  OUTLINED_FUNCTION_4_1(a1, a2, 392);
  OUTLINED_FUNCTION_3_0(&dword_23B338000, v3, v4, "%{public}s:%d: asset removal error for asset id: %{public}@", v5);
}

- (void)clearedCache:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 136446722;
  *(a1 + 4) = "[SPCompanionAssetCache clearedCache:]";
  *(a1 + 12) = 1024;
  *(a1 + 14) = 407;
  *(a1 + 18) = 2048;
  *(a1 + 20) = a2;
  OUTLINED_FUNCTION_3_0(&dword_23B338000, a2, a3, "%{public}s:%d: clearedCache error for cache type %lu", a1);
}

- (void)syncCache:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136446466;
  OUTLINED_FUNCTION_3();
  *(&v2[3] + 2) = 419;
  _os_log_error_impl(&dword_23B338000, v0, OS_LOG_TYPE_ERROR, "%{public}s:%d: sync cache error", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end