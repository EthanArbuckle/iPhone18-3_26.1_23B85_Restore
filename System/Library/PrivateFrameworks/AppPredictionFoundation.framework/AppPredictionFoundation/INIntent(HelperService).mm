@interface INIntent(HelperService)
+ (id)atx_createEventIntentWithStartDate:()HelperService endDate:;
+ (id)atx_createIntentWithIntentType:()HelperService intentData:;
- (__CFString)atx_titleWithoutLocalizing;
- (id)atx_subtitleWithEfficientLocalization;
- (id)atx_titleWithEfficientLocalization;
- (uint64_t)atx_indexingHash;
- (uint64_t)atx_isEligibleForWidgets;
- (uint64_t)atx_supportsBackgroundExecution;
- (uint64_t)atx_titleLengthWithoutLocalizing;
- (void)atx_indexingHash;
- (void)atx_isEligibleForWidgets;
- (void)atx_subtitleWithEfficientLocalization;
- (void)atx_supportsBackgroundExecution;
- (void)atx_titleWithEfficientLocalization;
- (void)atx_titleWithoutLocalizing;
@end

@implementation INIntent(HelperService)

- (uint64_t)atx_indexingHash
{
  if (shouldDenyConnectionForCurrentProcess())
  {

    return [a1 _indexingHash];
  }

  else
  {
    v3 = prepareXPCConnection();
    v9 = 0;
    v10[0] = &v9;
    v10[1] = 0x2020000000;
    v10[2] = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__INIntent_HelperService__atx_indexingHash__block_invoke;
    v8[3] = &unk_27858FDB8;
    v8[4] = a1;
    v8[5] = &v9;
    v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__INIntent_HelperService__atx_indexingHash__block_invoke_12;
    v7[3] = &unk_27858FE08;
    v7[4] = a1;
    v7[5] = &v9;
    [v4 indexingHashForIntent:a1 withReply:v7];

    [v3 invalidate];
    v5 = __atxlog_handle_intents_helper();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(INIntent(HelperService) *)v10 atx_indexingHash];
    }

    v6 = *(v10[0] + 24);
    _Block_object_dispose(&v9, 8);

    return v6;
  }
}

- (id)atx_subtitleWithEfficientLocalization
{
  if (shouldDenyConnectionForCurrentProcess())
  {
    v2 = [a1 _subtitle];
  }

  else
  {
    v3 = prepareXPCConnection();
    v9 = 0;
    v10[0] = &v9;
    v10[1] = 0x3032000000;
    v10[2] = __Block_byref_object_copy__1;
    v10[3] = __Block_byref_object_dispose__1;
    v11 = &stru_28397E650;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__INIntent_HelperService__atx_subtitleWithEfficientLocalization__block_invoke;
    v8[3] = &unk_27858FDB8;
    v8[4] = a1;
    v8[5] = &v9;
    v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__INIntent_HelperService__atx_subtitleWithEfficientLocalization__block_invoke_11;
    v7[3] = &unk_27858FDE0;
    v7[4] = a1;
    v7[5] = &v9;
    [v4 subtitleForIntent:a1 withReply:v7];

    [v3 invalidate];
    v5 = __atxlog_handle_intents_helper();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(INIntent(HelperService) *)v10 atx_subtitleWithEfficientLocalization];
    }

    v2 = *(v10[0] + 40);
    _Block_object_dispose(&v9, 8);
  }

  return v2;
}

- (uint64_t)atx_titleLengthWithoutLocalizing
{
  v1 = [a1 atx_titleWithoutLocalizing];
  v2 = [v1 length];

  return v2;
}

- (__CFString)atx_titleWithoutLocalizing
{
  if (shouldDenyConnectionForCurrentProcess())
  {
    v2 = [a1 _titleWithLocalizer:0 fromBundleURL:0];
    v3 = v2;
    v4 = &stru_28397E650;
    if (v2)
    {
      v4 = v2;
    }

    v5 = v4;
  }

  else
  {
    v3 = prepareXPCConnection();
    v11 = 0;
    v12[0] = &v11;
    v12[1] = 0x3032000000;
    v12[2] = __Block_byref_object_copy__1;
    v12[3] = __Block_byref_object_dispose__1;
    v13 = &stru_28397E650;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__INIntent_HelperService__atx_titleWithoutLocalizing__block_invoke;
    v10[3] = &unk_27858FDB8;
    v10[4] = a1;
    v10[5] = &v11;
    v6 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__INIntent_HelperService__atx_titleWithoutLocalizing__block_invoke_8;
    v9[3] = &unk_27858FDE0;
    v9[4] = a1;
    v9[5] = &v11;
    [v6 titleForIntentNoLocalization:a1 withReply:v9];

    [v3 invalidate];
    v7 = __atxlog_handle_intents_helper();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(INIntent(HelperService) *)v12 atx_titleWithoutLocalizing];
    }

    v5 = *(v12[0] + 40);
    _Block_object_dispose(&v11, 8);
  }

  return v5;
}

- (id)atx_titleWithEfficientLocalization
{
  if (shouldDenyConnectionForCurrentProcess())
  {
    v2 = [a1 _title];
  }

  else
  {
    v3 = prepareXPCConnection();
    v9 = 0;
    v10[0] = &v9;
    v10[1] = 0x3032000000;
    v10[2] = __Block_byref_object_copy__1;
    v10[3] = __Block_byref_object_dispose__1;
    v11 = &stru_28397E650;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__INIntent_HelperService__atx_titleWithEfficientLocalization__block_invoke;
    v8[3] = &unk_27858FDB8;
    v8[4] = a1;
    v8[5] = &v9;
    v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__INIntent_HelperService__atx_titleWithEfficientLocalization__block_invoke_10;
    v7[3] = &unk_27858FDE0;
    v7[4] = a1;
    v7[5] = &v9;
    [v4 titleForIntent:a1 withReply:v7];

    [v3 invalidate];
    v5 = __atxlog_handle_intents_helper();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(INIntent(HelperService) *)v10 atx_titleWithEfficientLocalization];
    }

    v2 = *(v10[0] + 40);
    _Block_object_dispose(&v9, 8);
  }

  return v2;
}

- (uint64_t)atx_isEligibleForWidgets
{
  if (shouldDenyConnectionForCurrentProcess())
  {
    v2 = [a1 _codableDescription];
    v3 = [v2 isEligibleForWidgets];
  }

  else
  {
    v2 = prepareXPCConnection();
    v9 = 0;
    v10[0] = &v9;
    v10[1] = 0x2020000000;
    v11 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__INIntent_HelperService__atx_isEligibleForWidgets__block_invoke;
    v8[3] = &unk_27858FDB8;
    v8[4] = a1;
    v8[5] = &v9;
    v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__INIntent_HelperService__atx_isEligibleForWidgets__block_invoke_14;
    v7[3] = &unk_27858FE30;
    v7[4] = a1;
    v7[5] = &v9;
    [v4 eligibleForWidgetsForIntent:a1 withReply:v7];

    [v2 invalidate];
    v5 = __atxlog_handle_intents_helper();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(INIntent(HelperService) *)v10 atx_isEligibleForWidgets];
    }

    v3 = *(v10[0] + 24);
    _Block_object_dispose(&v9, 8);
  }

  return v3;
}

- (uint64_t)atx_supportsBackgroundExecution
{
  if (shouldDenyConnectionForCurrentProcess())
  {

    return [a1 _supportsBackgroundExecution];
  }

  else
  {
    v3 = prepareXPCConnection();
    v9 = 0;
    v10[0] = &v9;
    v10[1] = 0x2020000000;
    v11 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__INIntent_HelperService__atx_supportsBackgroundExecution__block_invoke;
    v8[3] = &unk_27858FDB8;
    v8[4] = a1;
    v8[5] = &v9;
    v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__INIntent_HelperService__atx_supportsBackgroundExecution__block_invoke_16;
    v7[3] = &unk_27858FE30;
    v7[4] = a1;
    v7[5] = &v9;
    [v4 supportsBackgroundExecutionForIntent:a1 withReply:v7];

    [v3 invalidate];
    v5 = __atxlog_handle_intents_helper();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(INIntent(HelperService) *)v10 atx_supportsBackgroundExecution];
    }

    v6 = *(v10[0] + 24);
    _Block_object_dispose(&v9, 8);

    return v6;
  }
}

+ (id)atx_createIntentWithIntentType:()HelperService intentData:
{
  v5 = a3;
  v6 = a4;
  if (shouldDenyConnectionForCurrentProcess())
  {
    v7 = INIntentCreate();
  }

  else
  {
    v8 = prepareXPCConnection();
    v25 = 0;
    v26[0] = &v25;
    v26[1] = 0x3032000000;
    v26[2] = __Block_byref_object_copy__1;
    v26[3] = __Block_byref_object_dispose__1;
    v27 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __69__INIntent_HelperService__atx_createIntentWithIntentType_intentData___block_invoke;
    v21[3] = &unk_27858FE58;
    v24 = &v25;
    v9 = v5;
    v22 = v9;
    v10 = v6;
    v23 = v10;
    v11 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v21];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __69__INIntent_HelperService__atx_createIntentWithIntentType_intentData___block_invoke_17;
    v17 = &unk_27858FE80;
    v20 = &v25;
    v18 = v9;
    v19 = v10;
    [v11 createIntentWithIntentType:v18 intentData:v19 withReply:&v14];

    [v8 invalidate];
    v12 = __atxlog_handle_intents_helper();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [INIntent(HelperService) atx_createIntentWithIntentType:v26 intentData:?];
    }

    v7 = *(v26[0] + 40);
    _Block_object_dispose(&v25, 8);
  }

  return v7;
}

+ (id)atx_createEventIntentWithStartDate:()HelperService endDate:
{
  v5 = a3;
  v6 = a4;
  if (shouldDenyConnectionForCurrentProcess())
  {
    v7 = 0;
  }

  else
  {
    v8 = prepareXPCConnection();
    v13 = 0;
    v14[0] = &v13;
    v14[1] = 0x3032000000;
    v14[2] = __Block_byref_object_copy__1;
    v14[3] = __Block_byref_object_dispose__1;
    v15 = 0;
    v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__INIntent_HelperService__atx_createEventIntentWithStartDate_endDate___block_invoke_19;
    v12[3] = &unk_27858FEC8;
    v12[4] = &v13;
    [v9 createEventIntentWithStartDate:v5 endDate:v6 withReply:v12];

    [v8 invalidate];
    v10 = __atxlog_handle_intents_helper();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [INIntent(HelperService) atx_createEventIntentWithStartDate:v14 endDate:?];
    }

    v7 = *(v14[0] + 40);
    _Block_object_dispose(&v13, 8);
  }

  return v7;
}

- (void)atx_titleWithoutLocalizing
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(&dword_226368000, v1, v2, "atx_titleWithoutLocalizing returning: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)atx_titleWithEfficientLocalization
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(&dword_226368000, v1, v2, "atx_titleWithEfficientLocalization returning: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)atx_subtitleWithEfficientLocalization
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(&dword_226368000, v1, v2, "atx_subtitleWithEfficientLocalization returning: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)atx_indexingHash
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 24);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(&dword_226368000, v2, v3, "atx_indexingHash returning: %lld", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)atx_isEligibleForWidgets
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 24);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_226368000, a2, OS_LOG_TYPE_DEBUG, "atx_isEligibleForWidgets returning: %u", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)atx_supportsBackgroundExecution
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 24);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_226368000, a2, OS_LOG_TYPE_DEBUG, "atx_supportsBackgroundExecution returning: %u", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)atx_createIntentWithIntentType:()HelperService intentData:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(&dword_226368000, v1, v2, "createdIntentWithIntentType returning: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)atx_createEventIntentWithStartDate:()HelperService endDate:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(&dword_226368000, v1, v2, "createEventIntentWithCurrentDate returning: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end