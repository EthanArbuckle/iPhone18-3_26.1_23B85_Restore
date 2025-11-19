@interface VCMediaRecorderDataCollector
- (VCMediaRecorderDataCollector)initWithDispatchQueue:(id)a3;
- (void)addAggregatedMediaRecorderMetricsToReport:(id)a3;
- (void)dealloc;
- (void)updateLivePhotoMediaRecorderEventStats:(id)a3;
- (void)updateMediaRecorderEventStats:(id)a3;
- (void)updateMediaRecordingMediaRecorderEventStats:(id)a3;
@end

@implementation VCMediaRecorderDataCollector

- (VCMediaRecorderDataCollector)initWithDispatchQueue:(id)a3
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

  if (!a3)
  {
    [VCMediaRecorderDataCollector initWithDispatchQueue:];
    goto LABEL_7;
  }

  dispatch_retain(a3);
  v4->_stateQueue = a3;
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

- (void)updateMediaRecordingMediaRecorderEventStats:(id)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if ([a3 objectForKeyedSubscript:@"VCMRFileSize"])
  {
    v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMRFileSize", "unsignedLongLongValue"}];
    if (v5 >= 0xFFFFFFFF)
    {
      v6 = 0xFFFFFFFFLL;
    }

    else
    {
      v6 = v5;
    }

    [(VCHistogram *)self->_mediaRecorderFileSizeHistogram addValue:v6];
    -[VCHistogram addValue:](self->_mediaRecorderMediaTypeHistogram, "addValue:", [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMRMediaType", "intValue"}]);
    [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMRFileLength", "doubleValue"}];
    [(VCHistogram *)self->_mediaRecorderMessageLengthHistogram addValue:v7];
    ++self->_mediaRecorderCaptureTotal;
  }

  else if ([a3 objectForKeyedSubscript:@"VCMRFinishDidSucceed"])
  {
    -[VCHistogram addValue:](self->_mediaRecorderResultsHistogram, "addValue:", [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMRFinishDidSucceed", "BOOLValue"}]);
  }

  v8 = [a3 objectForKeyedSubscript:@"VCMRFinishDidSucceed"];
  if (v8)
  {
    if (([v8 BOOLValue] & 1) == 0)
    {
      ++self->_mediaRecorderCaptureFailure;
    }
  }
}

- (void)updateLivePhotoMediaRecorderEventStats:(id)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMRFileSize", "unsignedLongLongValue"}];
  if (v5 >= 0xFFFFFFFF)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = v5;
  }

  [(VCHistogram *)self->_mediaRecorderFileSizeHistogram addValue:v6];
  -[VCHistogram addValue:](self->_mediaRecorderMediaTypeHistogram, "addValue:", [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMRMediaType", "intValue"}]);
  v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMRFinishDidSucceed", "BOOLValue"}];
  [(VCHistogram *)self->_mediaRecorderResultsHistogram addValue:v7];
  [(VCHistogram *)self->_mediaRecorderThermalHistogram addValue:self->_thermalLevel];
  ++self->_mediaRecorderCaptureTotal;
  if ((v7 & 1) == 0)
  {
    ++self->_mediaRecorderCaptureFailure;
  }
}

- (void)updateMediaRecorderEventStats:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"VCMRMode"])
  {
    v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMRMode", "charValue"}];
    if (v5 == 1)
    {

      [(VCMediaRecorderDataCollector *)self updateLivePhotoMediaRecorderEventStats:a3];
    }

    else if (!v5)
    {

      [(VCMediaRecorderDataCollector *)self updateMediaRecordingMediaRecorderEventStats:a3];
    }
  }
}

- (void)addAggregatedMediaRecorderMetricsToReport:(id)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", self->_mediaRecorderCaptureTotal), @"LPhotoT"}];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", self->_mediaRecorderCaptureFailure), @"LPhotoF"}];
  [a3 setObject:-[VCHistogram description](self->_mediaRecorderFileSizeHistogram forKeyedSubscript:{"description"), @"MRFS"}];
  [a3 setObject:-[VCHistogram description](self->_mediaRecorderMessageLengthHistogram forKeyedSubscript:{"description"), @"MRML"}];
  [a3 setObject:-[VCHistogram description](self->_mediaRecorderMediaTypeHistogram forKeyedSubscript:{"description"), @"MRType"}];
  [a3 setObject:-[VCHistogram description](self->_mediaRecorderResultsHistogram forKeyedSubscript:{"description"), @"MRSuccess"}];
  v5 = [(VCHistogram *)self->_mediaRecorderThermalHistogram description];

  [a3 setObject:v5 forKeyedSubscript:@"MRTHRM"];
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