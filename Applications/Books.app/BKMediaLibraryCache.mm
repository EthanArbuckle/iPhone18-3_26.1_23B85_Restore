@interface BKMediaLibraryCache
+ (BKMediaLibraryCache)sharedCache;
- (BKMediaLibraryCache)init;
- (BOOL)_processAudiobookCollection:(id)a3 fromMediaLibraryChangedNotification:(BOOL)a4;
- (id)_assetCacheForType:(unint64_t)a3;
- (id)_cacheID:(id)a3;
- (id)_calcSyncAnchor;
- (id)_syncAnchor;
- (id)_syncValidity;
- (id)allBookletAssetIDs;
- (id)description;
- (id)dq_assetFromCacheID:(id)a3 cloudAsset:(BOOL)a4;
- (void)_mediaLibraryDidChange:(id)a3;
- (void)_notifyObserversOfReload:(id)a3;
- (void)_recordSyncAnchor:(id)a3;
- (void)_recordSyncValidity:(id)a3;
- (void)addObserver:(id)a3;
- (void)assetForLibraryAsset:(id)a3 type:(unint64_t)a4 completion:(id)a5;
- (void)bookCoverForLibraryAssetProperties:(id)a3 type:(unint64_t)a4 completion:(id)a5;
- (void)deleteAssets:(id)a3 type:(unint64_t)a4 exhaustive:(BOOL)a5 completion:(id)a6;
- (void)dq_cacheAsset:(id)a3 cacheID:(id)a4;
- (void)dq_cacheAssetsFromSubCollection:(id)a3 assetCache:(id)a4 includeBooklets:(BOOL)a5;
- (void)dq_performInitialFetch;
- (void)dq_processAndCacheBookletItem:(id)a3 parentItem:(id)a4 dataSourceIdentifier:(id)a5;
- (void)dq_processChangesSince:(id)a3 completion:(id)a4;
- (void)dq_processEntity:(id)a3 cloudChangeCollector:(id)a4 localChangeCollector:(id)a5;
- (void)dq_uncacheAllAssets;
- (void)dq_uncacheAsset:(id)a3 cacheID:(id)a4;
- (void)fetchAssetIDsOfType:(unint64_t)a3 includeBooklets:(BOOL)a4 completion:(id)a5;
- (void)fetchAssetsOfType:(unint64_t)a3 includeBooklets:(BOOL)a4 completion:(id)a5;
- (void)fetchAssetsWithIDs:(id)a3 type:(unint64_t)a4 completion:(id)a5;
- (void)fetchAssetsWithIDs:(id)a3 type:(unint64_t)a4 includeBooklets:(BOOL)a5 completion:(id)a6;
- (void)removeObserver:(id)a3;
@end

@implementation BKMediaLibraryCache

+ (BKMediaLibraryCache)sharedCache
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000167B8;
  block[3] = &unk_100A03560;
  block[4] = a1;
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
  v5 = [v4 _syncValidity];
  [(BKMediaLibraryCache *)self _recordSyncValidity:v5];
  [(BKMediaLibraryCache *)self dq_uncacheAllAssets];
  v6 = +[MPMediaQuery bk_audiobooksQuery];
  [v6 setIgnoreSystemFilterPredicates:1];
  if (v6)
  {
    v31 = v5;
    v32 = v4;
    v7 = +[MPMediaLibrary defaultMediaLibrary];
    [v6 setGroupingType:1];
    v29 = v7;
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 currentEntityRevision]);
    v28 = [v8 stringValue];

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
      v35 = self;
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
          v13 = [v10 bk_items];
          v14 = [v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
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
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v38 + 1) + 8 * i);
                v19 = [v18 bk_storeID];
                v20 = v19;
                v21 = &off_100A436E0;
                if (v19)
                {
                  v21 = v19;
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

              v15 = [v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v15);
          }

          self = v35;
          v26 = [(BKMediaLibraryCache *)v35 cloudAssetCache];
          [(BKMediaLibraryCache *)v35 dq_cacheAssetsFromSubCollection:v11 assetCache:v26 includeBooklets:1];

          v27 = [(BKMediaLibraryCache *)v35 localAssetCache];
          [(BKMediaLibraryCache *)v35 dq_cacheAssetsFromSubCollection:v12 assetCache:v27 includeBooklets:0];

          v9 = v37 + 1;
        }

        while ((v37 + 1) != v36);
        v36 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v36);
    }

    v5 = v31;
    v4 = v32;
    v6 = v30;
    if (v28)
    {
      [(BKMediaLibraryCache *)self _recordSyncAnchor:v28];
    }
  }

  kdebug_trace();
}

- (void)dq_uncacheAllAssets
{
  v3 = [(BKMediaLibraryCache *)self localAssetCache];
  [v3 uncacheAllAssets];

  v4 = [(BKMediaLibraryCache *)self cloudAssetCache];
  [v4 uncacheAllAssets];
}

- (id)_calcSyncAnchor
{
  v3 = +[MPMediaLibrary defaultMediaLibrary];
  v4 = [(BKMediaLibraryCache *)self _syncValidity];
  v5 = [v3 _syncValidity];
  v6 = v5;
  if (v4 && v5 && ![v5 compare:v4])
  {
    v10 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10079286C();
    }

    v8 = [(BKMediaLibraryCache *)self _syncAnchor];
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

    v8 = @"0";
  }

  return v8;
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

- (id)_assetCacheForType:(unint64_t)a3
{
  if (a3 == 1)
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

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BKMediaLibraryCache *)self dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100183CA4;
    v6[3] = &unk_100A03440;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BKMediaLibraryCache *)self dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100183DB0;
    v6[3] = &unk_100A03440;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)fetchAssetIDsOfType:(unint64_t)a3 includeBooklets:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  dispatchQueue = self->_dispatchQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100183F00;
  v11[3] = &unk_100A09798;
  v12 = v8;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v10 = v8;
  dispatch_async(dispatchQueue, v11);
}

- (id)allBookletAssetIDs
{
  v2 = [(BKMediaLibraryCache *)self bookletAssetCache];
  v3 = [v2 allBookletAssetIDs];

  return v3;
}

- (void)fetchAssetsWithIDs:(id)a3 type:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10018413C;
  v13[3] = &unk_100A06CD8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

- (void)fetchAssetsWithIDs:(id)a3 type:(unint64_t)a4 includeBooklets:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001842A4;
  block[3] = &unk_100A097C0;
  block[4] = self;
  v16 = v10;
  v19 = a5;
  v17 = v11;
  v18 = a4;
  v13 = v11;
  v14 = v10;
  dispatch_async(dispatchQueue, block);
}

- (void)fetchAssetsOfType:(unint64_t)a3 includeBooklets:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  dispatchQueue = self->_dispatchQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001845A8;
  v11[3] = &unk_100A09798;
  v12 = v8;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v10 = v8;
  dispatch_async(dispatchQueue, v11);
}

- (void)bookCoverForLibraryAssetProperties:(id)a3 type:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001847A4;
  v13[3] = &unk_100A06CD8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

- (void)deleteAssets:(id)a3 type:(unint64_t)a4 exhaustive:(BOOL)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [a3 valueForKey:@"assetID"];
  v12 = [v11 bu_arrayByRemovingNSNulls];
  v13 = v12;
  v14 = &__NSArray0__struct;
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018491C;
  block[3] = &unk_100A097C0;
  block[4] = self;
  v20 = v15;
  v23 = a5;
  v21 = v10;
  v22 = a4;
  v17 = v10;
  v18 = v15;
  dispatch_async(dispatchQueue, block);
}

- (void)assetForLibraryAsset:(id)a3 type:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 assetID];
  v11 = v10;
  v12 = &stru_100A30A68;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [v9 storeID];
  v15 = [v9 isSupplementalContent];

  dispatchQueue = self->_dispatchQueue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100184AB8;
  v20[3] = &unk_100A097E8;
  v25 = v15;
  v20[4] = self;
  v21 = v14;
  v23 = v8;
  v24 = a4;
  v22 = v13;
  v17 = v13;
  v18 = v8;
  v19 = v14;
  dispatch_async(dispatchQueue, v20);
}

- (void)_notifyObserversOfReload:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  v6 = [(BKMediaLibraryCache *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100184CA8;
  block[3] = &unk_100A03440;
  block[4] = self;
  v13 = v5;
  v7 = v5;
  dispatch_async(v6, block);

  v8 = [(BKMediaLibraryCache *)self dispatchQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100184E24;
  v10[3] = &unk_100A03920;
  v11 = v4;
  v9 = v4;
  dispatch_group_notify(v7, v8, v10);
}

- (void)dq_cacheAssetsFromSubCollection:(id)a3 assetCache:(id)a4 includeBooklets:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v9 = [a3 allValues];
  v10 = [v9 countByEnumeratingWithState:&v51 objects:v64 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v52;
    v43 = MPMediaItemPropertyBooklets;
    *&v11 = 138412290;
    v38 = v11;
    v42 = *v52;
    v41 = v5;
    v40 = v9;
    do
    {
      v14 = 0;
      v44 = v12;
      do
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v51 + 1) + 8 * v14);
        v16 = [v15 items];
        v17 = [v16 firstObject];

        v18 = [(BKMediaLibraryCache *)self _cacheID:v17];
        v19 = v18;
        if (v18)
        {
          v45 = v18;
          v20 = [v15 items];
          v21 = [(BKMediaLibraryCache *)self _processAudiobookCollection:v20 fromMediaLibraryChangedNotification:0];

          v46 = v17;
          if (v21)
          {
            v22 = [v8 dataSourceIdentifier];
            v23 = [BKMediaLibraryAsset newAssetFromRepresentativeMediaItem:v17 withDataSourceIdentifier:v22];

            v24 = BKLibraryDataSourceMediaLibraryLog();
            v25 = v24;
            if (v23)
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                v39 = [v23 assetID];
                v35 = [v23 title];
                v36 = [v23 dataSourceIdentifier];
                *buf = 138413058;
                v57 = v45;
                v58 = 2112;
                v59 = v39;
                v60 = 2112;
                v61 = v35;
                v62 = 2112;
                v63 = v36;
                v37 = v36;
                _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "item added on fetch (cacheID: %@, assetID: %@, title: %@ ds:%@)", buf, 0x2Au);

                v12 = v44;
              }

              v19 = v45;
              [(BKMediaLibraryCache *)self dq_cacheAsset:v23 cacheID:v45];
              if (v5)
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
                      v31 = [v8 dataSourceIdentifier];
                      [(BKMediaLibraryCache *)self dq_processAndCacheBookletItem:v30 parentItem:v23 dataSourceIdentifier:v31];
                    }

                    v27 = [v25 countByEnumeratingWithState:&v47 objects:v55 count:16];
                  }

                  while (v27);
                  v5 = v41;
                  v9 = v40;
                  v13 = v42;
                  v12 = v44;
                }

                goto LABEL_24;
              }

LABEL_26:

              v17 = v46;
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
              v32 = [v46 bk_assetID];
              v33 = [v46 albumTitle];
              v34 = [v8 dataSourceIdentifier];
              *buf = 138413058;
              v19 = v45;
              v57 = v45;
              v58 = 2112;
              v59 = v32;
              v60 = 2112;
              v61 = v33;
              v62 = 2112;
              v63 = v34;
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
      v12 = [v9 countByEnumeratingWithState:&v51 objects:v64 count:16];
    }

    while (v12);
  }
}

- (void)dq_processAndCacheBookletItem:(id)a3 parentItem:(id)a4 dataSourceIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 storeItemID]);
  v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 fileSize]);
  v12 = [BKLibrarySupplementalAsset alloc];
  v13 = [v18 stringValue];
  v14 = [v10 name];
  v15 = [v10 redownloadParams];

  v16 = [(BKLibrarySupplementalAsset *)v12 initWithParentAsset:v9 dataSourceIdentifier:v8 storeID:v13 title:v14 downloadParams:v15 size:v11];
  v17 = [(BKMediaLibraryCache *)self bookletAssetCache];
  [v17 addBookletAsset:v16];
}

- (void)_mediaLibraryDidChange:(id)a3
{
  v4 = [(BKMediaLibraryCache *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001854BC;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)dq_processChangesSince:(id)a3 completion:(id)a4
{
  v39 = a3;
  v38 = a4;
  v6 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1007922C4();
  }

  v7 = [BKMediaLibraryChangeCollector alloc];
  v8 = [(BKMediaLibraryCache *)self cloudAssetCache];
  v9 = [(BKMediaLibraryChangeCollector *)v7 initWithAssetCache:v8];

  v10 = [BKMediaLibraryChangeCollector alloc];
  v11 = [(BKMediaLibraryCache *)self localAssetCache];
  v12 = [(BKMediaLibraryChangeCollector *)v10 initWithAssetCache:v11];

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
  [v15 enumerateEntityChangesAfterSyncAnchor:v39 usingBlock:v61];
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
          v27 = [v26 items];
          v28 = [v27 countByEnumeratingWithState:&v45 objects:v70 count:16];
          if (v28)
          {
            v29 = *v46;
            do
            {
              for (m = 0; m != v28; m = m + 1)
              {
                if (*v46 != v29)
                {
                  objc_enumerationMutation(v27);
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

              v28 = [v27 countByEnumeratingWithState:&v45 objects:v70 count:16];
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

  v34 = objc_retainBlock(v38);
  v35 = v34;
  if (v34)
  {
    (*(v34 + 2))(v34, v9, v12, 0);
  }

  _Block_object_dispose(&v64, 8);
}

- (void)dq_processEntity:(id)a3 cloudChangeCollector:(id)a4 localChangeCollector:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 entity];
  objc_opt_class();
  v12 = BUDynamicCast();
  objc_opt_class();
  v13 = BUDynamicCast();
  v14 = v13;
  if (v12)
  {
    v15 = [v12 representativeItem];
  }

  else
  {
    v15 = v13;
  }

  v16 = v15;
  if (v15)
  {
    v17 = [(BKMediaLibraryCache *)self _cacheID:v15];
    if ([v16 bk_isJaliscoAsset])
    {
      v18 = v9;
    }

    else
    {
      v18 = v10;
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
    if ([v8 deletionType])
    {
      v20 = [v19 updated];
      v21 = [v20 objectForKeyedSubscript:v17];

      if (v21)
      {
        v22 = BKLibraryDataSourceMediaLibraryLog();
        v23 = v37;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          sub_10079232C();
        }
      }

      else
      {
        v22 = BKLibraryDataSourceMediaLibraryLog();
        v26 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
        v23 = v37;
        if (v37)
        {
          if (v26)
          {
            sub_100792394();
          }

          v22 = [v38 updated];
          [v22 setObject:v37 forKeyedSubscript:v17];
        }

        else if (v26)
        {
          sub_100792438();
        }
      }

      goto LABEL_25;
    }

    v36 = v9;
    v24 = [v19 added];
    v25 = [v24 objectForKeyedSubscript:v17];
    if (v25)
    {
    }

    else
    {
      v32 = [v19 updated];
      v27 = [v32 objectForKeyedSubscript:v17];

      if (!v27)
      {
        v28 = [v38 assetCache];
        v33 = [v28 dataSourceIdentifier];
        v22 = [BKMediaLibraryAsset newAssetFromRepresentativeMediaItem:v16 withDataSourceIdentifier:v33];

        v9 = v36;
        if (v22)
        {
          v34 = BKLibraryDataSourceMediaLibraryLog();
          v29 = os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);
          if (v37)
          {
            if (v29)
            {
              sub_100792508();
            }

            v30 = [v38 updated];
          }

          else
          {
            if (v29)
            {
              sub_1007925AC();
            }

            v30 = [v38 added];
          }

          [v30 setObject:v22 forKeyedSubscript:{v17, v30}];

          [(BKMediaLibraryCache *)self dq_cacheAsset:v22 cacheID:v17];
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

    v22 = BKLibraryDataSourceMediaLibraryLog();
    v9 = v36;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
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

- (BOOL)_processAudiobookCollection:(id)a3 fromMediaLibraryChangedNotification:(BOOL)a4
{
  v4 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    v10 = MPMediaItemPropertyIsLocal;
    v11 = !v4;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if (([v13 bk_isJaliscoAsset] & 1) == 0)
        {
          v14 = [v13 valueForProperty:v10];
          if (v14)
          {
            v15 = v14;
            v16 = [v14 BOOLValue];
            if (((v16 | v11) & 1) == 0)
            {
              v19 = [(BKMediaLibraryCache *)self coalescedReload];
              [v19 signalWithCompletion:&stru_100A09858];

LABEL_14:
              v18 = 0;
              goto LABEL_15;
            }

            v17 = v16;

            if (!v17)
            {
              goto LABEL_14;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (void)_recordSyncAnchor:(id)a3
{
  v3 = a3;
  v4 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100792708();
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setObject:v3 forKey:@"LibraryDataSourceMediaLibrary.SyncAnchor"];
}

- (void)_recordSyncValidity:(id)a3
{
  v3 = a3;
  v4 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100792770();
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setObject:v3 forKey:@"LibraryDataSourceMediaLibrary.SyncValidity"];
}

- (id)_cacheID:(id)a3
{
  v3 = a3;
  v4 = [v3 bk_storeID];
  if (![v4 longLongValue])
  {
    objc_opt_class();
    v5 = [v3 valueForProperty:MPMediaItemPropertyAlbumPersistentID];
    v6 = BUDynamicCast();

    v4 = v6;
  }

  return v4;
}

- (id)dq_assetFromCacheID:(id)a3 cloudAsset:(BOOL)a4
{
  v6 = a3;
  if (a4)
  {
    [(BKMediaLibraryCache *)self cloudAssetCache];
  }

  else
  {
    [(BKMediaLibraryCache *)self localAssetCache];
  }
  v7 = ;
  v8 = [v7 assetFromCacheID:v6];

  return v8;
}

- (void)dq_cacheAsset:(id)a3 cacheID:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v7 isCloudAsset])
  {
    [(BKMediaLibraryCache *)self cloudAssetCache];
  }

  else
  {
    [(BKMediaLibraryCache *)self localAssetCache];
  }
  v8 = ;
  [v8 cacheAsset:v7 cacheID:v6];
}

- (void)dq_uncacheAsset:(id)a3 cacheID:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v7 isCloudAsset])
  {
    [(BKMediaLibraryCache *)self cloudAssetCache];
  }

  else
  {
    [(BKMediaLibraryCache *)self localAssetCache];
  }
  v8 = ;
  [v8 uncacheAsset:v7 cacheID:v6];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BKMediaLibraryCache *)self localAssetCache];
  v6 = [(BKMediaLibraryCache *)self cloudAssetCache];
  v7 = [NSString stringWithFormat:@"<%@(%p) localAudiobookCache=%@ cloudAudiobookCache=%@>", v4, self, v5, v6];

  return v7;
}

@end