@interface POISearchManager
- (POISearchManager)init;
- (id)searchResultForIdentifier:(id)a3;
- (void)_cacheAndHandleSearchResult:(id)a3 identifier:(id)a4 completionHandlers:(id)a5;
- (void)_setLoading:(BOOL)a3 forIdentifier:(id)a4;
- (void)_updateActivityIndicatorForIdentifier:(id)a3;
- (void)searchForIdentifier:(id)a3 allowExpired:(BOOL)a4 traits:(id)a5 completionHandler:(id)a6 searchResultType:(unsigned int)a7 callbackQueue:(id)a8;
- (void)setCanShowActivityIndicator:(BOOL)a3 forIdentifier:(id)a4;
@end

@implementation POISearchManager

- (void)searchForIdentifier:(id)a3 allowExpired:(BOOL)a4 traits:(id)a5 completionHandler:(id)a6 searchResultType:(unsigned int)a7 callbackQueue:(id)a8
{
  v12 = a4;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = sub_1009E39B0();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v37 = v14;
    v38 = 1024;
    v39 = v12;
    v40 = 1024;
    v41 = a7;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Performing search for identifier %@, allow expired %u, searchResultType %u", buf, 0x18u);
  }

  v19 = sub_1009E3A04(v14);

  v20 = [(NSMapTable *)self->_completionHandlers objectForKey:v19];
  v21 = v20;
  if (!v20)
  {
    v21 = [[NSMutableArray alloc] initWithCapacity:1];
    [(NSMapTable *)self->_completionHandlers setObject:v21 forKey:v19];
  }

  if (v16)
  {
    v22 = [v16 copy];
    [v21 addObject:v22];
  }

  if (!v20)
  {
    [v15 setSource:2];
    v23 = sub_1009E39B0();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (v12)
    {
      if (v24)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Using default ticket for identifier", buf, 2u);
      }

      v25 = +[MKMapService sharedService];
      v35 = v19;
      v26 = [NSArray arrayWithObjects:&v35 count:1];
      v27 = [v25 ticketForIdentifiers:v26 resultProviderID:0 contentProvider:0 traits:v15];
    }

    else
    {
      if (v24)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Using nonexpired ticket for identifier", buf, 2u);
      }

      v25 = +[MKMapService sharedService];
      v27 = [v25 ticketForNonExpiredIdentifier:v19 resultProviderID:0 contentProvider:0 traits:v15];
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1009E3AF4;
    v30[3] = &unk_1016315C0;
    v31 = v21;
    v32 = v19;
    v33 = self;
    v34 = a7;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1009E3D64;
    v28[3] = &unk_101661570;
    v28[4] = self;
    v29 = v32;
    [v27 submitWithHandler:v30 queue:v17 networkActivity:v28];
  }
}

- (void)_cacheAndHandleSearchResult:(id)a3 identifier:(id)a4 completionHandlers:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

  [(NSCache *)poiCache setObject:v8 forKey:v9];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v10;
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

  [(NSMapTable *)self->_completionHandlers removeObjectForKey:v9, v20];
  [(POISearchManager *)self setCanShowActivityIndicator:0 forIdentifier:v9];
}

- (id)searchResultForIdentifier:(id)a3
{
  v4 = sub_1009E3A04(a3);
  v5 = [(NSCache *)self->_poiCache objectForKey:v4];

  return v5;
}

- (void)_setLoading:(BOOL)a3 forIdentifier:(id)a4
{
  v4 = a3;
  v6 = a4;
  loadingForBusinessIDs = self->_loadingForBusinessIDs;
  v11 = v6;
  if (v4)
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
    [(NSMutableDictionary *)loadingForBusinessIDs removeObjectForKey:v6];
  }

  [(POISearchManager *)self _updateActivityIndicatorForIdentifier:v11];
}

- (void)setCanShowActivityIndicator:(BOOL)a3 forIdentifier:(id)a4
{
  v4 = a3;
  v6 = sub_1009E3A04(a4);
  canShowActivityIndicatorForBusinessIDs = self->_canShowActivityIndicatorForBusinessIDs;
  v11 = v6;
  if (v4)
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

- (void)_updateActivityIndicatorForIdentifier:(id)a3
{
  v16 = a3;
  v4 = [(NSMutableDictionary *)self->_canShowActivityIndicatorForBusinessIDs objectForKeyedSubscript:v16];
  v5 = [v4 BOOLValue];

  v6 = [(NSMutableDictionary *)self->_loadingForBusinessIDs objectForKeyedSubscript:v16];
  v7 = [v6 BOOLValue];

  v8 = v5 & v7;
  v9 = [(NSMutableDictionary *)self->_loadingTokensForBusinessIDs objectForKeyedSubscript:v16];
  if (v8 == 1 && v9 == 0)
  {
    v12 = +[LoadingIndicatorController sharedController];
    v11 = [v12 beginShowingLoadingIndicator];

    loadingTokensForBusinessIDs = self->_loadingTokensForBusinessIDs;
    if (!loadingTokensForBusinessIDs)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      v15 = self->_loadingTokensForBusinessIDs;
      self->_loadingTokensForBusinessIDs = v14;

      loadingTokensForBusinessIDs = self->_loadingTokensForBusinessIDs;
    }

    [(NSMutableDictionary *)loadingTokensForBusinessIDs setObject:v11 forKeyedSubscript:v16];
  }

  else
  {
    v11 = v9;
    if (!((v9 == 0) | v8 & 1))
    {
      [(NSMutableDictionary *)self->_loadingTokensForBusinessIDs removeObjectForKey:v16];
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