@interface NSMoribundCache
@end

@implementation NSMoribundCache

void __NSMoribundCache_invalidAccess_block_invoke()
{
  v0 = _CFFoundationRuntimeIssuesLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __NSMoribundCache_invalidAccess_block_invoke_cold_1(v0);
  }
}

void __NSMoribundCache_invalidAccess_block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = 0;
  _os_log_fault_impl(&dword_1830E6000, log, OS_LOG_TYPE_FAULT, "Attempting to interact with NSCache instance that is being deallocated. Break on NSMoribundCache_invalidAccess to debug.", v2, 2u);
  v1 = *MEMORY[0x1E69E9840];
}

@end