id getMDItemUniqueIdentifier()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMDItemUniqueIdentifierSymbolLoc_ptr;
  v8 = getMDItemUniqueIdentifierSymbolLoc_ptr;
  if (!getMDItemUniqueIdentifierSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v6[3] = dlsym(v1, "MDItemUniqueIdentifier");
    getMDItemUniqueIdentifierSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    MDItemUniqueIdentifier_cold_1 = getMDItemUniqueIdentifier_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(MDItemUniqueIdentifier_cold_1);
  }

  v2 = *v0;

  return v2;
}

id getMDItemIndexOID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMDItemIndexOIDSymbolLoc_ptr;
  v8 = getMDItemIndexOIDSymbolLoc_ptr;
  if (!getMDItemIndexOIDSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v6[3] = dlsym(v1, "MDItemIndexOID");
    getMDItemIndexOIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    MDItemUniqueIdentifier_cold_1 = getMDItemUniqueIdentifier_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(MDItemUniqueIdentifier_cold_1);
  }

  v2 = *v0;

  return v2;
}

id getMDItemDisplayName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMDItemDisplayNameSymbolLoc_ptr;
  v8 = getMDItemDisplayNameSymbolLoc_ptr;
  if (!getMDItemDisplayNameSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v6[3] = dlsym(v1, "MDItemDisplayName");
    getMDItemDisplayNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    MDItemUniqueIdentifier_cold_1 = getMDItemUniqueIdentifier_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(MDItemUniqueIdentifier_cold_1);
  }

  v2 = *v0;

  return v2;
}

id getAVTStickerConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVTStickerConfigurationClass_softClass;
  v7 = getAVTStickerConfigurationClass_softClass;
  if (!getAVTStickerConfigurationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVTStickerConfigurationClass_block_invoke;
    v3[3] = &unk_1E7412110;
    v3[4] = &v4;
    __getAVTStickerConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1954A2734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCTFontAttributeName()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkCTFontAttributeNameSymbolLoc_ptr;
  v7 = getkCTFontAttributeNameSymbolLoc_ptr;
  if (!getkCTFontAttributeNameSymbolLoc_ptr)
  {
    v1 = CoreTextLibrary();
    v5[3] = dlsym(v1, "kCTFontAttributeName");
    getkCTFontAttributeNameSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    MDItemUniqueIdentifier_cold_1 = getMDItemUniqueIdentifier_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(MDItemUniqueIdentifier_cold_1);
  }

  return *v0;
}

id getCSSearchableItemAttributeSetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCSSearchableItemAttributeSetClass_softClass;
  v7 = getCSSearchableItemAttributeSetClass_softClass;
  if (!getCSSearchableItemAttributeSetClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCSSearchableItemAttributeSetClass_block_invoke;
    v3[3] = &unk_1E7412110;
    v3[4] = &v4;
    __getCSSearchableItemAttributeSetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1954A2908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCRRecentContactsLibraryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCRRecentContactsLibraryClass_softClass;
  v7 = getCRRecentContactsLibraryClass_softClass;
  if (!getCRRecentContactsLibraryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCRRecentContactsLibraryClass_block_invoke;
    v3[3] = &unk_1E7412110;
    v3[4] = &v4;
    __getCRRecentContactsLibraryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1954A29E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_2_4()
{

  return [v0 pointerAtIndex:0];
}

void OUTLINED_FUNCTION_14(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = a1;
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1)
{

  return [v1 isObject:a1 equalToOther:v2];
}

id OUTLINED_FUNCTION_2_10(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_2_11(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_0_13(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);

  return [v2 countByEnumeratingWithState:va objects:va1 count:16];
}

void OUTLINED_FUNCTION_0_14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_15(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1954A42EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 2u);
}

void OUTLINED_FUNCTION_4_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
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

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__22(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getCRRecentsDomainAcceptedIntroductions()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getCRRecentsDomainAcceptedIntroductionsSymbolLoc_ptr;
  v8 = getCRRecentsDomainAcceptedIntroductionsSymbolLoc_ptr;
  if (!getCRRecentsDomainAcceptedIntroductionsSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getCRRecentsDomainAcceptedIntroductionsSymbolLoc_block_invoke;
    v4[3] = &unk_1E7412110;
    v4[4] = &v5;
    __getCRRecentsDomainAcceptedIntroductionsSymbolLoc_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    MDItemUniqueIdentifier_cold_1 = getMDItemUniqueIdentifier_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(MDItemUniqueIdentifier_cold_1);
  }

  v1 = *v0;

  return v1;
}

void *__getCRRecentsDomainAcceptedIntroductionsSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreRecentsLibraryCore_frameworkLibrary_2)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreRecentsLibraryCore_block_invoke_2;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7413EC8;
    v7 = 0;
    CoreRecentsLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v3 = v5[0];
    v2 = CoreRecentsLibraryCore_frameworkLibrary_2;
    if (CoreRecentsLibraryCore_frameworkLibrary_2)
    {
      if (!v5[0])
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

  v2 = CoreRecentsLibraryCore_frameworkLibrary_2;
LABEL_5:
  result = dlsym(v2, "CRRecentsDomainAcceptedIntroductions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRRecentsDomainAcceptedIntroductionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRRecentsDomainAcceptedIntroductionsSymbolLoc_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreRecentsLibraryCore_frameworkLibrary_3)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreRecentsLibraryCore_block_invoke_3;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7414B40;
    v7 = 0;
    CoreRecentsLibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v3 = v5[0];
    v2 = CoreRecentsLibraryCore_frameworkLibrary_3;
    if (CoreRecentsLibraryCore_frameworkLibrary_3)
    {
      if (!v5[0])
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

  v2 = CoreRecentsLibraryCore_frameworkLibrary_3;
LABEL_5:
  result = dlsym(v2, "CRRecentsDomainAcceptedIntroductions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRRecentsDomainAcceptedIntroductionsSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRRecentsDomainAcceptedIntroductionsSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = CoreRecentsLibrary_0();
  result = dlsym(v2, "CRRecentsDomainAcceptedIntroductions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRRecentsDomainAcceptedIntroductionsSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNDonationStoreClass_block_invoke(uint64_t a1)
{
  ContactsDonationLibrary();
  result = objc_getClass("CNDonationStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNDonationStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCNDonationStoreClass_block_invoke_cold_1();
    return ContactsDonationLibrary();
  }

  return result;
}

uint64_t ContactsDonationLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ContactsDonationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ContactsDonationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7417560;
    v5 = 0;
    ContactsDonationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ContactsDonationLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!ContactsDonationLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_1954A8B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t CNIsErrorWithCode(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 code] == a2)
  {
    v4 = [v3 domain];
    v5 = [v4 isEqual:@"CNErrorDomain"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __CNContactKeyVectorPropertyKeysToIndicesByPointer_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
  v1 = +[CN allContactProperties];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __CNContactKeyVectorPropertyKeysToIndicesByPointer_block_invoke_2;
  v2[3] = &__block_descriptor_40_e38_v32__0__CNPropertyDescription_8Q16_B24l;
  v2[4] = Mutable;
  [v1 enumerateObjectsUsingBlock:v2];
  CNContactKeyVectorPropertyKeysToIndicesByPointer_map = CFDictionaryCreateCopy(0, Mutable);
  CFRelease(Mutable);
}

void __CNContactKeyVectorBitBucketsForAllProperties_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = +[CN allContactProperties];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v8;
    do
    {
      v4 = 0;
      do
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = [*(*(&v7 + 1) + 8 * v4) key];
        if (v5)
        {
          if (CNContactKeyVectorPropertyKeysToIndicesByPointer_onceToken != -1)
          {
            [CNContactKeyVector initWithKeys:];
          }

          Value = CFDictionaryGetValue(CNContactKeyVectorPropertyKeysToIndicesByPointer_map, v5);
          if (Value)
          {
            goto LABEL_13;
          }

          if (CNContactKeyVectorPropertyKeysToIndicesByValue_onceToken != -1)
          {
            [CNContactKeyVector initWithKeys:];
          }

          Value = CFDictionaryGetValue(CNContactKeyVectorPropertyKeysToIndicesByValue_map, v5);
          if (Value)
          {
LABEL_13:
            *(&CNContactKeyVectorBitBucketsForAllProperties_referenceBuckets + (((Value - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << ~(Value - 1);
          }
        }

        ++v4;
      }

      while (v2 != v4);
      v2 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v2);
  }
}

void sub_1954AD0A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void __LoadPrivacyAccounting_block_invoke()
{
  LoadPrivacyAccounting_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/PrivacyAccounting.framework/PrivacyAccounting", 1);
  if (!LoadPrivacyAccounting_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadPrivacyAccounting_block_invoke_cold_1();
  }
}

Class initPABridgedTCCIdentity()
{
  if (LoadPrivacyAccounting_loadPredicate != -1)
  {
    initPABridgedTCCIdentity_cold_1();
  }

  result = objc_getClass("PABridgedTCCIdentity");
  classPABridgedTCCIdentity = result;
  getPABridgedTCCIdentityClass[0] = PABridgedTCCIdentityFunction;
  return result;
}

Class initTUSenderIdentity()
{
  if (LoadTelephonyUtilities_loadPredicate != -1)
  {
    initTUSenderIdentity_cold_1();
  }

  result = objc_getClass("TUSenderIdentity");
  classTUSenderIdentity = result;
  _MergedGlobals[0] = TUSenderIdentityFunction;
  return result;
}

Class initTUSenderIdentity_0()
{
  if (LoadTelephonyUtilities_loadPredicate_0 != -1)
  {
    initTUSenderIdentity_cold_1_0();
  }

  result = objc_getClass("TUSenderIdentity");
  classTUSenderIdentity_0 = result;
  getTUSenderIdentityClass = TUSenderIdentityFunction_0;
  return result;
}

void __LoadTelephonyUtilities_block_invoke()
{
  LoadTelephonyUtilities_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/TelephonyUtilities.framework/TelephonyUtilities", 1);
  if (!LoadTelephonyUtilities_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadTelephonyUtilities_block_invoke_cold_1();
  }
}

void __LoadTelephonyUtilities_block_invoke_0()
{
  LoadTelephonyUtilities_frameworkLibrary_0 = dlopen("/System/Library/PrivateFrameworks/TelephonyUtilities.framework/TelephonyUtilities", 1);
  if (!LoadTelephonyUtilities_frameworkLibrary_0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadTelephonyUtilities_block_invoke_cold_1_0();
  }
}

void __CNContactKeyVectorPropertyKeysToIndicesByPointer_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v5 key];
  CFDictionarySetValue(v4, v6, (a3 + 1));
}

Class __getCRRecentContactsLibraryClass_block_invoke(uint64_t a1)
{
  CoreRecentsLibrary();
  result = objc_getClass("CRRecentContactsLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCRRecentContactsLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCRRecentContactsLibraryClass_block_invoke_cold_1();
    return __getCRRecentContactsLibraryClass_block_invoke_0(v3);
  }

  return result;
}

Class __getCRRecentContactsLibraryClass_block_invoke_0(uint64_t a1)
{
  CoreRecentsLibrary_1();
  result = objc_getClass("CRRecentContactsLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCRRecentContactsLibraryClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCRRecentContactsLibraryClass_block_invoke_cold_1();
    return __getCRRecentContactsLibraryClass_block_invoke_1(v3);
  }

  return result;
}

CNReputationCoreRecentsAdapter *__getCRRecentContactsLibraryClass_block_invoke_1(uint64_t a1)
{
  CoreRecentsLibrary_2();
  result = objc_getClass("CRRecentContactsLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCRRecentContactsLibraryClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCRRecentContactsLibraryClass_block_invoke_cold_1();
    return [(CNReputationCoreRecentsAdapter *)v3 init];
  }

  return result;
}

void sub_1954B228C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CoreRecentsLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreRecentsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreRecentsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7412538;
    v5 = 0;
    CoreRecentsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreRecentsLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!CoreRecentsLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t CoreRecentsLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreRecentsLibraryCore_frameworkLibrary_4)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreRecentsLibraryCore_block_invoke_4;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E74160F0;
    v5 = 0;
    CoreRecentsLibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  v0 = CoreRecentsLibraryCore_frameworkLibrary_4;
  v1 = v3[0];
  if (!CoreRecentsLibraryCore_frameworkLibrary_4)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t CoreRecentsLibrary_1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreRecentsLibraryCore_frameworkLibrary_5)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreRecentsLibraryCore_block_invoke_5;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7416F78;
    v5 = 0;
    CoreRecentsLibraryCore_frameworkLibrary_5 = _sl_dlopen();
  }

  v0 = CoreRecentsLibraryCore_frameworkLibrary_5;
  v1 = v3[0];
  if (!CoreRecentsLibraryCore_frameworkLibrary_5)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t CoreRecentsLibrary_2()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreRecentsLibraryCore_frameworkLibrary_6)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreRecentsLibraryCore_block_invoke_6;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E74172C0;
    v5 = 0;
    CoreRecentsLibraryCore_frameworkLibrary_6 = _sl_dlopen();
  }

  v0 = CoreRecentsLibraryCore_frameworkLibrary_6;
  v1 = v3[0];
  if (!CoreRecentsLibraryCore_frameworkLibrary_6)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void ensureFetchRequestHasKeyboardState(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  v4 = [v6 keyboardState];

  if (!v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "keyboardState")}];
    [v6 setKeyboardState:v5];
  }
}

BOOL OUTLINED_FUNCTION_15(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
}

void OUTLINED_FUNCTION_10_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
}

void OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  _Block_object_dispose(va, 8);
}

uint64_t _CNIsObject_CNKeyDescriptorPrivate(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 conformsToProtocol:&unk_1F0998880];
  }

  return v2;
}

BOOL OUTLINED_FUNCTION_5_4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void __CNContactKeyVectorPropertyKeysToIndicesByValue_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], 0);
  v1 = +[CN allContactProperties];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __CNContactKeyVectorPropertyKeysToIndicesByValue_block_invoke_2;
  v2[3] = &__block_descriptor_40_e38_v32__0__CNPropertyDescription_8Q16_B24l;
  v2[4] = Mutable;
  [v1 enumerateObjectsUsingBlock:v2];
  CNContactKeyVectorPropertyKeysToIndicesByValue_map = CFDictionaryCreateCopy(0, Mutable);
  CFRelease(Mutable);
}

void __CNContactKeyVectorPropertyKeysToIndicesByValue_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v5 key];
  CFDictionarySetValue(v4, v6, (a3 + 1));
}

uint64_t __comparePhoneNumberStrings_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789"];
  v1 = comparePhoneNumberStrings_decimalDigits;
  comparePhoneNumberStrings_decimalDigits = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __comparePhoneNumberStrings_block_invoke_2()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"ext"];
  v1 = comparePhoneNumberStrings_extCharacters;
  comparePhoneNumberStrings_extCharacters = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __nextValidChar_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"+() - "];
  v1 = nextValidChar_charactersToSkip;
  nextValidChar_charactersToSkip = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t comparePhoneNumberStrings(void *a1, id a2)
{
  v3 = a1;
  v35 = *MEMORY[0x1E69E9840];
  if ([a1 length] >> 5 >= 0xC35)
  {
    v3 = [v3 _cn_take:100000];
  }

  if ([a2 length] >= 0x186A0)
  {
    a2 = [a2 _cn_take:100000];
  }

  if (comparePhoneNumberStrings_onceTokendecimalDigits != -1)
  {
    comparePhoneNumberStrings_cold_1();
  }

  if (comparePhoneNumberStrings_onceTokenextCharacters != -1)
  {
    comparePhoneNumberStrings_cold_2();
  }

  v4 = [v3 length];
  v5 = [a2 length];
  if (v4 > 0x64)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v3 length];
  }

  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v5 > 0x64)
  {
    v9 = 1;
  }

  else
  {
    v9 = [a2 length];
  }

  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v4 >= 0x65)
  {
    v8 = malloc_type_malloc(2 * [v3 length], 0x1000040BDFB0063uLL);
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  v34 = v12;
  if (v5 >= 0x65)
  {
    v11 = malloc_type_malloc(2 * [a2 length], 0x1000040BDFB0063uLL);
    v33 = v11;
  }

  else
  {
    v33 = 0;
  }

  v13 = [v3 length] - 1;
  [v3 getCharacters:v8 range:{0, objc_msgSend(v3, "length")}];
  v14 = [a2 length] - 1;
  [a2 getCharacters:v11 range:{0, objc_msgSend(a2, "length")}];
  v15 = 0;
  while (2)
  {
    if (nextValidChar_onceToken != -1)
    {
      comparePhoneNumberStrings_cold_3();
    }

    while ((v13 & 0x8000000000000000) == 0)
    {
      v16 = *&v8[2 * v13--];
      if (([nextValidChar_charactersToSkip characterIsMember:v16] & 1) == 0)
      {
        v17 = v16 | 0x10000;
        goto LABEL_28;
      }
    }

    v17 = 0;
LABEL_28:
    if (nextValidChar_onceToken != -1)
    {
      comparePhoneNumberStrings_cold_3();
    }

    do
    {
      if (v14 < 0)
      {
        v19 = 0;
        if ((v17 & 0x10000) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      v18 = *&v11[2 * v14--];
    }

    while (([nextValidChar_charactersToSkip characterIsMember:v18] & 1) != 0);
    if (v17 >= 0x10000 && v15 <= 6)
    {
      if ((v17 & 0x10000) == 0)
      {
        if ([comparePhoneNumberStrings_decimalDigits characterIsMember:v18])
        {
          goto LABEL_41;
        }

LABEL_40:
        if ([comparePhoneNumberStrings_extCharacters characterIsMember:v18])
        {
          goto LABEL_41;
        }

LABEL_63:
        v26 = 0;
        v27 = 0;
        v30 = v34;
        goto LABEL_64;
      }

      if (([comparePhoneNumberStrings_decimalDigits characterIsMember:v17] & 1) == 0 || (objc_msgSend(comparePhoneNumberStrings_decimalDigits, "characterIsMember:", v18) & 1) == 0)
      {
        if ([comparePhoneNumberStrings_extCharacters characterIsMember:v17])
        {
          goto LABEL_40;
        }

        goto LABEL_63;
      }

LABEL_41:
      if (v18 == v17)
      {
        ++v15;
        continue;
      }

      v29 = 1;
      v30 = v34;
      goto LABEL_72;
    }

    break;
  }

  v19 = v18 | 0x10000;
  if ((v17 & 0x10000) != 0)
  {
LABEL_45:
    if (![comparePhoneNumberStrings_decimalDigits characterIsMember:v17])
    {
      goto LABEL_63;
    }
  }

LABEL_46:
  v32 = v19;
  v20 = comparePhoneNumberStrings_decimalDigits;
  v21 = 1;
LABEL_47:
  if (nextValidChar_onceToken != -1)
  {
    comparePhoneNumberStrings_cold_3();
  }

  while ((v13 & 0x8000000000000000) == 0)
  {
    v22 = *&v8[2 * v13--];
    if (([nextValidChar_charactersToSkip characterIsMember:v22] & 1) == 0)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_63;
      }

      v21 = [v20 characterIsMember:v22];
      goto LABEL_47;
    }
  }

  if ((v21 & 1) == 0 || (v32 & 0x10000) != 0 && ![comparePhoneNumberStrings_decimalDigits characterIsMember:v32])
  {
    goto LABEL_63;
  }

  v23 = comparePhoneNumberStrings_decimalDigits;
  v24 = 1;
LABEL_57:
  if (nextValidChar_onceToken != -1)
  {
    comparePhoneNumberStrings_cold_3();
  }

  while ((v14 & 0x8000000000000000) == 0)
  {
    v25 = *&v11[2 * v14--];
    if (([nextValidChar_charactersToSkip characterIsMember:v25] & 1) == 0)
    {
      if ((v24 & 1) == 0)
      {
        goto LABEL_63;
      }

      v24 = [v23 characterIsMember:v25];
      goto LABEL_57;
    }
  }

  v29 = 0;
  v26 = 0;
  v27 = 0;
  v30 = v34;
  if (v24)
  {
LABEL_72:
    if (v15 - 7 < 0xFFFFFFFFFFFFFFFALL)
    {
      v27 = 1;
    }

    else
    {
      v27 = v29;
    }

    v26 = v29;
  }

LABEL_64:
  if (v30)
  {
    free(v30);
  }

  if (v33)
  {
    free(v33);
  }

  if (v27)
  {
    return v26;
  }

  else
  {
    return 2;
  }
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return [v0 pointerAtIndex:1];
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  return [a10 countByEnumeratingWithState:&a23 objects:&a31 count:16];
}

Class __getCRSearchQueryClass_block_invoke(uint64_t a1)
{
  CoreRecentsLibrary();
  result = objc_getClass("CRSearchQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCRSearchQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCRSearchQueryClass_block_invoke_cold_1();
    return __getCRSearchQueryClass_block_invoke_0(v3);
  }

  return result;
}

Class __getCRSearchQueryClass_block_invoke_0(uint64_t a1)
{
  CoreRecentsLibrary_1();
  result = objc_getClass("CRSearchQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCRSearchQueryClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCRSearchQueryClass_block_invoke_cold_1();
    return __getCRSearchQueryClass_block_invoke_1(v3);
  }

  return result;
}

Class __getCRSearchQueryClass_block_invoke_1(uint64_t a1)
{
  CoreRecentsLibrary_2();
  result = objc_getClass("CRSearchQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCRSearchQueryClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCRSearchQueryClass_block_invoke_cold_1();
    return getCRSearchQueryClass();
  }

  return result;
}

id getCRSearchQueryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCRSearchQueryClass_softClass;
  v7 = getCRSearchQueryClass_softClass;
  if (!getCRSearchQueryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCRSearchQueryClass_block_invoke;
    v3[3] = &unk_1E7412110;
    v3[4] = &v4;
    __getCRSearchQueryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1954B8F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCRSearchQueryClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCRSearchQueryClass_softClass_1;
  v7 = getCRSearchQueryClass_softClass_1;
  if (!getCRSearchQueryClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCRSearchQueryClass_block_invoke_1;
    v3[3] = &unk_1E7412110;
    v3[4] = &v4;
    __getCRSearchQueryClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1954B9068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCRSearchPredicateClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCRSearchPredicateClass_softClass;
  v7 = getCRSearchPredicateClass_softClass;
  if (!getCRSearchPredicateClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCRSearchPredicateClass_block_invoke;
    v3[3] = &unk_1E7412110;
    v3[4] = &v4;
    __getCRSearchPredicateClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1954B9148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCRSearchPredicateClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCRSearchPredicateClass_softClass_1;
  v7 = getCRSearchPredicateClass_softClass_1;
  if (!getCRSearchPredicateClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCRSearchPredicateClass_block_invoke_1;
    v3[3] = &unk_1E7412110;
    v3[4] = &v4;
    __getCRSearchPredicateClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1954B9228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCRSearchPredicateClass_block_invoke(uint64_t a1)
{
  CoreRecentsLibrary();
  result = objc_getClass("CRSearchPredicate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCRSearchPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCRSearchPredicateClass_block_invoke_cold_1();
    return __getCRSearchPredicateClass_block_invoke_0(v3);
  }

  return result;
}

Class __getCRSearchPredicateClass_block_invoke_0(uint64_t a1)
{
  CoreRecentsLibrary_1();
  result = objc_getClass("CRSearchPredicate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCRSearchPredicateClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCRSearchPredicateClass_block_invoke_cold_1();
    return __getCRSearchPredicateClass_block_invoke_1(v3);
  }

  return result;
}

CNContact *__getCRSearchPredicateClass_block_invoke_1(uint64_t a1)
{
  CoreRecentsLibrary_2();
  result = objc_getClass("CRSearchPredicate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCRSearchPredicateClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCRSearchPredicateClass_block_invoke_cold_1();
    return [(CNContactProperty *)v3 contact];
  }

  return result;
}

id getCRRecentContactKeyAddress()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getCRRecentContactKeyAddressSymbolLoc_ptr;
  v8 = getCRRecentContactKeyAddressSymbolLoc_ptr;
  if (!getCRRecentContactKeyAddressSymbolLoc_ptr)
  {
    v1 = CoreRecentsLibrary();
    v6[3] = dlsym(v1, "CRRecentContactKeyAddress");
    getCRRecentContactKeyAddressSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    MDItemUniqueIdentifier_cold_1 = getMDItemUniqueIdentifier_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(MDItemUniqueIdentifier_cold_1);
  }

  v2 = *v0;

  return v2;
}

id sContactsPairedWithNoMatchInfo_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 _cn_map:&__block_literal_global_7_2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id getCRRecentContactsErrorDomain()
{
  CRRecentContactsErrorDomainSymbolLoc = getCRRecentContactsErrorDomainSymbolLoc();
  if (CRRecentContactsErrorDomainSymbolLoc)
  {
    v1 = *CRRecentContactsErrorDomainSymbolLoc;

    return v1;
  }

  else
  {
    getMDItemUniqueIdentifier_cold_1();
    return getCRRecentContactsErrorDomainSymbolLoc();
  }
}

uint64_t getCRRecentContactsErrorDomainSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCRRecentContactsErrorDomainSymbolLoc_ptr;
  v6 = getCRRecentContactsErrorDomainSymbolLoc_ptr;
  if (!getCRRecentContactsErrorDomainSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getCRRecentContactsErrorDomainSymbolLoc_block_invoke;
    v2[3] = &unk_1E7412110;
    v2[4] = &v3;
    __getCRRecentContactsErrorDomainSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1954BC07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCRRecentContactsErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreRecentsLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreRecentsLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7413268;
    v7 = 0;
    CoreRecentsLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v5[0];
    v2 = CoreRecentsLibraryCore_frameworkLibrary_0;
    if (CoreRecentsLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
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

  v2 = CoreRecentsLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "CRRecentContactsErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRRecentContactsErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1954BE4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getIMNicknameProviderClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getIMNicknameProviderClass_softClass;
  v6 = getIMNicknameProviderClass_softClass;
  if (!getIMNicknameProviderClass_softClass)
  {
    IMCoreLibraryCore_0();
    v4[3] = objc_getClass("IMNicknameProvider");
    getIMNicknameProviderClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1954BEA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t IMCoreLibraryCore()
{
  if (!IMCoreLibraryCore_frameworkLibrary)
  {
    IMCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return IMCoreLibraryCore_frameworkLibrary;
}

uint64_t IMCoreLibraryCore_0()
{
  if (!IMCoreLibraryCore_frameworkLibrary_0)
  {
    IMCoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  return IMCoreLibraryCore_frameworkLibrary_0;
}

id getIMMeCardSharingStateControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIMMeCardSharingStateControllerClass_softClass;
  v7 = getIMMeCardSharingStateControllerClass_softClass;
  if (!getIMMeCardSharingStateControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIMMeCardSharingStateControllerClass_block_invoke;
    v3[3] = &unk_1E7412110;
    v3[4] = &v4;
    __getIMMeCardSharingStateControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1954BEE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIMMeCardSharingStateControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IMSharedUtilitiesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IMSharedUtilitiesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7416F10;
    v6 = 0;
    IMSharedUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (IMSharedUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("IMMeCardSharingStateController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIMMeCardSharingStateControllerClass_block_invoke_cold_1();
  }

  getIMMeCardSharingStateControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIMNicknameCurrentSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!IMCoreLibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __IMCoreLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7417108;
    v7 = 0;
    IMCoreLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v3 = v5[0];
    v2 = IMCoreLibraryCore_frameworkLibrary_1;
    if (IMCoreLibraryCore_frameworkLibrary_1)
    {
      if (!v5[0])
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

  v2 = IMCoreLibraryCore_frameworkLibrary_1;
LABEL_5:
  result = dlsym(v2, "IMNicknameCurrent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMNicknameCurrentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id OUTLINED_FUNCTION_14_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{

  return a10;
}

uint64_t CommunicationsFilterLibrary()
{
  v0 = CommunicationsFilterLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t CommunicationsFilterLibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = CommunicationsFilterLibraryCore_frameworkLibrary;
  v5 = CommunicationsFilterLibraryCore_frameworkLibrary;
  if (!CommunicationsFilterLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E7417950;
    v7 = *off_1E7417960;
    v8 = 0;
    v3[3] = _sl_dlopen();
    CommunicationsFilterLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1954BFDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{

  return [a16 setObject:v16 forKey:a1];
}

void OUTLINED_FUNCTION_6_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

id OUTLINED_FUNCTION_6_4(uint64_t a1, uint64_t a2, void *a3)
{

  return a3;
}

void sub_1954C010C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t canUnifyLabeledValuePairs(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5 | v6 && ([v5 isEqual:v6] & 1) == 0)
  {
    v9 = [v5 value];
    v10 = [v6 value];
    v8 = [v7 canUnifyValue:v9 withValue:v10];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

id getCRRecentContactKeyKind()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getCRRecentContactKeyKindSymbolLoc_ptr;
  v8 = getCRRecentContactKeyKindSymbolLoc_ptr;
  if (!getCRRecentContactKeyKindSymbolLoc_ptr)
  {
    v1 = CoreRecentsLibrary();
    v6[3] = dlsym(v1, "CRRecentContactKeyKind");
    getCRRecentContactKeyKindSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    MDItemUniqueIdentifier_cold_1 = getMDItemUniqueIdentifier_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(MDItemUniqueIdentifier_cold_1);
  }

  v2 = *v0;

  return v2;
}

void sub_1954C1094(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = objc_allocWithZone(CNContactStore);
  _Block_copy(a2);
  v27 = [v5 init];
  if (!sub_1954C195C(v27))
  {
    if (qword_1EAECB8A8 != -1)
    {
      swift_once();
    }

    v11 = sub_19565D0EC();
    __swift_project_value_buffer(v11, qword_1EAED0960);
    v12 = sub_19565D0CC();
    v13 = sub_19565D67C();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_18;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Will defer duplicates analysis while in process.";
    goto LABEL_17;
  }

  v6 = [v27 currentHistoryToken];
  if (v6)
  {
    v7 = v6;
    v8 = sub_19565CF2C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xC000000000000000;
  }

  v16 = sub_19565CF1C();
  v18 = v17;
  sub_1954C1C4C(v8, v10);
  if (qword_1EAECB868 != -1)
  {
    swift_once();
  }

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  if (ManagedDuplicateStore.willRefresh(token:)(v19))
  {
    v20 = [objc_opt_self() currentEnvironment];
    v21 = [v20 schedulerProvider];

    v22 = [v21 backgroundScheduler];
    swift_unknownObjectRelease();
    v23 = swift_allocObject();
    v23[2] = v27;
    v23[3] = v16;
    v23[4] = v18;
    v23[5] = sub_19563B998;
    v23[6] = v4;
    v23[7] = a1;
    aBlock[4] = sub_19563BB90;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195634310;
    aBlock[3] = &block_descriptor_27;
    v24 = _Block_copy(aBlock);
    v25 = v27;

    [v22 performBlock_];
    _Block_release(v24);

    swift_unknownObjectRelease();
    return;
  }

  if (qword_1EAECB8A8 != -1)
  {
    swift_once();
  }

  v26 = sub_19565D0EC();
  __swift_project_value_buffer(v26, qword_1EAED0960);
  v12 = sub_19565D0CC();
  v13 = sub_19565D68C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "ManagedDuplicates are already up to date. Exiting";
LABEL_17:
    _os_log_impl(&dword_1954A0000, v12, v13, v15, v14, 2u);
    MEMORY[0x19A8B5DB0](v14, -1, -1);
  }

LABEL_18:

  a2[2](a2, 0);
}

uint64_t sub_1954C14B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1954C16E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1954C1AF4(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = objc_allocWithZone(CNContactFetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDFD0);
  v3 = sub_19565D3EC();
  v4 = [v2 initWithKeysToFetch_];

  [v4 setUnifyResults_];
  v12[0] = 0;
  v5 = [a1 contactCountForFetchRequest:v4 error:v12];
  if (v5)
  {
    v6 = v5;
    v7 = v12[0];
    v8 = [v6 integerValue];

    return v8 < 1501;
  }

  else
  {
    v10 = v12[0];
    sub_19565CE6C();

    swift_willThrow();
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1954C1C4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1954C1CA0(char a1)
{
  v2 = sub_1954C1D98();
  if (!*(v2 + 16))
  {

LABEL_9:

    return 0;
  }

  if (a1)
  {
    v3 = 0x54676E69646E6570;
  }

  else
  {
    v3 = 0x54746E6572727563;
  }

  v4 = sub_1954C2328(v3, 0xEC0000006E656B6FLL);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1954C2458(*(v2 + 56) + 32 * v4, v9);

  if (swift_dynamicCast())
  {
    return v8;
  }

  return 0;
}

unint64_t sub_1954C1D98()
{
  v0 = sub_1954C218C();
  if (!v0)
  {
    goto LABEL_11;
  }

  v1 = v0;
  v2 = [v0 persistentStoreCoordinator];

  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = [v2 persistentStores];
  sub_1954C22DC();
  v4 = sub_19565D3FC();

  if (v4 >> 62)
  {
    result = sub_19565D81C();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_10:

LABEL_11:
    if (qword_1EAECB880 != -1)
    {
      swift_once();
    }

    v10 = sub_19565D0EC();
    __swift_project_value_buffer(v10, qword_1EAED0948);
    v11 = sub_19565D0CC();
    v12 = sub_19565D69C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1954A0000, v11, v12, "Missing persistent store when fetching metadata for ManagedDuplicateStore", v13, 2u);
      MEMORY[0x19A8B5DB0](v13, -1, -1);
    }

    v14 = MEMORY[0x1E69E7CC0];

    return sub_1956128FC(v14);
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x19A8B3850](0, v4);
    goto LABEL_8;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_8:
    v7 = v6;

    v8 = [v2 metadataForPersistentStore_];
    v9 = sub_19565D17C();

    return v9;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall ManagedDuplicateStore.willRefresh(token:)(Swift::String token)
{
  object = token._object;
  countAndFlagsBits = token._countAndFlagsBits;
  if (sub_1954C1CA0(0) == token._countAndFlagsBits && v3 == object)
  {
    goto LABEL_3;
  }

  v4 = sub_19565DB1C();

  if (v4)
  {
    return 0;
  }

  if (sub_1954C1CA0(1) == countAndFlagsBits && v6 == object)
  {
LABEL_3:

    return 0;
  }

  v7 = sub_19565DB1C();

  if (v7)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19567B7A0;
  strcpy((inited + 32), "pendingToken");
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = countAndFlagsBits;
  *(inited + 56) = object;

  v9 = sub_1956128FC(inited);
  swift_setDeallocating();
  sub_1954C2698(inited + 32, &unk_1EAECE400);
  if (*(v9 + 16))
  {
    v10 = sub_1954C1D98();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = v10;
    sub_195629B68(v9, sub_1956299BC, 0, isUniquelyReferenced_nonNull_native, &v12);

    sub_195628EA8();
  }

  return 1;
}

void *sub_1954C218C()
{
  v1 = *(v0 + 40);
  [v1 lock];
  v2 = *(v0 + 48);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v2 = sub_1955E506C();
    v4 = *(v0 + 48);
    *(v0 + 48) = v2;
    v5 = v2;
  }

  [v1 unlock];
  return v2;
}

unint64_t sub_1954C22DC()
{
  result = qword_1EAECB818;
  if (!qword_1EAECB818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAECB818);
  }

  return result;
}

unint64_t sub_1954C2328(uint64_t a1, uint64_t a2)
{
  sub_19565DBDC();
  sub_19565D30C();
  v4 = sub_19565DBFC();

  return sub_1954C23A0(a1, a2, v4);
}

unint64_t sub_1954C23A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_19565DB1C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1954C2458(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1954C2658()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1954C2698(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1954C2888(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1954C393C;

  return sub_1954C2940(a1, v4);
}

uint64_t sub_1954C2940(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1954C36BC;

  return v6(a1);
}

uint64_t sub_1954C2A38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1954C393C;

  return sub_1954C2B04(a1, v4, v5, v6);
}

uint64_t sub_1954C2B04(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1954C37F4;

  return v7();
}

uint64_t sub_1954C2BEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1954C393C;

  return sub_1954C2CAC(v2, v3, v4);
}

uint64_t sub_1954C2CAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1954C393C;

  return v6();
}

uint64_t sub_1954C2D94()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1954C37F4;

  return sub_1954C2E40(v2);
}

uint64_t sub_1954C2E40(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x1EEE6DFA0](sub_1954C3104, 0, 0);
}

id sub_1954C2EA8()
{
  v0 = sub_1954C218C();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 newBackgroundContext];
    [v2 setMergePolicy_];
    [v2 setUndoManager_];
  }

  else
  {
    if (qword_1EAECB880 != -1)
    {
      swift_once();
    }

    v3 = sub_19565D0EC();
    __swift_project_value_buffer(v3, qword_1EAED0948);
    v4 = sub_19565D0CC();
    v5 = sub_19565D69C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1954A0000, v4, v5, "Could not make task context ManagedDuplicateStore", v6, 2u);
      MEMORY[0x19A8B5DB0](v6, -1, -1);
    }

    return 0;
  }

  return v2;
}

char *sub_1954C2FD8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDCA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1954C3104()
{
  if (qword_1EAECB868 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1954C31C4();
  v1[2](v1, v2, v3);
  _Block_release(v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1954C31C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19567B7C0;
  sub_1954C3460(0, &qword_1EAECB838);
  *(inited + 32) = sub_19565D66C();
  *(inited + 40) = sub_19565D66C();
  v1 = sub_1954C34A8();
  swift_setDeallocating();
  result = swift_arrayDestroy();
  v3 = *(v1 + 16);
  if (v3)
  {
    if (v3 != 1)
    {
      v4 = *(v1 + 32);

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1954C3460(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1954C34A8()
{
  v0 = sub_1954C2EA8();
  if (v0)
  {
    v1 = v0;
    v2 = sub_19565D27C();
    [v1 setName_];

    v3 = sub_19565D27C();
    [v1 setTransactionAuthor_];

    MEMORY[0x1EEE9AC00](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC40);
    sub_19565D6DC();

    return v10;
  }

  else
  {
    if (qword_1EAECB880 != -1)
    {
      swift_once();
    }

    v6 = sub_19565D0EC();
    __swift_project_value_buffer(v6, qword_1EAED0948);
    v7 = sub_19565D0CC();
    v8 = sub_19565D69C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1954A0000, v7, v8, "Could not count managed duplicates", v9, 2u);
      MEMORY[0x19A8B5DB0](v9, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }
}

char *sub_1954C369C(char *a1, int64_t a2, char a3)
{
  result = sub_1954C2FD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1954C36BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_48Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1954C37F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *CNSetError(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    result = [CNErrorFactory errorWithCode:a2 userInfo:a3];
    *v3 = result;
  }

  return result;
}

uint64_t sub_1954C5450(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1954C5470(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1954C5498()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1954C54E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1954C5544()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1954C5584()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1954C5600()
{
  v1 = (type metadata accessor for BackupRestoreMigrator(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_19565CEFC();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1954C5764()
{
  v1 = (type metadata accessor for BackupRestoreMigrator(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;

  v7 = v1[7];
  v8 = sub_19565CEFC();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1954C58E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_19565CEFC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1954C5994(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_19565CEFC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1954C5A38()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1954C5A80()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1954C5AC0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1954C5B10()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1954C5B60()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1954C5BB8()
{
  v1 = sub_19565D0EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDF00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1954C5D24()
{
  v1 = sub_19565D0EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1954C5EB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CNManagedDuplicate_managedCohorts;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_1954C6058@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duplicates];
  *a2 = result;
  return result;
}

uint64_t sub_1954C60A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___CNManagedCohort_identifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1954C6194()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1954C61F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1954C6238@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duplicateSet];
  *a2 = result;
  return result;
}

uint64_t sub_1954C6288@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1954C1CA0(0);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1954C62E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1954C1CA0(1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1954C6520@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duplicateSet];
  *a2 = result;
  return result;
}

id sub_1954C6570@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isAvailable];
  *a2 = result;
  return result;
}

id sub_1954C65B8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isIgnored];
  *a2 = result;
  return result;
}

id sub_1954C6680@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cohorts];
  *a2 = result;
  return result;
}

id sub_1954C66D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectedContactImage];
  *a2 = result;
  return result;
}

id sub_1954C6720@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectedContactPoster];
  *a2 = result;
  return result;
}

uint64_t sub_1954C6770()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1954C6918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1954C6E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1954C71D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose((v27 - 144), 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

Class __getCSSearchableIndexClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary();
  result = objc_getClass("CSSearchableIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSSearchableIndexClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCSSearchableIndexClass_block_invoke_cold_1();
    return CoreSpotlightLibrary();
  }

  return result;
}

uint64_t CoreSpotlightLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreSpotlightLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7412130;
    v5 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreSpotlightLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!CoreSpotlightLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CoreSpotlightLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getMDItemUniqueIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemUniqueIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemUniqueIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemIndexOIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemIndexOID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemIndexOIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemDisplayNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemDisplayName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemDisplayNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CNGuardOSLog_block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = CNGuardOSLog_cn_once_object_0;
  CNGuardOSLog_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1954D02C0(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1954D01E8);
  }

  _Unwind_Resume(exc_buf);
}

uint64_t __CNGuardOSLog_block_invoke_0()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = CNGuardOSLog_cn_once_object_0_0;
  CNGuardOSLog_cn_once_object_0_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1954D1558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id getCRRecentContactKeyDisplayName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getCRRecentContactKeyDisplayNameSymbolLoc_ptr;
  v8 = getCRRecentContactKeyDisplayNameSymbolLoc_ptr;
  if (!getCRRecentContactKeyDisplayNameSymbolLoc_ptr)
  {
    v1 = CoreRecentsLibrary();
    v6[3] = dlsym(v1, "CRRecentContactKeyDisplayName");
    getCRRecentContactKeyDisplayNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    MDItemUniqueIdentifier_cold_1 = getMDItemUniqueIdentifier_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(MDItemUniqueIdentifier_cold_1);
  }

  v2 = *v0;

  return v2;
}

void sub_1954D30E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1954D33AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CoreRecentsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreRecentsLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCRRecentContactKeyAddressSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreRecentsLibrary();
  result = dlsym(v2, "CRRecentContactKeyAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRRecentContactKeyAddressSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRRecentContactKeyDisplayNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreRecentsLibrary();
  result = dlsym(v2, "CRRecentContactKeyDisplayName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRRecentContactKeyDisplayNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRRecentContactKeyKindSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreRecentsLibrary();
  result = dlsym(v2, "CRRecentContactKeyKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRRecentContactKeyKindSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRAddressKindPhoneNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreRecentsLibrary();
  result = dlsym(v2, "CRAddressKindPhoneNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRAddressKindPhoneNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRAddressKindEmailSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreRecentsLibrary();
  result = dlsym(v2, "CRAddressKindEmail");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRAddressKindEmailSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1954D6000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1954D8F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sMeIdentifiersEither_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x1E69966C0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sMeIdentifiersEither_block_invoke_2;
  v7[3] = &unk_1E74126E0;
  v8 = v2;
  v4 = v2;
  v5 = [v3 eitherWithBlock:v7];

  return v5;
}

void sub_1954DAADC(void *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  objc_begin_catch(a1);
  JUMPOUT(0x1954DAA70);
}

void sub_1954DAE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1954DB380(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a26, 8);
  objc_begin_catch(a1);
  JUMPOUT(0x1954DB2A8);
}

void sub_1954DC9B8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1954DC918);
  }

  _Unwind_Resume(exception_object);
}

void sub_1954DE070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1954DFD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1954E0174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1954E08A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1954E1210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CNGuardOSLog_block_invoke_1()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = CNGuardOSLog_cn_once_object_0_1;
  CNGuardOSLog_cn_once_object_0_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

Class initCoreTelephonyClient()
{
  if (LoadCoreTelephony_loadPredicate != -1)
  {
    initCoreTelephonyClient_cold_1();
  }

  result = objc_getClass("CoreTelephonyClient");
  classCoreTelephonyClient = result;
  getCoreTelephonyClientClass = CoreTelephonyClientFunction;
  return result;
}

void __LoadCoreTelephony_block_invoke()
{
  LoadCoreTelephony_frameworkLibrary = dlopen("/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony", 1);
  if (!LoadCoreTelephony_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadCoreTelephony_block_invoke_cold_1();
  }
}

Class initTUCallProviderManager()
{
  if (LoadTelephonyUtilities_loadPredicate != -1)
  {
    initTUSenderIdentity_cold_1();
  }

  result = objc_getClass("TUCallProviderManager");
  classTUCallProviderManager = result;
  getTUCallProviderManagerClass = TUCallProviderManagerFunction;
  return result;
}

Class __getCHManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CallHistoryLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CallHistoryLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7412AF8;
    v6 = 0;
    CallHistoryLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CallHistoryLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("CHManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCHManagerClass_block_invoke_cold_1();
  }

  getCHManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CallHistoryLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CallHistoryLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t getIMSPIGetMostRecentIMEventForContactHandlesAndLocalLabelIDsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIMSPIGetMostRecentIMEventForContactHandlesAndLocalLabelIDsSymbolLoc_ptr;
  v6 = getIMSPIGetMostRecentIMEventForContactHandlesAndLocalLabelIDsSymbolLoc_ptr;
  if (!getIMSPIGetMostRecentIMEventForContactHandlesAndLocalLabelIDsSymbolLoc_ptr)
  {
    v1 = IMCoreLibrary();
    v4[3] = dlsym(v1, "IMSPIGetMostRecentIMEventForContactHandlesAndLocalLabelIDs");
    getIMSPIGetMostRecentIMEventForContactHandlesAndLocalLabelIDsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1954E1904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __IMCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IMCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getIMSPIGetMostRecentIMEventForContactHandlesAndLocalLabelIDsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMCoreLibrary();
  result = dlsym(v2, "IMSPIGetMostRecentIMEventForContactHandlesAndLocalLabelIDs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMSPIGetMostRecentIMEventForContactHandlesAndLocalLabelIDsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t IMCoreLibrary()
{
  v0 = IMCoreLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

Class initTUCallHistoryManager()
{
  if (LoadTelephonyUtilities_loadPredicate != -1)
  {
    initTUSenderIdentity_cold_1();
  }

  result = objc_getClass("TUCallHistoryManager");
  classTUCallHistoryManager = result;
  getTUCallHistoryManagerClass[0] = TUCallHistoryManagerFunction;
  return result;
}

uint64_t getIMSPIRemapChatsWithLastAddressedLabelIDToNewLabelIDSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIMSPIRemapChatsWithLastAddressedLabelIDToNewLabelIDSymbolLoc_ptr;
  v6 = getIMSPIRemapChatsWithLastAddressedLabelIDToNewLabelIDSymbolLoc_ptr;
  if (!getIMSPIRemapChatsWithLastAddressedLabelIDToNewLabelIDSymbolLoc_ptr)
  {
    v1 = IMCoreLibrary();
    v4[3] = dlsym(v1, "IMSPIRemapChatsWithLastAddressedLabelIDToNewLabelID");
    getIMSPIRemapChatsWithLastAddressedLabelIDToNewLabelIDSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1954E1B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIMSPIRemapChatsWithLastAddressedLabelIDToNewLabelIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMCoreLibrary();
  result = dlsym(v2, "IMSPIRemapChatsWithLastAddressedLabelIDToNewLabelID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMSPIRemapChatsWithLastAddressedLabelIDToNewLabelIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class initTUHandle()
{
  if (LoadTelephonyUtilities_loadPredicate != -1)
  {
    initTUSenderIdentity_cold_1();
  }

  result = objc_getClass("TUHandle");
  classTUHandle = result;
  off_1ED5E70D0[0] = TUHandleFunction;
  return result;
}

id OUTLINED_FUNCTION_7_0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    a2 = a1;
  }

  return a2;
}

CNMutableContact *CLSPersonToCNContactTransform_block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_alloc_init(CNMutableContact);
  v4 = [v2 givenName];
  [(CNMutableContact *)v3 setGivenName:v4];

  v5 = [v2 middleName];
  [(CNMutableContact *)v3 setMiddleName:v5];

  v6 = [v2 familyName];
  [(CNMutableContact *)v3 setFamilyName:v6];

  v7 = [v2 phoneticGivenName];
  [(CNMutableContact *)v3 setPhoneticGivenName:v7];

  v8 = [v2 phoneticMiddleName];
  [(CNMutableContact *)v3 setPhoneticMiddleName:v8];

  v9 = [v2 phoneticFamilyName];
  [(CNMutableContact *)v3 setPhoneticFamilyName:v9];

  v10 = [v2 emailAddress];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v11 = [CNLabeledValue labeledValueWithLabel:@"_$!<Other>!$_" value:v10];
    v14[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [(CNMutableContact *)v3 setEmailAddresses:v12];
  }

  return v3;
}

uint64_t CLSObjectIsPerson_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __CNGuardOSLog_block_invoke_2()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = CNGuardOSLog_cn_once_object_0_2;
  CNGuardOSLog_cn_once_object_0_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __CNGuardOSLog_block_invoke_3()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = CNGuardOSLog_cn_once_object_0_3;
  CNGuardOSLog_cn_once_object_0_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1954EDB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVTAvatarPhysicalizedPoseClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AvatarKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AvatarKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7412C60;
    v6 = 0;
    AvatarKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AvatarKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("AVTAvatarPhysicalizedPose");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAVTAvatarPhysicalizedPoseClass_block_invoke_cold_1();
  }

  getAVTAvatarPhysicalizedPoseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AvatarKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AvatarKitLibraryCore_frameworkLibrary = result;
  return result;
}

id sPostalAddressTransform_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3 && ((objc_opt_isKindOfClass() & 1) == 0 ? (v4 = 0) : (v4 = v3), v5 = v4, v3, v5))
  {
    v6 = objc_alloc_init(CNMutablePostalAddress);
    v7 = [v5 objectForKey:*MEMORY[0x1E69E4A98]];
    [(CNPostalAddress *)v6 setStreet:v7];

    v8 = [v5 objectForKey:*MEMORY[0x1E69E4AA8]];
    [(CNPostalAddress *)v6 setSubLocality:v8];

    v9 = [v5 objectForKey:*MEMORY[0x1E69E4A70]];
    [(CNPostalAddress *)v6 setCity:v9];

    v10 = [v5 objectForKey:*MEMORY[0x1E69E4AA0]];
    [(CNPostalAddress *)v6 setSubAdministrativeArea:v10];

    v11 = [v5 objectForKey:*MEMORY[0x1E69E4A90]];
    [(CNPostalAddress *)v6 setState:v11];

    v12 = [v5 objectForKey:*MEMORY[0x1E69E4A88]];
    [(CNPostalAddress *)v6 setPostalCode:v12];

    v13 = [v5 objectForKey:*MEMORY[0x1E69E4A78]];
    [(CNPostalAddress *)v6 setCountry:v13];

    v14 = [v5 objectForKey:*MEMORY[0x1E69E4A80]];
    [(CNPostalAddress *)v6 setISOCountryCode:v14];

    v15 = [(CNMutablePostalAddress *)v6 copy];
  }

  else
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  return v15;
}

id sSocialProfileTransform_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = +[CNVCardConstantsMapping vCardToCNSocialProfileConstantsMapping];
  v4 = [v2 objectForKeyedSubscript:@"service"];
  v5 = [v3 mappedConstant:v4];

  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:@"service"];
  }

  v6 = +[CN socialProfileFromDictionaryTransform];
  v7 = (v6)[2](v6, v2);

  return v7;
}

id sInstantMessageAddressTransform_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = +[CNVCardConstantsMapping vCardToCNInstantMessageConstantsMapping];
  v4 = [v2 objectForKeyedSubscript:@"service"];
  v5 = [v3 mappedConstant:v4];

  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:@"service"];
  }

  v6 = +[CN instantMessageAddressFromDictionaryTransform];
  v7 = (v6)[2](v6, v2);

  return v7;
}

void __getCSSearchableItemAttributeSetClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CSSearchableItemAttributeSet");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSSearchableItemAttributeSetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCSSearchableItemAttributeSetClass_block_invoke_cold_1();
    CoreSpotlightLibrary_0();
  }
}

void CoreSpotlightLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __CoreSpotlightLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7412C98;
    v3 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!CoreSpotlightLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __CoreSpotlightLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getCSSearchableItemClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary_0();
  result = objc_getClass("CSSearchableItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSSearchableItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCSSearchableItemClass_block_invoke_cold_1();
    return +[(CNContactFetchExecutor *)v3];
  }

  return result;
}

uint64_t CNLinkedOnOrAfter()
{
  if (__CNLinkedOnOrAfterSimulateLinkedBefore)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x1EEDB8250]();
  }
}

void sub_1954F1400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1954F487C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1954F6438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1954F6624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1954F6C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 216), 8);
  _Block_object_dispose((v36 - 184), 8);
  _Block_object_dispose((v36 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1954FAEB0(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1954FB1DC(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1954FDF64(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1954FE4E4(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1954FE850(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1954FEBBC(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1954FEE14(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1954FF920(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_19550063C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195500CD8(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_195501174(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_195501574(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

Class initDADConnection()
{
  if (LoadDataAccessExpress_loadPredicate != -1)
  {
    initDADConnection_cold_1();
  }

  result = objc_getClass("DADConnection");
  classDADConnection = result;
  getDADConnectionClass = DADConnectionFunction;
  return result;
}

void __LoadDataAccessExpress_block_invoke()
{
  LoadDataAccessExpress_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/DataAccessExpress.framework/DataAccessExpress", 1);
  if (!LoadDataAccessExpress_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadDataAccessExpress_block_invoke_cold_1();
  }
}

id meCardSharingLogger()
{
  if (meCardSharingLogger_cn_once_token_0 != -1)
  {
    meCardSharingLogger_cold_1();
  }

  v1 = meCardSharingLogger_cn_once_object_0;

  return v1;
}

uint64_t __meCardSharingLogger_block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "contactimagesharing");
  v1 = meCardSharingLogger_cn_once_object_0;
  meCardSharingLogger_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __CoreRecentsLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  CoreRecentsLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void __notificationHandler(uint64_t a1, void *a2)
{
  objc_opt_class();
  v3 = a2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;

  v5 = v6;
  if (v6)
  {
    [v6 _notifyObserver];
    v5 = v6;
  }
}

void *__getCRAcceptedIntroductionsDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreRecentsLibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreRecentsLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E74132B8;
    v7 = 0;
    CoreRecentsLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v3 = v5[0];
    v2 = CoreRecentsLibraryCore_frameworkLibrary_1;
    if (CoreRecentsLibraryCore_frameworkLibrary_1)
    {
      if (!v5[0])
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

  v2 = CoreRecentsLibraryCore_frameworkLibrary_1;
LABEL_5:
  result = dlsym(v2, "CRAcceptedIntroductionsDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRAcceptedIntroductionsDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreRecentsLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  CoreRecentsLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void sub_19550FE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a14, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

BOOL sIsCurated_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 storeIdentifier];
  v3 = v2 == 0;

  return v3;
}

void sub_195511EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195512604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___contactTestMatchingLabeledValueID_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) CNValueForContact:a2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___contactTestMatchingLabeledValueID_block_invoke_2;
  v6[3] = &unk_1E7413588;
  v7 = *(a1 + 40);
  v4 = [v3 _cn_any:v6];

  return v4;
}

uint64_t ___contactTestMatchingLabeledValueID_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t ___contactTestMatchingValue_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) CNValueForContact:a2];
  v4 = [v3 isEqual:*(a1 + 40)];

  return v4;
}

id CNBridgeABCFResultAndErrorFromBlock(void *a1, uint64_t a2)
{
  cf = 0;
  if (a1)
  {
    p_cf = &cf;
  }

  else
  {
    p_cf = 0;
  }

  v5 = (*(a2 + 16))(a2, p_cf);
  if (v5)
  {
    v5 = CFAutorelease(v5);
  }

  v6 = v5;
  v7 = v6;
  if (a1)
  {
    if (!v6)
    {
      *a1 = [CNErrorFactory errorForiOSABError:cf];
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return v7;
}

uint64_t CNBridgeBoolResultAndErrorFromBlock(void *a1, uint64_t a2)
{
  cf = 0;
  if (a1)
  {
    p_cf = &cf;
  }

  else
  {
    p_cf = 0;
  }

  v5 = (*(a2 + 16))(a2, p_cf);
  v6 = v5;
  if (a1)
  {
    if ((v5 & 1) == 0)
    {
      *a1 = [CNErrorFactory errorForiOSABError:cf];
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return v6;
}

void sub_195514E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195517378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _block_invoke()
{
  v0 = ABRecordGetIntValue() != 0;
  IntValue = ABRecordGetIntValue();
  if (IntValue)
  {
    v2 = v0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2 ^ 1u;
  if (v0 && IntValue == 0)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

CFComparisonResult _block_invoke_2(int a1, ABRecordRef record, const void *a3)
{
  v4 = *MEMORY[0x1E698A2F8];
  v5 = ABRecordCopyValue(record, *MEMORY[0x1E698A2F8]);
  v6 = ABRecordCopyValue(a3, v4);
  v7 = CFDateCompare(v5, v6, 0);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

void sub_19551E998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
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

void sub_195520238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1955204E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void __PreferencesChanged(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [v2 observerCountPerKey];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v2 willChangeValueForKey:*(*(&v21 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  [v2 flushCache];
  v9 = ABPeoplePickerPrefs();
  CFPreferencesAppSynchronize(v9);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v2 observerCountPerKey];
  v11 = [v10 allKeys];

  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v2 didChangeValueForKey:*(*(&v17 + 1) + 8 * v15++)];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  [v16 postNotificationName:@"CNContactsUserDefaultsDidChangeNotification" object:v2];
}

Class initECEmailAddress()
{
  if (LoadEmailCore_loadPredicate != -1)
  {
    initECEmailAddress_cold_1();
  }

  result = objc_getClass("ECEmailAddress");
  classECEmailAddress = result;
  getECEmailAddressClass[0] = ECEmailAddressFunction;
  return result;
}

void __LoadEmailCore_block_invoke()
{
  LoadEmailCore_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/EmailCore.framework/EmailCore", 1);
  if (!LoadEmailCore_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadEmailCore_block_invoke_cold_1();
  }
}

void sub_195523FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

CNAccount *sABCDContainerToCNAccount_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CNAccount alloc];
  v4 = [v2 identifier];
  v5 = [v2 identifier];

  v6 = [v5 componentsSeparatedByString:@":"];
  v7 = [v6 firstObject];
  v8 = [(CNAccount *)v3 initWithIdentifier:v4 externalIdentifier:v7];

  return v8;
}

void sub_195526CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getABSPublicABCNCompatibilityClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getABSPublicABCNCompatibilityClass_softClass;
  v7 = getABSPublicABCNCompatibilityClass_softClass;
  if (!getABSPublicABCNCompatibilityClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getABSPublicABCNCompatibilityClass_block_invoke;
    v3[3] = &unk_1E7412110;
    v3[4] = &v4;
    __getABSPublicABCNCompatibilityClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19552746C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getABSPublicABCNCompatibilityClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AddressBookLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AddressBookLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7413C48;
    v6 = 0;
    AddressBookLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AddressBookLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("ABSPublicABCNCompatibility");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getABSPublicABCNCompatibilityClass_block_invoke_cold_1();
  }

  getABSPublicABCNCompatibilityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AddressBookLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AddressBookLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __CNGuardOSLog_block_invoke_4()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = CNGuardOSLog_cn_once_object_0_4;
  CNGuardOSLog_cn_once_object_0_4 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_19552FFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CoreRecentsLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  CoreRecentsLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void sub_19553A774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19553E418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose((v33 - 160), 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void populateMatchInfoFromMap_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = populateMatchInfoFromMap_block_invoke_2;
    v9[3] = &unk_1E74140E0;
    v10 = v7;
    v11 = v6;
    [a4 enumerateObjectsUsingBlock:v9];
  }
}

void populateMatchInfoFromMap_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E698A438];
  v4 = a2;
  v11 = ABRecordCopyValue(v4, v3);
  RecordID = ABRecordGetRecordID(v4);
  v6 = NSMapGet(*(a1 + 32), RecordID);

  v7 = [*(a1 + 40) objectForKey:v11];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [*(a1 + 40) setObject:v7 forKey:v11];
  }

  v8 = *MEMORY[0x1E698A0F0];
  v9 = [v7 objectForKey:*MEMORY[0x1E698A0F0]];
  if (v9)
  {
    v10 = v9;
    [v9 unionSet:v6];
  }

  else
  {
    v10 = [v6 mutableCopy];
    [v7 setObject:v10 forKey:v8];
  }
}

void sWarnIgnoredHandle_block_invoke_3(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[CNContact os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1954A0000, v3, OS_LOG_TYPE_INFO, "Ignoring handle for batch fetch: %@", &v4, 0xCu);
  }
}

void sub_195540088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195540418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19554075C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195540E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_195541120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_195541604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_195541DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1955427F4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_195542B50(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_195542EA8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19554302C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195543D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_195545628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_195545904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1955466FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_195546CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1955470CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195547438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_195547744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_195547B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195547E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195548350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1955493A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_195549928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19554A2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
}

void OUTLINED_FUNCTION_20(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint8_t buf)
{

  _os_log_error_impl(a1, v21, OS_LOG_TYPE_ERROR, a4, &buf, 0x20u);
}

void OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  _Block_object_dispose(va, 8);
}

void OUTLINED_FUNCTION_38(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

BOOL OUTLINED_FUNCTION_49(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_51(void *a1, const char *a2)
{

  return [a1 setObject:v3 forKey:v2];
}

BOOL OUTLINED_FUNCTION_52(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  return [v33 countByEnumeratingWithState:&a33 objects:v34 - 224 count:16];
}

uint64_t OUTLINED_FUNCTION_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{

  return [v60 countByEnumeratingWithState:&a19 objects:&a60 count:16];
}

void OUTLINED_FUNCTION_70()
{

  _Block_object_dispose((v0 - 80), 8);
}

uint64_t __CoreRecentsLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  CoreRecentsLibraryCore_frameworkLibrary_3 = result;
  return result;
}

void sub_195550104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCTFontAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "kCTFontAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreTextLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreTextLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreTextLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7414C08;
    v5 = 0;
    CoreTextLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreTextLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!CoreTextLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CoreTextLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreTextLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCTFontCreateCopyWithSymbolicTraitsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontCreateCopyWithSymbolicTraits");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontCreateCopyWithSymbolicTraitsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFontCreateUIFontForLanguageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontCreateUIFontForLanguage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontCreateUIFontForLanguageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sTrustIfNonEmptyArray_block_invoke()
{
  v0 = (*(*MEMORY[0x1E6996530] + 16))();
  v1 = MEMORY[0x1E6996720];
  if (v0)
  {
    v2 = [CNErrorFactory errorWithCode:200 userInfo:0];
    v3 = [v1 futureWithError:v2];
  }

  else
  {
    v3 = [MEMORY[0x1E6996720] futureWithResult:&unk_1F0987168];
  }

  return v3;
}

uint64_t sContactHasData_block_invoke(uint64_t a1, void *a2)
{
  v2 = sContactHasData_block_invoke_cn_once_token_3;
  v3 = a2;
  if (v2 != -1)
  {
    sContactHasData_block_invoke_cold_1();
  }

  v4 = [v3 isEqualIgnoringIdentifiers:sContactHasData_block_invoke_cn_once_object_3];

  return v4 ^ 1u;
}

uint64_t sContactHasData_block_invoke_2()
{
  v0 = objc_alloc_init(CNContact);
  v1 = sContactHasData_block_invoke_cn_once_object_3;
  sContactHasData_block_invoke_cn_once_object_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_195554B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195554D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCSSearchQueryContextClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CSSearchQueryContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSSearchQueryContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCSSearchQueryContextClass_block_invoke_cold_1();
    CoreSpotlightLibrary_1();
  }
}

void CoreSpotlightLibrary_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __CoreSpotlightLibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7414D80;
    v3 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!CoreSpotlightLibraryCore_frameworkLibrary_1)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __CoreSpotlightLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary_1 = result;
  return result;
}

CNContactStoreContactsFetchResult *__getCSSearchQueryClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary_1();
  result = objc_getClass("CSSearchQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSSearchQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCSSearchQueryClass_block_invoke_cold_1();
    return [(CNContactStoreContactsFetchResult *)v3 initWithContacts:v4, v5];
  }

  return result;
}

id sPhoneHandle_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 formattedStringValue];

  return v3;
}

void sub_19555A004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19555A298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19555A704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19555A970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19555ACBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19555B030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19555B37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19555B6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19555B938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19555BC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19555C760(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_begin_catch(a1);
  JUMPOUT(0x19555C6E0);
}

void sub_19555CB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19555DAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19555DD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19555E124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19555E3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19555E65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19555E8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19555EB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19555F1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_19555F5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19555F908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19555FDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19555FFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1955602B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195560594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_195560818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_195560C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_195560EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1955612A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_195563AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_195564124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_195564554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19556498C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_195564E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_195565308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRSPosterArchiverClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PosterBoardServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7415A20;
    v6 = 0;
    PosterBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PosterBoardServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("PRSPosterArchiver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRSPosterArchiverClass_block_invoke_cold_1();
  }

  getPRSPosterArchiverClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PosterBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PosterBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_195566BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_195567EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195567FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195568194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1955683D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CNChangesNotifierCFNotificationCenterCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = a2;
  if (([v8 forwardsSelfGeneratedDistributedSaveNotifications] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_msgSend(ABGetProcessDistributedNotificationIdentifier(), "isEqualToString:", a4) & 1) == 0)
  {
    [v8 receiveExternalNotificationName:a3];
  }

  objc_autoreleasePoolPop(v7);
}

Class initAVTAvatarRecordRendering()
{
  if (LoadAvatarPersistence_loadPredicate != -1)
  {
    initAVTAvatarRecordRendering_cold_1();
  }

  result = objc_getClass("AVTAvatarRecordRendering");
  classAVTAvatarRecordRendering = result;
  getAVTAvatarRecordRenderingClass = AVTAvatarRecordRenderingFunction;
  return result;
}

void __LoadAvatarPersistence_block_invoke()
{
  LoadAvatarPersistence_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/AvatarPersistence.framework/AvatarPersistence", 1);
  if (!LoadAvatarPersistence_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadAvatarPersistence_block_invoke_cold_1();
  }
}

Class initAVTAvatarRecordSerializer()
{
  if (LoadAvatarPersistence_loadPredicate != -1)
  {
    initAVTAvatarRecordRendering_cold_1();
  }

  result = objc_getClass("AVTAvatarRecordSerializer");
  classAVTAvatarRecordSerializer = result;
  getAVTAvatarRecordSerializerClass = AVTAvatarRecordSerializerFunction;
  return result;
}

Class __getAVTAvatarPhysicalizedPoseClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AvatarKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AvatarKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7415C98;
    v6 = 0;
    AvatarKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (AvatarKitLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
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
  result = objc_getClass("AVTAvatarPhysicalizedPose");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAVTAvatarPhysicalizedPoseClass_block_invoke_cold_1();
  }

  getAVTAvatarPhysicalizedPoseClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AvatarKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AvatarKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

id sPostalAddressTransform_block_invoke_0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [v5 street];
  [v6 _cn_setNonNilObject:v7 forKey:*MEMORY[0x1E69E4A98]];

  v8 = [v5 subLocality];
  [v6 _cn_setNonNilObject:v8 forKey:*MEMORY[0x1E69E4AA8]];

  v9 = [v5 city];
  [v6 _cn_setNonNilObject:v9 forKey:*MEMORY[0x1E69E4A70]];

  v10 = [v5 subAdministrativeArea];
  [v6 _cn_setNonNilObject:v10 forKey:*MEMORY[0x1E69E4AA0]];

  v11 = [v5 state];
  [v6 _cn_setNonNilObject:v11 forKey:*MEMORY[0x1E69E4A90]];

  v12 = [v5 postalCode];
  [v6 _cn_setNonNilObject:v12 forKey:*MEMORY[0x1E69E4A88]];

  v13 = [v5 country];
  [v6 _cn_setNonNilObject:v13 forKey:*MEMORY[0x1E69E4A78]];

  v14 = [v5 ISOCountryCode];
  [v6 _cn_setNonNilObject:v14 forKey:*MEMORY[0x1E69E4A80]];

  return v6;
}

void *sActivityAlertKeyTransform_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([@"callAlert" isEqualToString:v2])
  {
    v3 = *MEMORY[0x1E69E48B8];
  }

  else if ([@"textAlert" isEqualToString:v2])
  {
    v3 = *MEMORY[0x1E69E48D0];
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

id sActivityAlertValueTransform_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [v2 sound];
  [v3 _cn_setNonNilObject:v4 forKey:*MEMORY[0x1E69E48C8]];

  v5 = [v2 vibration];
  [v3 _cn_setNonNilObject:v5 forKey:*MEMORY[0x1E69E48D8]];

  if ([v2 ignoreMute])
  {
    [v3 _cn_setNonNilObject:@"YES" forKey:*MEMORY[0x1E69E48C0]];
  }

  v6 = [v2 userInfo];
  if (v6)
  {
    [v3 addEntriesFromDictionary:v6];
  }

  return v3;
}

void sub_195573654(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_19557400C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

uint64_t __CNGuardOSLog_block_invoke_5()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = CNGuardOSLog_cn_once_object_0_5;
  CNGuardOSLog_cn_once_object_0_5 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

Class initAVTAvatarRecordSerializer_0()
{
  if (LoadAvatarPersistence_loadPredicate_0 != -1)
  {
    initAVTAvatarRecordSerializer_cold_1();
  }

  result = objc_getClass("AVTAvatarRecordSerializer");
  classAVTAvatarRecordSerializer_0 = result;
  getAVTAvatarRecordSerializerClass_0 = AVTAvatarRecordSerializerFunction_0;
  return result;
}

void __LoadAvatarPersistence_block_invoke_0()
{
  LoadAvatarPersistence_frameworkLibrary_0 = dlopen("/System/Library/PrivateFrameworks/AvatarPersistence.framework/AvatarPersistence", 1);
  if (!LoadAvatarPersistence_frameworkLibrary_0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadAvatarPersistence_block_invoke_cold_1_0();
  }
}

Class __getAVTStickerConfigurationClass_block_invoke(uint64_t a1)
{
  AvatarKitLibrary();
  result = objc_getClass("AVTStickerConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTStickerConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAVTStickerConfigurationClass_block_invoke_cold_1();
    return AvatarKitLibrary();
  }

  return result;
}

uint64_t AvatarKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AvatarKitLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AvatarKitLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7415EB0;
    v5 = 0;
    AvatarKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = AvatarKitLibraryCore_frameworkLibrary_1;
  v1 = v3[0];
  if (!AvatarKitLibraryCore_frameworkLibrary_1)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AvatarKitLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  AvatarKitLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void *__getkAVTStickerPackPosesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AvatarKitLibrary();
  result = dlsym(v2, "kAVTStickerPackPoses");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAVTStickerPackPosesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t initAVTUIShowPrereleaseStickerPack_once()
{
  if (LoadAvatarPersistence_loadPredicate_0 != -1)
  {
    initAVTAvatarRecordSerializer_cold_1();
  }

  v0 = dlsym(LoadAvatarPersistence_frameworkLibrary_0, "AVTUIShowPrereleaseStickerPack_once");
  softLinkAVTUIShowPrereleaseStickerPack_once[0] = v0;

  return v0();
}

void *__getkAVTStickerPackPosesPrereleaseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AvatarKitLibrary();
  result = dlsym(v2, "kAVTStickerPackPosesPrerelease");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAVTStickerPackPosesPrereleaseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class initAVTPAvatarStore()
{
  if (LoadAvatarPersistence_loadPredicate_0 != -1)
  {
    initAVTAvatarRecordSerializer_cold_1();
  }

  result = objc_getClass("AVTPAvatarStore");
  classAVTPAvatarStore = result;
  getAVTPAvatarStoreClass = AVTPAvatarStoreFunction;
  return result;
}

Class initAVTAvatarFetchRequest()
{
  if (LoadAvatarPersistence_loadPredicate_0 != -1)
  {
    initAVTAvatarRecordSerializer_cold_1();
  }

  result = objc_getClass("AVTAvatarFetchRequest");
  classAVTAvatarFetchRequest = result;
  getAVTAvatarFetchRequestClass = AVTAvatarFetchRequestFunction;
  return result;
}

id background_color_os_log()
{
  if (background_color_os_log_cn_once_token_0 != -1)
  {
    background_color_os_log_cold_1();
  }

  v1 = background_color_os_log_cn_once_object_0;

  return v1;
}

uint64_t __background_color_os_log_block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "backgroundColor");
  v1 = background_color_os_log_cn_once_object_0;
  background_color_os_log_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __CNGuardOSLog_block_invoke_6()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = CNGuardOSLog_cn_once_object_0_6;
  CNGuardOSLog_cn_once_object_0_6 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1955795DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19557F0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CNMutableContact *CNMutableContactFromRecentContact(void *a1, void *a2)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v29 = a2;
  v4 = [v3 recentsDomain];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "recentID")}];
  v6 = [v5 stringValue];
  v30 = [CNCoreRecentsContactStore internalIdentifierForDomain:v4 recentsIdentifier:v6];

  if (v30)
  {
    v7 = [(CNContact *)[CNMutableContact alloc] initWithIdentifier:v30];
  }

  else
  {
    v7 = objc_alloc_init(CNMutableContact);
  }

  v8 = v7;
  v9 = [MEMORY[0x1E695DF90] dictionary];
  [v9 setObject:v4 forKeyedSubscript:CNRecentContactDomainKey];
  [v9 setObject:v5 forKeyedSubscript:CNRecentContactRecentIDKey];
  if (v29)
  {
    [v9 addEntriesFromDictionary:?];
  }

  [(CNMutableContact *)v8 setStoreInfo:v9];
  v10 = +[CNCoreRecentsContactStore storeIdentifier];
  [(CNMutableContact *)v8 setStoreIdentifier:v10];

  v11 = [v3 displayName];
  [(CNMutableContact *)v8 setGivenName:v11];

  v12 = [v3 address];
  if (!v12)
  {
    v23 = 0;
    v21 = 0;
    goto LABEL_23;
  }

  v13 = [v3 kind];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v14 = getCRAddressKindPhoneNumberSymbolLoc_ptr_0;
  v34 = getCRAddressKindPhoneNumberSymbolLoc_ptr_0;
  if (!getCRAddressKindPhoneNumberSymbolLoc_ptr_0)
  {
    v15 = CoreRecentsLibrary_0();
    v32[3] = dlsym(v15, "CRAddressKindPhoneNumber");
    getCRAddressKindPhoneNumberSymbolLoc_ptr_0 = v32[3];
    v14 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v14)
  {
    goto LABEL_28;
  }

  v16 = [v13 isEqualToString:*v14];

  v17 = [v3 kind];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v18 = getCRAddressKindEmailSymbolLoc_ptr_0;
  v34 = getCRAddressKindEmailSymbolLoc_ptr_0;
  if (!getCRAddressKindEmailSymbolLoc_ptr_0)
  {
    v19 = CoreRecentsLibrary_0();
    v32[3] = dlsym(v19, "CRAddressKindEmail");
    getCRAddressKindEmailSymbolLoc_ptr_0 = v32[3];
    v18 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v18)
  {
LABEL_28:
    getMDItemUniqueIdentifier_cold_1();
    __break(1u);
  }

  v20 = [v17 isEqualToString:*v18];

  if (v16)
  {
    v21 = [CNPhoneNumber phoneNumberWithStringValue:v12];
    if (v21)
    {
      v22 = [CNLabeledValue labeledValueWithLabel:0 value:v21];
      v23 = v22;
      if (!v22)
      {
        if (!v20)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      v36[0] = v22;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      [(CNMutableContact *)v8 setPhoneNumbers:v24];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
    v21 = 0;
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  v25 = [CNLabeledValue labeledValueWithLabel:0 value:v12];
  v26 = v25;
  if (v25)
  {
    v35 = v25;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    [(CNMutableContact *)v8 setEmailAddresses:v27];
  }

LABEL_23:

  return v8;
}

void sub_19557F954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CNContactFromRecentContact(void *a1, void *a2)
{
  v2 = CNMutableContactFromRecentContact(a1, a2);
  v3 = [v2 freeze];

  return v3;
}

uint64_t __CoreRecentsLibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  CoreRecentsLibraryCore_frameworkLibrary_4 = result;
  return result;
}

void *__getCRAddressKindPhoneNumberSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreRecentsLibrary_0();
  result = dlsym(v2, "CRAddressKindPhoneNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRAddressKindPhoneNumberSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRAddressKindEmailSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreRecentsLibrary_0();
  result = dlsym(v2, "CRAddressKindEmail");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRAddressKindEmailSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_195582DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195587354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sIsMultiValueContactProperty_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CN contactPropertiesByKey];
  v4 = [v3 objectForKeyedSubscript:v2];

  v5 = [v4 isMultiValue];
  return v5;
}

void sub_19558D1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19558F4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195594218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sPreferredForImage_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 isPreferredForImage];
  v6 = [v4 isPreferredForImage];

  if (v6 | v5 ^ 1)
  {
    return v6 & (v5 ^ 1u);
  }

  else
  {
    return -1;
  }
}

uint64_t __CNGuardOSLog_block_invoke_7()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = CNGuardOSLog_cn_once_object_0_7;
  CNGuardOSLog_cn_once_object_0_7 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_195594DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLNSpotlightAppEntityMapperClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!LinkServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __LinkServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7416B60;
    v6 = 0;
    LinkServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (LinkServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("LNSpotlightAppEntityMapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLNSpotlightAppEntityMapperClass_block_invoke_cold_1();
  }

  getLNSpotlightAppEntityMapperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __LinkServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  LinkServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_195595DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_195596308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19559A468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getIMNicknameControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIMNicknameControllerClass_softClass;
  v7 = getIMNicknameControllerClass_softClass;
  if (!getIMNicknameControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIMNicknameControllerClass_block_invoke;
    v3[3] = &unk_1E7412110;
    v3[4] = &v4;
    __getIMNicknameControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19559AE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIMNicknameProviderClass_block_invoke(uint64_t a1)
{
  IMCoreLibraryCore_0();
  result = objc_getClass("IMNicknameProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMNicknameProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IMCoreLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  IMCoreLibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t __IMSharedUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IMSharedUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getIMNicknameControllerClass_block_invoke(uint64_t a1)
{
  if (!IMCoreLibraryCore_0())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("IMNicknameController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIMNicknameControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = __getIMNicknameControllerClass_block_invoke_cold_1();
    return +[(CNContactPosterDeleteRequest *)v4];
  }

  return result;
}

void sub_19559CF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19559DCD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CoreRecentsLibraryCore_block_invoke_5()
{
  result = _sl_dlopen();
  CoreRecentsLibraryCore_frameworkLibrary_5 = result;
  return result;
}

void *__getCRRecentContactKeyAddressSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreRecentsLibrary_1();
  result = dlsym(v2, "CRRecentContactKeyAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRRecentContactKeyAddressSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRRecentsDomainCalendarSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreRecentsLibrary_1();
  result = dlsym(v2, "CRRecentsDomainCalendar");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRRecentsDomainCalendarSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRRecentsDomainMailSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreRecentsLibrary_1();
  result = dlsym(v2, "CRRecentsDomainMail");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRRecentsDomainMailSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRRecentsDomainMessagesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreRecentsLibrary_1();
  result = dlsym(v2, "CRRecentsDomainMessages");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRRecentsDomainMessagesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sOrganizationWithPerson_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 contact];
  v4 = [v3 contactType];

  if (v4 == 1)
  {
    v5 = [v2 contact];
    v6 = [v5 organizationName];

    v7 = +[CNContactVCardSummary defaultNameFormatter];
    v8 = [v2 contact];
    v9 = [v7 stringFromContact:v8];

    if (((*(*MEMORY[0x1E6996568] + 16))() & 1) == 0 && [(__CFString *)v9 isEqualToString:v6])
    {

      v9 = &stru_1F094DAB0;
    }

    v10 = [MEMORY[0x1E69967A8] pairWithFirst:v6 second:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sPersonWithOrganization_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNContactVCardSummary defaultNameFormatter];
  v4 = [v2 contact];
  v5 = [v3 stringFromContact:v4];

  v6 = [v2 contact];

  v7 = [v6 organizationName];

  if (((*(*MEMORY[0x1E6996568] + 16))() & 1) == 0 && [(__CFString *)v7 isEqualToString:v5])
  {

    v7 = &stru_1F094DAB0;
  }

  v8 = [MEMORY[0x1E69967A8] pairWithFirst:v5 second:v7];

  return v8;
}

uint64_t __CNGuardOSLog_block_invoke_8()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = CNGuardOSLog_cn_once_object_0_8;
  CNGuardOSLog_cn_once_object_0_8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1955A3B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1955A3EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _block_invoke_2_0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [CNPhoneNumber phoneNumberWithStringValue:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id _block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 stringValue];

  return v6;
}

CNSocialProfile *_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [CNSocialProfile alloc];
  v7 = [v5 objectForKey:@"urlString"];
  v8 = [v5 objectForKey:@"username"];
  v9 = [v5 objectForKey:@"userIdentifier"];
  v10 = [v5 objectForKey:@"service"];
  v11 = [v5 objectForKey:@"displayname"];
  v12 = [v5 objectForKey:@"teamIdentifier"];
  v13 = [v5 objectForKey:@"bundleIdentifiers"];
  v14 = [(CNSocialProfile *)v6 initWithUrlString:v7 username:v8 userIdentifier:v9 service:v10 displayname:v11 teamIdentifier:v12 bundleIdentifiers:v13];

  return v14;
}

id _block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [v5 urlString];
  [v6 _cn_setNonNilObject:v7 forKey:@"urlString"];

  v8 = [v5 username];
  [v6 _cn_setNonNilObject:v8 forKey:@"username"];

  v9 = [v5 userIdentifier];
  [v6 _cn_setNonNilObject:v9 forKey:@"userIdentifier"];

  v10 = [v5 service];
  [v6 _cn_setNonNilObject:v10 forKey:@"service"];

  v11 = [v5 displayname];
  [v6 _cn_setNonNilObject:v11 forKey:@"displayname"];

  v12 = [v5 teamIdentifier];
  [v6 _cn_setNonNilObject:v12 forKey:@"teamIdentifier"];

  v13 = [v5 bundleIdentifiers];
  [v6 _cn_setNonNilObject:v13 forKey:@"bundleIdentifiers"];

  return v6;
}

id _block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc(MEMORY[0x1E6996710]);
  v7 = [v5 urlString];
  v8 = [v5 username];
  v9 = [v5 userIdentifier];
  v10 = [v5 service];
  v11 = [v5 displayname];
  v12 = [v6 initWithUrlString:v7 username:v8 userIdentifier:v9 service:v10 displayName:v11];

  return v12;
}

CNInstantMessageAddress *_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [CNInstantMessageAddress alloc];
    v7 = [v5 objectForKey:@"username"];
    v8 = [v5 objectForKey:@"userIdentifier"];
    v9 = [v5 objectForKey:@"service"];
    v10 = [v5 objectForKey:@"teamIdentifier"];
    v11 = [v5 objectForKey:@"bundleIdentifiers"];
    v12 = [(CNInstantMessageAddress *)v6 initWithUsername:v7 userIdentifier:v8 service:v9 teamIdentifier:v10 bundleIdentifiers:v11];
  }

  else
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  return v12;
}

id _block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [v5 username];
  [v6 _cn_setNonNilObject:v7 forKey:@"username"];

  v8 = [v5 userIdentifier];
  [v6 _cn_setNonNilObject:v8 forKey:@"userIdentifier"];

  v9 = [v5 service];
  [v6 _cn_setNonNilObject:v9 forKey:@"service"];

  v10 = [v5 teamIdentifier];
  [v6 _cn_setNonNilObject:v10 forKey:@"teamIdentifier"];

  v11 = [v5 bundleIdentifiers];
  [v6 _cn_setNonNilObject:v11 forKey:@"bundleIdentifiers"];

  return v6;
}

id _block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3 && ((objc_opt_isKindOfClass() & 1) == 0 ? (v4 = 0) : (v4 = v3), v5 = v4, v3, v5))
  {
    v6 = objc_alloc_init(CNMutablePostalAddress);
    v7 = [v5 _cn_objectForKey:@"street" ofClass:objc_opt_class()];
    [(CNPostalAddress *)v6 setStreet:v7];

    v8 = [v5 _cn_objectForKey:@"subLocality" ofClass:objc_opt_class()];
    [(CNPostalAddress *)v6 setSubLocality:v8];

    v9 = [v5 _cn_objectForKey:@"city" ofClass:objc_opt_class()];
    [(CNPostalAddress *)v6 setCity:v9];

    v10 = [v5 _cn_objectForKey:@"subAdministrativeArea" ofClass:objc_opt_class()];
    [(CNPostalAddress *)v6 setSubAdministrativeArea:v10];

    v11 = [v5 _cn_objectForKey:@"state" ofClass:objc_opt_class()];
    [(CNPostalAddress *)v6 setState:v11];

    v12 = [v5 _cn_objectForKey:@"postalCode" ofClass:objc_opt_class()];
    [(CNPostalAddress *)v6 setPostalCode:v12];

    v13 = [v5 _cn_objectForKey:@"country" ofClass:objc_opt_class()];
    [(CNPostalAddress *)v6 setCountry:v13];

    v14 = [v5 _cn_objectForKey:@"ISOCountryCode" ofClass:objc_opt_class()];
    [(CNPostalAddress *)v6 setISOCountryCode:v14];

    v15 = [v5 _cn_objectForKey:@"formattedAddress" ofClass:objc_opt_class()];
    [(CNPostalAddress *)v6 setFormattedAddress:v15];

    v16 = [(CNMutablePostalAddress *)v6 copy];
  }

  else
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  return v16;
}

id _block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [v5 street];
  [v6 _cn_setNonNilObject:v7 forKey:@"street"];

  v8 = [v5 subLocality];
  [v6 _cn_setNonNilObject:v8 forKey:@"subLocality"];

  v9 = [v5 city];
  [v6 _cn_setNonNilObject:v9 forKey:@"city"];

  v10 = [v5 subAdministrativeArea];
  [v6 _cn_setNonNilObject:v10 forKey:@"subAdministrativeArea"];

  v11 = [v5 state];
  [v6 _cn_setNonNilObject:v11 forKey:@"state"];

  v12 = [v5 postalCode];
  [v6 _cn_setNonNilObject:v12 forKey:@"postalCode"];

  v13 = [v5 country];
  [v6 _cn_setNonNilObject:v13 forKey:@"country"];

  v14 = [v5 ISOCountryCode];
  [v6 _cn_setNonNilObject:v14 forKey:@"ISOCountryCode"];

  v15 = [v5 formattedAddress];
  [v6 _cn_setNonNilObject:v15 forKey:@"formattedAddress"];

  return v6;
}

id _block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [CNContactRelation contactRelationWithName:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id _block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 name];

  return v6;
}

id _block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3 && ((objc_opt_isKindOfClass() & 1) == 0 ? (v4 = 0) : (v4 = v3), v5 = v4, v3, v5))
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = _block_invoke_14;
    v9[3] = &unk_1E7417070;
    v7 = v6;
    v10 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:v9];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  return v7;
}

id _block_invoke_15(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [MEMORY[0x1E696AEE0] termOfAddressFromStringRepresentation:v5];
  if (!v6)
  {
    v6 = [MEMORY[0x1E69966D8] decryptAddressingGrammarString:v5];
  }

  return v6;
}

id _block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 stringRepresentation];

  return v6;
}

id _block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [MEMORY[0x1E69966D8] decryptAddressingGrammarString:v5];

  return v6;
}

id _block_invoke_18(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E69966D8] encryptAddressingGrammarAsString:v5];

  return v6;
}

CNWallpaper *_block_invoke_19(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [[CNWallpaper alloc] initWithDataRepresentation:v5];

  return v6;
}

CNSensitiveContentConfiguration *_block_invoke_20(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [[CNSensitiveContentConfiguration alloc] initWithDataRepresentation:v5];

  return v6;
}

uint64_t __CNGuardOSLog_block_invoke_9()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = CNGuardOSLog_cn_once_object_0_9;
  CNGuardOSLog_cn_once_object_0_9 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __IMCoreLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  IMCoreLibraryCore_frameworkLibrary_1 = result;
  return result;
}

uint64_t ABMultiValueGetIndexForGUID(const void *a1, const void *a2)
{
  if (ABMultiValueGetCount(a1) < 1)
  {
    return -1;
  }

  v4 = 0;
  while (1)
  {
    v5 = ABMultiValueCopyUUIDAtIndex();
    v6 = v5;
    if (v5)
    {
      CFAutorelease(v5);
    }

    if (CFEqual(v6, a2))
    {
      break;
    }

    if (++v4 >= ABMultiValueGetCount(a1))
    {
      return -1;
    }
  }

  return v4;
}

uint64_t sContactInfoPairHasData_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 first];

  if (v3)
  {
    if (sContactInfoPairHasData_block_invoke_cn_once_token_2 != -1)
    {
      sContactInfoPairHasData_block_invoke_cold_1();
    }

    v4 = sContactInfoPairHasData_block_invoke_cn_once_object_2;
    v5 = [v2 first];
    v6 = [v5 isEqualIgnoringIdentifiers:v4];

    v3 = v6 ^ 1u;
  }

  return v3;
}

uint64_t sContactInfoPairHasData_block_invoke_2()
{
  v0 = objc_alloc_init(CNContact);
  v1 = sContactInfoPairHasData_block_invoke_cn_once_object_2;
  sContactInfoPairHasData_block_invoke_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1955B187C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1955B1D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initECEmailAddress_0()
{
  if (LoadEmailCore_loadPredicate_0 != -1)
  {
    initECEmailAddress_cold_1_0();
  }

  result = objc_getClass("ECEmailAddress");
  classECEmailAddress_0 = result;
  getECEmailAddressClass_0 = ECEmailAddressFunction_0;
  return result;
}

void __LoadEmailCore_block_invoke_0()
{
  LoadEmailCore_frameworkLibrary_0 = dlopen("/System/Library/PrivateFrameworks/EmailCore.framework/EmailCore", 1);
  if (!LoadEmailCore_frameworkLibrary_0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadEmailCore_block_invoke_cold_1();
  }
}

uint64_t __CoreRecentsLibraryCore_block_invoke_6()
{
  result = _sl_dlopen();
  CoreRecentsLibraryCore_frameworkLibrary_6 = result;
  return result;
}

void *__getCRRecentContactKeyKindSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreRecentsLibrary_2();
  result = dlsym(v2, "CRRecentContactKeyKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRRecentContactKeyKindSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRAddressKindEmailSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = CoreRecentsLibrary_2();
  result = dlsym(v2, "CRAddressKindEmail");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRAddressKindEmailSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRRecentContactKeyAddressSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = CoreRecentsLibrary_2();
  result = dlsym(v2, "CRRecentContactKeyAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRRecentContactKeyAddressSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRRecentsDomainMailSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreRecentsLibrary_2();
  result = dlsym(v2, "CRRecentsDomainMail");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRRecentsDomainMailSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1955B3BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1955B57F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1955B69AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___findBestCandidateForFavorite_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v115 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(*(a1 + 40) + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    objc_storeStrong(v7, a2);
  }

  v9 = [CNContactFormatter stringFromContact:v5 style:0];
  if (v9)
  {
    v10 = [*(a1 + 32) name];
    if (v10)
    {
      v11 = v10;
      v12 = [*(a1 + 32) name];
      v13 = [v9 localizedCaseInsensitiveCompare:v12];

      if (!v13)
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
        *a3 = 1;
      }
    }
  }

  v14 = [*(a1 + 32) propertyKey];
  v15 = [v14 isEqualToString:@"phoneNumbers"];

  if (v15)
  {
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v94 = [v5 phoneNumbers];
    v16 = [v94 countByEnumeratingWithState:&v107 objects:v114 count:16];
    if (v16)
    {
      v17 = v16;
      v91 = v5;
      v92 = v9;
      v18 = *v108;
      do
      {
        v19 = 0;
        do
        {
          if (*v108 != v18)
          {
            objc_enumerationMutation(v94);
          }

          v20 = *(*(&v107 + 1) + 8 * v19);
          v21 = [v20 label];
          v22 = *(a1 + 32);
          if (v22)
          {
            v23 = *(v22 + 64);
          }

          else
          {
            v23 = 0;
          }

          v24 = [CNFavoritesEntry areLabelsEqual:v21 other:v23];

          if (v24)
          {
            v25 = [v20 value];
            v26 = [v25 stringValue];
            v27 = [*(a1 + 32) value];
            v28 = [CNFavoritesEntry arePhoneNumbersEqual:v26 other:v27];

            if (v28)
            {
              objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
              objc_storeStrong((*(*(a1 + 64) + 8) + 40), v20);
            }
          }

          ++v19;
        }

        while (v17 != v19);
        v29 = [v94 countByEnumeratingWithState:&v107 objects:v114 count:16];
        v17 = v29;
      }

      while (v29);
LABEL_22:
      v5 = v91;
LABEL_42:
      v9 = v92;
    }
  }

  else
  {
    v30 = [*(a1 + 32) propertyKey];
    v31 = [v30 isEqualToString:@"emailAddresses"];

    if (v31)
    {
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v94 = [v5 emailAddresses];
      v32 = [v94 countByEnumeratingWithState:&v103 objects:v113 count:16];
      if (v32)
      {
        v33 = v32;
        v92 = v9;
        v34 = v5;
        v35 = *v104;
        do
        {
          v36 = 0;
          do
          {
            if (*v104 != v35)
            {
              objc_enumerationMutation(v94);
            }

            v37 = *(*(&v103 + 1) + 8 * v36);
            v38 = [v37 label];
            v39 = *(a1 + 32);
            if (v39)
            {
              v40 = *(v39 + 64);
            }

            else
            {
              v40 = 0;
            }

            v41 = [CNFavoritesEntry areLabelsEqual:v38 other:v40];

            if (v41)
            {
              v42 = [v37 value];
              v43 = v42;
              if (v42)
              {
                if ([v42 length])
                {
                  v44 = [*(a1 + 32) value];
                  v45 = [v43 localizedCaseInsensitiveCompare:v44];

                  if (!v45)
                  {
                    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
                    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v37);
                  }
                }
              }
            }

            ++v36;
          }

          while (v33 != v36);
          v46 = [v94 countByEnumeratingWithState:&v103 objects:v113 count:16];
          v33 = v46;
        }

        while (v46);
        v5 = v34;
        goto LABEL_42;
      }
    }

    else
    {
      v47 = [*(a1 + 32) propertyKey];
      v48 = [v47 isEqualToString:@"socialProfiles"];

      if (v48)
      {
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v94 = [v5 socialProfiles];
        v49 = [v94 countByEnumeratingWithState:&v99 objects:v112 count:16];
        if (!v49)
        {
          goto LABEL_43;
        }

        v50 = v49;
        v91 = v5;
        v92 = v9;
        v51 = *v100;
        v52 = 0x1E7410000uLL;
        do
        {
          v53 = 0;
          do
          {
            if (*v100 != v51)
            {
              objc_enumerationMutation(v94);
            }

            v54 = *(*(&v99 + 1) + 8 * v53);
            v55 = *(v52 + 1864);
            v56 = [v54 label];
            v57 = *(a1 + 32);
            if (v57)
            {
              v58 = *(v57 + 64);
            }

            else
            {
              v58 = 0;
            }

            v59 = [(CNFavoritesEntry *)v55 areLabelsEqual:v56 other:v58];

            if (v59)
            {
              v60 = v52;
              v61 = *(v52 + 1864);
              objc_opt_class();
              v62 = [v54 value];
              if (objc_opt_isKindOfClass())
              {
                v63 = v62;
              }

              else
              {
                v63 = 0;
              }

              v64 = v63;
              v65 = [(CNFavoritesEntry *)v61 valueStringFromSocialProfile:v64];

              if (v65)
              {
                if ([v65 length])
                {
                  v66 = [*(a1 + 32) value];
                  v67 = [v65 isEqualToString:v66];

                  if (v67)
                  {
                    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
                    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v54);
                  }
                }
              }

              v52 = v60;
            }

            ++v53;
          }

          while (v50 != v53);
          v68 = [v94 countByEnumeratingWithState:&v99 objects:v112 count:16];
          v50 = v68;
        }

        while (v68);
        goto LABEL_22;
      }

      v69 = [*(a1 + 32) propertyKey];
      v70 = [v69 isEqualToString:@"instantMessageAddresses"];

      if (!v70)
      {
        goto LABEL_44;
      }

      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v94 = [v5 instantMessageAddresses];
      v71 = [v94 countByEnumeratingWithState:&v95 objects:v111 count:16];
      if (v71)
      {
        v72 = v71;
        v91 = v5;
        v92 = v9;
        v73 = *v96;
        v74 = 0x1E7410000uLL;
        do
        {
          v75 = 0;
          do
          {
            if (*v96 != v73)
            {
              objc_enumerationMutation(v94);
            }

            v76 = *(*(&v95 + 1) + 8 * v75);
            v77 = *(v74 + 1864);
            v78 = [v76 label];
            v79 = *(a1 + 32);
            if (v79)
            {
              v80 = *(v79 + 64);
            }

            else
            {
              v80 = 0;
            }

            v81 = [(CNFavoritesEntry *)v77 areLabelsEqual:v78 other:v80];

            if (v81)
            {
              v82 = v74;
              v83 = *(v74 + 1864);
              objc_opt_class();
              v84 = [v76 value];
              if (objc_opt_isKindOfClass())
              {
                v85 = v84;
              }

              else
              {
                v85 = 0;
              }

              v86 = v85;
              v87 = [(CNFavoritesEntry *)v83 valueStringFromSocialProfile:v86];

              if (v87)
              {
                if ([v87 length])
                {
                  v88 = [*(a1 + 32) value];
                  v89 = [v87 isEqualToString:v88];

                  if (v89)
                  {
                    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
                    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v76);
                  }
                }
              }

              v74 = v82;
            }

            ++v75;
          }

          while (v72 != v75);
          v90 = [v94 countByEnumeratingWithState:&v95 objects:v111 count:16];
          v72 = v90;
        }

        while (v90);
        goto LABEL_22;
      }
    }
  }

LABEL_43:

LABEL_44:
}

void sub_1955B8A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1955B8D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __CNGuardOSLog_block_invoke_10()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = CNGuardOSLog_cn_once_object_0_10;
  CNGuardOSLog_cn_once_object_0_10 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

BOOL sIsChangeDelete_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 changeType] == 2 || objc_msgSend(v2, "changeType") == 5;

  return v3;
}

BOOL sIsGroupInsertOrUpdate_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 changeType] != 2 && objc_msgSend(v2, "changeType") != 5;

  return v3;
}

void sub_1955BC6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sContactHasData_block_invoke_0(uint64_t a1, void *a2)
{
  v2 = sContactHasData_block_invoke_cn_once_token_2;
  v3 = a2;
  if (v2 != -1)
  {
    sContactHasData_block_invoke_cold_1_0();
  }

  v4 = [v3 isEqualIgnoringIdentifiers:sContactHasData_block_invoke_cn_once_object_2];

  return v4 ^ 1u;
}

uint64_t sContactHasData_block_invoke_2_0()
{
  v0 = objc_alloc_init(CNContact);
  v1 = sContactHasData_block_invoke_cn_once_object_2;
  sContactHasData_block_invoke_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __ContactsDonationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsDonationLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCNDonationErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsDonationLibrary();
  result = dlsym(v2, "CNDonationErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNDonationErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CNCountryInformationISOCountryCodeAscendingComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 isoCountryCode];
  v6 = [v4 isoCountryCode];

  v7 = [v5 compare:v6];
  return v7;
}

id getABSPublicABCNCompatibilityClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getABSPublicABCNCompatibilityClass_softClass_0;
  v7 = getABSPublicABCNCompatibilityClass_softClass_0;
  if (!getABSPublicABCNCompatibilityClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getABSPublicABCNCompatibilityClass_block_invoke_0;
    v3[3] = &unk_1E7412110;
    v3[4] = &v4;
    __getABSPublicABCNCompatibilityClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1955BED6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getABSPublicABCNCompatibilityClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AddressBookLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AddressBookLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7417598;
    v6 = 0;
    AddressBookLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (AddressBookLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
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
  result = objc_getClass("ABSPublicABCNCompatibility");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getABSPublicABCNCompatibilityClass_block_invoke_cold_1();
  }

  getABSPublicABCNCompatibilityClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AddressBookLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AddressBookLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_1955C4E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1955C5984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return objc_opt_class();
}

void sub_1955C9E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t CNiOSABEKParticipantMatchingCopyPersonByURL(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF20];
  v4 = *MEMORY[0x1E698A5B8];
  v5 = *MEMORY[0x1E698A5D0];
  v6 = [a2 absoluteString];
  v7 = [v3 dictionaryWithObjectsAndKeys:{v4, v5, v6, *MEMORY[0x1E698A5F8], 0}];

  v8 = [MEMORY[0x1E698A138] personPredicateWithValue:v7 comparison:0 forProperty:*MEMORY[0x1E698A5B0] addressBook:a1];
  v9 = CNiOSABEKParticipantMatchingCopyPersonWithABPredicate(a1, v8);

  return v9;
}

uint64_t CNiOSABEKParticipantMatchingCopyPersonByName(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E698A128] personPredicateWithNameOnly:a2 account:0 addressBook:a1];
  v4 = CNiOSABEKParticipantMatchingCopyPersonWithABPredicate(a1, v3);

  return v4;
}

uint64_t CNiOSABEKParticipantMatchingCopyPersonWithABPredicate(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = objc_alloc_init(CNiOSABEKParticipantMatchingSearchOperationDelegate);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CNiOSABEKParticipantMatchingCopyPersonWithABPredicate_block_invoke;
  v7[3] = &unk_1E7414128;
  v7[4] = &v8;
  [(CNiOSABEKParticipantMatchingSearchOperationDelegate *)v4 setCompletionHandler:v7];
  [MEMORY[0x1E698A128] searchPeopleWithPredicate:v3 sortOrder:0xFFFFFFFFLL inAddressBook:a1 withDelegate:v4];
  v5 = v9[3];

  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_1955CD0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef __CNiOSABEKParticipantMatchingCopyPersonWithABPredicate_block_invoke(CFTypeRef result, CFTypeRef cf)
{
  if (cf)
  {
    v2 = result;
    result = CFRetain(cf);
    *(*(*(v2 + 32) + 8) + 24) = result;
  }

  return result;
}

void sub_1955CFD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1955D11C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CNGuardOSLog_block_invoke_11()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = CNGuardOSLog_cn_once_object_0_11;
  CNGuardOSLog_cn_once_object_0_11 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __CommunicationsFilterLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CommunicationsFilterLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCMFBlockListIsItemBlockedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CommunicationsFilterLibrary();
  result = dlsym(v2, "CMFBlockListIsItemBlocked");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMFBlockListIsItemBlockedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCMFBlockListAddItemForAllServicesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CommunicationsFilterLibrary();
  result = dlsym(v2, "CMFBlockListAddItemForAllServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMFBlockListAddItemForAllServicesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCMFBlockListRemoveItemFromAllServicesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CommunicationsFilterLibrary();
  result = dlsym(v2, "CMFBlockListRemoveItemFromAllServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMFBlockListRemoveItemFromAllServicesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCreateCMFItemFromStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CommunicationsFilterLibrary();
  result = dlsym(v2, "CreateCMFItemFromString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCreateCMFItemFromStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1955D4FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIMNicknameClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IMSharedUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IMSharedUtilitiesLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74179A0;
    v6 = 0;
    IMSharedUtilitiesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (IMSharedUtilitiesLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
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
  result = objc_getClass("IMNickname");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIMNicknameClass_block_invoke_cold_1();
  }

  getIMNicknameClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IMSharedUtilitiesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  IMSharedUtilitiesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

id sNilStringIfEmpty_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 && [v2 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void *sContactServerUUID_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 externalUUID];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

CNCountryInformation *sCountryInformationFromCountryCode_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CNAddressFormats addressFormatForCountryCode:v2];
  v4 = [CNCountryInformation alloc];
  v5 = [v3 objectForKeyedSubscript:@"COUNTRY"];
  v6 = [v3 objectForKeyedSubscript:@"PHONETIC_COUNTRY"];
  v7 = [(CNCountryInformation *)v4 initWithISOCountryCode:v2 name:v5 phoneticName:v6];

  return v7;
}

void sub_1955D72FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sIsContactWhitelisted_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 downtimeWhitelist];
  v3 = [v2 isEqualToString:*MEMORY[0x1E6996480]];

  return v3;
}

id sLabeledValuePhoneNumberStringValue_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 stringValue];

  return v3;
}

id sAllHandleStringsForContact_block_invoke_4(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 emailAddresses];
  v4 = [v3 _cn_map:&__block_literal_global_27_1];
  v10[0] = v4;
  v5 = [v2 phoneNumbers];

  v6 = [v5 _cn_map:&__block_literal_global_29_2];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v8 = [v7 _cn_flatten];

  return v8;
}

void sub_1955D9C88(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  _Block_object_dispose((v2 - 80), 8);
  _Unwind_Resume(a1);
}

void _handleFavoritesChangedExternally(uint64_t a1, void *a2)
{
  objc_opt_class();
  v3 = a2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;

  v5 = v6;
  if (v6)
  {
    [v6 _entriesChangedExternally];
    v5 = v6;
  }
}

id CNContactFromSGContact(void *a1, void *a2)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 recordId];
  v6 = CNSuggestedContactFoundInBundle_block_invoke(v5, v5);

  v7 = [(CNContact *)[CNMutableContact alloc] initWithIdentifier:v6];
  v8 = [v3 name];
  v9 = [v8 prefix];
  [(CNMutableContact *)v7 setNamePrefix:v9];

  v10 = [v8 firstName];
  [(CNMutableContact *)v7 setGivenName:v10];

  v11 = [v8 middleName];
  [(CNMutableContact *)v7 setMiddleName:v11];

  v12 = [v8 lastName];
  [(CNMutableContact *)v7 setFamilyName:v12];

  v13 = [v8 suffix];
  [(CNMutableContact *)v7 setNameSuffix:v13];

  [(CNMutableContact *)v7 setPreferredForName:0];
  v14 = [v3 emailAddresses];
  v15 = CNLabeledValuesFromSGLabeledValues(v14, @"emailAddress", 0);
  [(CNMutableContact *)v7 setEmailAddresses:v15];

  v16 = [v3 phones];
  v17 = +[CN phoneNumberFromStringTransform];
  v18 = CNLabeledValuesFromSGLabeledValues(v16, @"phoneNumber", v17);
  [(CNMutableContact *)v7 setPhoneNumbers:v18];

  v19 = [v3 postalAddresses];
  v20 = CNLabeledValuesFromSGLabeledValues(v19, @"self", &__block_literal_global_111_0);
  [(CNMutableContact *)v7 setPostalAddresses:v20];

  v21 = [v3 socialProfiles];
  v22 = CNLabeledValuesFromSGLabeledValues(v21, @"self", &__block_literal_global_114_0);
  [(CNMutableContact *)v7 setSocialProfiles:v22];

  v23 = [v3 birthday];

  if (v23)
  {
    v24 = [v3 birthday];
    v32[0] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    v26 = CNLabeledValuesFromSGLabeledValues(v25, @"dateComponents", 0);
    [(CNMutableContact *)v7 setDates:v26];
  }

  v27 = +[CNSuggestedContactStore storeIdentifier];
  [(CNMutableContact *)v7 setStoreIdentifier:v27];

  v28 = [MEMORY[0x1E695DF90] dictionary];
  v29 = [v3 recordId];
  [v28 setObject:v29 forKeyedSubscript:CNSuggestedContactRecordIdKey];

  if (v4)
  {
    [v28 addEntriesFromDictionary:v4];
  }

  [(CNMutableContact *)v7 setStoreInfo:v28];
  v30 = [(CNMutableContact *)v7 copy];

  return v30;
}

id CNSuggestedContactFoundInBundle_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E6996618] encodeObject:a2 error:0];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

id CNSuggestedContactFoundInBundle_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DEF0];
  v3 = a2;
  v4 = [[v2 alloc] initWithBase64EncodedString:v3 options:0];

  if (v4)
  {
    v5 = [MEMORY[0x1E6996618] decodeObjectOfClass:objc_opt_class() data:v4 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id CNLabeledValuesFromSGLabeledValues(void *a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v36 = v35 = v5;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (!v8)
    {
      goto LABEL_21;
    }

    v9 = v8;
    v10 = *v42;
    v38 = v7;
    v37 = *v42;
    while (1)
    {
      v11 = 0;
      v39 = v9;
      do
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * v11);
        v13 = [v12 extractionInfo];
        if ([v13 extractionType] == 16)
        {
          v14 = [v12 origin];
          v15 = [v14 bundleId];
          v16 = [v15 _cn_hasPrefix:@"com.apple." options:129];

          if (v16)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }

        v17 = [v12 valueForKey:v6];
        if (v17)
        {
          v18 = v17;
          if (!v7 || (v7[2](v7, v17), v19 = objc_claimAutoreleasedReturnValue(), v18, (v18 = v19) != 0))
          {
            v20 = v6;
            v21 = [v12 recordId];
            v22 = CNSuggestedContactFoundInBundle_block_invoke(v21, v21);

            v23 = [CNLabeledValue alloc];
            v24 = [v12 label];
            v25 = [(CNLabeledValue *)v23 initWithIdentifier:v22 label:v24 value:v18];

            v26 = +[CNSuggestedContactStore storeIdentifier];
            [(CNLabeledValue *)v25 setStoreIdentifier:v26];

            v27 = [MEMORY[0x1E695DF90] dictionary];
            v28 = [v12 recordId];
            [v27 setObject:v28 forKey:CNSuggestedContactRecordIdKey];

            v29 = [v12 origin];
            v30 = [v29 bundleId];
            v31 = [v30 length];

            if (v31)
            {
              v32 = [v12 origin];
              v33 = [v32 bundleId];
              [v27 setObject:v33 forKey:CNSuggestedContactFoundInBundle];
            }

            [(CNLabeledValue *)v25 setStoreInfo:v27];
            if (v25)
            {
              [v36 addObject:v25];
            }

            v6 = v20;
            v7 = v38;
            v9 = v39;
            v10 = v37;
          }
        }

LABEL_19:
        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (!v9)
      {
LABEL_21:

        v5 = v35;
        goto LABEL_23;
      }
    }
  }

  v36 = 0;
LABEL_23:

  return v36;
}

CNMutablePostalAddress *__CNContactFromSGContact_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = objc_alloc_init(CNMutablePostalAddress);
    v4 = [v2 components];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 street];
      [(CNPostalAddress *)v3 setStreet:v6];

      v7 = [v5 subLocality];
      [(CNPostalAddress *)v3 setSubLocality:v7];

      v8 = [v5 city];
      [(CNPostalAddress *)v3 setCity:v8];

      v9 = [v5 subAdministrativeArea];
      [(CNPostalAddress *)v3 setSubAdministrativeArea:v9];

      v10 = [v5 state];
      [(CNPostalAddress *)v3 setState:v10];

      v11 = [v5 postalCode];
      [(CNPostalAddress *)v3 setPostalCode:v11];

      v12 = [v5 country];
      [(CNPostalAddress *)v3 setCountry:v12];

      v13 = [v5 isoCountryCode];
      [(CNPostalAddress *)v3 setISOCountryCode:v13];
    }

    else
    {
      v14 = [v2 rawAddress];

      if (v14)
      {
        v29 = 0;
        v15 = [objc_alloc(MEMORY[0x1E696AB60]) initWithTypes:16 error:&v29];
        v16 = v29;
        v17 = v16;
        if (v15)
        {
          v18 = [v2 rawAddress];
          v19 = [v15 firstMatchInString:v18 options:0 range:{0, -[CNMutablePostalAddress length](v18, "length")}];
          v20 = [v19 addressComponents];
          v21 = v20;
          if (v19 && v20)
          {
            v22 = [v20 objectForKeyedSubscript:*MEMORY[0x1E696A930]];
            [(CNPostalAddress *)v3 setStreet:v22];

            v23 = [v21 objectForKeyedSubscript:*MEMORY[0x1E696A910]];
            [(CNPostalAddress *)v3 setCity:v23];

            v24 = [v21 objectForKeyedSubscript:*MEMORY[0x1E696A928]];
            [(CNPostalAddress *)v3 setState:v24];

            v25 = [v21 objectForKeyedSubscript:*MEMORY[0x1E696A938]];
            [(CNPostalAddress *)v3 setPostalCode:v25];

            v26 = [v21 objectForKeyedSubscript:*MEMORY[0x1E696A918]];
            [(CNPostalAddress *)v3 setCountry:v26];
          }

          else
          {
            v26 = v3;
            v3 = 0;
          }

          v27 = v3;

          v3 = v18;
        }

        else
        {
          NSLog(&cfstr_ErrorCreatingD.isa, v16);
          v27 = 0;
        }

        v3 = v27;
      }

      else
      {

        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

CNMutableSocialProfile *__CNContactFromSGContact_block_invoke_2(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = objc_alloc_init(CNMutableSocialProfile);
    v4 = [v2 displayName];
    [(CNSocialProfile *)v3 setDisplayname:v4];

    v5 = [v2 username];
    [(CNSocialProfile *)v3 setUsername:v5];

    v6 = [v2 userIdentifier];
    [(CNSocialProfile *)v3 setUserIdentifier:v6];

    v7 = [v2 bundleIdentifier];
    if (v7)
    {
      v8 = [v2 bundleIdentifier];
      v13[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [(CNSocialProfile *)v3 setBundleIdentifiers:v9];
    }

    else
    {
      [(CNSocialProfile *)v3 setBundleIdentifiers:0];
    }

    v10 = [v2 teamIdentifier];
    [(CNSocialProfile *)v3 setTeamIdentifier:v10];

    v11 = [v2 service];
    [(CNSocialProfile *)v3 setService:v11];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1955E01B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1955E041C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1955E06F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1955E0900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1955E0B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

__CFData *CNImageUtilsImageDataByScalingImageData(const __CFData *a1, int a2, unint64_t a3, double *a4, double a5, double a6, double a7)
{
  if (a5 >= a6)
  {
    v9 = a5;
  }

  else
  {
    v9 = a6;
  }

  if (v9 <= a3)
  {
    v23 = 0;
    goto LABEL_35;
  }

  if (a5 >= a6)
  {
    a5 = a6;
  }

  v12 = (a5 / v9 * a3);
  if (v9 == a6)
  {
    v13 = v12;
  }

  else
  {
    v13 = a3;
  }

  if (v9 == a6)
  {
    v14 = a3;
  }

  else
  {
    v14 = v12;
  }

  v15 = CGImageSourceCreateWithData(a1, 0);
  if (v15)
  {
    v16 = v15;
    if (CGImageSourceGetCount(v15))
    {
      v17 = CGImageSourceCopyPropertiesAtIndex(v16, 0, 0);
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v16, 0, 0);
      if (ImageAtIndex)
      {
        v19 = ImageAtIndex;
        if (v13)
        {
          v20 = v14 == 0;
        }

        else
        {
          v20 = 1;
        }

        if (!v20)
        {
          v21 = CGImageCreateByScaling();
          CFRelease(v19);
          v19 = v21;
        }

        v22 = objc_opt_new();
        v23 = v22;
        if (a2)
        {
          v24 = @"public.png";
        }

        else
        {
          v24 = @"public.jpeg";
        }

        v25 = CGImageDestinationCreateWithData(v22, v24, 1uLL, 0);
        if (v25)
        {
          v26 = v25;
          v27 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v17];
          v28 = [MEMORY[0x1E696AD98] numberWithDouble:a7];
          [v27 setObject:v28 forKeyedSubscript:*MEMORY[0x1E696D338]];

          CGImageDestinationAddImage(v26, v19, v27);
          CGImageDestinationFinalize(v26);
          CFRelease(v26);
        }

        CGImageRelease(v19);
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    CFRelease(v16);
    if (a4)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v23 = 0;
    if (a4)
    {
LABEL_34:
      *a4 = v14 / a6;
    }
  }

LABEL_35:

  return v23;
}

__CFData *CNImageUtilsCreateImageDataFromImage(CGImage *a1, const __CFString *a2, double a3)
{
  keys[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_10;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v8 = CGImageDestinationCreateWithData(Mutable, a2, 1uLL, 0);
  if (v8)
  {
    v9 = v8;
    if (a3 == 1.0)
    {
      CGImageDestinationAddImage(v8, a1, 0);
    }

    else
    {
      v14 = a3 * 72.0;
      v10 = CFNumberCreate(v6, kCFNumberDoubleType, &v14);
      v11 = *MEMORY[0x1E696D880];
      keys[0] = *MEMORY[0x1E696D888];
      keys[1] = v11;
      values[0] = v10;
      values[1] = v10;
      v12 = CFDictionaryCreate(v6, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CGImageDestinationAddImage(v9, a1, v12);
      CFRelease(v12);
      CFRelease(v10);
    }

    CGImageDestinationFinalize(v9);
    CFRelease(v9);
  }

  if (Mutable && !CFDataGetLength(Mutable))
  {
    CFRelease(Mutable);
LABEL_10:
    Mutable = 0;
  }

  return Mutable;
}

BOOL CNImageUtilsCopyImageSourceAndGetSizeFromData(void *a1, CGImageSource **a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = v7;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (v7)
  {
    v9 = CGImageSourceCreateWithData(v7, 0);
    if (v9)
    {
      v10 = v9;
      v11 = CGImageSourceCopyPropertiesAtIndex(v9, 0, 0);
      v12 = v11 != 0;
      if (!v11)
      {
        goto LABEL_28;
      }

      v13 = v11;
      valuePtr = 0;
      Value = CFDictionaryGetValue(v11, *MEMORY[0x1E696DE78]);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
        v15 = valuePtr > 4;
      }

      else
      {
        v15 = 0;
      }

      v16 = CFDictionaryGetValue(v13, *MEMORY[0x1E696DED8]);
      if (v16 && CFNumberGetValue(v16, kCFNumberIntType, &valuePtr))
      {
        if (v15)
        {
          v17 = a4;
          if (!a4)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        v17 = a3;
        if (a3)
        {
LABEL_18:
          *v17 = valuePtr;
        }
      }

LABEL_19:
      v18 = CFDictionaryGetValue(v13, *MEMORY[0x1E696DEC8]);
      if (v18 && CFNumberGetValue(v18, kCFNumberIntType, &valuePtr))
      {
        if (v15)
        {
          if (!a3)
          {
            goto LABEL_26;
          }
        }

        else
        {
          a3 = a4;
          if (!a4)
          {
            goto LABEL_26;
          }
        }

        *a3 = valuePtr;
      }

LABEL_26:
      CFRelease(v13);
      if (a2)
      {
        *a2 = v10;
        v12 = 1;
        goto LABEL_29;
      }

LABEL_28:
      CFRelease(v10);
      goto LABEL_29;
    }
  }

  v12 = 0;
LABEL_29:

  return v12;
}

CGContextRef CNImageUtilsCreateMmappedBitmapContext(unsigned int a1, double a2, double a3)
{
  if (a1 != 5 && a1 != 8)
  {
    CNImageUtilsCreateMmappedBitmapContext_cold_1();
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CGColorSpaceGetNumberOfComponents(DeviceRGB);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v8 = mmap(0, (*MEMORY[0x1E69E9AC8] + AlignedBytesPerRow * a3 - 1) & -*MEMORY[0x1E69E9AC8], 3, 4097, -1, 0);
  if (a1 == 5)
  {
    v9 = 4102;
  }

  else
  {
    v9 = 8198;
  }

  v10 = CGBitmapContextCreate(v8, a2, a3, a1, AlignedBytesPerRow, DeviceRGB, v9);
  CGColorSpaceRelease(DeviceRGB);
  return v10;
}

__CFData *CNImageUtilsCroppedImageDataFromFullSizeImageData(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v63 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = v11;
  if (!v11)
  {
LABEL_28:
    v22 = 0;
    goto LABEL_29;
  }

  v13 = CGImageSourceCreateWithData(v11, 0);
  if (!v13)
  {
    v66.origin.x = a3;
    v66.origin.y = a4;
    v66.size.width = a5;
    v66.size.height = a6;
    CGRectIsEmpty(v66);
    v23 = +[CNContactsLoggerProvider defaultProvider];
    v24 = [v23 imageUtilitiesLogger];
    v25 = [v24 log];

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      CNImageUtilsCroppedImageDataFromFullSizeImageData_cold_2(v25);
    }

    goto LABEL_25;
  }

  v14 = v13;
  v15 = CGImageSourceCopyPropertiesAtIndex(v13, 0, 0);
  v16 = [(__CFDictionary *)v15 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
  [v16 doubleValue];
  v18 = v17;

  v19 = [(__CFDictionary *)v15 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
  [v19 doubleValue];
  v21 = v20;

  v65.origin.x = a3;
  v65.origin.y = a4;
  v65.size.width = a5;
  v65.size.height = a6;
  if (CGRectIsEmpty(v65) && vabdd_f64(v18, v21) <= 1.0)
  {
    CFRelease(v14);
    v22 = v12;
    goto LABEL_29;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v14, 0, 0);
  CFRelease(v14);
  if (!ImageAtIndex)
  {
    v45 = +[CNContactsLoggerProvider defaultProvider];
    v46 = [v45 imageUtilitiesLogger];
    v25 = [v46 log];

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      CNImageUtilsCroppedImageDataFromFullSizeImageData_cold_1(v25);
    }

    goto LABEL_25;
  }

  v67.origin.x = a3;
  v67.origin.y = a4;
  v67.size.width = a5;
  v67.size.height = a6;
  if (CGRectIsEmpty(v67))
  {
    [MEMORY[0x1E6996738] centeredSquareCropRectInRect:{0.0, 0.0, v18, v21}];
    a3 = v27;
    a4 = v28;
    a5 = v29;
    a6 = v30;
  }

  if (([MEMORY[0x1E6996738] cropRect:a3 fitsWithinSize:{a4, a5, a6, v18, v21}] & 1) == 0)
  {
    v31 = +[CNContactsLoggerProvider defaultProvider];
    v32 = [v31 imageUtilitiesLogger];
    v33 = [v32 log];

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v51 = 134219264;
      v52 = a3;
      v53 = 2048;
      v54 = a4;
      v55 = 2048;
      v56 = a5;
      v57 = 2048;
      v58 = a6;
      v59 = 2048;
      v60 = v18;
      v61 = 2048;
      v62 = v21;
      _os_log_error_impl(&dword_1954A0000, v33, OS_LOG_TYPE_ERROR, "[LikenessResolver] Attempting to crop image with cropRect (%.2f, %.2f, %.2f, %.2f) extending beyond image of size (%.2f x %.2f). Displaying with a centered square cropRect instead.", &v51, 0x3Eu);
    }

    [MEMORY[0x1E6996738] centeredSquareCropRectInRect:{0.0, 0.0, v18, v21}];
    a3 = v34;
    a4 = v35;
    a5 = v36;
    a6 = v37;
  }

  v38 = +[CNContactsLoggerProvider defaultProvider];
  v39 = [v38 imageUtilitiesLogger];
  v40 = [v39 log];

  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    v51 = 134219264;
    v52 = a3;
    v53 = 2048;
    v54 = a4;
    v55 = 2048;
    v56 = a5;
    v57 = 2048;
    v58 = a6;
    v59 = 2048;
    v60 = v18;
    v61 = 2048;
    v62 = v21;
    _os_log_debug_impl(&dword_1954A0000, v40, OS_LOG_TYPE_DEBUG, "[LikenessResolver] Taking rect (%f, %f, %f, %f) within image of size %.2f x %.2f", &v51, 0x3Eu);
  }

  v68.origin.x = a3;
  v68.origin.y = a4;
  v68.size.width = a5;
  v68.size.height = a6;
  v41 = CGImageCreateWithImageInRect(ImageAtIndex, v68);
  CGImageRelease(ImageAtIndex);
  if (!v41)
  {
    v47 = +[CNContactsLoggerProvider defaultProvider];
    v48 = [v47 imageUtilitiesLogger];
    v25 = [v48 log];

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v51 = 134219264;
      v52 = a3;
      v53 = 2048;
      v54 = a4;
      v55 = 2048;
      v56 = a5;
      v57 = 2048;
      v58 = a6;
      v59 = 2048;
      v60 = v18;
      v61 = 2048;
      v62 = v21;
      _os_log_error_impl(&dword_1954A0000, v25, OS_LOG_TYPE_ERROR, "[LikenessResolver] can't create CROPPED image! With cropRect (%.2f, %.2f, %.2f, %.2f) and image of size %.2f x %.2f)", &v51, 0x3Eu);
    }

LABEL_25:

    v49 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNErrorDomain" code:302 userInfo:0];
    if (a2)
    {
      v49 = v49;
      *a2 = v49;
    }

    goto LABEL_28;
  }

  v22 = objc_opt_new();
  v42 = CGImageDestinationCreateWithData(v22, @"public.jpeg", 1uLL, 0);
  if (v42)
  {
    v43 = v42;
    v44 = [MEMORY[0x1E695DF90] dictionary];
    [v44 setObject:&unk_1F09874F8 forKeyedSubscript:*MEMORY[0x1E696D338]];
    CGImageDestinationAddImage(v43, v41, v44);
    CGImageDestinationFinalize(v43);
    CFRelease(v43);
  }

  CGImageRelease(v41);
LABEL_29:

  return v22;
}

uint64_t _AppExtensionIdentity.appBundleIdentifier.getter()
{
  if (_s19ExtensionFoundation04_AppA8IdentityV8ContactsE03appA16BundleIdentifierSSvg_0() == 0xD00000000000002BLL && 0x800000019568C360 == v0)
  {

    return 0xD000000000000016;
  }

  v1 = sub_19565DB1C();

  if (v1)
  {
    return 0xD000000000000016;
  }

  v3 = sub_19565D0AC();
  if (!v3)
  {
    return 0x6E776F6E6B6E75;
  }

  v4 = v3;
  v5 = [v3 bundleIdentifier];

  if (!v5)
  {
    return 0x6E776F6E6B6E75;
  }

  v6 = sub_19565D28C();

  return v6;
}

uint64_t _AppExtensionIdentity.appDisplayName.getter()
{
  v0 = 0x73746361746E6F63;
  if (_s19ExtensionFoundation04_AppA8IdentityV8ContactsE03appA16BundleIdentifierSSvg_0() == 0xD00000000000002BLL && 0x800000019568C360 == v1)
  {

    return v0;
  }

  v2 = sub_19565DB1C();

  if (v2)
  {
    return v0;
  }

  v3 = sub_19565D0AC();
  if (!v3)
  {
    return sub_19565D08C();
  }

  v4 = v3;
  v5 = [v3 localizedName];

  v0 = sub_19565D28C();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return sub_19565D08C();
  }

  return v0;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1955E3410(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}