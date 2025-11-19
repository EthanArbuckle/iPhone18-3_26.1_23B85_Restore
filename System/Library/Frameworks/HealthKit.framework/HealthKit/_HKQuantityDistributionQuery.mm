@interface _HKQuantityDistributionQuery
+ (void)configureClientInterface:(id)a3;
- (_HKQuantityDistributionQuery)initWithQuantityType:(id)a3 startDate:(id)a4 endDate:(id)a5 contextStyle:(int64_t)a6 predicate:(id)a7 anchorDate:(id)a8 intervalComponents:(id)a9 histogramAnchor:(id)a10 histogramBucketSize:(id)a11 options:(unint64_t)a12 completionHandler:(id)a13;
- (void)client_deliverDistributionCollection:(id)a3 forQuery:(id)a4;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
@end

@implementation _HKQuantityDistributionQuery

- (_HKQuantityDistributionQuery)initWithQuantityType:(id)a3 startDate:(id)a4 endDate:(id)a5 contextStyle:(int64_t)a6 predicate:(id)a7 anchorDate:(id)a8 intervalComponents:(id)a9 histogramAnchor:(id)a10 histogramBucketSize:(id)a11 options:(unint64_t)a12 completionHandler:(id)a13
{
  v46[2] = *MEMORY[0x1E69E9840];
  v17 = a3;
  obj = a4;
  v18 = a4;
  v39 = a5;
  v19 = a5;
  v20 = a7;
  v44 = a8;
  v43 = a9;
  v42 = a10;
  v21 = a11;
  v22 = a13;
  v23 = [HKQuery predicateForSamplesWithStartDate:v18 endDate:v19 options:0];
  v24 = v23;
  if (v20)
  {
    v25 = MEMORY[0x1E696AB28];
    v46[0] = v23;
    v46[1] = v20;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:{2, obj, v39}];
    v26 = v19;
    v27 = v18;
    v29 = v28 = v17;
    v30 = [v25 andPredicateWithSubpredicates:v29];

    v17 = v28;
    v18 = v27;
    v19 = v26;
    v24 = v30;
  }

  v45.receiver = self;
  v45.super_class = _HKQuantityDistributionQuery;
  v31 = [(HKQuery *)&v45 _initWithObjectType:v17 predicate:v24, obj];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(v31 + 19, obja);
    objc_storeStrong(&v32->_endDate, v39);
    v32->_contextStyle = a6;
    objc_storeStrong(&v32->_anchorDate, a8);
    objc_storeStrong(&v32->_intervalComponents, a9);
    objc_storeStrong(&v32->_histogramAnchor, a10);
    objc_storeStrong(&v32->_histogramBucketSize, a11);
    v33 = _Block_copy(v22);
    completionHandler = v32->_completionHandler;
    v32->_completionHandler = v33;

    v32->_options = a12;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v32;
}

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS____HKQuantityDistributionQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverDistributionCollection_forQuery_ argumentIndex:0 ofReply:0];
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKQuantityDistributionQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKQuantityDistributionQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setStartDate:{self->_startDate, v5.receiver, v5.super_class}];
  [v4 setEndDate:self->_endDate];
  [v4 setContextStyle:self->_contextStyle];
  [v4 setAnchorDate:self->_anchorDate];
  [v4 setIntervalComponents:self->_intervalComponents];
  [v4 setHistogramAnchor:self->_histogramAnchor];
  [v4 setHistogramBucketSize:self->_histogramBucketSize];
  [v4 setOptions:self->_options];
}

- (void)client_deliverDistributionCollection:(id)a3 forQuery:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78___HKQuantityDistributionQuery_client_deliverDistributionCollection_forQuery___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

@end