@interface FPUniversalBookmarkableStringFromDocumentURL
@end

@implementation FPUniversalBookmarkableStringFromDocumentURL

uint64_t __legacy_FPUniversalBookmarkableStringFromDocumentURL_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 40);
  if (v8)
  {
    v9 = FPProviderNotFoundErrorForURL(*(result + 32), a2, a3, a4, a5, a6, a7, a8);
    v10 = *(v8 + 16);

    return v10(v8, 0, v9);
  }

  return result;
}

void __legacy_FPUniversalBookmarkableStringFromDocumentURL_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 | v6)
  {
    v7 = fp_current_or_default_log();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = [*(a1 + 40) fp_shortDescription];
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_INFO, "[INFO] Created a universal bookmark for %@", &v12, 0xCu);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __legacy_FPUniversalBookmarkableStringFromDocumentURL_block_invoke_2_cold_1();
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, v5, v6);
    }

    [*(a1 + 32) finish];
  }

  else
  {
    [*(a1 + 32) callNextOverrides];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __legacy_FPUniversalBookmarkableStringFromDocumentURL_block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_14();
  v9 = *MEMORY[0x1E69E9840];
  [*(v1 + 40) fp_scopeDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_13() fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

@end