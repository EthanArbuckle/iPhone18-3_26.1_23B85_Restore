@interface Recents
+ (id)sharedRecents;
- (Recents)init;
- (id)_recentPlaceDisplayWithSupersededStorageIdentifier:(id)identifier;
- (id)_recentWithIdentifier:(id)identifier;
- (id)_recentsByMappingCuratedCollectionsForRecents:(id)recents;
- (id)_recentsFromHistoryQuery;
- (id)cachedMapItemForContactID:(int64_t)d;
- (void)_combineRecents;
- (void)_processRecents;
- (void)addObserver:(id)observer;
- (void)deleteAllRecentsWithCompletion:(id)completion;
- (void)deleteCoreRecentContact:(id)contact;
- (void)deleteRecents:(id)recents completion:(id)completion;
- (void)loadCoreRecentsOnQueue:(id)queue withCompletion:(id)completion;
- (void)recordCoreRecentContact:(id)contact;
- (void)setNeedsCoreRecentsReload;
- (void)storeDidChange:(id)change;
@end

@implementation Recents

- (void)_processRecents
{
  v3 = sub_100021DB0(self->_historyRecents, &stru_1016271E0);
  [(RecentCuratedCollectionResolver *)self->_curatedCollectionResolver setRecentCuratedCollections:v3];

  v4 = [(Recents *)self _recentsByMappingCuratedCollectionsForRecents:self->_historyRecents];
  resolvedHistoryRecents = self->_resolvedHistoryRecents;
  self->_resolvedHistoryRecents = v4;

  v6 = [(Recents *)self _recentsByMappingCuratedCollectionsForRecents:self->_orderedRecents];
  resolvedOrderedRecents = self->_resolvedOrderedRecents;
  self->_resolvedOrderedRecents = v6;

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:@"RecentsDidChangeNotification" object:self];
}

+ (id)sharedRecents
{
  if (qword_10195CFE0 != -1)
  {
    dispatch_once(&qword_10195CFE0, &stru_101627138);
  }

  v3 = qword_10195CFE8;

  return v3;
}

- (Recents)init
{
  v19.receiver = self;
  v19.super_class = Recents;
  v2 = [(Recents *)&v19 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_applicationActivating" name:UIApplicationWillEnterForegroundNotification object:0];

    historyQueryContents = v2->_historyQueryContents;
    v2->_historyQueryContents = &__NSArray0__struct;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.Maps.Recents.DataLoading", v5);
    dataLoadingQueue = v2->_dataLoadingQueue;
    v2->_dataLoadingQueue = v6;

    v8 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    [v8 subscribe:v2];

    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v20[4] = objc_opt_class();
    v20[5] = objc_opt_class();
    v20[6] = objc_opt_class();
    v9 = [NSArray arrayWithObjects:v20 count:7];
    storeSubscriptionTypes = v2->storeSubscriptionTypes;
    v2->storeSubscriptionTypes = v9;

    v11 = geo_isolater_create();
    coreRecentsMapItemCacheIsolator = v2->_coreRecentsMapItemCacheIsolator;
    v2->_coreRecentsMapItemCacheIsolator = v11;

    v13 = +[NSMutableDictionary dictionary];
    coreRecentsMapItemCache = v2->_coreRecentsMapItemCache;
    v2->_coreRecentsMapItemCache = v13;

    [(Recents *)v2 setNeedsCoreRecentsReload];
    v15 = objc_alloc_init(RecentCuratedCollectionResolver);
    curatedCollectionResolver = v2->_curatedCollectionResolver;
    v2->_curatedCollectionResolver = v15;

    observers = [(RecentCuratedCollectionResolver *)v2->_curatedCollectionResolver observers];
    [observers registerObserver:v2];

    [(Recents *)v2 storeDidChange:&__NSArray0__struct];
  }

  return v2;
}

- (void)setNeedsCoreRecentsReload
{
  if (!self->_needsReload)
  {
    self->_needsReload = 1;
    objc_initWeak(&location, self);
    Current = CFRunLoopGetCurrent();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000691C8;
    block[3] = &unk_101661340;
    block[4] = self;
    objc_copyWeak(&v5, &location);
    CFRunLoopPerformBlock(Current, kCFRunLoopCommonModes, block);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)_combineRecents
{
  _recentsFromHistoryQuery = [(Recents *)self _recentsFromHistoryQuery];
  systemRecents = [(Recents *)self systemRecents];
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(_recentsFromHistoryQuery, "count") + objc_msgSend(systemRecents, "count")}];
  [v5 addObjectsFromArray:_recentsFromHistoryQuery];
  [v5 addObjectsFromArray:systemRecents];
  [v5 sortWithOptions:16 usingComparator:&stru_1016271A0];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100059A34;
  v8[3] = &unk_101661480;
  objc_copyWeak(&v11, &location);
  v9 = _recentsFromHistoryQuery;
  v10 = v5;
  v6 = v5;
  v7 = _recentsFromHistoryQuery;
  dispatch_async(&_dispatch_main_q, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)_recentsFromHistoryQuery
{
  historyQueryContents = [(Recents *)self historyQueryContents];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [historyQueryContents count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = historyQueryContents;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = [HistoryEntryRecentsItem alloc];
          v11 = [(HistoryEntryRecentsItem *)v10 initWithHistoryEntry:v9, v14];
          if (v11)
          {
            [v3 addObject:v11];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (id)_recentsByMappingCuratedCollectionsForRecents:(id)recents
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006FDE00;
  v5[3] = &unk_101627280;
  v5[4] = self;
  v3 = sub_100021DB0(recents, v5);

  return v3;
}

- (void)storeDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(MSHistoryItemRequest);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006FE028;
  v6[3] = &unk_10165F290;
  objc_copyWeak(&v7, &location);
  [v5 fetchWithCompletionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (id)_recentPlaceDisplayWithSupersededStorageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1006FE27C;
  v16 = sub_1006FE28C;
  v17 = 0;
  recents = [(Recents *)self recents];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006FE294;
  v9[3] = &unk_101627258;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [recents enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_recentWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1006FE27C;
  v16 = sub_1006FE28C;
  v17 = 0;
  recents = [(Recents *)self recents];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006FE538;
  v9[3] = &unk_101627258;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [recents enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)deleteAllRecentsWithCompletion:(id)completion
{
  completionCopy = completion;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_orderedRecents;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(Recents *)self deleteCoreRecentContact:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  historyQueryContents = self->_historyQueryContents;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1006FE7B4;
  v14[3] = &unk_1016610B8;
  v15 = completionCopy;
  v13 = completionCopy;
  [v11 deleteWithObjects:historyQueryContents completionHandler:v14];
}

- (void)deleteRecents:(id)recents completion:(id)completion
{
  completionCopy = completion;
  recentsCopy = recents;
  v32 = +[NSMutableArray array];
  v31 = +[NSMutableArray array];
  v7 = [(Recents *)self _recentByUnmappingCuratedCollectionsForRecents:recentsCopy];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v46;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          linkedRecentRoute = [v13 linkedRecentRoute];
          v15 = linkedRecentRoute;
          if (linkedRecentRoute)
          {
            historyEntry = [linkedRecentRoute historyEntry];
            [v32 addObject:historyEntry];
          }

          historyEntry2 = [v13 historyEntry];
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_1006FECC4;
          v42[3] = &unk_101627208;
          v42[4] = self;
          v43 = v13;
          v44 = v32;
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_1006FED6C;
          v40[3] = &unk_101627230;
          v40[4] = self;
          v18 = v44;
          v41 = v18;
          v19 = v13;
          [historyEntry2 ifSearch:v42 ifRoute:0 ifPlaceDisplay:v40 ifTransitLineItem:0];

          historyEntry3 = [v19 historyEntry];
          [v18 addObject:historyEntry3];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v31 addObject:v12];
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v9);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = v31;
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v37;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v36 + 1) + 8 * j);
        v27 = +[Recents sharedRecents];
        [v27 deleteCoreRecentContact:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v23);
  }

  v28 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1006FEE24;
  v34[3] = &unk_1016610B8;
  v35 = completionCopy;
  v29 = completionCopy;
  [v28 deleteWithObjects:v32 completionHandler:v34];
}

- (void)recordCoreRecentContact:(id)contact
{
  if (contact)
  {
    contactCopy = contact;
    address = [contactCopy address];
    displayName = [contactCopy displayName];
    v6 = CRAddressKindMapLocation;
    v7 = +[NSDate date];
    v8 = [CRRecentContactsLibrary recentEventForAddress:address displayName:displayName kind:v6 date:v7 weight:0 metadata:0 options:1];

    v9 = +[CRRecentContactsLibrary defaultInstance];
    v13 = v8;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    v11 = CRRecentsDomainMaps;
    lastSendingAddress = [contactCopy lastSendingAddress];

    [v9 recordContactEvents:v10 recentsDomain:v11 sendingAddress:lastSendingAddress completion:0];
  }
}

- (void)deleteCoreRecentContact:(id)contact
{
  contactCopy = contact;
  coreRecentsNoResultCacheIDs = self->_coreRecentsNoResultCacheIDs;
  v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [contactCopy contactID]);
  [(NSMutableArray *)coreRecentsNoResultCacheIDs addObject:v6];

  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 setObject:self->_coreRecentsNoResultCacheIDs forKey:@"RecentsNoResultCacheIdsKey"];

  v8 = +[NSUserDefaults standardUserDefaults];
  [v8 synchronize];

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1006FF1CC;
  v16 = &unk_101661A90;
  selfCopy = self;
  v18 = contactCopy;
  geo_isolate_sync();
  dataLoadingQueue = self->_dataLoadingQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1006FF23C;
  v11[3] = &unk_101661A90;
  v11[4] = self;
  v12 = v18;
  v10 = v18;
  dispatch_sync(dataLoadingQueue, v11);
}

- (void)loadCoreRecentsOnQueue:(id)queue withCompletion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  v7 = dispatch_group_create();
  v19 = +[CRRecentContactsLibrary defaultInstance];
  BOOL = GEOConfigGetBOOL();
  v9 = +[CRRecentContactsLibrary messageSourcesBundleIdentifiers];
  v10 = objc_alloc_init(CRSearchQuery);
  v27 = CRAddressKindMapLocation;
  v11 = [NSArray arrayWithObjects:&v27 count:1];
  v12 = [CRSearchPredicate predicateForKey:@"kind" inCollection:v11];

  [v10 setSearchPredicate:v12];
  v26 = CRRecentsDomainMaps;
  v13 = [NSArray arrayWithObjects:&v26 count:1];
  [v10 setDomains:v13];

  v14 = +[CRSearchQuery frecencyComparator];
  [v10 setComparator:v14];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1006FF5F0;
  v20[3] = &unk_101655AF8;
  v21 = v9;
  selfCopy = self;
  v25 = BOOL;
  v23 = v7;
  v24 = completionCopy;
  v15 = completionCopy;
  v16 = v7;
  v17 = v9;
  [v19 performRecentsSearch:v10 queue:queueCopy completion:v20];
}

- (id)cachedMapItemForContactID:(int64_t)d
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1006FE27C;
  v9 = sub_1006FE28C;
  v10 = 0;
  geo_isolate_sync();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    v6 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___RecentsObserver queue:&_dispatch_main_q];
    v7 = self->_observers;
    self->_observers = v6;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(GEOObserverHashTable *)observers registerObserver:observerCopy];
}

@end