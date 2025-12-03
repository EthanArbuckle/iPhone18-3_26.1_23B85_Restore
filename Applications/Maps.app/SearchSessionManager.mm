@interface SearchSessionManager
- (ActionCoordination)coordinator;
- (BOOL)isSearchAlongTheRoute;
- (SearchSessionManager)init;
- (SearchSessionManagerDelegate)delegate;
- (SearchSessionTraitsProvider)traitsProvider;
- (id)_spotlightMatchingSearchResult:(id)result searchInfo:(id)info;
- (int64_t)_userInterfaceIdiom;
- (void)_clearSearchField;
- (void)_handleSearchAlongRouteSearchSession:(id)session;
- (void)_handleUpdateSearchFieldWithSearchFieldItem:(id)item;
- (void)_presentLoadingResults:(id)results;
- (void)_searchSessionWillStart:(id)start;
- (void)addObserver:(id)observer;
- (void)clearSearchSession;
- (void)performSearchForSearchItem:(id)item withUserInfo:(id)info refinementsQuery:(id)query recentAutocompleteSessionData:(id)data;
- (void)refreshedEVChargersReceieved:(id)receieved;
- (void)removeObserver:(id)observer;
- (void)restoreSearchForItem:(id)item withResults:(id)results sessionOrigin:(unint64_t)origin;
- (void)searchSessionDidChangeSearchFieldItem:(id)item;
- (void)searchSessionDidChangeSearchResults:(id)results;
- (void)searchSessionDidFail:(id)fail;
- (void)searchSessionDidInvalidate:(id)invalidate reason:(unint64_t)reason;
- (void)searchSessionWillPerformSearch:(id)search;
@end

@implementation SearchSessionManager

- (SearchSessionManager)init
{
  v7.receiver = self;
  v7.super_class = SearchSessionManager;
  v2 = [(SearchSessionManager *)&v7 init];
  if (v2)
  {
    v3 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___SearchSessionManagerObserver queue:0];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_searchSessionWillStart:" name:@"SearchSessionWillStart" object:0];
  }

  return v2;
}

- (SearchSessionTraitsProvider)traitsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_traitsProvider);

  return WeakRetained;
}

- (ActionCoordination)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

- (SearchSessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_spotlightMatchingSearchResult:(id)result searchInfo:(id)info
{
  resultCopy = result;
  infoCopy = info;
  +[NSMutableArray array];
  v27 = v26 = resultCopy;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  currentResults = [resultCopy currentResults];
  v8 = [currentResults countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v29 != v10)
      {
        objc_enumerationMutation(currentResults);
      }

      v12 = *(*(&v28 + 1) + 8 * v11);
      mapItem = [v12 mapItem];
      _identifier = [mapItem _identifier];
      spotlightMapsIdentifier = [infoCopy spotlightMapsIdentifier];
      v16 = [_identifier isEqual:spotlightMapsIdentifier];

      if (v16)
      {
        break;
      }

      mapItem2 = [v12 mapItem];
      _identifier2 = [mapItem2 _identifier];

      if (_identifier2)
      {
        mapItem3 = [v12 mapItem];
        _identifier3 = [mapItem3 _identifier];
        [v27 addObject:_identifier3];
      }

      if (v9 == ++v11)
      {
        v9 = [currentResults countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    v22 = v12;
    v21 = v26;
    [v26 setSpotlightMatchingResultFound:1];

    if (v22)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_11:

    v21 = v26;
  }

  [v21 setSpotlightMatchingResultFound:0];
  v23 = sub_100FD806C();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    spotlightMapsIdentifier2 = [infoCopy spotlightMapsIdentifier];
    *buf = 138478083;
    v33 = spotlightMapsIdentifier2;
    v34 = 2113;
    v35 = v27;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Spotlight punch in search result doesn't have the requested muid in the response. MUID is %{private}@ And the search results identifiers are: %{private}@", buf, 0x16u);
  }

  v22 = 0;
LABEL_16:

  return v22;
}

- (void)_presentLoadingResults:(id)results
{
  resultsCopy = results;
  if (![resultsCopy isSuggestionSearch] || (objc_msgSend(resultsCopy, "isRedoOrAutoRedoSearchType") & 1) == 0)
  {
    coordinator = [(SearchSessionManager *)self coordinator];
    [coordinator presentLoadingResults];
  }
}

- (void)_handleSearchAlongRouteSearchSession:(id)session
{
  sessionCopy = session;
  lastError = [sessionCopy lastError];

  v6 = sub_100FD806C();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (lastError)
  {
    if (v7)
    {
      lastError2 = [sessionCopy lastError];
      v20 = 138412546;
      v21 = sessionCopy;
      v22 = 2112;
      v23 = lastError2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "SAR: Received error for searchSession: %@, Error: %@", &v20, 0x16u);
    }

    coordinator = [(SearchSessionManager *)self coordinator];
    appCoordinator = [coordinator appCoordinator];
    navModeController = [appCoordinator navModeController];
    navActionCoordinator = [navModeController navActionCoordinator];
    lastError3 = [sessionCopy lastError];
    [navActionCoordinator setCurrentSearchInfo:0 error:lastError3];
  }

  else
  {
    if (v7)
    {
      v20 = 138412290;
      v21 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "SAR: Opening search session %@.", &v20, 0xCu);
    }

    coordinator = [sessionCopy searchInfo];
    [coordinator setSearchAlongRoute:1];
    searchFieldItem = [sessionCopy searchFieldItem];
    [coordinator setSearchFieldItem:searchFieldItem];

    if ([sessionCopy isSpotlightPunchInSearch])
    {
      v15 = [(SearchSessionManager *)self _spotlightMatchingSearchResult:sessionCopy searchInfo:coordinator];
      results = [coordinator results];
      v17 = [results indexOfObject:v15];

      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        results2 = [coordinator results];
        v19 = [results2 count];

        if (v17 < v19)
        {
          [coordinator setSelectedIndex:v17];
        }
      }
    }

    appCoordinator = [(SearchSessionManager *)self coordinator];
    navModeController = [appCoordinator appCoordinator];
    navActionCoordinator = [navModeController navModeController];
    lastError3 = [navActionCoordinator navActionCoordinator];
    [lastError3 setCurrentSearchInfo:coordinator];
  }
}

- (BOOL)isSearchAlongTheRoute
{
  coordinator = [(SearchSessionManager *)self coordinator];
  appCoordinator = [coordinator appCoordinator];
  if ([appCoordinator isNavigationTurnByTurnOrStepping])
  {
    coordinator2 = [(SearchSessionManager *)self coordinator];
    appCoordinator2 = [coordinator2 appCoordinator];
    navModeController = [appCoordinator2 navModeController];
    navActionCoordinator = [navModeController navActionCoordinator];
    if ([navActionCoordinator isSearchingAlongTheRoute])
    {
      v9 = 1;
    }

    else
    {
      currentSearchSession = [(SearchSessionManager *)self currentSearchSession];
      v9 = [currentSearchSession origin] == 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_userInterfaceIdiom
{
  coordinator = [(SearchSessionManager *)self coordinator];
  appCoordinator = [coordinator appCoordinator];
  chromeViewController = [appCoordinator chromeViewController];
  traitCollection = [chromeViewController traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  return userInterfaceIdiom;
}

- (void)_clearSearchField
{
  delegate = [(SearchSessionManager *)self delegate];
  v2 = objc_alloc_init(SearchFieldItem);
  [delegate updateSearchFieldWithSearchFieldItem:v2];
}

- (void)_handleUpdateSearchFieldWithSearchFieldItem:(id)item
{
  delegate = [(SearchSessionManager *)self delegate];
  searchFieldItem = [(SearchSession *)self->_searchSession searchFieldItem];
  [delegate updateSearchFieldWithSearchFieldItem:searchFieldItem];
}

- (void)clearSearchSession
{
  if (self->_searchSession)
  {
    v3 = sub_100FD806C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      searchSession = self->_searchSession;
      v7 = 138412290;
      v8 = searchSession;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Cleaning search session: %@", &v7, 0xCu);
    }

    [(SearchSession *)self->_searchSession invalidate];
    [(SearchSession *)self->_searchSession unregisterObserver:self];
    v5 = self->_searchSession;
    self->_searchSession = 0;

    searchOriginationPreviousLatlng = self->_searchOriginationPreviousLatlng;
    self->_searchOriginationPreviousLatlng = 0;
  }
}

- (void)restoreSearchForItem:(id)item withResults:(id)results sessionOrigin:(unint64_t)origin
{
  searchSession = self->_searchSession;
  resultsCopy = results;
  itemCopy = item;
  [(SearchSession *)searchSession unregisterObserver:self];
  [(SearchSession *)self->_searchSession invalidate];
  v10 = [[SearchSession alloc] initWithOrigin:origin];
  v11 = self->_searchSession;
  self->_searchSession = v10;

  [(SearchSession *)self->_searchSession registerObserver:self];
  [(SearchSession *)self->_searchSession restoreSearchForItem:itemCopy withResults:resultsCopy];
}

- (void)performSearchForSearchItem:(id)item withUserInfo:(id)info refinementsQuery:(id)query recentAutocompleteSessionData:(id)data
{
  itemCopy = item;
  infoCopy = info;
  queryCopy = query;
  dataCopy = data;
  coordinator = [(SearchSessionManager *)self coordinator];
  newTraits = [coordinator newTraits];

  if (!newTraits)
  {
    traitsProvider = [(SearchSessionManager *)self traitsProvider];

    if (traitsProvider)
    {
      traitsProvider2 = [(SearchSessionManager *)self traitsProvider];
      newTraits = [traitsProvider2 currentTraits];
    }

    else
    {
      newTraits = 0;
    }
  }

  v18 = sub_100FD806C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v75 = itemCopy;
    v76 = 2112;
    *v77 = infoCopy;
    *&v77[8] = 2112;
    *&v77[10] = dataCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Performing search for item: %@. dict: %@. session data: %@", buf, 0x20u);
  }

  v19 = sub_10079927C();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    timeSinceMapViewportChanged = [newTraits timeSinceMapViewportChanged];
    *buf = 138412802;
    v75 = itemCopy;
    v76 = 1024;
    *v77 = timeSinceMapViewportChanged;
    *&v77[4] = 2112;
    *&v77[6] = dataCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Performing search for item: %@, timeSinceMapViewportChanged: %u,  session data: %@", buf, 0x1Cu);
  }

  v21 = [infoCopy objectForKeyedSubscript:@"SearchSessionIsSuggestionSearch"];
  bOOLValue = [v21 BOOLValue];

  v22 = [infoCopy objectForKeyedSubscript:@"SearchSessionIsAutoRedoSearch"];
  bOOLValue2 = [v22 BOOLValue];

  v23 = [infoCopy objectForKeyedSubscript:@"SearchSessionIsLowFuelSearch"];
  bOOLValue3 = [v23 BOOLValue];

  v24 = [infoCopy objectForKeyedSubscript:@"SearchSessionShouldReuseSearchSession"];
  bOOLValue4 = [v24 BOOLValue];

  v25 = [infoCopy objectForKeyedSubscript:@"SearchSessionFromRefinementBar"];
  bOOLValue5 = [v25 BOOLValue];

  v26 = [infoCopy objectForKeyedSubscript:@"SearchSessionIsSearchAlongRoute"];
  bOOLValue6 = [v26 BOOLValue];

  v28 = [infoCopy objectForKeyedSubscript:@"SearchSessionAddStopFromWaypointEditor"];
  bOOLValue7 = [v28 BOOLValue];

  v29 = [infoCopy objectForKeyedSubscript:@"SearchSessionAddStopReplacingServerProvidedWaypoint"];
  bOOLValue8 = [v29 BOOLValue];

  v31 = [infoCopy objectForKeyedSubscript:@"SearchSessionSuppressHistoryEntry"];

  if (v31)
  {
    v32 = [infoCopy objectForKeyedSubscript:@"SearchSessionSuppressHistoryEntry"];
    v66 = [v32 BOOLValue] ^ 1;
  }

  else
  {
    v66 = 1;
  }

  v70 = queryCopy;
  v33 = [infoCopy objectForKeyedSubscript:@"SearchSessionTraitsSource"];

  if (v33)
  {
    v34 = [infoCopy objectForKeyedSubscript:@"SearchSessionTraitsSource"];
    integerValue = [v34 integerValue];
  }

  else
  {
    integerValue = 2;
  }

  coordinator2 = [(SearchSessionManager *)self coordinator];
  [coordinator2 isTouristHere];
  [newTraits setIsTourist:?];

  [newTraits setNavigating:bOOLValue6];
  [newTraits setSource:integerValue];
  autocompleteSessionData = [dataCopy autocompleteSessionData];
  [newTraits setRecentAutocompleteSessionData:autocompleteSessionData];

  v38 = [infoCopy objectForKeyedSubscript:@"SearchSessionTraits"];

  if (v38)
  {
    v39 = [infoCopy objectForKeyedSubscript:@"SearchSessionTraits"];

    newTraits = v39;
  }

  [newTraits setSearchOriginationType:0];
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    if ([(SearchSessionManager *)self _userInterfaceIdiom]!= 5)
    {
      v40 = [infoCopy objectForKeyedSubscript:@"IsRoutePlanningPresented"];

      if (v40)
      {
        v41 = [infoCopy objectForKeyedSubscript:@"IsRoutePlanningPresented"];
        bOOLValue9 = [v41 BOOLValue];

        if (bOOLValue9)
        {
          [newTraits setSearchOriginationType:1];
        }
      }
    }
  }

  if (bOOLValue6)
  {
    [newTraits setSearchOriginationType:2];
  }

  if (!(bOOLValue2 & 1 | (([itemCopy isSpotlightSearch] & 1) == 0) | bOOLValue5 & 1))
  {
    punchInDetails = [itemCopy punchInDetails];
    spotlightEncodedString = [punchInDetails spotlightEncodedString];
    [newTraits setSpotlightSearchPunchinEncodedString:spotlightEncodedString];
  }

  v45 = [infoCopy objectForKeyedSubscript:@"SearchSessionIsSearchAlongRouteEVStationRequest"];

  if (v45)
  {
    [newTraits setSearchOriginationType:3];
    v46 = objc_alloc_init(GEOSearchImplicitFilterInfo);
    [v46 setSearchImplicitType:1];
    v47 = [infoCopy objectForKeyedSubscript:@"SearchSessionSearchAlongRouteImplicitRequestMUID"];
    [v46 setSearchAlongRouteMuid:v47];

    [newTraits setSearchImplicitFilterInfo:v46];
  }

  if (bOOLValue7)
  {
    [newTraits setSearchOriginationType:1];
    searchOriginationPreviousLatlng = [(SearchSessionManager *)self searchOriginationPreviousLatlng];

    if (!searchOriginationPreviousLatlng)
    {
      v49 = [infoCopy objectForKeyedSubscript:@"SearchSessionAddStopPreviousLatLng"];
      [(SearchSessionManager *)self setSearchOriginationPreviousLatlng:v49];
    }

    [newTraits setSearchOriginationEditingServerWaypoints:bOOLValue8];
    searchOriginationPreviousLatlng2 = [(SearchSessionManager *)self searchOriginationPreviousLatlng];
    [newTraits setSearchOriginationPreviousLatlng:searchOriginationPreviousLatlng2];
  }

  [newTraits addSupportedSearchTierType:1];
  if (MapsFeature_IsEnabled_ShelbyvilleSearch())
  {
    Integer = GEOConfigGetInteger();
    if (Integer >= 1)
    {
      v52 = Integer;
      [newTraits addSupportedSearchTierType:2];
      [newTraits setAuxiliaryTierNumResults:v52];
    }

    [newTraits addKnownRefinementType:1];
    [newTraits addKnownRefinementType:3];
    [newTraits addKnownRefinementType:4];
    if (MapsFeature_IsEnabled_SearchAndDiscovery())
    {
      [newTraits addKnownRefinementType:5];
    }

    [newTraits addSupportedPlaceSummaryFormatType:1];
    [newTraits addSupportedPlaceSummaryFormatType:2];
    [newTraits addSupportedPlaceSummaryFormatType:3];
  }

  [newTraits useOnlineToOfflineFailoverRequestModeIfAllowed];
  if (MapsFeature_IsEnabled_VisitedPlaces())
  {
    v53 = 37;
  }

  else
  {
    v53 = 35;
  }

  [newTraits setPlaceSummaryRevision:v53];
  lastSearchSessionViewport = [(SearchSessionManager *)self lastSearchSessionViewport];
  if (lastSearchSessionViewport)
  {
    v55 = lastSearchSessionViewport;
    lastSearchSessionViewport2 = [(SearchSessionManager *)self lastSearchSessionViewport];
    mapRegion = [lastSearchSessionViewport2 mapRegion];
    isValid = [mapRegion isValid];

    if (isValid)
    {
      lastSearchSessionViewport3 = [(SearchSessionManager *)self lastSearchSessionViewport];
      [newTraits setPreviousSearchViewport:lastSearchSessionViewport3];
    }
  }

  [newTraits setResultRefinementQuery:v70];
  if (bOOLValue)
  {
    suggestion = [itemCopy suggestion];
    [(SearchSession *)self->_searchSession setSource:integerValue];
    [(SearchSession *)self->_searchSession suggestionSearch:suggestion withTraits:newTraits];
  }

  else if (bOOLValue2)
  {
    [newTraits setSearchRequestType:2];
    [(SearchSession *)self->_searchSession setSource:integerValue];
    [(SearchSession *)self->_searchSession redoSearchWithTraits:newTraits];
  }

  else
  {
    searchSession = self->_searchSession;
    if (!bOOLValue4 || !searchSession)
    {
      [(SearchSession *)searchSession unregisterObserver:self];
      [(SearchSession *)self->_searchSession invalidateWithReason:1];
      v62 = self->_searchSession;
      self->_searchSession = 0;

      v63 = [[SearchSession alloc] initWithOrigin:2 * (integerValue == 1) options:bOOLValue3];
      v64 = self->_searchSession;
      self->_searchSession = v63;

      [(SearchSession *)self->_searchSession setTraits:newTraits];
      [(SearchSession *)self->_searchSession setSource:integerValue];
      [(SearchSession *)self->_searchSession setShouldCreateHistoryEntry:v66];
      [(SearchSession *)self->_searchSession setIsResultRefinementsBarSearch:bOOLValue5];
      [(SearchSession *)self->_searchSession setIsAddStopFromWaypointEditor:bOOLValue7];
      previousSearchSessionData = [(SearchSessionManager *)self previousSearchSessionData];
      [(SearchSession *)self->_searchSession setSearchSessionData:previousSearchSessionData];

      [(SearchSession *)self->_searchSession registerObserver:self];
      searchSession = self->_searchSession;
    }

    [(SearchSession *)searchSession startSearch:itemCopy];
  }
}

- (void)searchSessionDidInvalidate:(id)invalidate reason:(unint64_t)reason
{
  invalidateCopy = invalidate;
  if (self->_searchSession == invalidateCopy)
  {
    v7 = sub_100FD806C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412546;
      v11 = invalidateCopy;
      v12 = 2048;
      reasonCopy = reason;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "searchSessionDidInvalidate: %@. Reason: %lu", &v10, 0x16u);
    }

    coordinator = [(SearchSessionManager *)self coordinator];
    [coordinator clearSearch];

    observers = [(SearchSessionManager *)self observers];
    [observers searchSessionManagerSessionDidInvalidate];
  }
}

- (void)searchSessionDidFail:(id)fail
{
  failCopy = fail;
  v5 = sub_100FD806C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v18 = 138412290;
    v19 = failCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "SearchSession did fail: %@", &v18, 0xCu);
  }

  if ([(SearchSessionManager *)self isSearchAlongTheRoute])
  {
    [(SearchSessionManager *)self _handleSearchAlongRouteSearchSession:failCopy];
    goto LABEL_16;
  }

  coordinator = [(SearchSessionManager *)self coordinator];
  if (coordinator)
  {
  }

  else
  {
    traitsProvider = [(SearchSessionManager *)self traitsProvider];

    if (traitsProvider)
    {
      observers = [(SearchSessionManager *)self observers];
      [observers searchSessionManagerSessionDidFail];
      goto LABEL_15;
    }
  }

  if ([(SearchSessionManager *)self _userInterfaceIdiom]== 5)
  {
    coordinator2 = [(SearchSessionManager *)self coordinator];
    [coordinator2 presentLoadingResults];

LABEL_11:
    observers2 = [(SearchSessionManager *)self observers];
    [observers2 searchSessionManagerSessionDidFail];

    delegate = [(SearchSessionManager *)self delegate];
    [delegate updateFloatingControlsWithSearchSession:failCopy];

    lastError = [failCopy lastError];
    code = [lastError code];

    if (code != -8)
    {
      goto LABEL_16;
    }

    observers = [(SearchSessionManager *)self coordinator];
    [observers clearSearchPins];
LABEL_15:

    goto LABEL_16;
  }

  traits = [failCopy traits];
  searchOriginationType = [traits searchOriginationType];

  if (searchOriginationType == 1)
  {
    goto LABEL_11;
  }

  coordinator3 = [(SearchSessionManager *)self coordinator];
  isRoutePlanningPresented = [coordinator3 isRoutePlanningPresented];

  if ((isRoutePlanningPresented & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_16:
}

- (void)searchSessionDidChangeSearchResults:(id)results
{
  resultsCopy = results;
  v5 = sub_100FD806C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v84 = resultsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received results for searchSession: %@", buf, 0xCu);
  }

  searchInfo = [resultsCopy searchInfo];
  searchSessionData = [searchInfo searchSessionData];
  [(SearchSessionManager *)self setPreviousSearchSessionData:searchSessionData];

  if (![(SearchSessionManager *)self isSearchAlongTheRoute])
  {
    coordinator = [(SearchSessionManager *)self coordinator];
    if (coordinator)
    {
    }

    else
    {
      traitsProvider = [(SearchSessionManager *)self traitsProvider];
      v14 = traitsProvider == 0;

      if (!v14)
      {
        observers = [(SearchSessionManager *)self observers];
        [observers searchSessionManagerSessionDidReceiveUpdate];

        goto LABEL_21;
      }
    }

    searchInfo2 = [resultsCopy searchInfo];
    clientResolvedResult = [searchInfo2 clientResolvedResult];

    if (clientResolvedResult)
    {
      coordinator2 = [(SearchSessionManager *)self coordinator];
      clientResolvedResult2 = [searchInfo2 clientResolvedResult];
      [coordinator2 viewController:0 selectClientResolvedItem:clientResolvedResult2 fromSearchInfo:searchInfo2 withUserInfo:0];
LABEL_17:

      if ([(SearchSessionManager *)self _userInterfaceIdiom]!= 5)
      {
LABEL_20:

        goto LABEL_21;
      }

      observers2 = [(SearchSessionManager *)self observers];
      [observers2 searchSessionManagerSessionDidReceiveUpdate];
LABEL_19:

      goto LABEL_20;
    }

    directionIntent = [searchInfo2 directionIntent];

    if (directionIntent)
    {
      coordinator2 = [(SearchSessionManager *)self coordinator];
      clientResolvedResult2 = [searchInfo2 directionIntent];
      results = [searchInfo2 results];
      [coordinator2 viewController:0 doDirectionIntent:clientResolvedResult2 withSearchResults:results];

      goto LABEL_17;
    }

    if ([searchInfo2 singlePlaceCollection])
    {
      coordinator2 = [(SearchSessionManager *)self coordinator];
      clientResolvedResult2 = [searchInfo2 placeCollections];
      firstObject = [clientResolvedResult2 firstObject];
      [coordinator2 viewController:0 showFullyClientizedCuratedCollection:firstObject replaceViewController:MapsFeature_IsEnabled_SearchAndDiscovery() ^ 1];

      goto LABEL_17;
    }

    publisher = [searchInfo2 publisher];

    if (publisher)
    {
      coordinator2 = [(SearchSessionManager *)self coordinator];
      clientResolvedResult2 = [searchInfo2 publisher];
      [coordinator2 viewControllerShowPublisher:clientResolvedResult2 replaceViewController:MapsFeature_IsEnabled_SearchAndDiscovery() ^ 1];
      goto LABEL_17;
    }

    v21 = sub_100FD806C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      searchFieldItem = [resultsCopy searchFieldItem];
      *buf = 138412546;
      v84 = searchFieldItem;
      v85 = 2112;
      v86 = resultsCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Processing search results for item: %@ session: %@", buf, 0x16u);
    }

    if ([resultsCopy isRedoOrAutoRedoSearchType])
    {
      shouldFrameMapViewport = 0;
    }

    else
    {
      mapRegion = [searchInfo2 mapRegion];
      shouldFrameMapViewport = mapRegion != 0;
    }

    isVenueQuery = [resultsCopy isVenueQuery];
    if ([resultsCopy isSpotlightPunchInSearch])
    {
      observers2 = [(SearchSessionManager *)self _spotlightMatchingSearchResult:resultsCopy searchInfo:searchInfo2];
      if (observers2)
      {
LABEL_32:
        if ([resultsCopy isSpotlightPunchInSearch] && objc_msgSend(resultsCopy, "isSingleResultToShowAsPlacecard"))
        {
          if ([(SearchSessionManager *)self _userInterfaceIdiom]== 5)
          {
            [(SearchSessionManager *)self _presentLoadingResults:resultsCopy];
            observers3 = [(SearchSessionManager *)self observers];
            [observers3 searchSessionManagerSessionDidReceiveUpdate];
          }

          else
          {
            mapItem = [observers2 mapItem];
            _identifier = [mapItem _identifier];
            spotlightMapsIdentifier = [searchInfo2 spotlightMapsIdentifier];
            v53 = [_identifier isEqual:spotlightMapsIdentifier];

            if ((v53 & 1) == 0)
            {
              v54 = sub_100FD806C();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                spotlightMapsIdentifier2 = [searchInfo2 spotlightMapsIdentifier];
                mapItem2 = [observers2 mapItem];
                _identifier2 = [mapItem2 _identifier];
                *buf = 138478083;
                v84 = spotlightMapsIdentifier2;
                v85 = 2113;
                v86 = _identifier2;
              }
            }

            observers3 = [(SearchSessionManager *)self coordinator];
            [observers3 viewController:0 selectSearchResult:observers2 addToHistory:1 source:8 saveSelectionState:1 replaceCurrentCard:1];
          }

          shouldFrameMapViewport = 1;
        }

        else if (isVenueQuery)
        {
          if (!shouldFrameMapViewport)
          {
            goto LABEL_58;
          }

          observers3 = [resultsCopy searchFieldItem];
          venueCategoryItem = [observers3 venueCategoryItem];
          shouldFrameMapViewport = [venueCategoryItem shouldFrameMapViewport];
        }

        else
        {
          v29 = sub_100FD806C();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            searchFieldItem2 = [resultsCopy searchFieldItem];
            searchString = [searchFieldItem2 searchString];
            *buf = 138412290;
            v84 = searchString;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Processing no venue search results for Query %@", buf, 0xCu);
          }

          if ([resultsCopy isSingleResultToShowAsPlacecard])
          {
            results2 = [searchInfo2 results];
            firstObject2 = [results2 firstObject];

            if ([searchInfo2 hasRelatedSearchSuggestion])
            {
              v34 = [RelatedSearchSuggestion alloc];
              resultDisplayHeader = [searchInfo2 resultDisplayHeader];
              substitutes = [searchInfo2 substitutes];
              [searchInfo2 dymSuggestionVisibleTime];
              v38 = -[RelatedSearchSuggestion initWithResultDisplayHeader:substitutes:visibleTime:showCloseButton:](v34, "initWithResultDisplayHeader:substitutes:visibleTime:showCloseButton:", resultDisplayHeader, substitutes, [searchInfo2 showDymSuggestionCloseButton], v37);
              [firstObject2 setRelatedSearchSuggestion:v38];
            }

            delegate = [(SearchSessionManager *)self delegate];
            [delegate retainSearchQueryForSelectedSearchResult:firstObject2];

            shouldCreateHistoryEntry = [resultsCopy shouldCreateHistoryEntry];
            address = [firstObject2 address];
            if (address)
            {
              address2 = [firstObject2 address];
              isMeCard = [address2 isMeCard];

              shouldCreateHistoryEntry &= isMeCard ^ 1;
            }

            autocompletePerson = [searchInfo2 autocompletePerson];
            v45 = autocompletePerson == 0;

            coordinator3 = [(SearchSessionManager *)self coordinator];
            [coordinator3 viewController:0 selectSearchResult:firstObject2 addToHistory:v45 & shouldCreateHistoryEntry source:2 saveSelectionState:1 replaceCurrentCard:1];

            v47 = +[MKMapService sharedService];
            searchFieldItem3 = [resultsCopy searchFieldItem];
            searchString2 = [searchFieldItem3 searchString];
            [v47 captureUserAction:2015 onTarget:101 queryString:searchString2];

            shouldFrameMapViewport = 1;
          }

          else
          {
            if ([(SearchSessionManager *)self _userInterfaceIdiom]== 5)
            {
              [(SearchSessionManager *)self _presentLoadingResults:resultsCopy];
            }

            firstObject2 = observers2;
          }

          observers3 = [(SearchSessionManager *)self observers];
          [observers3 searchSessionManagerSessionDidReceiveUpdate];
          observers2 = firstObject2;
        }

LABEL_58:
        currentResultsSearchInfo = [resultsCopy currentResultsSearchInfo];
        shouldInjectSearchResults = [currentResultsSearchInfo shouldInjectSearchResults];

        if (!shouldInjectSearchResults)
        {
          if (([resultsCopy singleResultMode] & 1) == 0)
          {
            coordinator4 = [(SearchSessionManager *)self coordinator];
            searchPinsManager = [coordinator4 searchPinsManager];
            [searchPinsManager clearSearchPins];
          }

          goto LABEL_75;
        }

        objc_initWeak(buf, self);
        v81[0] = _NSConcreteStackBlock;
        v81[1] = 3221225472;
        v81[2] = sub_100FD9EF4;
        v81[3] = &unk_101660670;
        objc_copyWeak(&v82, buf);
        v80 = objc_retainBlock(v81);
        if ([resultsCopy singleResultMode])
        {
          autocompletePerson2 = [searchInfo2 autocompletePerson];
          v61 = autocompletePerson2 == 0;

          coordinator5 = [(SearchSessionManager *)self coordinator];
          searchPinsManager2 = [coordinator5 searchPinsManager];
          currentResultsSearchInfo2 = [resultsCopy currentResultsSearchInfo];
          if (v61)
          {
            searchFieldItem4 = [resultsCopy searchFieldItem];
            historyItem = [searchFieldItem4 historyItem];
            [searchPinsManager2 setSingleSearchPinFromSearchInfo:currentResultsSearchInfo2 scrollToResults:shouldFrameMapViewport displayPlaceCardForResult:observers2 historyItem:historyItem animated:1 completion:v80];

            goto LABEL_68;
          }
        }

        else
        {
          autocompletePerson3 = [searchInfo2 autocompletePerson];
          v68 = autocompletePerson3 == 0;

          coordinator5 = [(SearchSessionManager *)self coordinator];
          searchPinsManager2 = [coordinator5 searchPinsManager];
          currentResultsSearchInfo2 = [resultsCopy currentResultsSearchInfo];
          if (v68)
          {
            [searchPinsManager2 setSearchPinsFromSearchInfo:currentResultsSearchInfo2 scrollToResults:shouldFrameMapViewport displayPlaceCardForResult:observers2 animated:1 completion:v80];
            goto LABEL_68;
          }
        }

        [searchPinsManager2 setSearchPinsFromSearchInfo:currentResultsSearchInfo2 scrollToResults:shouldFrameMapViewport displayPlaceCardForResult:0 animated:1 completion:v80];
LABEL_68:

        isSpotlightPunchInSearch = [resultsCopy isSpotlightPunchInSearch];
        if (observers2)
        {
          v72 = isSpotlightPunchInSearch;
        }

        else
        {
          v72 = 0;
        }

        if (v72 == 1 && ([resultsCopy isSingleResultToShowAsPlacecard] & 1) == 0)
        {
          coordinator6 = [(SearchSessionManager *)self coordinator];
          searchPinsManager3 = [coordinator6 searchPinsManager];
          [searchPinsManager3 selectAndShowSearchResult:observers2 animated:1];
        }

        objc_destroyWeak(&v82);
        objc_destroyWeak(buf);
LABEL_75:
        delegate2 = [(SearchSessionManager *)self delegate];
        results3 = [searchInfo2 results];
        searchFieldItem5 = [resultsCopy searchFieldItem];
        browseCategories = [searchInfo2 browseCategories];
        [delegate2 handleVenueSearchResultsWithSelectedSearchResult:results3 searchFieldItem:searchFieldItem5 browseCategories:browseCategories];

        delegate3 = [(SearchSessionManager *)self delegate];
        [delegate3 updateFloatingControlsWithSearchSession:resultsCopy];

        goto LABEL_19;
      }

      if ([resultsCopy isSingleResultToShowAsPlacecard])
      {
        results4 = [searchInfo2 results];
        observers2 = [results4 firstObject];

        goto LABEL_32;
      }
    }

    observers2 = 0;
    goto LABEL_32;
  }

  [(SearchSessionManager *)self _handleSearchAlongRouteSearchSession:resultsCopy];
LABEL_21:
}

- (void)refreshedEVChargersReceieved:(id)receieved
{
  receievedCopy = receieved;
  observers = [(SearchSessionManager *)self observers];
  searchSessionShouldUpdateEVChargers = [observers searchSessionShouldUpdateEVChargers];

  if (searchSessionShouldUpdateEVChargers)
  {
    coordinator = [(SearchSessionManager *)self coordinator];
    searchPinsManager = [coordinator searchPinsManager];
    [searchPinsManager setSearchPins:receievedCopy selectedPin:0 animated:1];

    observers2 = [(SearchSessionManager *)self observers];
    [observers2 searchSessionManagerReceiveEVChargersUpdate:receievedCopy];

    if ([(SearchSession *)self->_searchSession isVenueQuery])
    {
      delegate = [(SearchSessionManager *)self delegate];
      [delegate receivedVenueEVChargersUpdate:receievedCopy];
    }
  }
}

- (void)searchSessionDidChangeSearchFieldItem:(id)item
{
  itemCopy = item;
  v5 = sub_100FD806C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = itemCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "searchSessionDidChangeSearchFieldItem: %@", &v8, 0xCu);
  }

  if ([(SearchSessionManager *)self isSearchAlongTheRoute])
  {
    [(SearchSessionManager *)self _handleSearchAlongRouteSearchSession:itemCopy];
  }

  else
  {
    if (([itemCopy isVenueQuery] & 1) == 0)
    {
      searchFieldItem = [itemCopy searchFieldItem];
      [(SearchSessionManager *)self _handleUpdateSearchFieldWithSearchFieldItem:searchFieldItem];
    }

    delegate = [(SearchSessionManager *)self delegate];
    [delegate updateFloatingControlsWithSearchSession:itemCopy];
  }
}

- (void)searchSessionWillPerformSearch:(id)search
{
  searchCopy = search;
  v5 = sub_100FD806C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = searchCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "searchSessionWillPerformSearch: %@", &v14, 0xCu);
  }

  if ([(SearchSessionManager *)self isSearchAlongTheRoute])
  {
    [(SearchSessionManager *)self _handleSearchAlongRouteSearchSession:searchCopy];
  }

  else
  {
    isVenueQuery = [searchCopy isVenueQuery];
    searchFieldItem = [searchCopy searchFieldItem];
    if ((isVenueQuery & 1) == 0 && ([searchCopy restoreSingleResult] & 1) == 0)
    {
      if ([(SearchSessionManager *)self _userInterfaceIdiom]!= 5)
      {
        coordinator = [(SearchSessionManager *)self coordinator];
        [coordinator presentLoadingResults];

        coordinator2 = [(SearchSessionManager *)self coordinator];
        [coordinator2 updateResultsViewContent];
      }

      [(SearchSessionManager *)self _handleUpdateSearchFieldWithSearchFieldItem:searchFieldItem];
      observers = [(SearchSessionManager *)self observers];
      [observers searchSessionManagerSessionWillPerformSearch];
    }

    delegate = [(SearchSessionManager *)self delegate];
    [delegate updateFloatingControlsWithSearchSession:searchCopy];

    venueCategoryItem = [searchFieldItem venueCategoryItem];
    coordinator3 = [(SearchSessionManager *)self coordinator];
    [coordinator3 presentVenueCategoryWithVenueCategoryItem:venueCategoryItem];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SearchSessionManager *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SearchSessionManager *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)_searchSessionWillStart:(id)start
{
  object = [start object];
  v5 = object;
  if (object)
  {
    if (self->_searchSession != object)
    {
      obj = object;
      origin = [(SearchSession *)object origin];
      v5 = obj;
      if (origin)
      {
        currentResultsSearchInfo = [(SearchSession *)obj currentResultsSearchInfo];
        isSearchAlongRoute = [currentResultsSearchInfo isSearchAlongRoute];

        v5 = obj;
        if ((isSearchAlongRoute & 1) == 0)
        {
          objc_storeStrong(&self->_searchSession, obj);
          [(SearchSession *)self->_searchSession registerObserver:self];
          v5 = obj;
        }
      }
    }
  }
}

@end