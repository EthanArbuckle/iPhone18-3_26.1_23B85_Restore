@interface VCVideoStreamRTTPLRRateControl
- (VCVideoStreamRTTPLRRateControl)init;
- (id)className;
- (unsigned)rampDownTier;
- (unsigned)rampUpTier;
- (void)doRateControlWithTime:(double)time roundTripTime:(double)tripTime packetLossRate:(double)rate operatingTierIndex:(unsigned __int16)index averageReceivedBitrate:(unsigned int)bitrate;
- (void)printRateControlFullInfoWithLogDump:(void *)dump time:(double)time videoStall:(BOOL)stall videoFrozenDuration:(double)duration averageTargetBitrate:(unsigned int)bitrate;
- (void)setMaxTierIndex:(unsigned __int16)index minTierIndex:(unsigned __int16)tierIndex;
- (void)stateChange:(int)change;
- (void)stateEnter;
@end

@implementation VCVideoStreamRTTPLRRateControl

- (VCVideoStreamRTTPLRRateControl)init
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCVideoStreamRTTPLRRateControl;
  v2 = [(VCVideoStreamRTTPLRRateControl *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(VCVideoStreamRTTPLRRateControl *)v2 setMaxTierIndex:26 minTierIndex:0];
    [VCDefaults getDoubleValueForKey:@"videoStreamRampUpFrozenDuration" defaultValue:10.0];
    v3->_rampUpFrozenDuration = v4;
    [VCDefaults getDoubleValueForKey:@"videoStreamRampUpPacketLossRate" defaultValue:0.01];
    v3->_rampUpPacketLossRate = v5;
    [VCDefaults getDoubleValueForKey:@"videoStreamRampDownPacketLossRate" defaultValue:0.03];
    v3->_rampDownPacketLossRate = v6;
    [VCDefaults getDoubleValueForKey:@"videoStreamRampDownRoundTripTime" defaultValue:0.25];
    v3->_rampDownRoundTripTime = v7;
  }

  return v3;
}

- (void)setMaxTierIndex:(unsigned __int16)index minTierIndex:(unsigned __int16)tierIndex
{
  self->_maxTierIndex = index;
  self->_minTierIndex = tierIndex;
  self->_currentTierIndex = tierIndex;
  self->_state = 0;
}

- (void)doRateControlWithTime:(double)time roundTripTime:(double)tripTime packetLossRate:(double)rate operatingTierIndex:(unsigned __int16)index averageReceivedBitrate:(unsigned int)bitrate
{
  state = self->_state;
  if (state != 3)
  {
    v19 = v11;
    v20 = v7;
    self->_rateControlTime = time;
    self->_packetLossRate = rate;
    self->_roundTripTime = tripTime;
    self->_currentTierIndex = index;
    if (state == 1)
    {
      if ([(VCVideoStreamRTTPLRRateControl *)self shouldRampDown])
      {
        self->_currentTierIndex = [(VCVideoStreamRTTPLRRateControl *)self rampDownTier];
        self->_rampUpFrozenTime = time;
        rampUpFrozenTime = time;
      }

      else
      {
        rampUpFrozenTime = self->_rampUpFrozenTime;
      }

      if (time - rampUpFrozenTime <= self->_rampUpFrozenDuration)
      {
        goto LABEL_14;
      }

      selfCopy2 = self;
      v17 = 0;
    }

    else
    {
      if (state)
      {
LABEL_14:
        self->_targetBitrate = g_adwTxRateTiers[self->_currentTierIndex];
        return;
      }

      if (![(VCVideoStreamRTTPLRRateControl *)self shouldRampDown])
      {
        if ([(VCVideoStreamRTTPLRRateControl *)self shouldRampUp])
        {
          self->_currentTierIndex = [(VCVideoStreamRTTPLRRateControl *)self rampUpTier];
        }

        goto LABEL_14;
      }

      self->_currentTierIndex = [(VCVideoStreamRTTPLRRateControl *)self rampDownTier];
      selfCopy2 = self;
      v17 = 1;
    }

    [(VCVideoStreamRTTPLRRateControl *)selfCopy2 stateChange:v17, v12, v19, v8, v20, v9, v10];
    goto LABEL_14;
  }
}

- (void)printRateControlFullInfoWithLogDump:(void *)dump time:(double)time videoStall:(BOOL)stall videoFrozenDuration:(double)duration averageTargetBitrate:(unsigned int)bitrate
{
  if (dump)
  {
    VRLogfilePrintWithTimestamp(dump, "%8.3f/%04X:\t%.4f\t%.4f\t%.4f\t%.4f %c\tRTT:%-4u\tPLR:%4.2f@%.1f\tRRx:0\tMBL:0\t%3u/%3u\t 0:0/0  0:0/0 CS: 0 0 0 BB: 0\t0\t0\t UAT S _\t%d\n", dump, stall, *&bitrate, v7, v8, v9, SLOBYTE(time));
  }
}

- (id)className
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
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
        v7 = [-[VCVideoStreamRTTPLRRateControl className](self "className")];
        state = self->_state;
        v9 = 136316674;
        v10 = v5;
        v11 = 2080;
        v12 = "[VCVideoStreamRTTPLRRateControl stateChange:]";
        v13 = 1024;
        v14 = 155;
        v15 = 2080;
        v16 = v7;
        v17 = 1024;
        v18 = 155;
        v19 = 1024;
        v20 = state;
        v21 = 1024;
        changeCopy = change;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s:%d Exiting state:%d Entering state:%d", &v9, 0x38u);
      }
    }

    [(VCVideoStreamRTTPLRRateControl *)self stateExit];
    self->_state = change;
    [(VCVideoStreamRTTPLRRateControl *)self stateEnter];
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

@end