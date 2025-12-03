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
    array = [MEMORY[0x277CBEB18] array];
    assets = v2->_assets;
    v2->_assets = array;
  }

  return v2;
}

+ (id)toProto:(id)proto
{
  v18 = *MEMORY[0x277D85DE8];
  protoCopy = proto;
  v4 = objc_alloc_init(SPProtoCacheAssets);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  assets = [protoCopy assets];
  v6 = [assets countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(assets);
        }

        v10 = [SPCacheAsset toProto:*(*(&v13 + 1) + 8 * i)];
        [(SPProtoCacheAssets *)v4 addAssets:v10];
      }

      v7 = [assets countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)fromProto:(id)proto
{
  v20 = *MEMORY[0x277D85DE8];
  protoCopy = proto;
  v4 = objc_alloc_init(SPAssetCacheAssets);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  assets = [protoCopy assets];
  v6 = [assets countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(assets);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        assets2 = [(SPAssetCacheAssets *)v4 assets];
        v12 = [SPCacheAsset fromProto:v10];
        [assets2 addObject:v12];
      }

      v7 = [assets countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

@end