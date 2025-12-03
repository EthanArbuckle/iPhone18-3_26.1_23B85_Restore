@interface VCWalkieTalkieData
- (VCWalkieTalkieData)init;
- (void)dealloc;
- (void)init;
- (void)updateDataWithTime:(double)time;
- (void)updateReport:(id)report;
- (void)updateStateWithPayload:(id)payload withTime:(double)time;
@end

@implementation VCWalkieTalkieData

- (VCWalkieTalkieData)init
{
  v5.receiver = self;
  v5.super_class = VCWalkieTalkieData;
  v2 = [(VCWalkieTalkieData *)&v5 init];
  if (!v2)
  {
    [VCWalkieTalkieData init];
LABEL_6:

    return 0;
  }

  v3 = [[VCReportingHistogram alloc] initWithType:88 bucketValues:0];
  v2->_walkieTalkieThermalHistogram = v3;
  if (!v3)
  {
    [(VCWalkieTalkieData *)v2 init];
    goto LABEL_6;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCWalkieTalkieData;
  [(VCWalkieTalkieData *)&v3 dealloc];
}

- (void)updateStateWithPayload:(id)payload withTime:(double)time
{
  if ([payload objectForKeyedSubscript:@"IsWalkieTalkieMode"])
  {
    [(VCWalkieTalkieData *)self updateDataWithTime:time];
    if ([objc_msgSend(payload objectForKeyedSubscript:{@"IsWalkieTalkieMode", "BOOLValue"}])
    {
      self->_startTime = time;
      self->_isWalkieTalkieMode = 1;
    }
  }
}

- (void)updateDataWithTime:(double)time
{
  startTime = self->_startTime;
  if (startTime != 0.0)
  {
    if (!self->_isWalkieTalkieMode)
    {
      return;
    }

    LODWORD(v3) = vcvtad_u64_f64((time - startTime) * 1000.0);
    [(VCHistogram *)self->_walkieTalkieThermalHistogram addOnlyExactMatchingValue:self->_thermalLevel increment:v3];
  }

  self->_startTime = time;
}

- (void)updateReport:(id)report
{
  v4 = [(VCHistogram *)self->_walkieTalkieThermalHistogram description];

  [report setObject:v4 forKeyedSubscript:@"WTDUR"];
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