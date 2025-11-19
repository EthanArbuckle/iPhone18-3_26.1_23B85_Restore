@interface HKCorrelationQuery
+ (BOOL)shouldApplyAdditionalPredicateForObjectType:(id)a3;
+ (void)configureClientInterface:(id)a3;
- (HKCorrelationQuery)initWithType:(HKCorrelationType *)correlationType predicate:(NSPredicate *)predicate samplePredicates:(NSDictionary *)samplePredicates completion:(void *)completion;
- (void)client_deliverCorrelations:(id)a3 clearPendingSamples:(BOOL)a4 isFinalBatch:(BOOL)a5 queryUUID:(id)a6;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation HKCorrelationQuery

+ (BOOL)shouldApplyAdditionalPredicateForObjectType:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (HKCorrelationQuery)initWithType:(HKCorrelationType *)correlationType predicate:(NSPredicate *)predicate samplePredicates:(NSDictionary *)samplePredicates completion:(void *)completion
{
  v10 = samplePredicates;
  v11 = completion;
  v24.receiver = self;
  v24.super_class = HKCorrelationQuery;
  v12 = [(HKQuery *)&v24 _initWithObjectType:correlationType predicate:predicate];
  if (v12)
  {
    v13 = [(NSDictionary *)v10 copy];
    v14 = v12->_samplePredicates;
    v12->_samplePredicates = v13;

    v15 = [MEMORY[0x1E695DF90] dictionary];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __73__HKCorrelationQuery_initWithType_predicate_samplePredicates_completion___block_invoke;
    v22[3] = &unk_1E7383E38;
    v23 = v15;
    v16 = v15;
    [(NSDictionary *)v10 enumerateKeysAndObjectsUsingBlock:v22];
    v17 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v16];
    filterDictionary = v12->_filterDictionary;
    v12->_filterDictionary = v17;

    v19 = _Block_copy(v11);
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v19;
  }

  return v12;
}

void __73__HKCorrelationQuery_initWithType_predicate_samplePredicates_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = a3;
  v7 = a2;
  v8 = [v5 setWithObject:v7];
  v9 = [v6 hk_filterRepresentationForDataTypes:v8];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
}

- (void)client_deliverCorrelations:(id)a3 clearPendingSamples:(BOOL)a4 isFinalBatch:(BOOL)a5 queryUUID:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(HKQuery *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__HKCorrelationQuery_client_deliverCorrelations_clearPendingSamples_isFinalBatch_queryUUID___block_invoke;
  v15[3] = &unk_1E7379FC0;
  v15[4] = self;
  v16 = v11;
  v18 = a4;
  v17 = v10;
  v19 = a5;
  v13 = v10;
  v14 = v11;
  dispatch_async(v12, v15);
}

void __92__HKCorrelationQuery_client_deliverCorrelations_clearPendingSamples_isFinalBatch_queryUUID___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 168));
  if (v2 && [*(a1 + 32) hasQueryUUID:*(a1 + 40)])
  {
    v3 = *(*(a1 + 32) + 160);
    if (v3 && *(a1 + 56) != 1)
    {
      [v3 addObjectsFromArray:*(a1 + 48)];
    }

    else
    {
      v4 = [*(a1 + 48) mutableCopy];
      v5 = *(a1 + 32);
      v6 = *(v5 + 160);
      *(v5 + 160) = v4;
    }

    if (*(a1 + 57) == 1)
    {
      v7 = *(*(a1 + 32) + 160);
      v8 = *(a1 + 32);
      v9 = *(v8 + 160);
      *(v8 + 160) = 0;

      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __92__HKCorrelationQuery_client_deliverCorrelations_clearPendingSamples_isFinalBatch_queryUUID___block_invoke_2;
      v13[3] = &unk_1E7376618;
      v14 = v7;
      v15 = v2;
      v13[4] = *(a1 + 32);
      v12 = v7;
      [v10 queue_dispatchToClientForUUID:v11 shouldDeactivate:1 block:v13];
    }
  }
}

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKCorrelationQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverCorrelations_clearPendingSamples_isFinalBatch_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKCorrelationQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setFilterDictionary:{self->_filterDictionary, v5.receiver, v5.super_class}];
}

- (void)queue_validate
{
  v8.receiver = self;
  v8.super_class = HKCorrelationQuery;
  [(HKQuery *)&v8 queue_validate];
  v3 = [(HKQuery *)self objectType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = [(HKQuery *)self objectType];
    [v5 raise:v6 format:{@"%@ is not an instance of %@", v7, objc_opt_class()}];
  }

  if (!self->_completionHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ completionHandler cannot be nil", objc_opt_class()}];
  }
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
    block[2] = __41__HKCorrelationQuery_queue_deliverError___block_invoke;
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
  v5.super_class = HKCorrelationQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

@end