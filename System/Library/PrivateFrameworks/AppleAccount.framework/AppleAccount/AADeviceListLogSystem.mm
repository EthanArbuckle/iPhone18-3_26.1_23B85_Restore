@interface AADeviceListLogSystem
@end

@implementation AADeviceListLogSystem

uint64_t ___AADeviceListLogSystem_block_invoke()
{
  _AADeviceListLogSystem_log = os_log_create("com.apple.appleaccount", "deviceList");

  return MEMORY[0x1EEE66BB8]();
}

@end