@interface AMFIFMKLog
+ (id)generic;
@end

@implementation AMFIFMKLog

+ (id)generic
{
  if (generic_sLogInit != -1)
  {
    +[AMFIFMKLog generic];
  }

  v3 = generic_sLog;

  return v3;
}

uint64_t __21__AMFIFMKLog_generic__block_invoke()
{
  generic_sLog = os_log_create("com.apple.MobileFileIntegrity.framework", "default");

  return MEMORY[0x2821F96F8]();
}

@end