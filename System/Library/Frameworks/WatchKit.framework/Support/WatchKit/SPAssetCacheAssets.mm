@interface SPAssetCacheAssets
+ (id)fromProto:(id)proto;
+ (id)toProto:(id)proto;
- (SPAssetCacheAssets)init;
@end

@implementation SPAssetCacheAssets

- (SPAssetCacheAssets)init
{
  v6.receiver = self;
  v6.super_class = SPAssetCacheAssets;
  v2 = [(SPAssetCacheAssets *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    assets = v2->_assets;
    v2->_assets = v3;
  }

  return v2;
}

+ (id)toProto:(id)proto
{
  protoCopy = proto;
  v4 = objc_alloc_init(SPProtoCacheAssets);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  assets = [protoCopy assets];
  v6 = [assets countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(assets);
        }

        v10 = [SPCacheAsset toProto:*(*(&v12 + 1) + 8 * i)];
        [(SPProtoCacheAssets *)v4 addAssets:v10];
      }

      v7 = [assets countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)fromProto:(id)proto
{
  protoCopy = proto;
  v4 = objc_alloc_init(SPAssetCacheAssets);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  assets = [protoCopy assets];
  v6 = [assets countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(assets);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        assets2 = [(SPAssetCacheAssets *)v4 assets];
        v12 = [SPCacheAsset fromProto:v10];
        [assets2 addObject:v12];
      }

      v7 = [assets countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end