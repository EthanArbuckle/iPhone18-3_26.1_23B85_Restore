@interface CNChangeHistory
+ (OS_os_log)os_log;
@end

@implementation CNChangeHistory

+ (OS_os_log)os_log
{
  if (os_log_cn_once_token_0_28 != -1)
  {
    +[CNChangeHistory os_log];
  }

  v3 = os_log_cn_once_object_0_28;

  return v3;
}

uint64_t __25__CNChangeHistory_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "change-history");
  v1 = os_log_cn_once_object_0_28;
  os_log_cn_once_object_0_28 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end