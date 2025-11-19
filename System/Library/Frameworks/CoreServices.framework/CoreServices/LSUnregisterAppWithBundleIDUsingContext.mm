@interface LSUnregisterAppWithBundleIDUsingContext
@end

@implementation LSUnregisterAppWithBundleIDUsingContext

void ___LSUnregisterAppWithBundleIDUsingContext_block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _LSInstallLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "Failed to remove";
    v8 = *(a1 + 32);
    v10 = 136446978;
    if (a2)
    {
      v7 = "Removed";
    }

    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 1024;
    v15 = a2;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s all handler prefs for bundle ID %@: %{BOOL}i %@", &v10, 0x26u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end