@interface INSiriAuthorizationManager
@end

@implementation INSiriAuthorizationManager

void __75___INSiriAuthorizationManager__siriAuthorizationStatusForAppID_intentSlot___block_invoke_12(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__54958;
  v25 = __Block_byref_object_dispose__54959;
  v26 = [_siriAuthorizationStatusForAppID_intentSlot__cachedAuthorizationStatusDictionary objectForKeyedSubscript:a1[4]];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75___INSiriAuthorizationManager__siriAuthorizationStatusForAppID_intentSlot___block_invoke_13;
  v17[3] = &unk_1E7281410;
  v20 = a1[6];
  v16 = *(a1 + 2);
  v2 = v16;
  v18 = v16;
  v19 = &v21;
  v3 = MEMORY[0x193AD7780](v17);
  v4 = v22[5];
  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"_INSiriAuthorizationManagerLastAuthorizationCheckDateKey"];
    v6 = [v22[5] objectForKeyedSubscript:@"_INSiriAuthorizationManagerAuthorizationStatusKey"];
    v7 = [v6 integerValue];

    [v5 timeIntervalSinceNow];
    v9 = v8;
    v10 = INSiriLogContextIntents;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a1[4];
      v12 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
      *buf = 136315650;
      v28 = "+[_INSiriAuthorizationManager _siriAuthorizationStatusForAppID:intentSlot:]_block_invoke";
      v29 = 2112;
      v30 = v11;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_18E991000, v10, OS_LOG_TYPE_INFO, "%s Found cached authorization status for appID: %@, last authorization check time interval since now: %@", buf, 0x20u);
    }

    if (v7 == 3 && v9 >= -180.0)
    {
      v13 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        v14 = a1[4];
        *buf = 136315394;
        v28 = "+[_INSiriAuthorizationManager _siriAuthorizationStatusForAppID:intentSlot:]_block_invoke";
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&dword_18E991000, v13, OS_LOG_TYPE_INFO, "%s Returning cached authorization status for appID: %@", buf, 0x16u);
      }

      *(*(a1[5] + 8) + 24) = 3;
    }

    else
    {
      v3[2](v3);
    }
  }

  else
  {
    v3[2](v3);
  }

  _Block_object_dispose(&v21, 8);
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __75___INSiriAuthorizationManager__siriAuthorizationStatusForAppID_intentSlot___block_invoke_13(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "+[_INSiriAuthorizationManager _siriAuthorizationStatusForAppID:intentSlot:]_block_invoke";
    _os_log_impl(&dword_18E991000, v2, OS_LOG_TYPE_INFO, "%s Getting raw authorization status", buf, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 56) _rawSiriAuthorizationStatusForAppID:*(a1 + 32)];
  v3 = [MEMORY[0x1E695DF00] date];
  v10[1] = @"_INSiriAuthorizationManagerAuthorizationStatusKey";
  v11[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(*(a1 + 40) + 8) + 24)];
  v11[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  result = [_siriAuthorizationStatusForAppID_intentSlot__cachedAuthorizationStatusDictionary setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void __75___INSiriAuthorizationManager__siriAuthorizationStatusForAppID_intentSlot___block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = _siriAuthorizationStatusForAppID_intentSlot__cachedAuthorizationStatusDictionary;
  _siriAuthorizationStatusForAppID_intentSlot__cachedAuthorizationStatusDictionary = v0;

  v2 = dispatch_queue_create("_INSiriAuthorizationManagerTCCQueue", 0);
  v3 = _siriAuthorizationStatusForAppID_intentSlot__queue;
  _siriAuthorizationStatusForAppID_intentSlot__queue = v2;

  v4 = notify_register_dispatch("com.apple.tcc.access.changed", &_siriAuthorizationStatusForAppID_intentSlot__registrationToken, _siriAuthorizationStatusForAppID_intentSlot__queue, &__block_literal_global_10_54973);
  if (v4)
  {
    v5 = v4;
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v8 = MEMORY[0x1E696AD98];
      v9 = v6;
      v10 = [v8 numberWithUnsignedInt:v5];
      v11 = 136315394;
      v12 = "+[_INSiriAuthorizationManager _siriAuthorizationStatusForAppID:intentSlot:]_block_invoke";
      v13 = 2112;
      v14 = v10;
      _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s Error registering for TCC notification: %@", &v11, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __68___INSiriAuthorizationManager__requestSiriAuthorization_auditToken___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69D55E8];
  v10 = *MEMORY[0x1E69D54D0];
  v11[0] = MEMORY[0x1E695E118];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v3 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = v3;
  LOBYTE(v2) = TCCAccessCheckAuditToken();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68___INSiriAuthorizationManager__requestSiriAuthorization_auditToken___block_invoke_2;
  v5[3] = &unk_1E72813A0;
  v6 = *(a1 + 32);
  v7 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __68___INSiriAuthorizationManager__requestSiriAuthorization_auditToken___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), v1);
}

@end