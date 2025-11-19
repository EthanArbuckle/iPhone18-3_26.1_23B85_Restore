@interface HKQuantitySeriesSampleBuilder
+ (id)_clientErrorForFinishedSeries;
+ (id)_exceptionForPreviouslyDiscardedBuilder;
+ (id)serverInterface;
- (BOOL)_changeStateForDiscardWithError:(id *)a3;
- (BOOL)_changeStateForFinishWithError:(id *)a3;
- (BOOL)_changeStateForInsertWithError:(id *)a3;
- (BOOL)_insertQuantity:(id)a3 dateInterval:(id)a4 error:(id *)a5;
- (BOOL)_validateDateInterval:(id)a3 error:(id *)a4;
- (BOOL)_validateQuantity:(id)a3 error:(id *)a4;
- (BOOL)insertQuantity:(HKQuantity *)quantity date:(NSDate *)date error:(NSError *)error;
- (BOOL)insertQuantity:(HKQuantity *)quantity dateInterval:(NSDateInterval *)dateInterval error:(NSError *)error;
- (HKQuantitySeriesSampleBuilder)init;
- (HKQuantitySeriesSampleBuilder)initWithHealthStore:(HKHealthStore *)healthStore quantityType:(HKQuantityType *)quantityType startDate:(NSDate *)startDate device:(HKDevice *)device;
- (id)_queue_clientErrorForFatalError;
- (void)_changeStateForFatalError:(id)a3;
- (void)_discardWithCompletion:(id)a3;
- (void)_finishSeriesWithMetadata:(id)a3 endDate:(id)a4 completion:(id)a5;
- (void)_taskServer_discardWithCompletion:(id)a3;
- (void)_taskServer_finishSeriesWithMetadata:(id)a3 endDate:(id)a4 finalSeries:(id)a5 completion:(id)a6;
- (void)_taskServer_insertQuantitySeries:(id)a3 completion:(id)a4;
- (void)discard;
- (void)finishSeriesWithMetadata:(NSDictionary *)metadata endDate:(NSDate *)endDate completion:(void *)completion;
@end

@implementation HKQuantitySeriesSampleBuilder

- (HKQuantitySeriesSampleBuilder)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKQuantitySeriesSampleBuilder)initWithHealthStore:(HKHealthStore *)healthStore quantityType:(HKQuantityType *)quantityType startDate:(NSDate *)startDate device:(HKDevice *)device
{
  v11 = healthStore;
  v12 = quantityType;
  v13 = startDate;
  v14 = device;
  v50.receiver = self;
  v50.super_class = HKQuantitySeriesSampleBuilder;
  v15 = [(HKQuantitySeriesSampleBuilder *)&v50 init];
  if (v15)
  {
    v49 = healthStore;
    objc_opt_class();
    v16 = v11;
    isKindOfClass = objc_opt_isKindOfClass();
    v18 = MEMORY[0x1E695D940];
    v19 = MEMORY[0x1E695D940];
    if ((isKindOfClass & 1) == 0)
    {
      v20 = MEMORY[0x1E695DF30];
      v21 = *MEMORY[0x1E695D940];
      v46 = objc_opt_class();
      v22 = v21;
      v18 = v19;
      [v20 raise:v22 format:{@"A valid %@ object is required.", v46}];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = MEMORY[0x1E695DF30];
      v24 = *v19;
      v47 = objc_opt_class();
      v25 = v24;
      v18 = v19;
      [v23 raise:v25 format:{@"A valid %@ object is required.", v47}];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = MEMORY[0x1E695DF30];
      v27 = *v19;
      v48 = objc_opt_class();
      v28 = v27;
      v18 = v19;
      [v26 raise:v28 format:{@"A valid %@ object is required.", v48}];
    }

    v11 = v16;
    [(HKHealthStore *)v16 applicationSDKVersionToken];
    if (HKProgramSDKTokenAtLeast())
    {
      [(NSDate *)v13 timeIntervalSinceReferenceDate];
      v29 = v49;
    }

    else
    {
      v29 = v49;
      if ([(HKQuantityType *)v12 aggregationStyle])
      {
        [MEMORY[0x1E695DF30] raise:*v18 format:{@"A quantityType with aggregationStyle HKQuantityAggregationStyleCumulative is required", v45}];
      }
    }

    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:*v18 format:{@"A valid %@ object is required.", objc_opt_class()}];
      }
    }

    v30 = HKCreateSerialDispatchQueue(v15, 0);
    queue = v15->_queue;
    v15->_queue = v30;

    fatalError = v15->_fatalError;
    v15->_fatalError = 0;
    v15->_state = 0;

    objc_storeStrong(&v15->_healthStore, v29);
    v33 = [(HKQuantityType *)v12 copy];
    v34 = v15->_quantityType;
    v15->_quantityType = v33;

    v35 = [(NSDate *)v13 copy];
    v36 = v15->_startDate;
    v15->_startDate = v35;

    v37 = [(HKDevice *)v14 copy];
    v38 = v15->_device;
    v15->_device = v37;

    v15->_batchSize = 1024;
    v39 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v15->_identifier;
    v15->_identifier = v39;

    v41 = [[HKQuantitySeriesSampleBuilderTaskServerConfiguration alloc] initWithQuantityType:v15->_quantityType startDate:v15->_startDate device:v15->_device];
    v42 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:v15->_healthStore taskIdentifier:@"HKQuantitySeriesSampleBuilderTaskServerIdentifier" exportedObject:v15 taskUUID:v15->_identifier];
    proxyProvider = v15->_proxyProvider;
    v15->_proxyProvider = v42;

    [(HKProxyProvider *)v15->_proxyProvider setShouldRetryOnInterruption:0];
    [(HKTaskServerProxyProvider *)v15->_proxyProvider setTaskConfiguration:v41];
  }

  return v15;
}

- (BOOL)insertQuantity:(HKQuantity *)quantity dateInterval:(NSDateInterval *)dateInterval error:(NSError *)error
{
  v8 = quantity;
  v9 = dateInterval;
  v10 = [(HKQuantitySeriesSampleBuilder *)self _validateQuantity:v8 error:error]&& [(HKQuantitySeriesSampleBuilder *)self _validateDateInterval:v9 error:error]&& [(HKQuantitySeriesSampleBuilder *)self _changeStateForInsertWithError:error]&& [(HKQuantitySeriesSampleBuilder *)self _insertQuantity:v8 dateInterval:v9 error:error];

  return v10;
}

- (BOOL)insertQuantity:(HKQuantity *)quantity date:(NSDate *)date error:(NSError *)error
{
  v8 = MEMORY[0x1E696AB80];
  v9 = quantity;
  v10 = [v8 hk_instantaneousDateIntervalWithDate:date];
  LOBYTE(error) = [(HKQuantitySeriesSampleBuilder *)self insertQuantity:v9 dateInterval:v10 error:error];

  return error;
}

- (void)finishSeriesWithMetadata:(NSDictionary *)metadata endDate:(NSDate *)endDate completion:(void *)completion
{
  v8 = metadata;
  v9 = endDate;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  v11 = 0;
  if ([(HKQuantitySeriesSampleBuilder *)self _changeStateForFinishWithError:&v11])
  {
    [(HKQuantitySeriesSampleBuilder *)self _finishSeriesWithMetadata:v8 endDate:v9 completion:v10];
  }

  else
  {
    v10[2](v10, 0, v11);
  }
}

- (void)discard
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__HKQuantitySeriesSampleBuilder_discard__block_invoke;
  v2[3] = &unk_1E7376A00;
  v2[4] = self;
  [(HKQuantitySeriesSampleBuilder *)self _discardWithCompletion:v2];
}

void __40__HKQuantitySeriesSampleBuilder_discard__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      __40__HKQuantitySeriesSampleBuilder_discard__block_invoke_cold_1(a1);
    }
  }
}

- (BOOL)_insertQuantity:(id)a3 dateInterval:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_not_V2(self->_queue);
  v9 = objc_alloc_init(HKCodableQuantitySeriesDatum);
  v10 = [(HKQuantityType *)self->_quantityType canonicalUnit];
  [v7 doubleValueForUnit:v10];
  [(HKCodableQuantitySeriesDatum *)v9 setValue:?];

  v11 = [v8 startDate];
  [v11 timeIntervalSinceReferenceDate];
  [(HKCodableQuantitySeriesDatum *)v9 setTimeInterval:?];

  [(HKHealthStore *)self->_healthStore applicationSDKVersionToken];
  if (HKProgramSDKTokenAtLeast())
  {
    [v8 duration];
    *&v12 = v12;
    [(HKCodableQuantitySeriesDatum *)v9 setDuration:v12];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__12;
  v25 = __Block_byref_object_dispose__12;
  v26 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__HKQuantitySeriesSampleBuilder__insertQuantity_dateInterval_error___block_invoke;
  block[3] = &unk_1E737B490;
  block[4] = self;
  v14 = v9;
  v19 = v14;
  v20 = &v21;
  dispatch_sync(queue, block);
  v15 = v22[5];
  if (v15)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__HKQuantitySeriesSampleBuilder__insertQuantity_dateInterval_error___block_invoke_2;
    v17[3] = &unk_1E7376A00;
    v17[4] = self;
    [(HKQuantitySeriesSampleBuilder *)self _taskServer_insertQuantitySeries:v15 completion:v17];
  }

  _Block_object_dispose(&v21, 8);
  return 1;
}

void __68__HKQuantitySeriesSampleBuilder__insertQuantity_dateInterval_error___block_invoke(void *a1)
{
  v2 = *(a1[4] + 64);
  if (!v2)
  {
    v3 = objc_alloc_init(HKCodableQuantitySeries);
    v4 = a1[4];
    v5 = *(v4 + 64);
    *(v4 + 64) = v3;

    v2 = *(a1[4] + 64);
  }

  [v2 addValues:a1[5]];
  v6 = [*(a1[4] + 64) values];
  v7 = [v6 count];
  v8 = *(a1[4] + 32);

  if (v7 >= v8)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 64));
    v9 = a1[4];
    v10 = *(v9 + 64);
    *(v9 + 64) = 0;
  }
}

void __68__HKQuantitySeriesSampleBuilder__insertQuantity_dateInterval_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEBUG))
    {
      __68__HKQuantitySeriesSampleBuilder__insertQuantity_dateInterval_error___block_invoke_2_cold_1(a1);
    }

    [*(a1 + 32) _changeStateForFatalError:v5];
  }

  v6 = _Block_copy(*(*(a1 + 32) + 96));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v5);
  }
}

- (void)_finishSeriesWithMetadata:(id)a3 endDate:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__12;
  v22 = __Block_byref_object_dispose__12;
  v23 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__HKQuantitySeriesSampleBuilder__finishSeriesWithMetadata_endDate_completion___block_invoke;
  block[3] = &unk_1E7378528;
  block[4] = self;
  block[5] = &v18;
  dispatch_sync(queue, block);
  v12 = v19[5];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__HKQuantitySeriesSampleBuilder__finishSeriesWithMetadata_endDate_completion___block_invoke_2;
  v14[3] = &unk_1E737B4B8;
  v16 = &v18;
  v14[4] = self;
  v13 = v10;
  v15 = v13;
  [(HKQuantitySeriesSampleBuilder *)self _taskServer_finishSeriesWithMetadata:v8 endDate:v9 finalSeries:v12 completion:v14];

  _Block_object_dispose(&v18, 8);
}

void __78__HKQuantitySeriesSampleBuilder__finishSeriesWithMetadata_endDate_completion___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 64));
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;
}

void __78__HKQuantitySeriesSampleBuilder__finishSeriesWithMetadata_endDate_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(*(a1[6] + 8) + 40))
  {
    v6 = _Block_copy(*(a1[4] + 96));
    if (v6)
    {
      v6[2](v6, v7 != 0, v5);
    }
  }

  (*(a1[5] + 16))();
}

- (void)_discardWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  v7 = 0;
  v5 = [(HKQuantitySeriesSampleBuilder *)self _changeStateForDiscardWithError:&v7];
  v6 = v7;
  if (v5)
  {
    [(HKQuantitySeriesSampleBuilder *)self _taskServer_discardWithCompletion:v4];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      [HKQuantitySeriesSampleBuilder _discardWithCompletion:?];
    }

    (v4)[2](v4, 0, v6);
  }
}

- (BOOL)_validateQuantity:(id)a3 error:(id *)a4
{
  v6 = a3;
  quantityType = self->_quantityType;
  v8 = [v6 _unit];
  v9 = [(HKQuantityType *)quantityType isCompatibleWithUnit:v8];

  if (!v9)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"Quantity (%@) does not have a unit compatible with quantity series builder quantity type %@", v6, self->_quantityType}];
  }

  return v9;
}

- (BOOL)_validateDateInterval:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(HKHealthStore *)self->_healthStore applicationSDKVersionToken];
  if (HKProgramSDKTokenAtLeast())
  {
    v7 = [v6 startDate];
    [v7 timeIntervalSinceReferenceDate];
    v8 = [v6 endDate];
    [v8 timeIntervalSinceReferenceDate];

    if ([(HKSampleType *)self->_quantityType isMaximumDurationRestricted])
    {
      [v6 duration];
      v10 = v9;
      [(HKSampleType *)self->_quantityType maximumAllowedDuration];
      if (v10 > v11)
      {
        [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"dateInterval (%@) exceeds the maximum allowed duration for sample type (%@)", v6, self->_quantityType, v26}];
        goto LABEL_13;
      }
    }

    if ([(HKSampleType *)self->_quantityType isMaximumDurationRestricted])
    {
      v12 = [v6 endDate];
      [v12 timeIntervalSinceReferenceDate];
      v14 = v13;
      [(NSDate *)self->_startDate timeIntervalSinceReferenceDate];
      v16 = v14 - v15;
      [(HKSampleType *)self->_quantityType maximumAllowedDuration];
      v18 = v17;

      if (v16 > v18)
      {
        [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"startDate (%@) and dateInterval (%@) exceed the maximum allowed duration for sample type (%@)", self->_startDate, v6, self->_quantityType}];
        goto LABEL_13;
      }
    }

    if ([(HKSampleType *)self->_quantityType isMinimumDurationRestricted])
    {
      [v6 duration];
      v20 = v19;
      [(HKSampleType *)self->_quantityType minimumAllowedDuration];
      if (v20 < v21)
      {
        [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"dateInterval (%@) is below the minimum allowed duration for sample type (%@)", v6, self->_quantityType, v26}];
        goto LABEL_13;
      }
    }
  }

  v22 = [v6 startDate];
  v23 = [v22 hk_isBeforeDate:self->_startDate];

  if (!v23)
  {
    v24 = 1;
    goto LABEL_15;
  }

  [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"Date interval (%@) is before builder's start date %@", v6, self->_startDate, v26}];
LABEL_13:
  v24 = 0;
LABEL_15:

  return v24;
}

- (BOOL)_changeStateForInsertWithError:(id *)a3
{
  dispatch_assert_queue_not_V2(self->_queue);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__12;
  v23 = __Block_byref_object_dispose__12;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__12;
  v17 = __Block_byref_object_dispose__12;
  v18 = 0;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__HKQuantitySeriesSampleBuilder__changeStateForInsertWithError___block_invoke;
  v12[3] = &unk_1E7378720;
  v12[4] = self;
  v12[5] = &v25;
  v12[6] = &v19;
  v12[7] = &v13;
  dispatch_sync(queue, v12);
  if ((v26[3] & 1) == 0)
  {
    v6 = v20[5];
    v7 = v6;
    if (v6)
    {
      if (a3)
      {
        v8 = v6;
        *a3 = v7;
      }

      else
      {
        _HKLogDroppedError(v6);
      }
    }
  }

  v9 = v14[5];
  if (v9)
  {
    [v9 raise];
  }

  v10 = *(v26 + 24);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  return v10;
}

void *__64__HKQuantitySeriesSampleBuilder__changeStateForInsertWithError___block_invoke(void *a1)
{
  result = a1[4];
  v3 = result[7];
  if (v3 > 1)
  {
    switch(v3)
    {
      case 2:
        v4 = [result _queue_clientErrorForFatalError];
        break;
      case 3:
        v4 = [objc_opt_class() _clientErrorForFinishedSeries];
        break;
      case 4:
        v4 = [objc_opt_class() _exceptionForPreviouslyDiscardedBuilder];
        v5 = a1[7];
        goto LABEL_12;
      default:
        return result;
    }

    v5 = a1[6];
LABEL_12:
    v6 = *(v5 + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v4;

    return MEMORY[0x1EEE66BB8]();
  }

  if (v3)
  {
    if (v3 == 1)
    {
      *(*(a1[5] + 8) + 24) = 1;
    }
  }

  else
  {
    result[7] = 1;
    *(*(a1[5] + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)_changeStateForFinishWithError:(id *)a3
{
  dispatch_assert_queue_not_V2(self->_queue);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__12;
  v24 = __Block_byref_object_dispose__12;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__12;
  v18 = __Block_byref_object_dispose__12;
  v19 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__HKQuantitySeriesSampleBuilder__changeStateForFinishWithError___block_invoke;
  block[3] = &unk_1E737B4E0;
  block[4] = self;
  block[5] = &v20;
  block[7] = &v14;
  block[8] = a2;
  block[6] = &v26;
  dispatch_sync(queue, block);
  if ((v27[3] & 1) == 0)
  {
    v7 = v21[5];
    v8 = v7;
    if (v7)
    {
      if (a3)
      {
        v9 = v7;
        *a3 = v8;
      }

      else
      {
        _HKLogDroppedError(v7);
      }
    }
  }

  v10 = v15[5];
  if (v10)
  {
    [v10 raise];
  }

  v11 = *(v27 + 24);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  return v11;
}

void __64__HKQuantitySeriesSampleBuilder__changeStateForFinishWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[7];
  if (v3 > 1)
  {
    switch(v3)
    {
      case 2:
        v4 = [v2 _queue_clientErrorForFatalError];
        break;
      case 3:
        v4 = [objc_opt_class() _clientErrorForFinishedSeries];
        break;
      case 4:
        v4 = [objc_opt_class() _exceptionForPreviouslyDiscardedBuilder];
        v5 = a1[7];
        goto LABEL_12;
      default:
        return;
    }

    v5 = a1[5];
LABEL_12:
    v6 = *(v5 + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v4;

    MEMORY[0x1EEE66BB8]();
    return;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v2[7] = 3;
      *(*(a1[6] + 8) + 24) = 1;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a1[8] format:@"No quantities were added to quantity series sample builder."];
    v9 = *(a1[5] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *(a1[4] + 56) = 3;
  }
}

- (BOOL)_changeStateForDiscardWithError:(id *)a3
{
  dispatch_assert_queue_not_V2(self->_queue);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__12;
  v23 = __Block_byref_object_dispose__12;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__12;
  v17 = __Block_byref_object_dispose__12;
  v18 = 0;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__HKQuantitySeriesSampleBuilder__changeStateForDiscardWithError___block_invoke;
  v12[3] = &unk_1E7378720;
  v12[4] = self;
  v12[5] = &v25;
  v12[6] = &v19;
  v12[7] = &v13;
  dispatch_sync(queue, v12);
  if ((v26[3] & 1) == 0)
  {
    v6 = v20[5];
    v7 = v6;
    if (v6)
    {
      if (a3)
      {
        v8 = v6;
        *a3 = v7;
      }

      else
      {
        _HKLogDroppedError(v6);
      }
    }
  }

  v9 = v14[5];
  if (v9)
  {
    [v9 raise];
  }

  v10 = *(v26 + 24);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  return v10;
}

void *__65__HKQuantitySeriesSampleBuilder__changeStateForDiscardWithError___block_invoke(void *a1)
{
  result = a1[4];
  v3 = result[7];
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 != 4)
      {
        return result;
      }

      v4 = [objc_opt_class() _exceptionForPreviouslyDiscardedBuilder];
      v5 = a1[7];
      goto LABEL_12;
    }

    v4 = [objc_opt_class() _clientErrorForFinishedSeries];
LABEL_11:
    v5 = a1[6];
LABEL_12:
    v6 = *(v5 + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v4;

    return MEMORY[0x1EEE66BB8]();
  }

  if (v3 < 2)
  {
    result[7] = 4;
    *(*(a1[5] + 8) + 24) = 1;
    return result;
  }

  if (v3 == 2)
  {
    v4 = [result _queue_clientErrorForFatalError];
    goto LABEL_11;
  }

  return result;
}

- (void)_changeStateForFatalError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__HKQuantitySeriesSampleBuilder__changeStateForFatalError___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __59__HKQuantitySeriesSampleBuilder__changeStateForFatalError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 56) == 1)
  {
    *(v1 + 56) = 2;
    v3 = *(a1 + 40);
    v4 = v3;
    if (!v3)
    {
      v4 = [MEMORY[0x1E696ABC0] hk_error:100 description:@"Unknown internal fatal error"];
    }

    v5 = v4;
    objc_storeStrong((*(a1 + 32) + 48), v4);
    if (!v3)
    {
    }
  }
}

+ (id)_clientErrorForFinishedSeries
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = objc_opt_class();

  return [v3 hk_errorForInvalidArgument:@"@" class:v4 selector:a2 format:@"Quantity series sample builder already finished"];
}

+ (id)_exceptionForPreviouslyDiscardedBuilder
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D920];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromClass(a1);
  v6 = [v4 stringWithFormat:@"%@ already discarded.", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];

  return v7;
}

- (id)_queue_clientErrorForFatalError
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = MEMORY[0x1E696ABC0];
  fatalError = self->_fatalError;

  return [v3 hk_error:3 description:@"Quantity series sample builder experienced a fatal error" underlyingError:fatalError];
}

- (void)_taskServer_insertQuantitySeries:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__HKQuantitySeriesSampleBuilder__taskServer_insertQuantitySeries_completion___block_invoke;
  v13[3] = &unk_1E737B508;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__HKQuantitySeriesSampleBuilder__taskServer_insertQuantitySeries_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)_taskServer_finishSeriesWithMetadata:(id)a3 endDate:(id)a4 finalSeries:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  proxyProvider = self->_proxyProvider;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __101__HKQuantitySeriesSampleBuilder__taskServer_finishSeriesWithMetadata_endDate_finalSeries_completion___block_invoke;
  v21[3] = &unk_1E737B530;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __101__HKQuantitySeriesSampleBuilder__taskServer_finishSeriesWithMetadata_endDate_finalSeries_completion___block_invoke_2;
  v19[3] = &unk_1E7376960;
  v20 = v25;
  v15 = v25;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v21 errorHandler:v19];
}

- (void)_taskServer_discardWithCompletion:(id)a3
{
  v4 = a3;
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__HKQuantitySeriesSampleBuilder__taskServer_discardWithCompletion___block_invoke;
  v9[3] = &unk_1E737B558;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__HKQuantitySeriesSampleBuilder__taskServer_discardWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F70B8];
  v3 = [MEMORY[0x1E695DF20] hk_secureCodingClasses];
  [v2 setClasses:v3 forSelector:sel_remote_finishSeriesWithMetadata_endDate_finalSeries_completion_ argumentIndex:0 ofReply:0];

  v4 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_finishSeriesWithMetadata_endDate_finalSeries_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

void __40__HKQuantitySeriesSampleBuilder_discard__block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "%{public}@: error discarding quantity sample series builder: %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __68__HKQuantitySeriesSampleBuilder__insertQuantity_dateInterval_error___block_invoke_2_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = 138543618;
  v5 = v1;
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(&dword_19197B000, v2, OS_LOG_TYPE_DEBUG, "%{public}@: error inserting quantity: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_discardWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "%{public}@: cannot discard quantity sample series builder: %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

@end