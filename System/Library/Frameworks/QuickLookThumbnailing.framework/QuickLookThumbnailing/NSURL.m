@interface NSURL
@end

@implementation NSURL

uint64_t __37__NSURL__QLUtilities___QLUrlFileSize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __37__NSURL__QLUtilities___QLUrlFileSize__block_invoke_cold_1();
  }

  return 1;
}

void __37__NSURL__QLUtilities___QLUrlFileSize__block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Failed to enumerate the url(%@) error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end