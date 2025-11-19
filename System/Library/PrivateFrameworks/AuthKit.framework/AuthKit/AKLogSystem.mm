@interface AKLogSystem
@end

@implementation AKLogSystem

uint64_t ___AKLogSystem_block_invoke()
{
  v0 = os_log_create(AKLoggingSubsystem, "core");
  v1 = _AKLogSystem_log;
  _AKLogSystem_log = v0;
  return MEMORY[0x1E69E5920](v1);
}

@end