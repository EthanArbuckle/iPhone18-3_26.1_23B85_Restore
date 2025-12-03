@interface VCVoiceIsolationData
- (VCVoiceIsolationData)init;
- (void)dealloc;
- (void)init;
- (void)updateDataWithTime:(double)time;
- (void)updateReport:(id)report;
- (void)updateStateWithPayload:(id)payload withTime:(double)time;
@end

@implementation VCVoiceIsolationData

- (VCVoiceIsolationData)init
{
  v5.receiver = self;
  v5.super_class = VCVoiceIsolationData;
  v2 = [(VCVoiceIsolationData *)&v5 init];
  if (!v2)
  {
    [VCVoiceIsolationData init];
LABEL_6:

    return 0;
  }

  v3 = [[VCReportingHistogram alloc] initWithType:88 bucketValues:0];
  v2->_voiceIsolationThermalHistogram = v3;
  if (!v3)
  {
    [(VCVoiceIsolationData *)v2 init];
    goto LABEL_6;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCVoiceIsolationData;
  [(VCVoiceIsolationData *)&v3 dealloc];
}

- (void)updateStateWithPayload:(id)payload withTime:(double)time
{
  if ([payload objectForKeyedSubscript:@"MicMode"])
  {
    [(VCVoiceIsolationData *)self updateDataWithTime:time];
    v7 = [objc_msgSend(payload objectForKeyedSubscript:{@"MicMode", "intValue"}];
    if (self->_currentMicMode != v7 && v7 == 2)
    {
      self->_startTime = time;
      ++self->_voiceIsolationEnabledCount;
    }

    self->_currentMicMode = v7;
  }
}

- (void)updateDataWithTime:(double)time
{
  startTime = self->_startTime;
  if (startTime != 0.0)
  {
    if (self->_currentMicMode != 2)
    {
      return;
    }

    LODWORD(v3) = vcvtad_u64_f64((time - startTime) * 1000.0);
    [(VCHistogram *)self->_voiceIsolationThermalHistogram addOnlyExactMatchingValue:self->_thermalLevel increment:v3];
  }

  self->_startTime = time;
}

- (void)updateReport:(id)report
{
  [report setObject:-[VCHistogram description](self->_voiceIsolationThermalHistogram forKeyedSubscript:{"description"), @"VIDUR"}];
  v5 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_voiceIsolationEnabledCount];

  [report setObject:v5 forKeyedSubscript:@"VICNT"];
}

- (void)init
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

@end