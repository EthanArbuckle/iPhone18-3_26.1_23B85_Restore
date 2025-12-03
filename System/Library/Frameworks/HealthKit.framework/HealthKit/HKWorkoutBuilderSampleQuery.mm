@interface HKWorkoutBuilderSampleQuery
+ (void)configureClientInterface:(id)interface;
- (HKWorkoutBuilder)workoutBuilder;
- (HKWorkoutBuilderSampleQuery)initWithQuantityType:(id)type workoutBuilder:(id)builder quantitiesAddedHandler:(id)handler;
- (HKWorkoutBuilderSampleQuery)initWithSampleType:(id)type workoutBuilder:(id)builder samplesAddedHandler:(id)handler;
- (void)client_deliverQuantities:(id)quantities hasFinishedHistoricalFetch:(BOOL)fetch queryUUID:(id)d;
- (void)client_deliverSamples:(id)samples hasFinishedHistoricalFetch:(BOOL)fetch queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKWorkoutBuilderSampleQuery

- (HKWorkoutBuilderSampleQuery)initWithSampleType:(id)type workoutBuilder:(id)builder samplesAddedHandler:(id)handler
{
  builderCopy = builder;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = HKWorkoutBuilderSampleQuery;
  v10 = [(HKQuery *)&v14 _initWithObjectType:type predicate:0];
  if (v10)
  {
    v11 = [handlerCopy copy];
    samplesAddedHandler = v10->_samplesAddedHandler;
    v10->_samplesAddedHandler = v11;

    v10->_needsHistoricalFetch = 1;
    objc_storeWeak(&v10->_workoutBuilder, builderCopy);
  }

  return v10;
}

- (HKWorkoutBuilderSampleQuery)initWithQuantityType:(id)type workoutBuilder:(id)builder quantitiesAddedHandler:(id)handler
{
  builderCopy = builder;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = HKWorkoutBuilderSampleQuery;
  v10 = [(HKQuery *)&v14 _initWithObjectType:type predicate:0];
  if (v10)
  {
    v11 = [handlerCopy copy];
    quantitiesAddedHandler = v10->_quantitiesAddedHandler;
    v10->_quantitiesAddedHandler = v11;

    v10->_needsHistoricalFetch = 1;
    objc_storeWeak(&v10->_workoutBuilder, builderCopy);
  }

  return v10;
}

- (void)client_deliverSamples:(id)samples hasFinishedHistoricalFetch:(BOOL)fetch queryUUID:(id)d
{
  samplesCopy = samples;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__HKWorkoutBuilderSampleQuery_client_deliverSamples_hasFinishedHistoricalFetch_queryUUID___block_invoke;
  v13[3] = &unk_1E7378428;
  fetchCopy = fetch;
  v13[4] = self;
  v14 = dCopy;
  v15 = samplesCopy;
  v11 = samplesCopy;
  v12 = dCopy;
  dispatch_sync(queue, v13);
}

void __90__HKWorkoutBuilderSampleQuery_client_deliverSamples_hasFinishedHistoricalFetch_queryUUID___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    *(*(a1 + 32) + 168) = 0;
  }

  v2 = _Block_copy(*(*(a1 + 32) + 152));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __90__HKWorkoutBuilderSampleQuery_client_deliverSamples_hasFinishedHistoricalFetch_queryUUID___block_invoke_2;
    v8[3] = &unk_1E7376618;
    v6 = v2;
    v7 = *(a1 + 32);
    v10 = v6;
    v8[4] = v7;
    v9 = *(a1 + 48);
    [v4 queue_dispatchToClientForUUID:v5 shouldDeactivate:0 block:v8];
  }
}

- (void)client_deliverQuantities:(id)quantities hasFinishedHistoricalFetch:(BOOL)fetch queryUUID:(id)d
{
  quantitiesCopy = quantities;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__HKWorkoutBuilderSampleQuery_client_deliverQuantities_hasFinishedHistoricalFetch_queryUUID___block_invoke;
  v13[3] = &unk_1E7378428;
  fetchCopy = fetch;
  v13[4] = self;
  v14 = dCopy;
  v15 = quantitiesCopy;
  v11 = quantitiesCopy;
  v12 = dCopy;
  dispatch_sync(queue, v13);
}

void __93__HKWorkoutBuilderSampleQuery_client_deliverQuantities_hasFinishedHistoricalFetch_queryUUID___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    *(*(a1 + 32) + 168) = 0;
  }

  v2 = _Block_copy(*(*(a1 + 32) + 160));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __93__HKWorkoutBuilderSampleQuery_client_deliverQuantities_hasFinishedHistoricalFetch_queryUUID___block_invoke_2;
    v8[3] = &unk_1E7376618;
    v6 = v2;
    v7 = *(a1 + 32);
    v10 = v6;
    v8[4] = v7;
    v9 = *(a1 + 48);
    [v4 queue_dispatchToClientForUUID:v5 shouldDeactivate:0 block:v8];
  }
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___HKWorkoutBuilderSampleQuery;
  objc_msgSendSuper2(&v7, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverSamples_hasFinishedHistoricalFetch_queryUUID_ argumentIndex:0 ofReply:0];
  v6 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverQuantities_hasFinishedHistoricalFetch_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = HKWorkoutBuilderSampleQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v7 queue_populateConfiguration:configurationCopy];
  [configurationCopy setNeedsHistoricalData:{self->_needsHistoricalFetch, v7.receiver, v7.super_class}];
  WeakRetained = objc_loadWeakRetained(&self->_workoutBuilder);
  identifier = [WeakRetained identifier];
  [configurationCopy setWorkoutBuilderIdentifier:identifier];

  [configurationCopy setDeliverQuantities:self->_quantitiesAddedHandler != 0];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKWorkoutBuilderSampleQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  objc_storeWeak(&self->_workoutBuilder, 0);
  samplesAddedHandler = self->_samplesAddedHandler;
  self->_samplesAddedHandler = 0;
}

- (void)queue_validate
{
  v8.receiver = self;
  v8.super_class = HKWorkoutBuilderSampleQuery;
  [(HKQuery *)&v8 queue_validate];
  objectType = [(HKQuery *)self objectType];

  if (!objectType)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ data type must be non-nil", objc_opt_class()}];
  }

  objectType2 = [(HKQuery *)self objectType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = objc_opt_class();
    [v6 raise:@"HKQueryValidationFailureException" format:{@"%@ data type must be of class %@", v7, objc_opt_class()}];
  }

  if (!self->_samplesAddedHandler && !self->_quantitiesAddedHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ either samplesAddedHandler or quantitiesAddedHandler must be non-nil", objc_opt_class()}];
  }
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_samplesAddedHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__HKWorkoutBuilderSampleQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (HKWorkoutBuilder)workoutBuilder
{
  WeakRetained = objc_loadWeakRetained(&self->_workoutBuilder);

  return WeakRetained;
}

@end