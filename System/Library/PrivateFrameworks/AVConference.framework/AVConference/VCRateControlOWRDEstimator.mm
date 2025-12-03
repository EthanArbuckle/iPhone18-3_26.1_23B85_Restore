@interface VCRateControlOWRDEstimator
- (BOOL)detectAbnormalOWRDWithRoundTripTime:(double)time;
- (BOOL)detectOutOfOrderAndSpikeWithReceiveTimestamp:(unsigned int)timestamp;
- (BOOL)detectOutOfOrderAndSpikeWithSendTimestamp:(unsigned int)timestamp;
- (BOOL)shouldResumeOWRDEstimationWhenOutOfOrderWithTimestamp:(unsigned int)timestamp isSend:(BOOL)send;
- (BOOL)shouldResumeOWRDEstimationWhenSpuriousLagDetected;
- (double)relativeReceiveTimeWithTimestamp:(unsigned int)timestamp timestampRate:(unsigned int)rate;
- (double)relativeSendTimeWithTimestamp:(unsigned int)timestamp timestampRate:(unsigned int)rate;
- (void)calculateOWRDWithSendTime:(double)time receiveTime:(double)receiveTime roundTripTime:(double)tripTime;
- (void)resetOWRDEstimation;
- (void)setMode:(unsigned int)mode;
@end

@implementation VCRateControlOWRDEstimator

- (void)setMode:(unsigned int)mode
{
  self->_mode = mode;
  if (mode - 8 >= 5)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x1000000uLL >> (8 * (mode - 8));
  }

  self->_useUINT16 = v3;
}

- (double)relativeSendTimeWithTimestamp:(unsigned int)timestamp timestampRate:(unsigned int)rate
{
  v25 = *MEMORY[0x1E69E9840];
  firstSendTimestamp = self->_firstSendTimestamp;
  if (!firstSendTimestamp)
  {
    self->_firstSendTimestamp = timestamp;
    firstSendTimestamp = timestamp;
  }

  v7 = timestamp - firstSendTimestamp;
  previousSendTimestampDiff = self->_previousSendTimestampDiff;
  if (self->_useUINT16)
  {
    if (previousSendTimestampDiff == v7)
    {
      return -1.0;
    }
  }

  else
  {
    result = -1.0;
    if (v7 == previousSendTimestampDiff)
    {
      return result;
    }
  }

  v10 = [(VCRateControlOWRDEstimator *)self detectOutOfOrderAndSpikeWithSendTimestamp:?];
  result = -2.0;
  if (!v10)
  {
    v11 = self->_previousSendTimestampDiff;
    if (self->_useUINT16)
    {
      v7 = v7;
      if ((v7 - v11) > 0x7FFEu)
      {
        v18 = 0xFFFFLL;
        goto LABEL_33;
      }

      if (v7 < v11)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          v14 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v19 = 136315650;
              v20 = v12;
              v21 = 2080;
              v22 = "[VCRateControlOWRDEstimator relativeSendTimeWithTimestamp:timestampRate:]";
              v23 = 1024;
              v24 = 106;
              _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Time counter wrapped around", &v19, 0x1Cu);
            }
          }

          else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [VCRateControlOWRDEstimator relativeSendTimeWithTimestamp:timestampRate:];
          }
        }

        v18 = 0xFFFFLL;
LABEL_31:
        ++self->_sendTimestampWrappedAround;
        goto LABEL_32;
      }

      v18 = 0xFFFFLL;
    }

    else
    {
      if (v7 - v11 > 0x7FFFFFFE)
      {
        v18 = 0xFFFFFFFFLL;
        goto LABEL_33;
      }

      if (v7 < v11)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          v17 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v19 = 136315650;
              v20 = v15;
              v21 = 2080;
              v22 = "[VCRateControlOWRDEstimator relativeSendTimeWithTimestamp:timestampRate:]";
              v23 = 1024;
              v24 = 115;
              _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Time counter wrapped around", &v19, 0x1Cu);
            }
          }

          else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [VCRateControlOWRDEstimator relativeSendTimeWithTimestamp:timestampRate:];
          }
        }

        v18 = 0xFFFFFFFFLL;
        goto LABEL_31;
      }

      v18 = 0xFFFFFFFFLL;
    }

LABEL_32:
    self->_previousSendTimestampDiff = v7;
LABEL_33:
    result = (self->_sendTimestampWrappedAround * v18 + v7) / rate;
    if (self->_firstSendTime == 0.0)
    {
      self->_firstSendTime = result;
    }
  }

  return result;
}

- (double)relativeReceiveTimeWithTimestamp:(unsigned int)timestamp timestampRate:(unsigned int)rate
{
  v25 = *MEMORY[0x1E69E9840];
  firstReceiveTimestamp = self->_firstReceiveTimestamp;
  if (!firstReceiveTimestamp)
  {
    self->_firstReceiveTimestamp = timestamp;
    firstReceiveTimestamp = timestamp;
  }

  v7 = timestamp - firstReceiveTimestamp;
  previousReceiveTimestampDiff = self->_previousReceiveTimestampDiff;
  if (self->_useUINT16)
  {
    if (previousReceiveTimestampDiff == v7)
    {
      return -1.0;
    }
  }

  else
  {
    result = -1.0;
    if (v7 == previousReceiveTimestampDiff)
    {
      return result;
    }
  }

  v10 = [(VCRateControlOWRDEstimator *)self detectOutOfOrderAndSpikeWithReceiveTimestamp:?];
  result = -2.0;
  if (!v10)
  {
    v11 = self->_previousReceiveTimestampDiff;
    if (self->_useUINT16)
    {
      v7 = v7;
      if ((v7 - v11) > 0x7FFEu)
      {
        v18 = 0xFFFFLL;
        goto LABEL_33;
      }

      if (v7 < v11)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          v14 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v19 = 136315650;
              v20 = v12;
              v21 = 2080;
              v22 = "[VCRateControlOWRDEstimator relativeReceiveTimeWithTimestamp:timestampRate:]";
              v23 = 1024;
              v24 = 151;
              _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Time counter wrapped around", &v19, 0x1Cu);
            }
          }

          else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [VCRateControlOWRDEstimator relativeReceiveTimeWithTimestamp:timestampRate:];
          }
        }

        v18 = 0xFFFFLL;
LABEL_31:
        ++self->_receiveTimestampWrappedAround;
        goto LABEL_32;
      }

      v18 = 0xFFFFLL;
    }

    else
    {
      if (v7 - v11 > 0x7FFFFFFE)
      {
        v18 = 0xFFFFFFFFLL;
        goto LABEL_33;
      }

      if (v7 < v11)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          v17 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v19 = 136315650;
              v20 = v15;
              v21 = 2080;
              v22 = "[VCRateControlOWRDEstimator relativeReceiveTimeWithTimestamp:timestampRate:]";
              v23 = 1024;
              v24 = 160;
              _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Time counter wrapped around", &v19, 0x1Cu);
            }
          }

          else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [VCRateControlOWRDEstimator relativeReceiveTimeWithTimestamp:timestampRate:];
          }
        }

        v18 = 0xFFFFFFFFLL;
        goto LABEL_31;
      }

      v18 = 0xFFFFFFFFLL;
    }

LABEL_32:
    self->_previousReceiveTimestampDiff = v7;
LABEL_33:
    result = (self->_receiveTimestampWrappedAround * v18 + v7) / rate;
    if (self->_firstReceiveTime == 0.0)
    {
      self->_firstReceiveTime = result;
    }
  }

  return result;
}

- (BOOL)shouldResumeOWRDEstimationWhenSpuriousLagDetected
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_sendTimestampSpikeDetected || self->_receiveTimestampSpikeDetected)
  {
    self->_spuriousLagWithoutSpikeCount = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        sendTimestampSpikeDetected = self->_sendTimestampSpikeDetected;
        receiveTimestampSpikeDetected = self->_receiveTimestampSpikeDetected;
        v16 = 136316162;
        v17 = v3;
        v18 = 2080;
        v19 = "[VCRateControlOWRDEstimator shouldResumeOWRDEstimationWhenSpuriousLagDetected]";
        v20 = 1024;
        v21 = 177;
        v22 = 1024;
        v23 = sendTimestampSpikeDetected;
        v24 = 1024;
        v25 = receiveTimestampSpikeDetected;
        v7 = "VCRC [%s] %s:%d Spurious lag detected with _sendTimestampSpikeDetected=%d, _sendTimestampSpikeDetected=%d";
        v8 = v4;
        v9 = 40;
LABEL_9:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v16, v9);
      }
    }
  }

  else
  {
    ++self->_spuriousLagWithoutSpikeCount;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_sendTimestampSpikeDetected;
        v13 = self->_receiveTimestampSpikeDetected;
        spuriousLagWithoutSpikeCount = self->_spuriousLagWithoutSpikeCount;
        v16 = 136316418;
        v17 = v10;
        v18 = 2080;
        v19 = "[VCRateControlOWRDEstimator shouldResumeOWRDEstimationWhenSpuriousLagDetected]";
        v20 = 1024;
        v21 = 180;
        v22 = 1024;
        v23 = v12;
        v24 = 1024;
        v25 = v13;
        v26 = 1024;
        v27 = spuriousLagWithoutSpikeCount;
        v7 = "VCRC [%s] %s:%d Spurious lag detected without _sendTimestampSpikeDetected=%d, _sendTimestampSpikeDetected=%d, increment _spuriousLagWithoutSpikeCount=%d";
        v8 = v11;
        v9 = 46;
        goto LABEL_9;
      }
    }
  }

  return self->_spuriousLagWithoutSpikeCount > 0x1E;
}

- (void)calculateOWRDWithSendTime:(double)time receiveTime:(double)receiveTime roundTripTime:(double)tripTime
{
  v47 = *MEMORY[0x1E69E9840];
  if (time < 0.0 || receiveTime < 0.0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136316162;
        v30 = v21;
        v31 = 2080;
        v32 = "[VCRateControlOWRDEstimator calculateOWRDWithSendTime:receiveTime:roundTripTime:]";
        v33 = 1024;
        v34 = 188;
        v35 = 2048;
        timeCopy = time;
        v37 = 2048;
        tripTimeCopy = receiveTime;
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Repeated or out of order timestamp detected when calculating OWRD, sendTime=%f, receiveTime=%f", &v29, 0x30u);
      }
    }
  }

  else
  {
    firstSendTime = self->_firstSendTime;
    if (firstSendTime == 0.0)
    {
      self->_firstSendTime = time;
      firstSendTime = time;
    }

    firstReceiveTime = self->_firstReceiveTime;
    if (firstReceiveTime == 0.0)
    {
      self->_firstReceiveTime = receiveTime;
      firstReceiveTime = receiveTime;
    }

    v11 = receiveTime - firstReceiveTime;
    v12 = time - firstSendTime;
    v13 = receiveTime - firstReceiveTime - v12;
    shortAverageLag = self->_shortAverageLag;
    if (shortAverageLag == 0.0 || (longAverageLag = self->_longAverageLag, longAverageLag == 0.0))
    {
      self->_shortAverageLag = v13;
      self->_longAverageLag = v13;
      longAverageLag = v13;
      shortAverageLag = v13;
    }

    if (v13 - shortAverageLag <= 30.0 && longAverageLag - v13 <= 30.0)
    {
      self->_spuriousLagWithoutSpikeCount = 0;
      v23 = v13 * 0.0001 + longAverageLag * 0.9999;
      v24 = v13 * 0.1 + shortAverageLag * 0.9;
      self->_shortAverageLag = v24;
      self->_longAverageLag = v23;
      v25 = v24 - v23;
      self->_owrd = v25;
      if (v25 < 0.0)
      {
        self->_longAverageLag = v24;
        self->_owrd = 0.0;
      }

      if ([(VCRateControlOWRDEstimator *)self detectAbnormalOWRDWithRoundTripTime:tripTime])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            owrd = self->_owrd;
            v29 = 136316162;
            v30 = v26;
            v31 = 2080;
            v32 = "[VCRateControlOWRDEstimator calculateOWRDWithSendTime:receiveTime:roundTripTime:]";
            v33 = 1024;
            v34 = 227;
            v35 = 2048;
            timeCopy = owrd;
            v37 = 2048;
            tripTimeCopy = tripTime;
            _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Abnormal OWRD %f detected while RTT stays low at %f for too long. Reference could be bad. Reset OWRD", &v29, 0x30u);
          }
        }

        goto LABEL_18;
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v19 = self->_shortAverageLag;
          v20 = self->_longAverageLag;
          v29 = 136317186;
          v30 = v17;
          v31 = 2080;
          v32 = "[VCRateControlOWRDEstimator calculateOWRDWithSendTime:receiveTime:roundTripTime:]";
          v33 = 1024;
          v34 = 210;
          v35 = 2048;
          timeCopy = v13;
          v37 = 2048;
          tripTimeCopy = v11;
          v39 = 2048;
          v40 = v12;
          v41 = 2048;
          v42 = v19;
          v43 = 2048;
          v44 = v20;
          v45 = 2048;
          v46 = 0x403E000000000000;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Lag=%f with receiveDiff=%f and sendDiff=%f looks spurious (shortLag=%f, longLag=%f, threshold=%f), discarding", &v29, 0x58u);
        }
      }

      if ([(VCRateControlOWRDEstimator *)self shouldResumeOWRDEstimationWhenSpuriousLagDetected])
      {
LABEL_18:
        [(VCRateControlOWRDEstimator *)self resetOWRDEstimation];
      }
    }
  }
}

- (BOOL)detectAbnormalOWRDWithRoundTripTime:(double)time
{
  v25 = *MEMORY[0x1E69E9840];
  if (time <= 0.0 || ((v5 = self->_owrd, v5 > 2.0) ? (v6 = v5 <= time * 5.0) : (v6 = 1), v6))
  {
    self->_abnormalOWRDSampleCount = 0;
  }

  else
  {
    ++self->_abnormalOWRDSampleCount;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (ErrorLogLevelForModule >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        owrd = self->_owrd;
        abnormalOWRDSampleCount = self->_abnormalOWRDSampleCount;
        v13 = 136316418;
        v14 = v9;
        v15 = 2080;
        v16 = "[VCRateControlOWRDEstimator detectAbnormalOWRDWithRoundTripTime:]";
        v17 = 1024;
        v18 = 237;
        v19 = 2048;
        v20 = owrd;
        v21 = 2048;
        timeCopy = time;
        v23 = 1024;
        v24 = abnormalOWRDSampleCount;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Abnormal OWRD %f detected while RTT stays low at %f. abnormalOWRDSampleCount:%u", &v13, 0x36u);
      }
    }
  }

  return self->_abnormalOWRDSampleCount > 0x1E;
}

- (BOOL)detectOutOfOrderAndSpikeWithSendTimestamp:(unsigned int)timestamp
{
  v3 = *&timestamp;
  v48 = *MEMORY[0x1E69E9840];
  previousSendTimestamp = self->_previousSendTimestamp;
  if (!previousSendTimestamp)
  {
    v10 = 0;
    self->_previousSendTimestamp = timestamp;
    return v10;
  }

  v6 = timestamp - previousSendTimestamp;
  averageSendInterval = self->_averageSendInterval;
  if (averageSendInterval <= 0.0)
  {
    goto LABEL_26;
  }

  v8 = (averageSendInterval * 10.0);
  if (!self->_useUINT16)
  {
    if (v6 < 0x7FFFFFFF)
    {
      if (v6 <= v8)
      {
        if (!self->_sendTimestampSpikeDetected || v6 >= (averageSendInterval * 1.2))
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      goto LABEL_20;
    }

LABEL_11:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_previousSendTimestamp;
        if (self->_useUINT16)
        {
          v14 = v6;
        }

        else
        {
          v14 = v6;
        }

        owrd = self->_owrd;
        v32 = 136316674;
        v33 = v11;
        v34 = 2080;
        v35 = "[VCRateControlOWRDEstimator detectOutOfOrderAndSpikeWithSendTimestamp:]";
        v36 = 1024;
        v37 = 259;
        v38 = 1024;
        v39 = v3;
        v40 = 1024;
        v41 = v13;
        v42 = 1024;
        v43 = v14;
        v44 = 2048;
        v45 = owrd;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Detected out of order at send timestamp %X, previousTS:%X, timestampDiff:%d, current owrd:%f", &v32, 0x38u);
      }
    }

    v10 = 1;
    if ([(VCRateControlOWRDEstimator *)self shouldResumeOWRDEstimationWhenOutOfOrderWithTimestamp:v3 isSend:1])
    {
      [(VCRateControlOWRDEstimator *)self resetOWRDEstimation];
    }

    goto LABEL_27;
  }

  v9 = (timestamp - previousSendTimestamp);
  if (v9 > 0x7FFE)
  {
    goto LABEL_11;
  }

  if (v9 <= v8)
  {
    if (!self->_sendTimestampSpikeDetected || v9 >= (averageSendInterval * 1.2))
    {
LABEL_44:
      v10 = 0;
      self->_sendTimestampOOORecoveredCount = 0;
      self->_previousSendTimestamp = v3;
      self->_sendTimestampSpikeDetected = 0;
      goto LABEL_27;
    }

LABEL_37:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v28 = self->_previousSendTimestamp;
        if (self->_useUINT16)
        {
          v29 = v6;
        }

        else
        {
          v29 = v6;
        }

        v30 = self->_averageSendInterval;
        v31 = self->_owrd;
        v32 = 136316930;
        v33 = v26;
        v34 = 2080;
        v35 = "[VCRateControlOWRDEstimator detectOutOfOrderAndSpikeWithSendTimestamp:]";
        v36 = 1024;
        v37 = 271;
        v38 = 1024;
        v39 = v3;
        v40 = 1024;
        v41 = v28;
        v42 = 1024;
        v43 = v29;
        v44 = 2048;
        v45 = v30;
        v46 = 2048;
        v47 = v31;
        _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Detected spike before send timestamp %X, previousTS:%X, timestampDiff:%d, average send interval:%f, current owrd:%f", &v32, 0x42u);
      }
    }

    [(VCRateControlOWRDEstimator *)self resetOWRDEstimation];
    goto LABEL_44;
  }

LABEL_20:
  self->_sendTimestampSpikeDetected = 1;
  self->_sendTimestampOOORecoveredCount = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_previousSendTimestamp;
      if (self->_useUINT16)
      {
        v19 = v6;
      }

      else
      {
        v19 = v6;
      }

      v20 = self->_averageSendInterval;
      v21 = self->_owrd;
      v32 = 136316930;
      v33 = v16;
      v34 = 2080;
      v35 = "[VCRateControlOWRDEstimator detectOutOfOrderAndSpikeWithSendTimestamp:]";
      v36 = 1024;
      v37 = 267;
      v38 = 1024;
      v39 = v3;
      v40 = 1024;
      v41 = v18;
      v42 = 1024;
      v43 = v19;
      v44 = 2048;
      v45 = v20;
      v46 = 2048;
      v47 = v21;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Detected spike at send timestamp %X, previousTS:%X, timestampDiff:%d, average send interval:%f, current owrd:%f", &v32, 0x42u);
    }
  }

LABEL_26:
  v10 = 0;
LABEL_27:
  v22 = self->_averageSendInterval;
  if (self->_useUINT16)
  {
    v23 = v6;
  }

  else
  {
    v23 = v6;
  }

  if (v22 == 0.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 * 0.1 + v22 * 0.9;
  }

  self->_averageSendInterval = v24;
  return v10;
}

- (BOOL)shouldResumeOWRDEstimationWhenOutOfOrderWithTimestamp:(unsigned int)timestamp isSend:(BOOL)send
{
  sendCopy = send;
  v37 = *MEMORY[0x1E69E9840];
  if (send)
  {
    v7 = 108;
  }

  else
  {
    v7 = 112;
  }

  v8 = 56;
  if (send)
  {
    v8 = 24;
  }

  v9 = *(&self->super.isa + v8);
  *(&self->super.isa + v8) = timestamp;
  if (self->_useUINT16)
  {
    if ((timestamp - v9) <= 0x7FFEu)
    {
LABEL_8:
      ++*(&self->super.isa + v7);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(&self->super.isa + v7);
          v13 = "receive";
          v21 = 136316930;
          v22 = v10;
          if (sendCopy)
          {
            v13 = "send";
          }

          v23 = 2080;
          v24 = "[VCRateControlOWRDEstimator shouldResumeOWRDEstimationWhenOutOfOrderWithTimestamp:isSend:]";
          v25 = 1024;
          v26 = 296;
          v27 = 2080;
          v28 = v13;
          v29 = 1024;
          timestampCopy2 = timestamp;
          v31 = 2080;
          v32 = v13;
          v33 = 1024;
          v34 = v9;
          v35 = 1024;
          v36 = v12;
          v14 = "VCRC [%s] %s:%d No consecutive out of order with %sTimestamp=%u, previous%sTimestamp=%u, increment oooContinuousRecoveredCount=%d";
          v15 = v11;
          v16 = 66;
LABEL_19:
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v21, v16);
          return *(&self->super.isa + v7) > 0x1Eu;
        }
      }

      return *(&self->super.isa + v7) > 0x1Eu;
    }
  }

  else if (timestamp - v9 <= 0x7FFFFFFE)
  {
    goto LABEL_8;
  }

  *(&self->super.isa + v7) = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v19 = "receive";
      v21 = 136316674;
      v22 = v17;
      v23 = 2080;
      v24 = "[VCRateControlOWRDEstimator shouldResumeOWRDEstimationWhenOutOfOrderWithTimestamp:isSend:]";
      if (sendCopy)
      {
        v19 = "send";
      }

      v25 = 1024;
      v26 = 299;
      v27 = 2080;
      v28 = v19;
      v29 = 1024;
      timestampCopy2 = timestamp;
      v31 = 2080;
      v32 = v19;
      v33 = 1024;
      v34 = v9;
      v14 = "VCRC [%s] %s:%d Reset oooContinuousRecoveredCount, since consecutively out of order with %sTimestamp=%u, previous%sTimestamp=%u";
      v15 = v18;
      v16 = 60;
      goto LABEL_19;
    }
  }

  return *(&self->super.isa + v7) > 0x1Eu;
}

- (BOOL)detectOutOfOrderAndSpikeWithReceiveTimestamp:(unsigned int)timestamp
{
  v3 = *&timestamp;
  v48 = *MEMORY[0x1E69E9840];
  previousReceiveTimestamp = self->_previousReceiveTimestamp;
  if (!previousReceiveTimestamp)
  {
    LOBYTE(v10) = 0;
    self->_previousReceiveTimestamp = timestamp;
    return v10;
  }

  v6 = timestamp - previousReceiveTimestamp;
  averageReceiveInterval = self->_averageReceiveInterval;
  if (averageReceiveInterval <= 0.0)
  {
    goto LABEL_27;
  }

  v8 = (averageReceiveInterval * 10.0);
  if (self->_useUINT16)
  {
    v9 = (timestamp - previousReceiveTimestamp);
    if (v9 <= 0x7FFE)
    {
      if (v9 <= v8)
      {
        if (!self->_receiveTimestampSpikeDetected || v9 >= (averageReceiveInterval * 1.2))
        {
LABEL_45:
          LOBYTE(v10) = 0;
          self->_receiveTimestampOOORecoveredCount = 0;
          self->_previousReceiveTimestamp = v3;
          self->_receiveTimestampSpikeDetected = 0;
          goto LABEL_28;
        }

LABEL_38:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v26 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v27 = self->_previousReceiveTimestamp;
            if (self->_useUINT16)
            {
              v28 = v6;
            }

            else
            {
              v28 = v6;
            }

            v29 = self->_averageReceiveInterval;
            owrd = self->_owrd;
            v32 = 136316930;
            v33 = v25;
            v34 = 2080;
            v35 = "[VCRateControlOWRDEstimator detectOutOfOrderAndSpikeWithReceiveTimestamp:]";
            v36 = 1024;
            v37 = 332;
            v38 = 1024;
            v39 = v3;
            v40 = 1024;
            v41 = v27;
            v42 = 1024;
            v43 = v28;
            v44 = 2048;
            v45 = v29;
            v46 = 2048;
            v47 = owrd;
            _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Detected spike before receive timestamp %X, previousTS:%X, timestampDiff:%d, average send interval:%f, current owrd:%f", &v32, 0x42u);
          }
        }

        [(VCRateControlOWRDEstimator *)self resetOWRDEstimation];
        goto LABEL_45;
      }

      goto LABEL_21;
    }

LABEL_11:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_previousReceiveTimestamp;
        if (self->_useUINT16)
        {
          v14 = v6;
        }

        else
        {
          v14 = v6;
        }

        v15 = self->_owrd;
        v32 = 136316674;
        v33 = v11;
        v34 = 2080;
        v35 = "[VCRateControlOWRDEstimator detectOutOfOrderAndSpikeWithReceiveTimestamp:]";
        v36 = 1024;
        v37 = 320;
        v38 = 1024;
        v39 = v3;
        v40 = 1024;
        v41 = v13;
        v42 = 1024;
        v43 = v14;
        v44 = 2048;
        v45 = v15;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Detected out of order at receive timestamp %X, previousTS:%X, timestampDiff:%d, current owrd:%f", &v32, 0x38u);
      }
    }

    if ([(VCRateControlOWRDEstimator *)self shouldResumeOWRDEstimationWhenOutOfOrderWithTimestamp:v3 isSend:0])
    {
      [(VCRateControlOWRDEstimator *)self resetOWRDEstimation];
    }

    LOBYTE(v10) = 1;
    goto LABEL_28;
  }

  if (v6 >= 0x7FFFFFFF)
  {
    goto LABEL_11;
  }

  if (v6 <= v8)
  {
    if (!self->_receiveTimestampSpikeDetected || v6 >= (averageReceiveInterval * 1.2))
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

LABEL_21:
  self->_receiveTimestampSpikeDetected = 1;
  self->_receiveTimestampOOORecoveredCount = 0;
  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
LABEL_27:
    LOBYTE(v10) = 0;
    goto LABEL_28;
  }

  v16 = VRTraceErrorLogLevelToCSTR();
  v17 = *MEMORY[0x1E6986650];
  v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    v18 = self->_previousReceiveTimestamp;
    if (self->_useUINT16)
    {
      v19 = v6;
    }

    else
    {
      v19 = v6;
    }

    v20 = self->_averageReceiveInterval;
    v21 = self->_owrd;
    v32 = 136316930;
    v33 = v16;
    v34 = 2080;
    v35 = "[VCRateControlOWRDEstimator detectOutOfOrderAndSpikeWithReceiveTimestamp:]";
    v36 = 1024;
    v37 = 328;
    v38 = 1024;
    v39 = v3;
    v40 = 1024;
    v41 = v18;
    v42 = 1024;
    v43 = v19;
    v44 = 2048;
    v45 = v20;
    v46 = 2048;
    v47 = v21;
    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Detected spike at receive timestamp %X, previousTS:%X, timestampDiff:%d, average send interval:%f, current owrd:%f", &v32, 0x42u);
    goto LABEL_27;
  }

LABEL_28:
  v22 = self->_averageReceiveInterval;
  if (self->_useUINT16)
  {
    v23 = v6;
  }

  else
  {
    v23 = v6;
  }

  if (v22 == 0.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 * 0.1 + v22 * 0.9;
  }

  self->_averageReceiveInterval = v24;
  return v10;
}

- (void)resetOWRDEstimation
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      owrd = self->_owrd;
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCRateControlOWRDEstimator resetOWRDEstimation]";
      v10 = 1024;
      v11 = 350;
      v12 = 2048;
      v13 = owrd;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Reset OWRD from %f to 0", &v6, 0x26u);
    }
  }

  *&self->_firstSendTimestamp = 0;
  self->_previousSendTimestampDiff = 0;
  self->_previousReceiveTimestampDiff = 0;
  self->_firstSendTime = 0.0;
  *&self->_firstReceiveTimestamp = 0;
  self->_shortAverageLag = 0.0;
  self->_longAverageLag = 0.0;
  self->_firstReceiveTime = 0.0;
  self->_averageSendInterval = 0.0;
  self->_averageReceiveInterval = 0.0;
}

- (void)relativeSendTimeWithTimestamp:timestampRate:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Time counter wrapped around", v2, v3, v4, v5, v6);
}

- (void)relativeSendTimeWithTimestamp:timestampRate:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Time counter wrapped around", v2, v3, v4, v5, v6);
}

- (void)relativeReceiveTimeWithTimestamp:timestampRate:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Time counter wrapped around", v2, v3, v4, v5, v6);
}

- (void)relativeReceiveTimeWithTimestamp:timestampRate:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Time counter wrapped around", v2, v3, v4, v5, v6);
}

@end