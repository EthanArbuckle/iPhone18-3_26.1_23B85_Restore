@interface _HKActivityStatisticsQuery
+ (void)configureClientInterface:(id)a3;
- (_HKActivityStatisticsQuery)initWithStartDate:(id)a3 endDate:(id)a4 moveIntervalComponents:(id)a5 exerciseIntervalComponents:(id)a6 initialQueryResultsHandler:(id)a7;
- (void)_validateIntervalComponents:(id)a3;
- (void)client_deliverResult:(id)a3 query:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
- (void)setQueryUpdateHandler:(id)a3;
@end

@implementation _HKActivityStatisticsQuery

- (_HKActivityStatisticsQuery)initWithStartDate:(id)a3 endDate:(id)a4 moveIntervalComponents:(id)a5 exerciseIntervalComponents:(id)a6 initialQueryResultsHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v27.receiver = self;
  v27.super_class = _HKActivityStatisticsQuery;
  v18 = [(HKQuery *)&v27 _initWithObjectType:0 predicate:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(v18 + 20, a3);
    objc_storeStrong(v19 + 21, a4);
    v20 = [v15 copy];
    v21 = v19[22];
    v19[22] = v20;

    v22 = [v16 copy];
    v23 = v19[23];
    v19[23] = v22;

    v24 = [v17 copy];
    v25 = v19[25];
    v19[25] = v24;

    v19[26] = 0x4014000000000000;
  }

  return v19;
}

- (void)setQueryUpdateHandler:(id)a3
{
  v5 = a3;
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  v6 = [(HKQuery *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52___HKActivityStatisticsQuery_setQueryUpdateHandler___block_invoke;
  v8[3] = &unk_1E73765F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(v6, v8);
}

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS____HKActivityStatisticsQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverResult_query_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKActivityStatisticsQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setStartDate:{self->_startDate, v5.receiver, v5.super_class}];
  [v4 setEndDate:self->_endDate];
  [v4 setMoveIntervalComponents:self->_moveIntervalComponents];
  [v4 setExerciseIntervalComponents:self->_exerciseIntervalComponents];
  [v4 setUpdateInterval:self->_updateInterval];
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v6.receiver = self;
  v6.super_class = _HKActivityStatisticsQuery;
  [(HKQuery *)&v6 queue_queryDidDeactivate:a3];
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
  v3 = [(HKQuery *)self objectType];

  v4 = MEMORY[0x1E695D940];
  if (v3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ cannot have an objectType", objc_opt_class()}];
  }

  if (!self->_initialQueryResultsHandler)
  {
    [MEMORY[0x1E695DF30] raise:*v4 format:{@"%@ initialQueryResultsHandler cannot be nil", objc_opt_class()}];
  }
}

- (void)_validateIntervalComponents:(id)a3
{
  v3 = a3;
  v5 = v3;
  if (!v3)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ interval components cannot be nil", objc_opt_class()}];
    v3 = 0;
  }

  if ([v3 hk_maxComponentValue] < 1 || (objc_msgSend(v5, "hk_approximateDuration"), v4 <= 0.0))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ statistics interval must be greater than zero: %@", objc_opt_class(), v5}];
  }
}

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  if (self->_deliveredInitial)
  {
    v5 = _Block_copy(self->_queryUpdateHandler);
    if (v5)
    {
      v6 = [(HKQuery *)self clientQueue];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __49___HKActivityStatisticsQuery_queue_deliverError___block_invoke;
      v13[3] = &unk_1E7376618;
      v7 = &v15;
      v5 = v5;
      v15 = v5;
      v13[4] = self;
      v8 = &v14;
      v14 = v4;
      v9 = v13;
LABEL_6:
      dispatch_async(v6, v9);
    }
  }

  else
  {
    v5 = _Block_copy(self->_initialQueryResultsHandler);
    if (v5)
    {
      v6 = [(HKQuery *)self clientQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __49___HKActivityStatisticsQuery_queue_deliverError___block_invoke_2;
      v10[3] = &unk_1E7376618;
      v7 = &v12;
      v5 = v5;
      v12 = v5;
      v10[4] = self;
      v8 = &v11;
      v11 = v4;
      v9 = v10;
      goto LABEL_6;
    }
  }
}

- (void)client_deliverResult:(id)a3 query:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___HKActivityStatisticsQuery_client_deliverResult_query___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

@end