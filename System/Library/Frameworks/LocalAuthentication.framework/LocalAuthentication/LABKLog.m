@interface LABKLog
@end

@implementation LABKLog

uint64_t __15___LABKLog_log__block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "bkshim");
  v1 = log_log_0;
  log_log_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end