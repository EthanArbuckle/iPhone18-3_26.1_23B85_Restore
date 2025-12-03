@interface ARProcessInfoThermalStateProvider
- (int64_t)thermalState;
@end

@implementation ARProcessInfoThermalStateProvider

- (int64_t)thermalState
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  thermalState = [processInfo thermalState];

  return thermalState;
}

@end