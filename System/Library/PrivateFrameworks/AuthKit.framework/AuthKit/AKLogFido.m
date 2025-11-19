@interface AKLogFido
@end

@implementation AKLogFido

uint64_t ___AKLogFido_block_invoke()
{
  v0 = os_log_create(AKLoggingSubsystem, "fido");
  v1 = _AKLogFido_log;
  _AKLogFido_log = v0;
  return MEMORY[0x1E69E5920](v1);
}

@end