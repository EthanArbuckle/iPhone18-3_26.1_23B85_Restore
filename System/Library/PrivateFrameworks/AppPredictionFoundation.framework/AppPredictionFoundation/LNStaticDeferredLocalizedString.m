@interface LNStaticDeferredLocalizedString
@end

@implementation LNStaticDeferredLocalizedString

void __78__LNStaticDeferredLocalizedString_HelperService__atx_efficientLocalizedString__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_intents_helper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__LNStaticDeferredLocalizedString_HelperService__atx_efficientLocalizedString__block_invoke_cold_1();
  }

  v5 = [*(a1 + 32) localizedStringForLocaleIdentifier:0];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __78__LNStaticDeferredLocalizedString_HelperService__atx_efficientLocalizedString__block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = __atxlog_handle_intents_helper();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __78__LNStaticDeferredLocalizedString_HelperService__atx_efficientLocalizedString__block_invoke_32_cold_1();
    }

    v9 = [*(a1 + 32) localizedStringForLocaleIdentifier:0];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __78__LNStaticDeferredLocalizedString_HelperService__atx_efficientLocalizedString__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(&dword_226368000, v0, OS_LOG_TYPE_ERROR, "%s: unable to establish XPC connection: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __78__LNStaticDeferredLocalizedString_HelperService__atx_efficientLocalizedString__block_invoke_32_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(&dword_226368000, v0, OS_LOG_TYPE_ERROR, "%s: unable to get a valid localized string: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end