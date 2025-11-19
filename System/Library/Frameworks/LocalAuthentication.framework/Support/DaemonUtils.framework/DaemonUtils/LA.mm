@interface LA
@end

@implementation LA

uint64_t __LA_LOG_block_invoke()
{
  LA_LOG_log = LALogForCategory();

  return MEMORY[0x2821F96F8]();
}

uint64_t __LA_LOG_block_invoke_0()
{
  LA_LOG_log_0 = LALogForCategory();

  return MEMORY[0x2821F96F8]();
}

uint64_t __LA_LOG_block_invoke_1()
{
  LA_LOG_log_1 = LALogForCategory();

  return MEMORY[0x2821F96F8]();
}

uint64_t __LA_LOG_block_invoke_2()
{
  LA_LOG_log_2 = LALogForCategory();

  return MEMORY[0x2821F96F8]();
}

uint64_t __LA_LOG_block_invoke_3()
{
  LA_LOG_log_3 = LALogForCategory();

  return MEMORY[0x2821F96F8]();
}

uint64_t __LA_LOG_block_invoke_4()
{
  LA_LOG_log_4 = LALogForCategory();

  return MEMORY[0x2821F96F8]();
}

uint64_t __LA_LOG_block_invoke_5()
{
  LA_LOG_log_5 = LALogForCategory();

  return MEMORY[0x2821F96F8]();
}

uint64_t __LA_LOG_Request_block_invoke()
{
  LA_LOG_Request_log = os_log_create("com.apple.LocalAuthentication", "Request");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LA_LOG_Caller_block_invoke()
{
  LA_LOG_Caller_log = os_log_create("com.apple.LocalAuthentication", "Caller");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LA_LOG_INTERACTIVE_block_invoke()
{
  LA_LOG_INTERACTIVE_log = LALogForCategory();

  return MEMORY[0x2821F96F8]();
}

uint64_t __LA_LOG_block_invoke_6()
{
  LA_LOG_log_6 = LALogForCategory();

  return MEMORY[0x2821F96F8]();
}

@end