void __LALogForCategory_block_invoke_3(uint64_t a1)
{
  v2 = _categories;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id LALogForCategory(uint64_t a1)
{
  if (LALogForCategory_onceToken != -1)
  {
    LALogForCategory_cold_1();
  }

  v2 = _processCategory | a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __LALogForCategory_block_invoke_3;
  block[3] = &unk_1E86B5DE0;
  block[4] = &v15;
  block[5] = _processCategory | a1;
  dispatch_sync(LALogForCategory_queue, block);
  v3 = v16[5];
  if (!v3)
  {
    v4 = objc_opt_new();
    v5 = 0;
    v6 = "Client";
    do
    {
      v7 = (1 << v5);
      if (v2 < v7)
      {
        break;
      }

      if ((v2 & v7) != 0)
      {
        if ([v4 length])
        {
          [v4 appendString:{@", "}];
        }

        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
        [v4 appendString:v8];
      }

      ++v5;
      v6 += 16;
    }

    while (v5 != 19);
    v9 = os_log_create("com.apple.LocalAuthentication", [v4 UTF8String]);

    v10 = v16[5];
    v16[5] = v9;

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __LALogForCategory_block_invoke_2;
    v13[3] = &unk_1E86B5DE0;
    v13[4] = &v15;
    v13[5] = v2;
    dispatch_barrier_sync(LALogForCategory_queue, v13);
    v3 = v16[5];
  }

  v11 = v3;
  _Block_object_dispose(&v15, 8);

  return v11;
}

void sub_1DF4057CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __LALogSetProcessCategory_block_invoke(uint64_t a1)
{
  _processCategory = *(a1 + 32);
  v1 = LALogForCategory(_processCategory);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DF403000, v1, OS_LOG_TYPE_DEFAULT, "LA logging set up for this process.", v2, 2u);
  }
}

void LALogSetProcessCategory(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __LALogSetProcessCategory_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (LALogSetProcessCategory_onceToken != -1)
  {
    dispatch_once(&LALogSetProcessCategory_onceToken, block);
  }
}

uint64_t __LALogForCategory_block_invoke()
{
  v0 = objc_opt_new();
  v1 = _categories;
  _categories = v0;

  LALogForCategory_queue = [MEMORY[0x1E69AD240] createDefaultQueueWithIdentifier:@"com.apple.LocalAuthentication.logging" concurrencyAttribute:MEMORY[0x1E69E96A8]];

  return MEMORY[0x1EEE66BB8]();
}

void __LALogForCategory_block_invoke_2(uint64_t a1)
{
  v1 = _categories;
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  [v1 setObject:v2 forKey:v3];
}

id LALogForPolicy(uint64_t a1, void *a2, int a3)
{
  v3 = LALogCategoryForPolicy(a1, a2, a3);

  return LALogForCategory(v3);
}

uint64_t LALogCategoryForPolicy(uint64_t a1, void *a2, int a3)
{
  v5 = MEMORY[0x1E69AD2A8];
  v6 = a2;
  v7 = [v5 isApplePayPolicy:a1];
  v8 = 1024;
  v9 = 64;
  v10 = 1024;
  v11 = (a1 == 1008) << 10;
  if (a1 == 1003)
  {
    v11 = 1024;
  }

  if (a1 != 1)
  {
    v10 = v11;
  }

  if ((v7 & 1) == 0)
  {
    v9 = 0;
    v8 = v10;
  }

  v12 = v8 | v9;
  v13 = LALogCategoryForOptions(v6, a3);

  return v12 | v13;
}

uint64_t LALogCategoryForOptions(void *a1, int a2)
{
  if (a1)
  {
    v3 = [a1 objectForKeyedSubscript:&unk_1F5A79368];
    if ([v3 BOOLValue])
    {
      v4 = 0;
    }

    else
    {
      v4 = 8;
    }
  }

  else
  {
    v4 = 8;
  }

  v5 = 16;
  if (!a2)
  {
    v5 = 0;
  }

  return v4 | v5;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromLAPasscodeType(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LAPasscodeType unknown (%d)", a1];
  }

  else
  {
    v2 = off_1E86B5C40[a1];
  }

  return v2;
}

id LA_LOG()
{
  if (LA_LOG_once != -1)
  {
    LA_LOG_cold_1();
  }

  v1 = LA_LOG_log;

  return v1;
}

void sub_1DF406FC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1DF407128(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

LASerialSchedulerInternal *LASerialScheduler(void *a1)
{
  v1 = a1;
  v2 = [[LASerialSchedulerInternal alloc] initWithQueue:v1];

  return v2;
}

id LA_LOG_0()
{
  if (LA_LOG_once_0 != -1)
  {
    LA_LOG_cold_1_0();
  }

  v1 = LA_LOG_log_0;

  return v1;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id LA_LOG_LAErrorHelper()
{
  if (LA_LOG_LAErrorHelper_once != -1)
  {
    LA_LOG_LAErrorHelper_cold_1();
  }

  v1 = LA_LOG_LAErrorHelper_log;

  return v1;
}

void sub_1DF4098FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF40A3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id LA_LOG_INTERACTIVE()
{
  if (LA_LOG_INTERACTIVE_once != -1)
  {
    LA_LOG_INTERACTIVE_cold_1();
  }

  v1 = LA_LOG_INTERACTIVE_log;

  return v1;
}

id LA_LOG_LADFR()
{
  if (LA_LOG_LADFR_once != -1)
  {
    LA_LOG_LADFR_cold_1();
  }

  v1 = LA_LOG_LADFR_log;

  return v1;
}

void sub_1DF40B9AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

uint64_t LALogTypeForInternalError()
{
  v0 = *MEMORY[0x1E69AD150];
  if (os_variant_allows_internal_security_policies())
  {
    return 16;
  }

  else
  {
    return 0;
  }
}