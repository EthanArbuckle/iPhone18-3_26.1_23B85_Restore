@interface VCRateControlAlgorithmStabilizedNOWRD
- (BOOL)setUpVTable;
- (VCRateControlAlgorithmStabilizedNOWRD)init;
- (double)worstRecentRoundTripTime;
- (unsigned)worstRecentBurstLoss;
- (void)dealloc;
@end

@implementation VCRateControlAlgorithmStabilizedNOWRD

- (VCRateControlAlgorithmStabilizedNOWRD)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCRateControlAlgorithmStabilizedNOWRD;
  result = [(VCRateControlAlgorithmBase *)&v3 init];
  if (result)
  {
    result->super._state = 0;
    result->super._rampUpStatus = 0;
    result->super._rampDownStatus = 0;
    result->super._shouldConsiderCongestionLevelForBIF = 1;
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCRateControlAlgorithmStabilizedNOWRD;
  [(VCRateControlAlgorithmBase *)&v3 dealloc];
}

- (BOOL)setUpVTable
{
  v4 = *MEMORY[0x1E69E9840];
  if (!self->super._vTable.configure)
  {
    self->super._vTable.configure = VCRateControlAlgorithmStabilizedNOWRDPriv_Configure;
  }

  if (!self->super._vTable.doRateControl)
  {
    self->super._vTable.doRateControl = _VCRateControlAlgorithmStabilizedNOWRD_DoRateControl;
  }

  if (!self->super._vTable.stateEnter)
  {
    self->super._vTable.stateEnter = _VCRateControlAlgorithmStabilizedNOWRD_StateEnter;
  }

  if (!self->super._vTable.stateExit)
  {
    self->super._vTable.stateExit = _VCRateControlAlgorithmStabilizedNOWRD_StateExit;
  }

  v3.receiver = self;
  v3.super_class = VCRateControlAlgorithmStabilizedNOWRD;
  return [(VCRateControlAlgorithmBase *)&v3 setUpVTable];
}

- (double)worstRecentRoundTripTime
{
  result = self->super._worstRecentRoundTripTime;
  self->super._worstRecentRoundTripTime = 0.0;
  return result;
}

- (unsigned)worstRecentBurstLoss
{
  worstRecentBurstLoss = self->super._worstRecentBurstLoss;
  self->super._worstRecentBurstLoss = 0;
  return worstRecentBurstLoss;
}

@end