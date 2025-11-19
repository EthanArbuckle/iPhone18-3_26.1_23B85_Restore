@interface VCRateControlAlgorithmTelephony
- (BOOL)setUpVTable;
- (VCRateControlAlgorithmTelephony)init;
@end

@implementation VCRateControlAlgorithmTelephony

- (VCRateControlAlgorithmTelephony)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCRateControlAlgorithmTelephony;
  result = [(VCRateControlAlgorithmBase *)&v3 init];
  if (result)
  {
    result->super._state = 0;
    result->super._rampUpStatus = 0;
    result->super._rampDownStatus = 0;
  }

  return result;
}

- (BOOL)setUpVTable
{
  v4 = *MEMORY[0x1E69E9840];
  self->super._vTable.configure = _VCRateControlAlgorithmTelephony_Configure;
  self->super._vTable.doRateControl = _VCRateControlAlgorithmTelephony_DoRateControl;
  v3.receiver = self;
  v3.super_class = VCRateControlAlgorithmTelephony;
  return [(VCRateControlAlgorithmBase *)&v3 setUpVTable];
}

@end