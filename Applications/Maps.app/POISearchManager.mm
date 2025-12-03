@interface POISearchManager
- (POISearchManager)init;
- (id)searchResultForIdentifier:(id)identifier;
- (void)_cacheAndHandleSearchResult:(id)result identifier:(id)identifier completionHandlers:(id)handlers;
- (void)_setLoading:(BOOL)loading forIdentifier:(id)identifier;
- (void)_updateActivityIndicatorForIdentifier:(id)identifier;
- (void)searchForIdentifier:(id)identifier allowExpired:(BOOL)expired traits:(id)traits completionHandler:(id)handler searchResultType:(unsigned int)type callbackQueue:(id)queue;
- (void)setCanShowActivityIndicator:(BOOL)indicator forIdentifier:(id)identifier;
@end

@implementation POISearchManager

- (void)searchForIdentifier:(id)identifier allowExpired:(BOOL)expired traits:(id)traits completionHandler:(id)handler searchResultType:(unsigned int)type callbackQueue:(id)queue
{
  expiredCopy = expired;
  identifierCopy = identifier;
  traitsCopy = traits;
  handlerCopy = handler;
  queueCopy = queue;
  v18 = sub_1009E39B0();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v37 = identifierCopy;
    v38 = 1024;
    v39 = expiredCopy;
    v40 = 1024;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Performing search for identifier %@, allow expired %u, searchResultType %u", buf, 0x18u);
  }

  v19 = sub_1009E3A04(identifierCopy);

  v20 = [(NSMapTable *)self->_completionHandlers objectForKey:v19];
  v21 = v20;
  if (!v20)
  {
    v21 = [[NSMutableArray alloc] initWithCapacity:1];
    [(NSMapTable *)self->_completionHandlers setObject:v21 forKey:v19];
  }

  if (handlerCopy)
  {
    v22 = [handlerCopy copy];
    [v21 addObject:v22];
  }

  if (!v20)
  {
    [traitsCopy setSource:2];
    v23 = sub_1009E39B0();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (expiredCopy)
    {
      if (v24)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Using default ticket for identifier", buf, 2u);
      }

      v25 = +[MKMapService sharedService];
      v35 = v19;
      v26 = [NSArray arrayWithObjects:&v35 count:1];
      v27 = [v25 ticketForIdentifiers:v26 resultProviderID:0 contentProvider:0 traits:traitsCopy];
    }

    else
    {
      if (v24)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Using nonexpired ticket for identifier", buf, 2u);
      }

      v25 = +[MKMapService sharedService];
      v27 = [v25 ticketForNonExpiredIdentifier:v19 resultProviderID:0 contentProvider:0 traits:traitsCopy];
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1009E3AF4;
    v30[3] = &unk_1016315C0;
    v31 = v21;
    v32 = v19;
    selfCopy = self;
    typeCopy2 = type;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1009E3D64;
    v28[3] = &unk_101661570;
    v28[4] = self;
    v29 = v32;
    [v27 submitWithHandler:v30 queue:queueCopy networkActivity:v28];
  }
}

- (void)_cacheAndHandleSearchResult:(id)result identifier:(id)identifier completionHandlers:(id)handlers
{
  resultCopy = result;
  identifierCopy = identifier;
  handlersCopy = handlers;
  poiCache = self->_poiCache;
  if (!poiCache)
  {
    v12 = objc_alloc_init(NSCache);
    v13 = self->_poiCache;
    self->_poiCache = v12;

    v14 = +[GEOResourceManifestManager modernManager];
    [v14 addTileGroupObserver:self queue:&_dispatch_main_q];

    poiCache = self->_poiCache;
  }

  [(NSCache *)poiCache setObject:resultCopy forKey:identifierCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = handlersCopy;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        (*(*(*(&v20 + 1) + 8 * v19) + 16))(*(*(&v20 + 1) + 8 * v19));
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }

  [(NSMapTable *)self->_completionHandlers removeObjectForKey:identifierCopy, v20];
  [(POISearchManager *)self setCanShowActivityIndicator:0 forIdentifier:identifierCopy];
}

- (id)searchResultForIdentifier:(id)identifier
{
  v4 = sub_1009E3A04(identifier);
  v5 = [(NSCache *)self->_poiCache objectForKey:v4];

  return v5;
}

- (void)_setLoading:(BOOL)loading forIdentifier:(id)identifier
{
  loadingCopy = loading;
  identifierCopy = identifier;
  loadingForBusinessIDs = self->_loadingForBusinessIDs;
  v11 = identifierCopy;
  if (loadingCopy)
  {
    if (!loadingForBusinessIDs)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
      v9 = self->_loadingForBusinessIDs;
      self->_loadingForBusinessIDs = v8;
    }

    v10 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->_loadingForBusinessIDs setObject:v10 forKeyedSubscript:v11];
  }

  else
  {
    [(NSMutableDictionary *)loadingForBusinessIDs removeObjectForKey:identifierCopy];
  }

  [(POISearchManager *)self _updateActivityIndicatorForIdentifier:v11];
}

- (void)setCanShowActivityIndicator:(BOOL)indicator forIdentifier:(id)identifier
{
  indicatorCopy = indicator;
  v6 = sub_1009E3A04(identifier);
  canShowActivityIndicatorForBusinessIDs = self->_canShowActivityIndicatorForBusinessIDs;
  v11 = v6;
  if (indicatorCopy)
  {
    if (!canShowActivityIndicatorForBusinessIDs)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
      v9 = self->_canShowActivityIndicatorForBusinessIDs;
      self->_canShowActivityIndicatorForBusinessIDs = v8;
    }

    v10 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->_canShowActivityIndicatorForBusinessIDs setObject:v10 forKeyedSubscript:v11];
  }

  else
  {
    [(NSMutableDictionary *)canShowActivityIndicatorForBusinessIDs removeObjectForKey:v6];
  }

  [(POISearchManager *)self _updateActivityIndicatorForIdentifier:v11];
}

- (void)_updateActivityIndicatorForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(NSMutableDictionary *)self->_canShowActivityIndicatorForBusinessIDs objectForKeyedSubscript:identifierCopy];
  bOOLValue = [v4 BOOLValue];

  v6 = [(NSMutableDictionary *)self->_loadingForBusinessIDs objectForKeyedSubscript:identifierCopy];
  bOOLValue2 = [v6 BOOLValue];

  v8 = bOOLValue & bOOLValue2;
  v9 = [(NSMutableDictionary *)self->_loadingTokensForBusinessIDs objectForKeyedSubscript:identifierCopy];
  if (v8 == 1 && v9 == 0)
  {
    v12 = +[LoadingIndicatorController sharedController];
    beginShowingLoadingIndicator = [v12 beginShowingLoadingIndicator];

    loadingTokensForBusinessIDs = self->_loadingTokensForBusinessIDs;
    if (!loadingTokensForBusinessIDs)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      v15 = self->_loadingTokensForBusinessIDs;
      self->_loadingTokensForBusinessIDs = v14;

      loadingTokensForBusinessIDs = self->_loadingTokensForBusinessIDs;
    }

    [(NSMutableDictionary *)loadingTokensForBusinessIDs setObject:beginShowingLoadingIndicator forKeyedSubscript:identifierCopy];
  }

  else
  {
    beginShowingLoadingIndicator = v9;
    if (!((v9 == 0) | v8 & 1))
    {
      [(NSMutableDictionary *)self->_loadingTokensForBusinessIDs removeObjectForKey:identifierCopy];
    }
  }
}

- (POISearchManager)init
{
  v7.receiver = self;
  v7.super_class = POISearchManager;
  v2 = [(POISearchManager *)&v7 init];
  if (v2)
  {
    v3 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:5];
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v3;

    v5 = v2;
  }

  return v2;
}

@end