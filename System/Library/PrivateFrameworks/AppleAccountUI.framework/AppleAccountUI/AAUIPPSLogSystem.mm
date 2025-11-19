@interface AAUIPPSLogSystem
@end

@implementation AAUIPPSLogSystem

uint64_t ___AAUIPPSLogSystem_block_invoke()
{
  _AAUIPPSLogSystem_log = os_log_create("com.apple.appleaccount", "ui.pps");

  return MEMORY[0x1EEE66BB8]();
}

@end