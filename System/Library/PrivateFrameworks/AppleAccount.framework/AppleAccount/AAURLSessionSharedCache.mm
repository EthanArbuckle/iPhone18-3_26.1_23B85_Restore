@interface AAURLSessionSharedCache
@end

@implementation AAURLSessionSharedCache

void ___AAURLSessionSharedCache_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc(MEMORY[0x1E695AC38]);
  if (v1)
  {
    v3 = 20971520;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 _initWithMemoryCapacity:0x400000 diskCapacity:v3 relativePath:@"com.apple.AppleAccount"];
  v5 = _AAURLSessionSharedCache_sharedCache;
  _AAURLSessionSharedCache_sharedCache = v4;

  [_AAURLSessionSharedCache_sharedCache _CFURLCache];
  v6 = _CFURLCacheCopyCacheDirectory();
  if (v6)
  {
    v7 = v6;
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      ___AAURLSessionSharedCache_block_invoke_cold_1();
    }

    CFRelease(v7);
  }
}

void ___AAURLSessionSharedCache_block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, v0, v1, "Using shared cache at path: %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end