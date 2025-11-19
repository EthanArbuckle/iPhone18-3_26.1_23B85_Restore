@interface HKStatisticsQuery
+ (void)configureClientInterface:(id)a3;
- (HKStatisticsQuery)initWithQuantityType:(HKQuantityType *)quantityType quantitySamplePredicate:(NSPredicate *)quantitySamplePredicate options:(HKStatisticsOptions)options completionHandler:(void *)handler;
- (HKStatisticsQuery)initWithSampleType:(id)a3 samplePredicate:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (id)_filter;
- (id)_filterForDateInterval:(id)a3;
- (void)_setDateInterval:(id)a3;
- (void)client_deliverStatistics:(id)a3 forQuery:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation HKStatisticsQuery

- (HKStatisticsQuery)initWithQuantityType:(HKQuantityType *)quantityType quantitySamplePredicate:(NSPredicate *)quantitySamplePredicate options:(HKStatisticsOptions)options completionHandler:(void *)handler
{
  result = [(HKStatisticsQuery *)self initWithSampleType:quantityType samplePredicate:quantitySamplePredicate options:options completionHandler:handler];
  if (result)
  {
    result->_requireQuantityType = 1;
  }

  return result;
}

- (HKStatisticsQuery)initWithSampleType:(id)a3 samplePredicate:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = HKStatisticsQuery;
  v11 = [(HKQuery *)&v16 _initWithObjectType:a3 predicate:a4];
  v12 = v11;
  if (v11)
  {
    v11->_options = a5;
    v13 = _Block_copy(v10);
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v13;

    v12->_mergeStrategy = 0;
  }

  return v12;
}

- (id)_filterForDateInterval:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = [(HKQuery *)self objectType];
    v7 = [v5 setWithObject:v6];

    v8 = [v4 endDate];
    v9 = [_HKSampleComparisonFilter startDateFilterWithOperatorType:1 date:v8 dataTypes:v7];

    v10 = [v4 startDate];
    v11 = [_HKSampleComparisonFilter endDateFilterWithOperatorType:3 date:v10 dataTypes:v7];

    v21[0] = v9;
    v21[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    if (HKProgramSDKAtLeast())
    {
      v13 = [(HKQuery *)self objectType];
      v14 = [v4 startDate];
      v15 = [v13 _earliestAllowedStartDateForSampleOverlappingDate:v14];

      if (v15)
      {
        v16 = [(_HKComparisonFilter *)_HKSampleComparisonFilter filterForKeyPath:@"startDate" operatorType:3 value:v15 dataTypes:v7];
        v17 = [v12 arrayByAddingObject:v16];

        v12 = v17;
      }
    }

    v18 = [_HKCompoundFilter andFilterWithSubfilters:v12];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_filter
{
  v7.receiver = self;
  v7.super_class = HKStatisticsQuery;
  v3 = [(HKQuery *)&v7 _filter];
  v4 = [(HKStatisticsQuery *)self _filterForDateInterval:self->_dateInterval];
  v5 = [_HKCompoundFilter compoundFilterWithFilter:v3 otherFilter:v4];

  return v5;
}

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKStatisticsQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverStatistics_forQuery_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKStatisticsQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setOptions:{self->_options, v5.receiver, v5.super_class}];
  [v4 setMergeStrategy:self->_mergeStrategy];
  [v4 setDateInterval:self->_dateInterval];
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKStatisticsQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (void)queue_validate
{
  v10.receiver = self;
  v10.super_class = HKStatisticsQuery;
  [(HKQuery *)&v10 queue_validate];
  if (self->_requireQuantityType)
  {
    v3 = [(HKQuery *)self objectType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v5 = MEMORY[0x1E695DF30];
      v6 = *MEMORY[0x1E695D940];
      v7 = objc_opt_class();
      [v5 raise:v6 format:{@"%@ data type must be of class %@", v7, objc_opt_class()}];
    }
  }

  if (!self->_completionHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ completionHandler cannot be nil", objc_opt_class()}];
  }

  options = self->_options;
  v9 = [(HKQuery *)self objectType];
  [HKStatistics _validateOptions:options forDataType:v9];
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
    block[2] = __40__HKStatisticsQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = v4;
    dispatch_async(v6, block);
  }
}

- (void)_setDateInterval:(id)a3
{
  v4 = a3;
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:sel__setDateInterval_];
  dateInterval = self->_dateInterval;
  self->_dateInterval = v4;
}

- (void)client_deliverStatistics:(id)a3 forQuery:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__HKStatisticsQuery_client_deliverStatistics_forQuery___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __55__HKStatisticsQuery_client_deliverStatistics_forQuery___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 160));
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__HKStatisticsQuery_client_deliverStatistics_forQuery___block_invoke_2;
    v6[3] = &unk_1E7378458;
    v7 = *(a1 + 48);
    v5 = v2;
    v8 = *(a1 + 32);
    v9 = v5;
    [v3 queue_dispatchToClientForUUID:v4 shouldDeactivate:1 block:v6];
  }
}

void __55__HKStatisticsQuery_client_deliverStatistics_forQuery___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = *(a1 + 40);
    v2 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    [*(a1 + 40) applicationSDKVersionToken];
    if (HKProgramSDKTokenAtLeast())
    {
      v7 = a1 + 40;
      v5 = *(a1 + 40);
      v6 = *(v7 + 8);
      v12 = [MEMORY[0x1E696ABC0] hk_error:11 format:@"No data available for the specified predicate."];
      (*(v6 + 16))(v6, v5, 0, v12);
    }

    else
    {
      v8 = [HKStatistics alloc];
      v9 = [*(a1 + 40) objectType];
      v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
      v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
      v12 = [(HKStatistics *)v8 initWithDataType:v9 startDate:v10 endDate:v11];

      (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), v12, 0);
    }
  }
}

@end