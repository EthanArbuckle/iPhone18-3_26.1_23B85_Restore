@interface CuratedCollectionSyncManager
+ (id)sharedManager;
- (BOOL)collectionIsSaved:(id)saved;
- (BOOL)collectionIsSavedWithIdentifier:(id)identifier;
- (CuratedCollectionSyncManager)init;
- (void)_addCachedCuratedCollections:(id)collections completion:(id)completion;
- (void)_cacheSyncedCollections:(id)collections;
- (void)_removeSavedCuratedCollectionWithIdentifierMuid:(unint64_t)muid resultProviderId:(int)id completion:(id)completion;
- (void)_updateCachedCuratedCollection:(id)collection withCollection:(id)withCollection completion:(id)completion;
- (void)_updateContent;
- (void)_updateSyncedCollectionResultProviderIdIfNeededWithCollection:(id)collection;
- (void)addObserver:(id)observer;
- (void)addSavedCuratedCollection:(id)collection completion:(id)completion;
- (void)fetchCachedCollectionsWithCuratedCollections:(id)collections completion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)removeSavedCuratedCollection:(id)collection completion:(id)completion;
- (void)removeSavedMapsSyncCuratedCollection:(id)collection completion:(id)completion;
- (void)storeDidChange:(id)change;
- (void)updateSavedCuratedCollection:(id)collection completion:(id)completion;
@end

@implementation CuratedCollectionSyncManager

+ (id)sharedManager
{
  if (qword_10195D0B0 != -1)
  {
    dispatch_once(&qword_10195D0B0, &stru_101627B00);
  }

  v3 = qword_10195D0A8;

  return v3;
}

- (CuratedCollectionSyncManager)init
{
  v10.receiver = self;
  v10.super_class = CuratedCollectionSyncManager;
  v2 = [(CuratedCollectionSyncManager *)&v10 init];
  if (v2)
  {
    v3 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___CuratedCollectionSyncManagerObserver queue:0];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    [v5 subscribe:v2];

    v11 = objc_opt_class();
    v6 = [NSArray arrayWithObjects:&v11 count:1];
    storeSubscriptionTypes = v2->storeSubscriptionTypes;
    v2->storeSubscriptionTypes = v6;

    queryContents = v2->_queryContents;
    v2->_queryContents = &__NSArray0__struct;

    [(CuratedCollectionSyncManager *)v2 storeDidChange:&__NSArray0__struct];
  }

  return v2;
}

- (void)_updateContent
{
  objc_initWeak(&location, self);
  queryContents = self->_queryContents;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100037E58;
  v4[3] = &unk_101627BB0;
  objc_copyWeak(&v5, &location);
  [(CuratedCollectionSyncManager *)self fetchCachedCollectionsWithCuratedCollections:queryContents completion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)collectionIsSavedWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  queryContents = [(CuratedCollectionSyncManager *)self queryContents];
  v6 = [queryContents countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(queryContents);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        curatedCollectionIdentifier = [v9 curatedCollectionIdentifier];
        if (curatedCollectionIdentifier == [identifierCopy muid])
        {
          if (![v9 resultProviderIdentifier] || (v11 = objc_msgSend(v9, "resultProviderIdentifier"), v11 == objc_msgSend(identifierCopy, "resultProviderID")))
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }
      }

      v6 = [queryContents countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v6;
}

- (BOOL)collectionIsSaved:(id)saved
{
  collectionIdentifier = [saved collectionIdentifier];
  LOBYTE(self) = [(CuratedCollectionSyncManager *)self collectionIsSavedWithIdentifier:collectionIdentifier];

  return self;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CuratedCollectionSyncManager *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CuratedCollectionSyncManager *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)storeDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(MSCuratedCollectionRequest);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100733840;
  v6[3] = &unk_10165F290;
  objc_copyWeak(&v7, &location);
  [v5 fetchWithCompletionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_cacheSyncedCollections:(id)collections
{
  collectionsCopy = collections;
  if (![(CuratedCollectionSyncManager *)self isPopulatingCachedCollections])
  {
    [(CuratedCollectionSyncManager *)self setIsPopulatingCachedCollections:1];
    v5 = sub_100021DB0(collectionsCopy, &stru_101627B88);
    v6 = +[MKMapService sharedService];
    v7 = [v6 ticketForCuratedCollections:v5 isBatchLookup:0 traits:0];

    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100733A48;
    v8[3] = &unk_10165F290;
    objc_copyWeak(&v9, &location);
    [v7 submitWithHandler:v8 networkActivity:0];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_updateSyncedCollectionResultProviderIdIfNeededWithCollection:(id)collection
{
  collectionCopy = collection;
  collectionIdentifier = [collectionCopy collectionIdentifier];
  resultProviderID = [collectionIdentifier resultProviderID];

  if (resultProviderID)
  {
    queryContents = self->_queryContents;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100733EA4;
    v25[3] = &unk_101656A98;
    v26 = collectionCopy;
    v8 = [NSPredicate predicateWithBlock:v25];
    v9 = [(NSArray *)queryContents filteredArrayUsingPredicate:v8];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          [v15 setResultProviderIdentifier:resultProviderID];
          v16 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
          v29 = v15;
          v17 = [NSArray arrayWithObjects:&v29 count:1];
          v20 = 0;
          [v16 saveWithObjects:v17 error:&v20];
          v18 = v20;

          if (v18)
          {
            v19 = sub_10000BDA4();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v28 = v18;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error updating synced curated collection with lsp: %@", buf, 0xCu);
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v30 count:16];
      }

      while (v12);
    }
  }
}

- (void)_updateCachedCuratedCollection:(id)collection withCollection:(id)withCollection completion:(id)completion
{
  collectionCopy = collection;
  withCollectionCopy = withCollection;
  completionCopy = completion;
  v11 = +[MKSystemController sharedInstance];
  [v11 screenScale];
  v13 = v12;

  v14 = v13 * 70.0;
  if (![collectionCopy resultProviderIdentifier])
  {
    collectionIdentifier = [withCollectionCopy collectionIdentifier];
    resultProviderID = [collectionIdentifier resultProviderID];

    if (resultProviderID)
    {
      collectionIdentifier2 = [withCollectionCopy collectionIdentifier];
      [collectionCopy setResultProviderIdentifier:{objc_msgSend(collectionIdentifier2, "resultProviderID")}];
    }
  }

  collectionTitle = [withCollectionCopy collectionTitle];
  [collectionCopy setTitle:collectionTitle];

  [collectionCopy setPlacesCount:{objc_msgSend(withCollectionCopy, "numberOfItems")}];
  publisherAttributionIdentifierString = [withCollectionCopy publisherAttributionIdentifierString];
  [collectionCopy setPublisherAttribution:publisherAttributionIdentifierString];

  photos = [withCollectionCopy photos];
  v21 = [photos _geo_firstPhotoOfAtLeastSize:{v14, v14}];

  if (v21)
  {
    v22 = [v21 url];
    absoluteString = [v22 absoluteString];
    [collectionCopy setImageUrl:absoluteString];
  }

  v24 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v26 = collectionCopy;
  v25 = [NSArray arrayWithObjects:&v26 count:1];
  [v24 saveWithObjects:v25 error:0];

  [(CuratedCollectionSyncManager *)self _updateSyncedCollectionResultProviderIdIfNeededWithCollection:withCollectionCopy];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_addCachedCuratedCollections:(id)collections completion:(id)completion
{
  collectionsCopy = collections;
  completionCopy = completion;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = collectionsCopy;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        dispatch_group_enter(v7);
        v13 = objc_alloc_init(MSCachedCuratedCollection);
        collectionIdentifier = [v12 collectionIdentifier];
        [v13 setCuratedCollectionIdentifier:{objc_msgSend(collectionIdentifier, "muid")}];

        collectionIdentifier2 = [v12 collectionIdentifier];
        [v13 setResultProviderIdentifier:{objc_msgSend(collectionIdentifier2, "resultProviderID")}];

        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1007343D0;
        v21[3] = &unk_101661B18;
        v22 = v7;
        [(CuratedCollectionSyncManager *)self _updateCachedCuratedCollection:v13 withCollection:v12 completion:v21];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  dispatch_group_leave(v7);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007343D8;
  block[3] = &unk_101661760;
  v20 = completionCopy;
  v16 = completionCopy;
  dispatch_group_notify(v7, &_dispatch_main_q, block);
}

- (void)_removeSavedCuratedCollectionWithIdentifierMuid:(unint64_t)muid resultProviderId:(int)id completion:(id)completion
{
  completionCopy = completion;
  queryContents = self->_queryContents;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100734594;
  v19[3] = &unk_101627B48;
  v19[4] = muid;
  idCopy = id;
  v10 = [NSPredicate predicateWithBlock:v19];
  v11 = [(NSArray *)queryContents filteredArrayUsingPredicate:v10];

  cachedCuratedCollections = self->_cachedCuratedCollections;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100734608;
  v17[3] = &unk_101627B48;
  v17[4] = muid;
  idCopy2 = id;
  v13 = [NSPredicate predicateWithBlock:v17];
  v14 = [(NSArray *)cachedCuratedCollections filteredArrayUsingPredicate:v13];

  v15 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v16 = [v11 arrayByAddingObjectsFromArray:v14];
  [v15 deleteWithObjects:v16 error:0];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)removeSavedMapsSyncCuratedCollection:(id)collection completion:(id)completion
{
  completionCopy = completion;
  collectionCopy = collection;
  curatedCollectionIdentifier = [collectionCopy curatedCollectionIdentifier];
  resultProviderIdentifier = [collectionCopy resultProviderIdentifier];

  [(CuratedCollectionSyncManager *)self _removeSavedCuratedCollectionWithIdentifierMuid:curatedCollectionIdentifier resultProviderId:resultProviderIdentifier completion:completionCopy];
}

- (void)removeSavedCuratedCollection:(id)collection completion:(id)completion
{
  completionCopy = completion;
  collectionCopy = collection;
  collectionIdentifier = [collectionCopy collectionIdentifier];
  muid = [collectionIdentifier muid];
  collectionIdentifier2 = [collectionCopy collectionIdentifier];

  -[CuratedCollectionSyncManager _removeSavedCuratedCollectionWithIdentifierMuid:resultProviderId:completion:](self, "_removeSavedCuratedCollectionWithIdentifierMuid:resultProviderId:completion:", muid, [collectionIdentifier2 resultProviderID], completionCopy);
}

- (void)updateSavedCuratedCollection:(id)collection completion:(id)completion
{
  collectionCopy = collection;
  completionCopy = completion;
  objc_initWeak(&location, self);
  collectionIdentifier = [collectionCopy collectionIdentifier];
  muid = [collectionIdentifier muid];

  collectionIdentifier2 = [collectionCopy collectionIdentifier];
  resultProviderID = [collectionIdentifier2 resultProviderID];

  v12 = objc_alloc_init(MSCuratedCollection);
  [v12 setCuratedCollectionIdentifier:muid];
  [v12 setResultProviderIdentifier:resultProviderID];
  v13 = objc_alloc_init(MSCuratedCollection);
  [v13 setCuratedCollectionIdentifier:muid];
  [v13 setResultProviderIdentifier:0];
  v22[0] = v12;
  v22[1] = v13;
  v14 = [NSArray arrayWithObjects:v22 count:2];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1007349B8;
  v17[3] = &unk_101627B28;
  objc_copyWeak(&v20, &location);
  v15 = collectionCopy;
  v18 = v15;
  v16 = completionCopy;
  v19 = v16;
  [(CuratedCollectionSyncManager *)self fetchCachedCollectionsWithCuratedCollections:v14 completion:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)fetchCachedCollectionsWithCuratedCollections:(id)collections completion:(id)completion
{
  collectionsCopy = collections;
  completionCopy = completion;
  v6 = objc_alloc_init(NSMutableArray);
  v7 = objc_alloc_init(NSMutableArray);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = collectionsCopy;
  v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = -[CuratedCollectionSyncManager createCantorPair:y:](self, "createCantorPair:y:", [v12 curatedCollectionIdentifier], objc_msgSend(v12, "resultProviderIdentifier"));
        [v6 addObject:v13];

        v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 curatedCollectionIdentifier]);
        v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 resultProviderIdentifier]);
        v16 = [NSPredicate predicateWithFormat:@"curatedCollectionIdentifier = %@ && resultProviderIdentifier = %@", v14, v15];
        [v7 addObject:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v9);
  }

  v17 = v7;
  v18 = [NSCompoundPredicate orPredicateWithSubpredicates:v7];
  v19 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v18 sortDescriptors:0 range:0];
  v20 = objc_alloc_init(MSCachedCuratedCollectionRequest);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100734D20;
  v27[3] = &unk_10165D3F0;
  v28 = v6;
  selfCopy = self;
  v30 = obj;
  v31 = completionCopy;
  v21 = completionCopy;
  v22 = obj;
  v23 = v6;
  [v20 fetchWithOptions:v19 completionHandler:v27];
}

- (void)addSavedCuratedCollection:(id)collection completion:(id)completion
{
  collectionCopy = collection;
  completionCopy = completion;
  if (![(CuratedCollectionSyncManager *)self collectionIsSaved:collectionCopy])
  {
    v16 = collectionCopy;
    v8 = [NSArray arrayWithObjects:&v16 count:1];
    [(CuratedCollectionSyncManager *)self _addCachedCuratedCollections:v8 completion:0];

    v9 = objc_alloc_init(MSCuratedCollection);
    collectionIdentifier = [collectionCopy collectionIdentifier];
    [v9 setCuratedCollectionIdentifier:{objc_msgSend(collectionIdentifier, "muid")}];

    collectionIdentifier2 = [collectionCopy collectionIdentifier];
    [v9 setResultProviderIdentifier:{objc_msgSend(collectionIdentifier2, "resultProviderID")}];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100735154;
    v13[3] = &unk_101661090;
    v14 = v9;
    v15 = completionCopy;
    v12 = v9;
    dispatch_async(&_dispatch_main_q, v13);
  }
}

@end