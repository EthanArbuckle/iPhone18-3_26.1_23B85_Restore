@interface VCAggregatorVideoMessaging
- (VCAggregatorVideoMessaging)initWithDelegate:(id)a3;
- (id)aggregatedCallReports;
- (id)dispatchedVideoMessagingAggregatedReport;
@end

@implementation VCAggregatorVideoMessaging

- (VCAggregatorVideoMessaging)initWithDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = VCAggregatorVideoMessaging;
  v3 = [(VCAggregator *)&v5 initWithDelegate:a3 nwParentActivity:0];
  if (!v3)
  {
    [VCAggregatorVideoMessaging initWithDelegate:];
  }

  return v3;
}

- (id)dispatchedVideoMessagingAggregatedReport
{
  dispatch_assert_queue_V2(self->super._stateQueue);
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(VCMediaRecorderDataCollector *)[(VCAggregator *)self mediaRecorderDataCollector] addAggregatedMediaRecorderMetricsToReport:v3];
  return v3;
}

- (id)aggregatedCallReports
{
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  stateQueue = self->super._stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__VCAggregatorVideoMessaging_aggregatedCallReports__block_invoke;
  v6[3] = &unk_278BD4C10;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  if (v8[5])
  {
    v13[0] = v8[5];
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v7, 8);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __51__VCAggregatorVideoMessaging_aggregatedCallReports__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dispatchedVideoMessagingAggregatedReport];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)initWithDelegate:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR(3u);
    v1 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315650;
      v4 = v0;
      v5 = 2080;
      v6 = "[VCAggregatorVideoMessaging initWithDelegate:]";
      v7 = 1024;
      v8 = 17;
      _os_log_error_impl(&dword_23D4DF000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d failed to super initialize", &v3, 0x1Cu);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end