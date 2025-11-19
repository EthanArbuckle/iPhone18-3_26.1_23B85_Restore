@interface VCVideoStreamNOWRDLossEventRateControl
- (BOOL)shouldRampDown;
- (BOOL)shouldRampUp;
- (VCVideoStreamNOWRDLossEventRateControl)init;
- (id)className;
- (int)lossEventCountThresholdForBitrate:(unsigned int)a3;
- (unsigned)rampDownTier;
- (unsigned)rampUpTier;
- (void)calculateNOWRD:(double)a3 time:(double)a4;
- (void)calculateOWRDWithTimestamp:(unsigned int)a3 sampleRate:(unsigned int)a4 time:(double)a5;
- (void)doRateControlWithTime:(double)a3 roundTripTime:(double)a4 packetLossRate:(double)a5 operatingTierIndex:(unsigned __int16)a6 averageReceivedBitrate:(unsigned int)a7;
- (void)printRateControlFullInfoWithLogDump:(void *)a3 time:(double)a4 videoStall:(BOOL)a5 videoFrozenDuration:(double)a6 averageTargetBitrate:(unsigned int)a7;
- (void)setMaxTierIndex:(unsigned __int16)a3 minTierIndex:(unsigned __int16)a4;
- (void)stateChange:(int)a3;
- (void)stateEnter;
- (void)updatePacketLossRate:(double)a3 time:(double)a4;
@end

@implementation VCVideoStreamNOWRDLossEventRateControl

- (VCVideoStreamNOWRDLossEventRateControl)init
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = VCVideoStreamNOWRDLossEventRateControl;
  v2 = [(VCVideoStreamNOWRDLossEventRateControl *)&v15 init];
  v3 = v2;
  if (v2)
  {
    [(VCVideoStreamNOWRDLossEventRateControl *)v2 setMaxTierIndex:26 minTierIndex:0];
    v3->_rateControlInterval = 0.5;
    [VCDefaults getDoubleValueForKey:@"videoStreamRampUpFrozenDuration" defaultValue:2.0];
    v3->_rampUpFrozenDuration = v4;
    [VCDefaults getDoubleValueForKey:@"videoStreamRampUpNoLossEventDurationRatio" defaultValue:4.0];
    v3->_rampUpNoLossEventDurationRatio = v5;
    [VCDefaults getDoubleValueForKey:@"videoStreamRampDownLossEventCountThreshold" defaultValue:2.0];
    v3->_rampDownLossEventCountThreshold = v6;
    [VCDefaults getDoubleValueForKey:@"videoStreamRampDownLossEventBitrateThreshold" defaultValue:502000.0];
    v3->_rampDownLossEventBitrateThreshold = v7;
    [VCDefaults getDoubleValueForKey:@"videoStreamRampUpStatusRateLimitedThreshold" defaultValue:0.5];
    v3->_rampUpStatusRateLimitedThreshold = v8;
    [VCDefaults getDoubleValueForKey:@"videoStreamRampDownLossRateThreshold" defaultValue:0.005];
    v3->_rampDownLossRateThreshold = v9;
    [VCDefaults getDoubleValueForKey:@"videoStreamRampDownNOWRDThreshold" defaultValue:0.1];
    v3->_nowrdRampDownThreshold = v10;
    [VCDefaults getDoubleValueForKey:@"videoStreamRampUpNOWRDThreshold" defaultValue:0.005];
    v3->_nowrdRampUpThreshold = v11;
    [VCDefaults getDoubleValueForKey:@"videoStreamRampDownNOWRDAccThreshold" defaultValue:0.1];
    v3->_nowrdAccRampDownThreshold = v12;
    [VCDefaults getDoubleValueForKey:@"videoStreamRampUpNOWRDAccThreshold" defaultValue:0.1];
    v3->_nowrdAccRampUpThreshold = v13;
    v3->_doRateControlCounter = 0;
  }

  return v3;
}

- (void)setMaxTierIndex:(unsigned __int16)a3 minTierIndex:(unsigned __int16)a4
{
  self->_maxTierIndex = a3;
  self->_minTierIndex = a4;
  self->_currentTierIndex = a4;
  self->_targetBitrate = g_adwTxRateTiers[a4];
  self->_state = 2;
}

- (void)doRateControlWithTime:(double)a3 roundTripTime:(double)a4 packetLossRate:(double)a5 operatingTierIndex:(unsigned __int16)a6 averageReceivedBitrate:(unsigned int)a7
{
  if (self->_state != 3)
  {
    *&self->_rampUpStatus = 0;
    self->_rateControlTime = a3;
    self->_roundTripTime = a4;
    self->_averageReceivedBitrate = a7;
    ++self->_doRateControlCounter;
    [(VCVideoStreamNOWRDLossEventRateControl *)self updatePacketLossRate:a5 time:a3];
    self->_currentTierIndex = a6;
    self->_prevOperatingTierIndex = a6;
    state = self->_state;
    if (state)
    {
      if (state == 1)
      {
        self->_rampUpStatus |= 1u;
        if ([(VCVideoStreamNOWRDLossEventRateControl *)self shouldRampDown])
        {
          self->_currentTierIndex = [(VCVideoStreamNOWRDLossEventRateControl *)self rampDownTier];
          self->_rampUpFrozenTime = a3;
          rampUpFrozenTime = a3;
        }

        else
        {
          rampUpFrozenTime = self->_rampUpFrozenTime;
        }

        if (a3 - rampUpFrozenTime <= self->_rampUpFrozenDuration)
        {
          goto LABEL_18;
        }

LABEL_13:
        v13 = self;
        v14 = 0;
LABEL_17:
        [(VCVideoStreamNOWRDLossEventRateControl *)v13 stateChange:v14];
        goto LABEL_18;
      }

      if (state == 2)
      {
        if (![(VCVideoStreamNOWRDLossEventRateControl *)self shouldRampDown])
        {
          if ([(VCVideoStreamNOWRDLossEventRateControl *)self shouldRampUp])
          {
            self->_currentTierIndex = [(VCVideoStreamNOWRDLossEventRateControl *)self rampUpTier];
          }

          goto LABEL_18;
        }

        self->_currentTierIndex = [(VCVideoStreamNOWRDLossEventRateControl *)self rampDownTier];
        goto LABEL_13;
      }

LABEL_18:
      self->_targetBitrate = g_adwTxRateTiers[self->_currentTierIndex];
      return;
    }

    if ([(VCVideoStreamNOWRDLossEventRateControl *)self shouldRampDown])
    {
      v12 = [(VCVideoStreamNOWRDLossEventRateControl *)self rampDownTier];
    }

    else
    {
      if (![(VCVideoStreamNOWRDLossEventRateControl *)self shouldRampUp])
      {
        goto LABEL_18;
      }

      v12 = [(VCVideoStreamNOWRDLossEventRateControl *)self rampUpTier];
    }

    self->_currentTierIndex = v12;
    v13 = self;
    v14 = 1;
    goto LABEL_17;
  }
}

- (void)printRateControlFullInfoWithLogDump:(void *)a3 time:(double)a4 videoStall:(BOOL)a5 videoFrozenDuration:(double)a6 averageTargetBitrate:(unsigned int)a7
{
  if (a3)
  {
    if (self->_doRateControlCounter)
    {
      VRLogfilePrintWithTimestamp(a3, "%8.3f/%04X:\t%.4f\t%.4f\t%.4f\t%.4f %c\tRTT:%-4u\tPLR:%4.2f@%.1f\tRRx:%3u\tMBL:0\t%3u/%3u\t 0:0/0  0:0/0 CS: 0 0 0 BB: %u\t%04X\t%u\t UAT S _\t%d\n", a3, a5, *&a7, v7, v8, v9, SLOBYTE(a4));
    }
  }
}

- (void)stateChange:(int)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_state != a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = [-[VCVideoStreamNOWRDLossEventRateControl className](self "className")];
        state = self->_state;
        v9 = 136316674;
        v10 = v5;
        v11 = 2080;
        v12 = "[VCVideoStreamNOWRDLossEventRateControl stateChange:]";
        v13 = 1024;
        v14 = 223;
        v15 = 2080;
        v16 = v7;
        v17 = 1024;
        v18 = 223;
        v19 = 1024;
        v20 = state;
        v21 = 1024;
        v22 = a3;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s:%d Exiting state:%d Entering state:%d", &v9, 0x38u);
      }
    }

    [(VCVideoStreamNOWRDLossEventRateControl *)self stateExit];
    self->_state = a3;
    [(VCVideoStreamNOWRDLossEventRateControl *)self stateEnter];
  }
}

- (void)stateEnter
{
  if (self->_state == 1)
  {
    self->_rampUpFrozenTime = self->_rateControlTime;
  }
}

- (unsigned)rampUpTier
{
  if ((self->_currentTierIndex + 1) >= self->_maxTierIndex)
  {
    return self->_maxTierIndex;
  }

  else
  {
    return self->_currentTierIndex + 1;
  }
}

- (unsigned)rampDownTier
{
  v2 = self->_currentTierIndex - 2;
  if (v2 <= self->_minTierIndex)
  {
    LOWORD(v2) = self->_minTierIndex;
  }

  self->_nowrdAcc = 0.0;
  return v2;
}

- (BOOL)shouldRampDown
{
  v3 = g_adwTxRateTiers[self->_currentTierIndex];
  nowrd = self->_nowrd;
  nowrdRampDownThreshold = self->_nowrdRampDownThreshold;
  v6 = nowrd > nowrdRampDownThreshold;
  if (nowrd > nowrdRampDownThreshold)
  {
    self->_rampDownStatus |= 0x80u;
  }

  if (self->_nowrdAcc > self->_nowrdAccRampDownThreshold)
  {
    self->_rampDownStatus |= 0x100u;
    v6 = 1;
  }

  v7 = [(VCVideoStreamNOWRDLossEventRateControl *)self lossEventCount];
  if (v7 >= [(VCVideoStreamNOWRDLossEventRateControl *)self lossEventCountThresholdForBitrate:v3])
  {
    [(VCVideoStreamNOWRDLossEventRateControl *)self resetLossEventBuffer];
    self->_rampDownStatus |= 0x20u;
    return 1;
  }

  return v6;
}

- (BOOL)shouldRampUp
{
  v2 = self->_rateControlTime - self->_lastLossEventTime;
  rateControlInterval = self->_rateControlInterval;
  v4 = self->_rampUpNoLossEventDurationRatio * rateControlInterval;
  v5 = v2 >= v4;
  if (v2 < v4)
  {
    self->_rampUpStatus |= 2u;
  }

  averageReceivedBitrate = self->_averageReceivedBitrate;
  if (averageReceivedBitrate)
  {
    LODWORD(rateControlInterval) = g_adwTxRateTiers[self->_currentTierIndex];
    if (self->_rampUpStatusRateLimitedThreshold * *&rateControlInterval > averageReceivedBitrate && self->_state != 2)
    {
      v5 = 0;
      self->_rampUpStatus |= 4u;
    }
  }

  if (self->_nowrd > self->_nowrdRampUpThreshold)
  {
    v5 = 0;
    self->_rampUpStatus |= 8u;
  }

  nowrdAcc = self->_nowrdAcc;
  if (nowrdAcc == 0.0 || nowrdAcc > self->_nowrdAccRampUpThreshold)
  {
    v5 = 0;
    self->_rampUpStatus |= 0x10u;
  }

  return v5;
}

- (void)updatePacketLossRate:(double)a3 time:(double)a4
{
  self->_packetLossRate = a3;
  lossEventBuffer = self->_lossEventBuffer;
  lossEventBufferIndex = self->_lossEventBufferIndex;
  if (self->_rampDownLossRateThreshold >= a3)
  {
    lossEventBuffer[lossEventBufferIndex] = 0;
  }

  else
  {
    lossEventBuffer[lossEventBufferIndex] = 1;
    self->_lastLossEventTime = a4;
  }

  v6 = lossEventBufferIndex + 1;
  v7 = -v6 < 0;
  v8 = -v6 & 3;
  v9 = v6 & 3;
  if (!v7)
  {
    v9 = -v8;
  }

  self->_lossEventBufferIndex = v9;
}

- (int)lossEventCountThresholdForBitrate:(unsigned int)a3
{
  if (self->_rampDownLossEventBitrateThreshold <= a3)
  {
    return 1;
  }

  else
  {
    return self->_rampDownLossEventCountThreshold;
  }
}

- (void)calculateOWRDWithTimestamp:(unsigned int)a3 sampleRate:(unsigned int)a4 time:(double)a5
{
  v45 = *MEMORY[0x1E69E9840];
  firstSendTimestamp = self->_firstSendTimestamp;
  if (!firstSendTimestamp)
  {
    self->_firstSendTimestamp = a3;
    firstSendTimestamp = a3;
  }

  firstReceiveTime = self->_firstReceiveTime;
  if (firstReceiveTime == 0.0)
  {
    self->_firstReceiveTime = a5;
    firstReceiveTime = a5;
  }

  v11 = a3 - firstSendTimestamp;
  previousTimestampDiff = self->_previousTimestampDiff;
  if (v11 != previousTimestampDiff)
  {
    if (v11 - previousTimestampDiff <= 0x7FFFFFFE)
    {
      if (v11 < previousTimestampDiff)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v35 = 136315650;
            v36 = v13;
            v37 = 2080;
            v38 = "[VCVideoStreamNOWRDLossEventRateControl calculateOWRDWithTimestamp:sampleRate:time:]";
            v39 = 1024;
            v40 = 367;
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Time counter wrapped around", &v35, 0x1Cu);
          }
        }

        ++self->_sendTimestampWrappedAround;
        firstReceiveTime = self->_firstReceiveTime;
      }

      self->_previousTimestampDiff = v11;
    }

    v15 = a5 - firstReceiveTime - (v11 - self->_sendTimestampWrappedAround) / a4;
    self->_previousSendTimestamp = a3;
    shortAverageLag = self->_shortAverageLag;
    if (shortAverageLag == 0.0 || (longAverageLag = self->_longAverageLag, longAverageLag == 0.0))
    {
      self->_shortAverageLag = v15;
      self->_longAverageLag = v15;
      longAverageLag = v15;
      shortAverageLag = v15;
    }

    if (v15 - shortAverageLag <= 30.0 && longAverageLag - v15 <= 30.0)
    {
      v23 = v15 * 0.0001 + longAverageLag * 0.9999;
      v24 = v15 * 0.1 + shortAverageLag * 0.9;
      self->_shortAverageLag = v24;
      self->_longAverageLag = v23;
      v25 = v24 - v23;
      self->_owrd = v25;
      if (v25 < 0.0)
      {
        self->_longAverageLag = v24;
        self->_owrd = 0.0;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        v28 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = self->_shortAverageLag;
            v30 = self->_longAverageLag;
            owrd = self->_owrd;
            v35 = 136317186;
            v36 = v26;
            v37 = 2080;
            v38 = "[VCVideoStreamNOWRDLossEventRateControl calculateOWRDWithTimestamp:sampleRate:time:]";
            v39 = 1024;
            v40 = 396;
            v41 = 1024;
            *v42 = a3;
            *&v42[4] = 2048;
            *&v42[6] = a5;
            *&v42[14] = 2048;
            *&v42[16] = v15;
            *&v42[24] = 2048;
            *&v42[26] = v29;
            *&v42[34] = 2048;
            *&v42[36] = v30;
            v43 = 2048;
            v44 = owrd;
            _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d calculateOWRDWithTimestamp: timestamp: %u, now: %f, Lag %fs short %fs: long %fs : owrd %fs", &v35, 0x54u);
          }
        }

        else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v32 = self->_shortAverageLag;
          v33 = self->_longAverageLag;
          v34 = self->_owrd;
          v35 = 136317186;
          v36 = v26;
          v37 = 2080;
          v38 = "[VCVideoStreamNOWRDLossEventRateControl calculateOWRDWithTimestamp:sampleRate:time:]";
          v39 = 1024;
          v40 = 396;
          v41 = 1024;
          *v42 = a3;
          *&v42[4] = 2048;
          *&v42[6] = a5;
          *&v42[14] = 2048;
          *&v42[16] = v15;
          *&v42[24] = 2048;
          *&v42[26] = v32;
          *&v42[34] = 2048;
          *&v42[36] = v33;
          v43 = 2048;
          v44 = v34;
          _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, " [%s] %s:%d calculateOWRDWithTimestamp: timestamp: %u, now: %f, Lag %fs short %fs: long %fs : owrd %fs", &v35, 0x54u);
        }
      }

      [(VCVideoStreamNOWRDLossEventRateControl *)self calculateNOWRD:self->_owrd time:a5];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v21 = self->_shortAverageLag;
        v22 = self->_longAverageLag;
        v35 = 136316674;
        v36 = v19;
        v37 = 2080;
        v38 = "[VCVideoStreamNOWRDLossEventRateControl calculateOWRDWithTimestamp:sampleRate:time:]";
        v39 = 1024;
        v40 = 384;
        v41 = 2048;
        *v42 = v15;
        *&v42[8] = 2048;
        *&v42[10] = v21;
        *&v42[18] = 2048;
        *&v42[20] = v22;
        *&v42[28] = 2048;
        *&v42[30] = 0x403E000000000000;
        _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d calculateOWRDWithTimestamp: Lag (%fs) looks spurios (short %fs: long %fs : threshold %fs), discarding", &v35, 0x44u);
      }
    }
  }
}

- (void)calculateNOWRD:(double)a3 time:(double)a4
{
  p_OWRDList = &self->OWRDList;
  rearIndex = self->OWRDList.rearIndex;
  if (a4 - self->OWRDList.time[rearIndex] >= 0.01)
  {
    v6 = (rearIndex + 1) % 50;
    self->OWRDList.rearIndex = v6;
    owrd = self->OWRDList.owrd;
    self->OWRDList.owrd[v6] = a3;
    p_OWRDList->time[v6] = a4;
    size = self->OWRDList.size;
    if (size >= 50)
    {
      v9 = self->OWRDList.size;
    }

    else
    {
      v9 = size + 1;
    }

    self->OWRDList.size = v9;
    frontIndex = self->OWRDList.frontIndex;
    if (v6 == frontIndex && v9 != 1)
    {
      frontIndex = (v6 + 1 - 50 * ((((41 * (v6 + 1)) & 0x8000) != 0) + ((41 * (v6 + 1)) >> 11)));
      self->OWRDList.frontIndex = frontIndex;
    }

    if (v9 >= 4)
    {
      v12 = (v6 + 47 - 50 * ((((41 * (v6 + 47)) & 0x8000) != 0) + ((41 * (v6 + 47)) >> 11)));
      v13 = frontIndex;
      if (frontIndex != v12)
      {
        v13 = (v6 + 47 - 50 * ((((41 * (v6 + 47)) & 0x8000) != 0) + ((41 * (v6 + 47)) >> 11)));
        while (a4 - p_OWRDList->time[v13] <= 0.5)
        {
          v13 = (v13 + 49) % 0x32u;
          if (v13 == frontIndex)
          {
            v13 = frontIndex;
            break;
          }
        }
      }

      state = self->_state;
      if (state != 2 || (v15 = 0.0, a4 - p_OWRDList->time[v13] >= 0.2))
      {
        v16 = v6 + 50;
        if (v6 > v13)
        {
          v16 = v6;
        }

        v17 = v16 - v13;
        if (v16 - v13 < 0)
        {
          v23 = 0.0;
          v22 = 0.0;
          v24 = 0.0;
        }

        else
        {
          v18 = (v13 + (v17 + 1) / 2) % 50;
          v19 = (v17 + 2) >> 1;
          v20 = 0.0;
          v21 = 0.0;
          v22 = 0.0;
          v23 = 0.0;
          do
          {
            v23 = v23 + owrd[v13 % 50];
            v22 = v22 + owrd[v18 % 50];
            v21 = v21 + p_OWRDList->time[v13 % 50];
            v20 = v20 + p_OWRDList->time[v18 % 50];
            ++v18;
            ++v13;
            --v19;
          }

          while (v19);
          v24 = v20 - v21;
        }

        if (fabs(v24) < 0.001)
        {
          return;
        }

        v15 = (v22 - v23) / v24 * 0.5;
      }

      self->_nowrd = v15;
      if (frontIndex != v12)
      {
        while (a4 - p_OWRDList->time[v12] <= 0.25)
        {
          v12 = (v12 + 49) % 0x32u;
          if (v12 == frontIndex)
          {
            goto LABEL_32;
          }
        }

        frontIndex = v12;
      }

LABEL_32:
      if (state == 2)
      {
        v25 = 0.0;
        if (a4 - p_OWRDList->time[frontIndex] < 0.2)
        {
          goto LABEL_43;
        }
      }

      v26 = v6 + 50;
      if (v6 > frontIndex)
      {
        v26 = v6;
      }

      v27 = v26 - frontIndex;
      if (v26 - frontIndex < 0)
      {
        v33 = 0.0;
        v32 = 0.0;
        v34 = 0.0;
      }

      else
      {
        v28 = (frontIndex + (v27 + 1) / 2) % 50;
        v29 = (v27 + 2) >> 1;
        v30 = 0.0;
        v31 = 0.0;
        v32 = 0.0;
        v33 = 0.0;
        do
        {
          v33 = v33 + owrd[frontIndex % 50];
          v32 = v32 + owrd[v28 % 50];
          v31 = v31 + p_OWRDList->time[frontIndex % 50];
          v30 = v30 + p_OWRDList->time[v28 % 50];
          ++v28;
          ++frontIndex;
          --v29;
        }

        while (v29);
        v34 = v30 - v31;
      }

      if (fabs(v34) >= 0.001)
      {
        v25 = (v32 - v33) / v34 * 0.25;
LABEL_43:
        self->_nowrdShort = v25;
        v35 = p_OWRDList->time[(v6 + 49) % 0x32u];
        v36 = self->_nowrdAcc + v15 * (a4 - v35) + v15 * (a4 - v35);
        if (v36 < 0.0)
        {
          v36 = 0.0;
        }

        self->_nowrdAcc = v36;
      }
    }
  }
}

- (id)className
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end