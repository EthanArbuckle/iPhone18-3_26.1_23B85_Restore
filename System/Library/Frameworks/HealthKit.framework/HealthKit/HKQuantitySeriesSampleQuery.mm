@interface HKQuantitySeriesSampleQuery
- (HKQuantitySeriesSampleQuery)initWithQuantityType:(HKQuantityType *)quantityType predicate:(NSPredicate *)predicate quantityHandler:(void *)quantityHandler;
- (HKQuantitySeriesSampleQuery)initWithQuantityType:(id)type predicate:(id)predicate quantityBatchHandler:(id)handler;
- (HKQuantitySeriesSampleQuery)initWithSample:(HKQuantitySample *)quantitySample quantityHandler:(void *)quantityHandler;
- (id)_quantitySampleForEnumerationResult:(id)result UUID:(id)d;
- (id)quantityHandlerWithSample;
- (id)quantityHandlerWithoutSample;
- (void)client_deliverEnumerationResults:(id)results isFinal:(BOOL)final query:(id)query;
- (void)client_deliverQuantitySeries:(id)series seriesAnchor:(int64_t)anchor isFinal:(BOOL)final query:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)setIncludeSample:(BOOL)includeSample;
- (void)setOrderByQuantitySampleStartDate:(BOOL)orderByQuantitySampleStartDate;
@end

@implementation HKQuantitySeriesSampleQuery

- (HKQuantitySeriesSampleQuery)initWithSample:(HKQuantitySample *)quantitySample quantityHandler:(void *)quantityHandler
{
  v7 = quantitySample;
  v8 = quantityHandler;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "quantitySample"}];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "quantityHandler"}];
LABEL_3:
  quantityType = [(HKQuantitySample *)v7 quantityType];
  v16.receiver = self;
  v16.super_class = HKQuantitySeriesSampleQuery;
  v11 = [(HKQuery *)&v16 _initWithObjectType:quantityType predicate:0];

  if (v11)
  {
    objc_storeStrong(&v11->_sample, quantitySample);
    v11->_anchor = 0;
    [(HKSample *)v11->_sample _startTimestamp];
    v11->_startTime = v12;
    v13 = [v9 copy];
    seriesHandler = v11->_seriesHandler;
    v11->_seriesHandler = v13;
  }

  return v11;
}

- (HKQuantitySeriesSampleQuery)initWithQuantityType:(HKQuantityType *)quantityType predicate:(NSPredicate *)predicate quantityHandler:(void *)quantityHandler
{
  v8 = quantityType;
  v9 = predicate;
  v10 = quantityHandler;
  v11 = v10;
  if (v8)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "quantityType"}];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "quantityHandler"}];
LABEL_3:
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__HKQuantitySeriesSampleQuery_initWithQuantityType_predicate_quantityHandler___block_invoke;
  v17[3] = &unk_1E737D540;
  v12 = v11;
  v18 = v12;
  v13 = [(HKQuantitySeriesSampleQuery *)self initWithQuantityType:v8 predicate:v9 quantityBatchHandler:v17];
  if (v13)
  {
    v14 = [v12 copy];
    v15 = v13->_quantityHandler;
    v13->_quantityHandler = v14;
  }

  return v13;
}

void __78__HKQuantitySeriesSampleQuery_initWithQuantityType_predicate_quantityHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, double a5, double a6, uint64_t a7, uint64_t a8, void *a9)
{
  v22 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a9;
  if (v15)
  {
    v18 = objc_alloc(MEMORY[0x1E696AB80]);
    v19 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:a5];
    v20 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:a6];
    v21 = [v18 initWithStartDate:v19 endDate:v20];
  }

  else
  {
    v21 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (HKQuantitySeriesSampleQuery)initWithQuantityType:(id)type predicate:(id)predicate quantityBatchHandler:(id)handler
{
  typeCopy = type;
  predicateCopy = predicate;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (typeCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "quantityType"}];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "quantityBatchHandler"}];
LABEL_3:
  v16.receiver = self;
  v16.super_class = HKQuantitySeriesSampleQuery;
  v12 = [(HKQuery *)&v16 _initWithObjectType:typeCopy predicate:predicateCopy];
  if (v12)
  {
    v13 = [v11 copy];
    quantityBatchHandler = v12->_quantityBatchHandler;
    v12->_quantityBatchHandler = v13;
  }

  return v12;
}

- (id)quantityHandlerWithoutSample
{
  v2 = _Block_copy(self->_seriesHandler);

  return v2;
}

- (id)quantityHandlerWithSample
{
  v2 = _Block_copy(self->_quantityHandler);

  return v2;
}

- (void)setIncludeSample:(BOOL)includeSample
{
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  queue = [(HKQuery *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__HKQuantitySeriesSampleQuery_setIncludeSample___block_invoke;
  v6[3] = &unk_1E7378680;
  v6[4] = self;
  v7 = includeSample;
  dispatch_sync(queue, v6);
}

- (void)setOrderByQuantitySampleStartDate:(BOOL)orderByQuantitySampleStartDate
{
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  queue = [(HKQuery *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__HKQuantitySeriesSampleQuery_setOrderByQuantitySampleStartDate___block_invoke;
  v6[3] = &unk_1E7378680;
  v6[4] = self;
  v7 = orderByQuantitySampleStartDate;
  dispatch_sync(queue, v6);
}

- (void)client_deliverQuantitySeries:(id)series seriesAnchor:(int64_t)anchor isFinal:(BOOL)final query:(id)query
{
  seriesCopy = series;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__HKQuantitySeriesSampleQuery_client_deliverQuantitySeries_seriesAnchor_isFinal_query___block_invoke;
  block[3] = &unk_1E737D590;
  block[4] = self;
  v16 = queryCopy;
  finalCopy = final;
  v17 = seriesCopy;
  anchorCopy = anchor;
  v13 = seriesCopy;
  v14 = queryCopy;
  dispatch_async(queue, block);
}

void __87__HKQuantitySeriesSampleQuery_client_deliverQuantitySeries_seriesAnchor_isFinal_query___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 > *(v3 + 168))
  {
    *(v3 + 168) = v2;
    v3 = *(a1 + 32);
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__19;
  v18 = __Block_byref_object_dispose__19;
  v19 = _Block_copy(*(v3 + 152));
  if (v15[5])
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 64);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __87__HKQuantitySeriesSampleQuery_client_deliverQuantitySeries_seriesAnchor_isFinal_query___block_invoke_15;
    v9[3] = &unk_1E737D568;
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    v12 = &v14;
    v13 = *(a1 + 64);
    [v4 queue_dispatchToClientForUUID:v5 shouldDeactivate:v6 block:v9];
  }

  _Block_object_dispose(&v14, 8);
}

void __87__HKQuantitySeriesSampleQuery_client_deliverQuantitySeries_seriesAnchor_isFinal_query___block_invoke_15(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) values];
  v3 = [v2 count];

  if (v3)
  {
    v30 = [*(a1 + 40) deactivateCallCount];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [*(a1 + 32) values];
    v4 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v32;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        if ([*(a1 + 40) deactivateCallCount] > v30)
        {
          break;
        }

        v10 = objc_autoreleasePoolPush();
        v11 = [*(*(a1 + 40) + 160) quantity];
        v12 = [v11 _unit];
        [v9 value];
        v13 = [HKQuantity quantityWithUnit:v12 doubleValue:?];

        if ([v9 hasDuration])
        {
          [v9 timeInterval];
          v15 = v14;
        }

        else
        {
          v15 = *(*(a1 + 40) + 176);
        }

        v16 = [v9 hasDuration];
        [v9 timeInterval];
        v18 = v17;
        if (v16)
        {
          [v9 duration];
          v18 = v18 + v19;
        }

        ++v6;
        [*(a1 + 40) applicationSDKVersionToken];
        if (HKProgramSDKTokenAtLeast())
        {
          v20 = v15;
        }

        else
        {
          v20 = v18;
        }

        v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v20];
        *(*(a1 + 40) + 176) = v18;
        if (*(a1 + 56) == 1)
        {
          v22 = [*(a1 + 32) values];
          [v22 count];
        }

        v23 = *(a1 + 40);
        (*(*(*(*(a1 + 48) + 8) + 40) + 16))();

        objc_autoreleasePoolPop(v10);
        if (v5 == ++v8)
        {
          v5 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v24 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v25 = *(a1 + 40);
    v26 = *(a1 + 56);
    v27 = *(*(*(*(a1 + 48) + 8) + 40) + 16);
    v28 = *MEMORY[0x1E69E9840];

    v27();
  }
}

- (void)client_deliverEnumerationResults:(id)results isFinal:(BOOL)final query:(id)query
{
  resultsCopy = results;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__HKQuantitySeriesSampleQuery_client_deliverEnumerationResults_isFinal_query___block_invoke;
  v13[3] = &unk_1E7378428;
  v14 = resultsCopy;
  selfCopy = self;
  v16 = queryCopy;
  finalCopy = final;
  v11 = queryCopy;
  v12 = resultsCopy;
  dispatch_async(queue, v13);
}

void __78__HKQuantitySeriesSampleQuery_client_deliverEnumerationResults_isFinal_query___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) results];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) results];
    v5 = [v4 lastObject];
    [v5 startTime];
    v7 = v6;

    v8 = *(a1 + 40);
    if (!*(v8 + 208) || v7 > *(v8 + 216))
    {
      *(v8 + 216) = v7;
      v8 = *(a1 + 40);
    }

    *(v8 + 208) = 1;
    v9 = [*(a1 + 32) results];
    v10 = [v9 lastObject];
    v11 = [v10 uuid];
    v12 = *(a1 + 40);
    v13 = *(v12 + 224);
    *(v12 + 224) = v11;

    v14 = MEMORY[0x1E695DF00];
    [*(a1 + 32) latestSampleStartTime];
    v15 = [v14 dateWithTimeIntervalSinceReferenceDate:?];
    v16 = *(a1 + 40);
    v17 = *(v16 + 232);
    *(v16 + 232) = v15;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__19;
  v32 = __Block_byref_object_dispose__19;
  v33 = _Block_copy(*(*(a1 + 40) + 192));
  if (v29[5])
  {
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __78__HKQuantitySeriesSampleQuery_client_deliverEnumerationResults_isFinal_query___block_invoke_2;
    v23[3] = &unk_1E737D568;
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v24 = v21;
    v25 = v22;
    v26 = &v28;
    v27 = *(a1 + 56);
    [v18 queue_dispatchToClientForUUID:v19 shouldDeactivate:v20 block:v23];
  }

  _Block_object_dispose(&v28, 8);
}

void __78__HKQuantitySeriesSampleQuery_client_deliverEnumerationResults_isFinal_query___block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) results];
  v3 = [v2 count];

  if (v3)
  {
    v31 = [*(a1 + 40) deactivateCallCount];
    v6 = [*(a1 + 40) objectType];
    v32 = [v6 canonicalUnit];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [*(a1 + 32) results];
    v30 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v30)
    {
      v29 = *v34;
LABEL_4:
      v7 = 0;
      v8 = v3 - 1;
      while (1)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * v7);
        if ([*(a1 + 40) deactivateCallCount] > v31)
        {
          break;
        }

        v10 = objc_autoreleasePoolPush();
        [v9 value];
        v11 = [HKQuantity quantityWithUnit:v32 doubleValue:?];
        v12 = MEMORY[0x1E696AFB0];
        v13 = [v9 uuid];
        v14 = [v12 hk_UUIDWithData:v13];

        v15 = [*(a1 + 40) _quantitySampleForEnumerationResult:v9 UUID:v14];
        v16 = *(a1 + 40);
        v17 = *(*(*(a1 + 48) + 8) + 40);
        [v9 startTime];
        v19 = v18;
        [v9 endTime];
        v21.n128_u64[0] = v20;
        if (v8)
        {
          v22 = 0;
        }

        else
        {
          v22 = *(a1 + 56);
        }

        (*(v17 + 16))(v17, v16, v11, v15, v8, v22, 0, v19, v21);

        objc_autoreleasePoolPop(v10);
        ++v7;
        --v8;
        if (v30 == v7)
        {
          v3 = v8 + 1;
          v30 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v30)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v23 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v24 = *(a1 + 40);
    v25 = *(a1 + 56);
    v26 = *(*(*(*(a1 + 48) + 8) + 40) + 16);
    v27 = *MEMORY[0x1E69E9840];
    v4.n128_u64[0] = 0;
    v5.n128_u64[0] = 0;

    v26(v4, v5);
  }
}

- (id)_quantitySampleForEnumerationResult:(id)result UUID:(id)d
{
  resultCopy = result;
  dCopy = d;
  if (self->_includeSample)
  {
    if ([resultCopy hasQuantitySample])
    {
      v8 = MEMORY[0x1E696ACD0];
      v9 = objc_opt_class();
      quantitySample = [resultCopy quantitySample];
      v11 = [v8 unarchivedObjectOfClass:v9 fromData:quantitySample error:0];

      if (!self->_receivedSamplesByUUID)
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        receivedSamplesByUUID = self->_receivedSamplesByUUID;
        self->_receivedSamplesByUUID = v12;
      }

      if ([v11 count] >= 2)
      {
        v14 = [resultCopy seriesIndex] + 1;
        if (v14 < [resultCopy count])
        {
          [(NSMutableDictionary *)self->_receivedSamplesByUUID setObject:v11 forKeyedSubscript:dCopy];
        }
      }
    }

    else
    {
      v11 = [(NSMutableDictionary *)self->_receivedSamplesByUUID objectForKeyedSubscript:dCopy];
      v16 = [resultCopy seriesIndex] + 1;
      if (v16 >= [resultCopy count])
      {
        [(NSMutableDictionary *)self->_receivedSamplesByUUID removeObjectForKey:dCopy];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)queue_populateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8.receiver = self;
  v8.super_class = HKQuantitySeriesSampleQuery;
  [(HKQuery *)&v8 queue_populateConfiguration:configurationCopy];
  [configurationCopy setQuantitySample:self->_sample];
  [configurationCopy setSeriesAnchor:self->_anchor];
  [configurationCopy setMode:self->_seriesHandler == 0];
  if (self->_orderByQuantitySampleStartDate)
  {
    includeSample = self->_includeSample | 2;
  }

  else
  {
    includeSample = self->_includeSample;
  }

  [configurationCopy setOptions:includeSample];
  if (self->_hasMaximumReceivedStartTime)
  {
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_maximumReceivedStartTime];
    [configurationCopy setMaximumStartDate:v6];
  }

  else
  {
    [configurationCopy setMaximumStartDate:0];
  }

  v7 = [MEMORY[0x1E696AFB0] hk_UUIDWithData:self->_latestReceivedUUIDData];
  [configurationCopy setLatestUUID:v7];

  [configurationCopy setLatestSampleStartDate:self->_latestSampleStartDate];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_seriesHandler);
  v6 = _Block_copy(self->_quantityBatchHandler);
  v7 = v6;
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__HKQuantitySeriesSampleQuery_queue_deliverError___block_invoke;
    v15[3] = &unk_1E7376618;
    v9 = &v17;
    v17 = v5;
    v15[4] = self;
    v10 = &v16;
    v16 = errorCopy;
    v11 = v15;
LABEL_5:
    dispatch_async(clientQueue, v11);

    goto LABEL_6;
  }

  if (v6)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__HKQuantitySeriesSampleQuery_queue_deliverError___block_invoke_2;
    v12[3] = &unk_1E7376618;
    v9 = &v14;
    v14 = v7;
    v12[4] = self;
    v10 = &v13;
    v13 = errorCopy;
    v11 = v12;
    goto LABEL_5;
  }

LABEL_6:
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v6.receiver = self;
  v6.super_class = HKQuantitySeriesSampleQuery;
  [(HKQuery *)&v6 queue_queryDidDeactivate:deactivate];
  seriesHandler = self->_seriesHandler;
  self->_seriesHandler = 0;

  quantityBatchHandler = self->_quantityBatchHandler;
  self->_quantityBatchHandler = 0;
}

@end