@interface AKLogSiwa
@end

@implementation AKLogSiwa

uint64_t ___AKLogSiwa_block_invoke()
{
  v0 = os_log_create(AKLoggingSubsystem, "siwa");
  v1 = _AKLogSiwa_log;
  _AKLogSiwa_log = v0;
  return MEMORY[0x1E69E5920](v1);
}

@end