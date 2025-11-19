@interface VCVideoTierDurationData
- (VCVideoTierDurationData)init;
- (int)resolutionForVideoWidth:(unsigned int)a3 height:(unsigned int)a4;
- (void)accumulate:(id)a3;
- (void)dealloc;
- (void)finalize;
- (void)init;
- (void)updateCurrentReceivedVideoResolution:(int)a3 time:(double)a4;
- (void)updateReport:(id)a3 withStreamGroup:(id)a4;
- (void)updateWithPayload:(id)a3;
- (void)updateWithPayload:(id)a3 time:(double)a4;
@end

@implementation VCVideoTierDurationData

- (VCVideoTierDurationData)init
{
  v5.receiver = self;
  v5.super_class = VCVideoTierDurationData;
  v2 = [(VCVideoTierDurationData *)&v5 init];
  if (!v2)
  {
    [VCVideoTierDurationData init];
LABEL_7:

    return 0;
  }

  v3 = [[VCReportingHistogram alloc] initWithType:65 bucketValues:0];
  v2->_receivedVideoTierDuration = v3;
  if (!v3)
  {
    [VCVideoTierDurationData init];
    goto LABEL_7;
  }

  v2->_currentReceivedVideoResolution = 0x7FFFFFFF;
  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCVideoTierDurationData;
  [(VCVideoTierDurationData *)&v3 dealloc];
}

- (int)resolutionForVideoWidth:(unsigned int)a3 height:(unsigned int)a4
{
  if (!a3 || !a4)
  {
    return 0x7FFFFFFF;
  }

  v4 = 0;
  v5 = a3;
  v6 = a4;
  do
  {
    [VCAggregatorUtils sizeForVideoResolution:v4];
    if (v8 == v5 && v7 == v6)
    {
      break;
    }

    v4 = (v4 + 1);
  }

  while (v4 != 35);
  if (v4 >= 0x22)
  {
    return 34;
  }

  else
  {
    return v4;
  }
}

- (void)updateWithPayload:(id)a3
{
  v5 = micro();

  [(VCVideoTierDurationData *)self updateWithPayload:a3 time:v5];
}

- (void)updateWithPayload:(id)a3 time:(double)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"Width", "intValue"}];
  v8 = [objc_msgSend(a3 objectForKeyedSubscript:{@"Height", "intValue"}];
  v9 = [(VCVideoTierDurationData *)self resolutionForVideoWidth:v7 height:v8];
  if (v9 == 0x7FFFFFFF)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR(3u);
      v11 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v14 = 136316162;
        v15 = v10;
        v16 = 2080;
        v17 = "[VCVideoTierDurationData updateWithPayload:time:]";
        v18 = 1024;
        v19 = 73;
        v20 = 1024;
        v21 = v7;
        v22 = 1024;
        v23 = v8;
        _os_log_error_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d Reported invalid video width=%d height=%d", &v14, 0x28u);
      }
    }

    goto LABEL_6;
  }

  if (v9 == self->_currentReceivedVideoResolution)
  {
LABEL_6:
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = *MEMORY[0x277D85DE8];

  [(VCVideoTierDurationData *)self updateCurrentReceivedVideoResolution:v9 time:a4];
}

- (void)accumulate:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a3)
    {
      receivedVideoTierDuration = self->_receivedVideoTierDuration;
      v6 = *(a3 + 2);

      [(VCHistogram *)receivedVideoTierDuration merge:v6];
    }

    else
    {
      [VCVideoTierDurationData accumulate:?];
    }
  }

  else
  {
    [VCVideoTierDurationData accumulate:?];
  }
}

- (void)updateReport:(id)a3 withStreamGroup:(id)a4
{
  [(VCVideoTierDurationData *)self finalize];
  v7 = @"RXVTDH";
  if (!a4 || (v7 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RXVTDH", a4]) != 0)
  {
    v8 = [(VCHistogram *)self->_receivedVideoTierDuration description];

    [a3 setObject:v8 forKeyedSubscript:v7];
  }
}

- (void)updateCurrentReceivedVideoResolution:(int)a3 time:(double)a4
{
  currentReceivedVideoResolution = self->_currentReceivedVideoResolution;
  if (currentReceivedVideoResolution != 0x7FFFFFFF)
  {
    [(VCHistogram *)self->_receivedVideoTierDuration addOnlyExactMatchingValue:currentReceivedVideoResolution increment:((a4 - self->_lastReceivedTierSwitchTime) * 1000.0)];
  }

  self->_lastReceivedTierSwitchTime = a4;
  self->_currentReceivedVideoResolution = a3;
}

- (void)finalize
{
  v3 = micro();

  [(VCVideoTierDurationData *)self updateCurrentReceivedVideoResolution:0x7FFFFFFFLL time:v3];
}

- (void)init
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)accumulate:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_4_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)accumulate:(void *)a1 .cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_4_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
}

@end