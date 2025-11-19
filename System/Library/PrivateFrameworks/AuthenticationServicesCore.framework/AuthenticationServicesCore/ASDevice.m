@interface ASDevice
@end

@implementation ASDevice

uint64_t __18___ASDevice_isPad__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) deviceClass];
  isPad_isPad = result == 3;
  return result;
}

void __24___ASDevice_deviceClass__block_invoke()
{
  v0 = [MEMORY[0x1E69C8860] currentDevice];
  deviceClass_deviceClass = [v0 deviceClass];
}

@end