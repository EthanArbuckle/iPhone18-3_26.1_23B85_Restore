@interface VCAggregatorHomeKitAudio
- (VCAggregatorHomeKitAudio)initWithDelegate:(id)delegate;
- (id)dispatchedAggregatedSessionReport;
- (void)dealloc;
- (void)reset;
- (void)updateStreamDirection:(unsigned int)direction time:(double)time;
@end

@implementation VCAggregatorHomeKitAudio

- (VCAggregatorHomeKitAudio)initWithDelegate:(id)delegate
{
  v3 = [(VCAggregatorAudioStream *)self initWithDelegate:delegate withMode:6];
  if (!v3)
  {
    [VCAggregatorHomeKitAudio initWithDelegate:];
LABEL_6:

    return 0;
  }

  v4 = [[VCReportingHistogram alloc] initWithType:62 bucketValues:0];
  v3->_streamDirectionDurations = v4;
  if (!v4)
  {
    [VCAggregatorHomeKitAudio initWithDelegate:v3];
    goto LABEL_6;
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCAggregatorHomeKitAudio;
  [(VCAggregatorAudioStream *)&v3 dealloc];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = VCAggregatorHomeKitAudio;
  [(VCAggregatorAudioStream *)&v3 reset];
  self->_mediaStreamEndReason = 0;
  self->_rtcpTimeoutCount = 0;
}

- (void)updateStreamDirection:(unsigned int)direction time:(double)time
{
  lastStreamDirectionSwitchTime = self->_lastStreamDirectionSwitchTime;
  if (lastStreamDirectionSwitchTime > 0.0)
  {
    [(VCHistogram *)self->_streamDirectionDurations addOnlyExactMatchingValue:self->_previousStreamDirection increment:((time - lastStreamDirectionSwitchTime) * 1000.0)];
  }

  self->_previousStreamDirection = direction;
  self->_lastStreamDirectionSwitchTime = time;
}

uint64_t __76__VCAggregatorHomeKitAudio_dispatchedProcessEventWithCategory_type_payload___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 intValue];
  v5 = *(a1 + 40);

  return [v3 updateStreamDirection:v4 time:v5];
}

uint64_t __76__VCAggregatorHomeKitAudio_dispatchedProcessEventWithCategory_type_payload___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 unsignedIntValue];
  *(*(a1 + 32) + 1632) = result;
  return result;
}

uint64_t __76__VCAggregatorHomeKitAudio_dispatchedProcessEventWithCategory_type_payload___block_invoke_3(uint64_t a1, void *a2)
{
  result = [a2 unsignedIntValue];
  *(*(a1 + 32) + 1616) = result;
  return result;
}

- (id)dispatchedAggregatedSessionReport
{
  dispatch_assert_queue_V2(self->super.super._stateQueue);
  v5.receiver = self;
  v5.super_class = VCAggregatorHomeKitAudio;
  dispatchedAggregatedSessionReport = [(VCAggregatorAudioStream *)&v5 dispatchedAggregatedSessionReport];
  [dispatchedAggregatedSessionReport setObject:&unk_284FA57F8 forKeyedSubscript:@"RVER"];
  [dispatchedAggregatedSessionReport setObject:@"audio" forKeyedSubscript:@"HKMT"];
  [dispatchedAggregatedSessionReport setObject:-[VCHistogram description](self->_streamDirectionDurations forKeyedSubscript:{"description"), @"SDDUR"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_connectionType), @"HKCT"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->_mediaStreamEndReason == 0), @"MSSuccess"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_mediaStreamEndReason), @"MSEndReason"}];
  return dispatchedAggregatedSessionReport;
}

- (void)initWithDelegate:(void *)a1 .cold.1(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_10;
    }

    v3 = VRTraceErrorLogLevelToCSTR(3u);
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v13 = 136315650;
    v14 = v3;
    OUTLINED_FUNCTION_0();
    v15 = 33;
    OUTLINED_FUNCTION_1();
LABEL_12:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_284F80940;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR(3u);
    v11 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v13 = 136316162;
      v14 = v10;
      OUTLINED_FUNCTION_0();
      v15 = 33;
      v16 = 2112;
      v17 = v2;
      v18 = 2048;
      v19 = a1;
      v4 = &dword_23D4DF000;
      v7 = " [%s] %s:%d %@(%p) Failed to create stream direction histogram";
      v8 = &v13;
      v5 = v11;
      v6 = OS_LOG_TYPE_ERROR;
      v9 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)initWithDelegate:.cold.2()
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
    v13 = 30;
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
      v13 = 30;
      v14 = 2112;
      v15 = v0;
      v16 = 2048;
      v17 = 0;
      v2 = &dword_23D4DF000;
      v5 = " [%s] %s:%d %@(%p) Failed to initialize HomeKit aggregator";
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