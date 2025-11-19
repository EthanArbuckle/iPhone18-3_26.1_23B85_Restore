@interface ATAssetManager
+ (id)sharedInstance;
- (ATAssetManager)init;
- (BOOL)dataclassIsEmpty:(id)a3;
- (id)_assetForDataclass:(id)a3 withIdentifier:(id)a4;
- (id)assetForDataclass:(id)a3 identifier:(id)a4;
- (id)assetForStoreID:(int64_t)a3;
- (id)assetProgressForAllDataclasses;
- (id)assets;
- (id)assetsForDataclasses:(id)a3;
- (id)bypassedRestoresForDataclass:(id)a3;
- (id)legacyAssetsForDataClass:(id)a3;
- (id)restoreAssetsForDataclass:(id)a3;
- (id)restoreAssetsForDataclasses:(id)a3;
- (id)storeAssetsForDataclass:(id)a3;
- (unint64_t)completedAssetCountForDataClasses:(id)a3;
- (unint64_t)currentAssetForDataclass:(id)a3;
- (unint64_t)remainingRestoreAssetCountForDataClasses:(id)a3;
- (unint64_t)remainingSyncAssetCountForDataClasses:(id)a3;
- (unint64_t)totalAssetCountForDataClasses:(id)a3;
- (unint64_t)totalAssetCountForDataclass:(id)a3;
- (void)_addAssets:(id)a3 forDataClass:(id)a4;
- (void)_dumpStatusInformation;
- (void)_finishAsset:(id)a3 forDataClass:(id)a4;
- (void)_finishDataClassIfDone:(id)a3;
- (void)_loadAssetClients;
- (void)_updateAsset:(id)a3 withProgress:(float)a4;
- (void)addObserver:(id)a3;
- (void)cancelAssetForDataClass:(id)a3 withIdentifier:(id)a4;
- (void)dealloc;
- (void)enqueueLegacyAssetsForDataClass:(id)a3;
- (void)mapStoreIDToAsset:(id)a3;
- (void)prioritizeAssetForDataClass:(id)a3 withIdentifier:(id)a4;
- (void)removeObserver:(id)a3;
- (void)reset;
@end

@implementation ATAssetManager

- (BOOL)dataclassIsEmpty:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(v12, 0, sizeof(v12));
  v5 = self->_completedStoreAssets;
  if ([(NSMutableArray *)v5 countByEnumeratingWithState:v12 objects:v13 count:16])
  {
    v6 = [**(&v12[0] + 1) dataclass];
    v7 = [v6 isEqualToString:v4];

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(NSMutableDictionary *)self->_assetsByDataclass objectForKey:v4];
  v10 = [v9 count] == 0;

  return v10 & v8;
}

- (unint64_t)completedAssetCountForDataClasses:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ATAssetManager *)self totalAssetCountForDataClasses:v4];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_remainingAssetsByDataClass objectForKey:*(*(&v13 + 1) + 8 * v10), v13];
        v5 -= [v11 count];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (unint64_t)totalAssetCountForDataClasses:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(NSMutableDictionary *)self->_totalAssetCountByDataClass objectForKey:*(*(&v12 + 1) + 8 * i)];
        v7 += [v10 unsignedIntegerValue];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)remainingRestoreAssetCountForDataClasses:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v11 = [(NSMutableDictionary *)self->_remainingAssetsByDataClass objectForKey:v10, 0];
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v18;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v18 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v7 += [*(*(&v17 + 1) + 8 * j) isRestore];
            }

            v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v13);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)remainingSyncAssetCountForDataClasses:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0x277CBE000uLL;
    v8 = @"File";
    v9 = *v31;
    do
    {
      v10 = 0;
      v24 = v5;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        v12 = [*(v7 + 2656) arrayWithObjects:{@"Photo", @"MessagePart", @"Book", @"VoiceMemo", v8, 0}];
        v13 = [v12 containsObject:v11];

        if (v13)
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v14 = [(NSMutableDictionary *)self->_remainingAssetsByDataClass objectForKey:v11];
          v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = v9;
            v18 = self;
            v19 = v8;
            v20 = v7;
            v21 = *v27;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v27 != v21)
                {
                  objc_enumerationMutation(v14);
                }

                v6 += [*(*(&v26 + 1) + 8 * i) isRestore] ^ 1;
              }

              v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v16);
            v7 = v20;
            v8 = v19;
            self = v18;
            v9 = v17;
            v5 = v24;
          }
        }

        else
        {
          v14 = [(NSMutableDictionary *)self->_remainingAssetsByDataClass objectForKey:v11];
          v6 += [v14 count];
        }

        ++v10;
      }

      while (v10 != v5);
      v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)restoreAssetsForDataclasses:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(ATAssetManager *)self restoreAssetsForDataclass:*(*(&v13 + 1) + 8 * i), v13];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)assetsForDataclasses:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_assetsByDataclass objectForKey:*(*(&v13 + 1) + 8 * i), v13];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)bypassedRestoresForDataclass:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  if ([v4 isEqualToString:@"Media"])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(NSMutableDictionary *)self->_assetsByDataclass objectForKey:v4, 0];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 isRestore])
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (id)restoreAssetsForDataclass:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableDictionary *)self->_remainingAssetsByDataClass objectForKey:v4, 0];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 isRestore])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)storeAssetsForDataclass:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"Application", @"Book", @"Media", 0}];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(NSMutableDictionary *)self->_assetsByDataclass objectForKey:v4];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([v13 isDownload] && (!objc_msgSend(v13, "bypassStore") || objc_msgSend(v13, "isRestore") && objc_msgSend(v4, "isEqualToString:", @"Media")))
          {
            [v5 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  return v5;
}

- (id)assets
{
  v2 = [(NSMutableArray *)self->_assets mutableCopy];

  return v2;
}

- (id)assetForDataclass:(id)a3 identifier:(id)a4
{
  assetsByDataclass = self->_assetsByDataclass;
  v6 = a4;
  v7 = [(NSMutableDictionary *)assetsByDataclass objectForKey:a3];
  v8 = [v7 assetForIdentifier:v6];

  return v8;
}

- (id)assetForStoreID:(int64_t)a3
{
  assetsByStoreID = self->_assetsByStoreID;
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v5 = [(NSMutableDictionary *)assetsByStoreID objectForKey:v4];

  return v5;
}

- (void)mapStoreIDToAsset:(id)a3
{
  assetsByStoreID = self->_assetsByStoreID;
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithLongLong:{objc_msgSend(v5, "storePID")}];
  [(NSMutableDictionary *)assetsByStoreID setObject:v5 forKey:v6];
}

- (unint64_t)currentAssetForDataclass:(id)a3
{
  v4 = a3;
  v5 = [(ATAssetManager *)self totalAssetCountForDataclass:v4];
  v6 = [(NSMutableDictionary *)self->_remainingAssetsByDataClass objectForKey:v4];

  v7 = v5 - [v6 count];
  return v7 + 1;
}

- (unint64_t)totalAssetCountForDataclass:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_totalAssetCountByDataClass objectForKey:a3];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (void)_dumpStatusInformation
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    assets = self->_assets;
    completedStoreAssets = self->_completedStoreAssets;
    v6 = 138543618;
    v7 = assets;
    v8 = 2114;
    v9 = completedStoreAssets;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_INFO, "SIGUSR1 (assets): %{public}@\n (completed store):%{public}@", &v6, 0x16u);
  }
}

- (id)_assetForDataclass:(id)a3 withIdentifier:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [(NSMutableDictionary *)self->_remainingAssetsByDataClass objectForKey:a3];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 identifier];
        v13 = [v12 isEqualToString:v6];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)_updateAsset:(id)a3 withProgress:(float)a4
{
  v6 = a3;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__ATAssetManager__updateAsset_withProgress___block_invoke;
  v11[3] = &unk_2784E48F8;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v15 = a4;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, v11);
}

void __44__ATAssetManager__updateAsset_withProgress___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          LODWORD(v8) = *(a1 + 56);
          [v7 assetManager:*(a1 + 40) didUpdateAsset:*(a1 + 48) withProgress:{v8, v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_finishDataClassIfDone:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->_allAssets count])
  {
    if ([(NSMutableSet *)self->_allAssets count]<= 5)
    {
      v4 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        allAssets = self->_allAssets;
        v6 = 138543362;
        v7 = allAssets;
        _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "remaining assets: %{public}@", &v6, 0xCu);
      }
    }
  }

  else
  {

    [(ATAssetManager *)self reset];
  }
}

- (void)_finishAsset:(id)a3 forDataClass:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v25 = [(ATAssetManager *)self currentAssetForDataclass:v7];
    v26 = 2048;
    v27 = [(ATAssetManager *)self totalAssetCountForDataclass:v7];
    v28 = 2114;
    v29 = v7;
    _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "finished asset %lu/%lu for %{public}@", buf, 0x20u);
  }

  v9 = [MEMORY[0x277CE53F0] sharedInstance];
  v23 = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  [v9 installCompleteForAssets:v10];

  v11 = [(NSMutableDictionary *)self->_remainingAssetsByDataClass objectForKey:v7];
  [v11 removeObject:v6];
  [(NSMutableSet *)self->_allAssets removeObject:v6];
  v12 = [(NSHashTable *)self->_observers copy];
  v13 = dispatch_get_global_queue(0, 0);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __44__ATAssetManager__finishAsset_forDataClass___block_invoke;
  v19 = &unk_2784E59B0;
  v20 = v12;
  v21 = self;
  v22 = v6;
  v14 = v6;
  v15 = v12;
  dispatch_async(v13, &v16);

  [(ATAssetManager *)self _finishDataClassIfDone:v7, v16, v17, v18, v19];
}

void __44__ATAssetManager__finishAsset_forDataClass___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 assetManager:*(a1 + 40) didFinishAsset:{*(a1 + 48), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_addAssets:(id)a3 forDataClass:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_remainingAssetsByDataClass objectForKey:v7];
  if (v8)
  {
    v9 = v8;
    [v8 addObjectsFromArray:v6];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB58] setWithArray:v6];
    [(NSMutableDictionary *)self->_remainingAssetsByDataClass setObject:v9 forKey:v7];
  }

  [(NSMutableSet *)self->_allAssets addObjectsFromArray:v6];
  v10 = [(NSMutableDictionary *)self->_totalAssetCountByDataClass objectForKey:v7];
  v11 = [v10 integerValue];
  v12 = [v6 count];
  totalAssetCountByDataClass = self->_totalAssetCountByDataClass;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12 + v11];
  [(NSMutableDictionary *)totalAssetCountByDataClass setObject:v14 forKey:v7];

  v15 = [(NSHashTable *)self->_observers copy];
  v16 = dispatch_get_global_queue(0, 0);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42__ATAssetManager__addAssets_forDataClass___block_invoke;
  v18[3] = &unk_2784E5960;
  v19 = v15;
  v20 = self;
  v17 = v15;
  dispatch_async(v16, v18);
}

void __42__ATAssetManager__addAssets_forDataClass___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 assetManagerDidUpdate:{*(a1 + 40), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_loadAssetClients
{
  v19 = *MEMORY[0x277D85DE8];
  if (!self->_legacyAssetClients)
  {
    v2 = [MEMORY[0x277CBEB38] dictionary];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = +[ATClientController sharedInstance];
    v4 = [v3 allClients];

    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
          {
            v10 = [v9 supportedDataclasses];
            v11 = [v10 objectAtIndex:0];

            [(NSDictionary *)v2 setObject:v9 forKey:v11];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    legacyAssetClients = self->_legacyAssetClients;
    self->_legacyAssetClients = v2;
  }
}

- (id)assetProgressForAllDataclasses
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_totalAssetCountByDataClass, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_totalAssetCountByDataClass;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_assetsByDataclass objectForKey:v9];
        v11 = [v10 count];

        if (v11)
        {
          v12 = MEMORY[0x277CBEAC0];
          v13 = [(NSMutableDictionary *)self->_totalAssetCountByDataClass objectForKey:v9];
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[ATAssetManager currentAssetForDataclass:](self, "currentAssetForDataclass:", v9)}];
          v15 = [v12 dictionaryWithObjectsAndKeys:{v13, @"AssetCount", v14, @"CurrentAssetNum", 0, v17}];
          [v3 setObject:v15 forKey:v9];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__ATAssetManager_removeObserver___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__ATAssetManager_addObserver___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)cancelAssetForDataClass:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ATAssetManager_cancelAssetForDataClass_withIdentifier___block_invoke;
  block[3] = &unk_2784E59B0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __57__ATAssetManager_cancelAssetForDataClass_withIdentifier___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _assetForDataclass:*(a1 + 40) withIdentifier:*(a1 + 48)];
  if (v1)
  {
    v2 = [MEMORY[0x277CE53F0] sharedInstance];
    v5[0] = v1;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
    [v2 cancelAssets:v3 withCompletion:0];
  }

  else
  {
    v2 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_INFO, "not cancel asset because we couldn't find it", v4, 2u);
    }
  }
}

- (void)prioritizeAssetForDataClass:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ATAssetManager_prioritizeAssetForDataClass_withIdentifier___block_invoke;
  block[3] = &unk_2784E59B0;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __61__ATAssetManager_prioritizeAssetForDataClass_withIdentifier___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "prioritizing asset %{public}@:%{public}@", &v8, 0x16u);
  }

  v5 = [*(a1 + 48) _assetForDataclass:*(a1 + 32) withIdentifier:*(a1 + 40)];
  if (v5)
  {
    v6 = [MEMORY[0x277CE53F0] sharedInstance];
    [v6 prioritizeAsset:v5];

    v7 = [*(*(a1 + 48) + 24) objectForKey:*(a1 + 32)];
    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v7 prioritizeAsset:*(a1 + 40)];
    }
  }

  else
  {
    v7 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_INFO, "not prioritzing asset because we couldn't find it", &v8, 2u);
    }
  }
}

- (void)enqueueLegacyAssetsForDataClass:(id)a3
{
  v4 = a3;
  v5 = [(ATAssetManager *)self legacyAssetsForDataClass:v4];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ATAssetManager_enqueueLegacyAssetsForDataClass___block_invoke;
  block[3] = &unk_2784E59B0;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_sync(queue, block);
}

void __50__ATAssetManager_enqueueLegacyAssetsForDataClass___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) count];
      v4 = *(a1 + 48);
      *buf = 134218242;
      v35 = v3;
      v36 = 2114;
      v37 = v4;
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "Got %lu assets from %{public}@", buf, 0x16u);
    }

    v5 = [MEMORY[0x277CEA430] sharedInstance];
    v33 = *(a1 + 48);
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [v5 createAirlockForDataclasses:v6];

    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = *(a1 + 32);
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          if (([*(*(a1 + 40) + 32) containsObject:v13] & 1) == 0)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      [*(a1 + 40) _addAssets:v7 forDataClass:*(a1 + 48)];
      v14 = +[ATClientController sharedInstance];
      v15 = [v14 clientForDataclass:*(a1 + 48)];

      v16 = [MEMORY[0x277CE53F0] sharedInstance];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __50__ATAssetManager_enqueueLegacyAssetsForDataClass___block_invoke_15;
      v26[3] = &unk_2784E4F60;
      v27 = v15;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __50__ATAssetManager_enqueueLegacyAssetsForDataClass___block_invoke_3;
      v22[3] = &unk_2784E48D0;
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      v23 = v27;
      v24 = v17;
      v25 = v18;
      v19 = v27;
      [v16 enqueueAssets:v7 progress:v26 completion:v22];
    }
  }

  else
  {
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);

    [v20 _finishDataClassIfDone:v21];
  }
}

void __50__ATAssetManager_enqueueLegacyAssetsForDataClass___block_invoke_15(uint64_t a1, void *a2, float a3)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__ATAssetManager_enqueueLegacyAssetsForDataClass___block_invoke_2;
    v7[3] = &unk_2784E5848;
    v8 = v6;
    v9 = v5;
    v10 = a3;
    dispatch_client_async(v8, v7);
  }
}

void __50__ATAssetManager_enqueueLegacyAssetsForDataClass___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__ATAssetManager_enqueueLegacyAssetsForDataClass___block_invoke_4;
    v8[3] = &unk_2784E5100;
    v9 = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10 = v5;
    v11 = v6;
    v12 = v7;
    dispatch_client_async(v4, v8);
  }

  else
  {
    [*(a1 + 40) _finishAsset:v3 forDataClass:*(a1 + 48)];
  }
}

void __50__ATAssetManager_enqueueLegacyAssetsForDataClass___block_invoke_4(uint64_t a1)
{
  if (![*(a1 + 32) installStarted])
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [v4 error];
    v6 = [*(a1 + 32) error];
    [v3 assetTransfer:v4 succeeded:v5 == 0 withError:v6];

LABEL_10:
    goto LABEL_11;
  }

  v2 = [*(a1 + 32) error];
  if (v2)
  {
  }

  else if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) assetInstallSucceeded:*(a1 + 32)];
    goto LABEL_11;
  }

  v7 = [*(a1 + 32) error];
  if (v7)
  {
    v8 = v7;
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v5 = [v11 error];
      [v10 assetInstallFailed:v11 withError:v5];
      goto LABEL_10;
    }
  }

LABEL_11:
  v12 = *(a1 + 48);
  v13 = *(v12 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ATAssetManager_enqueueLegacyAssetsForDataClass___block_invoke_5;
  block[3] = &unk_2784E59B0;
  block[4] = v12;
  v15 = *(a1 + 32);
  v16 = *(a1 + 56);
  dispatch_async(v13, block);
}

- (id)legacyAssetsForDataClass:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__979;
  v16 = __Block_byref_object_dispose__980;
  v17 = 0;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__ATAssetManager_legacyAssetsForDataClass___block_invoke;
  v9[3] = &unk_2784E5008;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __43__ATAssetManager_legacyAssetsForDataClass___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[ATClientController sharedInstance];
  v3 = [v2 clientForDataclass:*(a1 + 32)];
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 outstandingAssetTransfersWithDownloadManager:0];
LABEL_9:
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v4;

      goto LABEL_10;
    }

    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 outstandingAssetTransfers];
      goto LABEL_9;
    }
  }

  else
  {
    v5 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_ERROR, "No ATClient for asset dataClass %{public}@", &v9, 0xCu);
    }
  }

LABEL_10:
}

- (void)reset
{
  v3 = [MEMORY[0x277CBEB58] set];
  allAssets = self->_allAssets;
  self->_allAssets = v3;

  v5 = [MEMORY[0x277CBEB38] dictionary];
  remainingAssetsByDataClass = self->_remainingAssetsByDataClass;
  self->_remainingAssetsByDataClass = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  totalAssetCountByDataClass = self->_totalAssetCountByDataClass;
  self->_totalAssetCountByDataClass = v7;

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  assets = self->_assets;
  self->_assets = v9;

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  assetsByDataclass = self->_assetsByDataclass;
  self->_assetsByDataclass = v11;

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  assetsByStoreID = self->_assetsByStoreID;
  self->_assetsByStoreID = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  completedStoreAssets = self->_completedStoreAssets;
  self->_completedStoreAssets = v15;

  self->_completedAssets = 0;
  self->_totalAssetCount = 0;
}

- (void)dealloc
{
  dispatch_source_cancel(self->_signalSource);
  v3.receiver = self;
  v3.super_class = ATAssetManager;
  [(ATAssetManager *)&v3 dealloc];
}

- (ATAssetManager)init
{
  v18.receiver = self;
  v18.super_class = ATAssetManager;
  v2 = [(ATAssetManager *)&v18 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = dispatch_queue_create(Name, 0);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v8 = *(v2 + 7);
    *(v2 + 7) = v7;

    [v2 _loadAssetClients];
    [v2 reset];
    v9 = [MEMORY[0x277CE53F0] sharedInstance];
    [v9 addObserver:v2];

    v10 = dispatch_get_global_queue(0, 0);
    v11 = dispatch_source_create(MEMORY[0x277D85D30], 0x1EuLL, 0, v10);
    v12 = *(v2 + 14);
    *(v2 + 14) = v11;

    objc_initWeak(&location, v2);
    v13 = *(v2 + 14);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __22__ATAssetManager_init__block_invoke;
    v15[3] = &unk_2784E54D0;
    objc_copyWeak(&v16, &location);
    dispatch_source_set_event_handler(v13, v15);
    dispatch_resume(*(v2 + 14));
    signal(30, 1);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __22__ATAssetManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dumpStatusInformation];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_988);
  }

  v3 = sharedInstance___sharedAssetManager;

  return v3;
}

uint64_t __32__ATAssetManager_sharedInstance__block_invoke()
{
  sharedInstance___sharedAssetManager = objc_alloc_init(ATAssetManager);

  return MEMORY[0x2821F96F8]();
}

@end