@interface FPDocumentURLFromUniversalBookmarkableString
@end

@implementation FPDocumentURLFromUniversalBookmarkableString

uint64_t __legacy_FPDocumentURLFromUniversalBookmarkableString_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __legacy_FPDocumentURLFromUniversalBookmarkableString_block_invoke_2(uint64_t a1, void *a2, void *a3)
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
        v9 = [v5 fp_shortDescription];
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_INFO, "[INFO] Resolved universal bookmark to URL %@", &v12, 0xCu);
      }

      MEMORY[0x1AC5934D0](v5, @"FPFileIsBookmarkURLProperty", *MEMORY[0x1E695E4D0]);
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __legacy_FPDocumentURLFromUniversalBookmarkableString_block_invoke_2_cold_1(v6);
      }
    }

    v10 = *(a1 + 40);
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

void __legacy_FPDocumentURLFromUniversalBookmarkableString_block_invoke_2_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end