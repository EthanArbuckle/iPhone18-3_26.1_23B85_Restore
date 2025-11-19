id LA_LOG()
{
  if (LA_LOG_once != -1)
  {
    LA_LOG_cold_1();
  }

  v1 = LA_LOG_log;

  return v1;
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

id LA_LOG_1()
{
  if (LA_LOG_once_2 != -1)
  {
    LA_LOG_cold_1_1();
  }

  v1 = LA_LOG_log_2;

  return v1;
}

id LA_LOG_2()
{
  if (LA_LOG_once_3 != -1)
  {
    LA_LOG_cold_1_2();
  }

  v1 = LA_LOG_log_3;

  return v1;
}

id LA_LOG_3()
{
  if (LA_LOG_once_5 != -1)
  {
    LA_LOG_cold_1_3();
  }

  v1 = LA_LOG_log_5;

  return v1;
}

id LA_LOG_4()
{
  if (LA_LOG_once_6 != -1)
  {
    LA_LOG_cold_1_4();
  }

  v1 = LA_LOG_log_6;

  return v1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x1Cu);
}

uint64_t LAAnalyticsAuthenticationTypeFromEvent(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_238B8D858[a1 - 1];
  }
}

void sub_238B84928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_238B84D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238B852A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238B86240(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_238B86554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238B87634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238B87958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t LACBiomeEvaluationDTOStateFromLAAnalyticsDTOState(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return qword_238B8D910[a1];
  }
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

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}