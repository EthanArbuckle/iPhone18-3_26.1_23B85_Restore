@interface AKLogNto
@end

@implementation AKLogNto

uint64_t ___AKLogNto_block_invoke()
{
  v0 = os_log_create(AKLoggingSubsystem, "nto");
  v1 = _AKLogNto_log;
  _AKLogNto_log = v0;
  return MEMORY[0x1E69E5920](v1);
}

@end