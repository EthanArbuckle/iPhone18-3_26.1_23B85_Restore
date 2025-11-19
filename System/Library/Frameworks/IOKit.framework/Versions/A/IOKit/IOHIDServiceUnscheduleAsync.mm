@interface IOHIDServiceUnscheduleAsync
@end

@implementation IOHIDServiceUnscheduleAsync

void ___IOHIDServiceUnscheduleAsync_block_invoke_91(uint64_t a1)
{
  v2 = _IOHIDLogCategory(6u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    ___IOHIDServiceUnscheduleAsync_block_invoke_91_cold_1(a1);
  }

  CFRelease(*(a1 + 32));
}

void ___IOHIDServiceUnscheduleAsync_block_invoke_93(uint64_t a1)
{
  v2 = _IOHIDLogCategory(6u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    ___IOHIDServiceUnscheduleAsync_block_invoke_93_cold_1(a1);
  }

  CFRelease(*(a1 + 32));
}

void ___IOHIDServiceUnscheduleAsync_block_invoke_91_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_1(&dword_197195000, v1, v2, "0x%llx: unschedule from dispatch queue completed", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void ___IOHIDServiceUnscheduleAsync_block_invoke_93_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_1(&dword_197195000, v1, v2, "0x%llx: unschedule from runloop completed", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end