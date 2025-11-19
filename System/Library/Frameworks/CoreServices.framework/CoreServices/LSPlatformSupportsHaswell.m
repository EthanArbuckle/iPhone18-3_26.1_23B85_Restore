@interface LSPlatformSupportsHaswell
@end

@implementation LSPlatformSupportsHaswell

void ___LSPlatformSupportsHaswell_block_invoke()
{
  v3 = 0;
  v2 = 4;
  if (sysctlbyname("hw.optional.avx2_0", &v3, &v2, 0, 0))
  {
    v0 = *__error();
    v1 = _LSDefaultLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      ___LSPlatformSupportsHaswell_block_invoke_cold_1(v0, v1);
    }
  }

  else
  {
    _LSPlatformSupportsHaswell::canRun = v3 > 0;
  }
}

void ___LSPlatformSupportsHaswell_block_invoke_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "could not check sysctl hw.optional.avx2_0: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end