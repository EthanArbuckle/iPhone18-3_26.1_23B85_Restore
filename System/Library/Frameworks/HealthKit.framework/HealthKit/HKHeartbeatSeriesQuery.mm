@interface HKHeartbeatSeriesQuery
- (HKHeartbeatSeriesQuery)initWithHeartbeatSeries:(HKHeartbeatSeriesSample *)heartbeatSeries dataHandler:(void *)dataHandler;
- (HKHeartbeatSeriesQuery)initWithHeartbeatSeries:(id)series bufferHandler:(id)handler;
- (void)_enumerateHeartbeatData:(id)data final:(BOOL)final handler:(id)handler;
- (void)client_deliverHeartbeats;
- (void)queue_deliverError:(id)error;
- (void)queue_queryDidDeactivate:(id)deactivate;
@end

@implementation HKHeartbeatSeriesQuery

- (HKHeartbeatSeriesQuery)initWithHeartbeatSeries:(HKHeartbeatSeriesSample *)heartbeatSeries dataHandler:(void *)dataHandler
{
  v7 = heartbeatSeries;
  v8 = dataHandler;
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
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "heartbeatSeries"}];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "dataHandler"}];
LABEL_3:
  v10 = +[HKSeriesType heartbeatSeriesType];
  v19.receiver = self;
  v19.super_class = HKHeartbeatSeriesQuery;
  v11 = [(HKQuery *)&v19 _initWithObjectType:v10 predicate:0];

  if (v11)
  {
    objc_initWeak(&location, v11);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__HKHeartbeatSeriesQuery_initWithHeartbeatSeries_dataHandler___block_invoke;
    aBlock[3] = &unk_1E737AA18;
    objc_copyWeak(&v17, &location);
    v16 = v9;
    v12 = _Block_copy(aBlock);
    bufferHandler = v11->_bufferHandler;
    v11->_bufferHandler = v12;

    objc_storeStrong(&v11->_heartbeatSeries, heartbeatSeries);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __62__HKHeartbeatSeriesQuery_initWithHeartbeatSeries_dataHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _enumerateHeartbeatData:v7 final:a4 handler:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))(0.0);
  }
}

- (HKHeartbeatSeriesQuery)initWithHeartbeatSeries:(id)series bufferHandler:(id)handler
{
  seriesCopy = series;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (seriesCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "heartbeatSeries"}];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "bufferHandler"}];
LABEL_3:
  v10 = +[HKSeriesType heartbeatSeriesType];
  v15.receiver = self;
  v15.super_class = HKHeartbeatSeriesQuery;
  v11 = [(HKQuery *)&v15 _initWithObjectType:v10 predicate:0];

  if (v11)
  {
    v12 = [v9 copy];
    bufferHandler = v11->_bufferHandler;
    v11->_bufferHandler = v12;

    objc_storeStrong(&v11->_heartbeatSeries, series);
  }

  return v11;
}

- (void)client_deliverHeartbeats
{
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__HKHeartbeatSeriesQuery_client_deliverHeartbeats__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __50__HKHeartbeatSeriesQuery_client_deliverHeartbeats__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 152));
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 activationUUID];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__HKHeartbeatSeriesQuery_client_deliverHeartbeats__block_invoke_2;
    v6[3] = &unk_1E7376AC0;
    v5 = v2;
    v6[4] = *(a1 + 32);
    v7 = v5;
    [v3 queue_dispatchToClientForUUID:v4 shouldDeactivate:1 block:v6];
  }
}

void __50__HKHeartbeatSeriesQuery_client_deliverHeartbeats__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = [*(v2 + 160) heartbeatData];
  (*(v1 + 16))(v1, v2, v3, 1, 0);
}

- (void)_enumerateHeartbeatData:(id)data final:(BOOL)final handler:(id)handler
{
  finalCopy = final;
  v20 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  handlerCopy = handler;
  v10 = [dataCopy length];
  deactivateCallCount = [(HKQuery *)self deactivateCallCount];
  if (v10 >= 0x10)
  {
    v12 = deactivateCallCount;
    v13 = 0;
    v14 = v10 >> 4;
    do
    {
      if ([(HKQuery *)self deactivateCallCount]> v12)
      {
        break;
      }

      [dataCopy getBytes:&v18 range:{v13, 16}];
      v15.n128_u64[0] = v18;
      v16 = !--v14 && finalCopy;
      handlerCopy[2](handlerCopy, self, v19 != 0, v16, 0, v15);
      v13 += 16;
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_bufferHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__HKHeartbeatSeriesQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKHeartbeatSeriesQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  bufferHandler = self->_bufferHandler;
  self->_bufferHandler = 0;
}

@end