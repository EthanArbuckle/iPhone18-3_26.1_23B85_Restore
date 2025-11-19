@interface VCRateControlAlgorithmLowLatencyContinuousTier
- (BOOL)setUpVTable;
- (VCRateControlAlgorithmLowLatencyContinuousTier)init;
- (void)dealloc;
@end

@implementation VCRateControlAlgorithmLowLatencyContinuousTier

- (VCRateControlAlgorithmLowLatencyContinuousTier)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCRateControlAlgorithmLowLatencyContinuousTier;
  result = [(VCRateControlAlgorithmLowLatencyNOWRD *)&v3 init];
  if (result)
  {
    result->super.super._state = 0;
  }

  return result;
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = VCRateControlAlgorithmLowLatencyContinuousTier;
  [(VCRateControlAlgorithmBase *)&v2 dealloc];
}

- (BOOL)setUpVTable
{
  v4 = *MEMORY[0x1E69E9840];
  if (!self->super.super._vTable.configure)
  {
    self->super.super._vTable.configure = _VCRateControlAlgorithmLowLatencyContinuousTier_Configure;
  }

  if (!self->super.super._vTable.doRateControl)
  {
    self->super.super._vTable.doRateControl = _VCRateControlAlgorithmLowLatencyContinuousTier_DoRateControl;
  }

  v3.receiver = self;
  v3.super_class = VCRateControlAlgorithmLowLatencyContinuousTier;
  return [(VCRateControlAlgorithmLowLatencyNOWRD *)&v3 setUpVTable];
}

@end