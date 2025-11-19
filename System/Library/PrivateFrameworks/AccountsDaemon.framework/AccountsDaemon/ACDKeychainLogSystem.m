@interface ACDKeychainLogSystem
@end

@implementation ACDKeychainLogSystem

uint64_t ___ACDKeychainLogSystem_block_invoke()
{
  _ACDKeychainLogSystem_log = os_log_create("com.apple.accounts", "keychain");

  return MEMORY[0x2821F96F8]();
}

@end