@interface AKLogSystemQuery
@end

@implementation AKLogSystemQuery

uint64_t ___AKLogSystemQuery_block_invoke()
{
  v0 = os_log_create(AKLoggingSubsystem, "query");
  v1 = _AKLogSystemQuery_log;
  _AKLogSystemQuery_log = v0;
  return MEMORY[0x1E69E5920](v1);
}

@end