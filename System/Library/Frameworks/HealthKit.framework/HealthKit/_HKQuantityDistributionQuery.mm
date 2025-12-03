@interface _HKQuantityDistributionQuery
+ (void)configureClientInterface:(id)interface;
- (_HKQuantityDistributionQuery)initWithQuantityType:(id)type startDate:(id)date endDate:(id)endDate contextStyle:(int64_t)style predicate:(id)predicate anchorDate:(id)anchorDate intervalComponents:(id)components histogramAnchor:(id)self0 histogramBucketSize:(id)self1 options:(unint64_t)self2 completionHandler:(id)self3;
- (void)client_deliverDistributionCollection:(id)collection forQuery:(id)query;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
@end

@implementation _HKQuantityDistributionQuery

- (_HKQuantityDistributionQuery)initWithQuantityType:(id)type startDate:(id)date endDate:(id)endDate contextStyle:(int64_t)style predicate:(id)predicate anchorDate:(id)anchorDate intervalComponents:(id)components histogramAnchor:(id)self0 histogramBucketSize:(id)self1 options:(unint64_t)self2 completionHandler:(id)self3
{
  v46[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  obj = date;
  dateCopy = date;
  endDateCopy = endDate;
  endDateCopy2 = endDate;
  predicateCopy = predicate;
  anchorDateCopy = anchorDate;
  componentsCopy = components;
  anchorCopy = anchor;
  sizeCopy = size;
  handlerCopy = handler;
  v23 = [HKQuery predicateForSamplesWithStartDate:dateCopy endDate:endDateCopy2 options:0];
  v24 = v23;
  if (predicateCopy)
  {
    v25 = MEMORY[0x1E696AB28];
    v46[0] = v23;
    v46[1] = predicateCopy;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:{2, obj, endDateCopy}];
    v26 = endDateCopy2;
    v27 = dateCopy;
    v29 = v28 = typeCopy;
    v30 = [v25 andPredicateWithSubpredicates:v29];

    typeCopy = v28;
    dateCopy = v27;
    endDateCopy2 = v26;
    v24 = v30;
  }

  v45.receiver = self;
  v45.super_class = _HKQuantityDistributionQuery;
  v31 = [(HKQuery *)&v45 _initWithObjectType:typeCopy predicate:v24, obj];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(v31 + 19, obja);
    objc_storeStrong(&v32->_endDate, endDateCopy);
    v32->_contextStyle = style;
    objc_storeStrong(&v32->_anchorDate, anchorDate);
    objc_storeStrong(&v32->_intervalComponents, components);
    objc_storeStrong(&v32->_histogramAnchor, anchor);
    objc_storeStrong(&v32->_histogramBucketSize, size);
    v33 = _Block_copy(handlerCopy);
    completionHandler = v32->_completionHandler;
    v32->_completionHandler = v33;

    v32->_options = options;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v32;
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS____HKQuantityDistributionQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverDistributionCollection_forQuery_ argumentIndex:0 ofReply:0];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = _HKQuantityDistributionQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = _HKQuantityDistributionQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setStartDate:{self->_startDate, v5.receiver, v5.super_class}];
  [configurationCopy setEndDate:self->_endDate];
  [configurationCopy setContextStyle:self->_contextStyle];
  [configurationCopy setAnchorDate:self->_anchorDate];
  [configurationCopy setIntervalComponents:self->_intervalComponents];
  [configurationCopy setHistogramAnchor:self->_histogramAnchor];
  [configurationCopy setHistogramBucketSize:self->_histogramBucketSize];
  [configurationCopy setOptions:self->_options];
}

- (void)client_deliverDistributionCollection:(id)collection forQuery:(id)query
{
  collectionCopy = collection;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78___HKQuantityDistributionQuery_client_deliverDistributionCollection_forQuery___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = queryCopy;
  v13 = collectionCopy;
  v9 = collectionCopy;
  v10 = queryCopy;
  dispatch_async(queue, block);
}

@end