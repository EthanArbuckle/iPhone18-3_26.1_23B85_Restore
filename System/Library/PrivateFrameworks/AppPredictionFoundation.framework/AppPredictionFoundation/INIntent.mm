@interface INIntent
@end

@implementation INIntent

void __43__INIntent_HelperService__atx_indexingHash__block_invoke_12(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = __atxlog_handle_intents_helper();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __43__INIntent_HelperService__atx_indexingHash__block_invoke_12_cold_1();
    }

    a2 = [*(a1 + 32) _indexingHash];
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void __64__INIntent_HelperService__atx_subtitleWithEfficientLocalization__block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = __atxlog_handle_intents_helper();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __64__INIntent_HelperService__atx_subtitleWithEfficientLocalization__block_invoke_11_cold_1();
    }

    v9 = [*(a1 + 32) _subtitle];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __53__INIntent_HelperService__atx_titleWithoutLocalizing__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_intents_helper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__INIntent_HelperService__atx_titleWithoutLocalizing__block_invoke_cold_1();
  }

  v5 = [*(a1 + 32) _titleWithLocalizer:0 fromBundleURL:0];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_28397E650;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
}

void __53__INIntent_HelperService__atx_titleWithoutLocalizing__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = __atxlog_handle_intents_helper();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __53__INIntent_HelperService__atx_titleWithoutLocalizing__block_invoke_8_cold_1();
    }

    v9 = [*(a1 + 32) _titleWithLocalizer:0 fromBundleURL:0];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_28397E650;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v11);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __61__INIntent_HelperService__atx_titleWithEfficientLocalization__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_intents_helper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__INIntent_HelperService__atx_titleWithEfficientLocalization__block_invoke_cold_1();
  }

  v5 = [*(a1 + 32) _title];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __61__INIntent_HelperService__atx_titleWithEfficientLocalization__block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = __atxlog_handle_intents_helper();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __61__INIntent_HelperService__atx_titleWithEfficientLocalization__block_invoke_10_cold_1();
    }

    v9 = [*(a1 + 32) _title];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __64__INIntent_HelperService__atx_subtitleWithEfficientLocalization__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_intents_helper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__INIntent_HelperService__atx_subtitleWithEfficientLocalization__block_invoke_cold_1();
  }

  v5 = [*(a1 + 32) _subtitle];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __43__INIntent_HelperService__atx_indexingHash__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_intents_helper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __43__INIntent_HelperService__atx_indexingHash__block_invoke_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _indexingHash];
}

void __51__INIntent_HelperService__atx_isEligibleForWidgets__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_intents_helper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__INIntent_HelperService__atx_isEligibleForWidgets__block_invoke_cold_1();
  }

  v5 = [*(a1 + 32) _codableDescription];
  *(*(*(a1 + 40) + 8) + 24) = [v5 isEligibleForWidgets];
}

void __51__INIntent_HelperService__atx_isEligibleForWidgets__block_invoke_14(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = __atxlog_handle_intents_helper();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __51__INIntent_HelperService__atx_isEligibleForWidgets__block_invoke_14_cold_1();
    }

    v7 = [*(a1 + 32) _codableDescription];
    *(*(*(a1 + 40) + 8) + 24) = [v7 isEligibleForWidgets];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

void __58__INIntent_HelperService__atx_supportsBackgroundExecution__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_intents_helper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__INIntent_HelperService__atx_supportsBackgroundExecution__block_invoke_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _supportsBackgroundExecution];
}

void __58__INIntent_HelperService__atx_supportsBackgroundExecution__block_invoke_16(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = __atxlog_handle_intents_helper();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__INIntent_HelperService__atx_supportsBackgroundExecution__block_invoke_16_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _supportsBackgroundExecution];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

void __69__INIntent_HelperService__atx_createIntentWithIntentType_intentData___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_intents_helper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__INIntent_HelperService__atx_createIntentWithIntentType_intentData___block_invoke_cold_1();
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = INIntentCreate();
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __69__INIntent_HelperService__atx_createIntentWithIntentType_intentData___block_invoke_17(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = __atxlog_handle_intents_helper();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __69__INIntent_HelperService__atx_createIntentWithIntentType_intentData___block_invoke_17_cold_1();
    }

    v9 = a1[4];
    v10 = a1[5];
    v11 = INIntentCreate();
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }
}

void __70__INIntent_HelperService__atx_createEventIntentWithStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_intents_helper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __70__INIntent_HelperService__atx_createEventIntentWithStartDate_endDate___block_invoke_cold_1();
  }
}

void __70__INIntent_HelperService__atx_createEventIntentWithStartDate_endDate___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = __atxlog_handle_intents_helper();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __70__INIntent_HelperService__atx_createEventIntentWithStartDate_endDate___block_invoke_19_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __53__INIntent_HelperService__atx_titleWithoutLocalizing__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v0, v1, "atx_titleWithoutLocalizing unable to establish XPC connection: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__INIntent_HelperService__atx_titleWithoutLocalizing__block_invoke_8_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v0, v1, "atx_titleWithoutLocalizing unable to get a valid unlocalized title: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__INIntent_HelperService__atx_titleWithEfficientLocalization__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v0, v1, "atx_titleWithEfficientLocalization unable to establish XPC connection: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__INIntent_HelperService__atx_titleWithEfficientLocalization__block_invoke_10_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v0, v1, "atx_titleWithEfficientLocalization unable to get a valid title: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__INIntent_HelperService__atx_subtitleWithEfficientLocalization__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v0, v1, "atx_subtitleWithEfficientLocalization unable to establish XPC connection: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__INIntent_HelperService__atx_subtitleWithEfficientLocalization__block_invoke_11_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v0, v1, "atx_subtitleWithEfficientLocalization error encountered while requesting subtitle: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__INIntent_HelperService__atx_indexingHash__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v0, v1, "atx_indexingHash unable to establish XPC connection: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__INIntent_HelperService__atx_indexingHash__block_invoke_12_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v0, v1, "atx_indexingHash error encountered while requesting indexing hash: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__INIntent_HelperService__atx_isEligibleForWidgets__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v0, v1, "atx_isEligibleForWidgets unable to establish XPC connection: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__INIntent_HelperService__atx_isEligibleForWidgets__block_invoke_14_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v0, v1, "atx_isEligibleForWidgets error encountered while requesting intent: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__INIntent_HelperService__atx_supportsBackgroundExecution__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v0, v1, "atx_supportsBackgroundExecution unable to establish XPC connection: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__INIntent_HelperService__atx_supportsBackgroundExecution__block_invoke_16_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v0, v1, "atx_supportsBackgroundExecution error encountered while requesting intent: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__INIntent_HelperService__atx_createIntentWithIntentType_intentData___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v0, v1, "createdIntentWithIntentType unable to establish XPC connection: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__INIntent_HelperService__atx_createIntentWithIntentType_intentData___block_invoke_17_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v0, v1, "createdIntentWithIntentType error encountered while requesting intent: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__INIntent_HelperService__atx_createEventIntentWithStartDate_endDate___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v0, v1, "createEventIntentWithCurrentDate unable to establish XPC connection: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__INIntent_HelperService__atx_createEventIntentWithStartDate_endDate___block_invoke_19_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v0, v1, "createEventIntentWithCurrentDate error encountered while requesting intent: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end