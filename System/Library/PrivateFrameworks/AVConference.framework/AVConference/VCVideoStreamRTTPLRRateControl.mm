@interface VCVideoStreamRTTPLRRateControl
- (VCVideoStreamRTTPLRRateControl)init;
- (id)className;
- (unsigned)rampDownTier;
- (unsigned)rampUpTier;
- (void)doRateControlWithTime:(double)a3 roundTripTime:(double)a4 packetLossRate:(double)a5 operatingTierIndex:(unsigned __int16)a6 averageReceivedBitrate:(unsigned int)a7;
- (void)printRateControlFullInfoWithLogDump:(void *)a3 time:(double)a4 videoStall:(BOOL)a5 videoFrozenDuration:(double)a6 averageTargetBitrate:(unsigned int)a7;
- (void)setMaxTierIndex:(unsigned __int16)a3 minTierIndex:(unsigned __int16)a4;
- (void)stateChange:(int)a3;
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

- (void)setMaxTierIndex:(unsigned __int16)a3 minTierIndex:(unsigned __int16)a4
{
  self->_maxTierIndex = a3;
  self->_minTierIndex = a4;
  self->_currentTierIndex = a4;
  self->_state = 0;
}

- (void)doRateControlWithTime:(double)a3 roundTripTime:(double)a4 packetLossRate:(double)a5 operatingTierIndex:(unsigned __int16)a6 averageReceivedBitrate:(unsigned int)a7
{
  state = self->_state;
  if (state != 3)
  {
    v19 = v11;
    v20 = v7;
    self->_rateControlTime = a3;
    self->_packetLossRate = a5;
    self->_roundTripTime = a4;
    self->_currentTierIndex = a6;
    if (state == 1)
    {
      if ([(VCVideoStreamRTTPLRRateControl *)self shouldRampDown])
      {
        self->_currentTierIndex = [(VCVideoStreamRTTPLRRateControl *)self rampDownTier];
        self->_rampUpFrozenTime = a3;
        rampUpFrozenTime = a3;
      }

      else
      {
        rampUpFrozenTime = self->_rampUpFrozenTime;
      }

      if (a3 - rampUpFrozenTime <= self->_rampUpFrozenDuration)
      {
        goto LABEL_14;
      }

      v16 = self;
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
      v16 = self;
      v17 = 1;
    }

    [(VCVideoStreamRTTPLRRateControl *)v16 stateChange:v17, v12, v19, v8, v20, v9, v10];
    goto LABEL_14;
  }
}

- (void)printRateControlFullInfoWithLogDump:(void *)a3 time:(double)a4 videoStall:(BOOL)a5 videoFrozenDuration:(double)a6 averageTargetBitrate:(unsigned int)a7
{
  if (a3)
  {
    VRLogfilePrintWithTimestamp(a3, "%8.3f/%04X:\t%.4f\t%.4f\t%.4f\t%.4f %c\tRTT:%-4u\tPLR:%4.2f@%.1f\tRRx:0\tMBL:0\t%3u/%3u\t 0:0/0  0:0/0 CS: 0 0 0 BB: 0\t0\t0\t UAT S _\t%d\n", a3, a5, *&a7, v7, v8, v9, SLOBYTE(a4));
  }
}

- (id)className
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
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
        v22 = a3;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s:%d Exiting state:%d Entering state:%d", &v9, 0x38u);
      }
    }

    [(VCVideoStreamRTTPLRRateControl *)self stateExit];
    self->_state = a3;
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