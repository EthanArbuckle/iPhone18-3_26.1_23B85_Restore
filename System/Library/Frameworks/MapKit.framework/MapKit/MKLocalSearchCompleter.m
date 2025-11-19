@interface MKLocalSearchCompleter
- (MKCoordinateRegion)region;
- (MKLocalSearchCompleter)init;
- (MKSearchCompletionFilterType)filterType;
- (double)timeToNextRequest;
- (id)_completionTicketForFilterTypeWithTraits:(id)a3;
- (id)_completionTicketForPrivateFilterType:(int64_t)a3 traits:(id)a4;
- (id)context;
- (id)delegate;
- (int64_t)entriesType;
- (void)_cancelTimer;
- (void)_fireRequest;
- (void)_handleCompletion:(id)a3 shouldDisplayNoResults:(BOOL)a4 shouldEnableRAPForNoResults:(BOOL)a5 forTicket:(id)a6;
- (void)_handleError:(id)a3 forTicket:(id)a4;
- (void)_markDirty;
- (void)_markDirtyAndScheduleRequestWithTimeToNextRequest:(double)a3;
- (void)_notifyDelegatesWithResults:(id)a3 sections:(id)a4 shouldDisplayNoResults:(BOOL)a5 shouldEnableRAPForNoResults:(BOOL)a6 ticket:(id)a7;
- (void)_schedulePendingRequest;
- (void)_scheduleRequestWithTimeToNextRequest:(double)a3;
- (void)_updateFilters;
- (void)cancel;
- (void)clearQueryState;
- (void)dealloc;
- (void)retry;
- (void)setAddressFilter:(id)a3;
- (void)setCategoryFilter:(id)a3;
- (void)setEntriesType:(int64_t)a3;
- (void)setFilterType:(MKSearchCompletionFilterType)filterType;
- (void)setPointOfInterestFilter:(MKPointOfInterestFilter *)pointOfInterestFilter;
- (void)setQueryFragment:(NSString *)queryFragment;
- (void)setRegion:(MKCoordinateRegion)region;
- (void)setRegionPriority:(int64_t)a3;
- (void)setResultTypes:(MKLocalSearchCompleterResultType)resultTypes;
- (void)setRetainedSearchMetadata:(id)a3;
- (void)setSource:(int)a3;
- (void)setStatefulQueriesEnabled:(BOOL)a3;
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

- (void)setEntriesType:(int64_t)a3
{
  if (a3 <= 5 && ((0x33u >> a3) & 1) != 0)
  {
    v5 = qword_1A30F78F8[a3];
    [(MKLocalSearchCompleter *)self setResultTypes:qword_1A30F78C8[a3]];

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

- (void)setStatefulQueriesEnabled:(BOOL)a3
{
  if (self->_statefulQueriesEnabled != a3)
  {
    self->_statefulQueriesEnabled = a3;
    if (a3)
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

- (void)setRegionPriority:(int64_t)a3
{
  if (self->_regionPriority != a3)
  {
    self->_regionPriority = a3;
    [(MKLocalSearchCompleter *)self _markDirty];
  }
}

- (void)setRegion:(MKCoordinateRegion)region
{
  self->_region = region;
  v4 = [(MKLocalSearchCompleter *)self queryFragment];
  v5 = [v4 length];

  if (v5)
  {

    [(MKLocalSearchCompleter *)self _markDirty];
  }
}

- (void)setSource:(int)a3
{
  if (self->_source != a3)
  {
    self->_source = a3;
    if ([(NSString *)self->_queryFragment length])
    {

      [(MKLocalSearchCompleter *)self _markDirty];
    }
  }
}

- (void)setRetainedSearchMetadata:(id)a3
{
  v5 = a3;
  if (self->_retainedSearchMetadata != v5)
  {
    objc_storeStrong(&self->_retainedSearchMetadata, a3);
    if ([(NSString *)self->_queryFragment length])
    {
      [(MKLocalSearchCompleter *)self _markDirty];
    }
  }
}

- (void)_updateFilters
{
  v3 = [MEMORY[0x1E695DF70] array];
  if (self->_categoryFilter)
  {
    v4 = [objc_alloc(MEMORY[0x1E69A1BA0]) initWithCategory:self->_categoryFilter];
    if (v4)
    {
      [(NSArray *)v3 addObject:v4];
    }
  }

  pointOfInterestFilter = self->_pointOfInterestFilter;
  if (pointOfInterestFilter)
  {
    v6 = [(MKPointOfInterestFilter *)pointOfInterestFilter _geoPOICategoryFilter];
    if (v6)
    {
      [(NSArray *)v3 addObject:v6];
    }
  }

  addressFilter = self->_addressFilter;
  if (addressFilter)
  {
    v8 = [(MKAddressFilter *)addressFilter _geoAddressFilter];
    if (v8)
    {
      [(NSArray *)v3 addObject:v8];
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
    [(NSArray *)v3 addObject:v12];
  }

  if (self->_regionPriority == 1)
  {
    v13 = objc_alloc_init(MEMORY[0x1E69A25C8]);
    [(NSArray *)v3 addObject:v13];
  }

  filters = self->_filters;
  self->_filters = v3;
  v15 = v3;

  v16 = [(NSString *)self->_queryFragment length];
  if (v16)
  {

    [(MKLocalSearchCompleter *)self _markDirty];
  }
}

- (void)setAddressFilter:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_addressFilter] & 1) == 0)
  {
    v4 = [v6 copy];
    addressFilter = self->_addressFilter;
    self->_addressFilter = v4;

    [(MKLocalSearchCompleter *)self _updateFilters];
  }
}

- (void)setCategoryFilter:(id)a3
{
  v5 = a3;
  if (self->_categoryFilter != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_categoryFilter, a3);
    [(MKLocalSearchCompleter *)self _updateFilters];
    v5 = v6;
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
          v13 = [v12 _searchQuery];
          if (v13)
          {
            v14 = v13;
            v15 = self->_queryFragment;
            v16 = [v12 _searchQuery];
            if ([(NSString *)v15 hasPrefix:v16])
            {
            }

            else
            {
              v17 = self->_queryFragment;
              v18 = [v12 _searchQuery];
              LOBYTE(v17) = [(NSString *)v17 isEqualToString:v18];

              if ((v17 & 1) == 0)
              {
                [v12 cancel];
                v19 = v25;
                if (!v25)
                {
                  v19 = [MEMORY[0x1E695DF70] array];
                }

                v25 = v19;
                [v19 addObject:v12];
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
      v22 = [(MKLocalSearchCompleter *)self analyticsProvider];
      v23 = [v22 captureNewMetrics];

      [v23 submitWithStatus:3];
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

- (void)_scheduleRequestWithTimeToNextRequest:(double)a3
{
  if (!self->_timer)
  {
    v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__fireRequest selector:0 userInfo:0 repeats:a3];
    timer = self->_timer;
    self->_timer = v5;
  }
}

- (void)_markDirtyAndScheduleRequestWithTimeToNextRequest:(double)a3
{
  v5 = [(MKLocalSearchCompleter *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MKLocalSearchCompleter *)self delegate];
    [v7 completerWillUpdateResults:self];
  }

  *&self->_dirty = 1;

  [(MKLocalSearchCompleter *)self _scheduleRequestWithTimeToNextRequest:a3];
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

- (id)_completionTicketForPrivateFilterType:(int64_t)a3 traits:(id)a4
{
  v6 = a4;
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
  if (a3 > 1001)
  {
    if (a3 == 1002)
    {
      v10 = [MEMORY[0x1E69A2208] sharedService];
      v11 = [(MKLocalSearchCompleter *)self queryFragment];
      v15 = [v10 ticketForInterleavedAutoCompletePoiAddressOnly:v11 sessionData:v8 traits:v6];
    }

    else
    {
      if (a3 != 1003)
      {
        goto LABEL_18;
      }

      v10 = [MEMORY[0x1E69A2208] sharedService];
      v11 = [(MKLocalSearchCompleter *)self queryFragment];
      v15 = [v10 ticketForOfflineRegionSearchFragment:v11 sessionData:v8 traits:v6];
    }

    goto LABEL_16;
  }

  if (a3 != 1000)
  {
    if (a3 != 1001)
    {
      goto LABEL_18;
    }

    v10 = [MEMORY[0x1E69A2208] sharedService];
    v11 = [(MKLocalSearchCompleter *)self queryFragment];
    filters = self->_filters;
    v13 = [(MKLocalSearchCompleter *)self retainedSearchMetadata];
    v14 = [(MKLocalSearchCompletion *)self->_tappedQuerySuggestionCompletion _geoCompletionItem];
    v9 = [v10 ticketForInterleavedAutoCompleteWithBrowseSearchFragment:v11 filters:filters retainedSearch:v13 tappedQuerySuggestion:v14 sessionData:v8 traits:v6];

    goto LABEL_17;
  }

  v16 = [(MKLocalSearchCompleter *)self listType];
  if (v16 == 1)
  {
    v10 = [MEMORY[0x1E69A2208] sharedService];
    v11 = [(MKLocalSearchCompleter *)self queryFragment];
    v15 = [v10 ticketForSectionedLocalitiesAndLandmarksSearchFragment:v11 sessionData:v8 traits:v6];
    goto LABEL_16;
  }

  if (!v16)
  {
    v10 = [MEMORY[0x1E69A2208] sharedService];
    v11 = [(MKLocalSearchCompleter *)self queryFragment];
    v15 = [v10 ticketForInterleavedLocalitiesAndLandmarksSearchFragment:v11 sessionData:v8 traits:v6];
LABEL_16:
    v9 = v15;
LABEL_17:

    goto LABEL_18;
  }

  v9 = 0;
LABEL_18:

  return v9;
}

- (id)_completionTicketForFilterTypeWithTraits:(id)a3
{
  v4 = a3;
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
    v11 = [(MKLocalSearchCompleter *)self listType];
    if (v11 == 1)
    {
      v8 = [MEMORY[0x1E69A2208] sharedService];
      v9 = [(MKLocalSearchCompleter *)self queryFragment];
      v10 = [v8 ticketForSectionedAutoCompleteSearchFragment:v9 filters:self->_filters sessionData:v6 traits:v4];
      goto LABEL_15;
    }

    if (!v11)
    {
      v8 = [MEMORY[0x1E69A2208] sharedService];
      v9 = [(MKLocalSearchCompleter *)self queryFragment];
      v10 = [v8 ticketForInterleavedAutoCompleteSearchFragment:v9 filters:self->_filters sessionData:v6 traits:v4];
      goto LABEL_15;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_16;
  }

  v7 = [(MKLocalSearchCompleter *)self listType];
  if (v7 == 1)
  {
    v8 = [MEMORY[0x1E69A2208] sharedService];
    v9 = [(MKLocalSearchCompleter *)self queryFragment];
    v10 = [v8 ticketForSectionedInstantSearchFragment:v9 filters:self->_filters sessionData:v6 traits:v4];
    goto LABEL_15;
  }

  if (v7)
  {
    goto LABEL_12;
  }

  v8 = [MEMORY[0x1E69A2208] sharedService];
  v9 = [(MKLocalSearchCompleter *)self queryFragment];
  v10 = [v8 ticketForInterleavedInstantSearchFragment:v9 filters:self->_filters sessionData:v6 traits:v4];
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
    v3 = [(NSMutableArray *)self->_inFlightTickets firstObject];
    [(NSMutableArray *)self->_inFlightTickets removeObjectAtIndex:0];
    [(NSMutableArray *)self->_pendingTickets removeObject:v3];
    [v3 cancel];
  }

  traits = self->_traits;
  if (traits)
  {
    v5 = traits;
  }

  else
  {
    v6 = +[MKMapService sharedService];
    v5 = [v6 defaultTraits];
  }

  [(MKLocalSearchCompleter *)self region];
  if (fabs(v8) >= 0.00000000999999994 || fabs(v7) >= 0.00000000999999994)
  {
    v9 = [MEMORY[0x1E69A2200] _mapkit_mapRegionForCoordinateRegion:?];
    [(GEOMapServiceTraits *)v5 setMapRegion:v9];
  }

  [(GEOMapServiceTraits *)v5 setSource:[(MKLocalSearchCompleter *)self source]];
  [(MKLocalSearchCompleter *)self timeSinceLastInBoundingRegion];
  LODWORD(v11) = vcvtmd_u64_f64(v10);
  [(GEOMapServiceTraits *)v5 setTimeSinceMapViewportChanged:v11];
  v12 = [(MKLocalSearchCompleter *)self mapType];
  v13 = 1;
  if (v12 <= 2)
  {
    if (!v12)
    {
LABEL_23:
      [(GEOMapServiceTraits *)v5 setMode:v13];
      goto LABEL_24;
    }

    if (v12 != 1)
    {
      if (v12 != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

LABEL_22:
    v13 = 2;
    goto LABEL_23;
  }

  if (v12 > 101)
  {
    if (v12 != 102)
    {
      if (v12 != 104)
      {
        goto LABEL_24;
      }

      v13 = 4;
    }

    goto LABEL_23;
  }

  if (v12 == 3)
  {
    goto LABEL_22;
  }

  if (v12 == 4)
  {
LABEL_18:
    v13 = 3;
    goto LABEL_23;
  }

LABEL_24:
  v14 = [(MKLocalSearchCompleter *)self deviceLocation];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x1E69A1E70]);
    v16 = [(MKLocalSearchCompleter *)self deviceLocation];
    v17 = [v15 initWithCLLocation:v16];
    [(GEOMapServiceTraits *)v5 setDeviceLocation:v17];
  }

  if (!traits)
  {
    v18 = [(GEOMapServiceTraits *)v5 deviceLocation];
    if (v18 || self->_singleLocationUpdate)
    {
    }

    else
    {
      v27 = +[MKLocationManager sharedLocationManager];
      v28 = [v27 isLocationServicesAvailable];

      if (v28)
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

  [(GEOMapServiceTraits *)v5 setPhotosCount:0];
  privateFilterType = self->_privateFilterType;
  if (privateFilterType)
  {
    [(MKLocalSearchCompleter *)self _completionTicketForPrivateFilterType:privateFilterType traits:v5];
  }

  else
  {
    [(MKLocalSearchCompleter *)self _completionTicketForFilterTypeWithTraits:v5];
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
  v22 = [(MKLocalSearchCompleter *)self analyticsProvider];
  v23 = [v22 captureNewMetrics];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __38__MKLocalSearchCompleter__fireRequest__block_invoke_3;
  v34[3] = &unk_1E76C9D88;
  v34[4] = self;
  v35 = v20;
  v36 = v23;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __38__MKLocalSearchCompleter__fireRequest__block_invoke_6;
  v32[3] = &unk_1E76C9DD8;
  v33 = v21;
  v24 = v21;
  v25 = v23;
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

- (void)_handleError:(id)a3 forTicket:(id)a4
{
  v28 = a3;
  v6 = a4;
  v7 = [v28 domain];
  v8 = GEOErrorDomain();
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    if ([v28 code] == -2)
    {
      [(NSMutableArray *)self->_pendingTickets removeObject:v6];
      goto LABEL_21;
    }

    if ([v28 code] == -8)
    {
      v10 = [v28 userInfo];
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69A1630]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 BOOLValue];
      }

      else
      {
        v12 = 0;
      }

      v25 = [v28 userInfo];
      v26 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69A1638]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [v26 BOOLValue];
      }

      else
      {
        v27 = 0;
      }

      [(MKLocalSearchCompleter *)self _handleCompletion:0 shouldDisplayNoResults:v12 shouldEnableRAPForNoResults:v27 forTicket:v6];

      goto LABEL_20;
    }
  }

  v13 = [(NSMutableArray *)self->_pendingTickets indexOfObject:v6];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_pendingTickets removeObjectAtIndex:v13];
    *&self->_shouldDisplayNoResults = 0;
    if (![(NSMutableArray *)self->_pendingTickets count])
    {
      v14 = [(MKLocalSearchCompleter *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = [(MKLocalSearchCompleter *)self delegate];
        [v16 completerDidFail:self error:v28];
      }

      v17 = [(MKLocalSearchCompleter *)self delegate];
      v18 = objc_opt_respondsToSelector();

      if (v18)
      {
        v19 = [(MKLocalSearchCompleter *)self delegate];
        v20 = [v28 _mapkit_error];
        [v19 completer:self didFailWithError:v20];
      }

      v21 = [(MKLocalSearchCompleter *)self delegate];
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        v11 = [(MKLocalSearchCompleter *)self delegate];
        v23 = [v28 _mapkit_error];
        v24 = [v6 _searchQuery];
        [v11 completer:self didFailWithError:v23 forQueryFragment:v24];

LABEL_20:
      }
    }
  }

LABEL_21:
}

- (void)_notifyDelegatesWithResults:(id)a3 sections:(id)a4 shouldDisplayNoResults:(BOOL)a5 shouldEnableRAPForNoResults:(BOOL)a6 ticket:(id)a7
{
  v46 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(NSMutableArray *)self->_pendingTickets indexOfObject:v14];
  v16 = v15;
  if (v15)
  {
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    v44 = a6;
    v45 = v13;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = [(NSMutableArray *)self->_pendingTickets objectAtIndexedSubscript:v18];
      if (!v17)
      {
        v17 = [MEMORY[0x1E695DF70] array];
      }

      [v17 addObject:v19];
      [v19 cancel];

      ++v18;
    }

    while (v16 != v18);
  }

  else
  {
    v44 = a6;
    v45 = v13;
    v17 = 0;
  }

  [(NSMutableArray *)self->_pendingTickets removeObjectsInRange:0, v16 + 1];
  if ([v17 count])
  {
    [(NSMutableArray *)self->_inFlightTickets removeObjectsInArray:v17];
  }

  objc_storeStrong(&self->_results, a3);
  objc_storeStrong(&self->_sections, a4);
  self->_shouldDisplayNoResults = a5;
  self->_shouldEnableRAPForNoResults = v44;
  self->_resultsAreCurrent = !self->_dirty;
  v20 = [v14 clientRankingModel];
  clientRankingModel = self->_clientRankingModel;
  self->_clientRankingModel = v20;

  v22 = [v14 sortPriorityMapping];
  sortPriorityMapping = self->_sortPriorityMapping;
  self->_sortPriorityMapping = v22;

  self->_autocompleteTopSectionIsQuerySuggestions = [v14 autocompleteTopSectionIsQuerySuggestions];
  self->_showAutocompleteClientSource = [v14 showAutocompleteClientSource];
  self->_shouldEnableGrayscaleHighlighting = [v14 shouldEnableGrayscaleHighlighting];
  v24 = [v14 placeSummaryLayoutMetadata];
  placeSummaryLayoutMetadata = self->_placeSummaryLayoutMetadata;
  self->_placeSummaryLayoutMetadata = v24;

  self->_shouldUseDistanceFeatureServerResults = [v14 shouldUseDistanceFeatureServerResults];
  v26 = [v14 highlightType];
  v27 = v26 == 1;
  if (v26 == 2)
  {
    v27 = 2;
  }

  self->_highlightType = v27;
  self->_enableStructuredRAPAffordance = [v14 enableStructuredRAPAffordance];
  v28 = [v14 autocompleteRequest];
  geoMIFAutocompleteRequest = self->_geoMIFAutocompleteRequest;
  self->_geoMIFAutocompleteRequest = v28;

  v30 = [(MKLocalSearchCompleter *)self delegate];
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    v32 = [(MKLocalSearchCompleter *)self delegate];
    [v32 setLastTicket:v14];
  }

  v33 = [(MKLocalSearchCompleter *)self delegate];
  v34 = objc_opt_respondsToSelector();

  if (v34)
  {
    v35 = [(MKLocalSearchCompleter *)self delegate];
    [v35 completerDidUpdateResults:self finished:1];
  }

  v36 = [(MKLocalSearchCompleter *)self delegate];
  v37 = objc_opt_respondsToSelector();

  if (v37)
  {
    v38 = [(MKLocalSearchCompleter *)self delegate];
    sections = self->_sections;
    v40 = [v14 _searchQuery];
    [v38 completer:self didUpdateResultsWithSections:sections forQueryFragment:v40];
  }

  v41 = [(MKLocalSearchCompleter *)self delegate];
  v42 = objc_opt_respondsToSelector();

  if (v42)
  {
    v43 = [(MKLocalSearchCompleter *)self delegate];
    [v43 completerDidUpdateResults:self];
  }

  v13 = v45;
LABEL_22:
}

- (void)_handleCompletion:(id)a3 shouldDisplayNoResults:(BOOL)a4 shouldEnableRAPForNoResults:(BOOL)a5 forTicket:(id)a6
{
  v106 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a6;
  v10 = [v8 sessionData];
  autocompleteSessionData = self->_autocompleteSessionData;
  self->_autocompleteSessionData = v10;

  group = dispatch_group_create();
  v79 = [MEMORY[0x1E695DF70] array];
  v77 = [MEMORY[0x1E695DF70] array];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v68 = v8;
  obj = [v8 groups];
  v71 = [obj countByEnumeratingWithState:&v99 objects:v105 count:16];
  v65 = v9;
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
        v14 = self;
        if (*v100 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v73 = v13;
        v15 = *(*(&v99 + 1) + 8 * v13);
        v16 = [v15 localizedSectionHeader];
        v17 = MEMORY[0x1E695DF70];
        v18 = [v15 items];
        v19 = [v17 arrayWithCapacity:{objc_msgSend(v18, "count")}];

        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v72 = v15;
        v76 = [v15 items];
        v20 = [v76 countByEnumeratingWithState:&v95 objects:v104 count:16];
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
                objc_enumerationMutation(v76);
              }

              v25 = *(*(&v95 + 1) + 8 * i);
              v26 = [[MKLocalSearchCompletion alloc] initWithGeoCompletionItem:v25 serverSectionIndex:v80 serverItemIndexInSection:v22];
              if ([(MKLocalSearchCompleter *)v14 _shouldPreloadTransitInfo])
              {
                v27 = [(MKLocalSearchCompletion *)v26 mapItem];
                v28 = [v27 _hasTransitLabels];

                v14 = self;
                if (v28)
                {
                  dispatch_group_enter(group);
                  v29 = [(MKLocalSearchCompletion *)v26 mapItem];
                  v93[0] = MEMORY[0x1E69E9820];
                  v93[1] = 3221225472;
                  v93[2] = __105__MKLocalSearchCompleter__handleCompletion_shouldDisplayNoResults_shouldEnableRAPForNoResults_forTicket___block_invoke;
                  v93[3] = &unk_1E76CDB38;
                  v14 = self;
                  v94 = group;
                  [v29 preloadTransitInfoWithCompletion:v93];
                }
              }

              if ([v16 length])
              {
                [(MKLocalSearchCompletion *)v26 setLocalizedSectionHeader:v16];
              }

              v30 = [(MKLocalSearchCompleter *)v14 identifier];
              [(MKLocalSearchCompletion *)v26 setSourceID:v30];

              [v79 addObject:v26];
              [v19 addObject:v26];
              v31 = [v25 directionIntent];

              if (v31)
              {
                [v77 addObject:v26];
              }

              ++v22;
            }

            v21 = [v76 countByEnumeratingWithState:&v95 objects:v104 count:16];
          }

          while (v21);
        }

        v12 = v74;
        if (!v74)
        {
          v32 = MEMORY[0x1E695DF70];
          v33 = [v68 groups];
          v12 = [v32 arrayWithCapacity:{objc_msgSend(v33, "count")}];
        }

        v34 = [MKLocalSearchSection alloc];
        v35 = [v72 shouldInterleaveClientResults];
        v36 = [v72 enforceServerResultsOrder];
        v37 = [v72 enableMapsSuggestServerReranking];
        v38 = [v72 isSectionForClientOnlyResults];
        v39 = [v72 includedClientResultTypes];
        v40 = [v72 excludedClientResultTypes];
        v41 = [(MKLocalSearchSection *)v34 initWithResults:v19 title:v16 shouldInterleaveClientResults:v35 enforceServerResultsOrder:v36 enableMapsSuggestServerReranking:v37 isSectionForClientOnlyResults:v38 includedClientResultTypes:v39 excludedClientResultTypes:v40];
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
  v42 = v77;
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
        v48 = [v47 directionIntent];
        v49 = [v48 origin];
        v50 = [v49 resultIndex];

        v51 = [v47 directionIntent];
        v52 = [v51 origin];
        if ([v52 hasResultIndex])
        {
          v53 = [v79 count];

          if (v50 >= v53)
          {
            goto LABEL_36;
          }

          v51 = [v79 objectAtIndex:v50];
          [v47 setDirectionIntentOrigin:v51];
        }

        else
        {
        }

LABEL_36:
        v54 = [v47 directionIntent];
        v55 = [v54 destination];
        v56 = [v55 resultIndex];

        v57 = [v47 directionIntent];
        v58 = [v57 destination];
        if ([v58 hasResultIndex])
        {
          v59 = [v79 count];

          if (v56 >= v59)
          {
            continue;
          }

          v57 = [v79 objectAtIndex:v56];
          [v47 setDirectionIntentDestination:v57];
        }

        else
        {
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v89 objects:v103 count:16];
    }

    while (v44);
  }

  v60 = [(NSMutableArray *)self->_pendingTickets lastObject];

  if (v60 == v65)
  {
    v61 = [(MKLocalSearchCompleter *)self queryFragment];
    self->_dirty = [v65 matchesFragment:v61] ^ 1;
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
  v82 = v79;
  v83 = v12;
  v86 = a4;
  v87 = a5;
  v84 = v65;
  v62 = v65;
  v63 = v12;
  v64 = v79;
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