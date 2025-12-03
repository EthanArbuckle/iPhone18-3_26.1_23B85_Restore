@interface VCMediaRecorderDataCollector
- (VCMediaRecorderDataCollector)initWithDispatchQueue:(id)queue;
- (void)addAggregatedMediaRecorderMetricsToReport:(id)report;
- (void)dealloc;
- (void)updateLivePhotoMediaRecorderEventStats:(id)stats;
- (void)updateMediaRecorderEventStats:(id)stats;
- (void)updateMediaRecordingMediaRecorderEventStats:(id)stats;
@end

@implementation VCMediaRecorderDataCollector

- (VCMediaRecorderDataCollector)initWithDispatchQueue:(id)queue
{
  v6.receiver = self;
  v6.super_class = VCMediaRecorderDataCollector;
  v4 = [(VCMediaRecorderDataCollector *)&v6 init];
  if (!v4)
  {
    [VCMediaRecorderDataCollector initWithDispatchQueue:];
LABEL_7:

    return 0;
  }

  if (!queue)
  {
    [VCMediaRecorderDataCollector initWithDispatchQueue:];
    goto LABEL_7;
  }

  dispatch_retain(queue);
  v4->_stateQueue = queue;
  v4->_mediaRecorderMediaTypeHistogram = [[VCReportingHistogram alloc] initWithType:54 bucketValues:0];
  v4->_mediaRecorderResultsHistogram = [[VCReportingHistogram alloc] initWithType:55 bucketValues:0];
  v4->_mediaRecorderFileSizeHistogram = [[VCReportingHistogram alloc] initWithType:56 bucketValues:0];
  v4->_mediaRecorderMessageLengthHistogram = [[VCReportingHistogram alloc] initWithType:57 bucketValues:0];
  v4->_mediaRecorderThermalHistogram = [[VCReportingHistogram alloc] initWithType:88 bucketValues:0];
  v4->_thermalLevel = 0;
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
  v4.super_class = VCMediaRecorderDataCollector;
  [(VCMediaRecorderDataCollector *)&v4 dealloc];
}

- (void)updateMediaRecordingMediaRecorderEventStats:(id)stats
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if ([stats objectForKeyedSubscript:@"VCMRFileSize"])
  {
    v5 = [objc_msgSend(stats objectForKeyedSubscript:{@"VCMRFileSize", "unsignedLongLongValue"}];
    if (v5 >= 0xFFFFFFFF)
    {
      v6 = 0xFFFFFFFFLL;
    }

    else
    {
      v6 = v5;
    }

    [(VCHistogram *)self->_mediaRecorderFileSizeHistogram addValue:v6];
    -[VCHistogram addValue:](self->_mediaRecorderMediaTypeHistogram, "addValue:", [objc_msgSend(stats objectForKeyedSubscript:{@"VCMRMediaType", "intValue"}]);
    [objc_msgSend(stats objectForKeyedSubscript:{@"VCMRFileLength", "doubleValue"}];
    [(VCHistogram *)self->_mediaRecorderMessageLengthHistogram addValue:v7];
    ++self->_mediaRecorderCaptureTotal;
  }

  else if ([stats objectForKeyedSubscript:@"VCMRFinishDidSucceed"])
  {
    -[VCHistogram addValue:](self->_mediaRecorderResultsHistogram, "addValue:", [objc_msgSend(stats objectForKeyedSubscript:{@"VCMRFinishDidSucceed", "BOOLValue"}]);
  }

  v8 = [stats objectForKeyedSubscript:@"VCMRFinishDidSucceed"];
  if (v8)
  {
    if (([v8 BOOLValue] & 1) == 0)
    {
      ++self->_mediaRecorderCaptureFailure;
    }
  }
}

- (void)updateLivePhotoMediaRecorderEventStats:(id)stats
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v5 = [objc_msgSend(stats objectForKeyedSubscript:{@"VCMRFileSize", "unsignedLongLongValue"}];
  if (v5 >= 0xFFFFFFFF)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = v5;
  }

  [(VCHistogram *)self->_mediaRecorderFileSizeHistogram addValue:v6];
  -[VCHistogram addValue:](self->_mediaRecorderMediaTypeHistogram, "addValue:", [objc_msgSend(stats objectForKeyedSubscript:{@"VCMRMediaType", "intValue"}]);
  v7 = [objc_msgSend(stats objectForKeyedSubscript:{@"VCMRFinishDidSucceed", "BOOLValue"}];
  [(VCHistogram *)self->_mediaRecorderResultsHistogram addValue:v7];
  [(VCHistogram *)self->_mediaRecorderThermalHistogram addValue:self->_thermalLevel];
  ++self->_mediaRecorderCaptureTotal;
  if ((v7 & 1) == 0)
  {
    ++self->_mediaRecorderCaptureFailure;
  }
}

- (void)updateMediaRecorderEventStats:(id)stats
{
  if ([stats objectForKeyedSubscript:@"VCMRMode"])
  {
    v5 = [objc_msgSend(stats objectForKeyedSubscript:{@"VCMRMode", "charValue"}];
    if (v5 == 1)
    {

      [(VCMediaRecorderDataCollector *)self updateLivePhotoMediaRecorderEventStats:stats];
    }

    else if (!v5)
    {

      [(VCMediaRecorderDataCollector *)self updateMediaRecordingMediaRecorderEventStats:stats];
    }
  }
}

- (void)addAggregatedMediaRecorderMetricsToReport:(id)report
{
  dispatch_assert_queue_V2(self->_stateQueue);
  [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", self->_mediaRecorderCaptureTotal), @"LPhotoT"}];
  [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", self->_mediaRecorderCaptureFailure), @"LPhotoF"}];
  [report setObject:-[VCHistogram description](self->_mediaRecorderFileSizeHistogram forKeyedSubscript:{"description"), @"MRFS"}];
  [report setObject:-[VCHistogram description](self->_mediaRecorderMessageLengthHistogram forKeyedSubscript:{"description"), @"MRML"}];
  [report setObject:-[VCHistogram description](self->_mediaRecorderMediaTypeHistogram forKeyedSubscript:{"description"), @"MRType"}];
  [report setObject:-[VCHistogram description](self->_mediaRecorderResultsHistogram forKeyedSubscript:{"description"), @"MRSuccess"}];
  v5 = [(VCHistogram *)self->_mediaRecorderThermalHistogram description];

  [report setObject:v5 forKeyedSubscript:@"MRTHRM"];
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
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d Failed to super initialize VCMediaRecorderDataCollector", v3, v4, v5, v6, 2u);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

@end