@interface NSFileManager
@end

@implementation NSFileManager

void __71__NSFileManager_FPAdditions__fp_trashItemAtURL_resultingItemURL_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(a1[4] + 8) + 24) = v6 == 0;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __69__NSFileManager_FPAdditions__fp_putBackURLForTrashedItemAtURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __59__NSFileManager_FPAdditions__fp_setPutBackInfoOnItemAtURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __59__NSFileManager_FPAdditions__fp_setPutBackInfoOnItemAtURL___block_invoke_cold_1(a1, v3, v4);
  }
}

void __59__NSFileManager_FPAdditions__fp_setPutBackInfoOnItemAtURL___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 1024;
  v8 = a2 != 0;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Finished setting put back URL for item %@ success: %{BOOL}d", &v5, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

@end