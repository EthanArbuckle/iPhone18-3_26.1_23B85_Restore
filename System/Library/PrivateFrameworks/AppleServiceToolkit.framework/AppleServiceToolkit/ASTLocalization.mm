@interface ASTLocalization
+ (id)localizedStringForKey:(id)key;
+ (void)prepareLocalizedStringsWithCompletionHandler:(id)handler;
@end

@implementation ASTLocalization

+ (void)prepareLocalizedStringsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = handlerCopy;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__2;
  v8[4] = __Block_byref_object_dispose__2;
  v9 = 0;
  if (ASTStringsTable)
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __64__ASTLocalization_prepareLocalizedStringsWithCompletionHandler___block_invoke;
    v5[3] = &unk_278CBD608;
    v7 = v8;
    v6 = handlerCopy;
    [ASTSession requestAsset:@"strings" serverURL:0 endpoint:@"localized" completionHandler:v5];
  }

  _Block_object_dispose(v8, 8);
}

void __64__ASTLocalization_prepareLocalizedStringsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v10 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __64__ASTLocalization_prepareLocalizedStringsWithCompletionHandler___block_invoke_cold_2(a1 + 40);
    }

    goto LABEL_7;
  }

  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = [ASTEncodingUtilities parseJSONResponseWithData:v5 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = ASTStringsTable;
  ASTStringsTable = v8;

  if (!ASTStringsTable)
  {
    v10 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __64__ASTLocalization_prepareLocalizedStringsWithCompletionHandler___block_invoke_cold_1(a1 + 40);
    }

LABEL_7:
  }

  v11 = *(*(*(a1 + 40) + 8) + 40);
  (*(*(a1 + 32) + 16))();
}

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  if (!ASTStringsTable || ([ASTStringsTable objectForKeyedSubscript:keyCopy], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = keyCopy;
  }

  return v4;
}

void __64__ASTLocalization_prepareLocalizedStringsWithCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, *MEMORY[0x277D85DE8]);
  v4 = 138412290;
  v5 = v1;
  _os_log_error_impl(&dword_240F3C000, v2, OS_LOG_TYPE_ERROR, "Strings table could not be parsed: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __64__ASTLocalization_prepareLocalizedStringsWithCompletionHandler___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, *MEMORY[0x277D85DE8]);
  v4 = 138412290;
  v5 = v1;
  _os_log_error_impl(&dword_240F3C000, v2, OS_LOG_TYPE_ERROR, "Strings table could not be downloaded: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end