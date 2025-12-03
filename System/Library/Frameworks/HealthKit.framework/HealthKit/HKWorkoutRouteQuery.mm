@interface HKWorkoutRouteQuery
+ (void)configureClientInterface:(id)interface;
- (HKWorkoutRouteQuery)initWithActiveWorkoutUUID:(id)d dataHandler:(id)handler;
- (HKWorkoutRouteQuery)initWithRoute:(HKWorkoutRoute *)workoutRoute dataHandler:(void *)dataHandler;
- (HKWorkoutRouteQuery)initWithRoute:(HKWorkoutRoute *)workoutRoute dateInterval:(NSDateInterval *)dateInterval dataHandler:(void *)dataHandler;
- (HKWorkoutRouteQuery)initWithRoute:(id)route workoutUUID:(id)d dateInterval:(id)interval dataHandler:(id)handler;
- (void)client_deliverWorkoutRouteLocations:(id)locations isFinal:(BOOL)final query:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
@end

@implementation HKWorkoutRouteQuery

- (HKWorkoutRouteQuery)initWithRoute:(HKWorkoutRoute *)workoutRoute dataHandler:(void *)dataHandler
{
  v6 = workoutRoute;
  v7 = dataHandler;
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "workoutRoute"}];
  }

  v8 = [(HKWorkoutRouteQuery *)self initWithRoute:v6 workoutUUID:0 dateInterval:0 dataHandler:v7];

  return v8;
}

- (HKWorkoutRouteQuery)initWithRoute:(HKWorkoutRoute *)workoutRoute dateInterval:(NSDateInterval *)dateInterval dataHandler:(void *)dataHandler
{
  v8 = workoutRoute;
  v9 = dateInterval;
  v10 = dataHandler;
  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "workoutRoute"}];
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "dateInterval"}];
    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = [(HKWorkoutRouteQuery *)self initWithRoute:v8 workoutUUID:0 dateInterval:v9 dataHandler:v10];

  return v11;
}

- (HKWorkoutRouteQuery)initWithActiveWorkoutUUID:(id)d dataHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (!dCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "workoutUUID"}];
  }

  v8 = [(HKWorkoutRouteQuery *)self initWithRoute:0 workoutUUID:dCopy dateInterval:0 dataHandler:handlerCopy];

  return v8;
}

- (HKWorkoutRouteQuery)initWithRoute:(id)route workoutUUID:(id)d dateInterval:(id)interval dataHandler:(id)handler
{
  routeCopy = route;
  dCopy = d;
  intervalCopy = interval;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "dataHandler"}];
  }

  v15 = +[HKSeriesType workoutRouteType];
  v20.receiver = self;
  v20.super_class = HKWorkoutRouteQuery;
  v16 = [(HKQuery *)&v20 _initWithObjectType:v15 predicate:0];

  if (v16)
  {
    v17 = _Block_copy(handlerCopy);
    dataHandler = v16->_dataHandler;
    v16->_dataHandler = v17;

    objc_storeStrong(&v16->_series, route);
    objc_storeStrong(&v16->_workoutUUID, d);
    objc_storeStrong(&v16->_dateInterval, interval);
  }

  return v16;
}

- (void)client_deliverWorkoutRouteLocations:(id)locations isFinal:(BOOL)final query:(id)query
{
  locationsCopy = locations;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__HKWorkoutRouteQuery_client_deliverWorkoutRouteLocations_isFinal_query___block_invoke;
  v13[3] = &unk_1E7378428;
  v13[4] = self;
  v14 = queryCopy;
  finalCopy = final;
  v15 = locationsCopy;
  v11 = locationsCopy;
  v12 = queryCopy;
  dispatch_async(queue, v13);
}

void __73__HKWorkoutRouteQuery_client_deliverWorkoutRouteLocations_isFinal_query___block_invoke(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__16;
  v13 = __Block_byref_object_dispose__16;
  v14 = _Block_copy(*(*(a1 + 32) + 152));
  if (v10[5])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 56);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __73__HKWorkoutRouteQuery_client_deliverWorkoutRouteLocations_isFinal_query___block_invoke_12;
    v5[3] = &unk_1E737C300;
    v7 = &v9;
    v5[4] = v2;
    v6 = *(a1 + 48);
    v8 = *(a1 + 56);
    [v2 queue_dispatchToClientForUUID:v3 shouldDeactivate:v4 block:v5];
  }

  _Block_object_dispose(&v9, 8);
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKWorkoutRouteQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverWorkoutRouteLocations_isFinal_query_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKWorkoutRouteQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setWorkoutRoute:{self->_series, v5.receiver, v5.super_class}];
  [configurationCopy setWorkoutUUID:self->_workoutUUID];
  [configurationCopy setDateInterval:self->_dateInterval];
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
    block[2] = __42__HKWorkoutRouteQuery_queue_deliverError___block_invoke;
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
  v5.super_class = HKWorkoutRouteQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  dataHandler = self->_dataHandler;
  self->_dataHandler = 0;
}

@end