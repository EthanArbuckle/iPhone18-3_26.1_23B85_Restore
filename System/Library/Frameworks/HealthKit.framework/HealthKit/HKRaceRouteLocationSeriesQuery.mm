@interface HKRaceRouteLocationSeriesQuery
+ (void)configureClientInterface:(id)a3;
- (HKRaceRouteLocationSeriesQuery)initWithClusterUUID:(id)a3 workoutSelection:(unint64_t)a4 timestampAnchor:(double)a5 limit:(unint64_t)a6 dataHandler:(id)a7;
- (HKRaceRouteLocationSeriesQuery)initWithWorkoutUUID:(id)a3 timestampAnchor:(double)a4 limit:(unint64_t)a5 dataHandler:(id)a6;
- (void)client_deliverRaceRouteLocations:(id)a3 isFinal:(BOOL)a4 query:(id)a5;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
@end

@implementation HKRaceRouteLocationSeriesQuery

- (HKRaceRouteLocationSeriesQuery)initWithClusterUUID:(id)a3 workoutSelection:(unint64_t)a4 timestampAnchor:(double)a5 limit:(unint64_t)a6 dataHandler:(id)a7
{
  v13 = a3;
  v14 = a7;
  v15 = +[HKSeriesType workoutRouteType];
  v22.receiver = self;
  v22.super_class = HKRaceRouteLocationSeriesQuery;
  v16 = [(HKQuery *)&v22 _initWithObjectType:v15 predicate:0];

  if (v16)
  {
    objc_storeStrong(&v16->_clusterUUID, a3);
    v16->_workoutSelection = a4;
    v16->_timestampAnchor = a5;
    v16->_limit = a6;
    v17 = _Block_copy(v14);
    dataHandler = v16->_dataHandler;
    v16->_dataHandler = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    results = v16->_results;
    v16->_results = v19;
  }

  return v16;
}

- (HKRaceRouteLocationSeriesQuery)initWithWorkoutUUID:(id)a3 timestampAnchor:(double)a4 limit:(unint64_t)a5 dataHandler:(id)a6
{
  v11 = a3;
  v12 = a6;
  v13 = +[HKSeriesType workoutRouteType];
  v20.receiver = self;
  v20.super_class = HKRaceRouteLocationSeriesQuery;
  v14 = [(HKQuery *)&v20 _initWithObjectType:v13 predicate:0];

  if (v14)
  {
    objc_storeStrong(&v14->_workoutUUID, a3);
    v14->_timestampAnchor = a4;
    v14->_limit = a5;
    v15 = _Block_copy(v12);
    dataHandler = v14->_dataHandler;
    v14->_dataHandler = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    results = v14->_results;
    v14->_results = v17;
  }

  return v14;
}

- (void)client_deliverRaceRouteLocations:(id)a3 isFinal:(BOOL)a4 query:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HKQuery *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__HKRaceRouteLocationSeriesQuery_client_deliverRaceRouteLocations_isFinal_query___block_invoke;
  v13[3] = &unk_1E7378428;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
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

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKRaceRouteLocationSeriesQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverRaceRouteLocations_isFinal_query_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKRaceRouteLocationSeriesQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setClusterUUID:{self->_clusterUUID, v5.receiver, v5.super_class}];
  [v4 setWorkoutSelection:self->_workoutSelection];
  [v4 setWorkoutUUID:self->_workoutUUID];
  [v4 setTimestampAnchor:self->_timestampAnchor];
  [v4 setLimit:self->_limit];
}

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  v5 = _Block_copy(self->_dataHandler);
  if (v5)
  {
    v6 = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__HKRaceRouteLocationSeriesQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = v4;
    dispatch_async(v6, block);
  }
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKRaceRouteLocationSeriesQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  dataHandler = self->_dataHandler;
  self->_dataHandler = 0;
}

@end