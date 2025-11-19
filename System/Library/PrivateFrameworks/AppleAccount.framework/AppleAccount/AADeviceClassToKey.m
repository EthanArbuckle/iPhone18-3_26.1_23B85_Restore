@interface AADeviceClassToKey
@end

@implementation AADeviceClassToKey

void ___AADeviceClassToKey_block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"iPhone";
  v3[1] = @"iPad";
  v4[0] = @"IPHONE";
  v4[1] = @"IPAD";
  v3[2] = @"iPod";
  v3[3] = @"AppleTV";
  v4[2] = @"IPOD";
  v4[3] = @"APPLETV";
  v3[4] = @"Watch";
  v4[4] = @"WATCH";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = _AADeviceClassToKey_deviceMapping;
  _AADeviceClassToKey_deviceMapping = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end