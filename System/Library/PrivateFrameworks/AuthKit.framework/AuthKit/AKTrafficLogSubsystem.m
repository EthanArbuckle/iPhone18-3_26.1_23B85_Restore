@interface AKTrafficLogSubsystem
@end

@implementation AKTrafficLogSubsystem

uint64_t ___AKTrafficLogSubsystem_block_invoke()
{
  v0 = os_log_create(AKLoggingSubsystem, "traffic");
  v1 = _AKTrafficLogSubsystem_log;
  _AKTrafficLogSubsystem_log = v0;
  return MEMORY[0x1E69E5920](v1);
}

@end