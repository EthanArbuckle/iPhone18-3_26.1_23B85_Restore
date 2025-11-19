@interface LSBundleRemove
@end

@implementation LSBundleRemove

void ___LSBundleRemove_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v5 = objc_autoreleasePoolPush();
  if ((*(_LSBundleGet(*(a1 + 32), a3) + 172) & 0x400000000000) != 0)
  {
    _LSBundleSetFlags(*(a1 + 32));
  }

  objc_autoreleasePoolPop(v5);
}

void ___LSBundleRemove_block_invoke_2(uint64_t a1, int a2, _DWORD *a3, uint64_t a4, _BYTE *a5)
{
  if (a3[42] == 14 && a3[76] == *(a1 + 344))
  {
    v9 = _LSAppProtectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      ___LSBundleRemove_block_invoke_2_cold_1(a2, v9);
    }

    v10 = *(a3 + 189);
    _LSBundleSetMoreFlags(*(a1 + 32));
    *a5 = 1;
  }
}

void ___LSBundleRemove_block_invoke_3(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a1 + 48))
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      LSPluginAddInfoToPayloadDict(*(a1 + 32), v5, a3, 0, 0);
    }
  }

  v6 = *(a1 + 32);

  _LSPluginRemove(v6, a3);
}

void ___LSBundleRemove_block_invoke_2_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "Resetting locked/hidden flags for unit: %u", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end