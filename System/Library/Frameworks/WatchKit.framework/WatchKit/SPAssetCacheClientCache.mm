@interface SPAssetCacheClientCache
- (BOOL)addAsset:(id)asset withName:(id)name sendImage:(BOOL)image;
- (BOOL)checkAvailableSpaceForAssetWithName:(id)name length:(unint64_t)length;
- (BOOL)saveAssetData:(id)data forAsset:(id)asset;
- (SPAssetCacheClientCache)initWithIdentifier:(id)identifier cacheType:(unint64_t)type;
- (id)cacheDirectory;
- (id)cachedImages;
- (id)dataForImageWithName:(id)name;
- (id)pathForAssetDataWithName:(id)name;
- (void)addedAssetWithName:(id)name;
- (void)clearSpaceForAsset:(unint64_t)asset;
- (void)deleteAllAssets;
- (void)deleteAsset:(id)asset;
- (void)deleteAssetWithName:(id)name;
- (void)deleteDataForAsset:(id)asset;
- (void)deletedAssetWithName:(id)name;
- (void)syncAssets:(id)assets;
@end

@implementation SPAssetCacheClientCache

- (SPAssetCacheClientCache)initWithIdentifier:(id)identifier cacheType:(unint64_t)type
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = SPAssetCacheClientCache;
  v8 = [(SPAssetCacheClientCache *)&v14 init];
  if (v8)
  {
    array = [MEMORY[0x277CBEB18] array];
    keys = v8->_keys;
    v8->_keys = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    assets = v8->_assets;
    v8->_assets = dictionary;

    v8->_size = 0;
    v8->_cacheType = type;
    objc_storeStrong(&v8->_gizmoCacheIdentifier, identifier);
  }

  return v8;
}

- (id)cacheDirectory
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SPAssetCacheClientCache_cacheDirectory__block_invoke;
  block[3] = &unk_278B7E200;
  block[4] = self;
  if (cacheDirectory_onceDirectoryToken != -1)
  {
    dispatch_once(&cacheDirectory_onceDirectoryToken, block);
  }

  return cacheDirectory___cacheDirectory;
}

void __41__SPAssetCacheClientCache_cacheDirectory__block_invoke(uint64_t a1)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = NSHomeDirectory();
  v11[0] = v2;
  v11[1] = @"/Library/Caches/";
  v11[2] = @"com.apple.watchkit.imagecache";
  v11[3] = *(*(a1 + 32) + 8);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];

  v4 = [MEMORY[0x277CCACA8] pathWithComponents:v3];
  v5 = cacheDirectory___cacheDirectory;
  cacheDirectory___cacheDirectory = v4;

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  [v6 createDirectoryAtPath:cacheDirectory___cacheDirectory withIntermediateDirectories:1 attributes:0 error:&v10];
  v7 = v10;

  if (v7)
  {
    v8 = wk_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __41__SPAssetCacheClientCache_cacheDirectory__block_invoke_cold_1(v7, v8);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)pathForAssetDataWithName:(id)name
{
  v11[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  cacheDirectory = [(SPAssetCacheClientCache *)self cacheDirectory];
  v11[0] = cacheDirectory;
  _sp_stringByEncodingIllegalFilenameCharacters = [nameCopy _sp_stringByEncodingIllegalFilenameCharacters];

  v11[1] = _sp_stringByEncodingIllegalFilenameCharacters;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  v8 = [MEMORY[0x277CCACA8] pathWithComponents:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)syncAssets:(id)assets
{
  v44 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  [(SPAssetCacheClientCache *)self clearedCache];
  cacheType = self->_cacheType;
  if (cacheType == 2)
  {
    transientCache = [assetsCopy transientCache];
    assets = [transientCache assets];

    if (assets)
    {
      transientCache2 = [assetsCopy transientCache];
      assets2 = [transientCache2 assets];
      v23 = [assets2 sortedArrayUsingComparator:&__block_literal_global_9];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      assets4 = v23;
      v24 = [assets4 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v35;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v35 != v26)
            {
              objc_enumerationMutation(assets4);
            }

            v28 = *(*(&v34 + 1) + 8 * i);
            assets = self->_assets;
            v30 = [v28 key];
            [(NSMutableDictionary *)assets setObject:v28 forKey:v30];

            keys = self->_keys;
            v32 = [v28 key];
            [(NSMutableArray *)keys addObject:v32];

            self->_size += [v28 size];
          }

          v25 = [assets4 countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v25);
      }

      goto LABEL_21;
    }
  }

  else if (cacheType == 1)
  {
    permanentCache = [assetsCopy permanentCache];
    assets3 = [permanentCache assets];

    if (assets3)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      permanentCache2 = [assetsCopy permanentCache];
      assets4 = [permanentCache2 assets];

      v10 = [assets4 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v39;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v39 != v12)
            {
              objc_enumerationMutation(assets4);
            }

            v14 = *(*(&v38 + 1) + 8 * j);
            v15 = self->_assets;
            v16 = [v14 key];
            [(NSMutableDictionary *)v15 setObject:v14 forKey:v16];

            v17 = self->_keys;
            v18 = [v14 key];
            [(NSMutableArray *)v17 addObject:v18];

            self->_size += [v14 size];
          }

          v11 = [assets4 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v11);
      }

LABEL_21:
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

BOOL __38__SPAssetCacheClientCache_syncAssets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 accessDate];
  v6 = v5;
  [v4 accessDate];
  v8 = v7;

  return v6 > v8;
}

- (BOOL)addAsset:(id)asset withName:(id)name sendImage:(BOOL)image
{
  imageCopy = image;
  v30[5] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  nameCopy = name;
  if (!assetCopy)
  {
    v21 = wk_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SPAssetCacheClientCache addAsset:withName:sendImage:];
    }

    goto LABEL_14;
  }

  if (self->_cacheType != 1)
  {
    v22 = [(NSMutableDictionary *)self->_assets objectForKeyedSubscript:nameCopy];

    if (v22)
    {
      v20 = 1;
    }

    else
    {
      -[SPAssetCacheClientCache clearSpaceForAsset:](self, "clearSpaceForAsset:", [assetCopy length]);
      [(NSMutableArray *)self->_keys addObject:nameCopy];
      v23 = [SPCacheAsset alloc];
      v24 = [assetCopy length];
      date = [MEMORY[0x277CBEAA8] date];
      v20 = 1;
      v26 = [(SPCacheAsset *)v23 initWithName:nameCopy size:v24 state:1 accessDate:date];
      [(NSMutableDictionary *)self->_assets setObject:v26 forKeyedSubscript:nameCopy];
    }

    goto LABEL_20;
  }

  if (!-[SPAssetCacheClientCache checkAvailableSpaceForAssetWithName:length:](self, "checkAvailableSpaceForAssetWithName:length:", nameCopy, [assetCopy length]))
  {
LABEL_14:
    v20 = 0;
    goto LABEL_20;
  }

  v10 = [SPCacheAsset alloc];
  v11 = [assetCopy length];
  date2 = [MEMORY[0x277CBEAA8] date];
  v13 = [(SPCacheAsset *)v10 initWithName:nameCopy size:v11 state:1 accessDate:date2];

  if (imageCopy && ![(SPAssetCacheClientCache *)self saveAssetData:assetCopy forAsset:v13])
  {
    v20 = 0;
  }

  else
  {
    v14 = [(NSMutableDictionary *)self->_assets objectForKeyedSubscript:nameCopy];

    if (!v14)
    {
      [(NSMutableArray *)self->_keys addObject:nameCopy];
    }

    [(NSMutableDictionary *)self->_assets setObject:v13 forKeyedSubscript:nameCopy];
    if (imageCopy)
    {
      v30[0] = &unk_284E0A1C0;
      v29[0] = @"cmsg";
      v29[1] = @"a";
      v15 = [(SPCacheAsset *)v13 key];
      v30[1] = v15;
      v30[2] = assetCopy;
      v29[2] = @"d";
      v29[3] = @"t";
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_cacheType];
      v29[4] = @"i";
      gizmoCacheIdentifier = self->_gizmoCacheIdentifier;
      v30[3] = v16;
      v30[4] = gizmoCacheIdentifier;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:5];

      v19 = [[SPCacheMessage alloc] initWithDictionary:v18];
      [SPRemoteInterface sendCacheRequestMessage:v19];
    }

    v20 = 1;
  }

LABEL_20:
  v27 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)addedAssetWithName:(id)name
{
  v4 = [(NSMutableDictionary *)self->_assets objectForKeyedSubscript:name];
  if (v4)
  {
    v5 = v4;
    [v4 setState:0];
    [(SPAssetCacheClientCache *)self deleteDataForAsset:v5];
    v4 = v5;
  }
}

- (void)clearSpaceForAsset:(unint64_t)asset
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = self->_size + asset;
  if (v4 >= 0x500000)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = self->_keys;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v15;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [(NSMutableDictionary *)self->_assets objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v11), v14];
        [(SPAssetCacheClientCache *)self deleteAsset:v12];
        v9 += [v12 size];

        if (v9 >= asset)
        {
          break;
        }

        if (v8 == ++v11)
        {
          v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v4 = self->_size + asset;
  }

  self->_size = v4;
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkAvailableSpaceForAssetWithName:(id)name length:(unint64_t)length
{
  v6 = [(NSMutableDictionary *)self->_assets objectForKeyedSubscript:name];
  v7 = v6;
  if (v6)
  {
    length -= [v6 size];
  }

  v8 = self->_size + length;
  if (v8 >> 20 <= 4)
  {
    self->_size = v8;
  }

  v9 = v8 < 0x500000;

  return v9;
}

- (void)deleteAsset:(id)asset
{
  v13[4] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v5 = [assetCopy size];
  self->_size = (self->_size - v5) & ~((self->_size - v5) >> 63);
  [(SPAssetCacheClientCache *)self deleteDataForAsset:assetCopy];
  [assetCopy setState:2];
  v13[0] = &unk_284E0A1D8;
  v12[0] = @"cmsg";
  v12[1] = @"a";
  v6 = [assetCopy key];

  v13[1] = v6;
  v12[2] = @"t";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_cacheType];
  v12[3] = @"i";
  gizmoCacheIdentifier = self->_gizmoCacheIdentifier;
  v13[2] = v7;
  v13[3] = gizmoCacheIdentifier;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  v10 = [[SPCacheMessage alloc] initWithDictionary:v9];
  [SPRemoteInterface sendCacheRequestMessage:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deleteAssetWithName:(id)name
{
  v4 = [(NSMutableDictionary *)self->_assets objectForKeyedSubscript:name];
  if (v4)
  {
    [(SPAssetCacheClientCache *)self deleteAsset:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (void)deletedAssetWithName:(id)name
{
  nameCopy = name;
  v4 = [(NSMutableDictionary *)self->_assets objectForKeyedSubscript:?];
  if (v4)
  {
    [(NSMutableDictionary *)self->_assets removeObjectForKey:nameCopy];
    [(NSMutableArray *)self->_keys removeObject:nameCopy];
  }
}

- (void)deleteAllAssets
{
  v21 = *MEMORY[0x277D85DE8];
  self->_size = 0;
  if (self->_cacheType == 1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = self->_assets;
    v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        v7 = 0;
        do
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [(NSMutableDictionary *)self->_assets objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v7), v14];
          [(SPAssetCacheClientCache *)self deleteDataForAsset:v8];

          ++v7;
        }

        while (v5 != v7);
        v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v5);
    }
  }

  [(NSMutableDictionary *)self->_assets removeAllObjects];
  [(NSMutableArray *)self->_keys removeAllObjects];
  v19[0] = &unk_284E0A1F0;
  v18[0] = @"cmsg";
  v18[1] = @"t";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_cacheType];
  v18[2] = @"i";
  gizmoCacheIdentifier = self->_gizmoCacheIdentifier;
  v19[1] = v9;
  v19[2] = gizmoCacheIdentifier;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

  v12 = [[SPCacheMessage alloc] initWithDictionary:v11];
  [SPRemoteInterface sendCacheRequestMessage:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)cachedImages
{
  v19 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_assets;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        v10 = [(NSMutableDictionary *)self->_assets objectForKeyedSubscript:v9, v14];
        if ([v10 state] == 1 || !objc_msgSend(v10, "state"))
        {
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "size")}];
          [dictionary setObject:v11 forKey:v9];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (BOOL)saveAssetData:(id)data forAsset:(id)asset
{
  dataCopy = data;
  v7 = [asset key];
  v8 = [(SPAssetCacheClientCache *)self pathForAssetDataWithName:v7];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(v7) = [defaultManager fileExistsAtPath:v8];

  if (v7)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = 0;
    v11 = [defaultManager2 removeItemAtPath:v8 error:&v18];
    v12 = v18;

    if ((v11 & 1) == 0)
    {
      v13 = wk_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SPAssetCacheClientCache saveAssetData:forAsset:];
      }

LABEL_9:

      v15 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = v12;
  v17 = v12;
  v15 = 1;
  [dataCopy writeToFile:v8 options:1 error:&v17];
  v12 = v17;

  if (v12)
  {
    v13 = wk_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SPAssetCacheClientCache saveAssetData:forAsset:];
    }

    goto LABEL_9;
  }

LABEL_10:

  return v15;
}

- (void)deleteDataForAsset:(id)asset
{
  if (asset)
  {
    v4 = [asset key];
    v5 = [(SPAssetCacheClientCache *)self pathForAssetDataWithName:v4];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [defaultManager fileExistsAtPath:v5];

    if (v7)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v12 = 0;
      v9 = [defaultManager2 removeItemAtPath:v5 error:&v12];
      v10 = v12;

      if ((v9 & 1) == 0)
      {
        v11 = wk_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [SPAssetCacheClientCache deleteDataForAsset:];
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }
}

- (id)dataForImageWithName:(id)name
{
  v4 = [(NSMutableDictionary *)self->_assets objectForKeyedSubscript:name];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CBEA90];
    v7 = [v4 key];
    v8 = [(SPAssetCacheClientCache *)self pathForAssetDataWithName:v7];
    v9 = [v6 dataWithContentsOfFile:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __41__SPAssetCacheClientCache_cacheDirectory__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 136446978;
  v4 = "[SPAssetCacheClientCache cacheDirectory]_block_invoke";
  v5 = 1024;
  v6 = 60;
  v7 = 2114;
  v8 = cacheDirectory___cacheDirectory;
  v9 = 2114;
  v10 = a1;
  _os_log_error_impl(&dword_23B338000, a2, OS_LOG_TYPE_ERROR, "%{public}s:%d: failed to create directory at %{public}@, error: %{public}@", &v3, 0x26u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)addAsset:withName:sendImage:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136446722;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_23B338000, v0, OS_LOG_TYPE_ERROR, "%{public}s:%d: Failed to cache image with name: %{public}@", v2, 0x1Cu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)saveAssetData:forAsset:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: failed to delete asset at: %{public}@, error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)saveAssetData:forAsset:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: failed to save asset at: %{public}@, error: %{public}@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)deleteDataForAsset:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: failed to delete asset at: %{public}@, error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end