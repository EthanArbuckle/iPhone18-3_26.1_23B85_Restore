void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void sub_23C1AD3FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_23C1AD944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  dispatch_async(v9, &a9);
}

void sub_23C1AFA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_DEFAULT, a4, &buf, 2u);
}

id AECoreErrorUserInfo(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (AECoreErrorUserInfo_onceToken != -1)
  {
    AECoreErrorUserInfo_cold_1();
  }

  v4 = *MEMORY[0x277CCA450];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  if (!v5 || (v6 = v5, [v3 objectForKeyedSubscript:@"NSDescriptionKey"], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    if (a1 > 101)
    {
      if (a1 == 102)
      {
        v8 = AECoreErrorUserInfo_bundle;
        v9 = @"Required participants are not available on this device.";
      }

      else
      {
        if (a1 != 103)
        {
          goto LABEL_15;
        }

        v8 = AECoreErrorUserInfo_bundle;
        v9 = @"The Policy Session is not entitled to use private configuration SPI.";
      }
    }

    else if (a1 == 100)
    {
      v8 = AECoreErrorUserInfo_bundle;
      v9 = @"The Policy Session failed to activate all subsystems";
    }

    else
    {
      if (a1 != 101)
      {
        goto LABEL_15;
      }

      v8 = AECoreErrorUserInfo_bundle;
      v9 = @"The Policy Session failed to deactivate all subsystems";
    }

    v10 = AELocalizedStringFromTableInBundle(v9, @"AACCoreErrors", v8);
    [0 setObject:v10 forKeyedSubscript:v4];
  }

LABEL_15:
  v11 = v3;
  v12 = v11;
  if ([0 count])
  {
    v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v11];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = [0 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(0);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = [v13 objectForKeyedSubscript:v18];

          if (!v19)
          {
            v20 = [0 objectForKeyedSubscript:v18];
            [v13 setObject:v20 forKeyedSubscript:v18];
          }
        }

        v15 = [0 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    v12 = [v13 copy];
  }

  v21 = [MEMORY[0x277CCA9B8] errorWithDomain:AECoreErrorDomain code:a1 userInfo:v12];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __AECoreErrorUserInfo_block_invoke()
{
  AECoreErrorUserInfo_bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void sub_23C1B12F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id AECoreLog()
{
  if (AECoreLog_onceToken != -1)
  {
    AECoreLog_cold_1();
  }

  v1 = AECoreLog_log;

  return v1;
}

uint64_t __AECoreLog_block_invoke()
{
  AECoreLog_log = os_log_create([AACLoggingSubsystem UTF8String], "Core");

  return MEMORY[0x2821F96F8]();
}

__CFString *AELoggingCategoryForEvent(uint64_t a1)
{
  if ((a1 - 3) >= 3)
  {
    return @"Rising Actions";
  }

  else
  {
    return @"Falling Actions";
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23C1B3438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23C1B9B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}