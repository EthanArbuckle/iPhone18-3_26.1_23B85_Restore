@interface AKSignpostLogSystem
@end

@implementation AKSignpostLogSystem

uint64_t ___AKSignpostLogSystem_block_invoke()
{
  v0 = os_log_create(AKLoggingSubsystem, "signpost");
  v1 = _AKSignpostLogSystem_log;
  _AKSignpostLogSystem_log = v0;
  return MEMORY[0x1E69E5920](v1);
}

@end