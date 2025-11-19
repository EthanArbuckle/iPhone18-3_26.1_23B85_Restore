@interface LSBundleDataIsIncomplete
@end

@implementation LSBundleDataIsIncomplete

void ___LSBundleDataIsIncomplete_block_invoke(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = _LSGetPlugin(*(a1 + 32), a3);
  if (v7)
  {
    v8 = v7;
    if (!*(v7 + 140))
    {
      if ((*(v7 + 164) & 1) != 0 && *(v7 + 12))
      {
        v9 = _LSDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v11 = *(v8 + 12);
          [(_LSDatabase *)v10 store];
          v12 = _CSStringCopyCFString();
          v14 = 134218242;
          v15 = a3;
          v16 = 2114;
          v17 = v12;
          _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "First-party plugin %llx (%{public}@) is malformed. Skipping during incompleteness check.", &v14, 0x16u);
        }
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end