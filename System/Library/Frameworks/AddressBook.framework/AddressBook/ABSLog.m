@interface ABSLog
+ (id)apiLog;
+ (id)log;
@end

@implementation ABSLog

+ (id)log
{
  if (log_cn_once_token_0 != -1)
  {
    +[ABSLog log];
  }

  v3 = log_cn_once_object_0;

  return v3;
}

uint64_t __13__ABSLog_log__block_invoke()
{
  log_cn_once_object_0 = os_log_create("com.apple.contacts", "addressbook");

  return MEMORY[0x2821F96F8]();
}

+ (id)apiLog
{
  if (apiLog_cn_once_token_1 != -1)
  {
    +[ABSLog apiLog];
  }

  v3 = apiLog_cn_once_object_1;

  return v3;
}

uint64_t __16__ABSLog_apiLog__block_invoke()
{
  apiLog_cn_once_object_1 = os_log_create("com.apple.contacts", "addressbook-api");

  return MEMORY[0x2821F96F8]();
}

@end