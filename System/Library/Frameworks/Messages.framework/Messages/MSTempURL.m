@interface MSTempURL
@end

@implementation MSTempURL

void __21___MSTempURL_dealloc__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = *(a1 + 32);
  v7 = 0;
  v4 = [v2 removeItemAtPath:v3 error:&v7];
  v5 = v7;

  if ((v4 & 1) == 0)
  {
    v6 = ms_defaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1CADE6000, v6, OS_LOG_TYPE_DEFAULT, "Cleanup: Failed to remove temp file with error: %@", buf, 0xCu);
    }
  }
}

@end