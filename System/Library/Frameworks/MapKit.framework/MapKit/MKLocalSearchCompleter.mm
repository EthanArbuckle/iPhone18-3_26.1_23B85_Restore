@interface MKLocalSearchCompleter
- (MKCoordinateRegion)region;
- (MKLocalSearchCompleter)init;
- (MKSearchCompletionFilterType)filterType;
- (double)timeToNextRequest;
- (id)_completionTicketForFilterTypeWithTraits:(id)traits;
- (id)_completionTicketForPrivateFilterType:(int64_t)type traits:(id)traits;
- (id)context;
- (id)delegate;
- (int64_t)entriesType;
- (void)_cancelTimer;
- (void)_fireRequest;
- (void)_handleCompletion:(id)completion shouldDisplayNoResults:(BOOL)results shouldEnableRAPForNoResults:(BOOL)noResults forTicket:(id)ticket;
- (void)_handleError:(id)error forTicket:(id)ticket;
- (void)_markDirty;
- (void)_markDirtyAndScheduleRequestWithTimeToNextRequest:(double)request;
- (void)_notifyDelegatesWithResults:(id)results sections:(id)sections shouldDisplayNoResults:(BOOL)noResults shouldEnableRAPForNoResults:(BOOL)forNoResults ticket:(id)ticket;
- (void)_schedulePendingRequest;
- (void)_scheduleRequestWithTimeToNextRequest:(double)request;
- (void)_updateFilters;
- (void)cancel;
- (void)clearQueryState;
- (void)dealloc;
- (void)retry;
- (void)setAddressFilter:(id)filter;
- (void)setCategoryFilter:(id)filter;
- (void)setEntriesType:(int64_t)type;
- (void)setFilterType:(MKSearchCompletionFilterType)filterType;
- (void)setPointOfInterestFilter:(MKPointOfInterestFilter *)pointOfInterestFilter;
- (void)setQueryFragment:(NSString *)queryFragment;
- (void)setRegion:(MKCoordinateRegion)region;
- (void)setRegionPriority:(int64_t)priority;
- (void)setResultTypes:(MKLocalSearchCompleterResultType)resultTypes;
- (void)setRetainedSearchMetadata:(id)metadata;
- (void)setSource:(int)source;
- (void)setStatefulQueriesEnabled:(BOOL)enabled;
@end

@implementation MKLocalSearchCompleter

- (id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MKCoordinateRegion)region
{
  latitude = self->_region.center.latitude;
  longitude = self->_region.center.longitude;
  latitudeDelta = self->_region.span.latitudeDelta;
  longitudeDelta = self->_region.span.longitudeDelta;
  result.span.longitudeDelta = longitudeDelta;
  result.span.latitudeDelta = latitudeDelta;
  result.center.longitude = longitude;
  result.center.latitude = latitude;
  return result;
}

- (void)setEntriesType:(int64_t)type
{
  if (type <= 5 && ((0x33u >> type) & 1) != 0)
  {
    v5 = qword_1A30F78F8[type];
    [(MKLocalSearchCompleter *)self setResultTypes:qword_1A30F78C8[type]];

    [(MKLocalSearchCompleter *)self _setPrivateFilterType:v5];
  }
}

- (int64_t)entriesType
{
  if ([(MKLocalSearchCompleter *)self _privateFilterType])
  {
    v3 = [(MKLocalSearchCompleter *)self _privateFilterType]- 1000;
    if (v3 < 3)
    {
      return qword_1A30F78B0[v3];
    }
  }

  return ![(MKLocalSearchCompleter *)self resultTypes]|| ([(MKLocalSearchCompleter *)self resultTypes]& 4) != 0;
}

- (void)setStatefulQueriesEnabled:(BOOL)enabled
{
  if (self->_statefulQueriesEnabled != enabled)
  {
    self->_statefulQueriesEnabled = enabled;
    if (enabled)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69A1B88]);
    }

    else
    {
      v5 = 0;
    }

    autocompleteSessionData = self->_autocompleteSessionData;
    self->_autocompleteSessionData = v5;
  }
}

- (void)clearQueryState
{
  v3 = objc_alloc_init(MEMORY[0x1E69A1B88]);
  autocompleteSessionData = self->_autocompleteSessionData;
  self->_autocompleteSessionData = v3;
}

- (void)retry
{
  if (![(MKLocalSearchCompleter *)self isSearching]&& self->_dirty)
  {

    [(MKLocalSearchCompleter *)self _markDirty];
  }
}

- (void)cancel
{
  v14 = *MEMORY[0x1E69E9840];
  [(MKLocalSearchCompleter *)self _cancelTimer];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_inFlightTickets;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_inFlightTickets removeAllObjects];
  [(NSMutableArray *)self->_pendingTickets removeAllObjects];
  [(MKLocationManagerOperation *)self->_singleLocationUpdate cancel];
  singleLocationUpdate = self->_singleLocationUpdate;
  self->_singleLocationUpdate = 0;
}

- (void)_cancelTimer
{
  timer = self->_timer;
  if (timer)
  {
    [(NSTimer *)timer invalidate];
    v4 = self->_timer;
    self->_timer = 0;
  }
}

- (void)setRegionPriority:(int64_t)priority
{
  if (self->_regionPriority != priority)
  {
    self->_regionPriority = priority;
    [(MKLocalSearchCompleter *)self _markDirty];
  }
}

- (void)setRegion:(MKCoordinateRegion)region
{
  self->_region = region;
  queryFragment = [(MKLocalSearchCompleter *)self queryFragment];
  v5 = [queryFragment length];

  if (v5)
  {

    [(MKLocalSearchCompleter *)self _markDirty];
  }
}

- (void)setSource:(int)source
{
  if (self->_source != source)
  {
    self->_source = source;
    if ([(NSString *)self->_queryFragment length])
    {

      [(MKLocalSearchCompleter *)self _markDirty];
    }
  }
}

- (void)setRetainedSearchMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (self->_retainedSearchMetadata != metadataCopy)
  {
    objc_storeStrong(&self->_retainedSearchMetadata, metadata);
    if ([(NSString *)self->_queryFragment length])
    {
      [(MKLocalSearchCompleter *)self _markDirty];
    }
  }
}

- (void)_updateFilters
{
  array = [MEMORY[0x1E695DF70] array];
  if (self->_categoryFilter)
  {
    v4 = [objc_alloc(MEMORY[0x1E69A1BA0]) initWithCategory:self->_categoryFilter];
    if (v4)
    {
      [(NSArray *)array addObject:v4];
    }
  }

  pointOfInterestFilter = self->_pointOfInterestFilter;
  if (pointOfInterestFilter)
  {
    _geoPOICategoryFilter = [(MKPointOfInterestFilter *)pointOfInterestFilter _geoPOICategoryFilter];
    if (_geoPOICategoryFilter)
    {
      [(NSArray *)array addObject:_geoPOICategoryFilter];
    }
  }

  addressFilter = self->_addressFilter;
  if (addressFilter)
  {
    _geoAddressFilter = [(MKAddressFilter *)addressFilter _geoAddressFilter];
    if (_geoAddressFilter)
    {
      [(NSArray *)array addObject:_geoAddressFilter];
    }
  }

  resultTypes = self->_resultTypes;
  if (resultTypes)
  {
    v10 = _MKLinkedOnOrAfterReleaseSet(3852);
    if ((resultTypes & 2) != 0 && !v10)
    {
      resultTypes |= 8uLL;
    }

    v12 = [objc_alloc(MEMORY[0x1E69A2490]) initWithResultTypes:resultTypes];
    [(NSArray *)array addObject:v12];
  }

  if (self->_regionPriority == 1)
  {
    v13 = objc_alloc_init(MEMORY[0x1E69A25C8]);
    [(NSArray *)array addObject:v13];
  }

  filters = self->_filters;
  self->_filters = array;
  v15 = array;

  v16 = [(NSString *)self->_queryFragment length];
  if (v16)
  {

    [(MKLocalSearchCompleter *)self _markDirty];
  }
}

- (void)setAddressFilter:(id)filter
{
  filterCopy = filter;
  if (([filterCopy isEqual:self->_addressFilter] & 1) == 0)
  {
    v4 = [filterCopy copy];
    addressFilter = self->_addressFilter;
    self->_addressFilter = v4;

    [(MKLocalSearchCompleter *)self _updateFilters];
  }
}

- (void)setCategoryFilter:(id)filter
{
  filterCopy = filter;
  if (self->_categoryFilter != filterCopy)
  {
    v6 = filterCopy;
    objc_storeStrong(&self->_categoryFilter, filter);
    [(MKLocalSearchCompleter *)self _updateFilters];
    filterCopy = v6;
  }
}

- (void)setPointOfInterestFilter:(MKPointOfInterestFilter *)pointOfInterestFilter
{
  if (self->_pointOfInterestFilter != pointOfInterestFilter)
  {
    v5 = [(MKPointOfInterestFilter *)pointOfInterestFilter copy];
    v6 = self->_pointOfInterestFilter;
    self->_pointOfInterestFilter = v5;

    [(MKLocalSearchCompleter *)self _updateFilters];
  }
}

- (void)setResultTypes:(MKLocalSearchCompleterResultType)resultTypes
{
  if (self->_resultTypes != resultTypes)
  {
    self->_resultTypes = resultTypes;
    [(MKLocalSearchCompleter *)self _updateFilters];
  }
}

- (void)setFilterType:(MKSearchCompletionFilterType)filterType
{
  if ((filterType - 1000) >= 4)
  {
    if (filterType)
    {
      if (filterType != MKSearchCompletionFilterTypeLocationsOnly)
      {
        return;
      }

      filterType = 3;
    }

    [(MKLocalSearchCompleter *)self setResultTypes:filterType];
    filterType = MKSearchCompletionFilterTypeLocationsAndQueries;
  }

  [(MKLocalSearchCompleter *)self _setPrivateFilterType:filterType];
}

- (MKSearchCompletionFilterType)filterType
{
  result = self->_privateFilterType;
  if (result == MKSearchCompletionFilterTypeLocationsAndQueries)
  {
    result = [(MKLocalSearchCompleter *)self resultTypes];
    if (result)
    {
      return ~([(MKLocalSearchCompleter *)self resultTypes]>> 2) & 1;
    }
  }

  return result;
}

- (void)setQueryFragment:(NSString *)queryFragment
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = queryFragment;
  if (![(NSString *)v4 isEqualToString:self->_queryFragment])
  {
    v24 = v4;
    v5 = [(NSString *)v4 copy];
    v6 = self->_queryFragment;
    self->_queryFragment = v5;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = self->_pendingTickets;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v25 = 0;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          _searchQuery = [v12 _searchQuery];
          if (_searchQuery)
          {
            v14 = _searchQuery;
            v15 = self->_queryFragment;
            _searchQuery2 = [v12 _searchQuery];
            if ([(NSString *)v15 hasPrefix:_searchQuery2])
            {
            }

            else
            {
              v17 = self->_queryFragment;
              _searchQuery3 = [v12 _searchQuery];
              LOBYTE(v17) = [(NSString *)v17 isEqualToString:_searchQuery3];

              if ((v17 & 1) == 0)
              {
                [v12 cancel];
                array = v25;
                if (!v25)
                {
                  array = [MEMORY[0x1E695DF70] array];
                }

                v25 = array;
                [array addObject:v12];
              }
            }
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    else
    {
      v25 = 0;
    }

    if ([v25 count])
    {
      [(NSMutableArray *)self->_inFlightTickets removeObjectsInArray:v25];
      [(NSMutableArray *)self->_pendingTickets removeObjectsInArray:v25];
    }

    [(MKLocalSearchCompleter *)self timeToNextRequest];
    v21 = v20;
    v4 = v24;
    if (v20 > 0.0)
    {
      analyticsProvider = [(MKLocalSearchCompleter *)self analyticsProvider];
      captureNewMetrics = [analyticsProvider captureNewMetrics];

      [captureNewMetrics submitWithStatus:3];
    }

    [(MKLocalSearchCompleter *)self _markDirtyAndScheduleRequestWithTimeToNextRequest:v21];
  }
}

- (double)timeToNextRequest
{
  v3 = CACurrentMediaTime() - self->_lastRequestTime;
  if ([(NSMutableArray *)self->_inFlightTickets count]!= self->_maxNumberOfConcurrentRequests)
  {
    RequestInterval = searchNextRequestInterval();
    result = 0.0;
    if (RequestInterval < v3)
    {
      return result;
    }

    v5 = searchNextRequestInterval();
    return v5 - v3;
  }

  if (searchReplaceRequestInterval_onceToken != -1)
  {
    dispatch_once(&searchReplaceRequestInterval_onceToken, &__block_literal_global_26437);
  }

  result = 0.0;
  if (*&searchReplaceRequestInterval_searchRequestInterval >= v3)
  {
    v5 = *&searchReplaceRequestInterval_searchRequestInterval;
    return v5 - v3;
  }

  return result;
}

- (void)_scheduleRequestWithTimeToNextRequest:(double)request
{
  if (!self->_timer)
  {
    v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__fireRequest selector:0 userInfo:0 repeats:request];
    timer = self->_timer;
    self->_timer = v5;
  }
}

- (void)_markDirtyAndScheduleRequestWithTimeToNextRequest:(double)request
{
  delegate = [(MKLocalSearchCompleter *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MKLocalSearchCompleter *)self delegate];
    [delegate2 completerWillUpdateResults:self];
  }

  *&self->_dirty = 1;

  [(MKLocalSearchCompleter *)self _scheduleRequestWithTimeToNextRequest:request];
}

- (void)_markDirty
{
  [(MKLocalSearchCompleter *)self timeToNextRequest];

  [(MKLocalSearchCompleter *)self _markDirtyAndScheduleRequestWithTimeToNextRequest:?];
}

- (void)_schedulePendingRequest
{
  [(MKLocalSearchCompleter *)self _cancelTimer];
  if (self->_dirty)
  {
    [(MKLocalSearchCompleter *)self timeToNextRequest];

    [(MKLocalSearchCompleter *)self _scheduleRequestWithTimeToNextRequest:?];
  }
}

- (id)_completionTicketForPrivateFilterType:(int64_t)type traits:(id)traits
{
  traitsCopy = traits;
  if (self->_statefulQueriesEnabled)
  {
    autocompleteSessionData = self->_autocompleteSessionData;
  }

  else
  {
    autocompleteSessionData = 0;
  }

  v8 = autocompleteSessionData;
  v9 = 0;
  if (type > 1001)
  {
    if (type == 1002)
    {
      mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
      queryFragment = [(MKLocalSearchCompleter *)self queryFragment];
      v15 = [mEMORY[0x1E69A2208] ticketForInterleavedAutoCompletePoiAddressOnly:queryFragment sessionData:v8 traits:traitsCopy];
    }

    else
    {
      if (type != 1003)
      {
        goto LABEL_18;
      }

      mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
      queryFragment = [(MKLocalSearchCompleter *)self queryFragment];
      v15 = [mEMORY[0x1E69A2208] ticketForOfflineRegionSearchFragment:queryFragment sessionData:v8 traits:traitsCopy];
    }

    goto LABEL_16;
  }

  if (type != 1000)
  {
    if (type != 1001)
    {
      goto LABEL_18;
    }

    mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
    queryFragment = [(MKLocalSearchCompleter *)self queryFragment];
    filters = self->_filters;
    retainedSearchMetadata = [(MKLocalSearchCompleter *)self retainedSearchMetadata];
    _geoCompletionItem = [(MKLocalSearchCompletion *)self->_tappedQuerySuggestionCompletion _geoCompletionItem];
    v9 = [mEMORY[0x1E69A2208] ticketForInterleavedAutoCompleteWithBrowseSearchFragment:queryFragment filters:filters retainedSearch:retainedSearchMetadata tappedQuerySuggestion:_geoCompletionItem sessionData:v8 traits:traitsCopy];

    goto LABEL_17;
  }

  listType = [(MKLocalSearchCompleter *)self listType];
  if (listType == 1)
  {
    mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
    queryFragment = [(MKLocalSearchCompleter *)self queryFragment];
    v15 = [mEMORY[0x1E69A2208] ticketForSectionedLocalitiesAndLandmarksSearchFragment:queryFragment sessionData:v8 traits:traitsCopy];
    goto LABEL_16;
  }

  if (!listType)
  {
    mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
    queryFragment = [(MKLocalSearchCompleter *)self queryFragment];
    v15 = [mEMORY[0x1E69A2208] ticketForInterleavedLocalitiesAndLandmarksSearchFragment:queryFragment sessionData:v8 traits:traitsCopy];
LABEL_16:
    v9 = v15;
LABEL_17:

    goto LABEL_18;
  }

  v9 = 0;
LABEL_18:

  return v9;
}

- (id)_completionTicketForFilterTypeWithTraits:(id)traits
{
  traitsCopy = traits;
  if (self->_statefulQueriesEnabled)
  {
    autocompleteSessionData = self->_autocompleteSessionData;
  }

  else
  {
    autocompleteSessionData = 0;
  }

  v6 = autocompleteSessionData;
  if (![(MKLocalSearchCompleter *)self resultTypes]|| ([(MKLocalSearchCompleter *)self resultTypes]& 4) != 0)
  {
    listType = [(MKLocalSearchCompleter *)self listType];
    if (listType == 1)
    {
      mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
      queryFragment = [(MKLocalSearchCompleter *)self queryFragment];
      v10 = [mEMORY[0x1E69A2208] ticketForSectionedAutoCompleteSearchFragment:queryFragment filters:self->_filters sessionData:v6 traits:traitsCopy];
      goto LABEL_15;
    }

    if (!listType)
    {
      mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
      queryFragment = [(MKLocalSearchCompleter *)self queryFragment];
      v10 = [mEMORY[0x1E69A2208] ticketForInterleavedAutoCompleteSearchFragment:queryFragment filters:self->_filters sessionData:v6 traits:traitsCopy];
      goto LABEL_15;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_16;
  }

  listType2 = [(MKLocalSearchCompleter *)self listType];
  if (listType2 == 1)
  {
    mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
    queryFragment = [(MKLocalSearchCompleter *)self queryFragment];
    v10 = [mEMORY[0x1E69A2208] ticketForSectionedInstantSearchFragment:queryFragment filters:self->_filters sessionData:v6 traits:traitsCopy];
    goto LABEL_15;
  }

  if (listType2)
  {
    goto LABEL_12;
  }

  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  queryFragment = [(MKLocalSearchCompleter *)self queryFragment];
  v10 = [mEMORY[0x1E69A2208] ticketForInterleavedInstantSearchFragment:queryFragment filters:self->_filters sessionData:v6 traits:traitsCopy];
LABEL_15:
  v12 = v10;

LABEL_16:

  return v12;
}

- (void)_fireRequest
{
  [(MKLocalSearchCompleter *)self _cancelTimer];
  while ([(NSMutableArray *)self->_inFlightTickets count]>= self->_maxNumberOfConcurrentRequests)
  {
    firstObject = [(NSMutableArray *)self->_inFlightTickets firstObject];
    [(NSMutableArray *)self->_inFlightTickets removeObjectAtIndex:0];
    [(NSMutableArray *)self->_pendingTickets removeObject:firstObject];
    [firstObject cancel];
  }

  traits = self->_traits;
  if (traits)
  {
    defaultTraits = traits;
  }

  else
  {
    v6 = +[MKMapService sharedService];
    defaultTraits = [v6 defaultTraits];
  }

  [(MKLocalSearchCompleter *)self region];
  if (fabs(v8) >= 0.00000000999999994 || fabs(v7) >= 0.00000000999999994)
  {
    v9 = [MEMORY[0x1E69A2200] _mapkit_mapRegionForCoordinateRegion:?];
    [(GEOMapServiceTraits *)defaultTraits setMapRegion:v9];
  }

  [(GEOMapServiceTraits *)defaultTraits setSource:[(MKLocalSearchCompleter *)self source]];
  [(MKLocalSearchCompleter *)self timeSinceLastInBoundingRegion];
  LODWORD(v11) = vcvtmd_u64_f64(v10);
  [(GEOMapServiceTraits *)defaultTraits setTimeSinceMapViewportChanged:v11];
  mapType = [(MKLocalSearchCompleter *)self mapType];
  v13 = 1;
  if (mapType <= 2)
  {
    if (!mapType)
    {
LABEL_23:
      [(GEOMapServiceTraits *)defaultTraits setMode:v13];
      goto LABEL_24;
    }

    if (mapType != 1)
    {
      if (mapType != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

LABEL_22:
    v13 = 2;
    goto LABEL_23;
  }

  if (mapType > 101)
  {
    if (mapType != 102)
    {
      if (mapType != 104)
      {
        goto LABEL_24;
      }

      v13 = 4;
    }

    goto LABEL_23;
  }

  if (mapType == 3)
  {
    goto LABEL_22;
  }

  if (mapType == 4)
  {
LABEL_18:
    v13 = 3;
    goto LABEL_23;
  }

LABEL_24:
  deviceLocation = [(MKLocalSearchCompleter *)self deviceLocation];

  if (deviceLocation)
  {
    v15 = objc_alloc(MEMORY[0x1E69A1E70]);
    deviceLocation2 = [(MKLocalSearchCompleter *)self deviceLocation];
    v17 = [v15 initWithCLLocation:deviceLocation2];
    [(GEOMapServiceTraits *)defaultTraits setDeviceLocation:v17];
  }

  if (!traits)
  {
    deviceLocation3 = [(GEOMapServiceTraits *)defaultTraits deviceLocation];
    if (deviceLocation3 || self->_singleLocationUpdate)
    {
    }

    else
    {
      v27 = +[MKLocationManager sharedLocationManager];
      isLocationServicesAvailable = [v27 isLocationServicesAvailable];

      if (isLocationServicesAvailable)
      {
        v29 = +[MKLocationManager sharedLocationManager];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __38__MKLocalSearchCompleter__fireRequest__block_invoke;
        v38[3] = &unk_1E76C9D38;
        v38[4] = self;
        v30 = [v29 singleLocationUpdateWithHandler:v38];
        singleLocationUpdate = self->_singleLocationUpdate;
        self->_singleLocationUpdate = v30;

        [(MKLocationManagerOperation *)self->_singleLocationUpdate start];
      }
    }
  }

  [(GEOMapServiceTraits *)defaultTraits setPhotosCount:0];
  privateFilterType = self->_privateFilterType;
  if (privateFilterType)
  {
    [(MKLocalSearchCompleter *)self _completionTicketForPrivateFilterType:privateFilterType traits:defaultTraits];
  }

  else
  {
    [(MKLocalSearchCompleter *)self _completionTicketForFilterTypeWithTraits:defaultTraits];
  }
  v20 = ;
  [(NSMutableArray *)self->_pendingTickets addObject:v20];
  [(NSMutableArray *)self->_inFlightTickets addObject:v20];
  self->_lastRequestTime = CACurrentMediaTime();
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __38__MKLocalSearchCompleter__fireRequest__block_invoke_2;
  v37[3] = &unk_1E76CA670;
  v37[4] = self;
  v21 = MEMORY[0x1A58E9F30](v37);
  analyticsProvider = [(MKLocalSearchCompleter *)self analyticsProvider];
  captureNewMetrics = [analyticsProvider captureNewMetrics];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __38__MKLocalSearchCompleter__fireRequest__block_invoke_3;
  v34[3] = &unk_1E76C9D88;
  v34[4] = self;
  v35 = v20;
  v36 = captureNewMetrics;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __38__MKLocalSearchCompleter__fireRequest__block_invoke_6;
  v32[3] = &unk_1E76C9DD8;
  v33 = v21;
  v24 = v21;
  v25 = captureNewMetrics;
  v26 = v20;
  [v26 submitWithAutoCompletionHandler:v34 networkActivity:v32];
}

void __38__MKLocalSearchCompleter__fireRequest__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    [*(a1 + 32) _markDirty];
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  *(v4 + 192) = 0;
}

void __38__MKLocalSearchCompleter__fireRequest__block_invoke_2(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) delegate];
  if (a2)
  {
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    v7 = [*(a1 + 32) delegate];
    [v7 completerWillAccessNetwork:*(a1 + 32)];
  }

  else
  {
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    v7 = [*(a1 + 32) delegate];
    [v7 completerDidAccessNetwork:*(a1 + 32)];
  }
}

void __38__MKLocalSearchCompleter__fireRequest__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __38__MKLocalSearchCompleter__fireRequest__block_invoke_4;
  v16[3] = &unk_1E76C9D60;
  v7 = *(a1 + 40);
  v16[4] = *(a1 + 32);
  v17 = v7;
  v8 = v6;
  v18 = v8;
  v19 = *(a1 + 48);
  v9 = v5;
  v20 = v9;
  v10 = MEMORY[0x1A58E9F30](v16);
  GEOConfigGetDouble();
  if (v11 > 0.0 && (v12 = v11 + *(*(a1 + 32) + 128) - CACurrentMediaTime(), v12 > 0.0))
  {
    v13 = dispatch_time(0, (v12 * 1000000000.0));
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __38__MKLocalSearchCompleter__fireRequest__block_invoke_5;
    v14[3] = &unk_1E76CD4D0;
    v15 = v10;
    dispatch_after(v13, MEMORY[0x1E69E96A0], v14);
  }

  else if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v10[2](v10);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

void __38__MKLocalSearchCompleter__fireRequest__block_invoke_6(uint64_t a1, char a2)
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __38__MKLocalSearchCompleter__fireRequest__block_invoke_7;
    v5[3] = &unk_1E76C9DB0;
    v6 = *(a1 + 32);
    v7 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void *__38__MKLocalSearchCompleter__fireRequest__block_invoke_4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 224) indexOfObject:*(a1 + 40)];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return result;
  }

  [*(*(a1 + 32) + 216) removeObject:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = GEOErrorDomain();
    if ([v5 isEqualToString:v6])
    {
      v7 = [v4 code];

      if (v7 == -3)
      {
        v8 = 2;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v8 = 1;
LABEL_9:

  [*(a1 + 56) submitWithStatus:v8];
  v9 = *(a1 + 32);
  if (!*(a1 + 64) || *(a1 + 48))
  {
    [v9 _handleError:*(a1 + 48) forTicket:*(a1 + 40)];
    result = *(a1 + 32);
    if (!result[22])
    {
      return result;
    }
  }

  else
  {
    [v9 _handleCompletion:? shouldDisplayNoResults:? shouldEnableRAPForNoResults:? forTicket:?];
    result = *(a1 + 32);
  }

  return [result _schedulePendingRequest];
}

- (void)_handleError:(id)error forTicket:(id)ticket
{
  errorCopy = error;
  ticketCopy = ticket;
  domain = [errorCopy domain];
  v8 = GEOErrorDomain();
  v9 = [domain isEqualToString:v8];

  if (v9)
  {
    if ([errorCopy code] == -2)
    {
      [(NSMutableArray *)self->_pendingTickets removeObject:ticketCopy];
      goto LABEL_21;
    }

    if ([errorCopy code] == -8)
    {
      userInfo = [errorCopy userInfo];
      delegate6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A1630]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [delegate6 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      userInfo2 = [errorCopy userInfo];
      v26 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E69A1638]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue2 = [v26 BOOLValue];
      }

      else
      {
        bOOLValue2 = 0;
      }

      [(MKLocalSearchCompleter *)self _handleCompletion:0 shouldDisplayNoResults:bOOLValue shouldEnableRAPForNoResults:bOOLValue2 forTicket:ticketCopy];

      goto LABEL_20;
    }
  }

  v13 = [(NSMutableArray *)self->_pendingTickets indexOfObject:ticketCopy];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_pendingTickets removeObjectAtIndex:v13];
    *&self->_shouldDisplayNoResults = 0;
    if (![(NSMutableArray *)self->_pendingTickets count])
    {
      delegate = [(MKLocalSearchCompleter *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        delegate2 = [(MKLocalSearchCompleter *)self delegate];
        [delegate2 completerDidFail:self error:errorCopy];
      }

      delegate3 = [(MKLocalSearchCompleter *)self delegate];
      v18 = objc_opt_respondsToSelector();

      if (v18)
      {
        delegate4 = [(MKLocalSearchCompleter *)self delegate];
        _mapkit_error = [errorCopy _mapkit_error];
        [delegate4 completer:self didFailWithError:_mapkit_error];
      }

      delegate5 = [(MKLocalSearchCompleter *)self delegate];
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        delegate6 = [(MKLocalSearchCompleter *)self delegate];
        _mapkit_error2 = [errorCopy _mapkit_error];
        _searchQuery = [ticketCopy _searchQuery];
        [delegate6 completer:self didFailWithError:_mapkit_error2 forQueryFragment:_searchQuery];

LABEL_20:
      }
    }
  }

LABEL_21:
}

- (void)_notifyDelegatesWithResults:(id)results sections:(id)sections shouldDisplayNoResults:(BOOL)noResults shouldEnableRAPForNoResults:(BOOL)forNoResults ticket:(id)ticket
{
  resultsCopy = results;
  sectionsCopy = sections;
  ticketCopy = ticket;
  v15 = [(NSMutableArray *)self->_pendingTickets indexOfObject:ticketCopy];
  v16 = v15;
  if (v15)
  {
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    forNoResultsCopy2 = forNoResults;
    v45 = sectionsCopy;
    array = 0;
    v18 = 0;
    do
    {
      v19 = [(NSMutableArray *)self->_pendingTickets objectAtIndexedSubscript:v18];
      if (!array)
      {
        array = [MEMORY[0x1E695DF70] array];
      }

      [array addObject:v19];
      [v19 cancel];

      ++v18;
    }

    while (v16 != v18);
  }

  else
  {
    forNoResultsCopy2 = forNoResults;
    v45 = sectionsCopy;
    array = 0;
  }

  [(NSMutableArray *)self->_pendingTickets removeObjectsInRange:0, v16 + 1];
  if ([array count])
  {
    [(NSMutableArray *)self->_inFlightTickets removeObjectsInArray:array];
  }

  objc_storeStrong(&self->_results, results);
  objc_storeStrong(&self->_sections, sections);
  self->_shouldDisplayNoResults = noResults;
  self->_shouldEnableRAPForNoResults = forNoResultsCopy2;
  self->_resultsAreCurrent = !self->_dirty;
  clientRankingModel = [ticketCopy clientRankingModel];
  clientRankingModel = self->_clientRankingModel;
  self->_clientRankingModel = clientRankingModel;

  sortPriorityMapping = [ticketCopy sortPriorityMapping];
  sortPriorityMapping = self->_sortPriorityMapping;
  self->_sortPriorityMapping = sortPriorityMapping;

  self->_autocompleteTopSectionIsQuerySuggestions = [ticketCopy autocompleteTopSectionIsQuerySuggestions];
  self->_showAutocompleteClientSource = [ticketCopy showAutocompleteClientSource];
  self->_shouldEnableGrayscaleHighlighting = [ticketCopy shouldEnableGrayscaleHighlighting];
  placeSummaryLayoutMetadata = [ticketCopy placeSummaryLayoutMetadata];
  placeSummaryLayoutMetadata = self->_placeSummaryLayoutMetadata;
  self->_placeSummaryLayoutMetadata = placeSummaryLayoutMetadata;

  self->_shouldUseDistanceFeatureServerResults = [ticketCopy shouldUseDistanceFeatureServerResults];
  highlightType = [ticketCopy highlightType];
  v27 = highlightType == 1;
  if (highlightType == 2)
  {
    v27 = 2;
  }

  self->_highlightType = v27;
  self->_enableStructuredRAPAffordance = [ticketCopy enableStructuredRAPAffordance];
  autocompleteRequest = [ticketCopy autocompleteRequest];
  geoMIFAutocompleteRequest = self->_geoMIFAutocompleteRequest;
  self->_geoMIFAutocompleteRequest = autocompleteRequest;

  delegate = [(MKLocalSearchCompleter *)self delegate];
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    delegate2 = [(MKLocalSearchCompleter *)self delegate];
    [delegate2 setLastTicket:ticketCopy];
  }

  delegate3 = [(MKLocalSearchCompleter *)self delegate];
  v34 = objc_opt_respondsToSelector();

  if (v34)
  {
    delegate4 = [(MKLocalSearchCompleter *)self delegate];
    [delegate4 completerDidUpdateResults:self finished:1];
  }

  delegate5 = [(MKLocalSearchCompleter *)self delegate];
  v37 = objc_opt_respondsToSelector();

  if (v37)
  {
    delegate6 = [(MKLocalSearchCompleter *)self delegate];
    sections = self->_sections;
    _searchQuery = [ticketCopy _searchQuery];
    [delegate6 completer:self didUpdateResultsWithSections:sections forQueryFragment:_searchQuery];
  }

  delegate7 = [(MKLocalSearchCompleter *)self delegate];
  v42 = objc_opt_respondsToSelector();

  if (v42)
  {
    delegate8 = [(MKLocalSearchCompleter *)self delegate];
    [delegate8 completerDidUpdateResults:self];
  }

  sectionsCopy = v45;
LABEL_22:
}

- (void)_handleCompletion:(id)completion shouldDisplayNoResults:(BOOL)results shouldEnableRAPForNoResults:(BOOL)noResults forTicket:(id)ticket
{
  v106 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  ticketCopy = ticket;
  sessionData = [completionCopy sessionData];
  autocompleteSessionData = self->_autocompleteSessionData;
  self->_autocompleteSessionData = sessionData;

  group = dispatch_group_create();
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v68 = completionCopy;
  obj = [completionCopy groups];
  v71 = [obj countByEnumeratingWithState:&v99 objects:v105 count:16];
  v65 = ticketCopy;
  if (v71)
  {
    v80 = 0;
    v12 = 0;
    v70 = *v100;
    do
    {
      v13 = 0;
      do
      {
        v74 = v12;
        selfCopy3 = self;
        if (*v100 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v73 = v13;
        v15 = *(*(&v99 + 1) + 8 * v13);
        localizedSectionHeader = [v15 localizedSectionHeader];
        v17 = MEMORY[0x1E695DF70];
        items = [v15 items];
        v19 = [v17 arrayWithCapacity:{objc_msgSend(items, "count")}];

        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v72 = v15;
        items2 = [v15 items];
        v20 = [items2 countByEnumeratingWithState:&v95 objects:v104 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = 0;
          v23 = *v96;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v96 != v23)
              {
                objc_enumerationMutation(items2);
              }

              v25 = *(*(&v95 + 1) + 8 * i);
              v26 = [[MKLocalSearchCompletion alloc] initWithGeoCompletionItem:v25 serverSectionIndex:v80 serverItemIndexInSection:v22];
              if ([(MKLocalSearchCompleter *)selfCopy3 _shouldPreloadTransitInfo])
              {
                mapItem = [(MKLocalSearchCompletion *)v26 mapItem];
                _hasTransitLabels = [mapItem _hasTransitLabels];

                selfCopy3 = self;
                if (_hasTransitLabels)
                {
                  dispatch_group_enter(group);
                  mapItem2 = [(MKLocalSearchCompletion *)v26 mapItem];
                  v93[0] = MEMORY[0x1E69E9820];
                  v93[1] = 3221225472;
                  v93[2] = __105__MKLocalSearchCompleter__handleCompletion_shouldDisplayNoResults_shouldEnableRAPForNoResults_forTicket___block_invoke;
                  v93[3] = &unk_1E76CDB38;
                  selfCopy3 = self;
                  v94 = group;
                  [mapItem2 preloadTransitInfoWithCompletion:v93];
                }
              }

              if ([localizedSectionHeader length])
              {
                [(MKLocalSearchCompletion *)v26 setLocalizedSectionHeader:localizedSectionHeader];
              }

              identifier = [(MKLocalSearchCompleter *)selfCopy3 identifier];
              [(MKLocalSearchCompletion *)v26 setSourceID:identifier];

              [array addObject:v26];
              [v19 addObject:v26];
              directionIntent = [v25 directionIntent];

              if (directionIntent)
              {
                [array2 addObject:v26];
              }

              ++v22;
            }

            v21 = [items2 countByEnumeratingWithState:&v95 objects:v104 count:16];
          }

          while (v21);
        }

        v12 = v74;
        if (!v74)
        {
          v32 = MEMORY[0x1E695DF70];
          groups = [v68 groups];
          v12 = [v32 arrayWithCapacity:{objc_msgSend(groups, "count")}];
        }

        v34 = [MKLocalSearchSection alloc];
        shouldInterleaveClientResults = [v72 shouldInterleaveClientResults];
        enforceServerResultsOrder = [v72 enforceServerResultsOrder];
        enableMapsSuggestServerReranking = [v72 enableMapsSuggestServerReranking];
        isSectionForClientOnlyResults = [v72 isSectionForClientOnlyResults];
        includedClientResultTypes = [v72 includedClientResultTypes];
        excludedClientResultTypes = [v72 excludedClientResultTypes];
        v41 = [(MKLocalSearchSection *)v34 initWithResults:v19 title:localizedSectionHeader shouldInterleaveClientResults:shouldInterleaveClientResults enforceServerResultsOrder:enforceServerResultsOrder enableMapsSuggestServerReranking:enableMapsSuggestServerReranking isSectionForClientOnlyResults:isSectionForClientOnlyResults includedClientResultTypes:includedClientResultTypes excludedClientResultTypes:excludedClientResultTypes];
        [v12 addObject:v41];

        ++v80;
        v13 = v73 + 1;
      }

      while (v73 + 1 != v71);
      v71 = [obj countByEnumeratingWithState:&v99 objects:v105 count:16];
    }

    while (v71);
  }

  else
  {
    v12 = 0;
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v42 = array2;
  v43 = [v42 countByEnumeratingWithState:&v89 objects:v103 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v90;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v90 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v89 + 1) + 8 * j);
        directionIntent2 = [v47 directionIntent];
        origin = [directionIntent2 origin];
        resultIndex = [origin resultIndex];

        directionIntent3 = [v47 directionIntent];
        origin2 = [directionIntent3 origin];
        if ([origin2 hasResultIndex])
        {
          v53 = [array count];

          if (resultIndex >= v53)
          {
            goto LABEL_36;
          }

          directionIntent3 = [array objectAtIndex:resultIndex];
          [v47 setDirectionIntentOrigin:directionIntent3];
        }

        else
        {
        }

LABEL_36:
        directionIntent4 = [v47 directionIntent];
        destination = [directionIntent4 destination];
        resultIndex2 = [destination resultIndex];

        directionIntent5 = [v47 directionIntent];
        destination2 = [directionIntent5 destination];
        if ([destination2 hasResultIndex])
        {
          v59 = [array count];

          if (resultIndex2 >= v59)
          {
            continue;
          }

          directionIntent5 = [array objectAtIndex:resultIndex2];
          [v47 setDirectionIntentDestination:directionIntent5];
        }

        else
        {
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v89 objects:v103 count:16];
    }

    while (v44);
  }

  lastObject = [(NSMutableArray *)self->_pendingTickets lastObject];

  if (lastObject == v65)
  {
    queryFragment = [(MKLocalSearchCompleter *)self queryFragment];
    self->_dirty = [v65 matchesFragment:queryFragment] ^ 1;
  }

  else
  {
    self->_dirty = 0;
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__MKLocalSearchCompleter__handleCompletion_shouldDisplayNoResults_shouldEnableRAPForNoResults_forTicket___block_invoke_2;
  block[3] = &unk_1E76C9D10;
  objc_copyWeak(&v85, &location);
  v82 = array;
  v83 = v12;
  resultsCopy = results;
  noResultsCopy = noResults;
  v84 = v65;
  v62 = v65;
  v63 = v12;
  v64 = array;
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v85);
  objc_destroyWeak(&location);
}

void __105__MKLocalSearchCompleter__handleCompletion_shouldDisplayNoResults_shouldEnableRAPForNoResults_forTicket___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) copy];
    [v5 _notifyDelegatesWithResults:v3 sections:v4 shouldDisplayNoResults:*(a1 + 64) shouldEnableRAPForNoResults:*(a1 + 65) ticket:*(a1 + 48)];

    WeakRetained = v5;
  }
}

- (void)dealloc
{
  [(MKLocalSearchCompleter *)self cancel];
  v3.receiver = self;
  v3.super_class = MKLocalSearchCompleter;
  [(MKLocalSearchCompleter *)&v3 dealloc];
}

- (MKLocalSearchCompleter)init
{
  v14.receiver = self;
  v14.super_class = MKLocalSearchCompleter;
  v2 = [(MKLocalSearchCompleter *)&v14 init];
  if (v2)
  {
    v2->_region.center = CLLocationCoordinate2DMake(0.0, 0.0);
    v2->_region.span = xmmword_1A30F71C0;
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 copy];
    identifier = v2->_identifier;
    v2->_identifier = v5;

    v2->_source = 0;
    v2->_listType = 0;
    v2->_timeSinceLastInBoundingRegion = 0.0;
    UInteger = 1;
    v2->_resultsAreCurrent = 1;
    queryFragment = v2->_queryFragment;
    v2->_queryFragment = &stru_1F15B23C0;

    if (GEOConfigGetUInteger())
    {
      UInteger = GEOConfigGetUInteger();
    }

    v2->_maxNumberOfConcurrentRequests = UInteger;
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:UInteger];
    inFlightTickets = v2->_inFlightTickets;
    v2->_inFlightTickets = v9;

    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:v2->_maxNumberOfConcurrentRequests];
    pendingTickets = v2->_pendingTickets;
    v2->_pendingTickets = v11;
  }

  return v2;
}

@end