@interface ACLogCache
@end

@implementation ACLogCache

uint64_t ___ACLogCache_block_invoke()
{
  _ACLogCache_log = os_log_create("com.apple.accounts", "cache");

  return MEMORY[0x1EEE66BB8]();
}

@end