@interface AKLogUserInteraction
@end

@implementation AKLogUserInteraction

uint64_t ___AKLogUserInteraction_block_invoke()
{
  v0 = os_log_create(AKLoggingSubsystem, "userInteraction");
  v1 = _AKLogUserInteraction_log;
  _AKLogUserInteraction_log = v0;
  return MEMORY[0x1E69E5920](v1);
}

@end