@interface _HKWorkoutRouteStore
- (BOOL)containsSameValuesAs:(id)as;
- (_HKWorkoutRouteStore)init;
- (_HKWorkoutRouteStore)initWithHealthStore:(id)store;
- (id)_queue_locations;
- (id)samples;
- (void)_fetchAllLocationsFromSeriesSample:(id)sample;
- (void)_queue_addWorkoutRoutes:(id)routes;
- (void)_queue_checkAndReturnIfLocationsLoaded;
- (void)_setLocations:(id)locations forUUID:(id)d;
- (void)addWorkoutRoutes:(id)routes;
- (void)fetchAllLocationsWithCompletion:(id)completion;
- (void)setWorkoutRoutes:(id)routes;
@end

@implementation _HKWorkoutRouteStore

- (_HKWorkoutRouteStore)init
{
  v9.receiver = self;
  v9.super_class = _HKWorkoutRouteStore;
  v2 = [(_HKWorkoutRouteStore *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = HKCreateSerialDispatchQueue(v2, 0);
    locationQueue = v3->_locationQueue;
    v3->_locationQueue = v4;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    series = v3->_series;
    v3->_series = dictionary;
  }

  return v3;
}

- (BOOL)containsSameValuesAs:(id)as
{
  asCopy = as;
  samples = [(_HKWorkoutRouteStore *)self samples];
  v6 = [samples count];
  if (v6 == [asCopy count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:samples];
    v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:asCopy];
    v9 = [v7 isEqualToSet:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_HKWorkoutRouteStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v6 = [(_HKWorkoutRouteStore *)self init];
  if (v6)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    locations = v6->_locations;
    v6->_locations = dictionary;

    objc_storeStrong(&v6->_healthStore, store);
  }

  return v6;
}

- (void)_setLocations:(id)locations forUUID:(id)d
{
  locationsCopy = locations;
  dCopy = d;
  locationQueue = self->_locationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___HKWorkoutRouteStore__setLocations_forUUID___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = locationsCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = locationsCopy;
  dispatch_sync(locationQueue, block);
}

- (void)_queue_checkAndReturnIfLocationsLoaded
{
  v2 = self->_loadingCount - 1;
  self->_loadingCount = v2;
  if (!v2 && self->_loadingCompletionBlock)
  {
    _queue_locations = [(_HKWorkoutRouteStore *)self _queue_locations];
    if ([_queue_locations count])
    {
      (*(self->_loadingCompletionBlock + 2))();
    }
  }
}

- (void)setWorkoutRoutes:(id)routes
{
  routesCopy = routes;
  locationQueue = self->_locationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41___HKWorkoutRouteStore_setWorkoutRoutes___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = routesCopy;
  v6 = routesCopy;
  dispatch_async(locationQueue, v7);
}

- (void)addWorkoutRoutes:(id)routes
{
  routesCopy = routes;
  locationQueue = self->_locationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41___HKWorkoutRouteStore_addWorkoutRoutes___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = routesCopy;
  v6 = routesCopy;
  dispatch_async(locationQueue, v7);
}

- (void)_queue_addWorkoutRoutes:(id)routes
{
  v28 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [routesCopy countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v22;
    *&v6 = 138412290;
    v20 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(routesCopy);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        series = self->_series;
        uUID = [v10 UUID];
        v13 = [(NSMutableDictionary *)series objectForKeyedSubscript:uUID];

        if (!v13)
        {
          _HKInitializeLogging();
          v14 = HKLogWorkouts;
          if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v14;
            uUID2 = [v10 UUID];
            *buf = v20;
            v26 = uUID2;
            _os_log_impl(&dword_19197B000, v15, OS_LOG_TYPE_DEFAULT, "[routes] Add routes %@ to workout route store.", buf, 0xCu);
          }

          v17 = self->_series;
          uUID3 = [v10 UUID];
          [(NSMutableDictionary *)v17 setObject:v10 forKey:uUID3];
        }
      }

      v7 = [routesCopy countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllLocationsWithCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  samples = [(_HKWorkoutRouteStore *)self samples];
  self->_loadingCount = [samples count];
  v6 = _Block_copy(completionCopy);
  loadingCompletionBlock = self->_loadingCompletionBlock;
  self->_loadingCompletionBlock = v6;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = samples;
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

        [(_HKWorkoutRouteStore *)self _fetchAllLocationsFromSeriesSample:*(*(&v14 + 1) + 8 * v12++), v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_fetchAllLocationsFromSeriesSample:(id)sample
{
  sampleCopy = sample;
  array = [MEMORY[0x1E695DF70] array];
  v6 = [HKWorkoutRouteQuery alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59___HKWorkoutRouteStore__fetchAllLocationsFromSeriesSample___block_invoke;
  v10[3] = &unk_1E73854A8;
  v11 = sampleCopy;
  v12 = array;
  selfCopy = self;
  v7 = array;
  v8 = sampleCopy;
  v9 = [(HKWorkoutRouteQuery *)v6 initWithRoute:v8 dataHandler:v10];
  [(HKHealthStore *)self->_healthStore executeQuery:v9];
}

- (id)samples
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__57;
  v10 = __Block_byref_object_dispose__57;
  v11 = 0;
  locationQueue = self->_locationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31___HKWorkoutRouteStore_samples__block_invoke;
  v5[3] = &unk_1E7378528;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(locationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_queue_locations
{
  v21 = *MEMORY[0x1E69E9840];
  allValues = [(NSMutableDictionary *)self->_series allValues];
  v4 = [allValues sortedArrayUsingComparator:&__block_literal_global_142];

  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        locations = self->_locations;
        uUID = [*(*(&v16 + 1) + 8 * i) UUID];
        v13 = [(NSMutableDictionary *)locations objectForKeyedSubscript:uUID];

        [array addObjectsFromArray:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return array;
}

@end