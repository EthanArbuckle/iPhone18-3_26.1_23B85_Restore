@interface VCVideoStreamRateAdaptation
- (BOOL)runVideoStreamRateAdaptation;
- (VCVideoStreamRateAdaptation)initWithMediaStreamRateAdaptationParam:(const tagVCMediaStreamRateAdaptationParams *)param;
- (id)className;
- (void)dealloc;
- (void)receivedTMMBN:(unsigned int)n;
- (void)reportingVideoStreamEvent:(unsigned __int16)event;
- (void)runVideoStreamRateAdaptation;
- (void)scheduleTMMBR:(unsigned int)r;
- (void)setEnableRateAdaptation:(BOOL)adaptation maxBitrate:(unsigned int)bitrate minBitrate:(unsigned int)minBitrate adaptationInterval:(double)interval;
- (void)setOperatingBitrate:(unsigned int)bitrate;
@end

@implementation VCVideoStreamRateAdaptation

- (VCVideoStreamRateAdaptation)initWithMediaStreamRateAdaptationParam:(const tagVCMediaStreamRateAdaptationParams *)param
{
  v27 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VCVideoStreamRateAdaptation;
  v4 = [(VCVideoStreamRateAdaptation *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_rtpHandle = param->var5;
    v4->_reportingAgent = param->var2;
    v4->_reportingModuleID = VCReporting_GetDynamicReportingModuleID();
    reportingInheritModuleSpecificInfoFromParent();
    v5->_rateController = [[VCVideoStreamRateController alloc] initWithDumpID:param->var1];
    v5->_rateAdaptationEnabled = 0;
    [VCDefaults getDoubleValueForKey:@"videoStreamAverageBitrateWindowDuration" defaultValue:1.0];
    v5->_averageBitrateWindowDuration = v6;
    if (objc_opt_class() == v5)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v18 = v8;
          v19 = 2080;
          v20 = "[VCVideoStreamRateAdaptation initWithMediaStreamRateAdaptationParam:]";
          v21 = 1024;
          v22 = 40;
          v10 = " [%s] %s:%d ";
          v11 = v9;
          v12 = 28;
LABEL_12:
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCVideoStreamRateAdaptation *)v5 performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v18 = v13;
          v19 = 2080;
          v20 = "[VCVideoStreamRateAdaptation initWithMediaStreamRateAdaptationParam:]";
          v21 = 1024;
          v22 = 40;
          v23 = 2112;
          v24 = v7;
          v25 = 2048;
          v26 = v5;
          v10 = " [%s] %s:%d %@(%p) ";
          v11 = v14;
          v12 = 48;
          goto LABEL_12;
        }
      }
    }
  }

  return v5;
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
        v15 = "[VCVideoStreamRateAdaptation dealloc]";
        v16 = 1024;
        v17 = 46;
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
      v3 = [(VCVideoStreamRateAdaptation *)self performSelector:sel_logPrefix];
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
        v15 = "[VCVideoStreamRateAdaptation dealloc]";
        v16 = 1024;
        v17 = 46;
        v18 = 2112;
        v19 = v3;
        v20 = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  reportingCacheModuleSpecificInfo();
  v11.receiver = self;
  v11.super_class = VCVideoStreamRateAdaptation;
  [(VCMediaStreamRateAdaptation *)&v11 dealloc];
}

- (void)setEnableRateAdaptation:(BOOL)adaptation maxBitrate:(unsigned int)bitrate minBitrate:(unsigned int)minBitrate adaptationInterval:(double)interval
{
  self->_rateAdaptationEnabled = adaptation;
  if (adaptation)
  {
    v6 = *&minBitrate;
    v7 = *&bitrate;
    [(VCVideoStreamRateController *)self->_rateController setRateControlInterval:interval];
    [(VCVideoStreamRateController *)self->_rateController setMaxTargetBitrate:v7 minTargetBitrate:v6];
    minBitrate = [(VCVideoStreamRateController *)self->_rateController minBitrate];
    self->_operatingBitrate = minBitrate;
    [(VCVideoStreamRateAdaptation *)self scheduleTMMBR:minBitrate];
    self->_isOperatingAtMinBitrate = 0;
    self->_isOperatingAtMaxBitrate = 0;
  }
}

- (BOOL)runVideoStreamRateAdaptation
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_rateAdaptationEnabled)
  {
    v14 = -1431655766;
    v15 = -1431655766;
    v13 = -1431655766;
    RTPGetPacketLossMetrics(self->_rtpHandle, &v15, &v14, &v13);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v17 = v4;
        v18 = 2080;
        v19 = "[VCVideoStreamRateAdaptation runVideoStreamRateAdaptation]";
        v20 = 1024;
        v21 = 81;
        v22 = 1024;
        v23 = v14;
        v24 = 1024;
        v25 = v13;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d packetsExpectedForInterval:%u packetsLostForInterval:%u", buf, 0x28u);
      }
    }

    if (v14)
    {
      LODWORD(v3) = v13;
      v6 = v3 / v14;
      self->_packetLossPercentage = v6 * 100.0;
      if (self->_sendTmmbrBitrate && !self->_receivedTmmbnBitrate)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [(VCVideoStreamRateAdaptation *)v7 runVideoStreamRateAdaptation];
          }
        }

        self->_tmmbRTT = 0.0;
        [(VCVideoStreamRateAdaptation *)self setOperatingBitrate:self->_sendTmmbrBitrate];
      }

      v9 = micro();
      self->_adaptationTime = v9;
      [(VCVideoStreamRateController *)self->_rateController doRateControlWithTime:self->_operatingBitrate roundTripTime:[(VCVideoStreamRateAdaptation *)self averageReceivedBitrate] packetLossRate:v9 operatingBitrate:self->_tmmbRTT averageReceivedBitrate:v6];
      [(VCVideoStreamRateAdaptation *)self owrd];
      if (self->_maxOWRD < v10)
      {
        self->_maxOWRD = v10;
      }
    }

    else
    {
      self->_packetLossPercentage = 0.0;
    }

    [(VCVideoStreamRateAdaptation *)self scheduleTMMBR:[(VCVideoStreamRateController *)self->_rateController targetBitrate]];
    return self->_downlinkQualityDidChange;
  }

  else
  {
    return 0;
  }
}

- (void)receivedTMMBN:(unsigned int)n
{
  v36 = *MEMORY[0x1E69E9840];
  self->_receivedTmmbnBitrate = n;
  v4 = micro();
  self->_tmmbnReceiveTime = v4;
  self->_tmmbRTT = v4 - self->_tmmbrSendTime;
  [(VCVideoStreamRateAdaptation *)self setOperatingBitrate:self->_receivedTmmbnBitrate];
  if (self->_downlinkQualityDidChange)
  {
    [(VCVideoStreamRateAdaptation *)self reportingVideoStreamEvent:227];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    v7 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [-[VCVideoStreamRateAdaptation className](self "className")];
        receivedTmmbnBitrate = self->_receivedTmmbnBitrate;
        tmmbRTT = self->_tmmbRTT;
        sendTmmbrBitrate = self->_sendTmmbrBitrate;
        operatingBitrate = self->_operatingBitrate;
        v18 = 136317186;
        v19 = v5;
        v20 = 2080;
        v21 = "[VCVideoStreamRateAdaptation receivedTMMBN:]";
        v22 = 1024;
        v23 = 134;
        v24 = 2080;
        v25 = v8;
        v26 = 1024;
        v27 = 134;
        v28 = 1024;
        v29 = receivedTmmbnBitrate;
        v30 = 2048;
        v31 = tmmbRTT;
        v32 = 1024;
        v33 = sendTmmbrBitrate;
        v34 = 1024;
        v35 = operatingBitrate;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s:%d received TMMBN:%u RTT:%.3f requested TMMBR:%u, operatingTierBitrate:%u", &v18, 0x48u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = [-[VCVideoStreamRateAdaptation className](self "className")];
      v14 = self->_receivedTmmbnBitrate;
      v15 = self->_tmmbRTT;
      v16 = self->_sendTmmbrBitrate;
      v17 = self->_operatingBitrate;
      v18 = 136317186;
      v19 = v5;
      v20 = 2080;
      v21 = "[VCVideoStreamRateAdaptation receivedTMMBN:]";
      v22 = 1024;
      v23 = 134;
      v24 = 2080;
      v25 = v13;
      v26 = 1024;
      v27 = 134;
      v28 = 1024;
      v29 = v14;
      v30 = 2048;
      v31 = v15;
      v32 = 1024;
      v33 = v16;
      v34 = 1024;
      v35 = v17;
      _os_log_debug_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %s:%d received TMMBN:%u RTT:%.3f requested TMMBR:%u, operatingTierBitrate:%u", &v18, 0x48u);
    }
  }
}

- (void)setOperatingBitrate:(unsigned int)bitrate
{
  if (self->_operatingBitrate == bitrate)
  {
    if (self->_adaptationTime <= 0.0 || self->_isOperatingAtMinBitrate || [(VCVideoStreamRateController *)self->_rateController minBitrate]< bitrate)
    {
      v4 = 0;
    }

    else
    {
      v4 = 1;
      self->_isOperatingAtMinBitrate = 1;
    }
  }

  else
  {
    self->_operatingBitrate = bitrate;
    self->_isOperatingAtMinBitrate = [(VCVideoStreamRateController *)self->_rateController minBitrate]>= bitrate;
    operatingBitrate = self->_operatingBitrate;
    self->_isOperatingAtMaxBitrate = operatingBitrate >= [(VCVideoStreamRateController *)self->_rateController maxBitrate];
    v4 = 1;
  }

  self->_downlinkQualityDidChange = v4;
}

- (void)scheduleTMMBR:(unsigned int)r
{
  v23 = *MEMORY[0x1E69E9840];
  if (r && self->_sendTmmbrBitrate != r)
  {
    self->_downlinkQualityDidChange = 1;
    self->_sendTmmbrBitrate = r;
    [(VCVideoStreamRateAdaptation *)self reportingVideoStreamEvent:226];
  }

  self->_receivedTmmbnBitrate = 0;
  self->_tmmbrSendTime = micro();
  RTCPSetSendTMMBR(self->_rtpHandle, self->_sendTmmbrBitrate);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v6 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [-[VCVideoStreamRateAdaptation className](self "className")];
        sendTmmbrBitrate = self->_sendTmmbrBitrate;
        v11 = 136316418;
        v12 = v4;
        v13 = 2080;
        v14 = "[VCVideoStreamRateAdaptation scheduleTMMBR:]";
        v15 = 1024;
        v16 = 207;
        v17 = 2080;
        v18 = v7;
        v19 = 1024;
        v20 = 207;
        v21 = 1024;
        v22 = sendTmmbrBitrate;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s:%d TMMBR scheduled - new bitrate:%u", &v11, 0x32u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = [-[VCVideoStreamRateAdaptation className](self "className")];
      v10 = self->_sendTmmbrBitrate;
      v11 = 136316418;
      v12 = v4;
      v13 = 2080;
      v14 = "[VCVideoStreamRateAdaptation scheduleTMMBR:]";
      v15 = 1024;
      v16 = 207;
      v17 = 2080;
      v18 = v9;
      v19 = 1024;
      v20 = 207;
      v21 = 1024;
      v22 = v10;
      _os_log_debug_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %s:%d TMMBR scheduled - new bitrate:%u", &v11, 0x32u);
    }
  }
}

- (id)className
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)reportingVideoStreamEvent:(unsigned __int16)event
{
  eventCopy = event;
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (eventCopy == 227)
  {
    v21 = CFStringCreateWithFormat(v5, 0, @"%d", self->_receivedTmmbnBitrate);
    CFDictionaryAddValue(Mutable, @"VCVSTMMB", v21);
    CFRelease(v21);
    [(VCVideoStreamRateAdaptation *)self roundTripTime];
    v20 = @"VCVSRxRoundTripTime";
  }

  else
  {
    if (eventCopy != 226)
    {
      return;
    }

    v7 = CFStringCreateWithFormat(v5, 0, @"%d", self->_sendTmmbrBitrate);
    CFDictionaryAddValue(Mutable, @"VCVSTMMB", v7);
    CFRelease(v7);
    v8 = CFStringCreateWithFormat(v5, 0, @"%d", self->_operatingBitrate);
    CFDictionaryAddValue(Mutable, @"VCVSRxOperatingBitrate", v8);
    CFRelease(v8);
    [(VCVideoStreamRateAdaptation *)self packetLossPercentage];
    v10 = CFStringCreateWithFormat(v5, 0, @"%.5f", v9);
    CFDictionaryAddValue(Mutable, @"VCVSRxPacketLossPercentage", v10);
    CFRelease(v10);
    [(VCVideoStreamRateAdaptation *)self roundTripTime];
    v12 = CFStringCreateWithFormat(v5, 0, @"%.5f", v11);
    CFDictionaryAddValue(Mutable, @"VCVSRxRoundTripTime", v12);
    CFRelease(v12);
    [(VCVideoStreamRateAdaptation *)self owrd];
    v14 = CFStringCreateWithFormat(v5, 0, @"%.5f", v13);
    CFDictionaryAddValue(Mutable, @"VCVSRxOWRD", v14);
    CFRelease(v14);
    [(VCVideoStreamRateAdaptation *)self nowrd];
    v16 = CFStringCreateWithFormat(v5, 0, @"%.5f", v15);
    CFDictionaryAddValue(Mutable, @"VCVSRxNOWRD", v16);
    CFRelease(v16);
    [(VCVideoStreamRateAdaptation *)self nowrdShort];
    v18 = CFStringCreateWithFormat(v5, 0, @"%.5f", v17);
    CFDictionaryAddValue(Mutable, @"VCVSRxNOWRDSHORT", v18);
    CFRelease(v18);
    [(VCVideoStreamRateAdaptation *)self nowrdAcc];
    v20 = @"VCVSRxNOWRDACC";
  }

  v22 = CFStringCreateWithFormat(v5, 0, @"%.5f", v19);
  CFDictionaryAddValue(Mutable, v20, v22);
  CFRelease(v22);
  reportingVideoStreamEvent();

  CFRelease(Mutable);
}

- (void)runVideoStreamRateAdaptation
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = 136316162;
  selfCopy = self;
  v6 = 2080;
  v7 = "[VCVideoStreamRateAdaptation runVideoStreamRateAdaptation]";
  v8 = 1024;
  v9 = 90;
  v10 = 2080;
  v11 = [objc_msgSend(a2 "className")];
  v12 = 1024;
  v13 = 90;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s:%d - Failed to receive TMMBN!", &v4, 0x2Cu);
}

@end