@interface AFKUserLog
@end

@implementation AFKUserLog

uint64_t ___AFKUserLog_block_invoke()
{
  _AFKUserLog::log = os_log_create("com.apple.afk", "user");

  return MEMORY[0x2821F96F8]();
}

@end