@interface EKTravelRouteEstimationController
+ (id)_basedOnLocationLocalizedString;
- (EKTravelRouteEstimationController)initWithDestinationStructuredLocation:(id)location eventStore:(id)store;
- (EKTravelRouteEstimationControllerDelegate)delegate;
- (double)estimatedTravelTimeValueAtRowIndex:(unint64_t)index;
- (id)_imageForCellAtIndex:(int64_t)index;
- (id)_routingModeTypesAsArray;
- (id)estimatedTravelTimeRowErrorAtRowIndex:(unint64_t)index;
- (id)estimatedTravelTimeTableViewCellWithRowIndex:(unint64_t)index tableView:(id)view;
- (int64_t)_estimatedTravelTimeRoutingModeAtRowIndex:(unint64_t)index;
- (int64_t)estimatedTravelTimeRoutingModeAtRowIndex:(unint64_t)index;
- (unint64_t)numberOfOutputRows;
- (void)_beginOriginLocationEstimationCoreRoutineLookup;
- (void)_beginOriginLocationEstimationEventKitLookup;
- (void)_lookupTimedOut;
- (void)_originLocationEstimationCompletedCoreRoutineLookup;
- (void)_originLocationEstimationCompletedEventKitLookup;
- (void)beginOriginLocationEstimationLookup;
- (void)beginTravelTimeEstimationLookup;
- (void)dealloc;
- (void)setOriginStructuredLocation:(id)location;
@end

@implementation EKTravelRouteEstimationController

- (EKTravelRouteEstimationController)initWithDestinationStructuredLocation:(id)location eventStore:(id)store
{
  locationCopy = location;
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = EKTravelRouteEstimationController;
  v8 = [(EKTravelRouteEstimationController *)&v10 init];
  if (v8)
  {
    EKUILogInitIfNeeded();
    [(EKTravelRouteEstimationController *)v8 setDestinationStructuredLocation:locationCopy];
    objc_storeStrong(&v8->_eventStore, store);
  }

  return v8;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = EKTravelRouteEstimationController;
  [(EKTravelRouteEstimationController *)&v3 dealloc];
}

- (void)beginOriginLocationEstimationLookup
{
  arrivalDate = [(EKTravelRouteEstimationController *)self arrivalDate];

  if (!arrivalDate)
  {
    v7 = kEKUILogHandle;
    if (!os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v11 = 0;
    v8 = "Travel origin location lookup called with nil arrivalDate.";
    v9 = &v11;
LABEL_12:
    _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    return;
  }

  if (!self->_eventStore)
  {
    v7 = kEKUILogHandle;
    if (!os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = 0;
    v8 = "Can't compute origin location with nil eventStore.";
    v9 = &v10;
    goto LABEL_12;
  }

  delegate = [(EKTravelRouteEstimationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(EKTravelRouteEstimationController *)self delegate];
    [delegate2 routeEstimationControllerDidBeginOriginLocationLookup:self];
  }

  [(EKTravelRouteEstimationController *)self _beginOriginLocationEstimationEventKitLookup];
}

- (void)_beginOriginLocationEstimationCoreRoutineLookup
{
  v3 = dispatch_get_global_queue(-32768, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__EKTravelRouteEstimationController__beginOriginLocationEstimationCoreRoutineLookup__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(v3, block);
}

void __84__EKTravelRouteEstimationController__beginOriginLocationEstimationCoreRoutineLookup__block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E69930E8];
  v3 = [MEMORY[0x1E6992FE0] authorizationStatusForBundleIdentifier:*MEMORY[0x1E69930E8]];
  v4 = [MEMORY[0x1E6992FE0] preciseLocationAuthorizedForBundleIdentifier:v2];
  if (v3 >= 3 && (v4 & 1) != 0)
  {
    v5 = EKWeakLinkClass();
    v6 = EKWeakLinkClass();
    v7 = objc_alloc_init(v5);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __84__EKTravelRouteEstimationController__beginOriginLocationEstimationCoreRoutineLookup__block_invoke_17;
    v10[3] = &unk_1E8441CE8;
    v10[4] = *(a1 + 32);
    v11 = v7;
    v12 = v6;
    v8 = v7;
    [v8 fetchRoutineStateWithHandler:v10];
  }

  else
  {
    v9 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_INFO, "Not estimating starting point using CoreRoutine because we don't have precise location authorization", buf, 2u);
    }

    [*(a1 + 32) _originLocationEstimationCompletedCoreRoutineLookup];
  }
}

void __84__EKTravelRouteEstimationController__beginOriginLocationEstimationCoreRoutineLookup__block_invoke_17(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_ERROR, "Error fetching routine state: %@", buf, 0xCu);
    }
  }

  if (a2 == 2)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) arrivalDate];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __84__EKTravelRouteEstimationController__beginOriginLocationEstimationCoreRoutineLookup__block_invoke_18;
    v10[3] = &unk_1E8441CC0;
    v9 = *(a1 + 48);
    v10[4] = *(a1 + 32);
    v10[5] = v9;
    [v7 fetchPredictedLocationsOfInterestOnDate:v8 withHandler:v10];
  }

  else
  {
    [*(a1 + 32) _originLocationEstimationCompletedCoreRoutineLookup];
  }
}

void __84__EKTravelRouteEstimationController__beginOriginLocationEstimationCoreRoutineLookup__block_invoke_18(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = a2;
  v5 = [v29 count];
  if (!a3 && v5)
  {
    v6 = [v29 firstObject];
    [v6 confidence];
    if (v7 >= 0.5)
    {
      v8 = [v6 locationOfInterest];
      v9 = [*(a1 + 32) destinationStructuredLocation];
      v10 = [v9 geoLocation];
      [v10 coordinate];
      v12 = v11;
      v14 = v13;

      v15 = objc_alloc(*(a1 + 40));
      v16 = [v8 location];
      [v16 latitude];
      v18 = v17;
      v19 = [v8 location];
      [v19 longitude];
      v21 = [v15 initWithLatitude:v18 longitude:v20];

      v22 = [objc_alloc(*(a1 + 40)) initWithLatitude:v12 longitude:v14];
      [v21 distanceFromLocation:v22];
      if (v23 > 10.0)
      {
        v24 = MEMORY[0x1E6966B08];
        v25 = [v8 mapItem];
        v26 = [v25 name];
        v27 = [v24 locationWithTitle:v26];
        [*(a1 + 32) setEvaluatedOriginLocation:v27];

        v28 = [*(a1 + 32) evaluatedOriginLocation];
        [v28 setGeoLocation:v21];
      }
    }
  }

  [*(a1 + 32) _originLocationEstimationCompletedCoreRoutineLookup];
}

- (void)_beginOriginLocationEstimationEventKitLookup
{
  v3 = dispatch_get_global_queue(-32768, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__EKTravelRouteEstimationController__beginOriginLocationEstimationEventKitLookup__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(v3, block);
}

void __81__EKTravelRouteEstimationController__beginOriginLocationEstimationEventKitLookup__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [*(a1 + 32) arrivalDate];
  v4 = [v2 dateByAddingUnit:32 value:-2 toDate:v3 options:0];

  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [v5 dateByAddingUnit:128 value:-1 toDate:v4 options:0];

  v7 = *(a1 + 32);
  v8 = v7[1];
  v9 = [v7 arrivalDate];
  v10 = [v8 predicateForEventsWithStartDate:v6 endDate:v9 calendars:0 loadDefaultProperties:1];

  v11 = *(a1 + 32);
  v12 = *(v11 + 8);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__EKTravelRouteEstimationController__beginOriginLocationEstimationEventKitLookup__block_invoke_2;
  v14[3] = &unk_1E843F120;
  v14[4] = v11;
  v13 = [v12 fetchEventsMatchingPredicate:v10 resultHandler:v14];
}

void __81__EKTravelRouteEstimationController__beginOriginLocationEstimationEventKitLookup__block_invoke_2(uint64_t a1, void *a2)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__EKTravelRouteEstimationController__beginOriginLocationEstimationEventKitLookup__block_invoke_3;
  v10[3] = &unk_1E8441C90;
  v10[4] = *(a1 + 32);
  v3 = a2;
  v4 = [v3 indexesOfObjectsPassingTest:v10];
  v5 = [v3 objectsAtIndexes:v4];

  if ([v5 count])
  {
    if ([v5 count] < 2)
    {
      v7 = [v5 firstObject];
    }

    else
    {
      v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_48];
      v7 = [v6 firstObject];
    }

    v8 = [v7 structuredLocation];
    v9 = [v8 duplicate];
    [*(a1 + 32) setEvaluatedOriginLocation:v9];
  }

  else
  {
    [*(a1 + 32) setEvaluatedOriginLocation:0];
  }

  [*(a1 + 32) _originLocationEstimationCompletedEventKitLookup];
}

BOOL __81__EKTravelRouteEstimationController__beginOriginLocationEstimationEventKitLookup__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 structuredLocation];
  if ([v4 isStructured])
  {
    v5 = [v3 endDateUnadjustedForLegacyClients];
    v6 = [*(a1 + 32) arrivalDate];
    v7 = [v5 compare:v6] != 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __81__EKTravelRouteEstimationController__beginOriginLocationEstimationEventKitLookup__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 endDateUnadjustedForLegacyClients];
  v6 = [v4 endDateUnadjustedForLegacyClients];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_originLocationEstimationCompletedEventKitLookup
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__EKTravelRouteEstimationController__originLocationEstimationCompletedEventKitLookup__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __85__EKTravelRouteEstimationController__originLocationEstimationCompletedEventKitLookup__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) evaluatedOriginLocation];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 routeEstimationControllerDidFinishOriginLocationLookup:*(a1 + 32)];
    }
  }

  else
  {

    [v3 _beginOriginLocationEstimationCoreRoutineLookup];
  }
}

- (void)_originLocationEstimationCompletedCoreRoutineLookup
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__EKTravelRouteEstimationController__originLocationEstimationCompletedCoreRoutineLookup__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __88__EKTravelRouteEstimationController__originLocationEstimationCompletedCoreRoutineLookup__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 routeEstimationControllerDidFinishOriginLocationLookup:*(a1 + 32)];
  }
}

- (id)_routingModeTypesAsArray
{
  if ([MEMORY[0x1E69A2528] transitTTLSupportedInCurrentCountry])
  {
    return &unk_1F4F322C0;
  }

  else
  {
    return &unk_1F4F322D8;
  }
}

- (void)beginTravelTimeEstimationLookup
{
  self->_isEstimating = 1;
  rows = self->_rows;
  self->_rows = 0;

  delegate = [(EKTravelRouteEstimationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(EKTravelRouteEstimationController *)self delegate];
    [delegate2 routeEstimationControllerDidBeginTravelTimeLookup:self];
  }

  [(EKTravelRouteEstimationController *)self performSelector:sel__lookupTimedOut withObject:0 afterDelay:60.0];
  v7 = dispatch_get_global_queue(-32768, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__EKTravelRouteEstimationController_beginTravelTimeEstimationLookup__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(v7, block);
}

void __68__EKTravelRouteEstimationController_beginTravelTimeEstimationLookup__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _routingModeTypesAsArray];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x1E6992FD8] routeTypeStringForCalLocationRoutingMode:{objc_msgSend(*(*(&v17 + 1) + 8 * v8), "integerValue")}];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v10 = [*(a1 + 32) originStructuredLocation];
  v11 = [v10 calLocation];

  v12 = [*(a1 + 32) destinationStructuredLocation];
  v13 = [v12 calLocation];

  v14 = [MEMORY[0x1E6966B30] defaultManager];
  v15 = [*(a1 + 32) arrivalDate];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__EKTravelRouteEstimationController_beginTravelTimeEstimationLookup__block_invoke_2;
  v16[3] = &unk_1E843EFE0;
  v16[4] = *(a1 + 32);
  [v14 travelTimeFrom:v11 to:v13 arrivalDate:v15 withRouteTypes:v3 withCompletionBlock:v16];
}

void __68__EKTravelRouteEstimationController_beginTravelTimeEstimationLookup__block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__EKTravelRouteEstimationController_beginTravelTimeEstimationLookup__block_invoke_3;
  block[3] = &unk_1E843EC60;
  v18 = a1;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [MEMORY[0x1E6992FD8] routingModeEnumForCalRouteType:{v9, v18}];
        v11 = [v4 objectForKey:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
          [v20 setObject:v11 forKeyedSubscript:v12];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          [v11 duration];
          v12 = [MEMORY[0x1E696AD98] numberWithDouble:ceil(v13 / 300.0) * 300.0];
          v14 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
          [v19 setObject:v12 forKeyedSubscript:v14];
        }

LABEL_11:
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68__EKTravelRouteEstimationController_beginTravelTimeEstimationLookup__block_invoke_4;
  v21[3] = &unk_1E843EC38;
  v21[4] = *(v18 + 32);
  v22 = v19;
  v23 = v20;
  v15 = v20;
  v16 = v19;
  v17 = MEMORY[0x1E69E96A0];
  dispatch_async(MEMORY[0x1E69E96A0], v21);
}

void __68__EKTravelRouteEstimationController_beginTravelTimeEstimationLookup__block_invoke_4(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:*(a1 + 40)];
  [*(a1 + 32) setTravelTimeEstimatedValues:v2];

  v3 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:*(a1 + 48)];
  [*(a1 + 32) setTravelTimeLookupErrors:v3];

  v24 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [*(a1 + 32) _routingModeTypesAsArray];
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [*(a1 + 32) travelTimeLookupErrors];
        v11 = [v10 objectForKeyedSubscript:v9];

        v12 = [*(a1 + 32) travelTimeEstimatedValues];
        v13 = [v12 objectForKeyedSubscript:v9];

        if (v13)
        {
          [v13 doubleValue];
          v15 = v14 == 0.0;
        }

        else
        {
          v15 = 1;
        }

        [v13 doubleValue];
        v17 = v16 > 18000.0 && [v9 integerValue] == 2;
        [v13 doubleValue];
        v19 = v18 > 18000.0 && [v9 integerValue] == 4;
        if (v11 == 0 && !v15 && !v17 && !v19)
        {
          [v24 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v20 = [v24 copy];
  [*(a1 + 32) setRowData:v20];

  *(*(a1 + 32) + 32) = 0;
  v21 = [*(a1 + 32) delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = [*(a1 + 32) delegate];
    [v23 routeEstimationControllerDidFinishTravelTimeLookup:*(a1 + 32)];
  }
}

- (void)_lookupTimedOut
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _routingModeTypesAsArray = [(EKTravelRouteEstimationController *)self _routingModeTypesAsArray];
  v5 = [_routingModeTypesAsArray countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(_routingModeTypesAsArray);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:1001];
        [v3 setObject:v10 forKeyedSubscript:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [_routingModeTypesAsArray countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [(EKTravelRouteEstimationController *)self setTravelTimeEstimatedValues:MEMORY[0x1E695E0F8]];
  [(EKTravelRouteEstimationController *)self setTravelTimeLookupErrors:v3];
  [(EKTravelRouteEstimationController *)self setRowData:MEMORY[0x1E695E0F0]];
  self->_isEstimating = 0;
  delegate = [(EKTravelRouteEstimationController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(EKTravelRouteEstimationController *)self delegate];
    [delegate2 routeEstimationControllerDidFinishTravelTimeLookup:self];
  }
}

- (void)setOriginStructuredLocation:(id)location
{
  objc_storeStrong(&self->_originStructuredLocation, location);
  [(EKTravelRouteEstimationController *)self setTravelTimeEstimatedValues:0];
  [(EKTravelRouteEstimationController *)self setTravelTimeLookupErrors:0];
  v4 = MEMORY[0x1E695E0F0];

  [(EKTravelRouteEstimationController *)self setRowData:v4];
}

- (double)estimatedTravelTimeValueAtRowIndex:(unint64_t)index
{
  travelTimeEstimatedValues = self->_travelTimeEstimatedValues;
  v4 = [(NSArray *)self->_rowData objectAtIndexedSubscript:index];
  v5 = [(NSDictionary *)travelTimeEstimatedValues objectForKeyedSubscript:v4];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (id)estimatedTravelTimeRowErrorAtRowIndex:(unint64_t)index
{
  if (self->_isEstimating)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKTravelRouteEstimationControllerIsEstimating" code:1 userInfo:{0, v3}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)numberOfOutputRows
{
  if (self->_isEstimating)
  {
    return 1;
  }

  _routingModeTypesAsArray = [(EKTravelRouteEstimationController *)self _routingModeTypesAsArray];
  if ([_routingModeTypesAsArray count])
  {
    v5 = 0;
    v2 = 0;
    while (1)
    {
      v6 = [(NSArray *)self->_rowData count];

      if (v5 >= v6)
      {
        break;
      }

      if (![(EKTravelRouteEstimationController *)self estimatedTravelTimeRowHasErrorAtRowIndex:v5]&& [(EKTravelRouteEstimationController *)self estimatedTravelTimeRoutingModeAtRowIndex:v5])
      {
        ++v2;
      }

      ++v5;
      _routingModeTypesAsArray = [(EKTravelRouteEstimationController *)self _routingModeTypesAsArray];
      if (v5 >= [_routingModeTypesAsArray count])
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v2 = 0;
LABEL_12:
  }

  return v2;
}

- (int64_t)estimatedTravelTimeRoutingModeAtRowIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_rowData objectAtIndexedSubscript:index];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)_imageForCellAtIndex:(int64_t)index
{
  v3 = [(NSArray *)self->_rowData objectAtIndexedSubscript:index];
  integerValue = [v3 integerValue];

  v5 = 0;
  if (integerValue > 1)
  {
    switch(integerValue)
    {
      case 2:
        v6 = WalkmanImage();
        break;
      case 3:
        v6 = TransitImage();
        break;
      case 4:
        v6 = BicycleImage();
        break;
      default:
        goto LABEL_11;
    }
  }

  else
  {
    if ((integerValue + 1) >= 3)
    {
      goto LABEL_11;
    }

    v6 = CarImage();
  }

  v5 = v6;
LABEL_11:
  v7 = [v5 imageWithRenderingMode:2];

  return v7;
}

- (int64_t)_estimatedTravelTimeRoutingModeAtRowIndex:(unint64_t)index
{
  _routingModeTypesAsArray = [(EKTravelRouteEstimationController *)self _routingModeTypesAsArray];
  if ([_routingModeTypesAsArray count] <= index)
  {
    integerValue = -1;
  }

  else
  {
    v5 = [_routingModeTypesAsArray objectAtIndexedSubscript:index];
    integerValue = [v5 integerValue];
  }

  return integerValue;
}

- (id)estimatedTravelTimeTableViewCellWithRowIndex:(unint64_t)index tableView:(id)view
{
  viewCopy = view;
  rows = self->_rows;
  if (!rows)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
    v9 = self->_rows;
    self->_rows = v8;

    rows = self->_rows;
  }

  if ([(NSMutableArray *)rows count]<= index || ([(NSMutableArray *)self->_rows objectAtIndex:index], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [(EKCalendarChooserCell *)[EKEventEstimatedTravelTimeResultCell alloc] initWithStyle:1 reuseIdentifier:0];
    [(EKEventEstimatedTravelTimeResultCell *)v10 frame];
    v12 = v11;
    v14 = v13;
    [viewCopy frame];
    [(EKEventEstimatedTravelTimeResultCell *)v10 setFrame:v12, v14];
    _basedOnLocationLocalizedString = [objc_opt_class() _basedOnLocationLocalizedString];
    textLabel = [(EKEventEstimatedTravelTimeResultCell *)v10 textLabel];
    [textLabel setText:_basedOnLocationLocalizedString];

    v17 = CUIKDisplayStringForTravelTimeUsingShortFormat();
    detailTextLabel = [(EKEventEstimatedTravelTimeResultCell *)v10 detailTextLabel];
    [detailTextLabel setText:v17];

    [(EKCalendarChooserCell *)v10 layoutSubviews];
    v19 = BicycleImage();
    [(EKCalendarChooserCell *)v10 setColorDotImage:v19];

    [(EKCalendarChooserCell *)v10 setShowsColorDot:1];
    [(EKCalendarChooserCell *)v10 textLeadingIndent];
    v21 = v20;
    [viewCopy layoutMargins];
    v23 = v22;
    [viewCopy layoutMargins];
    v25 = v21 + v23 + v24;
    detailTextLabel2 = [(EKEventEstimatedTravelTimeResultCell *)v10 detailTextLabel];
    [detailTextLabel2 frame];
    v28 = v27;
    textLabel2 = [(EKEventEstimatedTravelTimeResultCell *)v10 textLabel];
    [textLabel2 frame];
    v31 = v25 + v28 + v30;
    [(EKEventEstimatedTravelTimeResultCell *)v10 frame];
    v33 = v32 * 0.95;

    if (v31 > v33)
    {
      v34 = [(EKCalendarChooserCell *)[EKEventEstimatedTravelTimeResultCell alloc] initWithStyle:3 reuseIdentifier:0];

      textLabel3 = [(EKEventEstimatedTravelTimeResultCell *)v34 textLabel];
      [textLabel3 setNumberOfLines:0];

      v10 = v34;
    }

    textLabel4 = [(EKEventEstimatedTravelTimeResultCell *)v10 textLabel];
    [textLabel4 setText:0];

    detailTextLabel3 = [(EKEventEstimatedTravelTimeResultCell *)v10 detailTextLabel];
    [detailTextLabel3 setText:0];

    [(EKCalendarChooserCell *)v10 setColorDotImage:0];
    [(EKCalendarChooserCell *)v10 setShowsColorDot:0];
    [(NSMutableArray *)self->_rows insertObject:v10 atIndex:index];
  }

  if (self->_isEstimating)
  {
    v38 = EventKitUIBundle();
    v39 = [v38 localizedStringForKey:@"Estimating travel time…" value:&stru_1F4EF6790 table:0];
    textLabel5 = [(EKEventEstimatedTravelTimeResultCell *)v10 textLabel];
    [textLabel5 setText:v39];

    [MEMORY[0x1E69DC888] lightGrayColor];
  }

  else
  {
    _basedOnLocationLocalizedString2 = [objc_opt_class() _basedOnLocationLocalizedString];
    [(EKCalendarChooserCell *)v10 setTextLabelText:_basedOnLocationLocalizedString2];

    [(EKTravelRouteEstimationController *)self estimatedTravelTimeValueAtRowIndex:index];
    v42 = CUIKDisplayStringForTravelTimeUsingShortFormat();
    detailTextLabel4 = [(EKEventEstimatedTravelTimeResultCell *)v10 detailTextLabel];
    [detailTextLabel4 setText:v42];

    v44 = [(EKTravelRouteEstimationController *)self _imageForCellAtIndex:index];
    [(EKCalendarChooserCell *)v10 setColorDotImage:v44];

    [(EKCalendarChooserCell *)v10 setShowsColorDot:1];
    [MEMORY[0x1E69DC888] blackColor];
  }
  v45 = ;
  textLabel6 = [(EKEventEstimatedTravelTimeResultCell *)v10 textLabel];
  [textLabel6 setTextColor:v45];

  return v10;
}

+ (id)_basedOnLocationLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Based on location" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (EKTravelRouteEstimationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end