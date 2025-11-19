@interface EXHostSessionDriver
@end

@implementation EXHostSessionDriver

void __51___EXHostSessionDriver_initWithHostViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _EXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __51___EXHostSessionDriver_initWithHostViewController___block_invoke_cold_1();
  }

  [WeakRetained invalidateDeactivatingSessions];
}

void __49___EXHostSessionDriver_hostSessionDidInvalidate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) retryProcessConfiguration];
  v3 = [*(a1 + 32) retrySessionConfiguration];
  if (WeakRetained)
  {
    if (v2 && v3 != 0)
    {
      [*(a1 + 32) startSessionWithProcessConfiguration:v2 configuration:v3];
    }
  }
}

void __51___EXHostSessionDriver_initWithHostViewController___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end