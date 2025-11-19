@interface ARProcessInfoThermalStateProvider
- (int64_t)thermalState;
@end

@implementation ARProcessInfoThermalStateProvider

- (int64_t)thermalState
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 thermalState];

  return v3;
}

@end