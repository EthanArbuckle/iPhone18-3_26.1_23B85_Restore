@interface AXSDDetectorStore
+ (id)sharedInstance;
- (AXSDDetectorStore)init;
- (BOOL)_areKShotDetectorsReady;
- (BOOL)_areStandardDetectorsReady;
- (BOOL)areDetectorsReady;
- (BOOL)isAssetCatalogInstalled;
- (NSString)description;
- (id)_addDetectorForAXAsset:(id)a3;
- (id)_detectorWithIdentifier:(id)a3;
- (id)_detectorWithName:(id)a3;
- (id)_detectorsNeedingUpgrade;
- (id)allDetectors;
- (id)allDetectorsByIdentifier;
- (id)customDetectors;
- (id)detectorWithAssetID:(id)a3;
- (id)detectorWithIdentifier:(id)a3;
- (id)detectorWithName:(id)a3;
- (id)detectorsByIdentifier;
- (id)enabledDetectors;
- (id)installedDetectors;
- (id)localizedNamesByIdentifier;
- (id)supportedDetectors;
- (id)unInstalledDetectors;
- (int64_t)totalDownloadSize;
- (int64_t)totalUnarchivedFileSize;
- (unint64_t)numberOfObservers;
- (void)_createSDDetectors;
- (void)_downloadAssetsFromDetectors:(id)a3;
- (void)_enumerateObserversWithBlock:(id)a3;
- (void)_notifyObserversAvailableDetectorsDidUpdate:(id)a3;
- (void)_notifyObserversDetectorsAreReady;
- (void)_notifyObserversDetectorsDownloadProgress:(int64_t)a3 totalSizeExpected:(int64_t)a4 remainingTimeExpected:(double)a5 isStalled:(BOOL)a6;
- (void)_notifyObserversDetectorsNeedUpdate:(id)a3 toDetectors:(id)a4;
- (void)_notifyObserversDidFinishPurgingDetectors:(id)a3 wasSuccessful:(BOOL)a4 error:(id)a5;
- (void)_notifyObserversDidFinishRefreshingDetectors:(id)a3 wasSuccessful:(BOOL)a4 error:(id)a5;
- (void)_purgeAssetsFromDetectors:(id)a3;
- (void)_reloadCustomDetectors;
- (void)_removeCustomDetectors;
- (void)addObserver:(id)a3;
- (void)disableDetector:(id)a3;
- (void)disableDetectorWithIdentifier:(id)a3;
- (void)downloadDetectors;
- (void)enableDetector:(id)a3;
- (void)enableDetectorWithIdentifier:(id)a3;
- (void)loadDetectors;
- (void)purgeDetectors;
- (void)removeObserver:(id)a3;
@end

@implementation AXSDDetectorStore

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXSDDetectorStore sharedInstance];
  }

  v3 = sharedInstance_SharedSettings;

  return v3;
}

uint64_t __35__AXSDDetectorStore_sharedInstance__block_invoke()
{
  sharedInstance_SharedSettings = objc_alloc_init(AXSDDetectorStore);

  return MEMORY[0x2821F96F8]();
}

- (AXSDDetectorStore)init
{
  v16.receiver = self;
  v16.super_class = AXSDDetectorStore;
  v2 = [(AXSDDetectorStore *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = objc_opt_new();
    detectors = v2->_detectors;
    v2->_detectors = v5;

    v7 = objc_opt_new();
    purgedDetectors = v2->_purgedDetectors;
    v2->_purgedDetectors = v7;

    v9 = +[AXUltronModelAssetManager sharedInstance];
    assetManager = v2->_assetManager;
    v2->_assetManager = v9;

    [(AXUltronModelAssetManager *)v2->_assetManager addObserver:v2];
    objc_initWeak(&location, v2);
    v11 = [MEMORY[0x277CE6F98] sharedInstance];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __25__AXSDDetectorStore_init__block_invoke;
    v13[3] = &unk_278BDD060;
    objc_copyWeak(&v14, &location);
    [v11 registerUpdateBlock:v13 forRetrieveSelector:sel_kShotDetectors withListener:v2];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __25__AXSDDetectorStore_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadCustomDetectors];
}

- (int64_t)totalDownloadSize
{
  v2 = +[AXUltronModelAssetManager sharedInstance];
  v3 = [v2 totalSizeExpected];

  return v3;
}

- (int64_t)totalUnarchivedFileSize
{
  v2 = +[AXUltronModelAssetManager sharedInstance];
  v3 = [v2 totalSizeOccupied];

  return v3;
}

- (unint64_t)numberOfObservers
{
  [(NSPointerArray *)self->_observers compact];
  observers = self->_observers;

  return [(NSPointerArray *)observers count];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(AXSDDetectorStore *)v4 addObserver:v5];
  }

  [(NSPointerArray *)self->_observers addPointer:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(AXSDDetectorStore *)v4 removeObserver:v5];
  }

  if ([(NSPointerArray *)self->_observers count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [(NSPointerArray *)self->_observers pointerAtIndex:v6];
      v8 = v7;
      if (v7 == v4)
      {
        break;
      }

      if (++v6 >= [(NSPointerArray *)self->_observers count])
      {
        goto LABEL_9;
      }
    }

    [(NSPointerArray *)self->_observers replacePointerAtIndex:v6 withPointer:0];
  }

LABEL_9:
  [(NSPointerArray *)self->_observers compact];
}

- (BOOL)isAssetCatalogInstalled
{
  v2 = +[AXUltronModelAssetManager sharedInstance];
  v3 = [v2 isAssetCatalogInstalled];

  return v3;
}

- (BOOL)areDetectorsReady
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(AXSDDetectorStore *)self _areKShotDetectorsReady];
  if (AXIsSoundDetectionMedinaSupportEnabled())
  {
    v4 = AXLogUltron();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_INFO, "Medina is Enabled. Are KShot Detectors Ready: %@", &v12, 0xCu);
    }
  }

  else
  {
    v6 = [(AXSDDetectorStore *)self _areStandardDetectorsReady];
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithBool:v3];
      v9 = [MEMORY[0x277CCABB0] numberWithBool:v6];
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_23D62D000, v7, OS_LOG_TYPE_INFO, "Are KShot Detectors Ready: %@. Are Standard Detectors Ready: %@.", &v12, 0x16u);
    }

    LOBYTE(v3) = v3 && v6;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_areStandardDetectorsReady
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CE6F98] sharedInstance];
  v4 = [v3 supportedSoundDetectionTypes];

  v5 = [(AXSDDetectorStore *)self detectorsByIdentifier];
  if ([v4 count] && (objc_msgSend(v5, "allValues"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
LABEL_5:
      v12 = 0;
      while (1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v5 objectForKey:{*(*(&v18 + 1) + 8 * v12), v18}];
        v14 = v13;
        if (!v13)
        {
          break;
        }

        v15 = [v13 isInstalled];

        if (!v15)
        {
          LOBYTE(v14) = 0;
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          LOBYTE(v14) = 1;
          if (v10)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    else
    {
      LOBYTE(v14) = 1;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)_areKShotDetectorsReady
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE6EF8];
  v19[0] = *MEMORY[0x277CE6EF0];
  v19[1] = v3;
  v19[2] = *MEMORY[0x277CE6EE8];
  [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [(AXSDDetectorStore *)self detectorWithName:*(*(&v14 + 1) + 8 * v8), v14];
      v10 = v9;
      if (!v9)
      {
        break;
      }

      v11 = [v9 isInstalled];

      if (!v11)
      {
        LOBYTE(v10) = 0;
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        LOBYTE(v10) = 1;
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)loadDetectors
{
  if (AXIsSoundDetectionMedinaSupportEnabled())
  {
    [(AXSDDetectorStore *)self _createSDDetectors];
  }

  [(AXUltronModelAssetManager *)self->_assetManager refresh];

  [(AXSDDetectorStore *)self _reloadCustomDetectors];
}

- (void)_createSDDetectors
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = AXSDSoundDetectionCategories();
  v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v17 = *v24;
    do
    {
      v3 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v23 + 1) + 8 * v3);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v5 = AXSDSoundDetectionTypesForCategory();
        v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v20;
          do
          {
            v9 = 0;
            do
            {
              if (*v20 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v19 + 1) + 8 * v9);
              v11 = [(AXSDDetectorStore *)self detectors];
              v12 = [v11 objectForKey:v10];

              if (!v12)
              {
                v13 = [[AXSDDetector alloc] initWithIdentifier:v10 andName:v10];
                v14 = [(AXSDDetectorStore *)self detectors];
                [v14 setObject:v13 forKey:v10];
              }

              ++v9;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v7);
        }

        ++v3;
      }

      while (v3 != v18);
      v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_removeCustomDetectors
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(AXSDDetectorStore *)self customDetectors];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [(AXSDDetectorStore *)self detectors];
        v10 = [v8 identifier];
        [v9 removeObjectForKey:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reloadCustomDetectors
{
  v19 = *MEMORY[0x277D85DE8];
  [(AXSDDetectorStore *)self _removeCustomDetectors];
  v3 = [MEMORY[0x277CE6F98] sharedInstance];
  v4 = [v3 decodedKShotDetectors];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v5 objectForKey:{v10, v14}];
        v12 = [(AXSDDetectorStore *)self detectors];
        [v12 setObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)downloadDetectors
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(AXSDDetectorStore *)self unInstalledDetectors];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v3 objectForKey:v10];

        if (!v11 || [v11 isOlderThanDetector:v9])
        {
          v12 = [v9 identifier];
          [v3 setObject:v9 forKey:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [v3 allValues];
  [(AXSDDetectorStore *)self _downloadAssetsFromDetectors:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_downloadAssetsFromDetectors:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[AXUltronModelAssetManager sharedInstance];
  v5 = [v4 hasInProgressDownloads];

  if (v5)
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = objc_opt_class();
      v7 = v31;
      v8 = "[%@]: not downloading detectors as there are already downloads in progress";
LABEL_24:
      _os_log_impl(&dword_23D62D000, v6, OS_LOG_TYPE_INFO, v8, buf, 0xCu);
    }
  }

  else if (v3 && [v3 count])
  {
    v6 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = v3;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          if (([v14 isCustom] & 1) == 0)
          {
            v15 = [v14 model];

            if (v15)
            {
              v16 = [v14 model];
              [v6 addObject:v16];
            }

            else
            {
              v16 = AXLogUltron();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v17 = objc_opt_class();
                v18 = v17;
                v19 = [v14 model];
                *buf = 138412546;
                v31 = v17;
                v32 = 2112;
                v33 = v19;
                _os_log_error_impl(&dword_23D62D000, v16, OS_LOG_TYPE_ERROR, "[%@]: candidate detector for download has no asset: %@", buf, 0x16u);
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v11);
    }

    v20 = AXLogUltron();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      *buf = 138412546;
      v31 = v21;
      v32 = 2112;
      v33 = v9;
      v22 = v21;
      _os_log_impl(&dword_23D62D000, v20, OS_LOG_TYPE_INFO, "[%@]: Downloading assets that need upgrading: %@", buf, 0x16u);
    }

    v23 = +[AXUltronModelAssetManager sharedInstance];
    [v23 downloadAssets:v6];

    v3 = v25;
  }

  else
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = objc_opt_class();
      v7 = v31;
      v8 = "[%@]: no detectors to download.";
      goto LABEL_24;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)purgeDetectors
{
  v3 = [(AXSDDetectorStore *)self installedDetectors];
  v4 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_13];

  [(AXSDDetectorStore *)self _purgeAssetsFromDetectors:v4];
}

BOOL __35__AXSDDetectorStore_purgeDetectors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isCustom])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 model];
    v3 = v4 != 0;
  }

  return v3;
}

- (void)_purgeAssetsFromDetectors:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v32;
      do
      {
        v10 = 0;
        do
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v31 + 1) + 8 * v10++) setIsEnabled:0];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v8);
    }

    v11 = [v6 ax_mappedArrayUsingBlock:&__block_literal_global_16];
    v12 = +[AXUltronModelAssetManager sharedInstance];
    [v12 stopDownloadingAssets];

    v13 = AXLogUltron();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      *buf = 138412546;
      v37 = v14;
      v38 = 2112;
      v39 = v6;
      v15 = v14;
      _os_log_impl(&dword_23D62D000, v13, OS_LOG_TYPE_INFO, "[%@]: Purging assets that are no longer needed: %@", buf, 0x16u);
    }

    v16 = +[AXUltronModelAssetManager sharedInstance];
    [v16 purgeAssets:v11];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = v11;
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        v21 = 0;
        do
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v27 + 1) + 8 * v21);
          v23 = [(AXSDDetectorStore *)self detectors];
          v24 = [v22 assetId];
          [v23 removeObjectForKey:v24];

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v17 = AXLogUltron();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = objc_opt_class();
      v25 = v37;
      _os_log_impl(&dword_23D62D000, v17, OS_LOG_TYPE_INFO, "[%@]: no detectors to purge.", buf, 0xCu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

id __47__AXSDDetectorStore__purgeAssetsFromDetectors___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isCustom])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 model];
  }

  return v3;
}

- (id)_detectorsNeedingUpgrade
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(AXSDDetectorStore *)self unInstalledDetectors];
  v4 = [(AXSDDetectorStore *)self detectorsByIdentifier];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v23;
    *&v9 = 138412546;
    v21 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 identifier];
        v15 = [v4 objectForKey:v14];

        if (!v15)
        {
          v16 = AXLogUltron();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v29 = v13;
            _os_log_impl(&dword_23D62D000, v16, OS_LOG_TYPE_INFO, "No installed detector found. %@ needs to be installed.", buf, 0xCu);
          }

          [v6 addObject:v13];
          [v13 setNeedsUpdate:1];
        }

        if ([v15 isOlderThanDetector:v13] && objc_msgSend(v15, "isCompatiable"))
        {
          v17 = AXLogUltron();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = v21;
            v29 = v15;
            v30 = 2112;
            v31 = v13;
            _os_log_impl(&dword_23D62D000, v17, OS_LOG_TYPE_INFO, "Installed Detector: %@ needs upgrade to: %@", buf, 0x16u);
          }

          [v5 addObject:v15];
          [v6 addObject:v13];
          [v15 setNeedsUpdate:1];
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v10);
  }

  v26[0] = @"old";
  v26[1] = @"new";
  v27[0] = v5;
  v27[1] = v6;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)detectorWithIdentifier:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(AXSDDetectorStore *)self customDetectors];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v16 = v10;
          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (!AXIsSoundDetectionMedinaSupportEnabled())
  {
    goto LABEL_13;
  }

  v13 = AXSDSoundDetectionTypeForIdentifier();
  if (v13)
  {
    v5 = v13;
    v14 = [(AXSDDetectorStore *)self detectors];
    v15 = [v14 objectForKey:v5];

    if (v15)
    {

LABEL_13:
      v16 = [(AXSDDetectorStore *)self _detectorWithIdentifier:v4];
      goto LABEL_16;
    }

    [(AXSDDetectorStore *)self _createSDDetectors];
    v20 = [(AXSDDetectorStore *)self detectors];
    v16 = [v20 objectForKey:v5];

LABEL_15:
  }

  else
  {
    v19 = AXLogUltron();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(AXSDDetectorStore *)v4 detectorWithIdentifier:v19];
    }

    v16 = 0;
  }

LABEL_16:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_detectorWithIdentifier:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [(AXSDDetectorStore *)self installedDetectors];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [v11 identifier];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v25;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v24 + 1) + 8 * j);
        if (v17)
        {
          if ([*(*(&v24 + 1) + 8 * j) isEnabled] || objc_msgSend(v17, "isOlderThanDetector:", v20))
          {
            v21 = v20;

            v17 = v21;
          }
        }

        else
        {
          v17 = v20;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)detectorWithName:(id)a3
{
  v4 = a3;
  if (AXIsSoundDetectionMedinaSupportEnabled())
  {
    [(AXSDDetectorStore *)self _createSDDetectors];
  }

  v5 = [(AXSDDetectorStore *)self _detectorWithName:v4];

  return v5;
}

- (id)_detectorWithName:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(AXSDDetectorStore *)self detectors];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      v11 = [(AXSDDetectorStore *)self detectors];
      v12 = [v11 objectForKey:v10];

      v13 = [v12 name];
      v14 = [v13 isEqualToString:v4];

      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)detectorWithAssetID:(id)a3
{
  v4 = a3;
  v5 = [(AXSDDetectorStore *)self detectors];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)allDetectors
{
  v2 = [(AXSDDetectorStore *)self detectors];
  v3 = [v2 allValues];

  return v3;
}

- (id)supportedDetectors
{
  v2 = [(AXSDDetectorStore *)self detectors];
  v3 = [v2 allValues];
  v4 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_23];

  return v4;
}

uint64_t __39__AXSDDetectorStore_supportedDetectors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isCustom])
  {
    v3 = [v2 isModelReady];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)installedDetectors
{
  v2 = [(AXSDDetectorStore *)self detectors];
  v3 = [v2 allValues];
  v4 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_25];

  return v4;
}

- (id)unInstalledDetectors
{
  v2 = [(AXSDDetectorStore *)self detectors];
  v3 = [v2 allValues];
  v4 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_27];

  return v4;
}

- (id)customDetectors
{
  v2 = [(AXSDDetectorStore *)self detectors];
  v3 = [v2 allValues];
  v4 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_29];

  return v4;
}

- (id)enabledDetectors
{
  v2 = [(AXSDDetectorStore *)self detectors];
  v3 = [v2 allValues];
  v4 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_31];

  return v4;
}

- (id)_addDetectorForAXAsset:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[AXSDDetector alloc] initWithModel:v4];
  detectors = self->_detectors;
  v7 = [v4 assetId];
  [(NSMutableDictionary *)detectors setObject:v5 forKey:v7];

  if ((AXIsSoundDetectionMedinaSupportEnabled() & 1) == 0)
  {
    v8 = [MEMORY[0x277CE6670] store];
    v9 = [MEMORY[0x277CE66A8] ultronAssetType];
    v10 = [v8 valueForKey:@"AXUltronAssetsInUse" forAssetType:v9];
    v11 = [v10 mutableCopy];

    if (!v11)
    {
      v11 = objc_opt_new();
    }

    v12 = [(AXSDDetector *)v5 identifier];
    v13 = [v11 objectForKey:v12];

    if (v13)
    {
      v14 = [v4 assetId];
      v15 = [v13 isEqualToString:v14];

      if (v15)
      {
        v16 = AXLogUltron();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = objc_opt_class();
          v18 = v17;
          v19 = [(AXSDDetector *)v5 identifier];
          v22 = 138412802;
          v23 = v17;
          v24 = 2112;
          v25 = v13;
          v26 = 2112;
          v27 = v19;
          _os_log_impl(&dword_23D62D000, v16, OS_LOG_TYPE_INFO, "[%@]: found asset id in metadata store: %@. setting detector: %@ to enabled", &v22, 0x20u);
        }

        [(AXSDDetector *)v5 setIsEnabled:1];
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)allDetectorsByIdentifier
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(AXSDDetectorStore *)self detectors];
  v5 = [v4 allValues];

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
        v11 = [v10 identifier];
        v12 = [v3 objectForKey:v11];
        if (!v12)
        {
          v12 = objc_opt_new();
        }

        [v12 addObject:v10];
        [v3 setObject:v12 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)detectorsByIdentifier
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = [(AXSDDetectorStore *)self allDetectorsByIdentifier];
  v6 = [v5 allKeys];
  v7 = [v4 initWithArray:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [(AXSDDetectorStore *)self detectorWithIdentifier:v13, v17];
        if (v14)
        {
          [v3 setObject:v14 forKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)localizedNamesByIdentifier
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CE6F98] sharedInstance];
  v4 = [v3 supportedSoundDetectionTypes];

  v5 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = AXSDSoundDetectionLocalizedTitleForType();
        [v5 setValue:v12 forKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [(AXSDDetectorStore *)self customDetectors];
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * j);
        v19 = [v18 identifier];
        v20 = [v18 name];
        [v5 setValue:v20 forKey:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v15);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)enableDetector:(id)a3
{
  v4 = a3;
  v5 = [(AXSDDetectorStore *)self detectors];
  v6 = [v4 model];
  v7 = [v6 assetId];
  v8 = [v5 objectForKey:v7];
  [v8 setIsEnabled:1];

  v9 = [MEMORY[0x277CE6F98] sharedInstance];
  [v9 setDetectorIsEnabled:v4 isEnabled:1];
}

- (void)enableDetectorWithIdentifier:(id)a3
{
  v4 = [(AXSDDetectorStore *)self detectorWithIdentifier:a3];
  [(AXSDDetectorStore *)self enableDetector:v4];
}

- (void)disableDetector:(id)a3
{
  v4 = a3;
  v5 = [(AXSDDetectorStore *)self detectors];
  v6 = [v4 model];
  v7 = [v6 assetId];
  v8 = [v5 objectForKey:v7];
  [v8 setIsEnabled:0];

  v9 = [MEMORY[0x277CE6F98] sharedInstance];
  [v9 setDetectorIsEnabled:v4 isEnabled:0];
}

- (void)disableDetectorWithIdentifier:(id)a3
{
  v4 = [(AXSDDetectorStore *)self detectorWithIdentifier:a3];
  [(AXSDDetectorStore *)self disableDetector:v4];
}

- (void)_enumerateObserversWithBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSPointerArray *)self->_observers compact];
  v5 = [(NSPointerArray *)self->_observers allObjects];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v11 + 1) + 8 * v9))
        {
          v4[2](v4);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversAvailableDetectorsDidUpdate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__AXSDDetectorStore__notifyObserversAvailableDetectorsDidUpdate___block_invoke;
  v6[3] = &unk_278BDD0C8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AXSDDetectorStore *)self _enumerateObserversWithBlock:v6];
}

void __65__AXSDDetectorStore__notifyObserversAvailableDetectorsDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 detectorStore:*(a1 + 32) availableDetectorsDidUpdate:*(a1 + 40)];
  }
}

- (void)_notifyObserversDetectorsNeedUpdate:(id)a3 toDetectors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__AXSDDetectorStore__notifyObserversDetectorsNeedUpdate_toDetectors___block_invoke;
  v10[3] = &unk_278BDD0F0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(AXSDDetectorStore *)self _enumerateObserversWithBlock:v10];
}

void __69__AXSDDetectorStore__notifyObserversDetectorsNeedUpdate_toDetectors___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 detectorStore:a1[4] detectorsNeedUpdate:a1[5] toDetectors:a1[6]];
  }
}

- (void)_notifyObserversDidFinishRefreshingDetectors:(id)a3 wasSuccessful:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__AXSDDetectorStore__notifyObserversDidFinishRefreshingDetectors_wasSuccessful_error___block_invoke;
  v12[3] = &unk_278BDD118;
  v12[4] = self;
  v13 = v8;
  v15 = a4;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(AXSDDetectorStore *)self _enumerateObserversWithBlock:v12];
}

void __86__AXSDDetectorStore__notifyObserversDidFinishRefreshingDetectors_wasSuccessful_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 detectorStore:*(a1 + 32) didFinishRefreshingDetectors:*(a1 + 40) wasSuccessful:*(a1 + 56) error:*(a1 + 48)];
  }
}

- (void)_notifyObserversDetectorsAreReady
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__AXSDDetectorStore__notifyObserversDetectorsAreReady__block_invoke;
  v2[3] = &unk_278BDD140;
  v2[4] = self;
  [(AXSDDetectorStore *)self _enumerateObserversWithBlock:v2];
}

void __54__AXSDDetectorStore__notifyObserversDetectorsAreReady__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 detectorsReadyForDetectorStore:*(a1 + 32)];
  }
}

- (void)_notifyObserversDetectorsDownloadProgress:(int64_t)a3 totalSizeExpected:(int64_t)a4 remainingTimeExpected:(double)a5 isStalled:(BOOL)a6
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __113__AXSDDetectorStore__notifyObserversDetectorsDownloadProgress_totalSizeExpected_remainingTimeExpected_isStalled___block_invoke;
  v6[3] = &unk_278BDD168;
  v6[4] = self;
  v6[5] = a4;
  v6[6] = a3;
  *&v6[7] = a5;
  v7 = a6;
  [(AXSDDetectorStore *)self _enumerateObserversWithBlock:v6];
}

void __113__AXSDDetectorStore__notifyObserversDetectorsDownloadProgress_totalSizeExpected_remainingTimeExpected_isStalled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 detectorStore:*(a1 + 32) totalSizeExpected:*(a1 + 40) downloadProgressTotalWritten:*(a1 + 48) remainingTimeExpected:*(a1 + 64) isStalled:*(a1 + 56)];
  }
}

void __119__AXSDDetectorStore__notifyObserversDetectorsDownloadProgress_totalSizeExpected_remainingTimeExpected_isStalled_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 detectorStore:*(a1 + 32) totalSizeExpected:*(a1 + 40) downloadProgressTotalWritten:*(a1 + 48) remainingTimeExpected:*(a1 + 64) isStalled:*(a1 + 56)];
  }
}

- (void)_notifyObserversDidFinishPurgingDetectors:(id)a3 wasSuccessful:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__AXSDDetectorStore__notifyObserversDidFinishPurgingDetectors_wasSuccessful_error___block_invoke;
  v12[3] = &unk_278BDD118;
  v12[4] = self;
  v13 = v8;
  v15 = a4;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(AXSDDetectorStore *)self _enumerateObserversWithBlock:v12];
}

void __83__AXSDDetectorStore__notifyObserversDidFinishPurgingDetectors_wasSuccessful_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 detectorStore:*(a1 + 32) didFinishPurgingDetectors:*(a1 + 40) wasSuccessful:*(a1 + 56) error:*(a1 + 48)];
  }
}

uint64_t __80__AXSDDetectorStore_assetManager_didFinishRefreshingAssets_wasSuccessful_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 model];
  v4 = [v3 assetId];
  v5 = [v2 containsObject:v4];

  return v5;
}

uint64_t __80__AXSDDetectorStore_assetManager_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isCustom])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isCompatiable] ^ 1;
  }

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(AXSDDetectorStore *)self detectors];
  v6 = [v3 stringWithFormat:@"[%@]: Number of Detectors: %lu", v4, objc_msgSend(v5, "count")];

  return v6;
}

- (void)addObserver:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_23D62D000, a2, OS_LOG_TYPE_DEBUG, "AXSDDetectorStore add observer: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_23D62D000, a2, OS_LOG_TYPE_DEBUG, "AXSDDetectorStore remove observer: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)detectorWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23D62D000, a2, OS_LOG_TYPE_ERROR, "Trying to retrieve a detector with an invalid identifier. Identifier: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end