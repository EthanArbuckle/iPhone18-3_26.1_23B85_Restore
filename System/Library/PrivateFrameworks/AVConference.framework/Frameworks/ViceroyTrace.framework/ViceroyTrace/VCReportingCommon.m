@interface VCReportingCommon
- (VCReportingCommon)init;
- (id)dispatchedAggregatedReportCommon;
- (id)getUplinkRTXelemetryWithDuration:(unint64_t)a3;
- (void)dealloc;
- (void)init;
- (void)reportTestName:(id)a3;
- (void)setUplinkRTXTelemetryWithRealTimeStreamData:(id)a3;
@end

@implementation VCReportingCommon

- (VCReportingCommon)init
{
  v7.receiver = self;
  v7.super_class = VCReportingCommon;
  v2 = [(VCReportingCommon *)&v7 init];
  if (!v2)
  {
    [VCReportingCommon init];
LABEL_7:

    return 0;
  }

  v3 = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
  v2->_thermalDurations = v3;
  if (!v3)
  {
    [(VCReportingCommon *)v2 init];
    goto LABEL_7;
  }

  notify_register_check(*MEMORY[0x277D85E48], &v2->_thermalNotificationToken);
  thermalNotificationToken = v2->_thermalNotificationToken;
  state64 = 0;
  notify_get_state(thermalNotificationToken, &state64);
  v5 = [VCReportingCommon aggregatorThermalLevelWithThermalLevel:state64];
  v2->_currentThermalLevel = v5;
  [(VCDurationHistogram *)v2->_thermalDurations resumeAtBucket:v5 currentTime:micro()];
  v2->_clientExperiments = objc_alloc_init(MEMORY[0x277CBEB38]);
  return v2;
}

- (void)dealloc
{
  notify_cancel(self->_thermalNotificationToken);
  v3.receiver = self;
  v3.super_class = VCReportingCommon;
  [(VCReportingCommon *)&v3 dealloc];
}

- (id)dispatchedAggregatedReportCommon
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(VCDurationHistogram *)self->_thermalDurations finalize:micro()];
  [v3 setObject:-[VCHistogram description](self->_thermalDurations forKeyedSubscript:{"description"), @"THERMDUR"}];
  return v3;
}

- (id)getUplinkRTXelemetryWithDuration:(unint64_t)a3
{
  v15[17] = *MEMORY[0x277D85DE8];
  if (self->_isUplinkRTXTelemetryAvailable)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v14[0] = @"ULNACKRQCNT";
    v15[0] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_retransmissionRequestPacketCount];
    v14[1] = @"ULNACKFLCNT";
    v15[1] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_retransmissionFulfilledPacketCount];
    v14[2] = @"ULNACKCHCNT";
    v15[2] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_retransmissionCacheHitCount];
    v14[3] = @"ULNACKCMCNT";
    v15[3] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_retransmissionCacheMissCount];
    v14[4] = @"ULNACKNRCNT";
    v15[4] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_retransmissionNACKReceivedCount];
    v14[5] = @"ULNACKRPCNT";
    v15[5] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_retransmissionRequestRepeatedCount];
    v14[6] = @"ULNACKRPMAXCNT";
    v15[6] = [MEMORY[0x277CCABA8] numberWithUnsignedShort:self->_retransmissionRequestRepeatedMaxCount];
    v14[7] = @"ULNACKRQRATE";
    v6 = 0.0;
    v7 = 0.0;
    if (a3)
    {
      v7 = self->_retransmissionRequestPacketCount / a3;
    }

    v15[7] = [MEMORY[0x277CCABA8] numberWithDouble:v7];
    v14[8] = @"ULNACKFLRATE";
    if (a3)
    {
      v6 = self->_retransmissionFulfilledPacketCount / a3;
    }

    v15[8] = [MEMORY[0x277CCABA8] numberWithDouble:v6];
    v14[9] = @"ULNACKCHRATE";
    v8 = 0.0;
    v9 = 0.0;
    if (a3)
    {
      v9 = self->_retransmissionCacheHitCount / a3;
    }

    v15[9] = [MEMORY[0x277CCABA8] numberWithDouble:v9];
    v14[10] = @"ULNACKCMRATE";
    if (a3)
    {
      v8 = self->_retransmissionCacheMissCount / a3;
    }

    v15[10] = [MEMORY[0x277CCABA8] numberWithDouble:v8];
    v14[11] = @"ULNACKNRRATE";
    v10 = 0.0;
    v11 = 0.0;
    if (a3)
    {
      v11 = self->_retransmissionNACKReceivedCount / a3;
    }

    v15[11] = [MEMORY[0x277CCABA8] numberWithDouble:v11];
    v14[12] = @"ULNACKRPRATE";
    if (a3)
    {
      v10 = self->_retransmissionRequestRepeatedCount / a3;
    }

    v15[12] = [MEMORY[0x277CCABA8] numberWithDouble:v10];
    v14[13] = @"ULNACKAVGRESP";
    v15[13] = [(VCHistogram *)self->_retransmissionResponseTime description];
    v14[14] = @"ULNACKAVGLATE";
    v15[14] = [(VCHistogram *)self->_retransmissionLateTime description];
    v14[15] = @"ULNACKAVGLATE";
    v15[15] = [(VCHistogram *)self->_retransmissionActualMediaBitrate description];
    v14[16] = @"ULNACKRBR";
    v15[16] = [(VCHistogram *)self->_retransmissionBitrate description];
    [v5 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v15, v14, 17)}];
    result = v5;
  }

  else
  {
    result = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setUplinkRTXTelemetryWithRealTimeStreamData:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"UNRPC"];
  if (v5)
  {
    self->_retransmissionRequestPacketCount += [v5 intValue];
  }

  v6 = [a3 objectForKeyedSubscript:@"UNFPC"];
  if (v6)
  {
    self->_retransmissionFulfilledPacketCount += [v6 intValue];
  }

  v7 = [a3 objectForKeyedSubscript:@"UNCHPC"];
  if (v7)
  {
    self->_retransmissionCacheHitCount += [v7 intValue];
  }

  v8 = [a3 objectForKeyedSubscript:@"UNCMPC"];
  if (v8)
  {
    self->_retransmissionCacheMissCount += [v8 intValue];
  }

  v9 = [a3 objectForKeyedSubscript:@"UNTRC"];
  if (v9)
  {
    self->_retransmissionNACKReceivedCount += [v9 intValue];
  }

  v10 = [a3 objectForKeyedSubscript:@"ULNACKRPCNT"];
  if (v10)
  {
    self->_retransmissionRequestRepeatedCount += [v10 intValue];
  }

  v11 = [a3 objectForKeyedSubscript:@"ULNACKRPMAXCNT"];
  if (v11)
  {
    v12 = v11;
    if ([v11 unsignedIntValue] > self->_retransmissionRequestRepeatedMaxCount)
    {
      self->_retransmissionRequestRepeatedMaxCount = [v12 unsignedIntValue];
    }
  }

  self->_isUplinkRTXTelemetryAvailable = 1;
}

- (void)reportTestName:(id)a3
{
  v4 = CFPreferencesCopyAppValue(@"reportTestName", @"com.apple.VideoConference");
  if (v4)
  {
    v5 = v4;
    [a3 setObject:v4 forKeyedSubscript:@"VCTN"];
  }
}

- (void)init
{
  v18 = *MEMORY[0x277D85DE8];
  if (!objc_opt_class())
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_10;
    }

    v1 = VRTraceErrorLogLevelToCSTR(3u);
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v11 = 136315650;
    v12 = v1;
    OUTLINED_FUNCTION_0();
    v13 = 41;
    OUTLINED_FUNCTION_1();
LABEL_12:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v0 = [0 performSelector:sel_logPrefix];
  }

  else
  {
    v0 = &stru_284F80940;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR(3u);
    v9 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v11 = 136316162;
      v12 = v8;
      OUTLINED_FUNCTION_0();
      v13 = 41;
      v14 = 2112;
      v15 = v0;
      v16 = 2048;
      v17 = 0;
      v2 = &dword_23D4DF000;
      v5 = " [%s] %s:%d %@(%p) Failed to initialize self";
      v6 = &v11;
      v3 = v9;
      v4 = OS_LOG_TYPE_ERROR;
      v7 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
}

@end