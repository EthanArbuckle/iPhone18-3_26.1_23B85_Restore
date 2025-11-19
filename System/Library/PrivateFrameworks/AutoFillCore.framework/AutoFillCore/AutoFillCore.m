void AFDispatchAsync(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __AFDispatchAsync_block_invoke;
  v7[3] = &unk_278CF6810;
  v8 = v3;
  v4 = v3;
  v5 = a1;
  v6 = MEMORY[0x245CF1A60](v7);
  if (_block_count(void)::once_token != -1)
  {
    AFDispatchAsync_cold_1();
  }

  atomic_fetch_add(&_block_count(void)::count, 1uLL);
  dispatch_async(v5, v6);
}

void __AFDispatchAsync_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  if (_block_count(void)::once_token != -1)
  {
    __AFDispatchAsync_block_invoke_cold_1();
  }

  atomic_fetch_add(&_block_count(void)::count, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_2418BF6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_2418C0320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void InputContextLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!InputContextLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __InputContextLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278CF6A38;
    v4 = 0;
    InputContextLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!InputContextLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __InputContextLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  InputContextLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getPKAutoFillCardManagerClass_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (!PassKitCoreLibraryCore_frameworkLibrary)
  {
    PassKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("PKAutoFillCardManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKAutoFillCardManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PassKitCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PassKitCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  ManagedConfigurationLibrary();
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMCProfileConnectionClass_block_invoke_cold_1();
    return ManagedConfigurationLibrary();
  }

  return result;
}

uint64_t ManagedConfigurationLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278CF6A88;
    v6 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ManagedConfigurationLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCFeatureAuthenticationBeforeAutoFillRequired");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getLAContextClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __LocalAuthenticationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278CF6AA0;
    v7 = 0;
    LocalAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (LocalAuthenticationLibraryCore_frameworkLibrary)
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
  result = objc_getClass("LAContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLAContextClass_block_invoke_cold_1();
  }

  getLAContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __LocalAuthenticationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LocalAuthenticationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_debug_impl(a1, v11, OS_LOG_TYPE_DEBUG, a4, &buf, 0xCu);
}

void sub_2418C208C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSFSafariCredentialStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSFSafariCredentialStoreClass_softClass;
  v7 = getSFSafariCredentialStoreClass_softClass;
  if (!getSFSafariCredentialStoreClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSFSafariCredentialStoreClass_block_invoke;
    v3[3] = &unk_278CF6A18;
    v3[4] = &v4;
    __getSFSafariCredentialStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2418C24F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSFAutoFillFeatureManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSFAutoFillFeatureManagerClass_softClass;
  v7 = getSFAutoFillFeatureManagerClass_softClass;
  if (!getSFAutoFillFeatureManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSFAutoFillFeatureManagerClass_block_invoke;
    v3[3] = &unk_278CF6A18;
    v3[4] = &v4;
    __getSFAutoFillFeatureManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2418C3230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getSFAutoFillPasskeyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSFAutoFillPasskeyClass_softClass;
  v7 = getSFAutoFillPasskeyClass_softClass;
  if (!getSFAutoFillPasskeyClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSFAutoFillPasskeyClass_block_invoke;
    v3[3] = &unk_278CF6A18;
    v3[4] = &v4;
    __getSFAutoFillPasskeyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2418C33D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2418C393C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_2418C44D4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Unwind_Resume(a1);
}

id getAKPrivateEmailContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAKPrivateEmailContextClass_softClass;
  v7 = getAKPrivateEmailContextClass_softClass;
  if (!getAKPrivateEmailContextClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAKPrivateEmailContextClass_block_invoke;
    v3[3] = &unk_278CF6A18;
    v3[4] = &v4;
    __getAKPrivateEmailContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2418C49C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSFAppAutoFillPasskeyProviderClass_block_invoke(uint64_t a1)
{
  SafariFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SFAppAutoFillPasskeyProvider");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFAppAutoFillPasskeyProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSFAppAutoFillPasskeyProviderClass_block_invoke_cold_1();
    SafariFoundationLibrary();
  }
}

void SafariFoundationLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!SafariFoundationLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __SafariFoundationLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278CF6CE0;
    v4 = 0;
    SafariFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!SafariFoundationLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __SafariFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SafariFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getSFAppAutoFillOneTimeCodeProviderClass_block_invoke(uint64_t a1)
{
  SafariFoundationLibrary();
  result = objc_getClass("SFAppAutoFillOneTimeCodeProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFAppAutoFillOneTimeCodeProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSFAppAutoFillOneTimeCodeProviderClass_block_invoke_cold_1();
    return __getSFSafariCredentialStoreClass_block_invoke(v3);
  }

  return result;
}

Class __getSFSafariCredentialStoreClass_block_invoke(uint64_t a1)
{
  SafariFoundationLibrary();
  result = objc_getClass("SFSafariCredentialStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFSafariCredentialStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSFSafariCredentialStoreClass_block_invoke_cold_1();
    return __getSFAutoFillFeatureManagerClass_block_invoke(v3);
  }

  return result;
}

Class __getSFAutoFillFeatureManagerClass_block_invoke(uint64_t a1)
{
  SafariFoundationLibrary();
  result = objc_getClass("SFAutoFillFeatureManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFAutoFillFeatureManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSFAutoFillFeatureManagerClass_block_invoke_cold_1();
    return __isSystemAutoFillBundle_block_invoke(v3);
  }

  return result;
}

uint64_t __isSystemAutoFillBundle_block_invoke()
{
  isSystemAutoFillBundle_autoFillPanelIdentifiers = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.AutoFillPanel", @"com.apple.AutoFillPanelService", @"com.apple.InputUI", 0}];

  return MEMORY[0x2821F96F8]();
}

Class __getSFSafariCredentialClass_block_invoke(uint64_t a1)
{
  SafariFoundationLibrary();
  result = objc_getClass("SFSafariCredential");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFSafariCredentialClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSFSafariCredentialClass_block_invoke_cold_1();
    return __getSFAutoFillPasskeyClass_block_invoke(v3);
  }

  return result;
}

Class __getSFAutoFillPasskeyClass_block_invoke(uint64_t a1)
{
  SafariFoundationLibrary();
  result = objc_getClass("SFAutoFillPasskey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFAutoFillPasskeyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSFAutoFillPasskeyClass_block_invoke_cold_1();
    return __getSFSuggestedUserProviderClass_block_invoke(v3);
  }

  return result;
}

Class __getSFSuggestedUserProviderClass_block_invoke(uint64_t a1)
{
  SafariFoundationLibrary();
  result = objc_getClass("SFSuggestedUserProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFSuggestedUserProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSFSuggestedUserProviderClass_block_invoke_cold_1();
    return __getAKAccountManagerClass_block_invoke(v3);
  }

  return result;
}

void __getAKAccountManagerClass_block_invoke(uint64_t a1)
{
  AuthKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AKAccountManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAKAccountManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAKAccountManagerClass_block_invoke_cold_1();
    AuthKitLibrary();
  }
}

void AuthKitLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __AuthKitLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278CF6CF8;
    v4 = 0;
    AuthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __AuthKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getAKPrivateEmailControllerClass_block_invoke(uint64_t a1)
{
  AuthKitLibrary();
  result = objc_getClass("AKPrivateEmailController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAKPrivateEmailControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAKPrivateEmailControllerClass_block_invoke_cold_1();
    return __getAKPrivateEmailContextClass_block_invoke(v3);
  }

  return result;
}

Class __getAKPrivateEmailContextClass_block_invoke(uint64_t a1)
{
  AuthKitLibrary();
  result = objc_getClass("AKPrivateEmailContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAKPrivateEmailContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAKPrivateEmailContextClass_block_invoke_cold_1();
    return __getCSFFeatureManagerClass_block_invoke(v3);
  }

  return result;
}

Class __getCSFFeatureManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CloudSubscriptionFeaturesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CloudSubscriptionFeaturesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278CF6D10;
    v7 = 0;
    CloudSubscriptionFeaturesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (CloudSubscriptionFeaturesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CSFFeatureManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSFFeatureManagerClass_block_invoke_cold_1();
  }

  getCSFFeatureManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CloudSubscriptionFeaturesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudSubscriptionFeaturesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getMCProfileConnectionClass_block_invoke_0(uint64_t a1)
{
  ManagedConfigurationLibrary_0();
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCProfileConnectionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMCProfileConnectionClass_block_invoke_cold_1();
    return ManagedConfigurationLibrary_0();
  }

  return result;
}

uint64_t ManagedConfigurationLibrary_0()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ManagedConfigurationLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278CF6D28;
    v6 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = ManagedConfigurationLibraryCore_frameworkLibrary_0;
  v1 = v4[0];
  if (!ManagedConfigurationLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary_0();
  result = dlsym(v2, "MCFeatureAuthenticationBeforeAutoFillRequired");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getLAContextClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!LocalAuthenticationLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __LocalAuthenticationLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278CF6D40;
    v7 = 0;
    LocalAuthenticationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (LocalAuthenticationLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("LAContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLAContextClass_block_invoke_cold_1();
  }

  getLAContextClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __LocalAuthenticationLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LocalAuthenticationLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

id AFCredentialManagerOSLogFacility()
{
  if (AFCredentialManagerOSLogFacility_onceToken != -1)
  {
    AFCredentialManagerOSLogFacility_cold_1();
  }

  v1 = AFCredentialManagerOSLogFacility_logFacility;

  return v1;
}

uint64_t __AFCredentialManagerOSLogFacility_block_invoke()
{
  AFCredentialManagerOSLogFacility_logFacility = os_log_create("com.apple.AutoFillCore", "AFCredentialManager");

  return MEMORY[0x2821F96F8]();
}

id AFLocalizationManagerOSLogFacility()
{
  if (AFLocalizationManagerOSLogFacility_onceToken != -1)
  {
    AFLocalizationManagerOSLogFacility_cold_1();
  }

  v1 = AFLocalizationManagerOSLogFacility_logFacility;

  return v1;
}

uint64_t __AFLocalizationManagerOSLogFacility_block_invoke()
{
  AFLocalizationManagerOSLogFacility_logFacility = os_log_create("com.apple.AutoFillCore", "AFLocalizationManager");

  return MEMORY[0x2821F96F8]();
}

id AFSuggestionGenerationManagerOSLogFacility()
{
  if (AFSuggestionGenerationManagerOSLogFacility_onceToken != -1)
  {
    AFSuggestionGenerationManagerOSLogFacility_cold_1();
  }

  v1 = AFSuggestionGenerationManagerOSLogFacility_logFacility;

  return v1;
}

uint64_t __AFSuggestionGenerationManagerOSLogFacility_block_invoke()
{
  AFSuggestionGenerationManagerOSLogFacility_logFacility = os_log_create("com.apple.AutoFillCore", "ProactiveQuickType");

  return MEMORY[0x2821F96F8]();
}