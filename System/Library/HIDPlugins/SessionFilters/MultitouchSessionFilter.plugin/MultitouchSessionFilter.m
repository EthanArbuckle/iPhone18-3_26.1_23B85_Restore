id MTLoggingCrownFilterManager()
{
  if (MTLoggingCrownFilterManager_onceToken != -1)
  {
    MTLoggingCrownFilterManager_cold_1();
  }

  v1 = MTLoggingCrownFilterManager___logObj;

  return v1;
}

id MTLoggingRemoteFilterManager()
{
  if (MTLoggingRemoteFilterManager_onceToken != -1)
  {
    MTLoggingRemoteFilterManager_cold_1();
  }

  v1 = MTLoggingRemoteFilterManager___logObj;

  return v1;
}

id MTLoggingAnalyticsFilterManager()
{
  if (MTLoggingAnalyticsFilterManager_onceToken != -1)
  {
    MTLoggingAnalyticsFilterManager_cold_1();
  }

  v1 = MTLoggingAnalyticsFilterManager___logObj;

  return v1;
}

void sub_1C58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x1Au);
}