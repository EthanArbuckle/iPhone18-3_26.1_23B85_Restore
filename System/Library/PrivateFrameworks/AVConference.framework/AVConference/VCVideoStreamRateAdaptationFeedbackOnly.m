@interface VCVideoStreamRateAdaptationFeedbackOnly
- (VCVideoStreamRateAdaptationFeedbackOnly)initWithMediaStreamRateAdaptationParam:(const tagVCMediaStreamRateAdaptationParams *)a3;
- (double)owrd;
- (void)dealloc;
- (void)sendRateControlFeedback;
- (void)setEnableRateAdaptation:(BOOL)a3 maxBitrate:(unsigned int)a4 minBitrate:(unsigned int)a5 adaptationInterval:(double)a6;
- (void)startFeedbackSource;
- (void)stopFeedbackSource;
- (void)updateRTPReceiveWithTimestamp:(unsigned int)a3 sampleRate:(unsigned int)a4 time:(double)a5 size:(unsigned int)a6 endOfFrame:(BOOL)a7;
- (void)updateRateControlInfoWithStatisticsMessage:(tagVCStatisticsMessage *)a3;
@end

@implementation VCVideoStreamRateAdaptationFeedbackOnly

- (VCVideoStreamRateAdaptationFeedbackOnly)initWithMediaStreamRateAdaptationParam:(const tagVCMediaStreamRateAdaptationParams *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  var8 = a3->var8;
  v17.receiver = self;
  v17.super_class = VCVideoStreamRateAdaptationFeedbackOnly;
  v5 = [(VCMediaStreamRateAdaptation *)&v17 initWithDelegate:var8 params:a3];
  v6 = v5;
  if (v5)
  {
    v5->super._rtpHandle = a3->var5;
    v5->super._reportingAgent = a3->var2;
    v5->super._reportingModuleID = VCReporting_GetDynamicReportingModuleID();
    reportingInheritModuleSpecificInfoFromParent();
    v6->_statisticsCollector = [(AVCRateController *)v6->super.super._vcrcRateController statisticsCollector];
    v6->super._rateAdaptationEnabled = 0;
    v6->_useLowPrecisionEchoTimeStamp = a3->var7;
    [VCDefaults getDoubleValueForKey:@"videoStreamAverageBitrateWindowDuration" defaultValue:1.0];
    v6->super._averageBitrateWindowDuration = v7;
    if (objc_opt_class() == v6)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v19 = v9;
          v20 = 2080;
          v21 = "[VCVideoStreamRateAdaptationFeedbackOnly initWithMediaStreamRateAdaptationParam:]";
          v22 = 1024;
          v23 = 51;
          v11 = " [%s] %s:%d ";
          v12 = v10;
          v13 = 28;
LABEL_12:
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCVideoStreamRateAdaptationFeedbackOnly *)v6 performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v19 = v14;
          v20 = 2080;
          v21 = "[VCVideoStreamRateAdaptationFeedbackOnly initWithMediaStreamRateAdaptationParam:]";
          v22 = 1024;
          v23 = 51;
          v24 = 2112;
          v25 = v8;
          v26 = 2048;
          v27 = v6;
          v11 = " [%s] %s:%d %@(%p) ";
          v12 = v15;
          v13 = 48;
          goto LABEL_12;
        }
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v4;
        v14 = 2080;
        v15 = "[VCVideoStreamRateAdaptationFeedbackOnly dealloc]";
        v16 = 1024;
        v17 = 57;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCVideoStreamRateAdaptationFeedbackOnly *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v13 = v9;
        v14 = 2080;
        v15 = "[VCVideoStreamRateAdaptationFeedbackOnly dealloc]";
        v16 = 1024;
        v17 = 57;
        v18 = 2112;
        v19 = v3;
        v20 = 2048;
        v21 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  [(VCVideoStreamRateAdaptationFeedbackOnly *)self stopFeedbackSource];

  v11.receiver = self;
  v11.super_class = VCVideoStreamRateAdaptationFeedbackOnly;
  [(VCVideoStreamRateAdaptation *)&v11 dealloc];
}

- (void)setEnableRateAdaptation:(BOOL)a3 maxBitrate:(unsigned int)a4 minBitrate:(unsigned int)a5 adaptationInterval:(double)a6
{
  if (self->super._rateAdaptationEnabled != a3)
  {
    self->super._rateAdaptationEnabled = a3;
    if (a3)
    {
      [(VCVideoStreamRateAdaptationFeedbackOnly *)self startFeedbackSource:a3];
    }

    else
    {
      [(VCVideoStreamRateAdaptationFeedbackOnly *)self stopFeedbackSource:a3];
    }
  }
}

- (void)startFeedbackSource
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d RTPGetPreferredSendQueue failed %x", v3, v4, v5, v6);
}

uint64_t __62__VCVideoStreamRateAdaptationFeedbackOnly_startFeedbackSource__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) strong];

  return [v1 sendRateControlFeedback];
}

- (void)stopFeedbackSource
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_rateControlFeedbackSource)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v11 = 136315650;
      v12 = v4;
      v13 = 2080;
      v14 = "[VCVideoStreamRateAdaptationFeedbackOnly stopFeedbackSource]";
      v15 = 1024;
      v16 = 113;
      v6 = " [%s] %s:%d Stop VCRC rate control feedback";
      v7 = v5;
      v8 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(VCVideoStreamRateAdaptationFeedbackOnly *)self performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v11 = 136316162;
      v12 = v9;
      v13 = 2080;
      v14 = "[VCVideoStreamRateAdaptationFeedbackOnly stopFeedbackSource]";
      v15 = 1024;
      v16 = 113;
      v17 = 2112;
      v18 = v3;
      v19 = 2048;
      v20 = self;
      v6 = " [%s] %s:%d %@(%p) Stop VCRC rate control feedback";
      v7 = v10;
      v8 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
LABEL_13:
    dispatch_source_cancel(self->_rateControlFeedbackSource);
    dispatch_release(self->_rateControlFeedbackSource);
    self->_rateControlFeedbackSource = 0;
  }
}

- (void)sendRateControlFeedback
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Failed to send VCRC rate control feedback %X", v3, v4, v5, v6);
}

- (void)updateRTPReceiveWithTimestamp:(unsigned int)a3 sampleRate:(unsigned int)a4 time:(double)a5 size:(unsigned int)a6 endOfFrame:(BOOL)a7
{
  v24 = *MEMORY[0x1E69E9840];
  self->_didReceiveVideo = 1;
  ++self->_totalPacketsReceived;
  previousRTPTimestamp = self->_previousRTPTimestamp;
  if (previousRTPTimestamp)
  {
    if (a3 != previousRTPTimestamp && a3 - previousRTPTimestamp < 0x7FFFFFFF)
    {
      self->_lastTimestamp = a3;
      self->_lastTimestampReceiveTime = a5;
      memset(&v23[8], 0, 144);
      totalPacketsReceived = self->_totalPacketsReceived;
      statisticsCollector = self->_statisticsCollector;
      v17 = 7;
      v18 = a5;
      *&v19 = 0;
      DWORD2(v19) = 4;
      HIDWORD(v19) = a3;
      v20 = a4;
      v21 = totalPacketsReceived;
      v22 = 0.0;
      *v23 = a5;
      VCRateControlSetStatistics(statisticsCollector, &v17);
      self->_previousRTPTimestamp = a3;
    }
  }

  else
  {
    self->_previousRTPTimestamp = a3;
  }

  *(&v19 + 5) = 0;
  *&v19 = 0;
  memset(&v23[4], 0, 148);
  v16 = self->_statisticsCollector;
  v17 = 4;
  v18 = a5;
  BYTE13(v19) = 1;
  HIWORD(v19) = a7;
  v20 = a3;
  v21 = a6;
  v22 = a5;
  *v23 = a3;
  VCRateControlSetStatistics(v16, &v17);
}

- (void)updateRateControlInfoWithStatisticsMessage:(tagVCStatisticsMessage *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  statisticsCollector = self->_statisticsCollector;
  if (statisticsCollector)
  {
    v4 = *(&a3->var0.addRemoveEndPoint + 19);
    v10[10] = *(&a3->var0.addRemoveEndPoint + 17);
    v10[11] = v4;
    v11 = *(&a3->var0.addRemoveEndPoint + 21);
    v5 = *(&a3->var0.addRemoveEndPoint + 11);
    v10[6] = *(&a3->var0.addRemoveEndPoint + 9);
    v10[7] = v5;
    v6 = *(&a3->var0.addRemoveEndPoint + 15);
    v10[8] = *(&a3->var0.addRemoveEndPoint + 13);
    v10[9] = v6;
    v7 = *(&a3->var0.addRemoveEndPoint + 3);
    v10[2] = *&a3->var0.rtcpRR.lastSequenceNumber;
    v10[3] = v7;
    v8 = *(&a3->var0.addRemoveEndPoint + 7);
    v10[4] = *(&a3->var0.addRemoveEndPoint + 5);
    v10[5] = v8;
    v9 = *&a3->isVCRCInternal;
    v10[0] = *&a3->type;
    v10[1] = v9;
    VCRateControlSetStatistics(statisticsCollector, v10);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoStreamRateAdaptationFeedbackOnly updateRateControlInfoWithStatisticsMessage:];
    }
  }
}

- (double)owrd
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  VCRateControlGetStatistics(self->_statisticsCollector, 7, v3);
  return *(&v4 + 1);
}

- (void)updateRateControlInfoWithStatisticsMessage:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Update VCRC information when _statisticsCollector is nil!", v2, v3, v4, v5, v6);
}

@end