@interface SearchSession
+ (SearchSession)currentSearchSession;
+ (void)initialize;
+ (void)performLowFuelSearchForEngineType:(int)a3 withObserver:(id)a4;
+ (void)setCurrentSearchSession:(id)a3;
- (BOOL)isInvalidated;
- (BOOL)isOptionsLowFuel;
- (BOOL)isSingleResultToShowAsPlacecard;
- (BOOL)isSpotlightPunchInSearch;
- (BOOL)isVenueQuery;
- (NSArray)currentResults;
- (NSHashTable)observers;
- (NSString)currentSearchString;
- (NSString)currentUserTypedSearchString;
- (NSString)description;
- (NSString)printedPageSubtitle;
- (NSString)printedPageTitle;
- (NSString)stringToDisplay;
- (SearchInfo)currentResultsSearchInfo;
- (SearchSession)initWithOrigin:(unint64_t)a3 options:(unint64_t)a4;
- (unint64_t)searchRequestType;
- (unint64_t)selectedResultIndex;
- (void)_notifyAllObservers:(id)a3;
- (void)_notifyObservers:(id)a3 block:(id)a4;
- (void)_performSearch;
- (void)_performSearchIfNeeded;
- (void)_processResults:(id)a3;
- (void)_refreshEVChargers:(id)a3;
- (void)_setupTimersToRefreshEVChargers;
- (void)_willProcessSearchFieldItem;
- (void)cancelSearch;
- (void)didChangeSearchFieldItem;
- (void)didChangeSearchResults;
- (void)invalidate;
- (void)invalidateWithReason:(unint64_t)a3;
- (void)notifyPPTDidChangeSearchResults;
- (void)notifyToRefreshEVChargers:(id)a3;
- (void)redoSearchWithTraits:(id)a3;
- (void)registerObserver:(id)a3;
- (void)resetEVChargerTimers;
- (void)restoreSearchForItem:(id)a3 withResults:(id)a4;
- (void)searchManager:(id)a3 didReceiveSearchInfo:(id)a4 searchSessionData:(id)a5 error:(id)a6;
- (void)searchManager:(id)a3 willProcessSearchFieldItem:(id)a4;
- (void)setSelectedResultIndex:(unint64_t)a3;
- (void)showExistingSearchInfo:(id)a3;
- (void)startSearch:(id)a3;
- (void)suggestionSearch:(id)a3 withTraits:(id)a4;
- (void)unregisterObserver:(id)a3;
@end

@implementation SearchSession

- (BOOL)isSpotlightPunchInSearch
{
  if (![(SearchFieldItem *)self->_searchFieldItem isSpotlightSearch]|| [(SearchInfo *)self->_searchInfo searchResultViewType]!= 2)
  {
    return 0;
  }

  v3 = [(SearchInfo *)self->_searchInfo spotlightMapsIdentifier];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isInvalidated
{
  v2 = self;
  v3 = [(SearchSession *)self observersQueue];
  dispatch_assert_queue_not_V2(v3);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(SearchSession *)v2 observersQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006521E8;
  v6[3] = &unk_101661600;
  v6[4] = v2;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(v2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v2;
}

- (void)searchManager:(id)a3 didReceiveSearchInfo:(id)a4 searchSessionData:(id)a5 error:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = sub_100652444();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v19 = self;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "SearchSession %@ : didReceiveSearchInfo %@ error %@", buf, 0x20u);
  }

  v13 = sub_100067540();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ReceivedSearchResults", "", buf, 2u);
  }

  if (v11)
  {
    [(SearchSession *)self setIsLoading:0];
    [(SearchSession *)self setSearchSessionData:v10];
    [(SearchSession *)self setSearchInfo:v9];
    objc_storeStrong(&self->_lastError, a6);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100652498;
    v17[3] = &unk_101624BF8;
    v17[4] = self;
    [(SearchSession *)self _notifyAllObservers:v17];
    v14 = [v11 domain];
    v15 = GEOErrorDomain();
    if ([v14 isEqualToString:v15])
    {
      v16 = [v11 code];

      if (v16 == -8)
      {
        [(SearchSession *)self notifyPPTDidChangeSearchResults];
      }
    }

    else
    {
    }
  }

  else
  {
    [(SearchSession *)self _processResults:v9];
  }
}

- (void)searchManager:(id)a3 willProcessSearchFieldItem:(id)a4
{
  v5 = a4;
  v6 = sub_100652444();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "SearchSession %@ : willProcessSearchFieldItem %@", &v8, 0x16u);
  }

  v7 = sub_100067540();
  if (os_signpost_enabled(v7))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ReceivedSearchResults", "", &v8, 2u);
  }

  [(SearchSession *)self setIsLoading:1];
  [(SearchSession *)self _willProcessSearchFieldItem];
}

- (void)_willProcessSearchFieldItem
{
  lastError = self->_lastError;
  self->_lastError = 0;

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10065269C;
  v4[3] = &unk_101624BF8;
  v4[4] = self;
  [(SearchSession *)self _notifyAllObservers:v4];
}

- (void)_processResults:(id)a3
{
  v4 = a3;
  lastError = self->_lastError;
  self->_lastError = 0;

  [(SearchSession *)self setIsLoading:0];
  if (GEOConfigGetBOOL())
  {
    v6 = [v4 results];
    v7 = [v6 count];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v4 results];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * v12) setPartOfMultipleResultsSet:v7 > 1];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  if ([(SearchSession *)self isSuggestionSearch])
  {
    [(SearchSession *)self setSuggestionSearchInfo:v4];
  }

  else
  {
    [(SearchSession *)self setSearchInfo:v4];
  }

  v13 = [v4 searchSessionData];
  [(SearchSession *)self setSearchSessionData:v13];

  [(SearchSession *)self didChangeSearchResults];
}

- (void)_performSearch
{
  v3 = sub_100652444();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "SearchSession %@ : _performSearch", &v10, 0xCu);
  }

  searchManager = self->_searchManager;
  v5 = [(SearchSession *)self searchFieldItem];
  v6 = [(SearchSession *)self traits];
  v7 = [(SearchSession *)self source];
  v8 = [(SearchSession *)self isRedoOrAutoRedoSearchType];
  v9 = [(SearchSession *)self searchSessionData];
  [(SearchManager *)searchManager searchForSearchFieldItem:v5 traits:v6 source:v7 isRedoOrAutoRedoSearch:v8 searchSessionData:v9];
}

- (void)_performSearchIfNeeded
{
  v3 = [(SearchSession *)self searchFieldItem];
  v4 = [v3 searchResult];

  if (!v4)
  {
    v8 = [(SearchSession *)self searchFieldItem];
    v9 = [v8 historyItem];

    if (v9 && ((-[SearchSession searchFieldItem](self, "searchFieldItem"), v10 = objc_claimAutoreleasedReturnValue(), [v10 historyItem], v11 = objc_claimAutoreleasedReturnValue(), v12 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay, objc_opt_class(), v13 = v11, (objc_opt_isKindOfClass() & 1) == 0) ? (v14 = 0) : (v14 = v13), (v15 = v14, v13, !v15) || (objc_msgSend(v15, "historyEntry"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "conformsToProtocol:", v12), v16, !v17) ? (v18 = 0) : (v18 = v13), v15, v12, v13, v13, v10, v18))
    {
      v19 = [SearchResult alloc];
      v20 = [v18 historyEntry];
      v21 = [v20 geoMapItem];
      v4 = [(SearchResult *)v19 initWithGEOMapItem:v21];

      [(SearchResultRepr *)v4 setHasIncompleteMetadata:1];
      v22 = [(SearchResult *)v4 mapItem];
      v23 = [v22 _geoMapItem];
      v5 = [v23 displayMapRegionOrNil];

      if (v4)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v5 = 0;
    }

    [(SearchSession *)self _performSearch];
    goto LABEL_17;
  }

  v5 = 0;
LABEL_3:
  v24 = v4;
  v6 = [NSArray arrayWithObjects:&v24 count:1];
  v7 = [SearchInfo searchInfoWithResults:v6 boundingMapRegion:v5];

  [v7 setSelectedIndex:0];
  [(SearchSession *)self showExistingSearchInfo:v7];

LABEL_17:
}

- (void)_notifyObservers:(id)a3 block:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v6[2](v6, *(*(&v11 + 1) + 8 * v10));
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_notifyAllObservers:(id)a3
{
  v4 = a3;
  v5 = [(SearchSession *)self observersQueue];
  dispatch_assert_queue_not_V2(v5);

  if (v4)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_100652E34;
    v12 = sub_100652E44;
    v13 = 0;
    v6 = [(SearchSession *)self observersQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100652E4C;
    v7[3] = &unk_101661600;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(v6, v7);

    [(SearchSession *)self _notifyObservers:v9[5] block:v4];
    _Block_object_dispose(&v8, 8);
  }
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SearchSession *)self observersQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100652F68;
    v6[3] = &unk_101661A90;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  [(SearchSession *)self _assertNotInvalidated];
  if (v4)
  {
    v5 = [(SearchSession *)self observersQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10065307C;
    v6[3] = &unk_101661A90;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (NSHashTable)observers
{
  v3 = [(SearchSession *)self observersQueue];
  dispatch_assert_queue_V2(v3);

  observers = self->_observers;

  return observers;
}

- (BOOL)isSingleResultToShowAsPlacecard
{
  if ([(SearchSession *)self isVenueQuery]|| ![(SearchSession *)self singleResultMode]|| [(SearchSession *)self isRedoOrAutoRedoSearchType])
  {
    v3 = 0;
  }

  else
  {
    v13 = [(SearchSession *)self traits];
    v14 = [v13 resultRefinementQuery];
    v3 = v14 == 0;
  }

  v4 = [(SearchSession *)self searchInfo];
  v5 = [v4 results];
  if ([v5 count] != 1)
  {

    goto LABEL_11;
  }

  v6 = [(SearchSession *)self isRedoOrAutoRedoSearchType];

  if (v6)
  {
LABEL_11:
    v9 = [(SearchSession *)self searchInfo];
    v10 = [v9 autocompletePerson];
    v11 = v10 != 0;

    v3 |= v11;
    return v3 & 1;
  }

  v7 = [(SearchSession *)self searchInfo];
  v8 = [v7 searchResultViewType];

  if (v8 == 1)
  {
    v3 = 0;
  }

  else if (v8 == 2)
  {
    v3 = 1;
  }

  return v3 & 1;
}

- (unint64_t)searchRequestType
{
  v2 = [(SearchSession *)self traits];
  v3 = [v2 searchRequestType];

  if (v3 == 2)
  {
    return 2;
  }

  else
  {
    return v3 == 1;
  }
}

- (unint64_t)selectedResultIndex
{
  v3 = [(SearchSession *)self currentResultsSearchInfo];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 selectedIndex];
    v6 = [(SearchSession *)self currentResults];
    v7 = [v6 count];

    if (v5 >= v7)
    {
      v9 = [(SearchSession *)self currentResults];
      v8 = [v9 count] - 1;
    }

    else
    {
      v8 = [v4 selectedIndex];
    }
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (void)setSelectedResultIndex:(unint64_t)a3
{
  v5 = [(SearchSession *)self currentResultsSearchInfo];
  if (v5)
  {
    v7 = v5;
    v6 = [v5 selectedIndex] == a3;
    v5 = v7;
    if (!v6)
    {
      [v7 setSelectedIndex:a3];
      [(SearchSession *)self didChangeSearchResults];
      v5 = v7;
    }
  }
}

- (SearchInfo)currentResultsSearchInfo
{
  v3 = [(SearchSession *)self suggestionSearchInfo];

  if (v3)
  {
    [(SearchSession *)self suggestionSearchInfo];
  }

  else
  {
    [(SearchSession *)self searchInfo];
  }
  v4 = ;

  return v4;
}

- (NSArray)currentResults
{
  v3 = [(SearchSession *)self suggestionSearchInfo];

  if (v3)
  {
    [(SearchSession *)self suggestionSearchInfo];
  }

  else
  {
    [(SearchSession *)self searchInfo];
  }
  v4 = ;
  v5 = [v4 results];

  return v5;
}

- (NSString)stringToDisplay
{
  if ([(SearchSession *)self isSuggestionSearch])
  {
    v3 = [(SearchSession *)self suggestion];
    [v3 displayString];
  }

  else
  {
    v3 = [(SearchSession *)self searchFieldItem];
    [v3 searchString];
  }
  v4 = ;

  return v4;
}

- (BOOL)isVenueQuery
{
  v2 = [(SearchSession *)self searchFieldItem];
  v3 = [v2 venueCategoryItem];
  v4 = v3 != 0;

  return v4;
}

- (void)invalidateWithReason:(unint64_t)a3
{
  v5 = sub_100652444();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SearchSession %@ : invalidate", &buf, 0xCu);
  }

  v6 = [(SearchSession *)self observersQueue];
  dispatch_assert_queue_not_V2(v6);

  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x3032000000;
  v17 = sub_100652E34;
  v18 = sub_100652E44;
  v19 = 0;
  v7 = [(SearchSession *)self observersQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100653790;
  block[3] = &unk_101661600;
  block[4] = self;
  block[5] = &buf;
  dispatch_sync(v7, block);

  if ([*(*(&buf + 1) + 40) count])
  {
    v8 = self;
    v9 = *(*(&buf + 1) + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1006537F4;
    v11[3] = &unk_101624CB0;
    v10 = v8;
    v12 = v10;
    v13 = a3;
    [(SearchSession *)v10 _notifyObservers:v9 block:v11];
  }

  _Block_object_dispose(&buf, 8);
}

- (void)cancelSearch
{
  v2 = [(SearchSession *)self searchManager];
  [v2 cancelSearch];
}

- (void)invalidate
{
  [(SearchSession *)self resetEVChargerTimers];

  [(SearchSession *)self invalidateWithReason:0];
}

- (void)notifyToRefreshEVChargers:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100653910;
  v5[3] = &unk_101624BF8;
  v6 = a3;
  v4 = v6;
  [(SearchSession *)self _notifyAllObservers:v5];
}

- (void)_refreshEVChargers:(id)a3
{
  v4 = a3;
  v5 = +[MapsOfflineUIHelper sharedHelper];
  v6 = [v5 isUsingOfflineMaps];

  if ((v6 & 1) == 0)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100653B30;
    v14[3] = &unk_101624C60;
    v7 = objc_alloc_init(NSMutableArray);
    v15 = v7;
    [v4 enumerateObjectsUsingBlock:v14];
    if ([v7 count])
    {
      v8 = +[MKMapService sharedService];
      v9 = [v8 ticketForRefreshingEVChargersWithIdentifiers:v7 traits:0];

      objc_initWeak(&location, self);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100653BAC;
      v10[3] = &unk_10165DCC8;
      objc_copyWeak(&v12, &location);
      v11 = v4;
      [v9 submitRefreshRequestWithHandler:v10 networkActivity:0];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

- (void)resetEVChargerTimers
{
  [(NSMutableArray *)self->_timers enumerateObjectsUsingBlock:&stru_101624C38];
  timers = self->_timers;

  [(NSMutableArray *)timers removeAllObjects];
}

- (void)_setupTimersToRefreshEVChargers
{
  v2 = [(SearchSession *)self searchInfo];
  v32 = [v2 results];

  if ([v32 count])
  {
    [(SearchSession *)self resetEVChargerTimers];
    v3 = +[NSMutableDictionary dictionary];
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v43 = 0u;
    v4 = v32;
    v5 = [v4 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v5)
    {
      v6 = *v44;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v44 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v43 + 1) + 8 * i);
          v9 = [v8 mapItem];
          v10 = [v9 _geoMapItem];
          v11 = [v10 _hasEVCharger];

          if (v11)
          {
            v12 = [v8 mapItem];
            v13 = [v12 _realTimeAvailableEVCharger];
            v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 ttlSeconds]);

            v15 = [v3 objectForKeyedSubscript:v14];
            v16 = v15;
            if (v15)
            {
              v17 = [v15 mutableCopy];
            }

            else
            {
              v17 = +[NSMutableArray array];
            }

            v18 = v17;
            v19 = [v8 mapItem];
            [v18 addObject:v19];

            [v3 setObject:v18 forKeyedSubscript:v14];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v5);
    }

    v20 = [v3 allKeys];
    v21 = [v20 count] == 0;

    if (!v21)
    {
      v22 = [v3 allKeys];
      v23 = [v22 sortedArrayUsingSelector:"compare:"];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = v23;
      v24 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v24)
      {
        v25 = *v40;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v40 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v39 + 1) + 8 * j);
            v28 = [v3 objectForKeyedSubscript:{v27, v32}];
            if ([v28 count])
            {
              v29 = dispatch_get_global_queue(9, 0);
              objc_initWeak(&location, self);
              v30 = [v27 integerValue];
              v35[0] = _NSConcreteStackBlock;
              v35[1] = 3221225472;
              v35[2] = sub_10065439C;
              v35[3] = &unk_10163B580;
              objc_copyWeak(&v37, &location);
              v36 = v28;
              v31 = [GCDTimer scheduledTimerWithTimeInterval:v29 queue:1 repeating:v35 block:v30];
              [(NSMutableArray *)self->_timers addObject:v31];

              objc_destroyWeak(&v37);
              objc_destroyWeak(&location);
            }
          }

          v24 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v24);
      }
    }
  }
}

- (void)didChangeSearchResults
{
  [(SearchSession *)self _setupTimersToRefreshEVChargers];
  [(SearchSession *)self notifyPPTDidChangeSearchResults];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100654478;
  v3[3] = &unk_101624BF8;
  v3[4] = self;
  [(SearchSession *)self _notifyAllObservers:v3];
}

- (void)notifyPPTDidChangeSearchResults
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"SearchSessionDidChangeSearchResultsNotification" object:self userInfo:0];
}

- (void)didChangeSearchFieldItem
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100654554;
  v2[3] = &unk_101624BF8;
  v2[4] = self;
  [(SearchSession *)self _notifyAllObservers:v2];
}

- (void)showExistingSearchInfo:(id)a3
{
  [(SearchSession *)self setSearchInfo:a3];

  [(SearchSession *)self didChangeSearchResults];
}

- (void)restoreSearchForItem:(id)a3 withResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  -[SearchSession setRestoreSingleResult:](self, "setRestoreSingleResult:", [v7 singleResultMode]);
  [(SearchSession *)self _assertNotInvalidated];
  if ([(SearchSession *)self shouldBroadcast])
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"SearchSessionWillStart" object:self];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006546AC;
  block[3] = &unk_101661A40;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)redoSearchWithTraits:(id)a3
{
  v4 = a3;
  [(SearchSession *)self _assertNotInvalidated];
  [(SearchSession *)self setTraits:v4];

  v13 = [(SearchSession *)self searchFieldItem];
  v5 = [(SearchSession *)self suggestion];

  if (v5)
  {
    v6 = objc_alloc_init(SearchFieldItem);

    v7 = [(SearchSession *)self suggestion];
    [(SearchFieldItem *)v6 setSuggestion:v7];

    v13 = v6;
  }

  searchManager = self->_searchManager;
  v9 = [(SearchSession *)self traits];
  v10 = [(SearchSession *)self source];
  v11 = [(SearchSession *)self isRedoOrAutoRedoSearchType];
  v12 = [(SearchSession *)self searchSessionData];
  [(SearchManager *)searchManager searchForSearchFieldItem:v13 traits:v9 source:v10 isRedoOrAutoRedoSearch:v11 searchSessionData:v12];
}

- (void)suggestionSearch:(id)a3 withTraits:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SearchSession *)self _assertNotInvalidated];
  v8 = [(SearchSession *)self searchInfo];
  v9 = [v8 defaultSuggestion];

  if (v9 == v6)
  {
    [(SearchSession *)self setSuggestion:0];
    [(SearchSession *)self setSuggestionSearchInfo:0];
    [(SearchSession *)self setIsSuggestionSearch:0];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1006549E4;
    v16[3] = &unk_101624BF8;
    v16[4] = self;
    [(SearchSession *)self _notifyAllObservers:v16];
    [(SearchSession *)self didChangeSearchResults];
  }

  else
  {
    [(SearchSession *)self setSuggestion:v6];
    [(SearchSession *)self setTraits:v7];
    [(SearchSession *)self setIsSuggestionSearch:1];
    v10 = objc_alloc_init(SearchFieldItem);
    [(SearchFieldItem *)v10 setSuggestion:v6];
    searchManager = self->_searchManager;
    v12 = [(SearchSession *)self traits];
    v13 = [(SearchSession *)self source];
    v14 = [(SearchSession *)self isRedoOrAutoRedoSearchType];
    v15 = [(SearchSession *)self searchSessionData];
    [(SearchManager *)searchManager searchForSearchFieldItem:v10 traits:v12 source:v13 isRedoOrAutoRedoSearch:v14 searchSessionData:v15];
  }
}

- (void)startSearch:(id)a3
{
  v4 = a3;
  v5 = sub_100652444();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SearchSession %@ : startSearch %@", &v7, 0x16u);
  }

  [(SearchSession *)self _assertNotInvalidated];
  [(SearchSession *)self setSearchFieldItem:v4];
  if ([(SearchSession *)self shouldBroadcast])
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"SearchSessionWillStart" object:self];
  }

  [(SearchSession *)self didChangeSearchFieldItem];
  [(SearchSession *)self _performSearchIfNeeded];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(SearchSession *)self searchFieldItem];
  v5 = [(SearchSession *)self currentResultsSearchInfo];
  v6 = [NSString stringWithFormat:@"<%@: %p> %@ %@ ", v3, self, v4, v5];

  return v6;
}

- (SearchSession)initWithOrigin:(unint64_t)a3 options:(unint64_t)a4
{
  v20.receiver = self;
  v20.super_class = SearchSession;
  v6 = [(SearchSession *)&v20 init];
  v7 = v6;
  if (v6)
  {
    v6->_options = a4;
    v6->_origin = a3;
    v8 = +[UIDevice currentDevice];
    if ([v8 userInterfaceIdiom] == 1)
    {

      v9 = 0;
    }

    else
    {
      v10 = +[UIDevice currentDevice];
      v9 = [v10 userInterfaceIdiom] != 5;
    }

    v7->_shouldBroadcast = v9;
    v11 = objc_alloc_init(SearchManager);
    searchManager = v7->_searchManager;
    v7->_searchManager = v11;

    [(SearchManager *)v7->_searchManager setDelegate:v7];
    v13 = dispatch_queue_create("com.apple.Maps.SearchSession", 0);
    observersQueue = v7->_observersQueue;
    v7->_observersQueue = v13;

    v15 = +[NSHashTable weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v15;

    v17 = +[NSMutableArray array];
    timers = v7->_timers;
    v7->_timers = v17;
  }

  return v7;
}

+ (void)setCurrentSearchSession:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&qword_10195CDA8);

  v4 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&qword_10195CDA8, obj);
    v4 = obj;
  }
}

+ (SearchSession)currentSearchSession
{
  WeakRetained = objc_loadWeakRetained(&qword_10195CDA8);
  v3 = [WeakRetained isInvalidated];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_loadWeakRetained(&qword_10195CDA8);
  }

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100654E88;
    v5[3] = &unk_101624BD0;
    v5[4] = a1;
    v4 = [v3 addObserverForName:@"SearchSessionWillStart" object:0 queue:0 usingBlock:v5];
  }
}

- (NSString)printedPageSubtitle
{
  v3 = [(SearchSession *)self searchFieldItem];
  v4 = [(SearchSession *)self currentResults];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100D116C0;
  v19 = sub_100D116D0;
  v20 = 0;
  v5 = [v3 historyItem];
  v6 = [v5 historyEntry];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100D116D8;
  v14[3] = &unk_101656AE8;
  v14[4] = &v15;
  [v6 ifSearch:v14 ifRoute:0 ifPlaceDisplay:0 ifTransitLineItem:0];

  if (![v16[5] length] && objc_msgSend(v4, "count"))
  {
    v7 = [v4 objectAtIndexedSubscript:0];
    v8 = +[NSBundle mainBundle];
    v10 = [v8 localizedStringForKey:@"near %@" value:@"localized string not found" table:0];
    v11 = [v7 mapItem];
    v12 = [v11 _addressFormattedAsCity];
    v9 = [NSString stringWithFormat:v10, v12];

    goto LABEL_6;
  }

  if ([v16[5] length])
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"near %@" value:@"localized string not found" table:0];
    v9 = [NSString stringWithFormat:v8, v16[5]];
LABEL_6:

    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (NSString)printedPageTitle
{
  v2 = [(SearchSession *)self searchFieldItem];
  v3 = [v2 title];

  return v3;
}

- (NSString)currentUserTypedSearchString
{
  v2 = [(SearchSession *)self searchFieldItem];
  v3 = [v2 userTypedStringForRAP];

  return v3;
}

- (NSString)currentSearchString
{
  v2 = [(SearchSession *)self searchFieldItem];
  v3 = [v2 searchString];

  return v3;
}

- (BOOL)isOptionsLowFuel
{
  if (([(SearchSession *)self options]& 2) != 0)
  {
    return 1;
  }

  else
  {
    return [(SearchSession *)self options]& 1;
  }
}

+ (void)performLowFuelSearchForEngineType:(int)a3 withObserver:(id)a4
{
  v6 = a4;
  v7 = +[CarDisplayController sharedInstance];
  v8 = [v7 chromeViewController];
  v9 = [v8 currentTraits];

  if (v9)
  {
    dword_10195F934 = 0;
    v10 = sub_100006E1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Initiating a fuel search", buf, 2u);
    }

    if (!v6)
    {
      v6 = +[CarDisplayController sharedInstance];
    }

    v11 = +[CarDisplayController sharedInstance];
    v12 = [v11 chromeViewController];
    v13 = [v12 currentTraits];

    v14 = +[MNNavigationService sharedService];
    [v13 setNavigating:{objc_msgSend(v14, "isInNavigatingState")}];

    v15 = +[MapsExternalAccessory sharedInstance];
    if ([v15 primaryEngineType] == a3)
    {

      v16 = a3 & 1;
    }

    else
    {
      v16 = a3 & 1;

      if (((a3 >> 1) & 1) + v16 + ((a3 >> 2) & 1) + ((a3 >> 3) & 1) <= 1)
      {
        v19 = @"Stark-SARHybrid";
        v20 = @"Stark-SARHybrid";
        [v13 clearEngineTypes];
        [v13 addEngineType:3];
        [BrowseManager setCacheKey:@"Stark-SARHybrid" writesToDisk:0];
        goto LABEL_25;
      }
    }

    v18 = @"Stark-SAR";
    [v13 clearEngineTypes];
    if (v16)
    {
      [v13 addEngineType:1];
    }

    if ((a3 & 4) != 0)
    {
      [v13 addEngineType:3];
      if ((a3 & 2) == 0)
      {
LABEL_17:
        if ((a3 & 8) == 0)
        {
LABEL_19:
          v19 = @"Stark-SAR";
LABEL_25:
          v21 = [[BrowseManager alloc] initWithCacheKey:v19];
          [(BrowseManager *)v21 setTraits:v13];

          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100FB0DE8;
          v23[3] = &unk_10165FE18;
          v24 = v21;
          v6 = v6;
          v25 = v6;
          v22 = v21;
          [(BrowseManager *)v22 getCategoriesWithCompletion:v23];

          goto LABEL_26;
        }

LABEL_18:
        [v13 addEngineType:4];
        goto LABEL_19;
      }
    }

    else if ((a3 & 2) == 0)
    {
      goto LABEL_17;
    }

    [v13 addEngineType:2];
    if ((a3 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v17 = sub_100006E1C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v31 = dword_10195F934;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Chrome not ready for fuel search, delaying performSearchForEngineTypeCount=%d", buf, 8u);
  }

  if (dword_10195F934 > 9)
  {
    dword_10195F934 = 0;
  }

  else
  {
    ++dword_10195F934;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100FB0DD8;
    block[3] = &unk_10165FDC8;
    v28 = a1;
    v29 = a3;
    v6 = v6;
    v27 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }

LABEL_26:
}

@end