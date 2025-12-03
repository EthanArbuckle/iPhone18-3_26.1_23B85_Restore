@interface SearchSession
+ (SearchSession)currentSearchSession;
+ (void)initialize;
+ (void)performLowFuelSearchForEngineType:(int)type withObserver:(id)observer;
+ (void)setCurrentSearchSession:(id)session;
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
- (SearchSession)initWithOrigin:(unint64_t)origin options:(unint64_t)options;
- (unint64_t)searchRequestType;
- (unint64_t)selectedResultIndex;
- (void)_notifyAllObservers:(id)observers;
- (void)_notifyObservers:(id)observers block:(id)block;
- (void)_performSearch;
- (void)_performSearchIfNeeded;
- (void)_processResults:(id)results;
- (void)_refreshEVChargers:(id)chargers;
- (void)_setupTimersToRefreshEVChargers;
- (void)_willProcessSearchFieldItem;
- (void)cancelSearch;
- (void)didChangeSearchFieldItem;
- (void)didChangeSearchResults;
- (void)invalidate;
- (void)invalidateWithReason:(unint64_t)reason;
- (void)notifyPPTDidChangeSearchResults;
- (void)notifyToRefreshEVChargers:(id)chargers;
- (void)redoSearchWithTraits:(id)traits;
- (void)registerObserver:(id)observer;
- (void)resetEVChargerTimers;
- (void)restoreSearchForItem:(id)item withResults:(id)results;
- (void)searchManager:(id)manager didReceiveSearchInfo:(id)info searchSessionData:(id)data error:(id)error;
- (void)searchManager:(id)manager willProcessSearchFieldItem:(id)item;
- (void)setSelectedResultIndex:(unint64_t)index;
- (void)showExistingSearchInfo:(id)info;
- (void)startSearch:(id)search;
- (void)suggestionSearch:(id)search withTraits:(id)traits;
- (void)unregisterObserver:(id)observer;
@end

@implementation SearchSession

- (BOOL)isSpotlightPunchInSearch
{
  if (![(SearchFieldItem *)self->_searchFieldItem isSpotlightSearch]|| [(SearchInfo *)self->_searchInfo searchResultViewType]!= 2)
  {
    return 0;
  }

  spotlightMapsIdentifier = [(SearchInfo *)self->_searchInfo spotlightMapsIdentifier];
  v4 = spotlightMapsIdentifier != 0;

  return v4;
}

- (BOOL)isInvalidated
{
  selfCopy = self;
  observersQueue = [(SearchSession *)self observersQueue];
  dispatch_assert_queue_not_V2(observersQueue);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  observersQueue2 = [(SearchSession *)selfCopy observersQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006521E8;
  v6[3] = &unk_101661600;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(observersQueue2, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

- (void)searchManager:(id)manager didReceiveSearchInfo:(id)info searchSessionData:(id)data error:(id)error
{
  infoCopy = info;
  dataCopy = data;
  errorCopy = error;
  v12 = sub_100652444();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    selfCopy = self;
    v20 = 2112;
    v21 = infoCopy;
    v22 = 2112;
    v23 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "SearchSession %@ : didReceiveSearchInfo %@ error %@", buf, 0x20u);
  }

  v13 = sub_100067540();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ReceivedSearchResults", "", buf, 2u);
  }

  if (errorCopy)
  {
    [(SearchSession *)self setIsLoading:0];
    [(SearchSession *)self setSearchSessionData:dataCopy];
    [(SearchSession *)self setSearchInfo:infoCopy];
    objc_storeStrong(&self->_lastError, error);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100652498;
    v17[3] = &unk_101624BF8;
    v17[4] = self;
    [(SearchSession *)self _notifyAllObservers:v17];
    domain = [errorCopy domain];
    v15 = GEOErrorDomain();
    if ([domain isEqualToString:v15])
    {
      code = [errorCopy code];

      if (code == -8)
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
    [(SearchSession *)self _processResults:infoCopy];
  }
}

- (void)searchManager:(id)manager willProcessSearchFieldItem:(id)item
{
  itemCopy = item;
  v6 = sub_100652444();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = itemCopy;
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

- (void)_processResults:(id)results
{
  resultsCopy = results;
  lastError = self->_lastError;
  self->_lastError = 0;

  [(SearchSession *)self setIsLoading:0];
  if (GEOConfigGetBOOL())
  {
    results = [resultsCopy results];
    v7 = [results count];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    results2 = [resultsCopy results];
    v9 = [results2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(results2);
          }

          [*(*(&v14 + 1) + 8 * v12) setPartOfMultipleResultsSet:v7 > 1];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [results2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  if ([(SearchSession *)self isSuggestionSearch])
  {
    [(SearchSession *)self setSuggestionSearchInfo:resultsCopy];
  }

  else
  {
    [(SearchSession *)self setSearchInfo:resultsCopy];
  }

  searchSessionData = [resultsCopy searchSessionData];
  [(SearchSession *)self setSearchSessionData:searchSessionData];

  [(SearchSession *)self didChangeSearchResults];
}

- (void)_performSearch
{
  v3 = sub_100652444();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "SearchSession %@ : _performSearch", &v10, 0xCu);
  }

  searchManager = self->_searchManager;
  searchFieldItem = [(SearchSession *)self searchFieldItem];
  traits = [(SearchSession *)self traits];
  source = [(SearchSession *)self source];
  isRedoOrAutoRedoSearchType = [(SearchSession *)self isRedoOrAutoRedoSearchType];
  searchSessionData = [(SearchSession *)self searchSessionData];
  [(SearchManager *)searchManager searchForSearchFieldItem:searchFieldItem traits:traits source:source isRedoOrAutoRedoSearch:isRedoOrAutoRedoSearchType searchSessionData:searchSessionData];
}

- (void)_performSearchIfNeeded
{
  searchFieldItem = [(SearchSession *)self searchFieldItem];
  searchResult = [searchFieldItem searchResult];

  if (!searchResult)
  {
    searchFieldItem2 = [(SearchSession *)self searchFieldItem];
    historyItem = [searchFieldItem2 historyItem];

    if (historyItem && ((-[SearchSession searchFieldItem](self, "searchFieldItem"), v10 = objc_claimAutoreleasedReturnValue(), [v10 historyItem], v11 = objc_claimAutoreleasedReturnValue(), v12 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay, objc_opt_class(), v13 = v11, (objc_opt_isKindOfClass() & 1) == 0) ? (v14 = 0) : (v14 = v13), (v15 = v14, v13, !v15) || (objc_msgSend(v15, "historyEntry"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "conformsToProtocol:", v12), v16, !v17) ? (v18 = 0) : (v18 = v13), v15, v12, v13, v13, v10, v18))
    {
      v19 = [SearchResult alloc];
      historyEntry = [v18 historyEntry];
      geoMapItem = [historyEntry geoMapItem];
      searchResult = [(SearchResult *)v19 initWithGEOMapItem:geoMapItem];

      [(SearchResultRepr *)searchResult setHasIncompleteMetadata:1];
      mapItem = [(SearchResult *)searchResult mapItem];
      _geoMapItem = [mapItem _geoMapItem];
      displayMapRegionOrNil = [_geoMapItem displayMapRegionOrNil];

      if (searchResult)
      {
        goto LABEL_3;
      }
    }

    else
    {
      displayMapRegionOrNil = 0;
    }

    [(SearchSession *)self _performSearch];
    goto LABEL_17;
  }

  displayMapRegionOrNil = 0;
LABEL_3:
  v24 = searchResult;
  v6 = [NSArray arrayWithObjects:&v24 count:1];
  v7 = [SearchInfo searchInfoWithResults:v6 boundingMapRegion:displayMapRegionOrNil];

  [v7 setSelectedIndex:0];
  [(SearchSession *)self showExistingSearchInfo:v7];

LABEL_17:
}

- (void)_notifyObservers:(id)observers block:(id)block
{
  observersCopy = observers;
  blockCopy = block;
  if (blockCopy)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = [observersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(observersCopy);
          }

          blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v10));
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [observersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_notifyAllObservers:(id)observers
{
  observersCopy = observers;
  observersQueue = [(SearchSession *)self observersQueue];
  dispatch_assert_queue_not_V2(observersQueue);

  if (observersCopy)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_100652E34;
    v12 = sub_100652E44;
    v13 = 0;
    observersQueue2 = [(SearchSession *)self observersQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100652E4C;
    v7[3] = &unk_101661600;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(observersQueue2, v7);

    [(SearchSession *)self _notifyObservers:v9[5] block:observersCopy];
    _Block_object_dispose(&v8, 8);
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    observersQueue = [(SearchSession *)self observersQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100652F68;
    v6[3] = &unk_101661A90;
    v6[4] = self;
    v7 = observerCopy;
    dispatch_async(observersQueue, v6);
  }
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  [(SearchSession *)self _assertNotInvalidated];
  if (observerCopy)
  {
    observersQueue = [(SearchSession *)self observersQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10065307C;
    v6[3] = &unk_101661A90;
    v6[4] = self;
    v7 = observerCopy;
    dispatch_async(observersQueue, v6);
  }
}

- (NSHashTable)observers
{
  observersQueue = [(SearchSession *)self observersQueue];
  dispatch_assert_queue_V2(observersQueue);

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
    traits = [(SearchSession *)self traits];
    resultRefinementQuery = [traits resultRefinementQuery];
    v3 = resultRefinementQuery == 0;
  }

  searchInfo = [(SearchSession *)self searchInfo];
  results = [searchInfo results];
  if ([results count] != 1)
  {

    goto LABEL_11;
  }

  isRedoOrAutoRedoSearchType = [(SearchSession *)self isRedoOrAutoRedoSearchType];

  if (isRedoOrAutoRedoSearchType)
  {
LABEL_11:
    searchInfo2 = [(SearchSession *)self searchInfo];
    autocompletePerson = [searchInfo2 autocompletePerson];
    v11 = autocompletePerson != 0;

    v3 |= v11;
    return v3 & 1;
  }

  searchInfo3 = [(SearchSession *)self searchInfo];
  searchResultViewType = [searchInfo3 searchResultViewType];

  if (searchResultViewType == 1)
  {
    v3 = 0;
  }

  else if (searchResultViewType == 2)
  {
    v3 = 1;
  }

  return v3 & 1;
}

- (unint64_t)searchRequestType
{
  traits = [(SearchSession *)self traits];
  searchRequestType = [traits searchRequestType];

  if (searchRequestType == 2)
  {
    return 2;
  }

  else
  {
    return searchRequestType == 1;
  }
}

- (unint64_t)selectedResultIndex
{
  currentResultsSearchInfo = [(SearchSession *)self currentResultsSearchInfo];
  v4 = currentResultsSearchInfo;
  if (currentResultsSearchInfo)
  {
    selectedIndex = [currentResultsSearchInfo selectedIndex];
    currentResults = [(SearchSession *)self currentResults];
    v7 = [currentResults count];

    if (selectedIndex >= v7)
    {
      currentResults2 = [(SearchSession *)self currentResults];
      selectedIndex2 = [currentResults2 count] - 1;
    }

    else
    {
      selectedIndex2 = [v4 selectedIndex];
    }
  }

  else
  {
    selectedIndex2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return selectedIndex2;
}

- (void)setSelectedResultIndex:(unint64_t)index
{
  currentResultsSearchInfo = [(SearchSession *)self currentResultsSearchInfo];
  if (currentResultsSearchInfo)
  {
    v7 = currentResultsSearchInfo;
    v6 = [currentResultsSearchInfo selectedIndex] == index;
    currentResultsSearchInfo = v7;
    if (!v6)
    {
      [v7 setSelectedIndex:index];
      [(SearchSession *)self didChangeSearchResults];
      currentResultsSearchInfo = v7;
    }
  }
}

- (SearchInfo)currentResultsSearchInfo
{
  suggestionSearchInfo = [(SearchSession *)self suggestionSearchInfo];

  if (suggestionSearchInfo)
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
  suggestionSearchInfo = [(SearchSession *)self suggestionSearchInfo];

  if (suggestionSearchInfo)
  {
    [(SearchSession *)self suggestionSearchInfo];
  }

  else
  {
    [(SearchSession *)self searchInfo];
  }
  v4 = ;
  results = [v4 results];

  return results;
}

- (NSString)stringToDisplay
{
  if ([(SearchSession *)self isSuggestionSearch])
  {
    suggestion = [(SearchSession *)self suggestion];
    [suggestion displayString];
  }

  else
  {
    suggestion = [(SearchSession *)self searchFieldItem];
    [suggestion searchString];
  }
  v4 = ;

  return v4;
}

- (BOOL)isVenueQuery
{
  searchFieldItem = [(SearchSession *)self searchFieldItem];
  venueCategoryItem = [searchFieldItem venueCategoryItem];
  v4 = venueCategoryItem != 0;

  return v4;
}

- (void)invalidateWithReason:(unint64_t)reason
{
  v5 = sub_100652444();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SearchSession %@ : invalidate", &buf, 0xCu);
  }

  observersQueue = [(SearchSession *)self observersQueue];
  dispatch_assert_queue_not_V2(observersQueue);

  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x3032000000;
  v17 = sub_100652E34;
  v18 = sub_100652E44;
  v19 = 0;
  observersQueue2 = [(SearchSession *)self observersQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100653790;
  block[3] = &unk_101661600;
  block[4] = self;
  block[5] = &buf;
  dispatch_sync(observersQueue2, block);

  if ([*(*(&buf + 1) + 40) count])
  {
    selfCopy = self;
    v9 = *(*(&buf + 1) + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1006537F4;
    v11[3] = &unk_101624CB0;
    v10 = selfCopy;
    v12 = v10;
    reasonCopy = reason;
    [(SearchSession *)v10 _notifyObservers:v9 block:v11];
  }

  _Block_object_dispose(&buf, 8);
}

- (void)cancelSearch
{
  searchManager = [(SearchSession *)self searchManager];
  [searchManager cancelSearch];
}

- (void)invalidate
{
  [(SearchSession *)self resetEVChargerTimers];

  [(SearchSession *)self invalidateWithReason:0];
}

- (void)notifyToRefreshEVChargers:(id)chargers
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100653910;
  v5[3] = &unk_101624BF8;
  chargersCopy = chargers;
  v4 = chargersCopy;
  [(SearchSession *)self _notifyAllObservers:v5];
}

- (void)_refreshEVChargers:(id)chargers
{
  chargersCopy = chargers;
  v5 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v5 isUsingOfflineMaps];

  if ((isUsingOfflineMaps & 1) == 0)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100653B30;
    v14[3] = &unk_101624C60;
    v7 = objc_alloc_init(NSMutableArray);
    v15 = v7;
    [chargersCopy enumerateObjectsUsingBlock:v14];
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
      v11 = chargersCopy;
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
  searchInfo = [(SearchSession *)self searchInfo];
  results = [searchInfo results];

  if ([results count])
  {
    [(SearchSession *)self resetEVChargerTimers];
    v3 = +[NSMutableDictionary dictionary];
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v43 = 0u;
    v4 = results;
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
          mapItem = [v8 mapItem];
          _geoMapItem = [mapItem _geoMapItem];
          _hasEVCharger = [_geoMapItem _hasEVCharger];

          if (_hasEVCharger)
          {
            mapItem2 = [v8 mapItem];
            _realTimeAvailableEVCharger = [mapItem2 _realTimeAvailableEVCharger];
            v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [_realTimeAvailableEVCharger ttlSeconds]);

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
            mapItem3 = [v8 mapItem];
            [v18 addObject:mapItem3];

            [v3 setObject:v18 forKeyedSubscript:v14];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v5);
    }

    allKeys = [v3 allKeys];
    v21 = [allKeys count] == 0;

    if (!v21)
    {
      allKeys2 = [v3 allKeys];
      v23 = [allKeys2 sortedArrayUsingSelector:"compare:"];

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
            v28 = [v3 objectForKeyedSubscript:{v27, results}];
            if ([v28 count])
            {
              v29 = dispatch_get_global_queue(9, 0);
              objc_initWeak(&location, self);
              integerValue = [v27 integerValue];
              v35[0] = _NSConcreteStackBlock;
              v35[1] = 3221225472;
              v35[2] = sub_10065439C;
              v35[3] = &unk_10163B580;
              objc_copyWeak(&v37, &location);
              v36 = v28;
              v31 = [GCDTimer scheduledTimerWithTimeInterval:v29 queue:1 repeating:v35 block:integerValue];
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

- (void)showExistingSearchInfo:(id)info
{
  [(SearchSession *)self setSearchInfo:info];

  [(SearchSession *)self didChangeSearchResults];
}

- (void)restoreSearchForItem:(id)item withResults:(id)results
{
  itemCopy = item;
  resultsCopy = results;
  -[SearchSession setRestoreSingleResult:](self, "setRestoreSingleResult:", [resultsCopy singleResultMode]);
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
  v12 = itemCopy;
  v13 = resultsCopy;
  v9 = resultsCopy;
  v10 = itemCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)redoSearchWithTraits:(id)traits
{
  traitsCopy = traits;
  [(SearchSession *)self _assertNotInvalidated];
  [(SearchSession *)self setTraits:traitsCopy];

  searchFieldItem = [(SearchSession *)self searchFieldItem];
  suggestion = [(SearchSession *)self suggestion];

  if (suggestion)
  {
    v6 = objc_alloc_init(SearchFieldItem);

    suggestion2 = [(SearchSession *)self suggestion];
    [(SearchFieldItem *)v6 setSuggestion:suggestion2];

    searchFieldItem = v6;
  }

  searchManager = self->_searchManager;
  traits = [(SearchSession *)self traits];
  source = [(SearchSession *)self source];
  isRedoOrAutoRedoSearchType = [(SearchSession *)self isRedoOrAutoRedoSearchType];
  searchSessionData = [(SearchSession *)self searchSessionData];
  [(SearchManager *)searchManager searchForSearchFieldItem:searchFieldItem traits:traits source:source isRedoOrAutoRedoSearch:isRedoOrAutoRedoSearchType searchSessionData:searchSessionData];
}

- (void)suggestionSearch:(id)search withTraits:(id)traits
{
  searchCopy = search;
  traitsCopy = traits;
  [(SearchSession *)self _assertNotInvalidated];
  searchInfo = [(SearchSession *)self searchInfo];
  defaultSuggestion = [searchInfo defaultSuggestion];

  if (defaultSuggestion == searchCopy)
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
    [(SearchSession *)self setSuggestion:searchCopy];
    [(SearchSession *)self setTraits:traitsCopy];
    [(SearchSession *)self setIsSuggestionSearch:1];
    v10 = objc_alloc_init(SearchFieldItem);
    [(SearchFieldItem *)v10 setSuggestion:searchCopy];
    searchManager = self->_searchManager;
    traits = [(SearchSession *)self traits];
    source = [(SearchSession *)self source];
    isRedoOrAutoRedoSearchType = [(SearchSession *)self isRedoOrAutoRedoSearchType];
    searchSessionData = [(SearchSession *)self searchSessionData];
    [(SearchManager *)searchManager searchForSearchFieldItem:v10 traits:traits source:source isRedoOrAutoRedoSearch:isRedoOrAutoRedoSearchType searchSessionData:searchSessionData];
  }
}

- (void)startSearch:(id)search
{
  searchCopy = search;
  v5 = sub_100652444();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = searchCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SearchSession %@ : startSearch %@", &v7, 0x16u);
  }

  [(SearchSession *)self _assertNotInvalidated];
  [(SearchSession *)self setSearchFieldItem:searchCopy];
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
  searchFieldItem = [(SearchSession *)self searchFieldItem];
  currentResultsSearchInfo = [(SearchSession *)self currentResultsSearchInfo];
  v6 = [NSString stringWithFormat:@"<%@: %p> %@ %@ ", v3, self, searchFieldItem, currentResultsSearchInfo];

  return v6;
}

- (SearchSession)initWithOrigin:(unint64_t)origin options:(unint64_t)options
{
  v20.receiver = self;
  v20.super_class = SearchSession;
  v6 = [(SearchSession *)&v20 init];
  v7 = v6;
  if (v6)
  {
    v6->_options = options;
    v6->_origin = origin;
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

+ (void)setCurrentSearchSession:(id)session
{
  obj = session;
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
  isInvalidated = [WeakRetained isInvalidated];

  if (isInvalidated)
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
  if (objc_opt_class() == self)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100654E88;
    v5[3] = &unk_101624BD0;
    v5[4] = self;
    v4 = [v3 addObserverForName:@"SearchSessionWillStart" object:0 queue:0 usingBlock:v5];
  }
}

- (NSString)printedPageSubtitle
{
  searchFieldItem = [(SearchSession *)self searchFieldItem];
  currentResults = [(SearchSession *)self currentResults];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100D116C0;
  v19 = sub_100D116D0;
  v20 = 0;
  historyItem = [searchFieldItem historyItem];
  historyEntry = [historyItem historyEntry];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100D116D8;
  v14[3] = &unk_101656AE8;
  v14[4] = &v15;
  [historyEntry ifSearch:v14 ifRoute:0 ifPlaceDisplay:0 ifTransitLineItem:0];

  if (![v16[5] length] && objc_msgSend(currentResults, "count"))
  {
    v7 = [currentResults objectAtIndexedSubscript:0];
    v8 = +[NSBundle mainBundle];
    v10 = [v8 localizedStringForKey:@"near %@" value:@"localized string not found" table:0];
    mapItem = [v7 mapItem];
    _addressFormattedAsCity = [mapItem _addressFormattedAsCity];
    v9 = [NSString stringWithFormat:v10, _addressFormattedAsCity];

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
  searchFieldItem = [(SearchSession *)self searchFieldItem];
  title = [searchFieldItem title];

  return title;
}

- (NSString)currentUserTypedSearchString
{
  searchFieldItem = [(SearchSession *)self searchFieldItem];
  userTypedStringForRAP = [searchFieldItem userTypedStringForRAP];

  return userTypedStringForRAP;
}

- (NSString)currentSearchString
{
  searchFieldItem = [(SearchSession *)self searchFieldItem];
  searchString = [searchFieldItem searchString];

  return searchString;
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

+ (void)performLowFuelSearchForEngineType:(int)type withObserver:(id)observer
{
  observerCopy = observer;
  v7 = +[CarDisplayController sharedInstance];
  chromeViewController = [v7 chromeViewController];
  currentTraits = [chromeViewController currentTraits];

  if (currentTraits)
  {
    dword_10195F934 = 0;
    v10 = sub_100006E1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Initiating a fuel search", buf, 2u);
    }

    if (!observerCopy)
    {
      observerCopy = +[CarDisplayController sharedInstance];
    }

    v11 = +[CarDisplayController sharedInstance];
    chromeViewController2 = [v11 chromeViewController];
    currentTraits2 = [chromeViewController2 currentTraits];

    v14 = +[MNNavigationService sharedService];
    [currentTraits2 setNavigating:{objc_msgSend(v14, "isInNavigatingState")}];

    v15 = +[MapsExternalAccessory sharedInstance];
    if ([v15 primaryEngineType] == type)
    {

      v16 = type & 1;
    }

    else
    {
      v16 = type & 1;

      if (((type >> 1) & 1) + v16 + ((type >> 2) & 1) + ((type >> 3) & 1) <= 1)
      {
        v19 = @"Stark-SARHybrid";
        v20 = @"Stark-SARHybrid";
        [currentTraits2 clearEngineTypes];
        [currentTraits2 addEngineType:3];
        [BrowseManager setCacheKey:@"Stark-SARHybrid" writesToDisk:0];
        goto LABEL_25;
      }
    }

    v18 = @"Stark-SAR";
    [currentTraits2 clearEngineTypes];
    if (v16)
    {
      [currentTraits2 addEngineType:1];
    }

    if ((type & 4) != 0)
    {
      [currentTraits2 addEngineType:3];
      if ((type & 2) == 0)
      {
LABEL_17:
        if ((type & 8) == 0)
        {
LABEL_19:
          v19 = @"Stark-SAR";
LABEL_25:
          v21 = [[BrowseManager alloc] initWithCacheKey:v19];
          [(BrowseManager *)v21 setTraits:currentTraits2];

          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100FB0DE8;
          v23[3] = &unk_10165FE18;
          v24 = v21;
          observerCopy = observerCopy;
          v25 = observerCopy;
          v22 = v21;
          [(BrowseManager *)v22 getCategoriesWithCompletion:v23];

          goto LABEL_26;
        }

LABEL_18:
        [currentTraits2 addEngineType:4];
        goto LABEL_19;
      }
    }

    else if ((type & 2) == 0)
    {
      goto LABEL_17;
    }

    [currentTraits2 addEngineType:2];
    if ((type & 8) == 0)
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
    selfCopy = self;
    typeCopy = type;
    observerCopy = observerCopy;
    v27 = observerCopy;
    dispatch_async(&_dispatch_main_q, block);
  }

LABEL_26:
}

@end