@interface SPAssetCacheAssets
+ (id)fromProto:(id)a3;
+ (id)toProto:(id)a3;
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
    v3 = [MEMORY[0x277CBEB18] array];
    assets = v2->_assets;
    v2->_assets = v3;
  }

  return v2;
}

+ (id)toProto:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(SPProtoCacheAssets);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 assets];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [SPCacheAsset toProto:*(*(&v13 + 1) + 8 * i)];
        [(SPProtoCacheAssets *)v4 addAssets:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)fromProto:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(SPAssetCacheAssets);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v3 assets];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(SPAssetCacheAssets *)v4 assets];
        v12 = [SPCacheAsset fromProto:v10];
        [v11 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

@end