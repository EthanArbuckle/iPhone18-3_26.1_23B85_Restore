@interface HKElectrocardiogramQuery
- (HKElectrocardiogramQuery)initWithElectrocardiogram:(HKElectrocardiogram *)electrocardiogram dataHandler:(void *)dataHandler;
- (HKElectrocardiogramQuery)initWithElectrocardiogram:(id)electrocardiogram lead:(int64_t)lead dataHandler:(id)handler;
- (HKElectrocardiogramQuery)initWithElectrocardiogram:(id)electrocardiogram sampleHandler:(id)handler;
- (void)_enumerateMeasurementsForElectrocardiogram:(id)electrocardiogram handler:(id)handler;
- (void)client_deliverData;
- (void)queue_deliverError:(id)error;
- (void)queue_queryDidDeactivate:(id)deactivate;
@end

@implementation HKElectrocardiogramQuery

- (HKElectrocardiogramQuery)initWithElectrocardiogram:(id)electrocardiogram lead:(int64_t)lead dataHandler:(id)handler
{
  electrocardiogramCopy = electrocardiogram;
  handlerCopy = handler;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__HKElectrocardiogramQuery_initWithElectrocardiogram_lead_dataHandler___block_invoke;
  v12[3] = &unk_1E737F308;
  selfCopy = self;
  v9 = handlerCopy;
  v14 = v9;
  v15 = v16;
  v10 = [(HKElectrocardiogramQuery *)selfCopy initWithElectrocardiogram:electrocardiogramCopy dataHandler:v12];

  _Block_object_dispose(v16, 8);
  return v10;
}

void __71__HKElectrocardiogramQuery_initWithElectrocardiogram_lead_dataHandler___block_invoke(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = *(a1[4] + 160);
  v9 = a5;
  v10 = a2;
  v11 = [a3 quantityForLead:v8];
  v12 = [HKUnit voltUnitWithMetricPrefix:3];
  [v11 doubleValueForUnit:v12];
  v14 = v13;

  v15 = *(*(a1[6] + 8) + 24);
  (*(a1[5] + 16))(v14);

  ++*(*(a1[6] + 8) + 24);
}

- (HKElectrocardiogramQuery)initWithElectrocardiogram:(HKElectrocardiogram *)electrocardiogram dataHandler:(void *)dataHandler
{
  v7 = electrocardiogram;
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
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "electrocardiogram"}];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "dataHandler"}];
LABEL_3:
  v10 = +[(HKObjectType *)HKElectrocardiogramType];
  v17.receiver = self;
  v17.super_class = HKElectrocardiogramQuery;
  v11 = [(HKQuery *)&v17 _initWithObjectType:v10 predicate:0];

  if (v11)
  {
    objc_storeStrong(&v11->_electrocardiogram, electrocardiogram);
    v11->_lead = 1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__HKElectrocardiogramQuery_initWithElectrocardiogram_dataHandler___block_invoke;
    aBlock[3] = &unk_1E737F330;
    v16 = v9;
    v12 = _Block_copy(aBlock);
    sampleHandler = v11->_sampleHandler;
    v11->_sampleHandler = v12;
  }

  return v11;
}

uint64_t __66__HKElectrocardiogramQuery_initWithElectrocardiogram_dataHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    return [a2 _enumerateMeasurementsForElectrocardiogram:a3 handler:{v5, a4}];
  }

  else
  {
    return (*(v5 + 16))(*(a1 + 32), a2, 0, 1, a4);
  }
}

- (HKElectrocardiogramQuery)initWithElectrocardiogram:(id)electrocardiogram sampleHandler:(id)handler
{
  electrocardiogramCopy = electrocardiogram;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (electrocardiogramCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "electrocardiogram"}];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "sampleHandler"}];
LABEL_3:
  v10 = +[(HKObjectType *)HKElectrocardiogramType];
  v15.receiver = self;
  v15.super_class = HKElectrocardiogramQuery;
  v11 = [(HKQuery *)&v15 _initWithObjectType:v10 predicate:0];

  if (v11)
  {
    objc_storeStrong(&v11->_electrocardiogram, electrocardiogram);
    v11->_lead = 1;
    v12 = [v9 copy];
    sampleHandler = v11->_sampleHandler;
    v11->_sampleHandler = v12;
  }

  return v11;
}

- (void)client_deliverData
{
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__HKElectrocardiogramQuery_client_deliverData__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __46__HKElectrocardiogramQuery_client_deliverData__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 168));
  v3 = *(*(a1 + 32) + 152);
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = [v4 activationUUID];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__HKElectrocardiogramQuery_client_deliverData__block_invoke_2;
    v8[3] = &unk_1E7376618;
    v6 = v2;
    v7 = *(a1 + 32);
    v10 = v6;
    v8[4] = v7;
    v9 = v3;
    [v4 queue_dispatchToClientForUUID:v5 shouldDeactivate:1 block:v8];
  }
}

- (void)_enumerateMeasurementsForElectrocardiogram:(id)electrocardiogram handler:(id)handler
{
  electrocardiogramCopy = electrocardiogram;
  handlerCopy = handler;
  if ([electrocardiogramCopy numberOfVoltageMeasurements])
  {
    deactivateCallCount = [(HKQuery *)self deactivateCallCount];
    voltageMeasurementEnumerator = [electrocardiogramCopy voltageMeasurementEnumerator];
    nextObject = [voltageMeasurementEnumerator nextObject];
    if (nextObject)
    {
      v10 = nextObject;
      while (1)
      {
        v11 = objc_autoreleasePoolPush();
        if ([(HKQuery *)self deactivateCallCount]> deactivateCallCount)
        {
          break;
        }

        nextObject2 = [voltageMeasurementEnumerator nextObject];
        handlerCopy[2](handlerCopy, self, v10, nextObject2 == 0, 0);

        objc_autoreleasePoolPop(v11);
        v10 = nextObject2;
        if (!nextObject2)
        {
          goto LABEL_9;
        }
      }

      objc_autoreleasePoolPop(v11);
    }

LABEL_9:
  }

  else
  {
    handlerCopy[2](handlerCopy, self, 0, 1, 0);
  }
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_sampleHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__HKElectrocardiogramQuery_queue_deliverError___block_invoke;
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
  v5.super_class = HKElectrocardiogramQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  sampleHandler = self->_sampleHandler;
  self->_sampleHandler = 0;
}

@end