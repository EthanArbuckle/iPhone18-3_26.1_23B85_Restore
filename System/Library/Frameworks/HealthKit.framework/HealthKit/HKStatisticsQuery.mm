@interface HKStatisticsQuery
+ (void)configureClientInterface:(id)interface;
- (HKStatisticsQuery)initWithQuantityType:(HKQuantityType *)quantityType quantitySamplePredicate:(NSPredicate *)quantitySamplePredicate options:(HKStatisticsOptions)options completionHandler:(void *)handler;
- (HKStatisticsQuery)initWithSampleType:(id)type samplePredicate:(id)predicate options:(unint64_t)options completionHandler:(id)handler;
- (id)_filter;
- (id)_filterForDateInterval:(id)interval;
- (void)_setDateInterval:(id)interval;
- (void)client_deliverStatistics:(id)statistics forQuery:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
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

- (HKStatisticsQuery)initWithSampleType:(id)type samplePredicate:(id)predicate options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = HKStatisticsQuery;
  v11 = [(HKQuery *)&v16 _initWithObjectType:type predicate:predicate];
  v12 = v11;
  if (v11)
  {
    v11->_options = options;
    v13 = _Block_copy(handlerCopy);
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v13;

    v12->_mergeStrategy = 0;
  }

  return v12;
}

- (id)_filterForDateInterval:(id)interval
{
  v21[2] = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  if (intervalCopy)
  {
    v5 = MEMORY[0x1E695DFD8];
    objectType = [(HKQuery *)self objectType];
    v7 = [v5 setWithObject:objectType];

    endDate = [intervalCopy endDate];
    v9 = [_HKSampleComparisonFilter startDateFilterWithOperatorType:1 date:endDate dataTypes:v7];

    startDate = [intervalCopy startDate];
    v11 = [_HKSampleComparisonFilter endDateFilterWithOperatorType:3 date:startDate dataTypes:v7];

    v21[0] = v9;
    v21[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    if (HKProgramSDKAtLeast())
    {
      objectType2 = [(HKQuery *)self objectType];
      startDate2 = [intervalCopy startDate];
      v15 = [objectType2 _earliestAllowedStartDateForSampleOverlappingDate:startDate2];

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
  _filter = [(HKQuery *)&v7 _filter];
  v4 = [(HKStatisticsQuery *)self _filterForDateInterval:self->_dateInterval];
  v5 = [_HKCompoundFilter compoundFilterWithFilter:_filter otherFilter:v4];

  return v5;
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKStatisticsQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverStatistics_forQuery_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKStatisticsQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setOptions:{self->_options, v5.receiver, v5.super_class}];
  [configurationCopy setMergeStrategy:self->_mergeStrategy];
  [configurationCopy setDateInterval:self->_dateInterval];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKStatisticsQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
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
    objectType = [(HKQuery *)self objectType];
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
  objectType2 = [(HKQuery *)self objectType];
  [HKStatistics _validateOptions:options forDataType:objectType2];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_completionHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__HKStatisticsQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)_setDateInterval:(id)interval
{
  intervalCopy = interval;
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:sel__setDateInterval_];
  dateInterval = self->_dateInterval;
  self->_dateInterval = intervalCopy;
}

- (void)client_deliverStatistics:(id)statistics forQuery:(id)query
{
  statisticsCopy = statistics;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__HKStatisticsQuery_client_deliverStatistics_forQuery___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = queryCopy;
  v13 = statisticsCopy;
  v9 = statisticsCopy;
  v10 = queryCopy;
  dispatch_async(queue, block);
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