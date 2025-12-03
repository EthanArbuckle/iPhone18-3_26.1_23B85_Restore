@interface BKLibraryDataSourceMediaLibraryLocal
+ (id)localAudiobooksDataSource;
- (BKLibraryDataSourceMediaLibraryLocal)initWithIdentifier:(id)identifier;
- (BKLibraryManager)libraryManager;
- (void)_addAssetIDsToCacheManager:(id)manager;
- (void)_removeAssetIDsFromCacheManager:(id)manager;
- (void)assetAccountIdentifiersForAssetID:(id)d storeID:(id)iD path:(id)path completion:(id)completion;
- (void)assetForLibraryAsset:(id)asset completion:(id)completion;
- (void)bookCoverForLibraryAssetProperties:(id)properties size:(CGSize)size completion:(id)completion;
- (void)dealloc;
- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion;
- (void)fetchAssetIDsWithCompletion:(id)completion;
- (void)fetchAssetsWithCompletion:(id)completion;
- (void)fetchAssetsWithIDs:(id)ds completion:(id)completion;
- (void)mediaLibraryCacheAddedLocalAssets:(id)assets updatedLocalAssets:(id)localAssets removedLocalAssets:(id)removedLocalAssets;
- (void)mediaLibraryCacheRequestsReload:(id)reload;
- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion;
@end

@implementation BKLibraryDataSourceMediaLibraryLocal

+ (id)localAudiobooksDataSource
{
  v2 = [[BKLibraryDataSourceMediaLibraryLocal alloc] initWithIdentifier:@"com.apple.ibooks.datasource.audiobooks"];

  return v2;
}

- (BKLibraryDataSourceMediaLibraryLocal)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  kdebug_trace();
  v5 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100790580(identifierCopy, v5);
  }

  v12.receiver = self;
  v12.super_class = BKLibraryDataSourceMediaLibraryLocal;
  v6 = [(BKLibraryDataSourceMediaLibraryLocal *)&v12 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    dataSourceIdentifier = v6->_dataSourceIdentifier;
    v6->_dataSourceIdentifier = v7;

    v9 = +[BKMediaLibraryCache sharedCache];
    mediaLibraryCache = v6->_mediaLibraryCache;
    v6->_mediaLibraryCache = v9;

    [(BKMediaLibraryCache *)v6->_mediaLibraryCache addObserver:v6];
  }

  kdebug_trace();

  return v6;
}

- (void)dealloc
{
  v3 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1007905F8(v3);
  }

  v4.receiver = self;
  v4.super_class = BKLibraryDataSourceMediaLibraryLocal;
  [(BKLibraryDataSourceMediaLibraryLocal *)&v4 dealloc];
}

- (void)mediaLibraryCacheRequestsReload:(id)reload
{
  reloadCopy = reload;
  libraryManager = [(BKLibraryDataSourceMediaLibraryLocal *)self libraryManager];
  [libraryManager reloadDataSource:self completion:reloadCopy];
}

- (void)mediaLibraryCacheAddedLocalAssets:(id)assets updatedLocalAssets:(id)localAssets removedLocalAssets:(id)removedLocalAssets
{
  assetsCopy = assets;
  localAssetsCopy = localAssets;
  removedLocalAssetsCopy = removedLocalAssets;
  v11 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218496;
    v19 = [assetsCopy count];
    v20 = 2048;
    v21 = [removedLocalAssetsCopy count];
    v22 = 2048;
    v23 = [localAssetsCopy count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Local library changed adding %lu, removing %lu, updating %lu.", &v18, 0x20u);
  }

  if ([removedLocalAssetsCopy count])
  {
    libraryManager = [(BKLibraryDataSourceMediaLibraryLocal *)self libraryManager];
    [libraryManager libraryDataSource:self removedAssets:removedLocalAssetsCopy];

    [(BKLibraryDataSourceMediaLibraryLocal *)self _removeAssetIDsFromCacheManager:removedLocalAssetsCopy];
  }

  if ([assetsCopy count])
  {
    libraryManager2 = [(BKLibraryDataSourceMediaLibraryLocal *)self libraryManager];
    [libraryManager2 libraryDataSource:self addedAssets:assetsCopy];

    [(BKLibraryDataSourceMediaLibraryLocal *)self _addAssetIDsToCacheManager:assetsCopy];
  }

  if ([localAssetsCopy count])
  {
    v14 = +[BCCacheManager defaultCacheManager];
    v15 = [localAssetsCopy valueForKey:@"assetID"];
    v16 = [NSSet setWithArray:v15];
    [v14 incrementVersionForIdentifiers:v16];

    libraryManager3 = [(BKLibraryDataSourceMediaLibraryLocal *)self libraryManager];
    [libraryManager3 libraryDataSource:self updatedAssets:localAssetsCopy];
  }
}

- (void)fetchAssetIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  mediaLibraryCache = [(BKLibraryDataSourceMediaLibraryLocal *)self mediaLibraryCache];
  [mediaLibraryCache fetchAssetIDsOfType:0 completion:completionCopy];
}

- (void)fetchAssetsWithIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  mediaLibraryCache = [(BKLibraryDataSourceMediaLibraryLocal *)self mediaLibraryCache];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10011EA20;
  v10[3] = &unk_100A05E68;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [mediaLibraryCache fetchAssetsWithIDs:dsCopy type:0 completion:v10];
}

- (void)fetchAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  mediaLibraryCache = [(BKLibraryDataSourceMediaLibraryLocal *)self mediaLibraryCache];
  [mediaLibraryCache fetchAssetsOfType:0 completion:completionCopy];
}

- (void)_addAssetIDsToCacheManager:(id)manager
{
  managerCopy = manager;
  v5 = +[NSMutableDictionary dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = managerCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        assetID = [v11 assetID];
        v13 = [BKCoverCacheURLSchemeHandler urlStringForAssetID:assetID dataSourceID:self->_dataSourceIdentifier];
        assetID2 = [v11 assetID];
        [v5 setObject:v13 forKeyedSubscript:assetID2];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v15 = +[BCCacheManager defaultCacheManager];
    [v15 addURLs:v5 priority:3 quality:206 expiresAfter:0];
  }
}

- (void)_removeAssetIDsFromCacheManager:(id)manager
{
  managerCopy = manager;
  v5 = +[NSMutableDictionary dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = managerCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        assetID = [v11 assetID];
        v13 = [BKCoverCacheURLSchemeHandler urlStringForAssetID:assetID dataSourceID:self->_dataSourceIdentifier];
        assetID2 = [v11 assetID];
        [v5 setObject:v13 forKeyedSubscript:assetID2];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v15 = +[BCCacheManager defaultCacheManager];
    [v15 removeURLs:v5 priority:3 quality:206];
  }
}

- (void)bookCoverForLibraryAssetProperties:(id)properties size:(CGSize)size completion:(id)completion
{
  completionCopy = completion;
  propertiesCopy = properties;
  mediaLibraryCache = [(BKLibraryDataSourceMediaLibraryLocal *)self mediaLibraryCache];
  [mediaLibraryCache bookCoverForLibraryAssetProperties:propertiesCopy type:0 completion:completionCopy];
}

- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion
{
  exhaustiveCopy = exhaustive;
  assetsCopy = assets;
  completionCopy = completion;
  v10 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [assetsCopy count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Deleting %lu media library assets", buf, 0xCu);
  }

  mediaLibraryCache = [(BKLibraryDataSourceMediaLibraryLocal *)self mediaLibraryCache];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011F054;
  v13[3] = &unk_100A07DF0;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [mediaLibraryCache deleteAssets:assetsCopy type:0 exhaustive:exhaustiveCopy completion:v13];
}

- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0, 0);
    v5 = v6;
  }
}

- (void)assetForLibraryAsset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  assetCopy = asset;
  mediaLibraryCache = [(BKLibraryDataSourceMediaLibraryLocal *)self mediaLibraryCache];
  [mediaLibraryCache assetForLibraryAsset:assetCopy type:0 completion:completionCopy];
}

- (void)assetAccountIdentifiersForAssetID:(id)d storeID:(id)iD path:(id)path completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  if ([iDCopy length])
  {
    v9 = +[MPMediaQuery bk_audiobooksQuery];
    if (v9 && [iDCopy length])
    {
      v10 = [MPMediaPropertyPredicate predicateWithValue:iDCopy forProperty:MPMediaItemPropertyStorePlaylistID];
      v11 = [MPMediaPropertyPredicate predicateWithValue:iDCopy forProperty:MPMediaItemPropertyStoreID];
      v59[0] = v10;
      v59[1] = v11;
      v12 = [NSArray arrayWithObjects:v59 count:2];
      v13 = [MPMediaCompoundAnyPredicate predicateMatchingPredicates:v12];
      [v9 addFilterPredicate:v13];

      [v9 setGroupingType:1];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = [v9 collections];
      v48 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v48)
      {
        v39 = v11;
        v40 = v10;
        v41 = v9;
        v42 = completionCopy;
        v47 = *v54;
        v46 = MPMediaItemPropertyStoreAccountID;
        v45 = MPMediaItemPropertyStoreDownloaderAccountID;
        v44 = MPMediaItemPropertyStoreFamilyAccountID;
        do
        {
          for (i = 0; i != v48; i = i + 1)
          {
            if (*v54 != v47)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v53 + 1) + 8 * i);
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            items = [v15 items];
            v17 = [items countByEnumeratingWithState:&v49 objects:v57 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v50;
LABEL_11:
              v20 = 0;
              while (1)
              {
                if (*v50 != v19)
                {
                  objc_enumerationMutation(items);
                }

                v21 = *(*(&v49 + 1) + 8 * v20);
                bk_storeID = [v21 bk_storeID];
                stringValue = [bk_storeID stringValue];
                v24 = [iDCopy isEqualToString:stringValue];

                if (v24)
                {
                  break;
                }

                if (v18 == ++v20)
                {
                  v18 = [items countByEnumeratingWithState:&v49 objects:v57 count:16];
                  if (v18)
                  {
                    goto LABEL_11;
                  }

                  goto LABEL_17;
                }
              }

              objc_opt_class();
              v25 = [v21 valueForProperty:v46];
              v26 = BUDynamicCast();

              objc_opt_class();
              v27 = [v21 valueForProperty:v45];
              v28 = BUDynamicCast();

              objc_opt_class();
              v29 = [v21 valueForProperty:v44];
              v30 = BUDynamicCast();

              v31 = objc_opt_new();
              bkdsml_nonZeroString = [v26 bkdsml_nonZeroString];
              [v31 setPurchasedDSID:bkdsml_nonZeroString];

              bkdsml_nonZeroString2 = [v28 bkdsml_nonZeroString];
              [v31 setDownloadedDSID:bkdsml_nonZeroString2];

              bkdsml_nonZeroString3 = [v30 bkdsml_nonZeroString];
              [v31 setFamilyID:bkdsml_nonZeroString3];

              if (v31)
              {
                goto LABEL_22;
              }
            }

            else
            {
LABEL_17:
            }
          }

          v48 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v48);
        v31 = 0;
LABEL_22:
        v9 = v41;
        completionCopy = v42;
        v11 = v39;
        v10 = v40;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }

    v37 = objc_retainBlock(completionCopy);
    v38 = v37;
    if (v37)
    {
      (*(v37 + 2))(v37, v31, 0);
    }
  }

  else
  {
    v35 = objc_retainBlock(completionCopy);
    v36 = v35;
    if (v35)
    {
      (*(v35 + 2))(v35, 0, 0);
    }
  }
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

@end