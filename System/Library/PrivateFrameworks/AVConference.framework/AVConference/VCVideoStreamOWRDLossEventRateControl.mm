@interface VCVideoStreamOWRDLossEventRateControl
- (BOOL)shouldRampDown;
- (BOOL)shouldRampUp;
- (VCVideoStreamOWRDLossEventRateControl)init;
- (id)className;
- (int)lossEventCountThresholdForBitrate:(unsigned int)bitrate;
- (unsigned)rampDownTier;
- (unsigned)rampUpTier;
- (void)calculateOWRDWithTimestamp:(unsigned int)timestamp sampleRate:(unsigned int)rate time:(double)time;
- (void)doRateControlWithTime:(double)time roundTripTime:(double)tripTime packetLossRate:(double)rate operatingTierIndex:(unsigned __int16)index averageReceivedBitrate:(unsigned int)bitrate;
- (void)printRateControlFullInfoWithLogDump:(void *)dump time:(double)time videoStall:(BOOL)stall videoFrozenDuration:(double)duration averageTargetBitrate:(unsigned int)bitrate;
- (void)setMaxTierIndex:(unsigned __int16)index minTierIndex:(unsigned __int16)tierIndex;
- (void)stateChange:(int)change;
- (void)stateEnter;
- (void)updatePacketLossRate:(double)rate time:(double)time;
@end

@implementation VCVideoStreamOWRDLossEventRateControl

- (VCVideoStreamOWRDLossEventRateControl)init
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VCVideoStreamOWRDLossEventRateControl;
  v2 = [(VCVideoStreamOWRDLossEventRateControl *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(VCVideoStreamOWRDLossEventRateControl *)v2 setMaxTierIndex:26 minTierIndex:0];
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
    [VCDefaults getDoubleValueForKey:@"videoStreamRampDownOWRDThreshold" defaultValue:0.15];
    v3->_rampDownOWRDThreshold = v9;
    [VCDefaults getDoubleValueForKey:@"videoStreamRampDownLossRateThreshold" defaultValue:0.005];
    v3->_rampDownLossRateThreshold = v10;
  }

  return v3;
}

- (void)setMaxTierIndex:(unsigned __int16)index minTierIndex:(unsigned __int16)tierIndex
{
  self->_maxTierIndex = index;
  self->_minTierIndex = tierIndex;
  self->_currentTierIndex = tierIndex;
  self->_state = 2;
}

- (void)doRateControlWithTime:(double)time roundTripTime:(double)tripTime packetLossRate:(double)rate operatingTierIndex:(unsigned __int16)index averageReceivedBitrate:(unsigned int)bitrate
{
  if (self->_state != 3)
  {
    self->_rampUpStatus = 0;
    self->_rateControlTime = time;
    self->_roundTripTime = tripTime;
    self->_averageReceivedBitrate = bitrate;
    [(VCVideoStreamOWRDLossEventRateControl *)self updatePacketLossRate:rate time:time];
    self->_currentTierIndex = index;
    state = self->_state;
    if (state)
    {
      if (state == 1)
      {
        self->_rampUpStatus |= 1uLL;
        if ([(VCVideoStreamOWRDLossEventRateControl *)self shouldRampDown])
        {
          self->_currentTierIndex = [(VCVideoStreamOWRDLossEventRateControl *)self rampDownTier];
          self->_rampUpFrozenTime = time;
          rampUpFrozenTime = time;
        }

        else
        {
          rampUpFrozenTime = self->_rampUpFrozenTime;
        }

        if (time - rampUpFrozenTime <= self->_rampUpFrozenDuration)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }

      if (state != 2)
      {
LABEL_20:
        self->_targetBitrate = g_adwTxRateTiers[self->_currentTierIndex];
        return;
      }

      if ([(VCVideoStreamOWRDLossEventRateControl *)self shouldRampDown])
      {
        self->_currentTierIndex = [(VCVideoStreamOWRDLossEventRateControl *)self rampDownTier];
LABEL_13:
        selfCopy2 = self;
        v14 = 0;
LABEL_14:
        [(VCVideoStreamOWRDLossEventRateControl *)selfCopy2 stateChange:v14];
        goto LABEL_20;
      }

      if (![(VCVideoStreamOWRDLossEventRateControl *)self shouldRampUp])
      {
        goto LABEL_20;
      }

      rampUpTier = [(VCVideoStreamOWRDLossEventRateControl *)self rampUpTier];
    }

    else
    {
      if (![(VCVideoStreamOWRDLossEventRateControl *)self shouldRampDown])
      {
        if (![(VCVideoStreamOWRDLossEventRateControl *)self shouldRampUp])
        {
          goto LABEL_20;
        }

        self->_currentTierIndex = [(VCVideoStreamOWRDLossEventRateControl *)self rampUpTier];
        selfCopy2 = self;
        v14 = 1;
        goto LABEL_14;
      }

      rampUpTier = [(VCVideoStreamOWRDLossEventRateControl *)self rampDownTier];
    }

    self->_currentTierIndex = rampUpTier;
    goto LABEL_20;
  }
}

- (void)printRateControlFullInfoWithLogDump:(void *)dump time:(double)time videoStall:(BOOL)stall videoFrozenDuration:(double)duration averageTargetBitrate:(unsigned int)bitrate
{
  if (dump)
  {
    VRLogfilePrintWithTimestamp(dump, "%8.3f/%04X:\t%.4f\t%.4f\t%.4f\t%.4f %c\tRTT:%-4u\tPLR:%4.2f@%.1f\tRRx:0\tMBL:0\t%3u/%3u\t 0:0/0  0:0/0 CS: 0 0 0 BB: %u\t%d\t0\t UAT S _\t%d\n", dump, stall, *&bitrate, v7, v8, v9, SLOBYTE(time));
  }
}

- (void)stateChange:(int)change
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_state != change)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = [-[VCVideoStreamOWRDLossEventRateControl className](self "className")];
        state = self->_state;
        v9 = 136316674;
        v10 = v5;
        v11 = 2080;
        v12 = "[VCVideoStreamOWRDLossEventRateControl stateChange:]";
        v13 = 1024;
        v14 = 193;
        v15 = 2080;
        v16 = v7;
        v17 = 1024;
        v18 = 193;
        v19 = 1024;
        v20 = state;
        v21 = 1024;
        changeCopy = change;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s:%d Exiting state:%d Entering state:%d", &v9, 0x38u);
      }
    }

    [(VCVideoStreamOWRDLossEventRateControl *)self stateExit];
    self->_state = change;
    [(VCVideoStreamOWRDLossEventRateControl *)self stateEnter];
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

  return v2;
}

- (BOOL)shouldRampDown
{
  v3 = self->_owrd >= self->_rampDownOWRDThreshold;
  v4 = g_adwTxRateTiers[self->_currentTierIndex];
  lossEventCount = [(VCVideoStreamOWRDLossEventRateControl *)self lossEventCount];
  if (lossEventCount >= [(VCVideoStreamOWRDLossEventRateControl *)self lossEventCountThresholdForBitrate:v4])
  {
    [(VCVideoStreamOWRDLossEventRateControl *)self resetLossEventBuffer];
    return 1;
  }

  return v3;
}

- (BOOL)shouldRampUp
{
  v3 = self->_rateControlTime - self->_lastLossEventTime;
  rateControlInterval = self->_rateControlInterval;
  v5 = self->_rampUpNoLossEventDurationRatio * rateControlInterval;
  result = v3 >= v5;
  if (v3 < v5)
  {
    self->_rampUpStatus |= 2uLL;
  }

  averageReceivedBitrate = self->_averageReceivedBitrate;
  if (averageReceivedBitrate)
  {
    LODWORD(rateControlInterval) = g_adwTxRateTiers[self->_currentTierIndex];
    if (self->_rampUpStatusRateLimitedThreshold * *&rateControlInterval > averageReceivedBitrate && self->_state != 2)
    {
      result = 0;
      self->_rampUpStatus |= 4uLL;
    }
  }

  return result;
}

- (void)updatePacketLossRate:(double)rate time:(double)time
{
  self->_packetLossRate = rate;
  lossEventBuffer = self->_lossEventBuffer;
  lossEventBufferIndex = self->_lossEventBufferIndex;
  if (self->_rampDownLossRateThreshold >= rate)
  {
    lossEventBuffer[lossEventBufferIndex] = 0;
  }

  else
  {
    lossEventBuffer[lossEventBufferIndex] = 1;
    self->_lastLossEventTime = time;
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

- (int)lossEventCountThresholdForBitrate:(unsigned int)bitrate
{
  if (self->_rampDownLossEventBitrateThreshold <= bitrate)
  {
    return 1;
  }

  else
  {
    return self->_rampDownLossEventCountThreshold;
  }
}

- (void)calculateOWRDWithTimestamp:(unsigned int)timestamp sampleRate:(unsigned int)rate time:(double)time
{
  v45 = *MEMORY[0x1E69E9840];
  firstSendTimestamp = self->_firstSendTimestamp;
  if (!firstSendTimestamp)
  {
    self->_firstSendTimestamp = timestamp;
    firstSendTimestamp = timestamp;
  }

  firstReceiveTime = self->_firstReceiveTime;
  if (firstReceiveTime == 0.0)
  {
    self->_firstReceiveTime = time;
    firstReceiveTime = time;
  }

  if (self->_previousSendTimestamp < timestamp)
  {
    v11 = timestamp - firstSendTimestamp;
    previousTimestampDiff = self->_previousTimestampDiff;
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
            v38 = "[VCVideoStreamOWRDLossEventRateControl calculateOWRDWithTimestamp:sampleRate:time:]";
            v39 = 1024;
            v40 = 316;
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Time counter wrapped around", &v35, 0x1Cu);
          }
        }

        ++self->_sendTimestampWrappedAround;
        firstReceiveTime = self->_firstReceiveTime;
      }

      self->_previousTimestampDiff = v11;
    }

    v15 = time - firstReceiveTime - (v11 - self->_sendTimestampWrappedAround) / rate;
    self->_previousSendTimestamp = timestamp;
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
            v38 = "[VCVideoStreamOWRDLossEventRateControl calculateOWRDWithTimestamp:sampleRate:time:]";
            v39 = 1024;
            v40 = 345;
            v41 = 1024;
            *v42 = timestamp;
            *&v42[4] = 2048;
            *&v42[6] = time;
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
          v38 = "[VCVideoStreamOWRDLossEventRateControl calculateOWRDWithTimestamp:sampleRate:time:]";
          v39 = 1024;
          v40 = 345;
          v41 = 1024;
          *v42 = timestamp;
          *&v42[4] = 2048;
          *&v42[6] = time;
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
        v38 = "[VCVideoStreamOWRDLossEventRateControl calculateOWRDWithTimestamp:sampleRate:time:]";
        v39 = 1024;
        v40 = 333;
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

- (id)className
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end