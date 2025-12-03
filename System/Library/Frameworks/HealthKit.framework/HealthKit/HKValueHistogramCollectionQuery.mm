@interface HKValueHistogramCollectionQuery
+ (void)configureClientInterface:(id)interface;
- (HKValueHistogramCollectionQuery)initWithQuantityType:(id)type quantitySamplePredicate:(id)predicate anchorDate:(id)date intervalComponents:(id)components quantityRanges:(id)ranges resultsHandler:(id)handler;
- (void)client_deliverValueHistogramCollection:(id)collection forQuery:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKValueHistogramCollectionQuery

- (HKValueHistogramCollectionQuery)initWithQuantityType:(id)type quantitySamplePredicate:(id)predicate anchorDate:(id)date intervalComponents:(id)components quantityRanges:(id)ranges resultsHandler:(id)handler
{
  typeCopy = type;
  dateCopy = date;
  componentsCopy = components;
  rangesCopy = ranges;
  handlerCopy = handler;
  v25.receiver = self;
  v25.super_class = HKValueHistogramCollectionQuery;
  v18 = [(HKQuery *)&v25 _initWithObjectType:typeCopy predicate:predicate];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(v18 + 19, type);
    objc_storeStrong(&v19->_anchorDate, date);
    objc_storeStrong(&v19->_intervalComponents, components);
    objc_storeStrong(&v19->_quantityRanges, ranges);
    v20 = _Block_copy(handlerCopy);
    resultsHandler = v19->_resultsHandler;
    v19->_resultsHandler = v20;
  }

  return v19;
}

- (void)client_deliverValueHistogramCollection:(id)collection forQuery:(id)query
{
  collectionCopy = collection;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__HKValueHistogramCollectionQuery_client_deliverValueHistogramCollection_forQuery___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = queryCopy;
  v13 = collectionCopy;
  v9 = collectionCopy;
  v10 = queryCopy;
  dispatch_async(queue, block);
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

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKValueHistogramCollectionQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setAnchorDate:{self->_anchorDate, v5.receiver, v5.super_class}];
  [configurationCopy setIntervalComponents:self->_intervalComponents];
  [configurationCopy setQuantityRanges:self->_quantityRanges];
}

+ (void)configureClientInterface:(id)interface
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___HKValueHistogramCollectionQuery;
  interfaceCopy = interface;
  objc_msgSendSuper2(&v5, sel_configureClientInterface_, interfaceCopy);
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v4 forSelector:sel_client_deliverValueHistogramCollection_forQuery_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_resultsHandler);
  clientQueue = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__HKValueHistogramCollectionQuery_queue_deliverError___block_invoke;
  block[3] = &unk_1E7376618;
  v10 = errorCopy;
  v11 = v5;
  block[4] = self;
  v7 = errorCopy;
  v8 = v5;
  dispatch_async(clientQueue, block);
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

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKValueHistogramCollectionQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

@end