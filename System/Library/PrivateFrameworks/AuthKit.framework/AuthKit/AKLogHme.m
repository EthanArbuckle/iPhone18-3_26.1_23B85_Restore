@interface AKLogHme
@end

@implementation AKLogHme

uint64_t ___AKLogHme_block_invoke()
{
  v0 = os_log_create(AKLoggingSubsystem, "hme");
  v1 = _AKLogHme_log;
  _AKLogHme_log = v0;
  return MEMORY[0x1E69E5920](v1);
}

@end