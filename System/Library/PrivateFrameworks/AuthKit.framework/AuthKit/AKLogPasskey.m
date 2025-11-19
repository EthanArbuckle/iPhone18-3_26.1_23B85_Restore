@interface AKLogPasskey
@end

@implementation AKLogPasskey

uint64_t ___AKLogPasskey_block_invoke()
{
  v0 = os_log_create(AKLoggingSubsystem, "passkey");
  v1 = _AKLogPasskey_log;
  _AKLogPasskey_log = v0;
  return MEMORY[0x1E69E5920](v1);
}

@end