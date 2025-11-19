@interface HKWorkoutBuilderSampleQuery
+ (void)configureClientInterface:(id)a3;
- (HKWorkoutBuilder)workoutBuilder;
- (HKWorkoutBuilderSampleQuery)initWithQuantityType:(id)a3 workoutBuilder:(id)a4 quantitiesAddedHandler:(id)a5;
- (HKWorkoutBuilderSampleQuery)initWithSampleType:(id)a3 workoutBuilder:(id)a4 samplesAddedHandler:(id)a5;
- (void)client_deliverQuantities:(id)a3 hasFinishedHistoricalFetch:(BOOL)a4 queryUUID:(id)a5;
- (void)client_deliverSamples:(id)a3 hasFinishedHistoricalFetch:(BOOL)a4 queryUUID:(id)a5;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation HKWorkoutBuilderSampleQuery

- (HKWorkoutBuilderSampleQuery)initWithSampleType:(id)a3 workoutBuilder:(id)a4 samplesAddedHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = HKWorkoutBuilderSampleQuery;
  v10 = [(HKQuery *)&v14 _initWithObjectType:a3 predicate:0];
  if (v10)
  {
    v11 = [v9 copy];
    samplesAddedHandler = v10->_samplesAddedHandler;
    v10->_samplesAddedHandler = v11;

    v10->_needsHistoricalFetch = 1;
    objc_storeWeak(&v10->_workoutBuilder, v8);
  }

  return v10;
}

- (HKWorkoutBuilderSampleQuery)initWithQuantityType:(id)a3 workoutBuilder:(id)a4 quantitiesAddedHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = HKWorkoutBuilderSampleQuery;
  v10 = [(HKQuery *)&v14 _initWithObjectType:a3 predicate:0];
  if (v10)
  {
    v11 = [v9 copy];
    quantitiesAddedHandler = v10->_quantitiesAddedHandler;
    v10->_quantitiesAddedHandler = v11;

    v10->_needsHistoricalFetch = 1;
    objc_storeWeak(&v10->_workoutBuilder, v8);
  }

  return v10;
}

- (void)client_deliverSamples:(id)a3 hasFinishedHistoricalFetch:(BOOL)a4 queryUUID:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HKQuery *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__HKWorkoutBuilderSampleQuery_client_deliverSamples_hasFinishedHistoricalFetch_queryUUID___block_invoke;
  v13[3] = &unk_1E7378428;
  v16 = a4;
  v13[4] = self;
  v14 = v9;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_sync(v10, v13);
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

- (void)client_deliverQuantities:(id)a3 hasFinishedHistoricalFetch:(BOOL)a4 queryUUID:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HKQuery *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__HKWorkoutBuilderSampleQuery_client_deliverQuantities_hasFinishedHistoricalFetch_queryUUID___block_invoke;
  v13[3] = &unk_1E7378428;
  v16 = a4;
  v13[4] = self;
  v14 = v9;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_sync(v10, v13);
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

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___HKWorkoutBuilderSampleQuery;
  objc_msgSendSuper2(&v7, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverSamples_hasFinishedHistoricalFetch_queryUUID_ argumentIndex:0 ofReply:0];
  v6 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverQuantities_hasFinishedHistoricalFetch_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)a3
{
  v7.receiver = self;
  v7.super_class = HKWorkoutBuilderSampleQuery;
  v4 = a3;
  [(HKQuery *)&v7 queue_populateConfiguration:v4];
  [v4 setNeedsHistoricalData:{self->_needsHistoricalFetch, v7.receiver, v7.super_class}];
  WeakRetained = objc_loadWeakRetained(&self->_workoutBuilder);
  v6 = [WeakRetained identifier];
  [v4 setWorkoutBuilderIdentifier:v6];

  [v4 setDeliverQuantities:self->_quantitiesAddedHandler != 0];
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKWorkoutBuilderSampleQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  objc_storeWeak(&self->_workoutBuilder, 0);
  samplesAddedHandler = self->_samplesAddedHandler;
  self->_samplesAddedHandler = 0;
}

- (void)queue_validate
{
  v8.receiver = self;
  v8.super_class = HKWorkoutBuilderSampleQuery;
  [(HKQuery *)&v8 queue_validate];
  v3 = [(HKQuery *)self objectType];

  if (!v3)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ data type must be non-nil", objc_opt_class()}];
  }

  v4 = [(HKQuery *)self objectType];
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

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  v5 = _Block_copy(self->_samplesAddedHandler);
  if (v5)
  {
    v6 = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__HKWorkoutBuilderSampleQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = v4;
    dispatch_async(v6, block);
  }
}

- (HKWorkoutBuilder)workoutBuilder
{
  WeakRetained = objc_loadWeakRetained(&self->_workoutBuilder);

  return WeakRetained;
}

@end