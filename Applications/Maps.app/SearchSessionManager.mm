@interface SearchSessionManager
- (ActionCoordination)coordinator;
- (BOOL)isSearchAlongTheRoute;
- (SearchSessionManager)init;
- (SearchSessionManagerDelegate)delegate;
- (SearchSessionTraitsProvider)traitsProvider;
- (id)_spotlightMatchingSearchResult:(id)a3 searchInfo:(id)a4;
- (int64_t)_userInterfaceIdiom;
- (void)_clearSearchField;
- (void)_handleSearchAlongRouteSearchSession:(id)a3;
- (void)_handleUpdateSearchFieldWithSearchFieldItem:(id)a3;
- (void)_presentLoadingResults:(id)a3;
- (void)_searchSessionWillStart:(id)a3;
- (void)addObserver:(id)a3;
- (void)clearSearchSession;
- (void)performSearchForSearchItem:(id)a3 withUserInfo:(id)a4 refinementsQuery:(id)a5 recentAutocompleteSessionData:(id)a6;
- (void)refreshedEVChargersReceieved:(id)a3;
- (void)removeObserver:(id)a3;
- (void)restoreSearchForItem:(id)a3 withResults:(id)a4 sessionOrigin:(unint64_t)a5;
- (void)searchSessionDidChangeSearchFieldItem:(id)a3;
- (void)searchSessionDidChangeSearchResults:(id)a3;
- (void)searchSessionDidFail:(id)a3;
- (void)searchSessionDidInvalidate:(id)a3 reason:(unint64_t)a4;
- (void)searchSessionWillPerformSearch:(id)a3;
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

- (id)_spotlightMatchingSearchResult:(id)a3 searchInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  +[NSMutableArray array];
  v27 = v26 = v5;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [v5 currentResults];
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
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
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v28 + 1) + 8 * v11);
      v13 = [v12 mapItem];
      v14 = [v13 _identifier];
      v15 = [v6 spotlightMapsIdentifier];
      v16 = [v14 isEqual:v15];

      if (v16)
      {
        break;
      }

      v17 = [v12 mapItem];
      v18 = [v17 _identifier];

      if (v18)
      {
        v19 = [v12 mapItem];
        v20 = [v19 _identifier];
        [v27 addObject:v20];
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
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
    v24 = [v6 spotlightMapsIdentifier];
    *buf = 138478083;
    v33 = v24;
    v34 = 2113;
    v35 = v27;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Spotlight punch in search result doesn't have the requested muid in the response. MUID is %{private}@ And the search results identifiers are: %{private}@", buf, 0x16u);
  }

  v22 = 0;
LABEL_16:

  return v22;
}

- (void)_presentLoadingResults:(id)a3
{
  v5 = a3;
  if (![v5 isSuggestionSearch] || (objc_msgSend(v5, "isRedoOrAutoRedoSearchType") & 1) == 0)
  {
    v4 = [(SearchSessionManager *)self coordinator];
    [v4 presentLoadingResults];
  }
}

- (void)_handleSearchAlongRouteSearchSession:(id)a3
{
  v4 = a3;
  v5 = [v4 lastError];

  v6 = sub_100FD806C();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      v8 = [v4 lastError];
      v20 = 138412546;
      v21 = v4;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "SAR: Received error for searchSession: %@, Error: %@", &v20, 0x16u);
    }

    v9 = [(SearchSessionManager *)self coordinator];
    v10 = [v9 appCoordinator];
    v11 = [v10 navModeController];
    v12 = [v11 navActionCoordinator];
    v13 = [v4 lastError];
    [v12 setCurrentSearchInfo:0 error:v13];
  }

  else
  {
    if (v7)
    {
      v20 = 138412290;
      v21 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "SAR: Opening search session %@.", &v20, 0xCu);
    }

    v9 = [v4 searchInfo];
    [v9 setSearchAlongRoute:1];
    v14 = [v4 searchFieldItem];
    [v9 setSearchFieldItem:v14];

    if ([v4 isSpotlightPunchInSearch])
    {
      v15 = [(SearchSessionManager *)self _spotlightMatchingSearchResult:v4 searchInfo:v9];
      v16 = [v9 results];
      v17 = [v16 indexOfObject:v15];

      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = [v9 results];
        v19 = [v18 count];

        if (v17 < v19)
        {
          [v9 setSelectedIndex:v17];
        }
      }
    }

    v10 = [(SearchSessionManager *)self coordinator];
    v11 = [v10 appCoordinator];
    v12 = [v11 navModeController];
    v13 = [v12 navActionCoordinator];
    [v13 setCurrentSearchInfo:v9];
  }
}

- (BOOL)isSearchAlongTheRoute
{
  v3 = [(SearchSessionManager *)self coordinator];
  v4 = [v3 appCoordinator];
  if ([v4 isNavigationTurnByTurnOrStepping])
  {
    v5 = [(SearchSessionManager *)self coordinator];
    v6 = [v5 appCoordinator];
    v7 = [v6 navModeController];
    v8 = [v7 navActionCoordinator];
    if ([v8 isSearchingAlongTheRoute])
    {
      v9 = 1;
    }

    else
    {
      v10 = [(SearchSessionManager *)self currentSearchSession];
      v9 = [v10 origin] == 1;
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
  v2 = [(SearchSessionManager *)self coordinator];
  v3 = [v2 appCoordinator];
  v4 = [v3 chromeViewController];
  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  return v6;
}

- (void)_clearSearchField
{
  v3 = [(SearchSessionManager *)self delegate];
  v2 = objc_alloc_init(SearchFieldItem);
  [v3 updateSearchFieldWithSearchFieldItem:v2];
}

- (void)_handleUpdateSearchFieldWithSearchFieldItem:(id)a3
{
  v5 = [(SearchSessionManager *)self delegate];
  v4 = [(SearchSession *)self->_searchSession searchFieldItem];
  [v5 updateSearchFieldWithSearchFieldItem:v4];
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

- (void)restoreSearchForItem:(id)a3 withResults:(id)a4 sessionOrigin:(unint64_t)a5
{
  searchSession = self->_searchSession;
  v9 = a4;
  v12 = a3;
  [(SearchSession *)searchSession unregisterObserver:self];
  [(SearchSession *)self->_searchSession invalidate];
  v10 = [[SearchSession alloc] initWithOrigin:a5];
  v11 = self->_searchSession;
  self->_searchSession = v10;

  [(SearchSession *)self->_searchSession registerObserver:self];
  [(SearchSession *)self->_searchSession restoreSearchForItem:v12 withResults:v9];
}

- (void)performSearchForSearchItem:(id)a3 withUserInfo:(id)a4 refinementsQuery:(id)a5 recentAutocompleteSessionData:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SearchSessionManager *)self coordinator];
  v15 = [v14 newTraits];

  if (!v15)
  {
    v16 = [(SearchSessionManager *)self traitsProvider];

    if (v16)
    {
      v17 = [(SearchSessionManager *)self traitsProvider];
      v15 = [v17 currentTraits];
    }

    else
    {
      v15 = 0;
    }
  }

  v18 = sub_100FD806C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v75 = v10;
    v76 = 2112;
    *v77 = v11;
    *&v77[8] = 2112;
    *&v77[10] = v13;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Performing search for item: %@. dict: %@. session data: %@", buf, 0x20u);
  }

  v19 = sub_10079927C();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v15 timeSinceMapViewportChanged];
    *buf = 138412802;
    v75 = v10;
    v76 = 1024;
    *v77 = v20;
    *&v77[4] = 2112;
    *&v77[6] = v13;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Performing search for item: %@, timeSinceMapViewportChanged: %u,  session data: %@", buf, 0x1Cu);
  }

  v21 = [v11 objectForKeyedSubscript:@"SearchSessionIsSuggestionSearch"];
  v69 = [v21 BOOLValue];

  v22 = [v11 objectForKeyedSubscript:@"SearchSessionIsAutoRedoSearch"];
  v73 = [v22 BOOLValue];

  v23 = [v11 objectForKeyedSubscript:@"SearchSessionIsLowFuelSearch"];
  v67 = [v23 BOOLValue];

  v24 = [v11 objectForKeyedSubscript:@"SearchSessionShouldReuseSearchSession"];
  v68 = [v24 BOOLValue];

  v25 = [v11 objectForKeyedSubscript:@"SearchSessionFromRefinementBar"];
  v72 = [v25 BOOLValue];

  v26 = [v11 objectForKeyedSubscript:@"SearchSessionIsSearchAlongRoute"];
  v27 = [v26 BOOLValue];

  v28 = [v11 objectForKeyedSubscript:@"SearchSessionAddStopFromWaypointEditor"];
  v71 = [v28 BOOLValue];

  v29 = [v11 objectForKeyedSubscript:@"SearchSessionAddStopReplacingServerProvidedWaypoint"];
  v30 = [v29 BOOLValue];

  v31 = [v11 objectForKeyedSubscript:@"SearchSessionSuppressHistoryEntry"];

  if (v31)
  {
    v32 = [v11 objectForKeyedSubscript:@"SearchSessionSuppressHistoryEntry"];
    v66 = [v32 BOOLValue] ^ 1;
  }

  else
  {
    v66 = 1;
  }

  v70 = v12;
  v33 = [v11 objectForKeyedSubscript:@"SearchSessionTraitsSource"];

  if (v33)
  {
    v34 = [v11 objectForKeyedSubscript:@"SearchSessionTraitsSource"];
    v35 = [v34 integerValue];
  }

  else
  {
    v35 = 2;
  }

  v36 = [(SearchSessionManager *)self coordinator];
  [v36 isTouristHere];
  [v15 setIsTourist:?];

  [v15 setNavigating:v27];
  [v15 setSource:v35];
  v37 = [v13 autocompleteSessionData];
  [v15 setRecentAutocompleteSessionData:v37];

  v38 = [v11 objectForKeyedSubscript:@"SearchSessionTraits"];

  if (v38)
  {
    v39 = [v11 objectForKeyedSubscript:@"SearchSessionTraits"];

    v15 = v39;
  }

  [v15 setSearchOriginationType:0];
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    if ([(SearchSessionManager *)self _userInterfaceIdiom]!= 5)
    {
      v40 = [v11 objectForKeyedSubscript:@"IsRoutePlanningPresented"];

      if (v40)
      {
        v41 = [v11 objectForKeyedSubscript:@"IsRoutePlanningPresented"];
        v42 = [v41 BOOLValue];

        if (v42)
        {
          [v15 setSearchOriginationType:1];
        }
      }
    }
  }

  if (v27)
  {
    [v15 setSearchOriginationType:2];
  }

  if (!(v73 & 1 | (([v10 isSpotlightSearch] & 1) == 0) | v72 & 1))
  {
    v43 = [v10 punchInDetails];
    v44 = [v43 spotlightEncodedString];
    [v15 setSpotlightSearchPunchinEncodedString:v44];
  }

  v45 = [v11 objectForKeyedSubscript:@"SearchSessionIsSearchAlongRouteEVStationRequest"];

  if (v45)
  {
    [v15 setSearchOriginationType:3];
    v46 = objc_alloc_init(GEOSearchImplicitFilterInfo);
    [v46 setSearchImplicitType:1];
    v47 = [v11 objectForKeyedSubscript:@"SearchSessionSearchAlongRouteImplicitRequestMUID"];
    [v46 setSearchAlongRouteMuid:v47];

    [v15 setSearchImplicitFilterInfo:v46];
  }

  if (v71)
  {
    [v15 setSearchOriginationType:1];
    v48 = [(SearchSessionManager *)self searchOriginationPreviousLatlng];

    if (!v48)
    {
      v49 = [v11 objectForKeyedSubscript:@"SearchSessionAddStopPreviousLatLng"];
      [(SearchSessionManager *)self setSearchOriginationPreviousLatlng:v49];
    }

    [v15 setSearchOriginationEditingServerWaypoints:v30];
    v50 = [(SearchSessionManager *)self searchOriginationPreviousLatlng];
    [v15 setSearchOriginationPreviousLatlng:v50];
  }

  [v15 addSupportedSearchTierType:1];
  if (MapsFeature_IsEnabled_ShelbyvilleSearch())
  {
    Integer = GEOConfigGetInteger();
    if (Integer >= 1)
    {
      v52 = Integer;
      [v15 addSupportedSearchTierType:2];
      [v15 setAuxiliaryTierNumResults:v52];
    }

    [v15 addKnownRefinementType:1];
    [v15 addKnownRefinementType:3];
    [v15 addKnownRefinementType:4];
    if (MapsFeature_IsEnabled_SearchAndDiscovery())
    {
      [v15 addKnownRefinementType:5];
    }

    [v15 addSupportedPlaceSummaryFormatType:1];
    [v15 addSupportedPlaceSummaryFormatType:2];
    [v15 addSupportedPlaceSummaryFormatType:3];
  }

  [v15 useOnlineToOfflineFailoverRequestModeIfAllowed];
  if (MapsFeature_IsEnabled_VisitedPlaces())
  {
    v53 = 37;
  }

  else
  {
    v53 = 35;
  }

  [v15 setPlaceSummaryRevision:v53];
  v54 = [(SearchSessionManager *)self lastSearchSessionViewport];
  if (v54)
  {
    v55 = v54;
    v56 = [(SearchSessionManager *)self lastSearchSessionViewport];
    v57 = [v56 mapRegion];
    v58 = [v57 isValid];

    if (v58)
    {
      v59 = [(SearchSessionManager *)self lastSearchSessionViewport];
      [v15 setPreviousSearchViewport:v59];
    }
  }

  [v15 setResultRefinementQuery:v70];
  if (v69)
  {
    v60 = [v10 suggestion];
    [(SearchSession *)self->_searchSession setSource:v35];
    [(SearchSession *)self->_searchSession suggestionSearch:v60 withTraits:v15];
  }

  else if (v73)
  {
    [v15 setSearchRequestType:2];
    [(SearchSession *)self->_searchSession setSource:v35];
    [(SearchSession *)self->_searchSession redoSearchWithTraits:v15];
  }

  else
  {
    searchSession = self->_searchSession;
    if (!v68 || !searchSession)
    {
      [(SearchSession *)searchSession unregisterObserver:self];
      [(SearchSession *)self->_searchSession invalidateWithReason:1];
      v62 = self->_searchSession;
      self->_searchSession = 0;

      v63 = [[SearchSession alloc] initWithOrigin:2 * (v35 == 1) options:v67];
      v64 = self->_searchSession;
      self->_searchSession = v63;

      [(SearchSession *)self->_searchSession setTraits:v15];
      [(SearchSession *)self->_searchSession setSource:v35];
      [(SearchSession *)self->_searchSession setShouldCreateHistoryEntry:v66];
      [(SearchSession *)self->_searchSession setIsResultRefinementsBarSearch:v72];
      [(SearchSession *)self->_searchSession setIsAddStopFromWaypointEditor:v71];
      v65 = [(SearchSessionManager *)self previousSearchSessionData];
      [(SearchSession *)self->_searchSession setSearchSessionData:v65];

      [(SearchSession *)self->_searchSession registerObserver:self];
      searchSession = self->_searchSession;
    }

    [(SearchSession *)searchSession startSearch:v10];
  }
}

- (void)searchSessionDidInvalidate:(id)a3 reason:(unint64_t)a4
{
  v6 = a3;
  if (self->_searchSession == v6)
  {
    v7 = sub_100FD806C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412546;
      v11 = v6;
      v12 = 2048;
      v13 = a4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "searchSessionDidInvalidate: %@. Reason: %lu", &v10, 0x16u);
    }

    v8 = [(SearchSessionManager *)self coordinator];
    [v8 clearSearch];

    v9 = [(SearchSessionManager *)self observers];
    [v9 searchSessionManagerSessionDidInvalidate];
  }
}

- (void)searchSessionDidFail:(id)a3
{
  v4 = a3;
  v5 = sub_100FD806C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v18 = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "SearchSession did fail: %@", &v18, 0xCu);
  }

  if ([(SearchSessionManager *)self isSearchAlongTheRoute])
  {
    [(SearchSessionManager *)self _handleSearchAlongRouteSearchSession:v4];
    goto LABEL_16;
  }

  v6 = [(SearchSessionManager *)self coordinator];
  if (v6)
  {
  }

  else
  {
    v17 = [(SearchSessionManager *)self traitsProvider];

    if (v17)
    {
      v16 = [(SearchSessionManager *)self observers];
      [v16 searchSessionManagerSessionDidFail];
      goto LABEL_15;
    }
  }

  if ([(SearchSessionManager *)self _userInterfaceIdiom]== 5)
  {
    v7 = [(SearchSessionManager *)self coordinator];
    [v7 presentLoadingResults];

LABEL_11:
    v12 = [(SearchSessionManager *)self observers];
    [v12 searchSessionManagerSessionDidFail];

    v13 = [(SearchSessionManager *)self delegate];
    [v13 updateFloatingControlsWithSearchSession:v4];

    v14 = [v4 lastError];
    v15 = [v14 code];

    if (v15 != -8)
    {
      goto LABEL_16;
    }

    v16 = [(SearchSessionManager *)self coordinator];
    [v16 clearSearchPins];
LABEL_15:

    goto LABEL_16;
  }

  v8 = [v4 traits];
  v9 = [v8 searchOriginationType];

  if (v9 == 1)
  {
    goto LABEL_11;
  }

  v10 = [(SearchSessionManager *)self coordinator];
  v11 = [v10 isRoutePlanningPresented];

  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_16:
}

- (void)searchSessionDidChangeSearchResults:(id)a3
{
  v4 = a3;
  v5 = sub_100FD806C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v84 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received results for searchSession: %@", buf, 0xCu);
  }

  v6 = [v4 searchInfo];
  v7 = [v6 searchSessionData];
  [(SearchSessionManager *)self setPreviousSearchSessionData:v7];

  if (![(SearchSessionManager *)self isSearchAlongTheRoute])
  {
    v8 = [(SearchSessionManager *)self coordinator];
    if (v8)
    {
    }

    else
    {
      v13 = [(SearchSessionManager *)self traitsProvider];
      v14 = v13 == 0;

      if (!v14)
      {
        v15 = [(SearchSessionManager *)self observers];
        [v15 searchSessionManagerSessionDidReceiveUpdate];

        goto LABEL_21;
      }
    }

    v9 = [v4 searchInfo];
    v10 = [v9 clientResolvedResult];

    if (v10)
    {
      v11 = [(SearchSessionManager *)self coordinator];
      v12 = [v9 clientResolvedResult];
      [v11 viewController:0 selectClientResolvedItem:v12 fromSearchInfo:v9 withUserInfo:0];
LABEL_17:

      if ([(SearchSessionManager *)self _userInterfaceIdiom]!= 5)
      {
LABEL_20:

        goto LABEL_21;
      }

      v20 = [(SearchSessionManager *)self observers];
      [v20 searchSessionManagerSessionDidReceiveUpdate];
LABEL_19:

      goto LABEL_20;
    }

    v16 = [v9 directionIntent];

    if (v16)
    {
      v11 = [(SearchSessionManager *)self coordinator];
      v12 = [v9 directionIntent];
      v17 = [v9 results];
      [v11 viewController:0 doDirectionIntent:v12 withSearchResults:v17];

      goto LABEL_17;
    }

    if ([v9 singlePlaceCollection])
    {
      v11 = [(SearchSessionManager *)self coordinator];
      v12 = [v9 placeCollections];
      v18 = [v12 firstObject];
      [v11 viewController:0 showFullyClientizedCuratedCollection:v18 replaceViewController:MapsFeature_IsEnabled_SearchAndDiscovery() ^ 1];

      goto LABEL_17;
    }

    v19 = [v9 publisher];

    if (v19)
    {
      v11 = [(SearchSessionManager *)self coordinator];
      v12 = [v9 publisher];
      [v11 viewControllerShowPublisher:v12 replaceViewController:MapsFeature_IsEnabled_SearchAndDiscovery() ^ 1];
      goto LABEL_17;
    }

    v21 = sub_100FD806C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v4 searchFieldItem];
      *buf = 138412546;
      v84 = v22;
      v85 = 2112;
      v86 = v4;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Processing search results for item: %@ session: %@", buf, 0x16u);
    }

    if ([v4 isRedoOrAutoRedoSearchType])
    {
      v23 = 0;
    }

    else
    {
      v24 = [v9 mapRegion];
      v23 = v24 != 0;
    }

    v25 = [v4 isVenueQuery];
    if ([v4 isSpotlightPunchInSearch])
    {
      v20 = [(SearchSessionManager *)self _spotlightMatchingSearchResult:v4 searchInfo:v9];
      if (v20)
      {
LABEL_32:
        if ([v4 isSpotlightPunchInSearch] && objc_msgSend(v4, "isSingleResultToShowAsPlacecard"))
        {
          if ([(SearchSessionManager *)self _userInterfaceIdiom]== 5)
          {
            [(SearchSessionManager *)self _presentLoadingResults:v4];
            v27 = [(SearchSessionManager *)self observers];
            [v27 searchSessionManagerSessionDidReceiveUpdate];
          }

          else
          {
            v50 = [v20 mapItem];
            v51 = [v50 _identifier];
            v52 = [v9 spotlightMapsIdentifier];
            v53 = [v51 isEqual:v52];

            if ((v53 & 1) == 0)
            {
              v54 = sub_100FD806C();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                v55 = [v9 spotlightMapsIdentifier];
                v56 = [v20 mapItem];
                v57 = [v56 _identifier];
                *buf = 138478083;
                v84 = v55;
                v85 = 2113;
                v86 = v57;
              }
            }

            v27 = [(SearchSessionManager *)self coordinator];
            [v27 viewController:0 selectSearchResult:v20 addToHistory:1 source:8 saveSelectionState:1 replaceCurrentCard:1];
          }

          v23 = 1;
        }

        else if (v25)
        {
          if (!v23)
          {
            goto LABEL_58;
          }

          v27 = [v4 searchFieldItem];
          v28 = [v27 venueCategoryItem];
          v23 = [v28 shouldFrameMapViewport];
        }

        else
        {
          v29 = sub_100FD806C();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = [v4 searchFieldItem];
            v31 = [v30 searchString];
            *buf = 138412290;
            v84 = v31;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Processing no venue search results for Query %@", buf, 0xCu);
          }

          if ([v4 isSingleResultToShowAsPlacecard])
          {
            v32 = [v9 results];
            v33 = [v32 firstObject];

            if ([v9 hasRelatedSearchSuggestion])
            {
              v34 = [RelatedSearchSuggestion alloc];
              v35 = [v9 resultDisplayHeader];
              v36 = [v9 substitutes];
              [v9 dymSuggestionVisibleTime];
              v38 = -[RelatedSearchSuggestion initWithResultDisplayHeader:substitutes:visibleTime:showCloseButton:](v34, "initWithResultDisplayHeader:substitutes:visibleTime:showCloseButton:", v35, v36, [v9 showDymSuggestionCloseButton], v37);
              [v33 setRelatedSearchSuggestion:v38];
            }

            v39 = [(SearchSessionManager *)self delegate];
            [v39 retainSearchQueryForSelectedSearchResult:v33];

            v40 = [v4 shouldCreateHistoryEntry];
            v41 = [v33 address];
            if (v41)
            {
              v42 = [v33 address];
              v43 = [v42 isMeCard];

              v40 &= v43 ^ 1;
            }

            v44 = [v9 autocompletePerson];
            v45 = v44 == 0;

            v46 = [(SearchSessionManager *)self coordinator];
            [v46 viewController:0 selectSearchResult:v33 addToHistory:v45 & v40 source:2 saveSelectionState:1 replaceCurrentCard:1];

            v47 = +[MKMapService sharedService];
            v48 = [v4 searchFieldItem];
            v49 = [v48 searchString];
            [v47 captureUserAction:2015 onTarget:101 queryString:v49];

            v23 = 1;
          }

          else
          {
            if ([(SearchSessionManager *)self _userInterfaceIdiom]== 5)
            {
              [(SearchSessionManager *)self _presentLoadingResults:v4];
            }

            v33 = v20;
          }

          v27 = [(SearchSessionManager *)self observers];
          [v27 searchSessionManagerSessionDidReceiveUpdate];
          v20 = v33;
        }

LABEL_58:
        v58 = [v4 currentResultsSearchInfo];
        v59 = [v58 shouldInjectSearchResults];

        if (!v59)
        {
          if (([v4 singleResultMode] & 1) == 0)
          {
            v65 = [(SearchSessionManager *)self coordinator];
            v66 = [v65 searchPinsManager];
            [v66 clearSearchPins];
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
        if ([v4 singleResultMode])
        {
          v60 = [v9 autocompletePerson];
          v61 = v60 == 0;

          v62 = [(SearchSessionManager *)self coordinator];
          v63 = [v62 searchPinsManager];
          v64 = [v4 currentResultsSearchInfo];
          if (v61)
          {
            v69 = [v4 searchFieldItem];
            v70 = [v69 historyItem];
            [v63 setSingleSearchPinFromSearchInfo:v64 scrollToResults:v23 displayPlaceCardForResult:v20 historyItem:v70 animated:1 completion:v80];

            goto LABEL_68;
          }
        }

        else
        {
          v67 = [v9 autocompletePerson];
          v68 = v67 == 0;

          v62 = [(SearchSessionManager *)self coordinator];
          v63 = [v62 searchPinsManager];
          v64 = [v4 currentResultsSearchInfo];
          if (v68)
          {
            [v63 setSearchPinsFromSearchInfo:v64 scrollToResults:v23 displayPlaceCardForResult:v20 animated:1 completion:v80];
            goto LABEL_68;
          }
        }

        [v63 setSearchPinsFromSearchInfo:v64 scrollToResults:v23 displayPlaceCardForResult:0 animated:1 completion:v80];
LABEL_68:

        v71 = [v4 isSpotlightPunchInSearch];
        if (v20)
        {
          v72 = v71;
        }

        else
        {
          v72 = 0;
        }

        if (v72 == 1 && ([v4 isSingleResultToShowAsPlacecard] & 1) == 0)
        {
          v73 = [(SearchSessionManager *)self coordinator];
          v74 = [v73 searchPinsManager];
          [v74 selectAndShowSearchResult:v20 animated:1];
        }

        objc_destroyWeak(&v82);
        objc_destroyWeak(buf);
LABEL_75:
        v75 = [(SearchSessionManager *)self delegate];
        v76 = [v9 results];
        v77 = [v4 searchFieldItem];
        v78 = [v9 browseCategories];
        [v75 handleVenueSearchResultsWithSelectedSearchResult:v76 searchFieldItem:v77 browseCategories:v78];

        v79 = [(SearchSessionManager *)self delegate];
        [v79 updateFloatingControlsWithSearchSession:v4];

        goto LABEL_19;
      }

      if ([v4 isSingleResultToShowAsPlacecard])
      {
        v26 = [v9 results];
        v20 = [v26 firstObject];

        goto LABEL_32;
      }
    }

    v20 = 0;
    goto LABEL_32;
  }

  [(SearchSessionManager *)self _handleSearchAlongRouteSearchSession:v4];
LABEL_21:
}

- (void)refreshedEVChargersReceieved:(id)a3
{
  v10 = a3;
  v4 = [(SearchSessionManager *)self observers];
  v5 = [v4 searchSessionShouldUpdateEVChargers];

  if (v5)
  {
    v6 = [(SearchSessionManager *)self coordinator];
    v7 = [v6 searchPinsManager];
    [v7 setSearchPins:v10 selectedPin:0 animated:1];

    v8 = [(SearchSessionManager *)self observers];
    [v8 searchSessionManagerReceiveEVChargersUpdate:v10];

    if ([(SearchSession *)self->_searchSession isVenueQuery])
    {
      v9 = [(SearchSessionManager *)self delegate];
      [v9 receivedVenueEVChargersUpdate:v10];
    }
  }
}

- (void)searchSessionDidChangeSearchFieldItem:(id)a3
{
  v4 = a3;
  v5 = sub_100FD806C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "searchSessionDidChangeSearchFieldItem: %@", &v8, 0xCu);
  }

  if ([(SearchSessionManager *)self isSearchAlongTheRoute])
  {
    [(SearchSessionManager *)self _handleSearchAlongRouteSearchSession:v4];
  }

  else
  {
    if (([v4 isVenueQuery] & 1) == 0)
    {
      v6 = [v4 searchFieldItem];
      [(SearchSessionManager *)self _handleUpdateSearchFieldWithSearchFieldItem:v6];
    }

    v7 = [(SearchSessionManager *)self delegate];
    [v7 updateFloatingControlsWithSearchSession:v4];
  }
}

- (void)searchSessionWillPerformSearch:(id)a3
{
  v4 = a3;
  v5 = sub_100FD806C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "searchSessionWillPerformSearch: %@", &v14, 0xCu);
  }

  if ([(SearchSessionManager *)self isSearchAlongTheRoute])
  {
    [(SearchSessionManager *)self _handleSearchAlongRouteSearchSession:v4];
  }

  else
  {
    v6 = [v4 isVenueQuery];
    v7 = [v4 searchFieldItem];
    if ((v6 & 1) == 0 && ([v4 restoreSingleResult] & 1) == 0)
    {
      if ([(SearchSessionManager *)self _userInterfaceIdiom]!= 5)
      {
        v8 = [(SearchSessionManager *)self coordinator];
        [v8 presentLoadingResults];

        v9 = [(SearchSessionManager *)self coordinator];
        [v9 updateResultsViewContent];
      }

      [(SearchSessionManager *)self _handleUpdateSearchFieldWithSearchFieldItem:v7];
      v10 = [(SearchSessionManager *)self observers];
      [v10 searchSessionManagerSessionWillPerformSearch];
    }

    v11 = [(SearchSessionManager *)self delegate];
    [v11 updateFloatingControlsWithSearchSession:v4];

    v12 = [v7 venueCategoryItem];
    v13 = [(SearchSessionManager *)self coordinator];
    [v13 presentVenueCategoryWithVenueCategoryItem:v12];
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(SearchSessionManager *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(SearchSessionManager *)self observers];
  [v5 registerObserver:v4];
}

- (void)_searchSessionWillStart:(id)a3
{
  v4 = [a3 object];
  v5 = v4;
  if (v4)
  {
    if (self->_searchSession != v4)
    {
      obj = v4;
      v6 = [(SearchSession *)v4 origin];
      v5 = obj;
      if (v6)
      {
        v7 = [(SearchSession *)obj currentResultsSearchInfo];
        v8 = [v7 isSearchAlongRoute];

        v5 = obj;
        if ((v8 & 1) == 0)
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