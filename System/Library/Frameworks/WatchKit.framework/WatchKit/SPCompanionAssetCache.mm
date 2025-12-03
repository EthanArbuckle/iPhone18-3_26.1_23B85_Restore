@interface SPCompanionAssetCache
+ (id)sharedInstance;
- (BOOL)addImageToPermanentCache:(id)cache withName:(id)name;
- (BOOL)imageInPermanentCache:(id)cache;
- (BOOL)imageInTransientCache:(id)cache;
- (SPCompanionAssetCache)init;
- (id)cachedImages;
- (id)dataForImageWithName:(id)name;
- (id)keyFromImageData:(id)data;
- (void)addImageReferenceToTransientCache:(id)cache withName:(id)name;
- (void)addedAsset:(id)asset;
- (void)clearedCache:(id)cache;
- (void)deletedAsset:(id)asset;
- (void)handleCacheMessage:(id)message;
- (void)removeAllImagesFromPermanentCache;
- (void)removeImageFromPermanentCacheWithName:(id)name;
- (void)syncCache:(id)cache;
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

- (BOOL)imageInTransientCache:(id)cache
{
  cacheCopy = cache;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  assets = [(SPAssetCacheClientCache *)selfCopy->_transientCache assets];
  v7 = [assets objectForKeyedSubscript:cacheCopy];

  if (v7)
  {
    v8 = [v7 state] == 0;
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(selfCopy);
  return v8;
}

- (void)addImageReferenceToTransientCache:(id)cache withName:(id)name
{
  cacheCopy = cache;
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SPAssetCacheClientCache *)selfCopy->_transientCache addAsset:cacheCopy withName:nameCopy sendImage:0];
  objc_sync_exit(selfCopy);
}

- (void)handleCacheMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy messageType] == 6)
  {
    [(SPCompanionAssetCache *)self addedAsset:messageCopy];
  }

  else if ([messageCopy messageType] == 7)
  {
    [(SPCompanionAssetCache *)self deletedAsset:messageCopy];
  }

  else if ([messageCopy messageType] == 8)
  {
    [(SPCompanionAssetCache *)self clearedCache:messageCopy];
  }

  else if ([messageCopy messageType] == 11)
  {
    [(SPCompanionAssetCache *)self syncCache:messageCopy];
  }
}

- (void)addedAsset:(id)asset
{
  v12[5] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![assetCopy error])
  {
    if ([assetCopy cacheType] == 1)
    {
      permanentCache = selfCopy->_permanentCache;
      assetKey = [assetCopy assetKey];
      [(SPAssetCacheClientCache *)permanentCache addedAssetWithName:assetKey];
    }

    else
    {
      if ([assetCopy cacheType] != 2)
      {
        goto LABEL_10;
      }

      transientCache = selfCopy->_transientCache;
      assetKey = [assetCopy assetKey];
      [(SPAssetCacheClientCache *)transientCache addedAssetWithName:assetKey];
    }

    goto LABEL_10;
  }

  v6 = wk_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    assetKey2 = [assetCopy assetKey];
    [(SPCompanionAssetCache *)assetKey2 addedAsset:v12];
  }

LABEL_10:
  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deletedAsset:(id)asset
{
  v12[5] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![assetCopy error])
  {
    if ([assetCopy cacheType] == 1)
    {
      permanentCache = selfCopy->_permanentCache;
      assetKey = [assetCopy assetKey];
      [(SPAssetCacheClientCache *)permanentCache deletedAssetWithName:assetKey];
    }

    else
    {
      if ([assetCopy cacheType] != 2)
      {
        goto LABEL_10;
      }

      transientCache = selfCopy->_transientCache;
      assetKey = [assetCopy assetKey];
      [(SPAssetCacheClientCache *)transientCache deletedAssetWithName:assetKey];
    }

    goto LABEL_10;
  }

  v6 = wk_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    assetKey2 = [assetCopy assetKey];
    [(SPCompanionAssetCache *)assetKey2 deletedAsset:v12];
  }

LABEL_10:
  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)clearedCache:(id)cache
{
  v9[5] = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![cacheCopy error])
  {
    if ([cacheCopy cacheType] == 1)
    {
      v7 = 8;
    }

    else
    {
      if ([cacheCopy cacheType] != 2)
      {
        goto LABEL_10;
      }

      v7 = 16;
    }

    [*(&selfCopy->super.isa + v7) clearedCache];
    goto LABEL_10;
  }

  v6 = wk_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    -[SPCompanionAssetCache clearedCache:].cold.1(v9, [cacheCopy cacheType], v6);
  }

LABEL_10:
  objc_sync_exit(selfCopy);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncCache:(id)cache
{
  cacheCopy = cache;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([cacheCopy error])
  {
    syncData2 = wk_default_log();
    if (os_log_type_enabled(syncData2, OS_LOG_TYPE_ERROR))
    {
      [SPCompanionAssetCache syncCache:];
    }
  }

  else
  {
    transientCache = selfCopy->_transientCache;
    syncData = [cacheCopy syncData];
    [(SPAssetCacheClientCache *)transientCache syncAssets:syncData];

    permanentCache = selfCopy->_permanentCache;
    syncData2 = [cacheCopy syncData];
    [(SPAssetCacheClientCache *)permanentCache syncAssets:syncData2];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)imageInPermanentCache:(id)cache
{
  cacheCopy = cache;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  assets = [(SPAssetCacheClientCache *)selfCopy->_permanentCache assets];
  v7 = [assets objectForKeyedSubscript:cacheCopy];

  if (v7)
  {
    v8 = [v7 state] == 0;
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(selfCopy);
  return v8;
}

- (BOOL)addImageToPermanentCache:(id)cache withName:(id)name
{
  cacheCopy = cache;
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(SPAssetCacheClientCache *)selfCopy->_permanentCache addAsset:cacheCopy withName:nameCopy sendImage:1];
  objc_sync_exit(selfCopy);

  return v9;
}

- (void)removeImageFromPermanentCacheWithName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SPAssetCacheClientCache *)selfCopy->_permanentCache deleteAssetWithName:nameCopy];
  objc_sync_exit(selfCopy);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedImages = [(SPAssetCacheClientCache *)selfCopy->_permanentCache cachedImages];
  objc_sync_exit(selfCopy);

  return cachedImages;
}

- (id)dataForImageWithName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(SPAssetCacheClientCache *)selfCopy->_permanentCache dataForImageWithName:nameCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)keyFromImageData:(id)data
{
  v9 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  CC_MD5([dataCopy bytes], objc_msgSend(dataCopy, "length"), md);
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