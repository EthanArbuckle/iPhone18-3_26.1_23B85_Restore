@interface EXRegistrationLog
@end

@implementation EXRegistrationLog

uint64_t ___EXRegistrationLog_block_invoke()
{
  _EXRegistrationLog_log = os_log_create("com.apple.extensionkit", "registration");

  return MEMORY[0x1EEE66BB8]();
}

@end