@interface AAAccountStoreLogSystem
@end

@implementation AAAccountStoreLogSystem

uint64_t ___AAAccountStoreLogSystem_block_invoke()
{
  _AAAccountStoreLogSystem_log = os_log_create("com.apple.appleaccount", "accountstore");

  return MEMORY[0x1EEE66BB8]();
}

@end