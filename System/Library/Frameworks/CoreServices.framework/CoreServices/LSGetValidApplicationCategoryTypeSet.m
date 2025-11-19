@interface LSGetValidApplicationCategoryTypeSet
@end

@implementation LSGetValidApplicationCategoryTypeSet

void ___LSGetValidApplicationCategoryTypeSet_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 8) & 0x20) != 0)
  {
    v5 = *(a3 + 12);
    [(_LSDatabase *)**(a1 + 32) store];
    v6 = _CSStringCopyCFString();
    CFSetAddValue(*(a1 + 40), v6);

    CFRelease(v6);
  }
}

void ___LSGetValidApplicationCategoryTypeSet_block_invoke_69(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LSDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ___LSGetValidApplicationCategoryTypeSet_block_invoke_69_cold_1(v2, v3);
  }
}

void ___LSGetValidApplicationCategoryTypeSet_block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (v6)
  {
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ___LSGetValidApplicationCategoryTypeSet_block_invoke_71_cold_1(v6, v9);
    }
  }
}

void ___LSGetValidApplicationCategoryTypeSet_block_invoke_69_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Error on connection finding category type identifiers from lsd: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void ___LSGetValidApplicationCategoryTypeSet_block_invoke_71_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Error finding category type identifiers from lsd: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end