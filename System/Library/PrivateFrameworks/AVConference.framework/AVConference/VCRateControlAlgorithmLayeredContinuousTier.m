@interface VCRateControlAlgorithmLayeredContinuousTier
- (BOOL)setUpVTable;
- (VCRateControlAlgorithmLayeredContinuousTier)init;
- (void)dealloc;
@end

@implementation VCRateControlAlgorithmLayeredContinuousTier

- (VCRateControlAlgorithmLayeredContinuousTier)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCRateControlAlgorithmLayeredContinuousTier;
  result = [(VCRateControlAlgorithmStabilizedNOWRD *)&v3 init];
  if (result)
  {
    result->super.super._state = 0;
    result->super.super._rampUpStatus = 0;
    result->super.super._rampDownStatus = 0;
    result->super._shouldRampUpSkipNOWRDStabilization = 1;
    result->_congestionSeverity = 1.0;
  }

  return result;
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = VCRateControlAlgorithmLayeredContinuousTier;
  [(VCRateControlAlgorithmStabilizedNOWRD *)&v2 dealloc];
}

- (BOOL)setUpVTable
{
  v4 = *MEMORY[0x1E69E9840];
  if (!self->super.super._vTable.configure)
  {
    self->super.super._vTable.configure = VCRateControlAlgorithmLayeredContinuousTierPriv_Configure;
  }

  if (!self->super.super._vTable.doRateControl)
  {
    self->super.super._vTable.doRateControl = _VCRateControlAlgorithmLayeredContinuousTier_DoRateControl;
  }

  v3.receiver = self;
  v3.super_class = VCRateControlAlgorithmLayeredContinuousTier;
  return [(VCRateControlAlgorithmStabilizedNOWRD *)&v3 setUpVTable];
}

@end