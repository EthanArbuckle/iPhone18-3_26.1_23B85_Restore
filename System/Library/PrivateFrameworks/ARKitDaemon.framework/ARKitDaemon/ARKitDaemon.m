id _ARLogDaemon()
{
  if (_ARLogDaemon_onceToken != -1)
  {
    _ARLogDaemon_cold_1();
  }

  v1 = _ARLogDaemon_logObj;

  return v1;
}

id _ARLogDaemon_0()
{
  if (_ARLogDaemon_onceToken_1 != -1)
  {
    _ARLogDaemon_cold_1_0();
  }

  v1 = _ARLogDaemon_logObj_1;

  return v1;
}

id _ARLogDaemon_1()
{
  if (_ARLogDaemon_onceToken_2 != -1)
  {
    _ARLogDaemon_cold_1_1();
  }

  v1 = _ARLogDaemon_logObj_2;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion = result;
  return result;
}

id _ARLogDaemon_2()
{
  if (_ARLogDaemon_onceToken_3 != -1)
  {
    _ARLogDaemon_cold_1_2();
  }

  v1 = _ARLogDaemon_logObj_3;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_0()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_0 = result;
  return result;
}

void sub_23D396584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _ARLogGeneral()
{
  if (_ARLogGeneral_onceToken != -1)
  {
    _ARLogGeneral_cold_1();
  }

  v1 = _ARLogGeneral_logObj;

  return v1;
}

id _ARLogDaemon_3()
{
  if (_ARLogDaemon_onceToken_4 != -1)
  {
    _ARLogDaemon_cold_1_3();
  }

  v1 = _ARLogDaemon_logObj_4;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_1()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_1 = result;
  return result;
}

id ARCreateTransactionForService(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [objc_opt_class() serviceName];
  v4 = [v2 clientBundleIdentifier];

  v5 = [v1 stringWithFormat:@"%@:%@", v3, v4];

  [v5 UTF8String];
  v6 = os_transaction_create();

  return v6;
}

id _ARLogDaemon_4()
{
  if (_ARLogDaemon_onceToken_5 != -1)
  {
    _ARLogDaemon_cold_1_4();
  }

  v1 = _ARLogDaemon_logObj_5;

  return v1;
}

void sub_23D39830C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _ARLogGeneral_0()
{
  if (_ARLogGeneral_onceToken_0 != -1)
  {
    _ARLogGeneral_cold_1_0();
  }

  v1 = _ARLogGeneral_logObj_0;

  return v1;
}

void sub_23D399238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23D399B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __ARShouldUseLogTypeError_block_invoke_2()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_2 = result;
  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _ARLogDaemon_5()
{
  if (_ARLogDaemon_onceToken_6 != -1)
  {
    _ARLogDaemon_cold_1_5();
  }

  v1 = _ARLogDaemon_logObj_6;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_3()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_3 = result;
  return result;
}

uint64_t ARDiagnosticPipelineRequestTailspin(uint64_t a1, uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *MEMORY[0x277CE5170];
    v8 = *MEMORY[0x277CCA450];
    v9[0] = @"DiagnosticPipeline is not supported.";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    *a3 = ARErrorWithCodeAndUserInfo();
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

__CFString *NSStringFromARMemoryPressureCondition(uint64_t a1)
{
  if (a1)
  {
    return @"Critical";
  }

  else
  {
    return @"Warning";
  }
}

id _ARLogGeneral_1()
{
  if (_ARLogGeneral_onceToken_1 != -1)
  {
    _ARLogGeneral_cold_1_1();
  }

  v1 = _ARLogGeneral_logObj_1;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_4()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_4 = result;
  return result;
}

id _ARLogDaemon_6()
{
  if (_ARLogDaemon_onceToken_7 != -1)
  {
    _ARLogDaemon_cold_1_6();
  }

  v1 = _ARLogDaemon_logObj_7;

  return v1;
}

id _ARLogGeneral_2()
{
  if (_ARLogGeneral_onceToken_2 != -1)
  {
    _ARLogGeneral_cold_1_2();
  }

  v1 = _ARLogGeneral_logObj_2;

  return v1;
}

void sub_23D39D2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  os_unfair_lock_unlock(v7 + 10);
  _Unwind_Resume(a1);
}

void sub_23D39E678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 48));
  _Block_object_dispose((v27 - 128), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __ARShouldUseLogTypeError_block_invoke_5()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_5 = result;
  return result;
}

id _ARLogGeneral_3()
{
  if (_ARLogGeneral_onceToken_3 != -1)
  {
    _ARLogGeneral_cold_1_3();
  }

  v1 = _ARLogGeneral_logObj_3;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_6()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_6 = result;
  return result;
}