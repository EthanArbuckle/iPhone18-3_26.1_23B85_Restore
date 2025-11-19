@interface CollectionManager
+ (id)sharedManager;
- (CollectionHandler)allPlacesCollection;
- (CollectionHandler)favoriteCollection;
- (CollectionManager)init;
- (NSArray)currentCollectionsForCarPlay;
- (NSArray)currentCollectionsForPicker;
- (NSArray)currentCollectionsForToolbarMenu;
- (NSArray)currentCollectionsForWatchHome;
- (id)_asMapsSyncObjectOrNil:(id)a3;
- (id)collectionForFavoritesType:(int64_t)a3;
- (id)collectionWithIdentifier:(id)a3;
- (id)collectionsContainingMapItem:(id)a3;
- (id)collectionsForAddingMapItems;
- (id)collectionsNotContainingMapItem:(id)a3;
- (id)firstUserGuideContainingMapItem:(id)a3 requiresOrdering:(BOOL)a4;
- (id)lookupMapItem:(id)a3;
- (id)newTraits;
- (id)orderedCollectionsExcludingAllPlacesCollection;
- (unint64_t)displayCountForCollectionsInLibrary;
- (void)_fetchCollectionsWithCompletion:(id)a3;
- (void)_scheduleFetch;
- (void)_updateContent;
- (void)createCollection:(id)a3 completion:(id)a4;
- (void)curatedCollectionSyncManagerDidUpdateCachedCollections:(id)a3;
- (void)dealloc;
- (void)deleteCollection:(id)a3 completion:(id)a4;
- (void)deleteCollections:(id)a3 completion:(id)a4;
- (void)saveCollection:(id)a3 completion:(id)a4;
- (void)touchCollection:(id)a3;
@end

@implementation CollectionManager

+ (id)sharedManager
{
  if (qword_10195EB88 != -1)
  {
    dispatch_once(&qword_10195EB88, &stru_10164DB90);
  }

  v3 = qword_10195EB80;

  return v3;
}

- (void)_scheduleFetch
{
  v4 = [(MapsThrottler *)self->_fetchThrottler value];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 BOOLValue] ^ 1);
  [(MapsThrottler *)self->_fetchThrottler setValue:v3];
}

- (CollectionManager)init
{
  v32.receiver = self;
  v32.super_class = CollectionManager;
  v2 = [(CollectionManager *)&v32 init];
  if (v2)
  {
    v3 = sub_10000BDA4();
    v4 = os_signpost_id_generate(v3);

    v5 = sub_10000BDA4();
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Initialization", "", buf, 2u);
    }

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("CollectionManager.updateContent", v7);
    updateContentQueue = v2->_updateContentQueue;
    v2->_updateContentQueue = v8;

    v10 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___CollectionManagerObserver queue:0];
    observers = v2->_observers;
    v2->_observers = v10;

    v12 = +[NSMutableArray array];
    currentContents = v2->_currentContents;
    v2->_currentContents = v12;

    v14 = objc_alloc_init(CollectionOrderStorage);
    orderStorage = v2->_orderStorage;
    v2->_orderStorage = v14;

    v16 = objc_alloc_init(CollectionOrderStorage);
    v17 = v2->_orderStorage;
    v2->_orderStorage = v16;

    v18 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    [v18 subscribe:v2];

    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v33[2] = objc_opt_class();
    v33[3] = objc_opt_class();
    v33[4] = objc_opt_class();
    v19 = [NSArray arrayWithObjects:v33 count:5];
    storeSubscriptionTypes = v2->storeSubscriptionTypes;
    v2->storeSubscriptionTypes = v19;

    objc_initWeak(buf, v2);
    v21 = [MapsThrottler alloc];
    v22 = v2->_updateContentQueue;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000F9AC;
    v29[3] = &unk_101656988;
    objc_copyWeak(&v30, buf);
    v23 = [(MapsThrottler *)v21 initWithInitialValue:&__kCFBooleanTrue throttlingInterval:v22 queue:v29 updateHandler:0.0];
    fetchThrottler = v2->_fetchThrottler;
    v2->_fetchThrottler = v23;

    [(CollectionManager *)v2 _scheduleFetch];
    v25 = sub_10000BDA4();
    v26 = v25;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *v28 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, v4, "Initialization", "", v28, 2u);
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  return v2;
}

- (void)_updateContent
{
  v3 = sub_10000BDA4();
  v4 = os_signpost_id_generate(v3);

  v5 = sub_10000BDA4();
  v6 = v5;
  spid = v4;
  v53 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "UpdateContent", "", buf, 2u);
  }

  v7 = sub_10000BDA4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(CollectionManager *)self queryContents];
    *buf = 138412290;
    v87 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[MCM] _updateContent %@", buf, 0xCu);
  }

  v59 = [(NSMutableArray *)self->_currentContents mutableCopy];
  v56 = [&__NSArray0__struct mutableCopy];
  v9 = [(CollectionManager *)self favoriteCollection];
  v54 = [(CollectionManager *)self allPlacesCollection];
  if (v9)
  {
    [(NSMutableArray *)self->_currentContents removeObject:v9];
  }

  if (v54)
  {
    [(NSMutableArray *)self->_currentContents removeObject:?];
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = [(CollectionManager *)self queryContents];
  v10 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
  v62 = self;
  v52 = v9;
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v78;
    v55 = *v78;
    while (2)
    {
      v14 = 0;
      v57 = v11;
      do
      {
        if (*v78 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v77 + 1) + 8 * v14);
        v16 = [v15 identifier];
        v17 = [v16 UUIDString];

        v18 = [v15 placesCount];
        if ([v15 isLegacyFavoritesCollection])
        {
          v19 = v18 == 0;
        }

        else
        {
          v19 = 0;
        }

        if (!v19)
        {
          if (!v17)
          {
            v28 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
            v84 = v15;
            v29 = [NSArray arrayWithObjects:&v84 count:1];
            [v28 deleteWithObjects:v29 error:0];

            goto LABEL_36;
          }

          v63 = v12;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v20 = self->_currentContents;
          v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v73 objects:v83 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v74;
            while (2)
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v74 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v73 + 1) + 8 * i);
                v26 = [v25 identifier];
                v27 = [v17 isEqualToString:v26];

                if (v27)
                {
                  [v59 removeObject:v25];
                  [v25 updateWithMapsSyncCollection:v15];
                  self = v62;
                  goto LABEL_30;
                }
              }

              v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v73 objects:v83 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          v20 = [CollectionHandler collectionWithMapsSyncCollection:v15];
          self = v62;
          [(NSMutableArray *)v20 setCollectionOperation:v62];
          [v56 addObject:v20];
LABEL_30:
          v12 = (v63 + 1);

          v13 = v55;
          v11 = v57;
        }

        v14 = v14 + 1;
      }

      while (v14 != v11);
      v11 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_36:

  v30 = +[GEOAPSharedStateData sharedData];
  [v30 setMapFeaturePersonalCollectionsCount:v12];

  v31 = +[CuratedCollectionSyncManager sharedManager];
  v32 = [v31 cachedCuratedCollections];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v58 = v32;
  v64 = [v58 countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v64)
  {
    obja = *v70;
    do
    {
      for (j = 0; j != v64; j = j + 1)
      {
        if (*v70 != obja)
        {
          objc_enumerationMutation(v58);
        }

        v34 = *(*(&v69 + 1) + 8 * j);
        v35 = [v34 identifier];
        v36 = [v35 UUIDString];

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v37 = self->_currentContents;
        v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v65 objects:v81 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v66;
          while (2)
          {
            for (k = 0; k != v39; k = k + 1)
            {
              if (*v66 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v65 + 1) + 8 * k);
              v43 = [v42 identifier];
              v44 = [v36 isEqualToString:v43];

              if (v44)
              {
                [v59 removeObject:v42];
                [v42 updateWithMapsSyncCachedCuratedCollection:v34];
                self = v62;
                goto LABEL_51;
              }
            }

            v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v65 objects:v81 count:16];
            if (v39)
            {
              continue;
            }

            break;
          }
        }

        v37 = [CollectionHandler collectionWithMapsSyncCachedCuratedCollection:v34];
        self = v62;
        [(NSMutableArray *)v37 setCollectionOperation:v62];
        [v56 addObject:v37];
LABEL_51:
      }

      v64 = [v58 countByEnumeratingWithState:&v69 objects:v82 count:16];
    }

    while (v64);
  }

  [(NSMutableArray *)self->_currentContents removeObjectsInArray:v59];
  [(NSMutableArray *)self->_currentContents addObjectsFromArray:v56];
  v45 = sub_10000BDA4();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    currentContents = self->_currentContents;
    *buf = 138412290;
    v87 = currentContents;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "[MCM] _updateContent (updated) %@", buf, 0xCu);
  }

  if (v52)
  {
    [(NSMutableArray *)self->_currentContents insertObject:v52 atIndex:0];
  }

  if (v54)
  {
    [(NSMutableArray *)self->_currentContents addObject:?];
  }

  if (self->_needToSendUpdate || [v59 count] || objc_msgSend(v56, "count"))
  {
    v47 = [(CollectionManager *)self currentCollections];
    [(GEOObserverHashTable *)self->_observers collectionManager:self contentDidChange:v47];
  }

  self->_needToSendUpdate = 0;
  if (!self->_didRegisterForCollectionsSyncManager)
  {
    v48 = +[CuratedCollectionSyncManager sharedManager];
    [v48 addObserver:self];

    self->_didRegisterForCollectionsSyncManager = 1;
  }

  v49 = sub_10000BDA4();
  v50 = v49;
  if (v53 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, OS_SIGNPOST_INTERVAL_END, spid, "UpdateContent", "", buf, 2u);
  }
}

- (CollectionHandler)favoriteCollection
{
  if (!self->_favoriteCollection && +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v3 = +[CollectionHandler favoriteCollection];
    favoriteCollection = self->_favoriteCollection;
    self->_favoriteCollection = v3;

    [(CollectionHandler *)self->_favoriteCollection setCollectionOperation:self];
  }

  v5 = self->_favoriteCollection;

  return v5;
}

- (CollectionHandler)allPlacesCollection
{
  allPlacesCollection = self->_allPlacesCollection;
  if (!allPlacesCollection)
  {
    v4 = sub_10000BDA4();
    v5 = os_signpost_id_generate(v4);

    v6 = sub_10000BDA4();
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "AllPlacesCollection", "", buf, 2u);
    }

    v8 = +[CollectionHandler collectionAllSavedPlaces];
    v9 = self->_allPlacesCollection;
    self->_allPlacesCollection = v8;

    [(CollectionHandler *)self->_allPlacesCollection setCollectionOperation:self];
    v10 = sub_10000BDA4();
    v11 = v10;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v5, "AllPlacesCollection", "", v13, 2u);
    }

    allPlacesCollection = self->_allPlacesCollection;
  }

  return allPlacesCollection;
}

- (id)orderedCollectionsExcludingAllPlacesCollection
{
  v3 = [(NSMutableArray *)self->_currentContents mutableCopy];
  v4 = [(CollectionManager *)self allPlacesCollection];
  [v3 removeObject:v4];

  v5 = [(CollectionOrderStorage *)self->_orderStorage orderCollections:v3];

  return v5;
}

- (void)curatedCollectionSyncManagerDidUpdateCachedCollections:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C10C5C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_asMapsSyncObjectOrNil:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [NSString stringWithFormat:@"collection is nil or is not a MapsSync Collection"];
      v10 = 136315906;
      v11 = "[CollectionManager _asMapsSyncObjectOrNil:]";
      v12 = 2080;
      v13 = "CollectionManager.m";
      v14 = 1024;
      v15 = 619;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", &v10, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }
    }

    v4 = 0;
  }

  return v4;
}

- (unint64_t)displayCountForCollectionsInLibrary
{
  if (![(NSMutableArray *)self->_currentContents count])
  {
    return 0;
  }

  v3 = [(NSMutableArray *)self->_currentContents count];
  currentContents = self->_currentContents;
  v5 = [(CollectionManager *)self allPlacesCollection];
  LODWORD(currentContents) = [(NSMutableArray *)currentContents containsObject:v5];

  v6 = v3 - currentContents;
  v7 = [(CollectionManager *)self favoriteCollection];
  v8 = v7;
  if (v7 && [v7 isEmpty])
  {
    v6 -= [(NSMutableArray *)self->_currentContents containsObject:v8];
  }

  return v6;
}

- (id)lookupMapItem:(id)a3
{
  v4 = a3;
  v5 = [_TtC8MapsSync22MapsSyncQueryPredicate alloc];
  v6 = [v4 _geoMapItem];
  v55 = v4;
  v7 = [v4 _geoMapItemStorageForPersistence];
  v8 = [v7 userValues];
  v9 = [v8 name];
  v10 = [v5 initWithMapItem:v6 customName:v9];

  v54 = v10;
  v11 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v10 sortDescriptors:0 range:0];
  v12 = objc_alloc_init(MSCollectionPlaceItemRequest);
  v68 = 0;
  v53 = v11;
  v13 = [v12 fetchSyncWithOptions:v11 error:&v68];
  v14 = v68;

  if (v14)
  {
    v15 = sub_10000BDA4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v73 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[MCM] Fetch failed: %@", buf, 0xCu);
    }
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v16 = v13;
  v17 = [v16 countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (v17)
  {
    v18 = *v65;
    v43 = *v65;
    while (2)
    {
      v19 = 0;
      v42 = v17;
      do
      {
        if (*v65 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v64 + 1) + 8 * v19);
        if ([v20 type] == 1)
        {
          v41 = [LibraryMapItemLookupResult alloc];
          v39 = [(CollectionManager *)self favoriteCollection];
          v38 = [(LibraryMapItemLookupResult *)v41 initWithPlaceItem:v20 collectionHandler:v39];
LABEL_32:

          v37 = v16;
          goto LABEL_33;
        }

        v49 = v20;
        v21 = [v20 fetchCollections];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v22 = v21;
        v47 = [v22 countByEnumeratingWithState:&v60 objects:v70 count:16];
        if (v47)
        {
          v23 = *v61;
          v51 = v16;
          v52 = v14;
          v45 = v19;
          v46 = self;
          v50 = v22;
          v44 = *v61;
          do
          {
            v24 = 0;
            do
            {
              if (*v61 != v23)
              {
                objc_enumerationMutation(v22);
              }

              v48 = v24;
              v25 = *(*(&v60 + 1) + 8 * v24);
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v26 = [(CollectionManager *)self currentCollections];
              v27 = [v26 countByEnumeratingWithState:&v56 objects:v69 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v57;
                while (2)
                {
                  for (i = 0; i != v28; i = i + 1)
                  {
                    if (*v57 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    v31 = *(*(&v56 + 1) + 8 * i);
                    if (![v31 handlerType])
                    {
                      v32 = [v31 identifier];
                      v33 = [v25 identifier];
                      v34 = [v33 UUIDString];
                      v35 = [v32 isEqualToString:v34];

                      if (v35)
                      {
                        v38 = [[LibraryMapItemLookupResult alloc] initWithPlaceItem:v49 collectionHandler:v31];

                        v39 = v50;
                        v16 = v51;
                        v14 = v52;
                        goto LABEL_32;
                      }
                    }
                  }

                  v28 = [v26 countByEnumeratingWithState:&v56 objects:v69 count:16];
                  if (v28)
                  {
                    continue;
                  }

                  break;
                }
              }

              v24 = v48 + 1;
              v16 = v51;
              v14 = v52;
              v19 = v45;
              self = v46;
              v22 = v50;
              v23 = v44;
            }

            while ((v48 + 1) != v47);
            v47 = [v50 countByEnumeratingWithState:&v60 objects:v70 count:16];
          }

          while (v47);
        }

        v19 = v19 + 1;
        v18 = v43;
      }

      while (v19 != v42);
      v17 = [v16 countByEnumeratingWithState:&v64 objects:v71 count:16];
      v18 = v43;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  if ([v16 count])
  {
    v36 = [LibraryMapItemLookupResult alloc];
    v37 = [v16 firstObject];
    v38 = [(LibraryMapItemLookupResult *)v36 initWithPlaceItem:v37 collectionHandler:0];
LABEL_33:
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (id)collectionsForAddingMapItems
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CollectionManager *)self currentCollections];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (![v9 handlerType])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)collectionsNotContainingMapItem:(id)a3
{
  v4 = a3;
  v5 = [(CollectionManager *)self currentCollections];
  v6 = [v5 mutableCopy];

  v45 = self;
  v7 = [(CollectionManager *)self allPlacesCollection];
  v49 = v6;
  [v6 removeObject:v7];

  v8 = [_TtC8MapsSync22MapsSyncQueryPredicate alloc];
  v9 = [v4 _geoMapItem];
  v38 = v4;
  v10 = [v4 _geoMapItemStorageForPersistence];
  v11 = [v10 userValues];
  v12 = [v11 name];
  v13 = [v8 initWithMapItem:v9 customName:v12];

  v37 = v13;
  v14 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v13 sortDescriptors:0 range:0];
  v15 = objc_alloc_init(MSCollectionPlaceItemRequest);
  v62 = 0;
  v36 = v14;
  v16 = [v15 fetchSyncWithOptions:v14 error:&v62];
  v17 = v62;

  v39 = v17;
  if (v17)
  {
    v18 = sub_10000BDA4();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v67 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[MCM] Fetch failed: %@", buf, 0xCu);
    }
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v16;
  v42 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v42)
  {
    v41 = *v59;
    do
    {
      v19 = 0;
      do
      {
        if (*v59 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v19;
        v20 = *(*(&v58 + 1) + 8 * v19);
        if ([v20 type] == 1)
        {
          v21 = [(CollectionManager *)v45 favoriteCollection];
          [v49 removeObject:v21];
        }

        v22 = [v20 fetchCollections];
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v44 = v22;
        v47 = [v22 countByEnumeratingWithState:&v54 objects:v64 count:16];
        if (v47)
        {
          v46 = *v55;
          do
          {
            v23 = 0;
            do
            {
              if (*v55 != v46)
              {
                objc_enumerationMutation(v44);
              }

              v48 = v23;
              v24 = *(*(&v54 + 1) + 8 * v23);
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              v53 = 0u;
              v25 = [(CollectionManager *)v45 currentCollections];
              v26 = [v25 countByEnumeratingWithState:&v50 objects:v63 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v51;
                do
                {
                  for (i = 0; i != v27; i = i + 1)
                  {
                    if (*v51 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v30 = *(*(&v50 + 1) + 8 * i);
                    if (![v30 handlerType])
                    {
                      v31 = [v30 identifier];
                      v32 = [v24 identifier];
                      v33 = [v32 UUIDString];
                      v34 = [v31 isEqualToString:v33];

                      if (v34)
                      {
                        [v49 removeObject:v30];
                      }
                    }
                  }

                  v27 = [v25 countByEnumeratingWithState:&v50 objects:v63 count:16];
                }

                while (v27);
              }

              v23 = v48 + 1;
            }

            while ((v48 + 1) != v47);
            v47 = [v44 countByEnumeratingWithState:&v54 objects:v64 count:16];
          }

          while (v47);
        }

        v19 = v43 + 1;
      }

      while ((v43 + 1) != v42);
      v42 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v42);
  }

  return v49;
}

- (id)firstUserGuideContainingMapItem:(id)a3 requiresOrdering:(BOOL)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = [_TtC8MapsSync22MapsSyncQueryPredicate alloc];
    v7 = [v5 _geoMapItem];
    v8 = [v5 _geoMapItemStorageForPersistence];
    v9 = [v8 userValues];
    v10 = [v9 name];
    v11 = [v6 initWithMapItem:v7 customName:v10];

    v51 = v11;
    v12 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v11 sortDescriptors:0 range:0];
    v13 = objc_alloc_init(MSCollectionPlaceItemRequest);
    v64 = 0;
    v50 = v12;
    v14 = [v13 fetchSyncWithOptions:v12 error:&v64];
    v15 = v64;

    if (v15)
    {
      v16 = sub_10000BDA4();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v69 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[MCM] Fetch failed: %@", buf, 0xCu);
      }
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v60 objects:v67 count:16];
    if (v18)
    {
      v19 = *v61;
      v40 = *v61;
      while (2)
      {
        v20 = 0;
        v39 = v18;
        do
        {
          if (*v61 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v60 + 1) + 8 * v20);
          if ([v21 type] == 1)
          {
            v37 = [(CollectionManager *)self favoriteCollection];
            goto LABEL_33;
          }

          v22 = [v21 fetchCollections];
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v23 = v22;
          v44 = [v23 countByEnumeratingWithState:&v56 objects:v66 count:16];
          if (v44)
          {
            v24 = *v57;
            v48 = v15;
            v49 = v5;
            v42 = v20;
            v43 = self;
            v46 = v23;
            v47 = v17;
            v41 = *v57;
            do
            {
              v25 = 0;
              do
              {
                if (*v57 != v24)
                {
                  objc_enumerationMutation(v23);
                }

                v45 = v25;
                v26 = *(*(&v56 + 1) + 8 * v25);
                v52 = 0u;
                v53 = 0u;
                v54 = 0u;
                v55 = 0u;
                v27 = [(CollectionManager *)self currentCollections];
                v28 = [v27 countByEnumeratingWithState:&v52 objects:v65 count:16];
                if (v28)
                {
                  v29 = v28;
                  v30 = *v53;
                  while (2)
                  {
                    for (i = 0; i != v29; i = i + 1)
                    {
                      if (*v53 != v30)
                      {
                        objc_enumerationMutation(v27);
                      }

                      v32 = *(*(&v52 + 1) + 8 * i);
                      if (![v32 handlerType])
                      {
                        v33 = [v32 identifier];
                        v34 = [v26 identifier];
                        v35 = [v34 UUIDString];
                        v36 = [v33 isEqualToString:v35];

                        if (v36)
                        {
                          v37 = v32;

                          v15 = v48;
                          v5 = v49;
                          v17 = v47;
                          goto LABEL_33;
                        }
                      }
                    }

                    v29 = [v27 countByEnumeratingWithState:&v52 objects:v65 count:16];
                    if (v29)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v25 = v45 + 1;
                v15 = v48;
                v5 = v49;
                v20 = v42;
                self = v43;
                v23 = v46;
                v17 = v47;
                v24 = v41;
              }

              while ((v45 + 1) != v44);
              v44 = [v46 countByEnumeratingWithState:&v56 objects:v66 count:16];
            }

            while (v44);
          }

          v20 = v20 + 1;
          v19 = v40;
        }

        while (v20 != v39);
        v18 = [v17 countByEnumeratingWithState:&v60 objects:v67 count:16];
        v19 = v40;
        v37 = 0;
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v37 = 0;
    }

LABEL_33:
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (id)collectionsContainingMapItem:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    v44 = +[NSMutableSet set];
    v5 = [_TtC8MapsSync22MapsSyncQueryPredicate alloc];
    v6 = [v4 _geoMapItem];
    v39 = v4;
    v7 = [v4 _geoMapItemStorageForPersistence];
    v8 = [v7 userValues];
    v9 = [v8 name];
    v10 = [v5 initWithMapItem:v6 customName:v9];

    v38 = v10;
    v11 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v10 sortDescriptors:0 range:0];
    v12 = objc_alloc_init(MSCollectionPlaceItemRequest);
    v62 = 0;
    v37 = v11;
    v13 = [v12 fetchSyncWithOptions:v11 error:&v62];
    v14 = v62;

    if (v14)
    {
      v15 = sub_10000BDA4();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v67 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[MCM] Fetch failed: %@", buf, 0xCu);
      }
    }

    v36 = v14;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v13;
    v16 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v59;
      v40 = *v59;
      do
      {
        v19 = 0;
        v41 = v17;
        do
        {
          if (*v59 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v58 + 1) + 8 * v19);
          if ([v20 type] == 1)
          {
            v21 = [(CollectionManager *)self favoriteCollection];
            [v44 addObject:v21];
          }

          else
          {
            v21 = [v20 fetchCollections];
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v48 = [v21 countByEnumeratingWithState:&v54 objects:v64 count:16];
            if (v48)
            {
              v43 = v19;
              v45 = *v55;
              v46 = v21;
              do
              {
                v22 = 0;
                do
                {
                  if (*v55 != v45)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v49 = v22;
                  v23 = *(*(&v54 + 1) + 8 * v22);
                  v50 = 0u;
                  v51 = 0u;
                  v52 = 0u;
                  v53 = 0u;
                  v24 = [(CollectionManager *)self currentCollections];
                  v25 = [v24 countByEnumeratingWithState:&v50 objects:v63 count:16];
                  if (v25)
                  {
                    v26 = v25;
                    v27 = *v51;
                    while (2)
                    {
                      for (i = 0; i != v26; i = i + 1)
                      {
                        if (*v51 != v27)
                        {
                          objc_enumerationMutation(v24);
                        }

                        v29 = *(*(&v50 + 1) + 8 * i);
                        if (![v29 handlerType])
                        {
                          v30 = [v29 identifier];
                          v31 = [v23 identifier];
                          v32 = [v31 UUIDString];
                          v33 = [v30 isEqualToString:v32];

                          if (v33)
                          {
                            [v44 addObject:v29];
                            goto LABEL_29;
                          }
                        }
                      }

                      v26 = [v24 countByEnumeratingWithState:&v50 objects:v63 count:16];
                      if (v26)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_29:

                  v22 = v49 + 1;
                  v21 = v46;
                }

                while ((v49 + 1) != v48);
                v48 = [v46 countByEnumeratingWithState:&v54 objects:v64 count:16];
              }

              while (v48);
              v18 = v40;
              v17 = v41;
              v19 = v43;
            }
          }

          v19 = v19 + 1;
        }

        while (v19 != v17);
        v17 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
      }

      while (v17);
    }

    v34 = [v44 allObjects];

    v3 = v39;
  }

  else
  {
    v34 = &__NSArray0__struct;
  }

  return v34;
}

- (id)collectionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self->_currentContents;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)collectionForFavoritesType:(int64_t)a3
{
  if (a3 == 1)
  {
    v5 = [(CollectionManager *)self allPlacesCollection];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)currentCollectionsForToolbarMenu
{
  v3 = [(NSMutableArray *)self->_currentContents mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_currentContents;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(CollectionManager *)self allPlacesCollection];
        v11 = v10;
        if (v9 == v10)
        {

LABEL_10:
          [v3 removeObject:v9];
          continue;
        }

        v12 = [v9 handlerType];

        if (v12 == 4)
        {
          goto LABEL_10;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [(CollectionOrderStorage *)self->_orderStorage orderCollections:v3];

  return v13;
}

- (NSArray)currentCollectionsForPicker
{
  v3 = [(NSMutableArray *)self->_currentContents mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_currentContents;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(CollectionManager *)self allPlacesCollection];
        v11 = v10;
        if (v9 == v10)
        {

LABEL_10:
          [v3 removeObject:v9];
          continue;
        }

        v12 = [v9 handlerType];

        if (v12 == 4)
        {
          goto LABEL_10;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  v13 = +[CollectionHandler addToCollection];
  v22 = v13;
  v14 = [NSArray arrayWithObjects:&v22 count:1];
  v15 = [(CollectionOrderStorage *)self->_orderStorage orderCollections:v3];
  v16 = [v14 arrayByAddingObjectsFromArray:v15];

  return v16;
}

- (NSArray)currentCollectionsForCarPlay
{
  v2 = [(CollectionManager *)self currentCollections];
  v3 = [NSPredicate predicateWithBlock:&stru_10164DBB0];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

- (NSArray)currentCollectionsForWatchHome
{
  v3 = [(CollectionManager *)self currentCollections];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C129BC;
  v7[3] = &unk_101656A98;
  v7[4] = self;
  v4 = [NSPredicate predicateWithBlock:v7];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (void)deleteCollections:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000BDA4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[MCM] deleteCollections %@", buf, 0xCu);
  }

  v9 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(CollectionManager *)self _asMapsSyncObjectOrNil:*(*(&v19 + 1) + 8 * v14)];
        if (v15)
        {
          [v9 addObject:v15];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v16 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100C12C80;
    v17[3] = &unk_1016610B8;
    v18 = v7;
    [v16 deleteWithObjects:v9 completionHandler:v17];

    [(CollectionOrderStorage *)self->_orderStorage removeCollections:v10];
  }
}

- (void)deleteCollection:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000BDA4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 title];
    *buf = 138412290;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[MCM] deleteCollection %@", buf, 0xCu);
  }

  v10 = [(CollectionManager *)self _asMapsSyncObjectOrNil:v6];
  if (v6)
  {
    v11 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v18 = v10;
    v12 = [NSArray arrayWithObjects:&v18 count:1];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100C12F28;
    v15[3] = &unk_1016610B8;
    v16 = v7;
    [v11 deleteWithObjects:v12 completionHandler:v15];

    orderStorage = self->_orderStorage;
    v17 = v6;
    v14 = [NSArray arrayWithObjects:&v17 count:1];
    [(CollectionOrderStorage *)orderStorage removeCollections:v14];
  }
}

- (void)saveCollection:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000BDA4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 title];
    *buf = 138412290;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[MCM] saveCollection %@", buf, 0xCu);
  }

  v10 = [(CollectionManager *)self _asMapsSyncObjectOrNil:v6];
  if (v6)
  {
    v11 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v18 = v10;
    v12 = [NSArray arrayWithObjects:&v18 count:1];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100C13224;
    v16 = &unk_1016610B8;
    v17 = v7;
    [v11 saveWithObjects:v12 completionHandler:&v13];

    [(CollectionOrderStorage *)self->_orderStorage editCollection:v6, v13, v14, v15, v16];
  }
}

- (void)createCollection:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000BDA4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 title];
    *buf = 138412290;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[MCM] createCollection %@", buf, 0xCu);
  }

  v10 = [(CollectionManager *)self _asMapsSyncObjectOrNil:v6];
  if (v6)
  {
    v11 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v18 = v10;
    v12 = [NSArray arrayWithObjects:&v18 count:1];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100C13520;
    v16 = &unk_1016610B8;
    v17 = v7;
    [v11 saveWithObjects:v12 completionHandler:&v13];

    [(CollectionOrderStorage *)self->_orderStorage editCollection:v6, v13, v14, v15, v16];
  }
}

- (void)touchCollection:(id)a3
{
  [(CollectionOrderStorage *)self->_orderStorage editCollection:a3];
  self->_needToSendUpdate = 1;

  [(CollectionManager *)self _updateContent];
}

- (void)_fetchCollectionsWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_updateContentQueue);
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(MSCollectionRequest);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C137BC;
  v7[3] = &unk_10165E308;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 fetchWithCompletionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)newTraits
{
  v3 = [(CollectionManager *)self traitsCreationBlock];

  if (!v3 || ([(CollectionManager *)self traitsCreationBlock], v4 = objc_claimAutoreleasedReturnValue(), v4[2](), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v6 = +[MKMapService sharedService];
    v5 = [v6 mapsDefaultTraits];
  }

  return v5;
}

- (void)dealloc
{
  if (self->_didRegisterForCollectionsSyncManager)
  {
    v3 = +[CuratedCollectionSyncManager sharedManager];
    [v3 removeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = CollectionManager;
  [(CollectionManager *)&v4 dealloc];
}

@end