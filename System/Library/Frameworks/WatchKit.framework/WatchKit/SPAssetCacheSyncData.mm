@interface SPAssetCacheSyncData
+ (id)fromProto:(id)proto;
+ (id)toProto:(id)proto;
- (SPAssetCacheSyncData)init;
@end

@implementation SPAssetCacheSyncData

- (SPAssetCacheSyncData)init
{
  v3.receiver = self;
  v3.super_class = SPAssetCacheSyncData;
  return [(SPAssetCacheSyncData *)&v3 init];
}

+ (id)toProto:(id)proto
{
  protoCopy = proto;
  v4 = objc_alloc_init(SPProtoCacheSyncData);
  cacheIdentifier = [protoCopy cacheIdentifier];
  [(SPProtoCacheSyncData *)v4 setCacheIdentifier:cacheIdentifier];

  permanentCache = [protoCopy permanentCache];
  v7 = [SPAssetCacheAssets toProto:permanentCache];
  [(SPProtoCacheSyncData *)v4 setPermanentCache:v7];

  transientCache = [protoCopy transientCache];

  v9 = [SPAssetCacheAssets toProto:transientCache];
  [(SPProtoCacheSyncData *)v4 setTransientCache:v9];

  return v4;
}

+ (id)fromProto:(id)proto
{
  protoCopy = proto;
  v4 = objc_alloc_init(SPAssetCacheSyncData);
  cacheIdentifier = [protoCopy cacheIdentifier];
  [(SPAssetCacheSyncData *)v4 setCacheIdentifier:cacheIdentifier];

  permanentCache = [protoCopy permanentCache];
  v7 = [SPAssetCacheAssets fromProto:permanentCache];
  [(SPAssetCacheSyncData *)v4 setPermanentCache:v7];

  transientCache = [protoCopy transientCache];

  v9 = [SPAssetCacheAssets fromProto:transientCache];
  [(SPAssetCacheSyncData *)v4 setTransientCache:v9];

  return v4;
}

@end