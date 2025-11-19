@interface ACUILogSystem
@end

@implementation ACUILogSystem

uint64_t ___ACUILogSystem_block_invoke()
{
  v0 = os_log_create("com.apple.accounts", "ui");
  v1 = _ACUILogSystem_log;
  _ACUILogSystem_log = v0;
  return MEMORY[0x277D82BD8](v1);
}

@end