@interface RecentCuratedCollectionResolver
- (GEOObserverHashTable)observers;
- (id)_collectionsNeedingResolution;
- (id)resolvedGEOPlaceCollectionForMapsSyncHistoryCuratedCollection:(id)collection;
- (void)_cancelTicket;
- (void)_mergeCollections:(id)collections error:(id)error;
- (void)_startTicket;
- (void)dealloc;
- (void)setRecentCuratedCollections:(id)collections;
@end

@implementation RecentCuratedCollectionResolver

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___RecentCuratedCollectionResolverObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (void)_mergeCollections:(id)collections error:(id)error
{
  collectionsCopy = collections;
  errorCopy = error;
  v6 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [collectionsCopy count]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = collectionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        collectionIdentifier = [v12 collectionIdentifier];
        [v6 setObject:v12 forKeyedSubscript:collectionIdentifier];
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v9);
  }

  v30 = v7;

  v14 = sub_10079890C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    allKeys = [v6 allKeys];
    *buf = 138412546;
    v45 = allKeys;
    v46 = 2112;
    v47 = errorCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Received resolved curated collections: %@, error = %@", buf, 0x16u);
  }

  v16 = [NSMutableDictionary dictionaryWithCapacity:[(NSArray *)self->_recentCuratedCollections count]];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = self->_recentCuratedCollections;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      v21 = 0;
      do
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v17);
        }

        mapItemIdentifier = [*(*(&v35 + 1) + 8 * v21) mapItemIdentifier];
        v23 = [(NSDictionary *)self->_resolvedCuratedCollections objectForKeyedSubscript:mapItemIdentifier];
        v24 = [v6 objectForKeyedSubscript:mapItemIdentifier];
        if (v24)
        {
          v25 = [Result resultWithValue:v24];
LABEL_21:
          v26 = v25;
          goto LABEL_22;
        }

        if ([v23 isSuccess])
        {
          goto LABEL_18;
        }

        if (errorCopy)
        {
          v25 = [Result resultWithError:?];
          goto LABEL_21;
        }

        if (v23)
        {
LABEL_18:
          v25 = v23;
          goto LABEL_21;
        }

        v32 = GEOErrorDomain();
        v31 = [NSError errorWithDomain:v32 code:-6 userInfo:0];
        v26 = [Result resultWithError:v31];

LABEL_22:
        [v16 setObject:v26 forKeyedSubscript:mapItemIdentifier];

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v27 = [(NSArray *)v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
      v19 = v27;
    }

    while (v27);
  }

  v28 = [v16 copy];
  resolvedCuratedCollections = self->_resolvedCuratedCollections;
  self->_resolvedCuratedCollections = v28;

  [(RecentCuratedCollectionResolver *)self _notifyObservers];
}

- (void)_startTicket
{
  [(RecentCuratedCollectionResolver *)self _cancelTicket];
  _collectionsNeedingResolution = [(RecentCuratedCollectionResolver *)self _collectionsNeedingResolution];
  v4 = sub_100021DB0(_collectionsNeedingResolution, &stru_101632E00);
  if ([v4 count])
  {
    v5 = sub_10079890C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Resolving curated collections for identifiers: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v6 = +[MKMapService sharedService];
    v7 = MKMapItemIdentifiersArrayFromGEOMapItemIdentifiersArray();
    v8 = [v6 ticketForCuratedCollections:v7 isBatchLookup:1 traits:0];
    ticket = self->_ticket;
    p_ticket = &self->_ticket;
    *p_ticket = v8;

    v11 = *p_ticket;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100A78750;
    v12[3] = &unk_10165F290;
    objc_copyWeak(&v13, buf);
    [(MKMapServiceCuratedCollectionTicket *)v11 submitWithHandler:v12 networkActivity:0];
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

- (void)_cancelTicket
{
  [(MKMapServiceCuratedCollectionTicket *)self->_ticket cancel];
  ticket = self->_ticket;
  self->_ticket = 0;
}

- (id)_collectionsNeedingResolution
{
  recentCuratedCollections = self->_recentCuratedCollections;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A78898;
  v5[3] = &unk_101632DC0;
  v5[4] = self;
  v3 = sub_1000282CC(recentCuratedCollections, v5);

  return v3;
}

- (id)resolvedGEOPlaceCollectionForMapsSyncHistoryCuratedCollection:(id)collection
{
  collectionCopy = collection;
  resolvedCuratedCollections = self->_resolvedCuratedCollections;
  mapItemIdentifier = [collectionCopy mapItemIdentifier];
  v7 = [(NSDictionary *)resolvedCuratedCollections objectForKeyedSubscript:mapItemIdentifier];

  if (v7)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_100A78A30;
    v15 = sub_100A78A40;
    v16 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100A78A48;
    v10[3] = &unk_101659710;
    v10[4] = &v11;
    [v7 withValue:v10 orError:&stru_101632D98];
    v8 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setRecentCuratedCollections:(id)collections
{
  collectionsCopy = collections;
  v5 = collectionsCopy;
  if (self->_recentCuratedCollections != collectionsCopy)
  {
    v16 = collectionsCopy;
    v6 = [(NSArray *)collectionsCopy isEqual:?];
    v5 = v16;
    if ((v6 & 1) == 0)
    {
      v7 = [NSArray arrayWithArray:v16];
      recentCuratedCollections = self->_recentCuratedCollections;
      self->_recentCuratedCollections = v7;

      v9 = [NSSet setWithArray:self->_recentCuratedCollections];
      allKeys = [(NSDictionary *)self->_resolvedCuratedCollections allKeys];
      v11 = [NSMutableSet setWithArray:allKeys];

      [v11 minusSet:v9];
      v12 = [NSMutableDictionary dictionaryWithDictionary:self->_resolvedCuratedCollections];
      allObjects = [v11 allObjects];
      [v12 removeObjectsForKeys:allObjects];

      v14 = [v12 copy];
      resolvedCuratedCollections = self->_resolvedCuratedCollections;
      self->_resolvedCuratedCollections = v14;

      [(RecentCuratedCollectionResolver *)self _startTicket];
      v5 = v16;
    }
  }
}

- (void)dealloc
{
  [(RecentCuratedCollectionResolver *)self _cancelTicket];
  v3.receiver = self;
  v3.super_class = RecentCuratedCollectionResolver;
  [(RecentCuratedCollectionResolver *)&v3 dealloc];
}

@end