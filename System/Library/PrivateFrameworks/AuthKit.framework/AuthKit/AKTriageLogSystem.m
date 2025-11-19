@interface AKTriageLogSystem
@end

@implementation AKTriageLogSystem

uint64_t ___AKTriageLogSystem_block_invoke()
{
  v0 = os_log_create(AKLoggingSubsystem, "aaa-itriage");
  v1 = _AKTriageLogSystem_log;
  _AKTriageLogSystem_log = v0;
  return MEMORY[0x1E69E5920](v1);
}

@end