id sa_default_log()
{
  if (sa_default_log_onceToken != -1)
  {
    sa_default_log_cold_1();
  }

  v1 = sa_default_log___logger;

  return v1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23AA4F2C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id SAServerInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284DABAB0];
  v1 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v1 forSelector:sel_dialVoiceCallToPhoneNumber_completionHandler_ argumentIndex:0 ofReply:0];

  v2 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v2 forSelector:sel_dialVoiceCallToPhoneNumber_completionHandler_ argumentIndex:1 ofReply:1];

  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v3 forSelector:sel_requestCrashDetectionAuthorization_ argumentIndex:1 ofReply:1];

  return v0;
}

id SAClientInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284DAAB98];
  v1 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v1 forSelector:sel_updateMostRecentCrashDetectionEvent_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_23AA514F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_23AA51F60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_23AA559E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_23AA56A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_23AA56BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_23AA56FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_23AA571B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_23AA573E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_23AA575E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_23AA577DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_23AA579D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_23AA57B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, void *a19)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void sub_23AA57CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, void *a19)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void sub_23AA57F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

void sub_23AA583AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_23AA58644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_23AA58A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_23AA58C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278B67A40, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t ___ZL44_CLLogObjectForCategory_CSConnection_Defaultv_block_invoke()
{
  logObject_CSConnection_Default = os_log_create("com.apple.anomalydetectiond", "CSConnection");

  return MEMORY[0x2821F96F8]();
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::__shared_ptr_emplace<CLConnectionMessage>::__shared_ptr_emplace[abi:ne200100]<std::string,NSNumber * {__strong},std::allocator<CLConnectionMessage>,0>(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284DA6AA8;
  MEMORY[0x23EE91A30](a1 + 3, a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<CLConnectionMessage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284DA6AA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE91AC0);
}

void *std::__shared_ptr_emplace<CLConnectionMessage>::__shared_ptr_emplace[abi:ne200100]<std::string,NSDictionary<NSString *,objc_object *> * {__strong}&,std::allocator<CLConnectionMessage>,0>(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284DA6AA8;
  MEMORY[0x23EE91A30](a1 + 3, a2, *a3);
  return a1;
}

void *std::__shared_ptr_emplace<CLConnectionMessage>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<CLConnectionMessage>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284DA6AA8;
  MEMORY[0x23EE91A20](a1 + 3);
  return a1;
}

void *std::__shared_ptr_emplace<CLConnectionMessage>::__shared_ptr_emplace[abi:ne200100]<std::string,NSDictionary * {__strong}&,std::allocator<CLConnectionMessage>,0>(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284DA6AA8;
  MEMORY[0x23EE91A30](a1 + 3, a2, *a3);
  return a1;
}

uint64_t __sa_default_log_block_invoke()
{
  sa_default_log___logger = os_log_create("com.apple.SafetyKit", "default");

  return MEMORY[0x2821F96F8]();
}

void authorizationPromptResponseHandler(const void *a1, char a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = +[SAAuthorizationInFlight sharedInstance];
  if ([v4 isInFlight])
  {
    if ((a2 & 3) - 2 < 2)
    {
      v5 = sa_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        authorizationPromptResponseHandler_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
      }

      v13 = [v4 completionHandler];
      v14 = [v4 preflightAuthorizationStatus];
      v15 = [SAError errorWithCode:4];
      (v13)[2](v13, v14, v15);

      [v4 reset];
      goto LABEL_39;
    }

    if ((a2 & 3) != 0)
    {
      v35 = sa_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [v4 toBundleId];
        v46 = 136315394;
        v47 = "void authorizationPromptResponseHandler(CFUserNotificationRef, CFOptionFlags)";
        v48 = 2112;
        v49 = v36;
        _os_log_impl(&dword_23AA4D000, v35, OS_LOG_TYPE_DEFAULT, "%s - Authorization not granted, denying permissions to app, bundleId: %@", &v46, 0x16u);
      }

      v37 = [v4 completionHandler];
      v37[2](v37, 1, 0);

      [v4 reset];
      goto LABEL_33;
    }

    v24 = [v4 fromApp];
    v25 = [v24 bundleId];

    if (!v25)
    {
      goto LABEL_14;
    }

    v26 = sa_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v46 = 136315394;
      v47 = "void authorizationPromptResponseHandler(CFUserNotificationRef, CFOptionFlags)";
      v48 = 2112;
      v49 = v25;
      _os_log_impl(&dword_23AA4D000, v26, OS_LOG_TYPE_DEFAULT, "%s - Authorization granted, revoking permissions from previous app, bundleId: %@", &v46, 0x16u);
    }

    if (![SAAuthorization setAccess:0 forBundleId:v25])
    {
      v40 = sa_default_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        authorizationPromptResponseHandler_cold_3();
      }
    }

    else
    {
LABEL_14:
      v27 = sa_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v4 toBundleId];
        v46 = 136315394;
        v47 = "void authorizationPromptResponseHandler(CFUserNotificationRef, CFOptionFlags)";
        v48 = 2112;
        v49 = v28;
        _os_log_impl(&dword_23AA4D000, v27, OS_LOG_TYPE_DEFAULT, "%s - Authorization granted, granting permissions to app, bundleId: %@", &v46, 0x16u);
      }

      v29 = [v4 toBundleId];
      v30 = [SAAuthorization setAccess:1 forBundleId:v29];

      v31 = sa_default_log();
      v32 = v31;
      if (v30)
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v4 toBundleId];
          v46 = 136315394;
          v47 = "void authorizationPromptResponseHandler(CFUserNotificationRef, CFOptionFlags)";
          v48 = 2112;
          v49 = v33;
          _os_log_impl(&dword_23AA4D000, v32, OS_LOG_TYPE_DEFAULT, "%s - Successfully granted permissions to app, bundleId: %@", &v46, 0x16u);
        }

        v34 = [v4 completionHandler];
        v34[2](v34, 2, 0);

        [v4 reset];
        goto LABEL_32;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        authorizationPromptResponseHandler_cold_4(v4);
      }

      if (!v25)
      {
        goto LABEL_32;
      }

      v38 = [v4 toBundleId];
      v39 = [SAAuthorization setAccess:1 forBundleId:v38];

      if (v39)
      {
        goto LABEL_32;
      }

      v40 = sa_default_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        authorizationPromptResponseHandler_cold_5();
      }
    }

LABEL_32:
LABEL_33:
    if ([v4 isInFlight])
    {
      v41 = sa_default_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        authorizationPromptResponseHandler_cold_6(v4);
      }

      v42 = [v4 completionHandler];
      v43 = [v4 preflightAuthorizationStatus];
      v44 = [SAError errorWithCode:4];
      (v42)[2](v42, v43, v44);

      [v4 reset];
    }

    if (a1)
    {
      CFRelease(a1);
    }

    goto LABEL_39;
  }

  v16 = sa_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    authorizationPromptResponseHandler_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_39:
  v45 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t localMGGetBoolAnswer(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getMGGetBoolAnswerSymbolLoc_ptr;
  v8 = getMGGetBoolAnswerSymbolLoc_ptr;
  if (!getMGGetBoolAnswerSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getMGGetBoolAnswerSymbolLoc_block_invoke;
    v4[3] = &unk_278B680E8;
    v4[4] = &v5;
    __getMGGetBoolAnswerSymbolLoc_block_invoke(v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    localMGGetBoolAnswer_cold_1();
  }

  return v2(a1);
}

void sub_23AA5BAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMGGetBoolAnswerSymbolLoc_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = libMobileGestaltLibraryCore_frameworkLibrary;
  v11 = libMobileGestaltLibraryCore_frameworkLibrary;
  if (!libMobileGestaltLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __libMobileGestaltLibraryCore_block_invoke;
    v5[4] = &unk_278B68128;
    v6 = &v8;
    v7 = v5;
    v12 = xmmword_278B68108;
    v13 = 0;
    v9[3] = _sl_dlopen();
    libMobileGestaltLibraryCore_frameworkLibrary = *(v6[1] + 24);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    __getMGGetBoolAnswerSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "MGGetBoolAnswer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMGGetBoolAnswerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23AA5BC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libMobileGestaltLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libMobileGestaltLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void authorizationPromptResponseHandler_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0(&dword_23AA4D000, a1, a3, "%s - Authorization not in flight, this shouldn't be called.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void authorizationPromptResponseHandler_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0(&dword_23AA4D000, a1, a3, "%s - No button was pressed and the notification timed out.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void authorizationPromptResponseHandler_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_23AA4D000, v0, OS_LOG_TYPE_ERROR, "%s - Failed to revoke permissions from previous app, bundleId: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void authorizationPromptResponseHandler_cold_4(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 toBundleId];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_23AA4D000, v2, v3, "%s - Failed to grant permissions to app, bundleId: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void authorizationPromptResponseHandler_cold_5()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_23AA4D000, v0, OS_LOG_TYPE_FAULT, "%s - Failed to reinstate permissions to app, no app is authorized, bundleId: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void authorizationPromptResponseHandler_cold_6(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 toBundleId];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_23AA4D000, v2, v3, "%s - Failed to successfully apply permissions to app, bundleId: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void localMGGetBoolAnswer_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"_Bool localMGGetBoolAnswer(CFStringRef)"];
  [v0 handleFailureInFunction:v1 file:@"SAGestalt.m" lineNumber:18 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getMGGetBoolAnswerSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *libMobileGestaltLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SAGestalt.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
  CFBundleGetIdentifier(v4);
}

uint64_t CLConnectionClient::sendMessage()
{
  return MEMORY[0x282182D18]();
}

{
  return MEMORY[0x282182D20]();
}

uint64_t CLConnectionMessage::CLConnectionMessage()
{
  return MEMORY[0x282182D48]();
}

{
  return MEMORY[0x282182D50]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}