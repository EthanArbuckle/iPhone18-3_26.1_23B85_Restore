@interface AAAgeMigrationLogSystem
@end

@implementation AAAgeMigrationLogSystem

uint64_t ___AAAgeMigrationLogSystem_block_invoke()
{
  _AAAgeMigrationLogSystem_log = os_log_create("com.apple.appleaccount", "ageMigration");

  return MEMORY[0x1EEE66BB8]();
}

@end