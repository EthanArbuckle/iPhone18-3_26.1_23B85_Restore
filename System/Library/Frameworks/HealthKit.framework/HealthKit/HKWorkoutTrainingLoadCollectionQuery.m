@interface HKWorkoutTrainingLoadCollectionQuery
+ (void)configureClientInterface:(id)a3;
- (HKWorkoutTrainingLoadCollectionQuery)initWithPredicate:(id)a3 options:(int64_t)a4 anchorDate:(id)a5 intervalComponents:(id)a6 completionHandler:(id)a7;
- (void)client_deliverTrainingLoadCollection:(id)a3 forQuery:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation HKWorkoutTrainingLoadCollectionQuery

- (HKWorkoutTrainingLoadCollectionQuery)initWithPredicate:(id)a3 options:(int64_t)a4 anchorDate:(id)a5 intervalComponents:(id)a6 completionHandler:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v24.receiver = self;
  v24.super_class = HKWorkoutTrainingLoadCollectionQuery;
  v15 = [(HKQuery *)&v24 _initWithObjectType:0 predicate:a3];
  v16 = v15;
  if (v15)
  {
    v15->_options = a4;
    v17 = [v12 copy];
    anchorDate = v16->_anchorDate;
    v16->_anchorDate = v17;

    v19 = [v13 copy];
    intervalComponents = v16->_intervalComponents;
    v16->_intervalComponents = v19;

    v21 = [v14 copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v21;
  }

  return v16;
}

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKWorkoutTrainingLoadCollectionQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverTrainingLoadCollection_forQuery_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKWorkoutTrainingLoadCollectionQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setOptions:{self->_options, v5.receiver, v5.super_class}];
  [v4 setAnchorDate:self->_anchorDate];
  [v4 setIntervalComponents:self->_intervalComponents];
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKWorkoutTrainingLoadCollectionQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (void)queue_validate
{
  v2.receiver = self;
  v2.super_class = HKWorkoutTrainingLoadCollectionQuery;
  [(HKQuery *)&v2 queue_validate];
}

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  v5 = _Block_copy(self->_completionHandler);
  if (v5)
  {
    v6 = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__HKWorkoutTrainingLoadCollectionQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = v4;
    dispatch_async(v6, block);
  }
}

- (void)client_deliverTrainingLoadCollection:(id)a3 forQuery:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__HKWorkoutTrainingLoadCollectionQuery_client_deliverTrainingLoadCollection_forQuery___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __86__HKWorkoutTrainingLoadCollectionQuery_client_deliverTrainingLoadCollection_forQuery___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 176));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__HKWorkoutTrainingLoadCollectionQuery_client_deliverTrainingLoadCollection_forQuery___block_invoke_2;
    v8[3] = &unk_1E7376618;
    v6 = v2;
    v7 = *(a1 + 32);
    v10 = v6;
    v8[4] = v7;
    v9 = *(a1 + 48);
    [v4 queue_dispatchToClientForUUID:v5 shouldDeactivate:1 block:v8];
  }
}

@end