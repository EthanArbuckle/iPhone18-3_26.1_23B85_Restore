@interface HKRaceRouteLocationSeriesQuery
+ (void)configureClientInterface:(id)interface;
- (HKRaceRouteLocationSeriesQuery)initWithClusterUUID:(id)d workoutSelection:(unint64_t)selection timestampAnchor:(double)anchor limit:(unint64_t)limit dataHandler:(id)handler;
- (HKRaceRouteLocationSeriesQuery)initWithWorkoutUUID:(id)d timestampAnchor:(double)anchor limit:(unint64_t)limit dataHandler:(id)handler;
- (void)client_deliverRaceRouteLocations:(id)locations isFinal:(BOOL)final query:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
@end

@implementation HKRaceRouteLocationSeriesQuery

- (HKRaceRouteLocationSeriesQuery)initWithClusterUUID:(id)d workoutSelection:(unint64_t)selection timestampAnchor:(double)anchor limit:(unint64_t)limit dataHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v15 = +[HKSeriesType workoutRouteType];
  v22.receiver = self;
  v22.super_class = HKRaceRouteLocationSeriesQuery;
  v16 = [(HKQuery *)&v22 _initWithObjectType:v15 predicate:0];

  if (v16)
  {
    objc_storeStrong(&v16->_clusterUUID, d);
    v16->_workoutSelection = selection;
    v16->_timestampAnchor = anchor;
    v16->_limit = limit;
    v17 = _Block_copy(handlerCopy);
    dataHandler = v16->_dataHandler;
    v16->_dataHandler = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    results = v16->_results;
    v16->_results = v19;
  }

  return v16;
}

- (HKRaceRouteLocationSeriesQuery)initWithWorkoutUUID:(id)d timestampAnchor:(double)anchor limit:(unint64_t)limit dataHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v13 = +[HKSeriesType workoutRouteType];
  v20.receiver = self;
  v20.super_class = HKRaceRouteLocationSeriesQuery;
  v14 = [(HKQuery *)&v20 _initWithObjectType:v13 predicate:0];

  if (v14)
  {
    objc_storeStrong(&v14->_workoutUUID, d);
    v14->_timestampAnchor = anchor;
    v14->_limit = limit;
    v15 = _Block_copy(handlerCopy);
    dataHandler = v14->_dataHandler;
    v14->_dataHandler = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    results = v14->_results;
    v14->_results = v17;
  }

  return v14;
}

- (void)client_deliverRaceRouteLocations:(id)locations isFinal:(BOOL)final query:(id)query
{
  locationsCopy = locations;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__HKRaceRouteLocationSeriesQuery_client_deliverRaceRouteLocations_isFinal_query___block_invoke;
  v13[3] = &unk_1E7378428;
  v13[4] = self;
  v14 = locationsCopy;
  finalCopy = final;
  v15 = queryCopy;
  v11 = queryCopy;
  v12 = locationsCopy;
  dispatch_async(queue, v13);
}

void __81__HKRaceRouteLocationSeriesQuery_client_deliverRaceRouteLocations_isFinal_query___block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6;
  v15 = __Block_byref_object_dispose__6;
  v16 = _Block_copy(*(*(a1 + 32) + 192));
  if (v12[5])
  {
    [*(*(a1 + 32) + 200) addObjectsFromArray:*(a1 + 40)];
    if (*(a1 + 56))
    {
      v2 = *(*(a1 + 32) + 200);
      v3 = *(a1 + 32);
      v4 = *(v3 + 200);
      *(v3 + 200) = 0;

      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __81__HKRaceRouteLocationSeriesQuery_client_deliverRaceRouteLocations_isFinal_query___block_invoke_5;
      v8[3] = &unk_1E7378280;
      v10 = &v11;
      v8[4] = v5;
      v7 = v2;
      v9 = v7;
      [v5 queue_dispatchToClientForUUID:v6 shouldDeactivate:1 block:v8];
    }
  }

  _Block_object_dispose(&v11, 8);
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKRaceRouteLocationSeriesQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverRaceRouteLocations_isFinal_query_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKRaceRouteLocationSeriesQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setClusterUUID:{self->_clusterUUID, v5.receiver, v5.super_class}];
  [configurationCopy setWorkoutSelection:self->_workoutSelection];
  [configurationCopy setWorkoutUUID:self->_workoutUUID];
  [configurationCopy setTimestampAnchor:self->_timestampAnchor];
  [configurationCopy setLimit:self->_limit];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_dataHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__HKRaceRouteLocationSeriesQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKRaceRouteLocationSeriesQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  dataHandler = self->_dataHandler;
  self->_dataHandler = 0;
}

@end