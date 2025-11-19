@interface LargeDatabasesMediumSeveritySignpostLogHandle
@end

@implementation LargeDatabasesMediumSeveritySignpostLogHandle

uint64_t ___LargeDatabasesMediumSeveritySignpostLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.ConditionInducer.MediumSeverity", "LargeDatabasesCondition");
  v1 = _LargeDatabasesMediumSeveritySignpostLogHandle_cn_once_object_2;
  _LargeDatabasesMediumSeveritySignpostLogHandle_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end