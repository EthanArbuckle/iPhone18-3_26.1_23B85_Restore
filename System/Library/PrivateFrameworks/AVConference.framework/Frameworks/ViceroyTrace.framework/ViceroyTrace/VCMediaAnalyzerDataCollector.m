@interface VCMediaAnalyzerDataCollector
- (VCMediaAnalyzerDataCollector)initWithDispatchQueue:(id)a3;
- (void)addAggregatedMediaAnalyzerMetricsToReport:(id)a3;
- (void)dealloc;
- (void)processMediaAnalyzerMetrics:(id)a3;
@end

@implementation VCMediaAnalyzerDataCollector

- (VCMediaAnalyzerDataCollector)initWithDispatchQueue:(id)a3
{
  v6.receiver = self;
  v6.super_class = VCMediaAnalyzerDataCollector;
  v4 = [(VCMediaAnalyzerDataCollector *)&v6 init];
  if (!v4)
  {
    [VCMediaAnalyzerDataCollector initWithDispatchQueue:];
LABEL_7:

    return 0;
  }

  if (!a3)
  {
    [VCMediaAnalyzerDataCollector initWithDispatchQueue:];
    goto LABEL_7;
  }

  dispatch_retain(a3);
  v4->_stateQueue = a3;
  v4->_mediaAnalyzerLastEnabledTime = NAN;
  v4->_mediaAnalyzerMeanProcessingTimesHistogram = [[VCReportingHistogram alloc] initWithType:53 bucketValues:0];
  return v4;
}

- (void)dealloc
{
  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
  }

  v4.receiver = self;
  v4.super_class = VCMediaAnalyzerDataCollector;
  [(VCMediaAnalyzerDataCollector *)&v4 dealloc];
}

- (void)processMediaAnalyzerMetrics:(id)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if ([a3 objectForKeyedSubscript:@"MAMPT"])
  {
    [objc_msgSend(a3 objectForKeyedSubscript:{@"MAMPT", "doubleValue"}];
    LODWORD(v6) = vcvtad_u64_f64(v5);
    mediaAnalyzerMeanProcessingTimesHistogram = self->_mediaAnalyzerMeanProcessingTimesHistogram;

    [(VCHistogram *)mediaAnalyzerMeanProcessingTimesHistogram addValue:v6];
  }
}

- (void)addAggregatedMediaAnalyzerMetricsToReport:(id)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_isMediaAnalyzerEnabled), @"VCMAE"}];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_mediaAnalyzerEnabledDuration), @"VCMAED"}];
  v5 = [(VCHistogram *)self->_mediaAnalyzerMeanProcessingTimesHistogram description];

  [a3 setObject:v5 forKeyedSubscript:@"VCMAMPT"];
}

- (void)initWithDispatchQueue:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d Invalid dispatchQueue provided", v3, v4, v5, v6, 2u);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)initWithDispatchQueue:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d Failed to super initialize VCCaptionsDataCollector", v3, v4, v5, v6, 2u);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

@end