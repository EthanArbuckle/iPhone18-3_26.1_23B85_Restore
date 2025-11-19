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

uint64_t __LA_LOG_AuthenticationManager_block_invoke()
{
  LA_LOG_AuthenticationManager_log = os_log_create("com.apple.LocalAuthentication", "AuthenticationManager");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LA_LOG_MechanismManager_block_invoke()
{
  LA_LOG_MechanismManager_log = os_log_create("com.apple.LocalAuthentication", "MechanismManager");

  return MEMORY[0x2821F96F8]();
}

@end