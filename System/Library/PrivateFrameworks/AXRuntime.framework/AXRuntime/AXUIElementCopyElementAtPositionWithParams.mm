@interface AXUIElementCopyElementAtPositionWithParams
@end

@implementation AXUIElementCopyElementAtPositionWithParams

void ___AXUIElementCopyElementAtPositionWithParams_block_invoke(uint64_t a1, void *a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = AXRuntimeLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109378;
    v6[1] = a3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1BF78E000, v5, OS_LOG_TYPE_INFO, "\t%d: %@", v6, 0x12u);
  }
}

BOOL ___AXUIElementCopyElementAtPositionWithParams_block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 contextId] == *(a1 + 40))
  {
    v4 = [v3 remotePid];
    v5 = v4 == [*(a1 + 32) unsignedIntValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end