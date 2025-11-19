@interface LargeDatabasesLowSeveritySignpostLogHandle
@end

@implementation LargeDatabasesLowSeveritySignpostLogHandle

uint64_t ___LargeDatabasesLowSeveritySignpostLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.ConditionInducer.LowSeverity", "LargeDatabasesCondition");
  v1 = _LargeDatabasesLowSeveritySignpostLogHandle_cn_once_object_1;
  _LargeDatabasesLowSeveritySignpostLogHandle_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end