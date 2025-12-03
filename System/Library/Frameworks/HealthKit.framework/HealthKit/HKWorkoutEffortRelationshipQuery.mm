@interface HKWorkoutEffortRelationshipQuery
+ (void)configureClientInterface:(id)interface;
- (HKWorkoutEffortRelationshipQuery)initWithPredicate:(id)predicate anchor:(id)anchor options:(int64_t)options resultsHandler:(id)handler;
- (void)client_deliverWorkoutEffortRelationships:(id)relationships isFinalBatch:(BOOL)batch anchor:(id)anchor forQuery:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKWorkoutEffortRelationshipQuery

- (HKWorkoutEffortRelationshipQuery)initWithPredicate:(id)predicate anchor:(id)anchor options:(int64_t)options resultsHandler:(id)handler
{
  anchorCopy = anchor;
  handlerCopy = handler;
  predicateCopy = predicate;
  v14 = +[HKObjectType workoutType];
  v19.receiver = self;
  v19.super_class = HKWorkoutEffortRelationshipQuery;
  v15 = [(HKQuery *)&v19 _initWithObjectType:v14 predicate:predicateCopy];

  if (v15)
  {
    objc_storeStrong(&v15->_anchor, anchor);
    v15->_options = options;
    v16 = [handlerCopy copy];
    resultsHandler = v15->_resultsHandler;
    v15->_resultsHandler = v16;
  }

  return v15;
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___HKWorkoutEffortRelationshipQuery;
  objc_msgSendSuper2(&v11, sel_configureClientInterface_, interfaceCopy);
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v8 forSelector:sel_client_deliverWorkoutEffortRelationships_isFinalBatch_anchor_forQuery_ argumentIndex:0 ofReply:0];

  v9 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverWorkoutEffortRelationships_isFinalBatch_anchor_forQuery_ argumentIndex:2 ofReply:0];
  v10 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverWorkoutEffortRelationships_isFinalBatch_anchor_forQuery_ argumentIndex:3 ofReply:0];
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKWorkoutEffortRelationshipQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setAnchor:{self->_anchor, v5.receiver, v5.super_class}];
  [configurationCopy setOptions:self->_options];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKWorkoutEffortRelationshipQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

- (void)queue_validate
{
  v2.receiver = self;
  v2.super_class = HKWorkoutEffortRelationshipQuery;
  [(HKQuery *)&v2 queue_validate];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_resultsHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__HKWorkoutEffortRelationshipQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)client_deliverWorkoutEffortRelationships:(id)relationships isFinalBatch:(BOOL)batch anchor:(id)anchor forQuery:(id)query
{
  relationshipsCopy = relationships;
  anchorCopy = anchor;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__HKWorkoutEffortRelationshipQuery_client_deliverWorkoutEffortRelationships_isFinalBatch_anchor_forQuery___block_invoke;
  block[3] = &unk_1E737B920;
  block[4] = self;
  v18 = relationshipsCopy;
  batchCopy = batch;
  v19 = queryCopy;
  v20 = anchorCopy;
  v14 = anchorCopy;
  v15 = queryCopy;
  v16 = relationshipsCopy;
  dispatch_async(queue, block);
}

void __106__HKWorkoutEffortRelationshipQuery_client_deliverWorkoutEffortRelationships_isFinalBatch_anchor_forQuery___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 176));
  if (v2)
  {
    v3 = *(*(a1 + 32) + 152);
    if (v3)
    {
      [v3 addObjectsFromArray:*(a1 + 40)];
    }

    else
    {
      v4 = [*(a1 + 40) mutableCopy];
      v5 = *(a1 + 32);
      v6 = *(v5 + 152);
      *(v5 + 152) = v4;
    }

    if (*(a1 + 64) == 1)
    {
      v7 = *(*(a1 + 32) + 152);
      v8 = *(a1 + 32);
      v9 = *(v8 + 152);
      *(v8 + 152) = 0;

      v10 = *(a1 + 32);
      v11 = *(a1 + 48);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __106__HKWorkoutEffortRelationshipQuery_client_deliverWorkoutEffortRelationships_isFinalBatch_anchor_forQuery___block_invoke_2;
      v13[3] = &unk_1E7378F90;
      v16 = v2;
      v13[4] = *(a1 + 32);
      v14 = v7;
      v15 = *(a1 + 56);
      v12 = v7;
      [v10 queue_dispatchToClientForUUID:v11 shouldDeactivate:0 block:v13];
    }
  }
}

@end