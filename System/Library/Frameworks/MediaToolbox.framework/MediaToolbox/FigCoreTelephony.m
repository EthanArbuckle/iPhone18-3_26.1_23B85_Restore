@interface FigCoreTelephony
- (FigCoreTelephony)initWithError:(id *)a3;
- (id)getLatestCellStats;
- (void)dealloc;
- (void)saveCarrierName;
- (void)updateCellStatsWithLatestSignalStrengthInfo:(id)a3;
- (void)withCellStatsLock:(id)a3;
@end

@implementation FigCoreTelephony

- (void)withCellStatsLock:(id)a3
{
  v3 = a3;
  if (FigSimpleMutexLock())
  {
    [FigCoreTelephony withCellStatsLock:];
  }

  v3[2]();
  if (FigSimpleMutexUnlock())
  {
    [FigCoreTelephony withCellStatsLock:];
  }
}

- (id)getLatestCellStats
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__10;
  v9 = __Block_byref_object_dispose__10;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__FigCoreTelephony_getLatestCellStats__block_invoke;
  v4[3] = &unk_1E74913D8;
  v4[4] = self;
  v4[5] = &v5;
  [(FigCoreTelephony *)self withCellStatsLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (FigCoreTelephony)initWithError:(id *)a3
{
  v17.receiver = self;
  v17.super_class = FigCoreTelephony;
  v4 = [(FigCoreTelephony *)&v17 init];
  if (!v4 || (v5 = objc_alloc(MEMORY[0x1E69650A0]), FigThreadGetGlobalNetworkBufferingLowPriorityQueue(), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 initWithQueue:v6], ctClient = v4->ctClient, v4->ctClient = v7, ctClient, v6, !v4->ctClient) || (v9 = FigReentrantMutexCreate(), (v4->_cellStatsLock = v9) == 0))
  {
    [FigCoreWiFi initWithError:?];
    v12 = 0;
    v13 = v18;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [(CoreTelephonyClient *)v4->ctClient setDelegate:v4];
  v10 = v4->ctClient;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __34__FigCoreTelephony_initWithError___block_invoke;
  v15[3] = &unk_1E7491470;
  v11 = v4;
  v16 = v11;
  [(CoreTelephonyClient *)v10 getCurrentDataServiceDescriptor:v15];

  v12 = v11;
  v13 = 0;
  if (a3)
  {
LABEL_5:
    v13 = v13;
    *a3 = v13;
  }

LABEL_6:

  return v12;
}

- (void)saveCarrierName
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v3 = [(CoreTelephonyClient *)self->ctClient getPreferredDataSubscriptionContextSync:0];
  if (!v3)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v4 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];
  if (!v4)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_6;
  }

  ctClient = self->ctClient;
  v6 = (v13 + 5);
  obj = v13[5];
  v7 = [(CoreTelephonyClient *)ctClient copyCarrierBundleValue:v3 key:@"CarrierName" bundleType:v4 error:&obj];
  objc_storeStrong(v6, obj);
  if (!v13[5] && v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__FigCoreTelephony_saveCarrierName__block_invoke;
    v8[3] = &unk_1E7491498;
    v8[4] = self;
    v7 = v7;
    v9 = v7;
    v10 = &v12;
    [(FigCoreTelephony *)self withCellStatsLock:v8];
  }

LABEL_6:

  _Block_object_dispose(&v12, 8);
}

void __35__FigCoreTelephony_saveCarrierName__block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v3 getEnglishCarrierNameFor:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = a1[4];
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;
}

- (void)dealloc
{
  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = FigCoreTelephony;
  [(FigCoreTelephony *)&v3 dealloc];
}

- (void)updateCellStatsWithLatestSignalStrengthInfo:(id)a3
{
  v4 = a3;
  if (self->carrierName)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v5)
    {
      ctClient = self->ctClient;
      v22 = 0;
      v7 = [(CoreTelephonyClient *)ctClient getCurrentDataServiceDescriptorSync:&v22];
      v8 = v22;
      if (v8)
      {
        v18 = v8;
        v10 = 0;
        goto LABEL_7;
      }

      v9 = self->ctClient;
      v21 = 0;
      v10 = [(CoreTelephonyClient *)v9 getSignalStrengthMeasurements:v7 error:&v21];
      v11 = v21;
      if (v11)
      {
        v18 = v11;
        goto LABEL_7;
      }

      v12 = [v10 rssi];
      OUTLINED_FUNCTION_12_51();

      v13 = [v10 rsrp];
      OUTLINED_FUNCTION_12_51();

      v14 = [v10 rscp];
      OUTLINED_FUNCTION_12_51();

      v15 = [v10 rsrq];
      OUTLINED_FUNCTION_12_51();

      v16 = [v10 snr];
      OUTLINED_FUNCTION_12_51();

      v17 = [v4 bars];
      OUTLINED_FUNCTION_12_51();

      [v5 setValue:self->carrierName forKey:@"carrier"];
    }

    else
    {
      v7 = 0;
      v10 = 0;
    }
  }

  else
  {
    v7 = 0;
    v10 = 0;
    v5 = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __64__FigCoreTelephony_updateCellStatsWithLatestSignalStrengthInfo___block_invoke;
  v19[3] = &unk_1E7491400;
  v19[4] = self;
  v5 = v5;
  v20 = v5;
  [(FigCoreTelephony *)self withCellStatsLock:v19];

  v18 = 0;
LABEL_7:
}

void __34__FigCoreTelephony_initWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E6965090] contextWithServiceDescriptor:a2];
    if (v5)
    {
      v8 = v5;
      v6 = [*(*(a1 + 32) + 8) getSignalStrengthInfo:v5 error:0];
      if (v6)
      {
        v7 = v6;
        [*(a1 + 32) saveCarrierName];
        [*(a1 + 32) updateCellStatsWithLatestSignalStrengthInfo:v7];
      }

      v5 = v8;
    }
  }
}

- (void)withCellStatsLock:.cold.1()
{
  OUTLINED_FUNCTION_187();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_403();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)withCellStatsLock:.cold.2()
{
  OUTLINED_FUNCTION_187();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_403();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end