@interface _HKActivityStatisticsQuery
+ (void)configureClientInterface:(id)interface;
- (_HKActivityStatisticsQuery)initWithStartDate:(id)date endDate:(id)endDate moveIntervalComponents:(id)components exerciseIntervalComponents:(id)intervalComponents initialQueryResultsHandler:(id)handler;
- (void)_validateIntervalComponents:(id)components;
- (void)client_deliverResult:(id)result query:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
- (void)setQueryUpdateHandler:(id)handler;
@end

@implementation _HKActivityStatisticsQuery

- (_HKActivityStatisticsQuery)initWithStartDate:(id)date endDate:(id)endDate moveIntervalComponents:(id)components exerciseIntervalComponents:(id)intervalComponents initialQueryResultsHandler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  componentsCopy = components;
  intervalComponentsCopy = intervalComponents;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = _HKActivityStatisticsQuery;
  v18 = [(HKQuery *)&v27 _initWithObjectType:0 predicate:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(v18 + 20, date);
    objc_storeStrong(v19 + 21, endDate);
    v20 = [componentsCopy copy];
    v21 = v19[22];
    v19[22] = v20;

    v22 = [intervalComponentsCopy copy];
    v23 = v19[23];
    v19[23] = v22;

    v24 = [handlerCopy copy];
    v25 = v19[25];
    v19[25] = v24;

    v19[26] = 0x4014000000000000;
  }

  return v19;
}

- (void)setQueryUpdateHandler:(id)handler
{
  handlerCopy = handler;
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  queue = [(HKQuery *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52___HKActivityStatisticsQuery_setQueryUpdateHandler___block_invoke;
  v8[3] = &unk_1E73765F0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_sync(queue, v8);
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS____HKActivityStatisticsQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverResult_query_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = _HKActivityStatisticsQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setStartDate:{self->_startDate, v5.receiver, v5.super_class}];
  [configurationCopy setEndDate:self->_endDate];
  [configurationCopy setMoveIntervalComponents:self->_moveIntervalComponents];
  [configurationCopy setExerciseIntervalComponents:self->_exerciseIntervalComponents];
  [configurationCopy setUpdateInterval:self->_updateInterval];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v6.receiver = self;
  v6.super_class = _HKActivityStatisticsQuery;
  [(HKQuery *)&v6 queue_queryDidDeactivate:deactivate];
  initialQueryResultsHandler = self->_initialQueryResultsHandler;
  self->_initialQueryResultsHandler = 0;

  queryUpdateHandler = self->_queryUpdateHandler;
  self->_queryUpdateHandler = 0;
}

- (void)queue_validate
{
  v5.receiver = self;
  v5.super_class = _HKActivityStatisticsQuery;
  [(HKQuery *)&v5 queue_validate];
  [(_HKActivityStatisticsQuery *)self _validateIntervalComponents:self->_moveIntervalComponents];
  [(_HKActivityStatisticsQuery *)self _validateIntervalComponents:self->_exerciseIntervalComponents];
  objectType = [(HKQuery *)self objectType];

  v4 = MEMORY[0x1E695D940];
  if (objectType)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ cannot have an objectType", objc_opt_class()}];
  }

  if (!self->_initialQueryResultsHandler)
  {
    [MEMORY[0x1E695DF30] raise:*v4 format:{@"%@ initialQueryResultsHandler cannot be nil", objc_opt_class()}];
  }
}

- (void)_validateIntervalComponents:(id)components
{
  componentsCopy = components;
  v5 = componentsCopy;
  if (!componentsCopy)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ interval components cannot be nil", objc_opt_class()}];
    componentsCopy = 0;
  }

  if ([componentsCopy hk_maxComponentValue] < 1 || (objc_msgSend(v5, "hk_approximateDuration"), v4 <= 0.0))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ statistics interval must be greater than zero: %@", objc_opt_class(), v5}];
  }
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  if (self->_deliveredInitial)
  {
    v5 = _Block_copy(self->_queryUpdateHandler);
    if (v5)
    {
      clientQueue = [(HKQuery *)self clientQueue];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __49___HKActivityStatisticsQuery_queue_deliverError___block_invoke;
      v13[3] = &unk_1E7376618;
      v7 = &v15;
      v5 = v5;
      v15 = v5;
      v13[4] = self;
      v8 = &v14;
      v14 = errorCopy;
      v9 = v13;
LABEL_6:
      dispatch_async(clientQueue, v9);
    }
  }

  else
  {
    v5 = _Block_copy(self->_initialQueryResultsHandler);
    if (v5)
    {
      clientQueue = [(HKQuery *)self clientQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __49___HKActivityStatisticsQuery_queue_deliverError___block_invoke_2;
      v10[3] = &unk_1E7376618;
      v7 = &v12;
      v5 = v5;
      v12 = v5;
      v10[4] = self;
      v8 = &v11;
      v11 = errorCopy;
      v9 = v10;
      goto LABEL_6;
    }
  }
}

- (void)client_deliverResult:(id)result query:(id)query
{
  resultCopy = result;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___HKActivityStatisticsQuery_client_deliverResult_query___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = queryCopy;
  v13 = resultCopy;
  v9 = resultCopy;
  v10 = queryCopy;
  dispatch_async(queue, block);
}

@end