@interface CF
@end

@implementation CF

void __CF_RUNLOOP_ASSERTIONS_block_invoke()
{
  v0 = _CFOSLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __CF_RUNLOOP_ASSERTIONS_block_invoke_cold_1(v0);
  }
}

void __CF_RUNLOOP_ASSERTIONS_block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = 0;
  _os_log_error_impl(&dword_1830E6000, log, OS_LOG_TYPE_ERROR, "Attempting to use the main runloop, but the main thread has exited. This message will only log once.", v2, 2u);
  v1 = *MEMORY[0x1E69E9840];
}

@end