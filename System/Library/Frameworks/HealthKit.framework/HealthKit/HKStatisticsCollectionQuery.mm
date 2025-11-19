@interface HKStatisticsCollectionQuery
+ (void)configureClientInterface:(id)a3;
- (BOOL)_comparisonPredicateContainsStrictStartOrEndDateComparisonPredicate:(id)a3;
- (BOOL)_predicateContainsStrictStartOrEndDateComparisonPredicate:(id)a3;
- (HKStatisticsCollectionQuery)initWithQuantityType:(HKQuantityType *)quantityType quantitySamplePredicate:(NSPredicate *)quantitySamplePredicate options:(HKStatisticsOptions)options anchorDate:(NSDate *)anchorDate intervalComponents:(NSDateComponents *)intervalComponents;
- (HKStatisticsCollectionQuery)initWithSampleType:(id)a3 samplePredicate:(id)a4 options:(unint64_t)a5 anchorDate:(id)a6 intervalComponents:(id)a7;
- (void)_queue_deliverInitialStatisticsObjects:(id)a3 anchor:(id)a4 queryUUID:(id)a5;
- (void)_queue_deliverResetStatisticsObjects:(id)a3 forQuery:(id)a4;
- (void)_queue_deliverStatisticsObjects:(id)a3 forQuery:(id)a4;
- (void)client_deliverStatisticsBatch:(id)a3 resetStatistics:(BOOL)a4 isFinal:(BOOL)a5 anchor:(id)a6 query:(id)a7;
- (void)client_deliverUpdatedStatistics:(id)a3 anchor:(id)a4 query:(id)a5;
- (void)client_finishedCachingStatisticsWithCacheHits:(int64_t)a3 error:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
- (void)setCacheSettings:(id)a3;
- (void)setDateInterval:(id)a3;
- (void)setInitialResultsHandler:(void *)initialResultsHandler;
- (void)setMergeStrategy:(unint64_t)a3;
- (void)setStatisticsUpdateHandler:(void *)statisticsUpdateHandler;
@end

@implementation HKStatisticsCollectionQuery

- (HKStatisticsCollectionQuery)initWithQuantityType:(HKQuantityType *)quantityType quantitySamplePredicate:(NSPredicate *)quantitySamplePredicate options:(HKStatisticsOptions)options anchorDate:(NSDate *)anchorDate intervalComponents:(NSDateComponents *)intervalComponents
{
  result = [(HKStatisticsCollectionQuery *)self initWithSampleType:quantityType samplePredicate:quantitySamplePredicate options:options anchorDate:anchorDate intervalComponents:intervalComponents];
  if (result)
  {
    result->_requireQuantityType = 1;
  }

  return result;
}

- (HKStatisticsCollectionQuery)initWithSampleType:(id)a3 samplePredicate:(id)a4 options:(unint64_t)a5 anchorDate:(id)a6 intervalComponents:(id)a7
{
  v13 = a6;
  v14 = a7;
  v22.receiver = self;
  v22.super_class = HKStatisticsCollectionQuery;
  v15 = [(HKQuery *)&v22 _initWithObjectType:a3 predicate:a4];
  v16 = v15;
  if (v15)
  {
    v15->_options = a5;
    objc_storeStrong(&v15->_anchorDate, a6);
    v17 = [v14 copy];
    intervalComponents = v16->_intervalComponents;
    v16->_intervalComponents = v17;

    v16->_mergeStrategy = 0;
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    results = v16->_results;
    v16->_results = v19;
  }

  return v16;
}

- (void)setInitialResultsHandler:(void *)initialResultsHandler
{
  v5 = initialResultsHandler;
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  v6 = [(HKQuery *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__HKStatisticsCollectionQuery_setInitialResultsHandler___block_invoke;
  v8[3] = &unk_1E73765F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(v6, v8);
}

uint64_t __56__HKStatisticsCollectionQuery_setInitialResultsHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 192);
  *(v3 + 192) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setStatisticsUpdateHandler:(void *)statisticsUpdateHandler
{
  v5 = statisticsUpdateHandler;
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  v6 = [(HKQuery *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__HKStatisticsCollectionQuery_setStatisticsUpdateHandler___block_invoke;
  v8[3] = &unk_1E73765F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(v6, v8);
}

uint64_t __58__HKStatisticsCollectionQuery_setStatisticsUpdateHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 200);
  *(v3 + 200) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setMergeStrategy:(unint64_t)a3
{
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  v5 = [(HKQuery *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__HKStatisticsCollectionQuery_setMergeStrategy___block_invoke;
  v6[3] = &unk_1E7378630;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

- (void)setDateInterval:(id)a3
{
  v5 = a3;
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  v6 = [(HKQuery *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__HKStatisticsCollectionQuery_setDateInterval___block_invoke;
  v8[3] = &unk_1E7378400;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(v6, v8);
}

uint64_t __47__HKStatisticsCollectionQuery_setDateInterval___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 224);
  *(v3 + 224) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setCacheSettings:(id)a3
{
  v5 = a3;
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  v6 = [(HKQuery *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__HKStatisticsCollectionQuery_setCacheSettings___block_invoke;
  v8[3] = &unk_1E7378400;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(v6, v8);
}

uint64_t __48__HKStatisticsCollectionQuery_setCacheSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 232);
  *(v3 + 232) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKStatisticsCollectionQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverStatisticsBatch_resetStatistics_isFinal_anchor_query_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKStatisticsCollectionQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setAnchorDate:{self->_anchorDate, v5.receiver, v5.super_class}];
  [v4 setOptions:self->_options];
  [v4 setIntervalComponents:self->_intervalComponents];
  [v4 setMergeStrategy:self->_mergeStrategy];
  [v4 setDateInterval:self->_dateInterval];
  [v4 setCacheSettings:self->_cacheSettings];
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v8.receiver = self;
  v8.super_class = HKStatisticsCollectionQuery;
  [(HKQuery *)&v8 queue_queryDidDeactivate:a3];
  lastAnchor = self->_lastAnchor;
  self->_lastAnchor = 0;

  statisticsCollection = self->_statisticsCollection;
  self->_statisticsCollection = 0;

  initialResultsHandler = self->_initialResultsHandler;
  self->_initialResultsHandler = 0;

  statisticsUpdateHandler = self->_statisticsUpdateHandler;
  self->_statisticsUpdateHandler = 0;
}

- (void)queue_validate
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 identifier];
  OUTLINED_FUNCTION_0_27(&dword_19197B000, v5, v6, "Not using cached results for query with caching identifier %@ due to strict start and end date enforcement", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  if (self->_hasReceivedInitialResults)
  {
    v5 = _Block_copy(self->_statisticsUpdateHandler);
    if (v5)
    {
      v6 = [(HKQuery *)self clientQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __50__HKStatisticsCollectionQuery_queue_deliverError___block_invoke_2;
      v10[3] = &unk_1E7376618;
      v7 = &v12;
      v5 = v5;
      v12 = v5;
      v10[4] = self;
      v8 = &v11;
      v11 = v4;
      v9 = v10;
LABEL_6:
      dispatch_async(v6, v9);
    }
  }

  else
  {
    v5 = _Block_copy(self->_initialResultsHandler);
    if (v5)
    {
      v6 = [(HKQuery *)self clientQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__HKStatisticsCollectionQuery_queue_deliverError___block_invoke;
      block[3] = &unk_1E7376618;
      v7 = &v15;
      v5 = v5;
      v15 = v5;
      block[4] = self;
      v8 = &v14;
      v14 = v4;
      v9 = block;
      goto LABEL_6;
    }
  }
}

- (void)client_deliverStatisticsBatch:(id)a3 resetStatistics:(BOOL)a4 isFinal:(BOOL)a5 anchor:(id)a6 query:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__HKStatisticsCollectionQuery_client_deliverStatisticsBatch_resetStatistics_isFinal_anchor_query___block_invoke;
  block[3] = &unk_1E7383AC0;
  v23 = a4;
  block[4] = self;
  v20 = v12;
  v24 = a5;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(v15, block);
}

uint64_t __98__HKStatisticsCollectionQuery_client_deliverStatisticsBatch_resetStatistics_isFinal_anchor_query___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 64) == 1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = *(v1 + 32);
    v4 = *(v3 + 176);
    *(v3 + 176) = v2;

    v5 = *(v1 + 32);
    v6 = *(v5 + 208);
    *(v5 + 208) = 0;

    result = [*(*(v1 + 32) + 216) _resetStatistics:MEMORY[0x1E695E0F0]];
  }

  if (*(v1 + 40))
  {
    result = [*(*(v1 + 32) + 176) addObjectsFromArray:?];
  }

  if (*(v1 + 65) == 1)
  {
    v7 = *(v1 + 32);
    if (*(v7 + 184))
    {
      v8 = *(v7 + 208);
      *(v7 + 208) = 0;

      [*(v1 + 32) _queue_deliverResetStatisticsObjects:*(*(v1 + 32) + 176) forQuery:*(v1 + 56)];
    }

    else
    {
      [v7 _queue_deliverInitialStatisticsObjects:*(v7 + 176) anchor:*(v1 + 48) queryUUID:*(v1 + 56)];
    }

    v9 = objc_opt_new();
    v10 = *(v1 + 32);
    v11 = *(v10 + 176);
    *(v10 + 176) = v9;

    return MEMORY[0x1EEE66BB8](v9, v11);
  }

  return result;
}

- (void)client_deliverUpdatedStatistics:(id)a3 anchor:(id)a4 query:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HKQuery *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__HKStatisticsCollectionQuery_client_deliverUpdatedStatistics_anchor_query___block_invoke;
  v15[3] = &unk_1E737B738;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

void __76__HKStatisticsCollectionQuery_client_deliverUpdatedStatistics_anchor_query___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 208), *(a1 + 40));
  if (*(a1 + 48))
  {
    v4[0] = *(a1 + 48);
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  [*(a1 + 32) _queue_deliverStatisticsObjects:v2 forQuery:*(a1 + 56)];

  v3 = *MEMORY[0x1E69E9840];
}

- (void)client_finishedCachingStatisticsWithCacheHits:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  v7 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__HKStatisticsCollectionQuery_client_finishedCachingStatisticsWithCacheHits_error___block_invoke;
  block[3] = &unk_1E73767D0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

void __83__HKStatisticsCollectionQuery_client_finishedCachingStatisticsWithCacheHits_error___block_invoke(void *a1)
{
  v2 = _Block_copy(*(a1[4] + 240));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, a1[6], a1[5] == 0);
    v2 = v3;
  }
}

- (void)_queue_deliverInitialStatisticsObjects:(id)a3 anchor:(id)a4 queryUUID:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  [(HKStatisticsCollectionQuery *)self setLastAnchor:a4];
  v10 = [(HKStatisticsCollectionQuery *)self statisticsCollection];
  if (v10)
  {
    v11 = v10;
    [(HKStatisticsCollectionQuery *)self _queue_deliverResetStatisticsObjects:v8 forQuery:v9];
  }

  else
  {
    v12 = [(HKQuery *)self objectType];
    v13 = [HKStatisticsCollection alloc];
    anchorDate = self->_anchorDate;
    intervalComponents = self->_intervalComponents;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __87__HKStatisticsCollectionQuery__queue_deliverInitialStatisticsObjects_anchor_queryUUID___block_invoke;
    v33[3] = &unk_1E7383AE8;
    v16 = v12;
    v34 = v16;
    v11 = [(HKStatisticsCollection *)v13 initWithAnchorDate:anchorDate statisticsInterval:intervalComponents emptyStatisticsConstructor:v33];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = v8;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        v21 = 0;
        do
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [(HKStatisticsCollection *)v11 _insertStatistics:*(*(&v29 + 1) + 8 * v21++)];
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v19);
    }

    [(HKStatisticsCollectionQuery *)self setStatisticsCollection:v11];
    self->_hasReceivedInitialResults = 1;
    v22 = _Block_copy(self->_initialResultsHandler);
    v23 = [(HKStatisticsCollectionQuery *)self queue_shouldDeactivateAfterInitialResults];
    if (v22)
    {
      v24 = v23;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __87__HKStatisticsCollectionQuery__queue_deliverInitialStatisticsObjects_anchor_queryUUID___block_invoke_2;
      v26[3] = &unk_1E7376618;
      v28 = v22;
      v26[4] = self;
      v27 = v11;
      [(HKQuery *)self queue_dispatchToClientForUUID:v9 shouldDeactivate:v24 block:v26];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

HKStatistics *__87__HKStatisticsCollectionQuery__queue_deliverInitialStatisticsObjects_anchor_queryUUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[HKStatistics alloc] initWithDataType:*(a1 + 32) startDate:v6 endDate:v5];

  return v7;
}

- (void)_queue_deliverResetStatisticsObjects:(id)a3 forQuery:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKQuery *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = _Block_copy(self->_statisticsUpdateHandler);
  v10 = self->_statisticsCollection;
  [(HKStatisticsCollection *)v10 _resetStatistics:v7];

  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__HKStatisticsCollectionQuery__queue_deliverResetStatisticsObjects_forQuery___block_invoke;
    v11[3] = &unk_1E7376618;
    v13 = v9;
    v11[4] = self;
    v12 = v10;
    [(HKQuery *)self queue_dispatchToClientForUUID:v6 shouldDeactivate:0 block:v11];
  }
}

- (void)_queue_deliverStatisticsObjects:(id)a3 forQuery:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v17 = a4;
  v7 = [(HKQuery *)self queue];
  dispatch_assert_queue_V2(v7);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if ([(HKStatisticsCollection *)self->_statisticsCollection _insertStatistics:v13])
        {
          v14 = _Block_copy(self->_statisticsUpdateHandler);
          v15 = self->_statisticsCollection;
          if (v14)
          {
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __72__HKStatisticsCollectionQuery__queue_deliverStatisticsObjects_forQuery___block_invoke;
            v18[3] = &unk_1E7378F90;
            v20 = v14;
            v18[4] = self;
            v18[5] = v13;
            v19 = v15;
            [(HKQuery *)self queue_dispatchToClientForUUID:v17 shouldDeactivate:0 block:v18];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)_predicateContainsStrictStartOrEndDateComparisonPredicate:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 subpredicates];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v8 |= [(HKStatisticsCollectionQuery *)self _predicateContainsStrictStartOrEndDateComparisonPredicate:*(*(&v13 + 1) + 8 * i)];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    objc_opt_class();
    LOBYTE(v8) = (objc_opt_isKindOfClass() & 1) != 0 && [(HKStatisticsCollectionQuery *)self _comparisonPredicateContainsStrictStartOrEndDateComparisonPredicate:v4];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (BOOL)_comparisonPredicateContainsStrictStartOrEndDateComparisonPredicate:(id)a3
{
  v3 = a3;
  v4 = [v3 leftExpression];
  if ([v4 expressionType] == 3)
  {
    v5 = [v4 keyPath];
    v6 = [v3 predicateOperatorType];
    v7 = [v5 isEqual:@"startDate"];
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8 | [v5 isEqual:@"endDate"] & (v6 < 2);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

@end