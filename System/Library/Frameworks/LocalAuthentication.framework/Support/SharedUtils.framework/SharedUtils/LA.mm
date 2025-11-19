@interface LA
@end

@implementation LA

uint64_t __LA_LOG_block_invoke()
{
  LA_LOG_log = LALogForCategory(512);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LA_LOG_block_invoke_0()
{
  LA_LOG_log_0 = LALogForCategory(512);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LA_LOG_LAErrorHelper_block_invoke()
{
  LA_LOG_LAErrorHelper_log = os_log_create("com.apple.LocalAuthentication", "LAErrorHelper");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LA_LOG_INTERACTIVE_block_invoke()
{
  LA_LOG_INTERACTIVE_log = LALogForCategory(520);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LA_LOG_block_invoke_1()
{
  LA_LOG_log_1 = LALogForCategory(512);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __LA_LOG_LADFR_block_invoke()
{
  LA_LOG_LADFR_log = os_log_create("com.apple.LocalAuthentication", "LADFR");

  return MEMORY[0x1EEE66BB8]();
}

@end