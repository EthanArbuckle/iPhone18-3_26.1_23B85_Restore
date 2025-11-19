@interface ANELog
@end

@implementation ANELog

uint64_t __20___ANELog_framework__block_invoke()
{
  framework__framework = os_log_create("com.apple.ane", "client");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __17___ANELog_daemon__block_invoke()
{
  daemon__daemon = os_log_create("com.apple.ane", "aned");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __19___ANELog_compiler__block_invoke()
{
  compiler__compiler = os_log_create("com.apple.ane", "compiler");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __22___ANELog_maintenance__block_invoke()
{
  maintenance__maintenance = os_log_create("com.apple.ane", "maintenance");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __15___ANELog_tool__block_invoke()
{
  tool__tool = os_log_create("com.apple.ane", "anetool");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __17___ANELog_common__block_invoke()
{
  common__common = os_log_create("com.apple.ane", "common");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __16___ANELog_tests__block_invoke()
{
  tests__tests = os_log_create("com.apple.ane", "tests");

  return MEMORY[0x1EEE66BB8]();
}

@end