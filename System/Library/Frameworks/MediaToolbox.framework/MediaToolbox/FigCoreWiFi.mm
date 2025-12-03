@interface FigCoreWiFi
- (FigCoreWiFi)initWithError:(id *)error;
- (id)getLatestWiFiStats;
- (void)dealloc;
- (void)initializeWifiStatsFromCachedData;
- (void)refreshSSIDFromCoreWifiInterface;
- (void)updateWifiStatsWithLinkQualityData:(id)data;
- (void)withWifiStatsLock:(id)lock;
@end

@implementation FigCoreWiFi

- (void)withWifiStatsLock:(id)lock
{
  lockCopy = lock;
  if (FigSimpleMutexLock())
  {
    [FigCoreWiFi withWifiStatsLock:];
  }

  lockCopy[2]();
  if (FigSimpleMutexUnlock())
  {
    [FigCoreWiFi withWifiStatsLock:];
  }
}

- (id)getLatestWiFiStats
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__10;
  v9 = __Block_byref_object_dispose__10;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__FigCoreWiFi_getLatestWiFiStats__block_invoke;
  v4[3] = &unk_1E74913D8;
  v4[4] = self;
  v4[5] = &v5;
  [(FigCoreWiFi *)self withWifiStatsLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)updateWifiStatsWithLinkQualityData:(id)data
{
  dataCopy = data;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__FigCoreWiFi_updateWifiStatsWithLinkQualityData___block_invoke;
  v6[3] = &unk_1E7491400;
  v7 = dataCopy;
  selfCopy = self;
  v5 = dataCopy;
  [(FigCoreWiFi *)self withWifiStatsLock:v6];
}

- (void)refreshSSIDFromCoreWifiInterface
{
  sSID = [(CWFInterface *)self->cwfInterface SSID];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:sSID encoding:4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__FigCoreWiFi_refreshSSIDFromCoreWifiInterface__block_invoke;
  v6[3] = &unk_1E7491400;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(FigCoreWiFi *)self withWifiStatsLock:v6];
}

- (void)initializeWifiStatsFromCachedData
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__FigCoreWiFi_initializeWifiStatsFromCachedData__block_invoke;
  v2[3] = &unk_1E7491428;
  v2[4] = self;
  [(FigCoreWiFi *)self withWifiStatsLock:v2];
}

void __48__FigCoreWiFi_initializeWifiStatsFromCachedData__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [*(*(a1 + 32) + 16) cachedLinkQualityMetric];
  [v2 setValue:v3 forKey:*MEMORY[0x1E69995B8]];

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v2;
  v6 = v2;

  v10 = [*(*(a1 + 32) + 16) SSID];
  v7 = [v10 copy];
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;
}

- (FigCoreWiFi)initWithError:(id *)error
{
  v16.receiver = self;
  v16.super_class = FigCoreWiFi;
  v4 = [(FigCoreWiFi *)&v16 init];
  if (!v4)
  {
    [FigCoreWiFi initWithError:error];
    v12 = 0;
    v10 = 0;
LABEL_8:
    v10 = v10;
    *error = v10;
    goto LABEL_9;
  }

  v5 = FigReentrantMutexCreate();
  v4->_wifiStatsLock = v5;
  if (v5 && (v6 = objc_alloc_init(MEMORY[0x1E69995C8]), v7 = v4->cwfInterface, v4->cwfInterface = v6, v7, (v8 = v4->cwfInterface) != 0))
  {
    [(CWFInterface *)v8 activate];
    [(FigCoreWiFi *)v4 initializeWifiStatsFromCachedData];
    [(CWFInterface *)v4->cwfInterface setEventHandler:&__block_literal_global_71];
    cwfInterface = v4->cwfInterface;
    v15 = 0;
    [(CWFInterface *)cwfInterface startMonitoringEventType:7 error:&v15];
    v10 = v15;
    if (v10 || (v11 = v4->cwfInterface, v14 = 0, [(CWFInterface *)v11 startMonitoringEventType:2 error:&v14], (v10 = v14) != 0))
    {
      v12 = 0;
    }

    else
    {
      v12 = v4;
      v10 = 0;
    }
  }

  else
  {
    [FigCoreWiFi initWithError:?];
    v12 = 0;
    v10 = v17;
  }

  if (error)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v12;
}

void __29__FigCoreWiFi_initWithError___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = +[FigNetworkWirelessReportingInterface globalInterface];
  v3 = [v2 wifiManager];
  v4 = [v6 type];
  if (v4 == 2)
  {
    [v3 refreshSSIDFromCoreWifiInterface];
  }

  else if (v4 == 7)
  {
    v5 = [v6 info];
    [v3 updateWifiStatsWithLinkQualityData:v5];
  }
}

- (void)dealloc
{
  [(CWFInterface *)self->cwfInterface stopMonitoringEventType:2];
  [(CWFInterface *)self->cwfInterface stopMonitoringEventType:7];
  [(CWFInterface *)self->cwfInterface invalidate];
  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = FigCoreWiFi;
  [(FigCoreWiFi *)&v3 dealloc];
}

void __50__FigCoreWiFi_updateWifiStatsWithLinkQualityData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69995B8]];
  bzero(v12, 0x200uLL);
  if (*(*(a1 + 40) + 32))
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v3)
    {
      v4 = [v2 linkQualityMetricData];
      if (v4)
      {
        v5 = v4;
        [v4 getBytes:v12 length:5536];
        v6 = [MEMORY[0x1E696AD98] numberWithShort:v12[1]];
        OUTLINED_FUNCTION_11_53();

        v7 = [v6 numberWithInteger:{objc_msgSend(OUTLINED_FUNCTION_10_52(), "RSSI")}];
        OUTLINED_FUNCTION_11_53();

        v8 = [v7 numberWithUnsignedInteger:{objc_msgSend(OUTLINED_FUNCTION_10_52(), "CCA")}];
        OUTLINED_FUNCTION_11_53();

        v9 = [v8 numberWithInteger:{objc_msgSend(OUTLINED_FUNCTION_10_52(), "noise")}];
        OUTLINED_FUNCTION_11_53();

        [v3 setValue:*(*(a1 + 40) + 32) forKey:@"ssid"];
        [OUTLINED_FUNCTION_10_52() rxRate];
        v10 = [v9 numberWithDouble:?];
        OUTLINED_FUNCTION_11_53();

        [OUTLINED_FUNCTION_10_52() txRate];
        v11 = [v10 numberWithDouble:?];
        OUTLINED_FUNCTION_11_53();

        objc_storeStrong((*(a1 + 40) + 24), v3);
      }
    }
  }

  else
  {
    v3 = 0;
  }
}

- (void)withWifiStatsLock:.cold.1()
{
  OUTLINED_FUNCTION_187();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_403();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)withWifiStatsLock:.cold.2()
{
  OUTLINED_FUNCTION_187();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_403();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)initWithError:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_71();
  result = [v2 errorWithDomain:? code:? userInfo:?];
  *a1 = result;
  return result;
}

- (id)initWithError:(void *)a1 .cold.3(void *a1)
{
  OUTLINED_FUNCTION_7_71();
  result = [v2 errorWithDomain:? code:? userInfo:?];
  *a1 = result;
  return result;
}

@end