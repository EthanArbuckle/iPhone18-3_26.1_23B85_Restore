@interface LA
@end

@implementation LA

uint64_t __LA_LOG_MechanismUINotificationCenter_block_invoke()
{
  LA_LOG_MechanismUINotificationCenter_log = os_log_create("com.apple.LocalAuthentication", "MechanismUINotificationCenter");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LA_LOG_MechanismKofN_block_invoke()
{
  LA_LOG_MechanismKofN_log = os_log_create("com.apple.LocalAuthentication", "MechanismKofN");

  return MEMORY[0x2821F96F8]();
}

@end