@interface IOHIDServiceClose
@end

@implementation IOHIDServiceClose

void ___IOHIDServiceClose_block_invoke(uint64_t a1)
{
  v2 = _IOHIDLogCategory(6u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    ___IOHIDServiceClose_block_invoke_cold_1(a1);
  }

  v3 = *(a1 + 32);
  *(v3 + 224) |= 4u;
  if (*(v3 + 248))
  {
    CFArrayRemoveAllValues(*(v3 + 248));
    v3 = *(a1 + 32);
  }

  if (*(v3 + 256))
  {
    CFArrayRemoveAllValues(*(v3 + 256));
    v3 = *(a1 + 32);
  }

  CFRelease(v3);
}

void ___IOHIDServiceClose_block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_1(&dword_197195000, v1, v2, "0x%llx: close completed", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end