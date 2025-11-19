@interface CNCDLog
+ (OS_os_log)saving;
@end

@implementation CNCDLog

+ (OS_os_log)saving
{
  if (saving_cn_once_token_0 != -1)
  {
    +[CNCDLog saving];
  }

  v3 = saving_cn_once_object_0;

  return v3;
}

uint64_t __17__CNCDLog_saving__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "saving");
  v1 = saving_cn_once_object_0;
  saving_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end