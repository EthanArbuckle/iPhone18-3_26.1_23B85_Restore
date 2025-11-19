@interface VCRelayData
- (VCRelayData)init;
- (void)dealloc;
- (void)init;
- (void)updateDataWithTime:(double)a3;
- (void)updateReport:(id)a3;
- (void)updateStateWithPayload:(id)a3 withTime:(double)a4;
@end

@implementation VCRelayData

- (VCRelayData)init
{
  v5.receiver = self;
  v5.super_class = VCRelayData;
  v2 = [(VCRelayData *)&v5 init];
  if (!v2)
  {
    [VCRelayData init];
LABEL_6:

    return 0;
  }

  v3 = [[VCReportingHistogram alloc] initWithType:88 bucketValues:0];
  v2->_relayThermalHistogram = v3;
  if (!v3)
  {
    [(VCRelayData *)v2 init];
    goto LABEL_6;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCRelayData;
  [(VCRelayData *)&v3 dealloc];
}

- (void)updateStateWithPayload:(id)a3 withTime:(double)a4
{
  if ([a3 objectForKeyedSubscript:@"IsRelayDeviceRole"])
  {
    [(VCRelayData *)self updateDataWithTime:a4];
    if ([objc_msgSend(a3 objectForKeyedSubscript:{@"IsRelayDeviceRole", "BOOLValue"}])
    {
      self->_startTime = a4;
      self->_isRelayDeviceRole = 1;
    }
  }
}

- (void)updateDataWithTime:(double)a3
{
  startTime = self->_startTime;
  if (startTime != 0.0)
  {
    if (!self->_isRelayDeviceRole)
    {
      return;
    }

    LODWORD(v3) = vcvtad_u64_f64((a3 - startTime) * 1000.0);
    [(VCHistogram *)self->_relayThermalHistogram addOnlyExactMatchingValue:self->_thermalLevel increment:v3];
  }

  self->_startTime = a3;
}

- (void)updateReport:(id)a3
{
  v4 = [(VCHistogram *)self->_relayThermalHistogram description];

  [a3 setObject:v4 forKeyedSubscript:@"RELDUR"];
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