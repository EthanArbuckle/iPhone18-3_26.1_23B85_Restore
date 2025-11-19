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
  v0 = LALogForCategory();
  v1 = LA_LOG_log_0;
  LA_LOG_log_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end