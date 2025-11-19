@interface LAMKBLog
@end

@implementation LAMKBLog

uint64_t __16___LAMKBLog_log__block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "mkbshim");
  v1 = log_log;
  log_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end