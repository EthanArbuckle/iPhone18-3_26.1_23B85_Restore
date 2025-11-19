@interface HKValueHistogramCollectionQuery
+ (void)configureClientInterface:(id)a3;
- (HKValueHistogramCollectionQuery)initWithQuantityType:(id)a3 quantitySamplePredicate:(id)a4 anchorDate:(id)a5 intervalComponents:(id)a6 quantityRanges:(id)a7 resultsHandler:(id)a8;
- (void)client_deliverValueHistogramCollection:(id)a3 forQuery:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation HKValueHistogramCollectionQuery

- (HKValueHistogramCollectionQuery)initWithQuantityType:(id)a3 quantitySamplePredicate:(id)a4 anchorDate:(id)a5 intervalComponents:(id)a6 quantityRanges:(id)a7 resultsHandler:(id)a8
{
  v15 = a3;
  v24 = a5;
  v23 = a6;
  v16 = a7;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = HKValueHistogramCollectionQuery;
  v18 = [(HKQuery *)&v25 _initWithObjectType:v15 predicate:a4];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(v18 + 19, a3);
    objc_storeStrong(&v19->_anchorDate, a5);
    objc_storeStrong(&v19->_intervalComponents, a6);
    objc_storeStrong(&v19->_quantityRanges, a7);
    v20 = _Block_copy(v17);
    resultsHandler = v19->_resultsHandler;
    v19->_resultsHandler = v20;
  }

  return v19;
}

- (void)client_deliverValueHistogramCollection:(id)a3 forQuery:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__HKValueHistogramCollectionQuery_client_deliverValueHistogramCollection_forQuery___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __83__HKValueHistogramCollectionQuery_client_deliverValueHistogramCollection_forQuery___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 184));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __83__HKValueHistogramCollectionQuery_client_deliverValueHistogramCollection_forQuery___block_invoke_2;
    v8[3] = &unk_1E7376618;
    v6 = v2;
    v7 = *(a1 + 32);
    v10 = v6;
    v8[4] = v7;
    v9 = *(a1 + 48);
    [v4 queue_dispatchToClientForUUID:v5 shouldDeactivate:1 block:v8];
  }
}

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKValueHistogramCollectionQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setAnchorDate:{self->_anchorDate, v5.receiver, v5.super_class}];
  [v4 setIntervalComponents:self->_intervalComponents];
  [v4 setQuantityRanges:self->_quantityRanges];
}

+ (void)configureClientInterface:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___HKValueHistogramCollectionQuery;
  v3 = a3;
  objc_msgSendSuper2(&v5, sel_configureClientInterface_, v3);
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v4 forSelector:sel_client_deliverValueHistogramCollection_forQuery_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  v5 = _Block_copy(self->_resultsHandler);
  v6 = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__HKValueHistogramCollectionQuery_queue_deliverError___block_invoke;
  block[3] = &unk_1E7376618;
  v10 = v4;
  v11 = v5;
  block[4] = self;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)queue_validate
{
  v4.receiver = self;
  v4.super_class = HKValueHistogramCollectionQuery;
  [(HKQuery *)&v4 queue_validate];
  if ([(NSDateComponents *)self->_intervalComponents hk_maxComponentValue]< 1 || ([(NSDateComponents *)self->_intervalComponents hk_approximateDuration], v3 <= 0.0))
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ interval components must be greater than zero: %@", objc_opt_class(), self->_intervalComponents}];
  }

  if (![HKQuantityRange areRangesDisjoint:self->_quantityRanges])
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ quantity ranges must be disjoint: %@", objc_opt_class(), self->_quantityRanges}];
  }

  if (!self->_resultsHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ resultsHandler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKValueHistogramCollectionQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

@end