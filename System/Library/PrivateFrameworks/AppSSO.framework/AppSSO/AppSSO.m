id SO_LOG_SOConfigurationHost()
{
  if (SO_LOG_SOConfigurationHost_once != -1)
  {
    SO_LOG_SOConfigurationHost_cold_1();
  }

  v1 = SO_LOG_SOConfigurationHost_log;

  return v1;
}

id getSOConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOConfigurationClass_softClass;
  v7 = getSOConfigurationClass_softClass;
  if (!getSOConfigurationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOConfigurationClass_block_invoke;
    v3[3] = &unk_1E813E230;
    v3[4] = &v4;
    __getSOConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C1318508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSOAuthorizationResultCoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOAuthorizationResultCoreClass_softClass;
  v7 = getSOAuthorizationResultCoreClass_softClass;
  if (!getSOAuthorizationResultCoreClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOAuthorizationResultCoreClass_block_invoke;
    v3[3] = &unk_1E813E230;
    v3[4] = &v4;
    __getSOAuthorizationResultCoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C1318648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSOAuthorizationResultCoreClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AppSSOCoreLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AppSSOCoreLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E813E250;
    v7 = 0;
    AppSSOCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AppSSOCoreLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SOAuthorizationResultCore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOAuthorizationResultCoreClass_block_invoke_cold_1();
  }

  getSOAuthorizationResultCoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppSSOCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSSOCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id SO_LOG_SOExtensionServiceConnection()
{
  if (SO_LOG_SOExtensionServiceConnection_once != -1)
  {
    SO_LOG_SOExtensionServiceConnection_cold_1();
  }

  v1 = SO_LOG_SOExtensionServiceConnection_log;

  return v1;
}

void __getSOInternalProtocolsClass_block_invoke(uint64_t a1)
{
  AppSSOCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOInternalProtocols");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOInternalProtocolsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSOInternalProtocolsClass_block_invoke_cold_1();
    AppSSOCoreLibrary();
  }
}

void AppSSOCoreLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!AppSSOCoreLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __AppSSOCoreLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E813E2F8;
    v4 = 0;
    AppSSOCoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!AppSSOCoreLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __AppSSOCoreLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSSOCoreLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getSOErrorHelperClass_block_invoke(uint64_t a1)
{
  AppSSOCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOErrorHelper");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOErrorHelperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSOErrorHelperClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0();
  }
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id SO_LOG_SORemoteExtensionContext()
{
  if (SO_LOG_SORemoteExtensionContext_once != -1)
  {
    SO_LOG_SORemoteExtensionContext_cold_1();
  }

  v1 = SO_LOG_SORemoteExtensionContext_log;

  return v1;
}

id getSOErrorHelperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOErrorHelperClass_softClass_0;
  v7 = getSOErrorHelperClass_softClass_0;
  if (!getSOErrorHelperClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOErrorHelperClass_block_invoke_0;
    v3[3] = &unk_1E813E230;
    v3[4] = &v4;
    __getSOErrorHelperClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C1319D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C131A138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C131A2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getASAuthorizationProviderExtensionAuthorizationRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getASAuthorizationProviderExtensionAuthorizationRequestClass_softClass;
  v7 = getASAuthorizationProviderExtensionAuthorizationRequestClass_softClass;
  if (!getASAuthorizationProviderExtensionAuthorizationRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getASAuthorizationProviderExtensionAuthorizationRequestClass_block_invoke;
    v3[3] = &unk_1E813E230;
    v3[4] = &v4;
    __getASAuthorizationProviderExtensionAuthorizationRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C131A81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C131B778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSOErrorHelperClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AppSSOCoreLibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AppSSOCoreLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E813E3D8;
    v7 = 0;
    AppSSOCoreLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v5[0];
    if (AppSSOCoreLibraryCore_frameworkLibrary_1)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SOErrorHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOErrorHelperClass_block_invoke_cold_1();
  }

  getSOErrorHelperClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppSSOCoreLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSSOCoreLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getASAuthorizationProviderExtensionAuthorizationRequestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AuthenticationServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AuthenticationServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E813E3F0;
    v7 = 0;
    AuthenticationServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AuthenticationServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ASAuthorizationProviderExtensionAuthorizationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getASAuthorizationProviderExtensionAuthorizationRequestClass_block_invoke_cold_1();
  }

  getASAuthorizationProviderExtensionAuthorizationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AuthenticationServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AuthenticationServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id SO_LOG_SOExtension()
{
  if (SO_LOG_SOExtension_once != -1)
  {
    SO_LOG_SOExtension_cold_1();
  }

  v1 = SO_LOG_SOExtension_log;

  return v1;
}

void sub_1C131CFD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id getSOErrorHelperClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOErrorHelperClass_softClass_1;
  v7 = getSOErrorHelperClass_softClass_1;
  if (!getSOErrorHelperClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOErrorHelperClass_block_invoke_1;
    v3[3] = &unk_1E813E230;
    v3[4] = &v4;
    __getSOErrorHelperClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C131D40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C131F670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C1320044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSOErrorHelperClass_block_invoke_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AppSSOCoreLibraryCore_frameworkLibrary_2)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AppSSOCoreLibraryCore_block_invoke_2;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E813E8A8;
    v7 = 0;
    AppSSOCoreLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v2 = v5[0];
    if (AppSSOCoreLibraryCore_frameworkLibrary_2)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SOErrorHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOErrorHelperClass_block_invoke_cold_1();
  }

  getSOErrorHelperClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppSSOCoreLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSSOCoreLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

Class __getSOAuthorizationParametersCoreClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AppSSOCoreLibraryCore_frameworkLibrary_3)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AppSSOCoreLibraryCore_block_invoke_3;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E813E8C0;
    v7 = 0;
    AppSSOCoreLibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v2 = v5[0];
    if (AppSSOCoreLibraryCore_frameworkLibrary_3)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SOAuthorizationParametersCore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOAuthorizationParametersCoreClass_block_invoke_cold_1();
  }

  getSOAuthorizationParametersCoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppSSOCoreLibraryCore_block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSSOCoreLibraryCore_frameworkLibrary_3 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id SO_LOG_SOExtensionManager()
{
  if (SO_LOG_SOExtensionManager_once != -1)
  {
    SO_LOG_SOExtensionManager_cold_1();
  }

  v1 = SO_LOG_SOExtensionManager_log;

  return v1;
}

void sub_1C1325D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C1325F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C1326498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSOErrorHelperClass_block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AppSSOCoreLibraryCore_frameworkLibrary_4)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AppSSOCoreLibraryCore_block_invoke_4;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E813E980;
    v7 = 0;
    AppSSOCoreLibraryCore_frameworkLibrary_4 = _sl_dlopen();
    v2 = v5[0];
    if (AppSSOCoreLibraryCore_frameworkLibrary_4)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SOErrorHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOErrorHelperClass_block_invoke_cold_1();
  }

  getSOErrorHelperClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppSSOCoreLibraryCore_block_invoke_4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSSOCoreLibraryCore_frameworkLibrary_4 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

id SO_LOG_SORequestQueue()
{
  if (SO_LOG_SORequestQueue_once != -1)
  {
    SO_LOG_SORequestQueue_cold_1();
  }

  v1 = SO_LOG_SORequestQueue_log;

  return v1;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t result, int a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 1024;
  *(a3 + 14) = a2;
  return result;
}

void sub_1C1329E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSOUtilsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOUtilsClass_softClass;
  v7 = getSOUtilsClass_softClass;
  if (!getSOUtilsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOUtilsClass_block_invoke;
    v3[3] = &unk_1E813E230;
    v3[4] = &v4;
    __getSOUtilsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C1329EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSOUtilsClass_block_invoke(uint64_t a1)
{
  AppSSOCoreLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOUtils");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOUtilsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSOUtilsClass_block_invoke_cold_1();
    AppSSOCoreLibrary_0();
  }
}

void AppSSOCoreLibrary_0()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!AppSSOCoreLibraryCore_frameworkLibrary_5)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __AppSSOCoreLibraryCore_block_invoke_5;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E813E9F0;
    v4 = 0;
    AppSSOCoreLibraryCore_frameworkLibrary_5 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!AppSSOCoreLibraryCore_frameworkLibrary_5)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __AppSSOCoreLibraryCore_block_invoke_5(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSSOCoreLibraryCore_frameworkLibrary_5 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getSOErrorHelperClass_block_invoke_3(uint64_t a1)
{
  AppSSOCoreLibrary_0();
  result = objc_getClass("SOErrorHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOErrorHelperClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSOErrorHelperClass_block_invoke_cold_1();
    return [(SOPreferences *)v3 BOOLValueForKey:v4 defaultValue:v5, v6];
  }

  return result;
}

id getSOUtilsClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOUtilsClass_softClass_0;
  v7 = getSOUtilsClass_softClass_0;
  if (!getSOUtilsClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOUtilsClass_block_invoke_0;
    v3[3] = &unk_1E813E230;
    v3[4] = &v4;
    __getSOUtilsClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C132A47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SO_LOG_SOPreferences()
{
  if (SO_LOG_SOPreferences_once != -1)
  {
    SO_LOG_SOPreferences_cold_1();
  }

  v1 = SO_LOG_SOPreferences_log;

  return v1;
}

Class __getSOUtilsClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AppSSOCoreLibraryCore_frameworkLibrary_6)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AppSSOCoreLibraryCore_block_invoke_6;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E813EA08;
    v7 = 0;
    AppSSOCoreLibraryCore_frameworkLibrary_6 = _sl_dlopen();
    v2 = v5[0];
    if (AppSSOCoreLibraryCore_frameworkLibrary_6)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SOUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOUtilsClass_block_invoke_cold_1();
  }

  getSOUtilsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppSSOCoreLibraryCore_block_invoke_6(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSSOCoreLibraryCore_frameworkLibrary_6 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id SO_LOG_SOConfigurationManager()
{
  if (SO_LOG_SOConfigurationManager_once != -1)
  {
    SO_LOG_SOConfigurationManager_cold_1();
  }

  v1 = SO_LOG_SOConfigurationManager_log;

  return v1;
}

id SO_LOG_SOAuthorizationRequest()
{
  if (SO_LOG_SOAuthorizationRequest_once != -1)
  {
    SO_LOG_SOAuthorizationRequest_cold_1();
  }

  v1 = SO_LOG_SOAuthorizationRequest_log;

  return v1;
}

id getSOErrorHelperClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOErrorHelperClass_softClass_4;
  v7 = getSOErrorHelperClass_softClass_4;
  if (!getSOErrorHelperClass_softClass_4)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOErrorHelperClass_block_invoke_4;
    v3[3] = &unk_1E813E230;
    v3[4] = &v4;
    __getSOErrorHelperClass_block_invoke_4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C132AF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSOAuthorizationCredentialClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOAuthorizationCredentialClass_softClass;
  v7 = getSOAuthorizationCredentialClass_softClass;
  if (!getSOAuthorizationCredentialClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOAuthorizationCredentialClass_block_invoke;
    v3[3] = &unk_1E813E230;
    v3[4] = &v4;
    __getSOAuthorizationCredentialClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C132B5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getASAuthorizationErrorDomain()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getASAuthorizationErrorDomainSymbolLoc_ptr;
  v8 = getASAuthorizationErrorDomainSymbolLoc_ptr;
  if (!getASAuthorizationErrorDomainSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getASAuthorizationErrorDomainSymbolLoc_block_invoke;
    v4[3] = &unk_1E813E230;
    v4[4] = &v5;
    __getASAuthorizationErrorDomainSymbolLoc_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    ASAuthorizationErrorDomain_cold_1 = getASAuthorizationErrorDomain_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(ASAuthorizationErrorDomain_cold_1);
  }

  v1 = *v0;

  return v1;
}

void sub_1C132CF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSOErrorHelperClass_block_invoke_4(uint64_t a1)
{
  AppSSOCoreLibrary_1();
  result = objc_getClass("SOErrorHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOErrorHelperClass_softClass_4 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSOErrorHelperClass_block_invoke_cold_1();
    return AppSSOCoreLibrary_1();
  }

  return result;
}

uint64_t AppSSOCoreLibrary_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AppSSOCoreLibraryCore_frameworkLibrary_7)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AppSSOCoreLibraryCore_block_invoke_7;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E813EA70;
    v6 = 0;
    AppSSOCoreLibraryCore_frameworkLibrary_7 = _sl_dlopen();
  }

  v0 = AppSSOCoreLibraryCore_frameworkLibrary_7;
  v1 = v4[0];
  if (!AppSSOCoreLibraryCore_frameworkLibrary_7)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __AppSSOCoreLibraryCore_block_invoke_7(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSSOCoreLibraryCore_frameworkLibrary_7 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getSOAuthorizationCredentialClass_block_invoke(uint64_t a1)
{
  AppSSOCoreLibrary_1();
  result = objc_getClass("SOAuthorizationCredential");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOAuthorizationCredentialClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSOAuthorizationCredentialClass_block_invoke_cold_1();
    return __getASAuthorizationErrorDomainSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getASAuthorizationErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AuthenticationServicesLibraryCore_frameworkLibrary_0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AuthenticationServicesLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E813EA88;
    v8 = 0;
    AuthenticationServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v6[0];
    v2 = AuthenticationServicesLibraryCore_frameworkLibrary_0;
    if (AuthenticationServicesLibraryCore_frameworkLibrary_0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = AuthenticationServicesLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "ASAuthorizationErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASAuthorizationErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AuthenticationServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AuthenticationServicesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getSOAuthorizationOptionCoreNoUserInterfaceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppSSOCoreLibrary_1();
  result = dlsym(v2, "SOAuthorizationOptionCoreNoUserInterface");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSOAuthorizationOptionCoreNoUserInterfaceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPOLoginManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!PlatformSSOLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __PlatformSSOLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E813EAA0;
    v7 = 0;
    PlatformSSOLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (PlatformSSOLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("POLoginManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPOLoginManagerClass_block_invoke_cold_1();
  }

  getPOLoginManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PlatformSSOLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PlatformSSOLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = result & 1;
  *(a2 + 8) = 1024;
  *(a2 + 10) = a3;
  return result;
}

id SO_LOG_SOAuthorization()
{
  if (SO_LOG_SOAuthorization_once != -1)
  {
    SO_LOG_SOAuthorization_cold_1();
  }

  v1 = SO_LOG_SOAuthorization_log;

  return v1;
}

id getSOAuthorizationCoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOAuthorizationCoreClass_softClass;
  v7 = getSOAuthorizationCoreClass_softClass;
  if (!getSOAuthorizationCoreClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOAuthorizationCoreClass_block_invoke;
    v3[3] = &unk_1E813E230;
    v3[4] = &v4;
    __getSOAuthorizationCoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C132D868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C132EEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSOErrorHelperClass_2()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOErrorHelperClass_softClass_5;
  v7 = getSOErrorHelperClass_softClass_5;
  if (!getSOErrorHelperClass_softClass_5)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOErrorHelperClass_block_invoke_5;
    v3[3] = &unk_1E813E230;
    v3[4] = &v4;
    __getSOErrorHelperClass_block_invoke_5(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C132EFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSOAuthorizationCredentialCoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOAuthorizationCredentialCoreClass_softClass;
  v7 = getSOAuthorizationCredentialCoreClass_softClass;
  if (!getSOAuthorizationCredentialCoreClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOAuthorizationCredentialCoreClass_block_invoke;
    v3[3] = &unk_1E813E230;
    v3[4] = &v4;
    __getSOAuthorizationCredentialCoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C1330248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C13306C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_1C13315E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AppSSOCoreLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!AppSSOCoreLibraryCore_frameworkLibrary_8)
  {
    AppSSOCoreLibraryCore_frameworkLibrary_8 = _sl_dlopen();
  }

  result = AppSSOCoreLibraryCore_frameworkLibrary_8;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppSSOCoreLibraryCore_block_invoke_8(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSSOCoreLibraryCore_frameworkLibrary_8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getSOAuthorizationCoreClass_block_invoke(uint64_t a1)
{
  AppSSOCoreLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOAuthorizationCore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOAuthorizationCoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSOAuthorizationCoreClass_block_invoke_cold_1();
    AppSSOCoreLibrary_2();
  }
}

void AppSSOCoreLibrary_2()
{
  if (!AppSSOCoreLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

Class __getSOErrorHelperClass_block_invoke_5(uint64_t a1)
{
  AppSSOCoreLibrary_2();
  result = objc_getClass("SOErrorHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOErrorHelperClass_softClass_5 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSOErrorHelperClass_block_invoke_cold_1();
    return __getSOAuthorizationRequestParametersCoreClass_block_invoke(v3);
  }

  return result;
}

Class __getSOAuthorizationRequestParametersCoreClass_block_invoke(uint64_t a1)
{
  AppSSOCoreLibrary_2();
  result = objc_getClass("SOAuthorizationRequestParametersCore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOAuthorizationRequestParametersCoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSOAuthorizationRequestParametersCoreClass_block_invoke_cold_1();
    return __getSOAuthorizationCredentialCoreClass_block_invoke(v3);
  }

  return result;
}

Class __getSOAuthorizationCredentialCoreClass_block_invoke(uint64_t a1)
{
  AppSSOCoreLibrary_2();
  result = objc_getClass("SOAuthorizationCredentialCore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOAuthorizationCredentialCoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSOAuthorizationCredentialCoreClass_block_invoke_cold_1();
    return __getSOConfigurationClientClass_block_invoke(v3);
  }

  return result;
}

Class __getSOConfigurationClientClass_block_invoke(uint64_t a1)
{
  AppSSOCoreLibrary_2();
  result = objc_getClass("SOConfigurationClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOConfigurationClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSOConfigurationClientClass_block_invoke_cold_1();
    return __getSOUIAuthorizationViewControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getSOUIAuthorizationViewControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AppSSOUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AppSSOUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E813ED68;
    v7 = 0;
    AppSSOUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AppSSOUILibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SOUIAuthorizationViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOUIAuthorizationViewControllerClass_block_invoke_cold_1();
  }

  getSOUIAuthorizationViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppSSOUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSSOUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 40);
  return result;
}

void OUTLINED_FUNCTION_5_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id SO_LOG_SOExtensionViewService()
{
  if (SO_LOG_SOExtensionViewService_once != -1)
  {
    SO_LOG_SOExtensionViewService_cold_1();
  }

  v1 = SO_LOG_SOExtensionViewService_log;

  return v1;
}

void sub_1C1332BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSOErrorHelperClass_3()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOErrorHelperClass_softClass_6;
  v7 = getSOErrorHelperClass_softClass_6;
  if (!getSOErrorHelperClass_softClass_6)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOErrorHelperClass_block_invoke_6;
    v3[3] = &unk_1E813E230;
    v3[4] = &v4;
    __getSOErrorHelperClass_block_invoke_6(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C1332F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSOFullProfileClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOFullProfileClass_softClass;
  v7 = getSOFullProfileClass_softClass;
  if (!getSOFullProfileClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOFullProfileClass_block_invoke;
    v3[3] = &unk_1E813E230;
    v3[4] = &v4;
    __getSOFullProfileClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C13334A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C1334FF4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C1337BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id obj, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  objc_sync_exit(obj);
  objc_sync_exit(a23);
  _Unwind_Resume(a1);
}

void sub_1C13391A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id obj, uint64_t a12, uint64_t a13, uint64_t a14, id a15)
{
  objc_sync_exit(v15);
  objc_sync_exit(obj);
  objc_sync_exit(a15);
  _Unwind_Resume(a1);
}

void __getSOConfigurationVersionClass_block_invoke(uint64_t a1)
{
  AppSSOCoreLibrary_3();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOConfigurationVersion");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOConfigurationVersionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSOConfigurationVersionClass_block_invoke_cold_1();
    AppSSOCoreLibrary_3();
  }
}

void AppSSOCoreLibrary_3()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!AppSSOCoreLibraryCore_frameworkLibrary_9)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __AppSSOCoreLibraryCore_block_invoke_9;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E813EE00;
    v4 = 0;
    AppSSOCoreLibraryCore_frameworkLibrary_9 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!AppSSOCoreLibraryCore_frameworkLibrary_9)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __AppSSOCoreLibraryCore_block_invoke_9(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSSOCoreLibraryCore_frameworkLibrary_9 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getSOErrorHelperClass_block_invoke_6(uint64_t a1)
{
  AppSSOCoreLibrary_3();
  result = objc_getClass("SOErrorHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOErrorHelperClass_softClass_6 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSOErrorHelperClass_block_invoke_cold_1();
    return __getSOConfigurationClass_block_invoke(v3);
  }

  return result;
}

Class __getSOConfigurationClass_block_invoke(uint64_t a1)
{
  AppSSOCoreLibrary_3();
  result = objc_getClass("SOConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSOConfigurationClass_block_invoke_cold_1();
    return __getSOFullProfileClass_block_invoke(v3);
  }

  return result;
}

Class __getSOFullProfileClass_block_invoke(uint64_t a1)
{
  AppSSOCoreLibrary_3();
  result = objc_getClass("SOFullProfile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOFullProfileClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSOFullProfileClass_block_invoke_cold_1();
    return __getSOClientClass_block_invoke(v3);
  }

  return result;
}

void __getSOClientClass_block_invoke(uint64_t a1)
{
  AppSSOCoreLibrary_3();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOClient");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSOClientClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0_6();
  }
}

_BYTE *OUTLINED_FUNCTION_11(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_12(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

uint64_t OUTLINED_FUNCTION_13(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_15(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x20u);
}

void sub_1C1339D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SO_LOG_SOHostExtensionContext()
{
  if (SO_LOG_SOHostExtensionContext_once != -1)
  {
    SO_LOG_SOHostExtensionContext_cold_1();
  }

  v1 = SO_LOG_SOHostExtensionContext_log;

  return v1;
}

Class __getPOProfileClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!PlatformSSOLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __PlatformSSOLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E813EE68;
    v7 = 0;
    PlatformSSOLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (PlatformSSOLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("POProfile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPOProfileClass_block_invoke_cold_1();
  }

  getPOProfileClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PlatformSSOLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PlatformSSOLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getSOFullProfileClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AppSSOCoreLibraryCore_frameworkLibrary_10)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AppSSOCoreLibraryCore_block_invoke_10;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E813EE80;
    v7 = 0;
    AppSSOCoreLibraryCore_frameworkLibrary_10 = _sl_dlopen();
    v2 = v5[0];
    if (AppSSOCoreLibraryCore_frameworkLibrary_10)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SOFullProfile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOFullProfileClass_block_invoke_cold_1();
  }

  getSOFullProfileClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppSSOCoreLibraryCore_block_invoke_10(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSSOCoreLibraryCore_frameworkLibrary_10 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void appSSO_init()
{
  if (AppSSOCoreLibraryCore_0())
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v0 = getappSSO_initSymbolLoc_ptr;
    v7 = getappSSO_initSymbolLoc_ptr;
    if (!getappSSO_initSymbolLoc_ptr)
    {
      v1 = AppSSOCoreLibrary_4();
      v5[3] = dlsym(v1, "appSSO_init");
      getappSSO_initSymbolLoc_ptr = v5[3];
      v0 = v5[3];
    }

    _Block_object_dispose(&v4, 8);
    if (!v0)
    {
      ASAuthorizationErrorDomain_cold_1 = getASAuthorizationErrorDomain_cold_1();
      _Block_object_dispose(&v4, 8);
      _Unwind_Resume(ASAuthorizationErrorDomain_cold_1);
    }

    v0();
  }

  else
  {
    v2 = SO_LOG_AppSSOClientImpl();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }
  }
}

id SO_LOG_AppSSOClientImpl()
{
  if (SO_LOG_AppSSOClientImpl_once != -1)
  {
    SO_LOG_AppSSOClientImpl_cold_1();
  }

  v1 = SO_LOG_AppSSOClientImpl_log;

  return v1;
}

uint64_t appSSO_willPerform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (AppSSOCoreLibraryCore_0())
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v8 = getappSSO_willPerformSymbolLoc_ptr;
    v16 = getappSSO_willPerformSymbolLoc_ptr;
    if (!getappSSO_willPerformSymbolLoc_ptr)
    {
      v9 = AppSSOCoreLibrary_4();
      v14[3] = dlsym(v9, "appSSO_willPerform");
      getappSSO_willPerformSymbolLoc_ptr = v14[3];
      v8 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (!v8)
    {
      ASAuthorizationErrorDomain_cold_1 = getASAuthorizationErrorDomain_cold_1();
      _Block_object_dispose(&v13, 8);
      _Unwind_Resume(ASAuthorizationErrorDomain_cold_1);
    }

    return v8(a1, a2, a3, a4);
  }

  else
  {
    v11 = SO_LOG_AppSSOClientImpl();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }

    return 0;
  }
}

void appSSO_performResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6;
  if (AppSSOCoreLibraryCore_0())
  {
    v12 = v11;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v13 = getappSSO_performResponseSymbolLoc_ptr;
    v21 = getappSSO_performResponseSymbolLoc_ptr;
    if (!getappSSO_performResponseSymbolLoc_ptr)
    {
      v14 = AppSSOCoreLibrary_4();
      v19[3] = dlsym(v14, "appSSO_performResponse");
      getappSSO_performResponseSymbolLoc_ptr = v19[3];
      v13 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v13)
    {
      ASAuthorizationErrorDomain_cold_1 = getASAuthorizationErrorDomain_cold_1();
      _Block_object_dispose(&v18, 8);
      _Unwind_Resume(ASAuthorizationErrorDomain_cold_1);
    }

    v13(a1, a2, a3, a4, a5, v12);
  }

  else
  {
    v15 = SO_LOG_AppSSOClientImpl();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }

    if (v11)
    {
      v16 = [getSOErrorHelperClass_4() silentInternalErrorWithMessage:@"AppSSOCore is not available"];
      (*(v11 + 2))(v11, 0, 0, v16);
    }
  }
}

id getSOErrorHelperClass_4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOErrorHelperClass_softClass_7;
  v7 = getSOErrorHelperClass_softClass_7;
  if (!getSOErrorHelperClass_softClass_7)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOErrorHelperClass_block_invoke_7;
    v3[3] = &unk_1E813E230;
    v3[4] = &v4;
    __getSOErrorHelperClass_block_invoke_7(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C133B954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void appSSO_performResponseCredential(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  if (AppSSOCoreLibraryCore_0())
  {
    v10 = v9;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v11 = getappSSO_performResponseCredentialSymbolLoc_ptr;
    v19 = getappSSO_performResponseCredentialSymbolLoc_ptr;
    if (!getappSSO_performResponseCredentialSymbolLoc_ptr)
    {
      v12 = AppSSOCoreLibrary_4();
      v17[3] = dlsym(v12, "appSSO_performResponseCredential");
      getappSSO_performResponseCredentialSymbolLoc_ptr = v17[3];
      v11 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (!v11)
    {
      ASAuthorizationErrorDomain_cold_1 = getASAuthorizationErrorDomain_cold_1();
      _Block_object_dispose(&v16, 8);
      _Unwind_Resume(ASAuthorizationErrorDomain_cold_1);
    }

    v11(a1, a2, a3, a4, v10);
  }

  else
  {
    v13 = SO_LOG_AppSSOClientImpl();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }

    if (v9)
    {
      v14 = [getSOErrorHelperClass_4() silentInternalErrorWithMessage:@"AppSSOCore is not available"];
      (*(v9 + 2))(v9, 0, v14);
    }
  }
}

uint64_t appSSO_willHandle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (AppSSOCoreLibraryCore_0())
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v8 = getappSSO_willHandleSymbolLoc_ptr;
    v16 = getappSSO_willHandleSymbolLoc_ptr;
    if (!getappSSO_willHandleSymbolLoc_ptr)
    {
      v9 = AppSSOCoreLibrary_4();
      v14[3] = dlsym(v9, "appSSO_willHandle");
      getappSSO_willHandleSymbolLoc_ptr = v14[3];
      v8 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (!v8)
    {
      ASAuthorizationErrorDomain_cold_1 = getASAuthorizationErrorDomain_cold_1();
      _Block_object_dispose(&v13, 8);
      _Unwind_Resume(ASAuthorizationErrorDomain_cold_1);
    }

    return v8(a1, a2, a3, a4);
  }

  else
  {
    v11 = SO_LOG_AppSSOClientImpl();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }

    return 0;
  }
}

void appSSO_handleResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6;
  if (AppSSOCoreLibraryCore_0())
  {
    v12 = v11;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v13 = getappSSO_handleResponseSymbolLoc_ptr;
    v21 = getappSSO_handleResponseSymbolLoc_ptr;
    if (!getappSSO_handleResponseSymbolLoc_ptr)
    {
      v14 = AppSSOCoreLibrary_4();
      v19[3] = dlsym(v14, "appSSO_handleResponse");
      getappSSO_handleResponseSymbolLoc_ptr = v19[3];
      v13 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v13)
    {
      ASAuthorizationErrorDomain_cold_1 = getASAuthorizationErrorDomain_cold_1();
      _Block_object_dispose(&v18, 8);
      _Unwind_Resume(ASAuthorizationErrorDomain_cold_1);
    }

    v13(a1, a2, a3, a4, a5, v12);
  }

  else
  {
    v15 = SO_LOG_AppSSOClientImpl();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }

    if (v11)
    {
      v16 = [getSOErrorHelperClass_4() silentInternalErrorWithMessage:@"AppSSOCore is not available"];
      (*(v11 + 2))(v11, 0, 0, v16);
    }
  }
}

void appSSO_handleResponseCredential(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a7;
  if (AppSSOCoreLibraryCore_0())
  {
    v14 = v13;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v15 = getappSSO_handleResponseCredentialSymbolLoc_ptr;
    v23 = getappSSO_handleResponseCredentialSymbolLoc_ptr;
    if (!getappSSO_handleResponseCredentialSymbolLoc_ptr)
    {
      v16 = AppSSOCoreLibrary_4();
      v21[3] = dlsym(v16, "appSSO_handleResponseCredential");
      getappSSO_handleResponseCredentialSymbolLoc_ptr = v21[3];
      v15 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (!v15)
    {
      ASAuthorizationErrorDomain_cold_1 = getASAuthorizationErrorDomain_cold_1();
      _Block_object_dispose(&v20, 8);
      _Unwind_Resume(ASAuthorizationErrorDomain_cold_1);
    }

    v15(a1, a2, a3, a4, a5, a6, v14);
  }

  else
  {
    v17 = SO_LOG_AppSSOClientImpl();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }

    if (v13)
    {
      v18 = [getSOErrorHelperClass_4() silentInternalErrorWithMessage:@"AppSSOCore is not available"];
      (*(v13 + 2))(v13, 0, v18);
    }
  }
}

void appSSO_handleResponseImpersonationCredential(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v15 = a8;
  if (AppSSOCoreLibraryCore_0())
  {
    v16 = v15;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v17 = getappSSO_handleResponseImpersonationCredentialSymbolLoc_ptr;
    v25 = getappSSO_handleResponseImpersonationCredentialSymbolLoc_ptr;
    if (!getappSSO_handleResponseImpersonationCredentialSymbolLoc_ptr)
    {
      v18 = AppSSOCoreLibrary_4();
      v23[3] = dlsym(v18, "appSSO_handleResponseImpersonationCredential");
      getappSSO_handleResponseImpersonationCredentialSymbolLoc_ptr = v23[3];
      v17 = v23[3];
    }

    _Block_object_dispose(&v22, 8);
    if (!v17)
    {
      ASAuthorizationErrorDomain_cold_1 = getASAuthorizationErrorDomain_cold_1();
      _Block_object_dispose(&v22, 8);
      _Unwind_Resume(ASAuthorizationErrorDomain_cold_1);
    }

    v17(a1, a2, a3, a4, a5, a6, a7, v16);
  }

  else
  {
    v19 = SO_LOG_AppSSOClientImpl();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }

    if (v15)
    {
      v20 = [getSOErrorHelperClass_4() silentInternalErrorWithMessage:@"AppSSOCore is not available"];
      (*(v15 + 2))(v15, 0, v20);
    }
  }
}

uint64_t AppSSOCoreLibraryCore_0()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!AppSSOCoreLibraryCore_frameworkLibrary_11)
  {
    AppSSOCoreLibraryCore_frameworkLibrary_11 = _sl_dlopen();
  }

  result = AppSSOCoreLibraryCore_frameworkLibrary_11;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppSSOCoreLibraryCore_block_invoke_11(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSSOCoreLibraryCore_frameworkLibrary_11 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getappSSO_initSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppSSOCoreLibrary_4();
  result = dlsym(v2, "appSSO_init");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getappSSO_initSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AppSSOCoreLibrary_4()
{
  v0 = AppSSOCoreLibraryCore_0();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getappSSO_willPerformSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppSSOCoreLibrary_4();
  result = dlsym(v2, "appSSO_willPerform");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getappSSO_willPerformSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSOErrorHelperClass_block_invoke_7(uint64_t a1)
{
  AppSSOCoreLibrary_4();
  result = objc_getClass("SOErrorHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOErrorHelperClass_softClass_7 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSOErrorHelperClass_block_invoke_cold_1();
    return __getappSSO_performResponseSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getappSSO_performResponseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppSSOCoreLibrary_4();
  result = dlsym(v2, "appSSO_performResponse");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getappSSO_performResponseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getappSSO_performResponseCredentialSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppSSOCoreLibrary_4();
  result = dlsym(v2, "appSSO_performResponseCredential");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getappSSO_performResponseCredentialSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getappSSO_willHandleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppSSOCoreLibrary_4();
  result = dlsym(v2, "appSSO_willHandle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getappSSO_willHandleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getappSSO_handleResponseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppSSOCoreLibrary_4();
  result = dlsym(v2, "appSSO_handleResponse");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getappSSO_handleResponseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getappSSO_handleResponseCredentialSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppSSOCoreLibrary_4();
  result = dlsym(v2, "appSSO_handleResponseCredential");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getappSSO_handleResponseCredentialSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getappSSO_handleResponseImpersonationCredentialSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppSSOCoreLibrary_4();
  result = dlsym(v2, "appSSO_handleResponseImpersonationCredential");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getappSSO_handleResponseImpersonationCredentialSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id SO_LOG_SOExtensionFinder()
{
  if (SO_LOG_SOExtensionFinder_once != -1)
  {
    SO_LOG_SOExtensionFinder_cold_1();
  }

  v1 = SO_LOG_SOExtensionFinder_log;

  return v1;
}

id getSOErrorHelperClass_5()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOErrorHelperClass_softClass_8;
  v7 = getSOErrorHelperClass_softClass_8;
  if (!getSOErrorHelperClass_softClass_8)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOErrorHelperClass_block_invoke_8;
    v3[3] = &unk_1E813E230;
    v3[4] = &v4;
    __getSOErrorHelperClass_block_invoke_8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C133CE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C133D0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getSOErrorHelperClass_block_invoke_8(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AppSSOCoreLibraryCore_frameworkLibrary_12)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AppSSOCoreLibraryCore_block_invoke_12;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E813EED8;
    v7 = 0;
    AppSSOCoreLibraryCore_frameworkLibrary_12 = _sl_dlopen();
    v2 = v5[0];
    if (AppSSOCoreLibraryCore_frameworkLibrary_12)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SOErrorHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOErrorHelperClass_block_invoke_cold_1();
  }

  getSOErrorHelperClass_softClass_8 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppSSOCoreLibraryCore_block_invoke_12(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSSOCoreLibraryCore_frameworkLibrary_12 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getASAuthorizationErrorDomain_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __81__SOAuthorizationRequest_presentAuthorizationViewControllerWithHints_completion___block_invoke_cold_1(v0);
}