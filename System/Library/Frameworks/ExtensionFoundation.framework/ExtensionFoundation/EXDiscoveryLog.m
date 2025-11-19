@interface EXDiscoveryLog
@end

@implementation EXDiscoveryLog

uint64_t ___EXDiscoveryLog_block_invoke()
{
  _EXDiscoveryLog_log = os_log_create("com.apple.extensionkit", "discovery");

  return MEMORY[0x1EEE66BB8]();
}

@end