@interface AVLog
@end

@implementation AVLog

uint64_t ___AVLog_block_invoke()
{
  _log = os_log_create("com.apple.avkit", "AVKit");

  return MEMORY[0x2821F96F8]();
}

@end