@interface BKMediaLibraryCache
+ (BKMediaLibraryCache)sharedCache;
- (BKMediaLibraryCache)init;
- (BOOL)_processAudiobookCollection:(id)collection fromMediaLibraryChangedNotification:(BOOL)notification;
- (id)_assetCacheForType:(unint64_t)type;
- (id)_cacheID:(id)d;
- (id)_calcSyncAnchor;
- (id)_syncAnchor;
- (id)_syncValidity;
- (id)allBookletAssetIDs;
- (id)description;
- (id)dq_assetFromCacheID:(id)d cloudAsset:(BOOL)asset;
- (void)_mediaLibraryDidChange:(id)change;
- (void)_notifyObserversOfReload:(id)reload;
- (void)_recordSyncAnchor:(id)anchor;
- (void)_recordSyncValidity:(id)validity;
- (void)addObserver:(id)observer;
- (void)assetForLibraryAsset:(id)asset type:(unint64_t)type completion:(id)completion;
- (void)bookCoverForLibraryAssetProperties:(id)properties type:(unint64_t)type completion:(id)completion;
- (void)deleteAssets:(id)assets type:(unint64_t)type exhaustive:(BOOL)exhaustive completion:(id)completion;
- (void)dq_cacheAsset:(id)asset cacheID:(id)d;
- (void)dq_cacheAssetsFromSubCollection:(id)collection assetCache:(id)cache includeBooklets:(BOOL)booklets;
- (void)dq_performInitialFetch;
- (void)dq_processAndCacheBookletItem:(id)item parentItem:(id)parentItem dataSourceIdentifier:(id)identifier;
- (void)dq_processChangesSince:(id)since completion:(id)completion;
- (void)dq_processEntity:(id)entity cloudChangeCollector:(id)collector localChangeCollector:(id)changeCollector;
- (void)dq_uncacheAllAssets;
- (void)dq_uncacheAsset:(id)asset cacheID:(id)d;
- (void)fetchAssetIDsOfType:(unint64_t)type includeBooklets:(BOOL)booklets completion:(id)completion;
- (void)fetchAssetsOfType:(unint64_t)type includeBooklets:(BOOL)booklets completion:(id)completion;
- (void)fetchAssetsWithIDs:(id)ds type:(unint64_t)type completion:(id)completion;
- (void)fetchAssetsWithIDs:(id)ds type:(unint64_t)type includeBooklets:(BOOL)booklets completion:(id)completion;
- (void)removeObserver:(id)observer;
@end

@implementation BKMediaLibraryCache

+ (BKMediaLibraryCache)sharedCache
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000167B8;
  block[3] = &unk_100A03560;
  block[4] = self;
  if (qword_100AF77A0 != -1)
  {
    dispatch_once(&qword_100AF77A0, block);
  }

  v2 = qword_100AF7798;

  return v2;
}

- (BKMediaLibraryCache)init
{
  v29.receiver = self;
  v29.super_class = BKMediaLibraryCache;
  v2 = [(BKMediaLibraryCache *)&v29 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.BKMediaLibraryCache.dispatchQueue", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = [NSHashTable hashTableWithOptions:517];
    observers = v2->_observers;
    v2->_observers = v6;

    v8 = [[BKMediaLibraryAssetCache alloc] initWithDataSourceIdentifier:@"com.apple.ibooks.datasource.audiobooks.cloud"];
    cloudAssetCache = v2->_cloudAssetCache;
    v2->_cloudAssetCache = v8;

    v10 = [[BKMediaLibraryAssetCache alloc] initWithDataSourceIdentifier:@"com.apple.ibooks.datasource.audiobooks"];
    localAssetCache = v2->_localAssetCache;
    v2->_localAssetCache = v10;

    v12 = objc_alloc_init(BKMediaLibraryBookletAssetCache);
    bookletAssetCache = v2->_bookletAssetCache;
    v2->_bookletAssetCache = v12;

    objc_initWeak(&location, v2);
    v14 = [BUCoalescingCallBlock alloc];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100183B50;
    v26[3] = &unk_100A04820;
    objc_copyWeak(&v27, &location);
    v15 = [v14 initWithNotifyBlock:v26 blockDescription:@"BKMediaLibraryCache"];
    coalescedReload = v2->_coalescedReload;
    v2->_coalescedReload = v15;

    [(BUCoalescingCallBlock *)v2->_coalescedReload setCoalescingDelay:10.0];
    v17 = +[MPMediaLibrary defaultMediaLibrary];
    v18 = [MPMediaPropertyPredicate predicateWithValue:&off_100A436C8 forProperty:MPMediaItemPropertyMediaType];
    [v17 addLibraryFilterPredicate:v18];

    v19 = +[NSRunLoop mainRunLoop];
    [MPMediaLibrary setRunLoopForNotifications:v19];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v2 selector:"_mediaLibraryDidChange:" name:MPMediaLibraryDidChangeNotification object:0];

    v21 = +[MPMediaLibrary defaultMediaLibrary];
    [v21 beginGeneratingLibraryChangeNotifications];

    v22 = v2->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001A6F8;
    block[3] = &unk_100A035D0;
    objc_copyWeak(&v25, &location);
    dispatch_async(v22, block);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dq_performInitialFetch
{
  kdebug_trace();
  v3 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100792280(v3);
  }

  v4 = +[MPMediaLibrary defaultMediaLibrary];
  _syncValidity = [v4 _syncValidity];
  [(BKMediaLibraryCache *)self _recordSyncValidity:_syncValidity];
  [(BKMediaLibraryCache *)self dq_uncacheAllAssets];
  v6 = +[MPMediaQuery bk_audiobooksQuery];
  [v6 setIgnoreSystemFilterPredicates:1];
  if (v6)
  {
    v31 = _syncValidity;
    v32 = v4;
    v7 = +[MPMediaLibrary defaultMediaLibrary];
    [v6 setGroupingType:1];
    v29 = v7;
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 currentEntityRevision]);
    stringValue = [v8 stringValue];

    v30 = v6;
    [v6 collections];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v45 = 0u;
    v36 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v36)
    {
      v34 = *v43;
      selfCopy = self;
      do
      {
        v9 = 0;
        do
        {
          if (*v43 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v9;
          v10 = *(*(&v42 + 1) + 8 * v9);
          v11 = +[NSMutableDictionary dictionary];
          v12 = +[NSMutableDictionary dictionary];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          bk_items = [v10 bk_items];
          v14 = [bk_items countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v39;
            do
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v39 != v16)
                {
                  objc_enumerationMutation(bk_items);
                }

                v18 = *(*(&v38 + 1) + 8 * i);
                bk_storeID = [v18 bk_storeID];
                v20 = bk_storeID;
                v21 = &off_100A436E0;
                if (bk_storeID)
                {
                  v21 = bk_storeID;
                }

                v22 = v21;

                if ([v18 bk_isJaliscoAsset])
                {
                  v23 = v11;
                }

                else
                {
                  v23 = v12;
                }

                v24 = v23;
                v25 = [v24 objectForKeyedSubscript:v22];
                if (!v25)
                {
                  v25 = [[BKAudiobookCollection alloc] initWithStoreID:v22];
                  [v24 setObject:v25 forKeyedSubscript:v22];
                }

                [(BKAudiobookCollection *)v25 addItem:v18];
              }

              v15 = [bk_items countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v15);
          }

          self = selfCopy;
          cloudAssetCache = [(BKMediaLibraryCache *)selfCopy cloudAssetCache];
          [(BKMediaLibraryCache *)selfCopy dq_cacheAssetsFromSubCollection:v11 assetCache:cloudAssetCache includeBooklets:1];

          localAssetCache = [(BKMediaLibraryCache *)selfCopy localAssetCache];
          [(BKMediaLibraryCache *)selfCopy dq_cacheAssetsFromSubCollection:v12 assetCache:localAssetCache includeBooklets:0];

          v9 = v37 + 1;
        }

        while ((v37 + 1) != v36);
        v36 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v36);
    }

    _syncValidity = v31;
    v4 = v32;
    v6 = v30;
    if (stringValue)
    {
      [(BKMediaLibraryCache *)self _recordSyncAnchor:stringValue];
    }
  }

  kdebug_trace();
}

- (void)dq_uncacheAllAssets
{
  localAssetCache = [(BKMediaLibraryCache *)self localAssetCache];
  [localAssetCache uncacheAllAssets];

  cloudAssetCache = [(BKMediaLibraryCache *)self cloudAssetCache];
  [cloudAssetCache uncacheAllAssets];
}

- (id)_calcSyncAnchor
{
  v3 = +[MPMediaLibrary defaultMediaLibrary];
  _syncValidity = [(BKMediaLibraryCache *)self _syncValidity];
  _syncValidity2 = [v3 _syncValidity];
  v6 = _syncValidity2;
  if (_syncValidity && _syncValidity2 && ![_syncValidity2 compare:_syncValidity])
  {
    v10 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10079286C();
    }

    _syncAnchor = [(BKMediaLibraryCache *)self _syncAnchor];
  }

  else
  {
    [(BKMediaLibraryCache *)self _recordSyncValidity:v6];
    [(BKMediaLibraryCache *)self _recordSyncAnchor:@"0"];
    v7 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1007927D8();
    }

    _syncAnchor = @"0";
  }

  return _syncAnchor;
}

- (id)_syncValidity
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 stringForKey:@"LibraryDataSourceMediaLibrary.SyncValidity"];

  return v3;
}

- (id)_syncAnchor
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 stringForKey:@"LibraryDataSourceMediaLibrary.SyncAnchor"];

  return v3;
}

- (id)_assetCacheForType:(unint64_t)type
{
  if (type == 1)
  {
    [(BKMediaLibraryCache *)self cloudAssetCache];
  }

  else
  {
    [(BKMediaLibraryCache *)self localAssetCache];
  }
  v3 = ;

  return v3;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    dispatchQueue = [(BKMediaLibraryCache *)self dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100183CA4;
    v6[3] = &unk_100A03440;
    v6[4] = self;
    v7 = observerCopy;
    dispatch_async(dispatchQueue, v6);
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    dispatchQueue = [(BKMediaLibraryCache *)self dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100183DB0;
    v6[3] = &unk_100A03440;
    v6[4] = self;
    v7 = observerCopy;
    dispatch_async(dispatchQueue, v6);
  }
}

- (void)fetchAssetIDsOfType:(unint64_t)type includeBooklets:(BOOL)booklets completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100183F00;
  v11[3] = &unk_100A09798;
  v12 = completionCopy;
  typeCopy = type;
  bookletsCopy = booklets;
  v11[4] = self;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, v11);
}

- (id)allBookletAssetIDs
{
  bookletAssetCache = [(BKMediaLibraryCache *)self bookletAssetCache];
  allBookletAssetIDs = [bookletAssetCache allBookletAssetIDs];

  return allBookletAssetIDs;
}

- (void)fetchAssetsWithIDs:(id)ds type:(unint64_t)type completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10018413C;
  v13[3] = &unk_100A06CD8;
  v13[4] = self;
  v14 = dsCopy;
  v15 = completionCopy;
  typeCopy = type;
  v11 = completionCopy;
  v12 = dsCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)fetchAssetsWithIDs:(id)ds type:(unint64_t)type includeBooklets:(BOOL)booklets completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001842A4;
  block[3] = &unk_100A097C0;
  block[4] = self;
  v16 = dsCopy;
  bookletsCopy = booklets;
  v17 = completionCopy;
  typeCopy = type;
  v13 = completionCopy;
  v14 = dsCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)fetchAssetsOfType:(unint64_t)type includeBooklets:(BOOL)booklets completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001845A8;
  v11[3] = &unk_100A09798;
  v12 = completionCopy;
  typeCopy = type;
  bookletsCopy = booklets;
  v11[4] = self;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, v11);
}

- (void)bookCoverForLibraryAssetProperties:(id)properties type:(unint64_t)type completion:(id)completion
{
  propertiesCopy = properties;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001847A4;
  v13[3] = &unk_100A06CD8;
  v13[4] = self;
  v14 = propertiesCopy;
  v15 = completionCopy;
  typeCopy = type;
  v11 = completionCopy;
  v12 = propertiesCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)deleteAssets:(id)assets type:(unint64_t)type exhaustive:(BOOL)exhaustive completion:(id)completion
{
  completionCopy = completion;
  v11 = [assets valueForKey:@"assetID"];
  bu_arrayByRemovingNSNulls = [v11 bu_arrayByRemovingNSNulls];
  v13 = bu_arrayByRemovingNSNulls;
  v14 = &__NSArray0__struct;
  if (bu_arrayByRemovingNSNulls)
  {
    v14 = bu_arrayByRemovingNSNulls;
  }

  v15 = v14;

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018491C;
  block[3] = &unk_100A097C0;
  block[4] = self;
  v20 = v15;
  exhaustiveCopy = exhaustive;
  v21 = completionCopy;
  typeCopy = type;
  v17 = completionCopy;
  v18 = v15;
  dispatch_async(dispatchQueue, block);
}

- (void)assetForLibraryAsset:(id)asset type:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  assetCopy = asset;
  assetID = [assetCopy assetID];
  v11 = assetID;
  v12 = &stru_100A30A68;
  if (assetID)
  {
    v12 = assetID;
  }

  v13 = v12;

  storeID = [assetCopy storeID];
  isSupplementalContent = [assetCopy isSupplementalContent];

  dispatchQueue = self->_dispatchQueue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100184AB8;
  v20[3] = &unk_100A097E8;
  v25 = isSupplementalContent;
  v20[4] = self;
  v21 = storeID;
  v23 = completionCopy;
  typeCopy = type;
  v22 = v13;
  v17 = v13;
  v18 = completionCopy;
  v19 = storeID;
  dispatch_async(dispatchQueue, v20);
}

- (void)_notifyObserversOfReload:(id)reload
{
  reloadCopy = reload;
  v5 = dispatch_group_create();
  dispatchQueue = [(BKMediaLibraryCache *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100184CA8;
  block[3] = &unk_100A03440;
  block[4] = self;
  v13 = v5;
  v7 = v5;
  dispatch_async(dispatchQueue, block);

  dispatchQueue2 = [(BKMediaLibraryCache *)self dispatchQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100184E24;
  v10[3] = &unk_100A03920;
  v11 = reloadCopy;
  v9 = reloadCopy;
  dispatch_group_notify(v7, dispatchQueue2, v10);
}

- (void)dq_cacheAssetsFromSubCollection:(id)collection assetCache:(id)cache includeBooklets:(BOOL)booklets
{
  bookletsCopy = booklets;
  cacheCopy = cache;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  allValues = [collection allValues];
  v10 = [allValues countByEnumeratingWithState:&v51 objects:v64 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v52;
    v43 = MPMediaItemPropertyBooklets;
    *&v11 = 138412290;
    v38 = v11;
    v42 = *v52;
    v41 = bookletsCopy;
    v40 = allValues;
    do
    {
      v14 = 0;
      v44 = v12;
      do
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        v15 = *(*(&v51 + 1) + 8 * v14);
        items = [v15 items];
        firstObject = [items firstObject];

        v18 = [(BKMediaLibraryCache *)self _cacheID:firstObject];
        v19 = v18;
        if (v18)
        {
          v45 = v18;
          items2 = [v15 items];
          v21 = [(BKMediaLibraryCache *)self _processAudiobookCollection:items2 fromMediaLibraryChangedNotification:0];

          v46 = firstObject;
          if (v21)
          {
            dataSourceIdentifier = [cacheCopy dataSourceIdentifier];
            v23 = [BKMediaLibraryAsset newAssetFromRepresentativeMediaItem:firstObject withDataSourceIdentifier:dataSourceIdentifier];

            v24 = BKLibraryDataSourceMediaLibraryLog();
            v25 = v24;
            if (v23)
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                assetID = [v23 assetID];
                title = [v23 title];
                dataSourceIdentifier2 = [v23 dataSourceIdentifier];
                *buf = 138413058;
                v57 = v45;
                v58 = 2112;
                v59 = assetID;
                v60 = 2112;
                v61 = title;
                v62 = 2112;
                v63 = dataSourceIdentifier2;
                v37 = dataSourceIdentifier2;
                _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "item added on fetch (cacheID: %@, assetID: %@, title: %@ ds:%@)", buf, 0x2Au);

                v12 = v44;
              }

              v19 = v45;
              [(BKMediaLibraryCache *)self dq_cacheAsset:v23 cacheID:v45];
              if (bookletsCopy)
              {
                v25 = [v46 valueForProperty:v43];
                v47 = 0u;
                v48 = 0u;
                v49 = 0u;
                v50 = 0u;
                v26 = [v25 countByEnumeratingWithState:&v47 objects:v55 count:16];
                if (v26)
                {
                  v27 = v26;
                  v28 = *v48;
                  do
                  {
                    for (i = 0; i != v27; i = i + 1)
                    {
                      if (*v48 != v28)
                      {
                        objc_enumerationMutation(v25);
                      }

                      v30 = *(*(&v47 + 1) + 8 * i);
                      dataSourceIdentifier3 = [cacheCopy dataSourceIdentifier];
                      [(BKMediaLibraryCache *)self dq_processAndCacheBookletItem:v30 parentItem:v23 dataSourceIdentifier:dataSourceIdentifier3];
                    }

                    v27 = [v25 countByEnumeratingWithState:&v47 objects:v55 count:16];
                  }

                  while (v27);
                  bookletsCopy = v41;
                  allValues = v40;
                  v13 = v42;
                  v12 = v44;
                }

                goto LABEL_24;
              }

LABEL_26:

              firstObject = v46;
              goto LABEL_27;
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = v38;
              v57 = v45;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Unable to create asset for (cacheID: %@)", buf, 0xCu);
            }

LABEL_24:
          }

          else
          {
            v23 = BKLibraryDataSourceMediaLibraryLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              bk_assetID = [v46 bk_assetID];
              albumTitle = [v46 albumTitle];
              dataSourceIdentifier4 = [cacheCopy dataSourceIdentifier];
              *buf = 138413058;
              v19 = v45;
              v57 = v45;
              v58 = 2112;
              v59 = bk_assetID;
              v60 = 2112;
              v61 = albumTitle;
              v62 = 2112;
              v63 = dataSourceIdentifier4;
              _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Skipping partial asset that is not entirely local (cacheID: %@, assetID: %@, title: %@ ds:%@)", buf, 0x2Au);

              v13 = v42;
              v12 = v44;
              goto LABEL_26;
            }
          }

          v19 = v45;
          goto LABEL_26;
        }

LABEL_27:

        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [allValues countByEnumeratingWithState:&v51 objects:v64 count:16];
    }

    while (v12);
  }
}

- (void)dq_processAndCacheBookletItem:(id)item parentItem:(id)parentItem dataSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  parentItemCopy = parentItem;
  itemCopy = item;
  v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [itemCopy storeItemID]);
  v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [itemCopy fileSize]);
  v12 = [BKLibrarySupplementalAsset alloc];
  stringValue = [v18 stringValue];
  name = [itemCopy name];
  redownloadParams = [itemCopy redownloadParams];

  v16 = [(BKLibrarySupplementalAsset *)v12 initWithParentAsset:parentItemCopy dataSourceIdentifier:identifierCopy storeID:stringValue title:name downloadParams:redownloadParams size:v11];
  bookletAssetCache = [(BKMediaLibraryCache *)self bookletAssetCache];
  [bookletAssetCache addBookletAsset:v16];
}

- (void)_mediaLibraryDidChange:(id)change
{
  dispatchQueue = [(BKMediaLibraryCache *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001854BC;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)dq_processChangesSince:(id)since completion:(id)completion
{
  sinceCopy = since;
  completionCopy = completion;
  v6 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1007922C4();
  }

  v7 = [BKMediaLibraryChangeCollector alloc];
  cloudAssetCache = [(BKMediaLibraryCache *)self cloudAssetCache];
  v9 = [(BKMediaLibraryChangeCollector *)v7 initWithAssetCache:cloudAssetCache];

  v10 = [BKMediaLibraryChangeCollector alloc];
  localAssetCache = [(BKMediaLibraryCache *)self localAssetCache];
  v12 = [(BKMediaLibraryChangeCollector *)v10 initWithAssetCache:localAssetCache];

  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = sub_100027470;
  v68 = sub_100027670;
  v69 = 0;
  v13 = +[NSMutableArray array];
  v14 = +[NSMutableArray array];
  v15 = +[MPMediaLibrary defaultMediaLibrary];
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_100186570;
  v61[3] = &unk_100A09838;
  v61[4] = self;
  v16 = v13;
  v62 = v16;
  v63 = &v64;
  [v15 enumerateEntityChangesAfterSyncAnchor:sinceCopy usingBlock:v61];
  v36 = v15;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v16;
  v17 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
  if (v17)
  {
    v18 = *v58;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v58 != v18)
        {
          objc_enumerationMutation(obj);
        }

        [(BKMediaLibraryCache *)self dq_processEntity:*(*(&v57 + 1) + 8 * i) cloudChangeCollector:v9 localChangeCollector:v12];
      }

      v17 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
    }

    while (v17);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v43 = v14;
  v20 = [v43 countByEnumeratingWithState:&v53 objects:v72 count:16];
  if (v20)
  {
    v21 = *v54;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v54 != v21)
        {
          objc_enumerationMutation(v43);
        }

        [(BKMediaLibraryCache *)self dq_processEntity:*(*(&v53 + 1) + 8 * j) cloudChangeCollector:v9 localChangeCollector:v12];
      }

      v20 = [v43 countByEnumeratingWithState:&v53 objects:v72 count:16];
    }

    while (v20);
  }

  v23 = +[MPMediaQuery bk_audiobooksQuery];
  [v23 setIgnoreSystemFilterPredicates:1];
  v37 = v23;
  if (v23)
  {
    [v23 setGroupingType:1];
    [v23 collections];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v40 = v50 = 0u;
    v24 = [v40 countByEnumeratingWithState:&v49 objects:v71 count:16];
    if (v24)
    {
      v41 = *v50;
      do
      {
        v42 = v24;
        for (k = 0; k != v42; k = k + 1)
        {
          if (*v50 != v41)
          {
            objc_enumerationMutation(v40);
          }

          v26 = *(*(&v49 + 1) + 8 * k);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          items = [v26 items];
          v28 = [items countByEnumeratingWithState:&v45 objects:v70 count:16];
          if (v28)
          {
            v29 = *v46;
            do
            {
              for (m = 0; m != v28; m = m + 1)
              {
                if (*v46 != v29)
                {
                  objc_enumerationMutation(items);
                }

                v31 = *(*(&v45 + 1) + 8 * m);
                v32 = [(BKMediaLibraryCache *)self _cacheID:v31];
                if ([v31 bk_isJaliscoAsset])
                {
                  [(BKMediaLibraryChangeCollector *)v9 afterChangesCacheIDSet];
                }

                else
                {
                  [(BKMediaLibraryChangeCollector *)v12 afterChangesCacheIDSet];
                }
                v33 = ;
                [v33 addObject:v32];
              }

              v28 = [items countByEnumeratingWithState:&v45 objects:v70 count:16];
            }

            while (v28);
          }
        }

        v24 = [v40 countByEnumeratingWithState:&v49 objects:v71 count:16];
      }

      while (v24);
    }

    [(BKMediaLibraryChangeCollector *)v9 finalizeChangeProcessing];
    [(BKMediaLibraryChangeCollector *)v12 finalizeChangeProcessing];
  }

  if (v65[5])
  {
    [(BKMediaLibraryCache *)self _recordSyncAnchor:?];
  }

  v34 = objc_retainBlock(completionCopy);
  v35 = v34;
  if (v34)
  {
    (*(v34 + 2))(v34, v9, v12, 0);
  }

  _Block_object_dispose(&v64, 8);
}

- (void)dq_processEntity:(id)entity cloudChangeCollector:(id)collector localChangeCollector:(id)changeCollector
{
  entityCopy = entity;
  collectorCopy = collector;
  changeCollectorCopy = changeCollector;
  entity = [entityCopy entity];
  objc_opt_class();
  v12 = BUDynamicCast();
  objc_opt_class();
  v13 = BUDynamicCast();
  v14 = v13;
  if (v12)
  {
    representativeItem = [v12 representativeItem];
  }

  else
  {
    representativeItem = v13;
  }

  v16 = representativeItem;
  if (representativeItem)
  {
    v17 = [(BKMediaLibraryCache *)self _cacheID:representativeItem];
    if ([v16 bk_isJaliscoAsset])
    {
      v18 = collectorCopy;
    }

    else
    {
      v18 = changeCollectorCopy;
    }

    v19 = v18;
    if (![v17 longLongValue])
    {
      v23 = BKLibraryDataSourceMediaLibraryLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1007926C4(v23);
      }

      goto LABEL_26;
    }

    v37 = -[BKMediaLibraryCache dq_assetFromCacheID:cloudAsset:](self, "dq_assetFromCacheID:cloudAsset:", v17, [v16 bk_isJaliscoAsset]);
    v38 = v19;
    if ([entityCopy deletionType])
    {
      updated = [v19 updated];
      v21 = [updated objectForKeyedSubscript:v17];

      if (v21)
      {
        updated2 = BKLibraryDataSourceMediaLibraryLog();
        v23 = v37;
        if (os_log_type_enabled(updated2, OS_LOG_TYPE_DEBUG))
        {
          sub_10079232C();
        }
      }

      else
      {
        updated2 = BKLibraryDataSourceMediaLibraryLog();
        v26 = os_log_type_enabled(updated2, OS_LOG_TYPE_DEBUG);
        v23 = v37;
        if (v37)
        {
          if (v26)
          {
            sub_100792394();
          }

          updated2 = [v38 updated];
          [updated2 setObject:v37 forKeyedSubscript:v17];
        }

        else if (v26)
        {
          sub_100792438();
        }
      }

      goto LABEL_25;
    }

    v36 = collectorCopy;
    added = [v19 added];
    v25 = [added objectForKeyedSubscript:v17];
    if (v25)
    {
    }

    else
    {
      updated3 = [v19 updated];
      v27 = [updated3 objectForKeyedSubscript:v17];

      if (!v27)
      {
        assetCache = [v38 assetCache];
        dataSourceIdentifier = [assetCache dataSourceIdentifier];
        updated2 = [BKMediaLibraryAsset newAssetFromRepresentativeMediaItem:v16 withDataSourceIdentifier:dataSourceIdentifier];

        collectorCopy = v36;
        if (updated2)
        {
          v34 = BKLibraryDataSourceMediaLibraryLog();
          v29 = os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);
          if (v37)
          {
            if (v29)
            {
              sub_100792508();
            }

            updated4 = [v38 updated];
          }

          else
          {
            if (v29)
            {
              sub_1007925AC();
            }

            updated4 = [v38 added];
          }

          [updated4 setObject:updated2 forKeyedSubscript:{v17, updated4}];

          [(BKMediaLibraryCache *)self dq_cacheAsset:updated2 cacheID:v17];
        }

        else
        {
          v31 = BKLibraryDataSourceMediaLibraryLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_100792650();
          }
        }

        goto LABEL_24;
      }
    }

    updated2 = BKLibraryDataSourceMediaLibraryLog();
    collectorCopy = v36;
    if (os_log_type_enabled(updated2, OS_LOG_TYPE_DEBUG))
    {
      sub_1007924A0();
    }

LABEL_24:
    v23 = v37;
LABEL_25:

    v19 = v38;
LABEL_26:
  }
}

- (BOOL)_processAudiobookCollection:(id)collection fromMediaLibraryChangedNotification:(BOOL)notification
{
  notificationCopy = notification;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  collectionCopy = collection;
  v7 = [collectionCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    v10 = MPMediaItemPropertyIsLocal;
    v11 = !notificationCopy;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(collectionCopy);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if (([v13 bk_isJaliscoAsset] & 1) == 0)
        {
          v14 = [v13 valueForProperty:v10];
          if (v14)
          {
            v15 = v14;
            bOOLValue = [v14 BOOLValue];
            if (((bOOLValue | v11) & 1) == 0)
            {
              coalescedReload = [(BKMediaLibraryCache *)self coalescedReload];
              [coalescedReload signalWithCompletion:&stru_100A09858];

LABEL_14:
              v18 = 0;
              goto LABEL_15;
            }

            v17 = bOOLValue;

            if (!v17)
            {
              goto LABEL_14;
            }
          }
        }
      }

      v8 = [collectionCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_15:

  return v18;
}

- (void)_recordSyncAnchor:(id)anchor
{
  anchorCopy = anchor;
  v4 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100792708();
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setObject:anchorCopy forKey:@"LibraryDataSourceMediaLibrary.SyncAnchor"];
}

- (void)_recordSyncValidity:(id)validity
{
  validityCopy = validity;
  v4 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100792770();
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setObject:validityCopy forKey:@"LibraryDataSourceMediaLibrary.SyncValidity"];
}

- (id)_cacheID:(id)d
{
  dCopy = d;
  bk_storeID = [dCopy bk_storeID];
  if (![bk_storeID longLongValue])
  {
    objc_opt_class();
    v5 = [dCopy valueForProperty:MPMediaItemPropertyAlbumPersistentID];
    v6 = BUDynamicCast();

    bk_storeID = v6;
  }

  return bk_storeID;
}

- (id)dq_assetFromCacheID:(id)d cloudAsset:(BOOL)asset
{
  dCopy = d;
  if (asset)
  {
    [(BKMediaLibraryCache *)self cloudAssetCache];
  }

  else
  {
    [(BKMediaLibraryCache *)self localAssetCache];
  }
  v7 = ;
  v8 = [v7 assetFromCacheID:dCopy];

  return v8;
}

- (void)dq_cacheAsset:(id)asset cacheID:(id)d
{
  dCopy = d;
  assetCopy = asset;
  if ([assetCopy isCloudAsset])
  {
    [(BKMediaLibraryCache *)self cloudAssetCache];
  }

  else
  {
    [(BKMediaLibraryCache *)self localAssetCache];
  }
  v8 = ;
  [v8 cacheAsset:assetCopy cacheID:dCopy];
}

- (void)dq_uncacheAsset:(id)asset cacheID:(id)d
{
  dCopy = d;
  assetCopy = asset;
  if ([assetCopy isCloudAsset])
  {
    [(BKMediaLibraryCache *)self cloudAssetCache];
  }

  else
  {
    [(BKMediaLibraryCache *)self localAssetCache];
  }
  v8 = ;
  [v8 uncacheAsset:assetCopy cacheID:dCopy];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  localAssetCache = [(BKMediaLibraryCache *)self localAssetCache];
  cloudAssetCache = [(BKMediaLibraryCache *)self cloudAssetCache];
  v7 = [NSString stringWithFormat:@"<%@(%p) localAudiobookCache=%@ cloudAudiobookCache=%@>", v4, self, localAssetCache, cloudAssetCache];

  return v7;
}

@end