@interface VCAggregatorRecordingAndTranscriptionService
- (VCAggregatorRecordingAndTranscriptionService)initWithDelegate:(id)delegate;
- (id)aggregatedCallReports;
- (id)dispatchedAggregatedCallReport;
- (id)reportingAndTranscriptionServiceAggregatedReport;
- (void)dealloc;
- (void)processEventWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload;
- (void)processRecordingAndTranscriptionServiceRealtimeEventWithPayload:(id)payload;
- (void)processRecordingAndTranscriptionServiceUsageWithPayload:(id)payload;
@end

@implementation VCAggregatorRecordingAndTranscriptionService

- (VCAggregatorRecordingAndTranscriptionService)initWithDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = VCAggregatorRecordingAndTranscriptionService;
  v3 = [(VCAggregator *)&v5 initWithDelegate:delegate nwParentActivity:0];
  if (!v3)
  {
    [VCAggregatorRecordingAndTranscriptionService initWithDelegate:];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCAggregatorRecordingAndTranscriptionService;
  [(VCAggregator *)&v3 dealloc];
}

- (void)processRecordingAndTranscriptionServiceUsageWithPayload:(id)payload
{
  dispatch_assert_queue_V2(self->super._stateQueue);
  self->_uuid = [payload objectForKeyedSubscript:@"AMUUID"];
  self->_usage = [objc_msgSend(payload objectForKeyedSubscript:{@"RATSU", "intValue"}];
}

- (void)processRecordingAndTranscriptionServiceRealtimeEventWithPayload:(id)payload
{
  captionsDataCollector = [(VCAggregator *)self captionsDataCollector];

  [(VCCaptionsDataCollector *)captionsDataCollector processCaptionsMetrics:payload];
}

- (void)processEventWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload
{
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__VCAggregatorRecordingAndTranscriptionService_processEventWithCategory_type_payload___block_invoke;
  block[3] = &unk_278BD48B8;
  categoryCopy = category;
  typeCopy = type;
  block[4] = self;
  block[5] = payload;
  dispatch_sync(stateQueue, block);
}

- (id)reportingAndTranscriptionServiceAggregatedReport
{
  v8[2] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->super._stateQueue);
  uuid = self->_uuid;
  if (!uuid)
  {
    uuid = &stru_284F80940;
  }

  v4 = MEMORY[0x277CBEB38];
  v7[0] = @"AAMUUID";
  v7[1] = @"ARATSU";
  v8[0] = uuid;
  v8[1] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:self->_usage];
  result = [v4 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, v7, 2)}];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)dispatchedAggregatedCallReport
{
  dispatch_assert_queue_V2(self->super._stateQueue);
  reportingAndTranscriptionServiceAggregatedReport = [(VCAggregatorRecordingAndTranscriptionService *)self reportingAndTranscriptionServiceAggregatedReport];
  v6.receiver = self;
  v6.super_class = VCAggregatorRecordingAndTranscriptionService;
  [reportingAndTranscriptionServiceAggregatedReport addEntriesFromDictionary:{-[VCAggregator dispatchedAggregatedCallReport](&v6, sel_dispatchedAggregatedCallReport)}];
  [reportingAndTranscriptionServiceAggregatedReport setObject:&unk_284FA5798 forKeyedSubscript:@"RVER"];
  usage = self->_usage;
  if (usage >= 2)
  {
    if (usage == 2)
    {
      [(VCCaptionsDataCollector *)[(VCAggregator *)self captionsDataCollector] addAggregatedCaptionsMetricsToReport:reportingAndTranscriptionServiceAggregatedReport];
    }
  }

  else
  {
    [(VCCaptionsDataCollector *)[(VCAggregator *)self captionsDataCollector] addAggregatedCaptionsMetricsToReport:reportingAndTranscriptionServiceAggregatedReport];
    [(VCMediaRecorderDataCollector *)[(VCAggregator *)self mediaRecorderDataCollector] addAggregatedMediaRecorderMetricsToReport:reportingAndTranscriptionServiceAggregatedReport];
  }

  return reportingAndTranscriptionServiceAggregatedReport;
}

- (id)aggregatedCallReports
{
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  stateQueue = self->super._stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__VCAggregatorRecordingAndTranscriptionService_aggregatedCallReports__block_invoke;
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

uint64_t __69__VCAggregatorRecordingAndTranscriptionService_aggregatedCallReports__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dispatchedAggregatedCallReport];
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
      v6 = "[VCAggregatorRecordingAndTranscriptionService initWithDelegate:]";
      v7 = 1024;
      v8 = 30;
      _os_log_error_impl(&dword_23D4DF000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to super initialize.", &v3, 0x1Cu);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end