uint64_t figCSSStyleDeclarationRegisterFigCSSStyleDeclaration()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSStyleDeclarationID = result;
  return result;
}

uint64_t FigCSSStyleDeclarationCreate(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    MEMORY[0x19A8D3660](&FigCSSStyleDeclarationGetTypeID_sRegisterFigCSSStyleDeclarationOnce, figCSSStyleDeclarationRegisterFigCSSStyleDeclaration);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCSSStyleDeclarationCreate_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    FigCSSStyleDeclarationCreate_cold_2(&v7);
    return v7;
  }

  return result;
}

CFIndex FigCSSStyleDeclarationGetPropertyCount(uint64_t a1)
{
  if (!a1)
  {
    FigCSSStyleDeclarationGetPropertyCount_cold_1();
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  return CFArrayGetCount(v2);
}

uint64_t FigCSSStyleDeclarationCopyPropertyNameAtIndex(uint64_t a1, CFIndex idx, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      Count = *(a1 + 16);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (idx < 0 || Count <= idx)
      {
        FigCSSStyleDeclarationCopyPropertyNameAtIndex_cold_1(&v10);
        return v10;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), idx);
        if (ValueAtIndex)
        {
          v8 = CFRetain(ValueAtIndex);
        }

        else
        {
          v8 = 0;
        }

        result = 0;
        *a3 = v8;
      }
    }

    else
    {
      FigCSSStyleDeclarationCopyPropertyNameAtIndex_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    FigCSSStyleDeclarationCopyPropertyNameAtIndex_cold_3(&v12);
    return v12;
  }

  return result;
}

uint64_t FigCSSStyleDeclarationSetPropertyInfo(CFTypeRef cf, void *key, const void *a3, int a4)
{
  if (!cf)
  {
    FigCSSStyleDeclarationSetPropertyInfo_cold_6(&v20);
    return v20;
  }

  if (!key)
  {
    FigCSSComponentValueParserNodeSetFunctionNode_cold_2(&v20);
    return v20;
  }

  if (!a3)
  {
    FigCSSStyleDeclarationSetPropertyInfo_cold_4(&v20);
    return v20;
  }

  v8 = *(cf + 3);
  if (v8 && CFDictionaryGetValue(v8, key))
  {
    v9 = *(cf + 2);
    if (v9)
    {
      v10.length = CFArrayGetCount(v9);
      v9 = *(cf + 2);
    }

    else
    {
      v10.length = 0;
    }

    v10.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v9, v10, key);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(*(cf + 2), FirstIndexOfValue);
      CFDictionaryRemoveValue(*(cf + 3), key);
    }
  }

  if (!*(cf + 2))
  {
    v12 = CFGetAllocator(cf);
    Mutable = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
    *(cf + 2) = Mutable;
    if (!Mutable)
    {
      FigCSSStyleDeclarationSetPropertyInfo_cold_3(&v20);
      return v20;
    }
  }

  if (!*(cf + 3))
  {
    v14 = CFGetAllocator(cf);
    v15 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(cf + 3) = v15;
    if (!v15)
    {
      FigCSSStyleDeclarationSetPropertyInfo_cold_2(&v20);
      return v20;
    }
  }

  v16 = CFGetAllocator(cf);
  v17 = CFDictionaryCreateMutable(v16, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v17)
  {
    FigCSSStyleDeclarationSetPropertyInfo_cold_1(&v20);
    return v20;
  }

  v18 = v17;
  CFDictionarySetValue(v17, @"value", a3);
  if (a4)
  {
    CFDictionarySetValue(v18, @"important", *MEMORY[0x1E695E4D0]);
  }

  CFArrayAppendValue(*(cf + 2), key);
  CFDictionarySetValue(*(cf + 3), key, v18);
  CFRelease(v18);
  return 0;
}

void figCSSStyleSheet_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

CFStringRef figCSSStyleSheet_CopyFormattingDesc(uint64_t a1)
{
  v2 = FigCFCopyCompactDescription();
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<FigCSSStyleSheet [%p]\n %@>", a1, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

CFStringRef figCSSStyleSheet_CopyDebugDesc(uint64_t a1)
{
  v2 = FigCFCopyCompactDescription();
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigCSSStyleSheet %p] %@", a1, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

void figCSSRuleList_Finalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

__CFString *figCSSRuleList_CopyFormattingDesc(CFArrayRef *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCSSRuleList [%p]\n", a1);
  for (i = 0; ; ++i)
  {
    Count = a1[2];
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    CFArrayGetValueAtIndex(a1[2], i);
    v6 = FigCFCopyCompactDescription();
    CFStringAppendFormat(Mutable, 0, @"    rule[%ld] = %@\n", i, v6);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

CFStringRef figCSSRuleList_CopyDebugDesc(uint64_t a1)
{
  v2 = FigCFCopyCompactDescription();
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigCSSRuleList %p] [%@]", a1, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

void *figCSSRule_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void figCSSRule_Finalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *figCSSRule_CopyFormattingDesc(unsigned int *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFGetAllocator(a1);
  v4 = _figCSSObjModel_MapRuleTypeToString(a1[4]);
  v5 = FigCFCopyCompactDescription();
  v6 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"<FigCSSRule [%p]\n", a1);
  CFStringAppendFormat(Mutable, 0, @"    ruleType = %@ selector = %@\n", v4, v5);
  CFStringAppendFormat(Mutable, 0, @"    %@\n", v6);
  CFStringAppendFormat(Mutable, 0, @">");
  CFRelease(v4);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return Mutable;
}

CFStringRef figCSSRule_CopyDebugDesc(unsigned int *a1)
{
  CFGetAllocator(a1);
  v2 = _figCSSObjModel_MapRuleTypeToString(a1[4]);
  v3 = FigCFCopyCompactDescription();
  v4 = FigCFCopyCompactDescription();
  v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigCSSRule %p] %@ %@ : %@", a1, v2, v3, v4);
  CFRelease(v2);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

__CFString *_figCSSObjModel_MapRuleTypeToString(unsigned int a1)
{
  if (a1 < 9)
  {
    return off_1E74921A8[a1];
  }

  FigSignalErrorAtGM();
  return @"Invalid";
}

uint64_t figCSSStyleDeclaration_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void figCSSStyleDeclaration_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *figCSSStyleDeclaration_CopyFormattingDesc(CFArrayRef *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCSSStyleDeclaration [%p] {\n", a1);
  v4 = 0;
  v5 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    Count = a1[2];
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v4 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a1[2], v4);
    Value = CFDictionaryGetValue(a1[3], ValueAtIndex);
    if (!Value)
    {
      v11 = FigCFCopyCompactDescription();
LABEL_11:
      v13 = &stru_1F0B1AFB8;
      goto LABEL_12;
    }

    v9 = Value;
    CFDictionaryGetValue(Value, @"value");
    v10 = CFDictionaryGetValue(v9, @"important");
    v11 = FigCFCopyCompactDescription();
    if (!v10)
    {
      goto LABEL_11;
    }

    v12 = CFEqual(v10, v5);
    v13 = @"!important";
    if (!v12)
    {
      v13 = &stru_1F0B1AFB8;
    }

LABEL_12:
    CFStringAppendFormat(Mutable, 0, @"    %@ : %@ %@\n", ValueAtIndex, v11, v13);
    if (v11)
    {
      CFRelease(v11);
    }

    ++v4;
  }

  CFStringAppendFormat(Mutable, 0, @"} >");
  return Mutable;
}

CFStringRef figCSSStyleDeclaration_CopyDebugDesc(uint64_t a1)
{
  v2 = FigCFCopyCompactDescription();
  v3 = FigCFCopyCompactDescription();
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"** [FigCSSStyleDeclaration <%p> names = {%@} properties = {%@} ]", a1, v2, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v4;
}

uint64_t RegisterFigCaptionGroupConverterToSampleBufferType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void sub_196744EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose((v26 - 112), 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t getAMSBagClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__11;
  v0 = getAMSBagClass_softClass;
  v7 = __Block_byref_object_dispose__11;
  v8 = getAMSBagClass_softClass;
  if (!getAMSBagClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getAMSBagClass_block_invoke;
    v2[3] = &unk_1E7486A28;
    v2[4] = &v3;
    __getAMSBagClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_196745008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196745320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1967454FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1967456D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigPWDKeyExchangeSenderInitializeAMS()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[FigPWDKeyExchangeSenderServerHelperProd InitializeAMS];
  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t FigPWDKeyExchangeSenderCreateForAOCP(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (FigPWDKeyExchangeSenderAOCP_initOnce_initOnce != -1)
  {
    FigPWDKeyExchangeSenderCreateForAOCP_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  if (!a4)
  {
    FigPWDKeyExchangeSenderCreateForAOCP_cold_4(&v13);
LABEL_18:
    v11 = v13;
    goto LABEL_12;
  }

  FigPWDKeyExchangeSenderGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v11 = v7;
    goto LABEL_12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_13;
  }

  v9 = DerivedStorage;
  *(DerivedStorage + 24) = 0;
  *(DerivedStorage + 32) = 0;
  *(DerivedStorage + 52) = 0;
  *(DerivedStorage + 44) = 0;
  *(DerivedStorage + 40) = 0;
  *(DerivedStorage + 88) = 0;
  *(DerivedStorage + 96) = 0;
  if (!a2)
  {
    FigPWDKeyExchangeSenderCreateForAOCP_cold_3(&v13);
    goto LABEL_18;
  }

  __copy_assignment_8_8_t0w16_pa0_46156_16_pa0_29868_24_pa0_61312_32(DerivedStorage + 104, a2);
  if (!*(a2 + 8))
  {
    FigPWDKeyExchangeSenderCreateForAOCP_cold_2(&v13);
    goto LABEL_18;
  }

  *(v9 + 144) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  FigCFDictionaryGetInt32IfPresent();
  *(v9 + 64) = kFigPWDKeyExchangeAOCP_AssetID_None;
  *(v9 + 40) = 4;
  *(v9 + 44) = 1;
  *(v9 + 168) = FigDispatchQueueCreateWithPriority();
  v10 = FigSimpleMutexCreate();
  *(v9 + 16) = v10;
  if (!v10)
  {
LABEL_13:
    v11 = 4294947756;
    goto LABEL_12;
  }

  *(v9 + 176) = objc_alloc_init(FigPWDKeyExchangeSenderServerHelperProd);
  if (!sPWDKeyExchangeTelemetryHelper)
  {
    sPWDKeyExchangeTelemetryHelper = objc_alloc_init(FigPWDKeyExchangeSenderTelementryHelper);
  }

  v11 = 0;
  *a4 = 0;
LABEL_12:
  objc_autoreleasePoolPop(v6);
  return v11;
}

uint64_t __copy_assignment_8_8_t0w16_pa0_46156_16_pa0_29868_24_pa0_61312_32(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  return result;
}

Class __getAMSBagClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("AMSBag");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAMSBagClass_block_invoke_cold_1();
  }

  getAMSBagClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void AppleMediaServicesLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __AppleMediaServicesLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E74922C8;
    v2 = 0;
    AppleMediaServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    AppleMediaServicesLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __AppleMediaServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleMediaServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAMSFairPlayDeviceIdentityProviderClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("AMSFairPlayDeviceIdentityProvider");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAMSFairPlayDeviceIdentityProviderClass_block_invoke_cold_1();
  }

  getAMSFairPlayDeviceIdentityProviderClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getAMSURLSessionClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("AMSURLSession");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAMSURLSessionClass_block_invoke_cold_1();
  }

  getAMSURLSessionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getAMSURLRequestEncoderClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("AMSURLRequestEncoder");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAMSURLRequestEncoderClass_block_invoke_cold_1();
  }

  getAMSURLRequestEncoderClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *pwdKeyExchangeSenderAOCP_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    if (*(DerivedStorage + 32))
    {
      MzdSdcDIXg8COV();
      *(v1 + 32) = 0;
    }

    if (*(v1 + 72))
    {
      JE2f6WCx();
      *(v1 + 72) = 0;
    }

    if (*(v1 + 80))
    {
      N8pdwAfn();
      *(v1 + 80) = 0;
    }

    *(v1 + 24) = 0;
    v2 = *(v1 + 144);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 144) = 0;
    }

    v3 = *(v1 + 88);
    if (v3)
    {
      CFRelease(v3);
      *(v1 + 88) = 0;
    }

    v4 = *(v1 + 96);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 96) = 0;
    }

    v5 = *(v1 + 168);
    if (v5)
    {
      dispatch_release(v5);
      *(v1 + 168) = 0;
    }

    v6 = *(v1 + 176);
    if (v6)
    {

      *(v1 + 176) = 0;
    }

    FigSimpleMutexDestroy();
  }

  result = sPWDKeyExchangeTelemetryHelper;
  if (sPWDKeyExchangeTelemetryHelper)
  {

    return [result clearTelemetry];
  }

  return result;
}

__CFString *pwdKeyExchangeSenderAOCP_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPWDKeyExchangeSenderAOCP %p>", a1);
  return Mutable;
}

uint64_t pwdKeyExchangeSenderAOCP_Start(const __CFData *a1)
{
  v38 = 0;
  v37 = 0;
  if (!a1)
  {
    pwdKeyExchangeSenderAOCP_Start_cold_9(&bytes);
    return *&bytes.byte0;
  }

  (FigPWDKeyExchangeSenderGetCMBaseObject)();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 32))
  {
    MzdSdcDIXg8COV();
    *(DerivedStorage + 32) = 0;
  }

  if (*(DerivedStorage + 72))
  {
    JE2f6WCx();
    *(DerivedStorage + 72) = 0;
  }

  if (*(DerivedStorage + 80))
  {
    N8pdwAfn();
    *(DerivedStorage + 80) = 0;
  }

  *(DerivedStorage + 152) = FigGetUpTimeNanoseconds();
  if (!*(DerivedStorage + 88))
  {
    v3 = objc_autoreleasePoolPush();
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v4 = dispatch_semaphore_create(0);
    FigPWDKeyExchangeSenderGetCMBaseObject(a1);
    v5 = CMBaseObjectGetDerivedStorage();
    v6 = [*(v5 + 176) requestCertURL];
    *(v46 + 6) = v6;
    if (!v6)
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v8 = *(v5 + 176);
      *&bytes.byte0 = MEMORY[0x1E69E9820];
      *&bytes.byte8 = 3221225472;
      v40 = __FigPWDKeyExchangeSenderAOCP_getCertificate_block_invoke;
      v41 = &unk_1E74922E8;
      v43 = &v45;
      v44 = v5;
      v42 = v4;
      [v8 requestCertDataFromServer:&bytes];
      dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
      v9 = *(v46 + 6);
      if (v9)
      {
        [sPWDKeyExchangeTelemetryHelper setResultCode:v9 forKey:*MEMORY[0x1E6960E88]];
      }

      else
      {
        [sPWDKeyExchangeTelemetryHelper setTimeRange:UpTimeNanoseconds end:FigGetUpTimeNanoseconds() forKey:*MEMORY[0x1E6960E90]];
      }
    }

    if (v4)
    {
      dispatch_release(v4);
    }

    v10 = *(v46 + 6);
    _Block_object_dispose(&v45, 8);
    objc_autoreleasePoolPop(v3);
    if (v10)
    {
      v33 = FigSignalErrorAtGM();
      Mutable = 0;
      goto LABEL_53;
    }
  }

  v11 = MEMORY[0x1E695E480];
  if (!*(DerivedStorage + 96))
  {
    FigPWDKeyExchangeSenderGetCMBaseObject(a1);
    v12 = CMBaseObjectGetDerivedStorage();
    v13 = *v11;
    v14 = CFUUIDCreate(*v11);
    if (v14)
    {
      v15 = v14;
      bytes = CFUUIDGetUUIDBytes(v14);
      v16 = CFDataCreate(v13, &bytes.byte0, 16);
      if (v16)
      {
        v17 = v16;
        v18 = *(v12 + 96);
        if (v18)
        {
          CFRelease(v18);
        }

        v19 = 0;
        *(v12 + 96) = v17;
      }

      else
      {
        pwdKeyExchangeSenderAOCP_Start_cold_1(&v45);
        v19 = v45;
      }

      CFRelease(v15);
      if (!v19)
      {
        goto LABEL_23;
      }
    }

    else
    {
      pwdKeyExchangeSenderAOCP_Start_cold_2(&bytes);
      if (!*&bytes.byte0)
      {
        goto LABEL_23;
      }
    }

    pwdKeyExchangeSenderAOCP_Start_cold_3(&bytes);
    goto LABEL_51;
  }

LABEL_23:
  v20 = objc_autoreleasePoolPush();
  FigPWDKeyExchangeSenderGetCMBaseObject(a1);
  v21 = [*(CMBaseObjectGetDerivedStorage() + 176) requestEndpointURL];
  objc_autoreleasePoolPop(v20);
  if (v21)
  {
    pwdKeyExchangeSenderAOCP_Start_cold_4(&bytes);
LABEL_51:
    Mutable = 0;
    goto LABEL_52;
  }

  CFDataGetBytePtr(*(DerivedStorage + 88));
  CFDataGetLength(*(DerivedStorage + 88));
  Qhl17oSYJtCJIxM();
  if (v22)
  {
    v33 = v22;
    pwdKeyExchangeSenderAOCP_Start_cold_5();
    return v33;
  }

  *(DerivedStorage + 32) = v38;
  v23 = *v11;
  Mutable = CFDictionaryCreateMutable(v23, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    pwdKeyExchangeSenderAOCP_Start_cold_8(&bytes);
LABEL_52:
    v33 = *&bytes.byte0;
LABEL_53:
    v26 = 0;
    v29 = 0;
    v31 = 0;
    Data = a1;
    if (v33)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  v25 = CFDictionaryCreateMutable(v23, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v25)
  {
    pwdKeyExchangeSenderAOCP_Start_cold_7(&bytes);
    goto LABEL_52;
  }

  v26 = v25;
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, @"Y7bdIsnh7", *(DerivedStorage + 88));
  v27 = nS1Q9ljw9esy9(Mutable, v26);
  if (!v27)
  {
    FigCFDictionaryGetInt32IfPresent();
    *(DerivedStorage + 24) = v37;
    Value = CFDictionaryGetValue(v26, @"xNJu5eepP");
    v29 = CFDictionaryCreateMutable(v23, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    CFDictionarySetValue(v29, @"payload", Value);
    CFDictionarySetValue(v29, @"certificate", *(DerivedStorage + 88));
    CFDictionarySetValue(v29, @"key-id", *(DerivedStorage + 96));
    Data = CFPropertyListCreateData(v23, v29, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    CFRetain(a1);
    if (!Data)
    {
      v31 = 0;
      goto LABEL_32;
    }

    v31 = Data;
LABEL_30:
    CFRetain(Data);
LABEL_32:
    v32 = *(DerivedStorage + 168);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __pwdKeyExchangeSenderAOCP_Start_block_invoke;
    v35[3] = &__block_descriptor_60_e5_v8__0l;
    v35[4] = DerivedStorage;
    v35[5] = a1;
    v35[6] = v31;
    v36 = 0;
    dispatch_async(v32, v35);
    if (v29)
    {
      CFRelease(v29);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    v33 = 0;
LABEL_37:
    if (!Mutable)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v33 = v27;
  pwdKeyExchangeSenderAOCP_Start_cold_6();
LABEL_38:
  CFRelease(Mutable);
LABEL_39:
  if (v26)
  {
    CFRelease(v26);
  }

  return v33;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage(const void *a1, const __CFData *a2)
{
  v47 = 0;
  v45 = 0;
  error = 0;
  if (!a1)
  {
    pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_19(&v49);
    return v49;
  }

  if (!a2)
  {
    pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_18(&v49);
    return v49;
  }

  v2 = a1;
  v3 = *MEMORY[0x1E695E480];
  v4 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], a2, 0, 0, &error);
  if (!v4)
  {
    pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_17(&v49);
    return v49;
  }

  v5 = v4;
  FigCFDictionaryGetInt32IfPresent();
  if (!v47)
  {
    pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_16(&v49);
LABEL_59:
    v8 = v49;
    goto LABEL_51;
  }

  Value = CFDictionaryGetValue(v5, @"payload");
  if (!Value)
  {
    pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_15(&v49);
    goto LABEL_59;
  }

  v7 = Value;
  if (v47 == 1667982195)
  {
    FigCFDictionaryGetInt64IfPresent();
    v9 = v45;
    v48 = 0;
    FigPWDKeyExchangeSenderGetCMBaseObject(v2);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 72))
    {
      JE2f6WCx();
      *(DerivedStorage + 72) = 0;
    }

    if (*(DerivedStorage + 80))
    {
      N8pdwAfn();
      *(DerivedStorage + 80) = 0;
    }

    v11 = (FigGetUpTimeNanoseconds() - *(DerivedStorage + 160)) / 0xF4240uLL - v9;
    [sPWDKeyExchangeTelemetryHelper setTime:v11 forKey:*MEMORY[0x1E6960EF0]];
    if ((v11 & 0x8000000000000000) != 0)
    {
      pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_14(&v49);
    }

    else if (v11 >= 0x1389)
    {
      pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_13(&v49);
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v13 = Mutable;
        v14 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v14)
        {
          v15 = v14;
          FigCFDictionarySetInt32();
          v16 = *(DerivedStorage + 88);
          if (v16)
          {
            CFDictionarySetValue(v13, @"Y7bdIsnh7", v16);
            FigCFDictionarySetInt32();
            CFDictionarySetValue(v13, @"yN1lNULD2GD", v7);
            FigCFDictionarySetInt64();
            v17 = strlen(*(DerivedStorage + 64));
            v18 = CFDataCreate(v3, *(DerivedStorage + 64), v17);
            if (v18)
            {
              v19 = v18;
              CFDictionarySetValue(v13, @"HJN6grNt", v18);
              v20 = pC3lVfLuVJLMz(v13, v15);
              if (v20)
              {
                v8 = v20;
                pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_1();
                goto LABEL_46;
              }

              FigCFDictionaryGetInt64IfPresent();
              if (!v48)
              {
                pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_8(&v49);
                goto LABEL_74;
              }

              *(DerivedStorage + 72) = v48;
              v21 = CFDictionaryGetValue(v15, @"yN1lNULD2GD");
              if (!v21)
              {
                pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_7(&v49);
                goto LABEL_74;
              }

              v22 = v21;
              context = objc_autoreleasePoolPush();
              v56 = 0;
              values = 0;
              v55 = 0;
              FigPWDKeyExchangeSenderGetCMBaseObject(v2);
              v23 = CMBaseObjectGetDerivedStorage();
              if (v23[10])
              {
                N8pdwAfn();
                v23[10] = 0;
              }

              v41 = DerivedStorage;
              v24 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (!v24)
              {
                pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_5(&v49);
                v31 = 0;
                v26 = 0;
                v32 = v49;
LABEL_36:
                if (v55)
                {
                  CFRelease(v55);
                }

                if (v26)
                {
                  CFRelease(v26);
                }

                if (values)
                {
                  CFRelease(values);
                }

                DerivedStorage = v41;
                if (v31)
                {
                  CFRelease(v31);
                }

                objc_autoreleasePoolPop(context);
                if (!v32)
                {
                  v8 = 0;
LABEL_46:
                  CFRelease(v19);
                  goto LABEL_47;
                }

                pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_6(&v49);
LABEL_74:
                v8 = v49;
                goto LABEL_46;
              }

              v25 = v24;
              v26 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              cf = v2;
              if (!v26)
              {
                pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_4(&v49);
                v31 = 0;
                v29 = 0;
                v32 = v49;
LABEL_31:
                CFRelease(v25);
                if (v56)
                {
                  CFRelease(v56);
                }

                if (v29)
                {
                  CFRelease(v29);
                }

                v2 = cf;
                goto LABEL_36;
              }

              v39 = v19;
              v27 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              values = v27;
              if (v27)
              {
                v28 = v27;
                FigCFDictionarySetInt();
                FigCFDictionarySetInt();
                v29 = CFStringCreateWithFormat(v3, 0, @"skd://%s", v23[8]);
                CFDictionarySetValue(v28, @"uri", v29);
                CFDataGetBytePtr(v22);
                CFDataGetLength(v22);
                Base64EncodedStringFromBytes = FigCreateBase64EncodedStringFromBytes();
                if (Base64EncodedStringFromBytes)
                {
                  v32 = Base64EncodedStringFromBytes;
                  v31 = 0;
LABEL_80:
                  v19 = v39;
                  goto LABEL_31;
                }

                CFDictionarySetValue(v28, @"spc", v55);
                v31 = CFArrayCreate(v3, &values, 1, MEMORY[0x1E695E9C0]);
                if (v31)
                {
                  CFDictionarySetValue(v26, @"streaming-keys", v31);
                  CFDictionarySetValue(v25, @"fairplay-streaming-request", v26);
                  v32 = FigCFDataCreateWithJSONObject();
                  v19 = v39;
                  if (!v32)
                  {
                    CFRetain(cf);
                    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
                    v34 = v23[22];
                    v49 = MEMORY[0x1E69E9820];
                    v50 = 3221225472;
                    v51 = __FigPWDKeyExchangeSenderAOCP_requestCKCFromServerAfterSendingSPC_block_invoke;
                    v52 = &__block_descriptor_48_e28_v24__0__NSData_8__NSError_16l;
                    v53 = UpTimeNanoseconds;
                    v54 = cf;
                    [v34 requestKeyDataFromServer:v56 completionHandler:&v49];
                  }

                  goto LABEL_31;
                }

                pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_2(&v49);
              }

              else
              {
                pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_3(&v49);
                v31 = 0;
                v29 = 0;
              }

              v32 = v49;
              goto LABEL_80;
            }

            pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_9(&v49);
          }

          else
          {
            pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_10(&v49);
          }

          v8 = v49;
LABEL_47:
          CFRelease(v13);
          CFRelease(v15);
          if (!v8)
          {
            goto LABEL_51;
          }

          goto LABEL_48;
        }

        pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_11(v13, &v49);
      }

      else
      {
        pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_12(&v49);
      }
    }

    v8 = v49;
    if (!v49)
    {
      goto LABEL_51;
    }

LABEL_48:
    CFRetain(v2);
    v35 = *(DerivedStorage + 168);
    v49 = MEMORY[0x1E69E9820];
    v50 = 3221225472;
    v51 = __FigPWDKeyExchangeSenderAOCP_createSenderSPCAndProcessCKC_block_invoke;
    v52 = &__block_descriptor_44_e5_v8__0l;
    v53 = v2;
    LODWORD(v54) = v8;
    v36 = &v49;
LABEL_50:
    dispatch_async(v35, v36);
    goto LABEL_51;
  }

  if (v47 != 1919251058)
  {
    v8 = FigSignalErrorAtGM();
    FigPWDKeyExchangeSenderGetCMBaseObject(v2);
    v37 = CMBaseObjectGetDerivedStorage();
    CFRetain(v2);
    v35 = *(v37 + 168);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_block_invoke;
    block[3] = &__block_descriptor_44_e5_v8__0l;
    block[4] = v2;
    v44 = v8;
    v36 = block;
    goto LABEL_50;
  }

  v8 = *CFDataGetBytePtr(Value);
LABEL_51:
  CFRelease(v5);
  return v8;
}

void FigPWDKeyExchangeSenderAOCP_callCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  FigPWDKeyExchangeSenderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[18])
  {
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v8)
    {
      FigPWDKeyExchangeSenderAOCP_callCallback_cold_1();
      if (!a4)
      {
        return;
      }

      goto LABEL_13;
    }

    if (a3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = 0;
    if (a3)
    {
LABEL_4:
      v9 = DerivedStorage[17];
      if (v9)
      {
        v9(v8, a3);
      }

      goto LABEL_10;
    }
  }

  v10 = DerivedStorage[15];
  if (v10 && v10(v8, a2))
  {
    FigSignalErrorAtGM();
  }

LABEL_10:
  if (v8)
  {
    CFRelease(v8);
  }

  if (a4)
  {
LABEL_13:
    [sPWDKeyExchangeTelemetryHelper setResultCode:a3 forKey:*MEMORY[0x1E6960EE0]];
    v11 = sPWDKeyExchangeTelemetryHelper;

    [v11 sendTelemetry];
  }
}

CFMutableDictionaryRef OUTLINED_FUNCTION_1_155()
{

  return CFDictionaryCreateMutable(0, 0, v0, v1);
}

uint64_t FigPictureCollectionGetClassID()
{
  if (_MergedGlobals_105 != -1)
  {
    FigPictureCollectionGetClassID_cold_1();
  }

  return qword_1ED4CB6C0;
}

uint64_t FigPictureCollectionGetClassIDCallback()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPictureCollectionGetTypeID()
{
  if (_MergedGlobals_105 != -1)
  {
    FigPictureCollectionGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigFairPlayCPECryptorCreate(const void *a1, const void *a2, int a3, const opaqueCMFormatDescription *a4, const void *a5, const void *a6, dispatch_queue_t *a7, CFTypeRef *a8)
{
  v50 = *MEMORY[0x1E69E9840];
  v44 = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v13 = 4294955146;
  if (!a1)
  {
    goto LABEL_51;
  }

  if (!a3)
  {
    goto LABEL_51;
  }

  if (!a4)
  {
    goto LABEL_51;
  }

  if (!a5)
  {
    goto LABEL_51;
  }

  v14 = a8;
  if (!a8)
  {
    goto LABEL_51;
  }

  FigCPEFairPlayCryptorGetClassID();
  IsSkipEncrypted = CMDerivedObjectCreate();
  if (IsSkipEncrypted)
  {
    goto LABEL_49;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v13 = 4294955145;
    goto LABEL_51;
  }

  v17 = DerivedStorage;
  if (a2)
  {
    v18 = CFRetain(a2);
  }

  else
  {
    v18 = 0;
  }

  *v17 = v18;
  *(v17 + 8) = CFRetain(a1);
  *(v17 + 16) = a3;
  *(v17 + 24) = CFRetain(a5);
  if (a6)
  {
    v19 = CFRetain(a6);
  }

  else
  {
    v19 = 0;
  }

  *(v17 + 32) = v19;
  if ((a3 & 0xD) == 0)
  {
    goto LABEL_40;
  }

  number[0] = 0;
  *valuePtr = 0;
  v20 = *v17;
  v21 = *(v17 + 8);
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v22)
  {
    if (!v22(v21, 0x1F0B529B8, v20, number))
    {
      CFNumberGetValue(number[0], kCFNumberSInt32Type, valuePtr);
      if (number[0])
      {
        CFRelease(number[0]);
      }
    }
  }

  *number = 0u;
  v49 = 0u;
  LegacySinfFromSinfExtensions = FigFairPlayGetLegacySinfFromSinfExtensions(*(v17 + 24));
  ExtendedSinfFromSinfExtensions = FigFairPlayGetExtendedSinfFromSinfExtensions(*(v17 + 24));
  DPInfoFromSinfExtensions = FigFairPlayGetDPInfoFromSinfExtensions(*(v17 + 24));
  if (LegacySinfFromSinfExtensions)
  {
    number[1] = CFDataGetBytePtr(LegacySinfFromSinfExtensions);
    Length = CFDataGetLength(LegacySinfFromSinfExtensions);
  }

  else
  {
    Length = 0;
    number[1] = 0;
  }

  LODWORD(number[0]) = Length;
  if (ExtendedSinfFromSinfExtensions)
  {
    *(&v49 + 1) = CFDataGetBytePtr(ExtendedSinfFromSinfExtensions);
    v27 = CFDataGetLength(ExtendedSinfFromSinfExtensions);
  }

  else
  {
    v27 = 0;
    *(&v49 + 1) = 0;
  }

  LODWORD(v49) = v27;
  if ((a3 & 5) == 0)
  {
    goto LABEL_40;
  }

  v28 = FigCPEFairPlayProtectorCheckOutCryptRef(a1, a5);
  *(v17 + 40) = v28;
  if (v28)
  {
    goto LABEL_40;
  }

  CMFormatDescriptionGetMediaType(a4);
  if (*(v17 + 40))
  {
    goto LABEL_40;
  }

  *valuePtr = 0;
  v29 = *(v17 + 32);
  if (!v29)
  {
    if (LegacySinfFromSinfExtensions | ExtendedSinfFromSinfExtensions)
    {
      qdrn6();
    }

    else
    {
      if (!DPInfoFromSinfExtensions)
      {
        v13 = 0;
        goto LABEL_37;
      }

      CFDataGetBytePtr(DPInfoFromSinfExtensions);
      CFDataGetLength(DPInfoFromSinfExtensions);
      NOAHabXy();
    }

    v13 = FAIRPLAY_CALL_LOG(v33);
    goto LABEL_37;
  }

  v43 = 0;
  Value = CFDictionaryGetValue(v29, @"SessionID");
  CFNumberGetValue(Value, kCFNumberSInt64Type, &v43);
  v31 = CFDictionaryGetValue(*(v17 + 32), @"PlayInfo");
  if (v31)
  {
    v32 = v31;
    CFDataGetBytePtr(v31);
    CFDataGetLength(v32);
  }

  NQ7ggq70Owbvqj8qbExsJ5Hw();
  v13 = FAIRPLAY_CALL_LOG(v34);
  v14 = a8;
LABEL_37:
  if (*valuePtr)
  {
    *(v17 + 40) = FigCFKBCryptRefCreate(*MEMORY[0x1E695E480], *valuePtr);
  }

  if (v13)
  {
    goto LABEL_51;
  }

LABEL_40:
  IsSkipEncrypted = FigFairPlayIsSkipEncrypted(*(v17 + 24), (v17 + 49));
  if (IsSkipEncrypted || *(v17 + 49) && (IsSkipEncrypted = FigFairPlayGetSkipParametersFromSinf(*(v17 + 24), (v17 + 52)), IsSkipEncrypted))
  {
LABEL_49:
    v13 = IsSkipEncrypted;
    goto LABEL_51;
  }

  v35 = a7;
  if (a7)
  {
    v35 = CFRetain(a7);
  }

  *(v17 + 80) = v35;
  FigCPEExternalProtectionMonitorBeginMonitoring(v35);
  CMNotificationCenterGetDefaultLocalCenter();
  v13 = FigNotificationCenterAddWeakListener();
  if (!v13)
  {
    *v14 = v44;
    v44 = 0;
    return FigFairPlayMapFairPlayErrorToCPEError(v13);
  }

LABEL_51:
  if (v44)
  {
    CFRelease(v44);
  }

  if (dword_1EAF176B0)
  {
    LODWORD(v43) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v38 = v43;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
    }

    else
    {
      v39 = v38 & 0xFFFFFFFE;
    }

    if (v39)
    {
      *valuePtr = 136315394;
      *&valuePtr[4] = "FigFairPlayCPECryptorCreate";
      v46 = 1024;
      v47 = v13;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigFairPlayMapFairPlayErrorToCPEError(v13);
}

uint64_t ExternalProtectionStatusChangedCallback_1()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t FigFairPlayCPELimitedCryptorCreate(uint64_t a1, const void *a2, void *a3)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a3)
  {
    FigCPEFairPlayCryptorGetClassID();
    v6 = CMDerivedObjectCreate();
    if (!v6)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v8 = DerivedStorage;
        if (a2)
        {
          v9 = CFRetain(a2);
        }

        else
        {
          v9 = 0;
        }

        *v8 = v9;
        v6 = 0;
        v8[1] = FigCFKBCryptRefCreate(*MEMORY[0x1E695E480], a1);
        *a3 = 0;
        return FigFairPlayMapFairPlayErrorToCPEError(v6);
      }

      v6 = 4294955145;
    }
  }

  else
  {
    v6 = 4294955146;
  }

  if (dword_1EAF176B0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigFairPlayMapFairPlayErrorToCPEError(v6);
}

uint64_t FigFairPlayCPELimitedCryptorCreateWithExternalProtectionMethods(uint64_t a1, int a2, const void *a3, void *a4)
{
  v6 = FigFairPlayCPELimitedCryptorCreate(a1, a3, a4);
  v7 = v6;
  if (a4 && !v6)
  {
    *(CMBaseObjectGetDerivedStorage() + 24) = a2;
  }

  return v7;
}

uint64_t FigFairPlayCPECryptorEqual()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || !v1)
  {
    return (DerivedStorage | v1) == 0;
  }

  result = FigCFEqual();
  if (result)
  {
    result = FigCFEqual();
    if (result)
    {
      return FigCFEqual() != 0;
    }
  }

  return result;
}

uint64_t FigFairPlayCPECryptorInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    v11 = 0;
    v2 = *DerivedStorage;
    if (v2)
    {
      CFRelease(v2);
      *v1 = 0;
    }

    if (v1[5])
    {
      if (FigFairPlayGetSinfExtensionType(v1[3], &v11))
      {
        v3 = 0;
      }

      else
      {
        v3 = v11 == 2;
      }

      if (v3)
      {
        FigCPEFairPlayProtectorCheckInCryptRef(v1[1], v1[3], v1[5]);
      }

      v4 = v1[5];
      if (v4)
      {
        CFRelease(v4);
        v1[5] = 0;
      }
    }

    *(v1 + 48) = 0;
    v5 = v1[3];
    if (v5)
    {
      CFRelease(v5);
      v1[3] = 0;
    }

    v6 = v1[4];
    if (v6)
    {
      CFRelease(v6);
      v1[4] = 0;
    }

    if (v1[10])
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigCPEExternalProtectionMonitorEndMonitoring(v1[10]);
      v7 = v1[10];
      if (v7)
      {
        CFRelease(v7);
        v1[10] = 0;
      }
    }

    v8 = v1[11];
    if (v8)
    {
      CFRelease(v8);
      v1[11] = 0;
    }

    v9 = v1[1];
    if (v9)
    {
      CFRelease(v9);
      v1[1] = 0;
    }
  }

  return 0;
}

__CFString *FigFairPlayCPECryptorCopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 0;
  }

  v1 = DerivedStorage;
  Mutable = CFStringCreateMutable(*DerivedStorage, 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigFPCPECryptor: protectorParent<%@> >", v1[1]);
  }

  return v3;
}

uint64_t FigFairPlayCPECryptorDecryptSample(uint64_t a1, OpaqueCMBlockBuffer *a2, const void *a3)
{
  v6 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return DecryptCommon(DerivedStorage, a2, &v6);
}

uint64_t FigFairPlayCPECryptorDecryptSampleWithFormat(uint64_t a1, OpaqueCMBlockBuffer *a2, const void *a3)
{
  v6 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return DecryptCommon(DerivedStorage, a2, &v6);
}

uint64_t FigFairPlayCPELimitedCryptorInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    v2 = *DerivedStorage;
    if (v2)
    {
      CFRelease(v2);
      *v1 = 0;
    }

    v3 = v1[1];
    if (v3)
    {
      CFRelease(v3);
      v1[1] = 0;
    }

    v4 = v1[2];
    if (v4)
    {
      CFRelease(v4);
      v1[2] = 0;
    }
  }

  return 0;
}

void OUTLINED_FUNCTION_1_156(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v22 - 232) = a1;
  *(v22 - 204) = 4;
  *(v22 - 200) = a8;
  *(v22 - 192) = a7;
  *(v22 - 184) = a5;
  *(v22 - 176) = a7;
  *(v22 - 156) = 0;
  *(v22 - 152) = &a22;
  *(v22 - 144) = 16;
  *(v22 - 116) = 0;

  LGokLiStr(v22 - 240);
}

uint64_t OUTLINED_FUNCTION_2_149(OpaqueCMBlockBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{

  return CMBlockBufferGetDataPointer(a1, 0, 0, 0, a5);
}

void OUTLINED_FUNCTION_3_124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v29[6] = 0u;
  v29[7] = 0u;
  v29[4] = 0u;
  v29[5] = 0u;
  v29[2] = 0u;
  v29[3] = 0u;
  *v29 = 0u;
  v29[1] = 0u;

  bzero(&a29, 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_4_119(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CMBlockBufferRef *blockBufferOut, uint64_t a10, uint64_t a11, uint64_t a12, CMBlockBufferRef a13, size_t dataLength)
{
  v16 = dataLength;
  v17 = dataLength;

  return CMBlockBufferCreateWithMemoryBlock(v14, 0, v16, v14, 0, 0, v17, 1u, &a13);
}

uint64_t OUTLINED_FUNCTION_7_77(CMBlockBufferRef sourceBuffer, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CMBlockBufferRef blockBufferOut)
{

  return CMBlockBufferCreateContiguous(v16, sourceBuffer, v16, 0, 0, 0, 0, &blockBufferOut);
}

uint64_t OUTLINED_FUNCTION_9_59(int a1)
{
  result = 0;
  *v1 = a1;
  return result;
}

CFDataRef OUTLINED_FUNCTION_10_57@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, UInt8 bytes)
{
  *v23 = *(v22 + 116);

  return CFDataCreate(v24, &bytes, 24 * a1);
}

uint64_t OUTLINED_FUNCTION_11_60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *v13 = a13;
  *v14 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_55()
{

  return FigH264Bridge_GetSPSFromAVCC();
}

uint64_t OUTLINED_FUNCTION_13_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  return MEMORY[0x1EEDBD410](v11, a1, 0, va1, va);
}

uint64_t OUTLINED_FUNCTION_14_51(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, size_t totalLengthOut, char *dataPointerOut, CMBlockBufferRef theBuffer)
{
  v17 = theBuffer;

  return CMBlockBufferGetDataPointer(v17, 0, 0, &totalLengthOut, &dataPointerOut);
}

uint64_t OUTLINED_FUNCTION_15_47()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_16_45@<X0>(uint64_t a1@<X8>)
{
  result = 0;
  *v1 = a1;
  return result;
}

CFIndex OUTLINED_FUNCTION_17_40()
{

  return CFDataGetLength(v0);
}

uint64_t FigAudioSessionCreateWithCMSessionAndMXSession(uint64_t a1, const void *a2, const void *a3, void *a4)
{
  if (_os_feature_enabled_impl())
  {
    FigAudioSessionCreateWithCMSessionAndMXSession_cold_5(&theString);
    return theString;
  }

  if (!a2)
  {
    FigAudioSessionCreateWithCMSessionAndMXSession_cold_4(&theString);
    return theString;
  }

  if (!a3)
  {
    FigAudioSessionCreateWithCMSessionAndMXSession_cold_3(&theString);
    return theString;
  }

  if (!a4)
  {
    FigAudioSessionCreateWithCMSessionAndMXSession_cold_2(&theString);
    return theString;
  }

  MEMORY[0x19A8D3660](&FigAudioSessionCreateWithCMSessionAndMXSession_sInitOnce, audioSessionMXSession_initOnce);
  if (!_MergedGlobals_106 || !qword_1ED4CB6D0 || !qword_1ED4CB6D8)
  {
    FigAudioSessionCreateWithCMSessionAndMXSession_cold_1(&theString);
    return theString;
  }

  FigAudioSessionGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = CFRetain(a2);
  DerivedStorage[1] = CFRetain(a3);
  CMNotificationCenterGetDefaultLocalCenter();
  v9 = FigNotificationCenterAddWeakListener();
  if (v9)
  {
    return v9;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v7 = FigNotificationCenterAddWeakListener();
  if (v7)
  {
    return v7;
  }

  CMBaseObjectGetDerivedStorage();
  theString = 0;
  v10 = 0;
  *a4 = 0;
  return v10;
}

CFMutableDictionaryRef audioSessionMXSession_initOnce()
{
  FigKTraceInit();
  qword_1ED4CB6D8 = FigSimpleMutexCreate();
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  qword_1ED4CB6D0 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreateMutable(v0, 0, v1, v2);
  _MergedGlobals_106 = result;
  return result;
}

uint64_t FigAudioSessionCreateUsingPrimaryCMSessionForAuditToken(uint64_t a1, uint64_t a2, void *a3)
{
  if (AudioSessionGetPrimaryAudioSessionIDForAuditToken())
  {
    v5 = AudioSessionCopyCMSessionForSessionID();
    if (v5)
    {
      v6 = v5;
      v7 = FigAudioSessionCreateWithCMSession(a1, v5, a3);
      CFRelease(v6);
      return v7;
    }

    else
    {
      FigAudioSessionCreateUsingPrimaryCMSessionForAuditToken_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    FigAudioSessionCreateUsingPrimaryCMSessionForAuditToken_cold_2(&v10);
    return v10;
  }
}

uint64_t FigAudioSessionCreateWithMXSessionSiblingForFigAudioSession(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  cf = 0;
  if (!a2)
  {
    return 4294948075;
  }

  v7 = *(CMBaseObjectGetVTable() + 16);
  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = v8(a2, @"FAS_AudioSessionID", a1, &cf);
      if (v9)
      {
        v12 = v9;
      }

      else
      {
        FigCFNumberGetSInt32();
        v10 = AudioSessionCopyCMSessionForSessionID();
        if (v10)
        {
          v11 = v10;
          v12 = FigAudioSessionCreateWithCMSession(a1, v10, a4);
          CFRelease(v11);
        }

        else
        {
          FigAudioSessionCreateWithMXSessionSiblingForFigAudioSession_cold_1(&v15);
          v12 = v15;
        }
      }
    }

    else
    {
      v12 = 4294948071;
    }
  }

  else
  {
    v12 = 4294948075;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

void audioSessionMXSession_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t audioSessionMXSession_CopyResolvedConfigurationForProperty(uint64_t a1, void *a2, uint64_t a3, __CFDictionary **a4)
{
  CMBaseObjectGetDerivedStorage();
  MXSessionPropertyForResolvedFigAudioSessionPropertyInternal = FigAudioSessionGetMXSessionPropertyForResolvedFigAudioSessionPropertyInternal(a2);
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  if (MXSessionPropertyForResolvedFigAudioSessionPropertyInternal || FigCFEqual() || FigCFEqual())
  {
    IsAvailable = MXSessionCopyProperty();
LABEL_9:
    v11 = IsAvailable;
    goto LABEL_10;
  }

  if (FigCFEqual())
  {
    v13 = a1;
    v14 = a3;
    v15 = 1836019574;
LABEL_23:
    IsAvailable = audioSessionMXSession_CopySpatializationCapabilities(v13, v14, v15, a4);
    goto LABEL_9;
  }

  if (FigCFEqual())
  {
    v13 = a1;
    v14 = a3;
    v15 = 1936684398;
    goto LABEL_23;
  }

  if (FigCFEqual())
  {
    IsAvailable = audioSessionMXSession_copyNeroInformationDictionary(a1, a3, a4);
    goto LABEL_9;
  }

  if (FigCFEqual())
  {
    IsAvailable = audioSessionMXSession_copyAudioDeviceIsAvailable(a1, a4);
    goto LABEL_9;
  }

  v11 = 4294948074;
LABEL_10:
  if (*v9 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  return v11;
}

uint64_t audioSessionMXSession_CopyRequestedConfigurationForProperty(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MXSessionPropertyForRequestedFigAudioSessionPropertyInternal = FigAudioSessionGetMXSessionPropertyForRequestedFigAudioSessionPropertyInternal(a2);
  v8 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  if (MXSessionPropertyForRequestedFigAudioSessionPropertyInternal || FigCFEqual() || FigCFEqual())
  {
    v9 = MXSessionCopyProperty();
  }

  else if (FigCFEqual())
  {
    v11 = *(DerivedStorage + 8);
    if (v11)
    {
      v11 = CFRetain(v11);
    }

    v9 = 0;
    *a4 = v11;
  }

  else
  {
    v9 = 4294948074;
  }

  if (*v8 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  return v9;
}

uint64_t audioSessionMXSession_CopyCMSessionProperty(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  v4 = CMSessionCopyProperty();
  if (*v3 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  return v4;
}

uint64_t audioSessionMXSession_SetCMSessionProperty(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  v4 = CMSessionSetProperty();
  if (*v3 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  return v4;
}

uint64_t audioSessionMXSession_CopyMXSessionProperty(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  v4 = MXSessionCopyProperty();
  if (*v3 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  return v4;
}

uint64_t audioSessionMXSession_SetMXSessionProperty(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  v4 = MXSessionSetProperty();
  if (*v3 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  return v4;
}

uint64_t audioSessionMXSession_Activate()
{
  CMBaseObjectGetDerivedStorage();
  v0 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v1 = CMSessionBeginInterruption();
  if (*v0 == 1)
  {
    kdebug_trace();
  }

  return v1;
}

uint64_t audioSessionMXSession_Deactivate()
{
  CMBaseObjectGetDerivedStorage();
  v0 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (FigCFDictionaryGetBooleanIfPresent())
  {
    v1 = CMSessionEndInterruption_WithInterruptionNotification();
  }

  else
  {
    v1 = CMSessionEndInterruption();
  }

  v2 = v1;
  if (*v0 == 1)
  {
    kdebug_trace();
  }

  return v2;
}

uint64_t audioSessionMXSession_CopyMXSessionPropertiesAndErrors(uint64_t a1, const __CFArray *a2, uint64_t *a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  v7 = MEMORY[0x1E695FF58];
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    v9 = Count;
    if (*v7 != 1)
    {
      goto LABEL_11;
    }

    if (Count >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
      if (ValueAtIndex)
      {
        CFHash(ValueAtIndex);
      }

      if (v9 != 1)
      {
        v12 = CFArrayGetValueAtIndex(a2, 1);
        if (v12)
        {
          CFHash(v12);
        }

        if (v9 < 3)
        {
          v9 = 2;
        }

        else
        {
          v16 = CFArrayGetValueAtIndex(a2, 2);
          if (v16)
          {
            CFHash(v16);
          }
        }
      }
    }

    goto LABEL_10;
  }

  v9 = 0;
  if (*MEMORY[0x1E695FF58] == 1)
  {
LABEL_10:
    kdebug_trace();
  }

LABEL_11:
  *a3 = MXSessionCopyProperties();
  if (*v7 == 1)
  {
    if (v9 >= 4)
    {
      v11 = CFArrayGetValueAtIndex(a2, 3);
      if (v11)
      {
        CFHash(v11);
      }

      if (v9 != 4)
      {
        v13 = CFArrayGetValueAtIndex(a2, 4);
        if (v13)
        {
          CFHash(v13);
        }

        if (v9 >= 6)
        {
          v14 = CFArrayGetValueAtIndex(a2, 5);
          if (v14)
          {
            CFHash(v14);
          }
        }
      }
    }

    kdebug_trace();
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

uint64_t audioSessionMXSession_copyNeroInformationDictionary(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  BOOLean[1] = 0;
  if (a3)
  {
    v4 = CMSessionCopyProperty();
    if (!v4)
    {
      v5 = 0;
      *a3 = 0;
      return v5;
    }

    v5 = v4;
  }

  else
  {
    audioSessionMXSession_copyNeroInformationDictionary_cold_1(BOOLean);
    v5 = LODWORD(BOOLean[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

const void *FigRCLCopyCFType(CFDictionaryRef theDict, __CFString *key)
{
  if (gStorebagOverrideDefaults)
  {
    v4 = CFPreferencesCopyAppValue(key, @"com.apple.coremedia");
  }

  else
  {
    if (!theDict)
    {
      return 0;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (!Value)
    {
      v5 = 0;
      if (theDict)
      {
        goto LABEL_4;
      }

      return v5;
    }

    v4 = CFRetain(Value);
  }

  v5 = v4;
  if (!theDict)
  {
    return v5;
  }

LABEL_4:
  if (gStorebagOverrideDefaults || !CFDictionaryContainsKey(theDict, @"figTrial"))
  {
    return v5;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v6 = FigCFDictionaryGetValue();

  return FigTrialCopyCFType(v6, key);
}

uint64_t FigRCLGetNumberWithDefault(const __CFDictionary *a1, __CFString *a2)
{
  v2 = FigRCLCopyCFType(a1, a2);
  NumberFromCFTypeWithDefault = FigGetNumberFromCFTypeWithDefault();
  if (v2)
  {
    CFRelease(v2);
  }

  return NumberFromCFTypeWithDefault;
}

uint64_t FigRCLGetLongNumberWithDefault(const __CFDictionary *a1, __CFString *a2)
{
  v2 = FigRCLCopyCFType(a1, a2);
  LongNumberFromCFTypeWithDefault = FigGetLongNumberFromCFTypeWithDefault();
  if (v2)
  {
    CFRelease(v2);
  }

  return LongNumberFromCFTypeWithDefault;
}

double FigRCLGetDoubleWithDefault(const __CFDictionary *a1, __CFString *a2)
{
  v2 = FigRCLCopyCFType(a1, a2);
  FigGetDoubleFromCFTypeWithDefault();
  v4 = v3;
  if (v2)
  {
    CFRelease(v2);
  }

  return v4;
}

const __CFDictionary *FigRCLCopyConfigurationGroupName(CFDictionaryRef theDict)
{
  v1 = theDict;
  if (gStorebagOverrideDefaults)
  {
    v2 = @"overriddenByDefaults";
  }

  else
  {
    if (!theDict)
    {
      return v1;
    }

    Value = CFDictionaryGetValue(theDict, @"configurationGroup");
    if (Value)
    {
      v2 = CFRetain(Value);
    }

    else
    {
      v2 = 0;
    }
  }

  if (!v1 || gStorebagOverrideDefaults || !CFDictionaryContainsKey(v1, @"figTrial"))
  {
    return v2;
  }

  v3 = FigCFDictionaryGetValue();
  v4 = FigTrialCopyExperimentId(v3);
  v1 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return v1;
}

void rcl_InitializeLoader()
{
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  qword_1ED4CB6F8 = malloc_type_calloc(1uLL, 0x70uLL, 0x10E004040338472uLL);
  if (!qword_1ED4CB6F8)
  {
    goto LABEL_26;
  }

  v0 = FigDispatchQueueCreateWithPriority();
  v1 = qword_1ED4CB6F8;
  *qword_1ED4CB6F8 = v0;
  if (!v0)
  {
    goto LABEL_25;
  }

  v2 = FigURLStorageSessionCopyGlobalSession();
  v1 = qword_1ED4CB6F8;
  *(qword_1ED4CB6F8 + 24) = v2;
  if (!v2)
  {
    goto LABEL_25;
  }

  v3 = v2;
  v6 = *v1;
  v4 = v1 + 4;
  v5 = v6;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v7(v3, v5, 0, v4);
  }

  v1 = qword_1ED4CB6F8;
  if (!*(qword_1ED4CB6F8 + 32))
  {
LABEL_25:
    rcl_InitializeLoader_cold_1(v1);
LABEL_26:
    qword_1ED4CB6F8 = 0;
    return;
  }

  *(qword_1ED4CB6F8 + 8) = 0;
  v1[2] = (v1 + 1);
  v8 = MGCopyAnswer();
  if (v8)
  {
    v9 = v8;
    gFRCL_IsInternalOS = CFEqual(v8, @"Internal");
    CFRelease(v9);
  }

  v10 = MGCopyAnswer();
  if (v10)
  {
    v11 = v10;
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], v10, @".");
    if (ArrayBySeparatingStrings)
    {
      v13 = ArrayBySeparatingStrings;
      if (CFArrayGetCount(ArrayBySeparatingStrings) < 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = 0;
        v15 = 24;
        v16 = 1;
        do
        {
          v17 = v15;
          ValueAtIndex = CFArrayGetValueAtIndex(v13, v16 - 1);
          v14 |= CFStringGetIntValue(ValueAtIndex) << v17;
          if (v16 >= CFArrayGetCount(v13))
          {
            break;
          }

          v15 = v17 - 8;
          ++v16;
        }

        while (v17);
      }

      CFRelease(v13);
    }

    else
    {
      v14 = 0;
    }

    _MergedGlobals_107 = v14;
    CFRelease(v11);
  }

  qword_1ED4CB700 = CelestialGetModelSpecificName();
  v19 = MGCopyAnswer();
  if (v19)
  {
    v20 = v19;
    qword_1ED4CB708 = CFRetain(v19);
    CFRelease(v20);
  }

  rcl_InitializeStoreBagContext((qword_1ED4CB6F8 + 40), rcl_InitializeLoader_kFigRemoteConfigurationLoader_PumpStoreBagValues);
  rcl_InitializeStoreBagContext((qword_1ED4CB6F8 + 64), rcl_InitializeLoader_kFigRemoteConfigurationLoader_CRABSStoreBagValues);
  v21 = (qword_1ED4CB6F8 + 88);

  rcl_InitializeStoreBagContext(v21, rcl_InitializeLoader_kFigRemoteConfigurationLoader_AirPlayStoreBagValues);
}

CFTypeRef rcl_InitializeStoreBagContext(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = CFPreferencesCopyAppValue(*a2, @"com.apple.coremedia");
  if (!v6)
  {
    v6 = (gFRCL_IsInternalOS ? v3 : v5);
    if (v6)
    {
      CFRetain(v6);
    }
  }

  *a1 = v6;
  if (v4)
  {
    result = CFRetain(v4);
  }

  else
  {
    result = 0;
  }

  a1[1] = result;
  a1[2] = 0;
  return result;
}

void *rcl_ReleaseConnectionDataList(void **a1)
{
  result = *a1;
  if (result)
  {
    do
    {
      v3 = *result;
      v4 = result[1];
      if (*result)
      {
        v5 = *result;
      }

      else
      {
        v5 = a1;
      }

      v5[1] = v4;
      *v4 = v3;
      rcl_ReleaseConnectionData(result);
      result = *a1;
    }

    while (*a1);
  }

  return result;
}

void rcl_ReleaseConnectionData(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v3)
      {
        v3(v2);
      }

      v4 = a1[3];
      if (v4)
      {
        CFRelease(v4);
      }
    }

    v5 = a1[5];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

void rcl_VersionConfigurationDictApplierFunc(int a1, CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 == CFArrayGetTypeID())
    {

      FigCFArrayApplyFunction();
    }
  }
}

void rcl_ConfigurationGroupMapDictApplierFunc(const void *a1, const void *a2, void *cf)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFDictionaryGetTypeID())
    {

      CFDictionaryReplaceValue(cf, a1, a2);
    }
  }
}

void rcl_ConfigGroupArrayApplierFunc(const void *a1, __CFDictionary *a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a1, @"configurationGroup");
      if (Value)
      {

        CFDictionarySetValue(a2, Value, Value);
      }
    }
  }
}

void OUTLINED_FUNCTION_1_158(dispatch_once_t *a1)
{

  dispatch_once_f(a1, 0, rcl_InitializeLoader);
}

uint64_t OUTLINED_FUNCTION_3_125()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_10_58(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 a19, char a20, os_log_type_t type, int a22)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigAlternateCreationContextCopyMediaGroupLocatorMapForMediaGroupID(CFMutableDictionaryRef *a1, void *a2, const void *a3, void *a4)
{
  cf = 0;
  if (a4)
  {
    v6 = faiu_ensureAlternateCreationContextAndCopyMediaGroupCache(a1, a2, &cf);
    v7 = cf;
    if (!v6)
    {
      FigAlternateCreationContextCopyMediaGroupLocatorMapForMediaGroupID_cold_1(cf, a3, a4);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    FigAlternateCreationContextCopyMediaGroupLocatorMapForMediaGroupID_cold_2(&v10);
    return v10;
  }

  return v6;
}

uint64_t faiu_ensureAlternateCreationContextAndCopyMediaGroupCache(CFMutableDictionaryRef *a1, void *key, CFMutableDictionaryRef *a3)
{
  if (a1)
  {
    Mutable = *a1;
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a1 = Mutable;
      if (!Mutable)
      {
        faiu_ensureAlternateCreationContextAndCopyMediaGroupCache_cold_2(&v12);
        return v12;
      }
    }

    Value = CFDictionaryGetValue(Mutable, key);
    if (Value)
    {
      v8 = Value;
      CFRetain(Value);
    }

    else
    {
      v9 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v9)
      {
        faiu_ensureAlternateCreationContextAndCopyMediaGroupCache_cold_1(&v11);
        return v11;
      }

      v8 = v9;
      CFDictionarySetValue(*a1, key, v9);
    }
  }

  else
  {
    v8 = 0;
  }

  result = 0;
  *a3 = v8;
  return result;
}

uint64_t FigResetDisplaySleepTimerOnBehalfOfSceneWithPID(__CFString *a1, int a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_onceToken != -1)
  {
    FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_cold_1();
  }

  v4 = @"com.apple.coremedia";
  if (a1)
  {
    v4 = a1;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_block_invoke_2;
  block[3] = &unk_1E74924C0;
  block[4] = &v9;
  block[5] = v4;
  v8 = a2;
  dispatch_sync(FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_sAssertionQueue, block);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

dispatch_queue_t __FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_block_invoke()
{
  FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_sActiveAssertions = objc_alloc_init(MEMORY[0x1E695DF90]);
  result = dispatch_queue_create("com.apple.coremedia.displaysleeptimer", 0);
  FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_sAssertionQueue = result;
  return result;
}

void __FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_sActiveAssertions objectForKey:*(a1 + 40)];
  if (!v3)
  {
    v4 = [FigDisplaySleepAssertion alloc];
    v5 = *(a1 + 40);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_block_invoke_3;
    v10 = &__block_descriptor_40_e5_v8__0l;
    v11 = v5;
    v3 = [FigDisplaySleepAssertion initWithReason:v4 queue:"initWithReason:queue:expirationHandler:" expirationHandler:?];
    [FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_sActiveAssertions setObject:v3 forKey:*(a1 + 40)];
    v6 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = [(FigDisplaySleepAssertion *)v3 resetIdleTimerOnBehalfOfSceneWithPID:*(a1 + 48)];
  objc_autoreleasePoolPop(v2);
}

uint64_t figDeferredTransactionClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  gFigDeferredTransactionTypeID = result;
  return result;
}

uint64_t FigDeferredTransactionCreate(uint64_t a1, uint64_t *a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a2)
  {
    v3 = *MEMORY[0x1E695E480];
    if (FigDeferredTransactionGetTypeID_oneTimeOnly != -1)
    {
      FigDeferredTransactionCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      v6 = MEMORY[0x1E695E9C0];
      *(Instance + 56) = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
      Mutable = CFArrayCreateMutable(v3, 0, v6);
      result = 0;
      *(v5 + 64) = Mutable;
      *(v5 + 72) = 0;
      v9 = MEMORY[0x1E6960C70];
      *(v5 + 24) = 0;
      *(v5 + 32) = *v9;
      *(v5 + 48) = *(v9 + 16);
      *a2 = v5;
    }

    else
    {
      FigDeferredTransactionCreate_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    FigDeferredTransactionCreate_cold_3(&v11);
    return v11;
  }

  return result;
}

void fdt_commitTransactionOnMainQueue(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 24))
  {
    if ((FigGetUpTimeNanoseconds() - *(a1 + 24)) / 1000000000.0 > 0.02)
    {
      v3 = CFCopyDescription(a1);
      v14 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (v3)
      {
        CFRelease(v3);
      }
    }
  }

  [MEMORY[0x1E6979518] begin];
  if ((*(a1 + 76) & 1) == 0)
  {
    [MEMORY[0x1E6979518] setDisableActions:1];
  }

  fdt_commitTransactionChanges(a1);
  v5 = [FigDeferredTransactionReleaseTrigger alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __fdt_commitTransactionOnMainQueue_block_invoke;
  v12[3] = &__block_descriptor_40_e5_v8__0l;
  v12[4] = a1;
  v6 = [(FigDeferredTransactionReleaseTrigger *)v5 initWithReleaseBlock:v12];
  v7 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __fdt_commitTransactionOnMainQueue_block_invoke_2;
  v11[3] = &unk_1E7482608;
  v11[4] = v6;
  [MEMORY[0x1E6979518] addCommitHandler:v11 forPhase:5];
  if (*(a1 + 44))
  {
    time = *(a1 + 32);
    Seconds = CMTimeGetSeconds(&time);
    if (Seconds > CACurrentMediaTime())
    {
      [MEMORY[0x1E6979518] setCommitTime:Seconds];
    }
  }

  [MEMORY[0x1E6979518] commit];

  objc_autoreleasePoolPop(v2);
}

uint64_t fdt_commitTransactionChanges(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return 0;
  }

  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = Count;
    LODWORD(v5) = 0;
    for (i = 0; i != v4; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), i);
      v8 = fdt_performTransactionChange(ValueAtIndex);
      if (v5)
      {
        v9 = v5;
      }

      else
      {
        v9 = v8;
      }

      if (v8)
      {
        v5 = v9;
      }

      else
      {
        v5 = v5;
      }
    }
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 56) = 0;
  }

  return v5;
}

uint64_t fdt_performPostCommitChanges(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  LODWORD(v5) = 0;
  for (i = 0; i != v4; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), i);
    v8 = fdt_performTransactionChange(ValueAtIndex);
    if (v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = v8;
    }

    if (v8)
    {
      v5 = v9;
    }

    else
    {
      v5 = v5;
    }
  }

  return v5;
}

uint64_t fdr_createChange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    if (FigDeferredTransactionChangeGetTypeID_oneTimeOnly != -1)
    {
      fdr_createChange_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v9 = Instance;
      result = 0;
      v9[3] = a1;
      v9[4] = a3;
      v9[5] = a2;
      *a4 = v9;
    }

    else
    {
      fdr_createChange_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    fdr_createChange_cold_3(&v12);
    return v12;
  }

  return result;
}

uint64_t fdt_performTransactionChange(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      v1(*(a1 + 40));
      return 0;
    }

    else
    {
      fdt_performTransactionChange_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    fdt_performTransactionChange_cold_2(&v4);
    return v4;
  }
}

uint64_t FigDeferredTransactionSetCommitHostTime(uint64_t a1, __int128 *a2)
{
  if (a1)
  {
    result = 0;
    v6 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v6;
  }

  else
  {
    v8 = v2;
    v9 = v3;
    FigDeferredTransactionSetCommitHostTime_cold_1(&v7);
    return v7;
  }

  return result;
}

double figDeferredTransactionInit(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void figDeferredTransactionFinalize(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *figDeferredTransactionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = Mutable;
  v4 = "wants";
  if (!*(a1 + 72))
  {
    v4 = "doesn't need";
  }

  if (*(a1 + 16))
  {
    v5 = "committed";
  }

  else
  {
    v5 = "pending";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigDeferredTransaction %p, %s CATransaction, is %s", a1, v4, v5);
  CFStringAppend(v3, @"\nChanges:\n");
  v6 = *(a1 + 56);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), i);
        v11 = CFCopyDescription(ValueAtIndex);
        CFStringAppend(v3, v11);
        CFStringAppend(v3, @"\n");
        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  CFStringAppend(v3, @"\nPost commit changes:\n");
  v12 = *(a1 + 64);
  if (v12)
  {
    v13 = CFArrayGetCount(v12);
    if (v13 >= 1)
    {
      v14 = v13;
      for (j = 0; j != v14; ++j)
      {
        v16 = CFArrayGetValueAtIndex(*(a1 + 64), j);
        v17 = CFCopyDescription(v16);
        CFStringAppend(v3, v17);
        CFStringAppend(v3, @"\n");
        if (v17)
        {
          CFRelease(v17);
        }
      }
    }
  }

  CFStringAppendFormat(v3, 0, @">");
  return v3;
}

void __fdt_commitTransactionOnMainQueue_block_invoke(uint64_t a1)
{
  fdt_performPostCommitChanges(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t figDeferredTransactionChangeClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  gFigDeferredTransactionChangeTypeID = result;
  return result;
}

double figDeferredTransactionChangeInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t figDeferredTransactionChangeFinalize(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    return v1(*(result + 40));
  }

  return result;
}

__CFString *figDeferredTransactionChangeCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigDeferredTransactionChange %p", a1);
  CFStringAppendFormat(Mutable, 0, @"\nunknown caller requesting to\n");
  CFStringAppendFormat(Mutable, 0, @"\n%p", *(a1 + 24));
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t OUTLINED_FUNCTION_1_159@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, uint64_t a3@<X8>, uint64_t a4, ...)
{
  va_start(va, a4);

  return fdr_createChange(a2, a1, a3, va);
}

uint64_t FigVTTStyleBlockCreate(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigVTTNodeGetClassID();
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v3 = FigVTTInitializeNodeBaseStorage(DerivedStorage);
      if (!v3)
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    FigVTTStyleBlockCreate_cold_1(&v6);
    return v6;
  }

  return v3;
}

void figVTTStyleBlock_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  FigVTTReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figVTTStyleBlock_CopyDebugDesc()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"styleblock: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figVTTStyleBlock_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 7;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figVTTStyleBlock_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figVTTStyleBlock_copyChildNodeArray(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 16);
    if (v4)
    {
      v5 = CFRetain(v4);
    }

    else
    {
      v5 = 0;
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    figVTTStyleBlock_copyChildNodeArray_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t figVTTStyleBlock_copyNodeDocumentSerialization(const void *a1, __CFString **a2)
{
  cf = 0;
  theArray = 0;
  if (a2)
  {
    *a2 = 0;
    v4 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v4, 0);
    v6 = Mutable;
    if (Mutable)
    {
      CFStringAppendFormat(Mutable, 0, @"%@\n", @"STYLE");
      v7 = FigVTTNodeCopyChildNodeArray(a1, &theArray);
      if (v7)
      {
LABEL_20:
        v11 = v7;
      }

      else
      {
        for (i = 0; ; ++i)
        {
          Count = theArray;
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
          }

          if (i >= Count)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v7 = FigVTTNodeCopyDocumentSerialization(ValueAtIndex, &cf);
          if (v7)
          {
            goto LABEL_20;
          }

          CFStringAppendFormat(v6, 0, @"%@\n", cf);
        }

        CFStringAppendFormat(v6, 0, @"\n");
        v11 = 0;
        *a2 = v6;
        v6 = 0;
      }
    }

    else
    {
      figVTTStyleBlock_copyNodeDocumentSerialization_cold_1(&v15);
      v11 = v15;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    figVTTStyleBlock_copyNodeDocumentSerialization_cold_2(&v15);
    v6 = 0;
    v11 = v15;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v11;
}

uint64_t figVTTStyleBlock_setChildNodeArray(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  *(DerivedStorage + 16) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t FigMultivariantPlaylistGetTypeID()
{
  v1 = xmmword_1E74924E0;
  if (mvp_getTypeID_once != -1)
  {
    dispatch_once_f(&mvp_getTypeID_once, &v1, spptUtil_registerClass_1);
  }

  return mvp_getTypeID_typeID;
}

uint64_t FigMultivariantPlaylistCreateEmpty(uint64_t a1, void *a2)
{
  if (!a2)
  {
    FigMultivariantPlaylistCreateEmpty_cold_3(&v25);
    return v25;
  }

  FigMultivariantPlaylistGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigMultivariantPlaylistCreateEmpty_cold_2(&v24);
    return v24;
  }

  v4 = Instance;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4[4] = Mutable;
  if (!Mutable)
  {
    v22 = 156;
LABEL_23:
    FigMultivariantPlaylistCreateEmpty_cold_1(v22, v4, &v23);
    return v23;
  }

  v7 = FigGetAllocatorForMedia();
  v8 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4[6] = v8;
  if (!v8)
  {
    v22 = 159;
    goto LABEL_23;
  }

  v9 = FigGetAllocatorForMedia();
  v10 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4[7] = v10;
  if (!v10)
  {
    v22 = 162;
    goto LABEL_23;
  }

  v11 = FigGetAllocatorForMedia();
  v12 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4[5] = v12;
  if (!v12)
  {
    v22 = 165;
    goto LABEL_23;
  }

  v13 = FigGetAllocatorForMedia();
  v14 = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
  v4[8] = v14;
  if (!v14)
  {
    v22 = 168;
    goto LABEL_23;
  }

  v15 = FigGetAllocatorForMedia();
  v16 = CFArrayCreateMutable(v15, 0, MEMORY[0x1E695E9C0]);
  v4[2] = v16;
  if (!v16)
  {
    v22 = 171;
    goto LABEL_23;
  }

  v17 = FigGetAllocatorForMedia();
  v18 = CFArrayCreateMutable(v17, 0, MEMORY[0x1E695E9C0]);
  v4[3] = v18;
  if (!v18)
  {
    v22 = 174;
    goto LABEL_23;
  }

  v19 = FigGetAllocatorForMedia();
  v20 = CFArrayCreateMutable(v19, 0, MEMORY[0x1E695E9C0]);
  v4[9] = v20;
  if (!v20)
  {
    v22 = 177;
    goto LABEL_23;
  }

  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigMultivariantPlaylistAddAlternate(uint64_t a1, void *value)
{
  Mutable = *(a1 + 16);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 16) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, value);
    return 0;
  }

  else
  {
    FigMultivariantPlaylistAddAlternate_cold_1(&v7);
    return v7;
  }
}

void FigMultivariantPlaylistSetAlternates(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigMultivariantPlaylistAddMediaSelection(uint64_t a1, void *value)
{
  Mutable = *(a1 + 24);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 24) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, value);
    return 0;
  }

  else
  {
    FigMultivariantPlaylistAddMediaSelection_cold_1(&v7);
    return v7;
  }
}

void FigMultivariantPlaylistSetMediaSelectionArray(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMultivariantPlaylistSetAudioGroups(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMultivariantPlaylistSetVideoGroups(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMultivariantPlaylistSetSubtitleGroups(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMultivariantPlaylistSetClosedCaptionGroups(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 56);
  *(a1 + 56) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMultivariantPlaylistSetContentSteeringServerURL(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMultivariantPlaylistSetContentSteeringInitPathwayID(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 96);
  *(a1 + 96) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigMultivariantPlaylistAddSessionDataSpecifier(uint64_t a1, void *value)
{
  Mutable = *(a1 + 64);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 64) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, value);
    return 0;
  }

  else
  {
    FigMultivariantPlaylistAddSessionDataSpecifier_cold_1(&v7);
    return v7;
  }
}

uint64_t FigMultivariantPlaylistAddContentKeySpecifier(uint64_t a1, void *value)
{
  Mutable = *(a1 + 72);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 72) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, value);
    return 0;
  }

  else
  {
    FigMultivariantPlaylistAddContentKeySpecifier_cold_1(&v7);
    return v7;
  }
}

void FigMultivariantPlaylistSetPlaylistVariables(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 80);
  *(a1 + 80) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigMediaPlaylistGetTypeID()
{
  v1 = xmmword_1E74924F0;
  if (mp_getTypeID_once != -1)
  {
    dispatch_once_f(&mp_getTypeID_once, &v1, spptUtil_registerClass_1);
  }

  return mp_getTypeID_typeID;
}

uint64_t FigMediaPlaylistCreateEmpty(uint64_t a1, void *a2)
{
  if (!a2)
  {
    FigMediaPlaylistCreateEmpty_cold_3(&v25);
    return v25;
  }

  FigMediaPlaylistGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigMediaPlaylistCreateEmpty_cold_2(&v24);
    return v24;
  }

  v4 = Instance;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  v4[2] = Mutable;
  if (!Mutable)
  {
    v22 = 579;
LABEL_23:
    FigMultivariantPlaylistCreateEmpty_cold_1(v22, v4, &v23);
    return v23;
  }

  v7 = FigGetAllocatorForMedia();
  v8 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  v4[3] = v8;
  if (!v8)
  {
    v22 = 582;
    goto LABEL_23;
  }

  v9 = FigGetAllocatorForMedia();
  v10 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
  v4[4] = v10;
  if (!v10)
  {
    v22 = 585;
    goto LABEL_23;
  }

  v11 = FigGetAllocatorForMedia();
  v12 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  v4[5] = v12;
  if (!v12)
  {
    v22 = 588;
    goto LABEL_23;
  }

  v13 = FigGetAllocatorForMedia();
  v14 = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
  v4[6] = v14;
  if (!v14)
  {
    v22 = 591;
    goto LABEL_23;
  }

  v15 = FigGetAllocatorForMedia();
  v16 = CFArrayCreateMutable(v15, 0, MEMORY[0x1E695E9C0]);
  v4[7] = v16;
  if (!v16)
  {
    v22 = 594;
    goto LABEL_23;
  }

  v17 = FigGetAllocatorForMedia();
  v18 = CFDictionaryCreateMutable(v17, 0, &parsedIndexKeyCallbacks, MEMORY[0x1E695E9E8]);
  v4[27] = v18;
  if (!v18)
  {
    v22 = 597;
    goto LABEL_23;
  }

  v19 = FigGetAllocatorForMedia();
  v20 = CFDictionaryCreateMutable(v19, 0, &parsedIndexKeyCallbacks, MEMORY[0x1E695E9E8]);
  v4[28] = v20;
  if (!v20)
  {
    v22 = 600;
    goto LABEL_23;
  }

  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigMediaPlaylistAddRenditionReportSpecifier(uint64_t a1, void *value)
{
  Mutable = *(a1 + 16);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 16) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, value);
    return 0;
  }

  else
  {
    FigMediaPlaylistAddRenditionReportSpecifier_cold_1(&v7);
    return v7;
  }
}

void FigMediaPlaylistSetRenditionReportSpecifiers(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigMediaPlaylistAddDateRangeSpecifier(uint64_t a1, void *value)
{
  Mutable = *(a1 + 24);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 24) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, value);
    return 0;
  }

  else
  {
    FigMediaPlaylistAddDateRangeSpecifier_cold_1(&v7);
    return v7;
  }
}

void FigMediaPlaylistSetDateRangeSpecifiers(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

uint64_t FigMediaPlaylistAddContentKeySpecifier(uint64_t a1, void *value)
{
  Mutable = *(a1 + 32);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 32) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, value);
    return 0;
  }

  else
  {
    FigMediaPlaylistAddContentKeySpecifier_cold_1(&v7);
    return v7;
  }
}

uint64_t FigMediaPlaylistAddMediaSegmentSpecifier(uint64_t a1, const void *a2)
{
  if (*(a1 + 40) || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 40) = Mutable) != 0))
  {
    LastValue = FigCFArrayGetLastValue();
    if (LastValue)
    {
      v7 = LastValue;
      FigMediaSegmentSpecifierSetNextSegment(LastValue, a2);
      FigMediaSegmentSpecifierSetPreviousSegment(a2, v7);
      FigMediaSegmentSpecifierSetNextSegment(a2, 0);
    }

    if (FigMediaSegmentSpecifierGetDateStamp(a2))
    {
      ++*(a1 + 168);
    }

    CFArrayAppendValue(*(a1 + 40), a2);
    return 0;
  }

  else
  {
    FigMediaPlaylistAddMediaSegmentSpecifier_cold_1(&v9);
    return v9;
  }
}

uint64_t FigMediaPlaylistAddMapSegmentSpecifier(uint64_t a1, const void *a2)
{
  if (*(a1 + 48) || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 48) = Mutable) != 0))
  {
    LastValue = FigCFArrayGetLastValue();
    if (LastValue)
    {
      v7 = LastValue;
      FigMediaSegmentSpecifierSetNextSegment(LastValue, a2);
      FigMediaSegmentSpecifierSetPreviousSegment(a2, v7);
      FigMediaSegmentSpecifierSetNextSegment(a2, 0);
    }

    CFArrayAppendValue(*(a1 + 48), a2);
    return 0;
  }

  else
  {
    FigMediaPlaylistAddMapSegmentSpecifier_cold_1(&v9);
    return v9;
  }
}

uint64_t FigMediaPlaylistAddDateEntryArray(uint64_t a1, void *value)
{
  Mutable = *(a1 + 56);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 56) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, value);
    return 0;
  }

  else
  {
    FigMediaPlaylistAddDateEntryArray_cold_1(&v7);
    return v7;
  }
}

void FigMediaPlaylistSetDateEntryArray(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 56);
  *(a1 + 56) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMediaPlaylistSetParseDate(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 64);
  *(a1 + 64) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMediaPlaylistSetPreloadHint(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 72);
  *(a1 + 72) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMediaPlaylistSetPreloadMapHint(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 80);
  *(a1 + 80) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigMediaPlaylistSetHoldBackDuration(uint64_t result, double a2)
{
  *(result + 104) = a2;
  *(result + 188) = a2 > 0.0;
  return result;
}

uint64_t FigMediaPlaylistSetPartHoldBackDuration(uint64_t result, double a2)
{
  *(result + 112) = a2;
  *(result + 189) = a2 > 0.0;
  return result;
}

uint64_t FigMediaPlaylistSetSkipDeltaBoundary(uint64_t result, double a2)
{
  *(result + 120) = a2;
  *(result + 190) = a2 > 0.0;
  return result;
}

_BYTE *FigMediaPlaylistRemoveContentKeySpecifier(_BYTE *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    FigMediaPlaylistRemoveContentKeySpecifierRemote(result);
    if (*(v3 + 28) && FigContentKeySpecifierGetCryptKeyParsedIndex(a2))
    {
      v4 = *(v3 + 28);
      CryptKeyParsedIndex = FigContentKeySpecifierGetCryptKeyParsedIndex(a2);
      CFDictionaryRemoveValue(v4, CryptKeyParsedIndex);
    }

    result = *(v3 + 4);
    if (result)
    {

      return FigCFArrayRemoveLastElementOfValue();
    }
  }

  return result;
}

uint64_t FigMediaPlaylistRemoveMediaSegmentSpecifier(uint64_t a1, uint64_t a2)
{
  FigMediaPlaylistRemoveMediaSegmentSpecifierRemote(a1);
  PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(a2);
  NextSegment = FigMediaSegmentSpecifierGetNextSegment(a2);
  if (PreviousSegment)
  {
    FigMediaSegmentSpecifierSetNextSegment(PreviousSegment, NextSegment);
  }

  if (NextSegment)
  {
    FigMediaSegmentSpecifierSetPreviousSegment(NextSegment, PreviousSegment);
  }

  result = *(a1 + 40);
  if (result)
  {

    return FigCFArrayRemoveLastElementOfValue();
  }

  return result;
}

uint64_t FigMediaPlaylistRemovePartSegmentSpecifier(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  FigMediaPlaylistRemovePartSegmentSpecifierRemote(a1, a2, a3);

  return FigMediaSegmentSpecifierRemovePartialSegment(a2, a3);
}

uint64_t FigMediaPlaylistRemoveMapSegmentSpecifier(uint64_t a1, uint64_t a2)
{
  FigMediaPlaylistRemoveMapSegmentSpecifierRemote(a1);
  PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(a2);
  NextSegment = FigMediaSegmentSpecifierGetNextSegment(a2);
  if (PreviousSegment)
  {
    FigMediaSegmentSpecifierSetNextSegment(PreviousSegment, NextSegment);
  }

  if (NextSegment)
  {
    FigMediaSegmentSpecifierSetPreviousSegment(NextSegment, PreviousSegment);
  }

  result = *(a1 + 48);
  if (result)
  {

    return FigCFArrayRemoveLastElementOfValue();
  }

  return result;
}

void FigMediaPlaylistSetXPCClientObject(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 232);
  *(a1 + 232) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void mvp_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[10];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[4];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[6];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[7];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[11];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[12];
  if (v12)
  {

    CFRelease(v12);
  }
}

uint64_t spptUtil_registerClass_1(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

void mp_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[9];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[10];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[8];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[27];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[28];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[29];
  if (v13)
  {

    CFRelease(v13);
  }
}

void conduit_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = DerivedStorage[3];
  if (v2)
  {
    v2(*DerivedStorage);
  }

  v3 = v1[8];
  if (v3)
  {
    CFRelease(v3);
    v1[8] = 0;
  }

  v4 = v1[9];
  if (v4)
  {
    CFRelease(v4);
    v1[9] = 0;
  }

  v5 = v1[10];
  if (v5)
  {
    CFRelease(v5);
    v1[10] = 0;
  }

  v6 = v1[13];
  if (v6)
  {
    CFRelease(v6);
    v1[13] = 0;
  }

  v7 = v1[7];
  if (v7)
  {
    dispatch_release(v7);
    v1[7] = 0;
  }
}

uint64_t conduit_copyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"Type"))
  {
    v7 = CFRetain(@"Conduit");
    result = 0;
    *a4 = v7;
  }

  else if (CFEqual(a2, @"displayInfo"))
  {
    v20 = 0;
    value = 0;
    v18 = 0;
    v19 = 0;
    cf = 0;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v10 = *(DerivedStorage + 104);
    if (v10)
    {
      v11 = CFDictionaryGetValue(v10, @"HDRMode");
      FigDisplayModes_BuildColorAndTimingModes(*(DerivedStorage + 88), *(DerivedStorage + 96), *(DerivedStorage + 112), *(DerivedStorage + 116), 0x64u, 0, 0, 0, &v18);
      FigDisplayModes_BuildColorModesFromHDRMode(v11, *(DerivedStorage + 104), 0, 0x64u, &v19);
    }

    else
    {
      FigDisplayModes_BuildColorAndTimingModes(*(DerivedStorage + 88), *(DerivedStorage + 96), *(DerivedStorage + 112), *(DerivedStorage + 116), 0x64u, 0, 0, &v19, &v18);
    }

    if (v19 && v18)
    {
      v12 = *(DerivedStorage + 120);
      if (v12 >= 1)
      {
        FigDisplayModes_CopyTimingModeAppendingPreferredUIScale(v18, v12, &cf);
        v13 = v18;
        v18 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        if (v13)
        {
          CFRelease(v13);
        }
      }

      FigDisplayModes_CreateColorAndTimingModesArraysWithPreferredMode(v19, v18, &value, &v20);
      if (value && v20)
      {
        CFDictionarySetValue(Mutable, @"colorModes", value);
        CFDictionarySetValue(Mutable, @"timingModes", v20);
      }
    }

    CFDictionarySetValue(Mutable, @"displayUUID", *(DerivedStorage + 64));
    v14 = MEMORY[0x1E695E4D0];
    if (!*(DerivedStorage + 113))
    {
      v14 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"rotationSupport", *v14);
    v15 = *(DerivedStorage + 72);
    if (v15)
    {
      CFDictionarySetValue(Mutable, @"displayName", v15);
    }

    v16 = *(DerivedStorage + 80);
    if (v16)
    {
      CFDictionarySetValue(Mutable, @"displayEDID", v16);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (value)
    {
      CFRelease(value);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    result = 0;
    *a4 = Mutable;
  }

  else
  {
    return 4294954512;
  }

  return result;
}

uint64_t conduit_start(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = DerivedStorage[1];
  if (!v6)
  {
    v7 = 0;
    if (!a3)
    {
      return v7;
    }

    goto LABEL_3;
  }

  v7 = v6(*DerivedStorage);
  if (a3)
  {
LABEL_3:
    v8 = v5[7];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __conduit_start_block_invoke;
    v10[3] = &unk_1E7492510;
    v10[4] = a3;
    v11 = v7;
    dispatch_async(v8, v10);
  }

  return v7;
}

uint64_t conduit_stop(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  v5 = DerivedStorage[2];
  if (v5)
  {
    v5(*DerivedStorage);
  }

  if (a2)
  {
    v6 = v4[7];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __conduit_stop_block_invoke;
    block[3] = &unk_1E7492538;
    block[4] = a2;
    dispatch_async(v6, block);
  }

  return 0;
}

uint64_t conduit_pushFrame(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = DerivedStorage[4];
  if (v22)
  {
    v22(*DerivedStorage, a10, a11, a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t conduit_getPropertyAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject(a1);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v10 = v9(CMBaseObject, a2, *MEMORY[0x1E695E480], &v15);
    v9 = v15;
  }

  else
  {
    v10 = 4294954514;
  }

  v11 = *(DerivedStorage + 56);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __conduit_getPropertyAsync_block_invoke;
  v13[3] = &unk_1E7492560;
  v14 = v10;
  v13[4] = a4;
  v13[5] = v9;
  dispatch_async(v11, v13);
  return v10;
}

uint64_t conduit_perform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v6 = DerivedStorage[6];
    if (v6)
    {
      v6(*DerivedStorage);
    }
  }

  if (a4)
  {
    v7 = DerivedStorage[7];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __conduit_perform_block_invoke;
    v9[3] = &unk_1E7492588;
    v9[4] = a4;
    v10 = 0;
    dispatch_async(v7, v9);
  }

  return 0;
}

uint64_t conduit_setDispatchQueue(uint64_t a1, NSObject *global_queue)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!global_queue)
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  dispatch_retain(global_queue);
  v4 = *(DerivedStorage + 56);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(DerivedStorage + 56) = global_queue;
  return 0;
}

uint64_t conduit_shouldDropFrame()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[5];
  if (!v1)
  {
    return 0;
  }

  v2 = *DerivedStorage;

  return v1(v2);
}

void __conduit_getPropertyAsync_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48), *(a1 + 40));
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t rad_ensureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __rad_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E74925B0;
  block[4] = &v3;
  if (rad_ensureClientEstablished_sFigAssetDownloaderRemoteClientSetupOnce != -1)
  {
    dispatch_once(&rad_ensureClientEstablished_sFigAssetDownloaderRemoteClientSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t rad_fillInCreationDictionary(void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, uint64_t a7)
{
  value = 0;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (a2)
  {
    ObjectID = FigAssetXPCRemoteGetObjectID(a2, &value);
    if (ObjectID)
    {
      goto LABEL_18;
    }

    xpc_dictionary_set_uint64(a1, "AssetToken", value);
  }

  ObjectID = FigXPCMessageSetCFURL();
  if (ObjectID || (ObjectID = FigXPCMessageSetCFArray(), ObjectID) || (ObjectID = FigXPCMessageSetCFArray(), ObjectID))
  {
LABEL_18:
    v15 = ObjectID;
    FigXPCRelease();
    if (!MutableCopy)
    {
      return v15;
    }

    goto LABEL_16;
  }

  if (a7)
  {
    v13 = FigStreamingAssetDownloadConfigCopySerializedRepresentation(a7);
    if (v13)
    {
      xpc_dictionary_set_value(a1, "DownloadConfig", v13);
    }
  }

  if (CFDictionaryGetValue(a6, @"AssetDownloaderCreateOption_RetryError"))
  {
    v14 = FigCFCopyCFErrorAsPropertyList();
    CFDictionarySetValue(MutableCopy, @"AssetDownloaderCreateOption_RetryError", v14);
  }

  else
  {
    v14 = 0;
  }

  v15 = FigXPCMessageSetCFDictionary();
  FigXPCRelease();
  if (v14)
  {
    CFRelease(v14);
  }

  if (MutableCopy)
  {
LABEL_16:
    CFRelease(MutableCopy);
  }

  return v15;
}

void __rad_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"AssetDownloader_ServerConnectionDied");
    FigRemote_ShouldConnectToMediaparserdForFileParsing();
    FigRemote_ShouldConnectToMediaplaybackd();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();

    CFRelease(v3);
  }

  else
  {
    __rad_ensureClientEstablished_block_invoke_cold_1(a1);
  }
}

uint64_t rad_deadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 1) = 1;
  return result;
}

void __rad_downloadSuccessCallback_block_invoke(void *a1)
{
  (*(a1[4] + 32))(a1[5], a1[6]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {

    CFRelease(v3);
  }
}

void __rad_downloadFailureCallback_block_invoke(void *a1)
{
  (*(a1[4] + 40))(a1[5], a1[6], a1[7]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    CFRelease(v4);
  }
}

void __rad_loadedTimeRangeChangedCallback_block_invoke(void *a1)
{
  (*(a1[4] + 48))(a1[5], a1[6], a1[7], a1[8], a1[9], a1[10]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[10];
  if (v7)
  {

    CFRelease(v7);
  }
}

void __rad_didResolveMediaSelection_block_invoke(void *a1)
{
  (*(a1[4] + 56))(a1[5], a1[6], a1[7]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {

    CFRelease(v4);
  }
}

void __rad_didFinishDownloadForMediaSelection_block_invoke(void *a1)
{
  (*(a1[4] + 64))(a1[5], a1[6], a1[7]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {

    CFRelease(v4);
  }
}

void __rad_progressUpdateCallback_block_invoke(void *a1)
{
  (*(a1[4] + 80))(a1[5], a1[6], a1[7], a1[8]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {

    CFRelease(v3);
  }
}

void __rad_willDownloadAlternatesCallback_block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 24) >= 2)
  {
    (*(v2 + 88))(a1[5], a1[6], a1[7]);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __rad_didReceiveMetricEventCallback_block_invoke(void *a1)
{
  (*(a1[4] + 112))(a1[5], a1[6], a1[7]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t rad_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    rad_getObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[1])
    {
      rad_getObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_56()
{

  return FigSandboxRegisterURLWithProcessAndCopyRegistration();
}

uint64_t OUTLINED_FUNCTION_13_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return rad_getObjectID(a1, &a10);
}

void OUTLINED_FUNCTION_14_52(NSObject *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, char block, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a10 = v11;
  a11 = a2;

  dispatch_async(a1, &block);
}

uint64_t RegisterSchemeInternal(__CFDictionary *a1, const void *a2, __int128 *a3)
{
  v3 = 0;
  v4 = 4294955146;
  if (a1 && a2 && a3)
  {
    v3 = malloc_type_calloc(1uLL, 0x40uLL, 0x80040A284212CuLL);
    v8 = a3[3];
    v10 = *a3;
    v9 = a3[1];
    v3[2] = a3[2];
    v3[3] = v8;
    *v3 = v10;
    v3[1] = v9;
    if (!CFDictionaryContainsKey(a1, a2))
    {
      CFDictionaryAddValue(a1, a2, v3);
      return 0;
    }

    v4 = 4294955136;
  }

  free(v3);
  return v4;
}

uint64_t FigCPEInitializeWithOptions(const void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED4CB738 != -1)
  {
    FigCPEInitializeWithOptions_cold_1();
  }

  v6 = FigSimpleMutexLock();
  if (qword_1ED4CB748 != -1)
  {
    FigCPEInitializeWithOptions_cold_2(v6);
  }

  Value = CFDictionaryGetValue(qword_1ED4CB740, a1);
  if (qword_1ED4CB738 != -1)
  {
    FigCPEInitializeWithOptions_cold_1();
  }

  FigSimpleMutexUnlock();
  if (!Value)
  {
    return 4294955141;
  }

  v8 = Value[4];
  if (!v8)
  {
    return 4294955141;
  }

  return v8(a2, a3);
}

uint64_t FigCPEUninitialize(const void *a1, uint64_t a2)
{
  if (qword_1ED4CB738 != -1)
  {
    FigCPEInitializeWithOptions_cold_1();
  }

  v4 = FigSimpleMutexLock();
  if (qword_1ED4CB748 != -1)
  {
    FigCPEInitializeWithOptions_cold_2(v4);
  }

  Value = CFDictionaryGetValue(qword_1ED4CB740, a1);
  if (qword_1ED4CB738 != -1)
  {
    FigCPEInitializeWithOptions_cold_1();
  }

  FigSimpleMutexUnlock();
  if (!Value)
  {
    return 4294955141;
  }

  v6 = Value[5];
  if (!v6)
  {
    return 4294955141;
  }

  return v6(a2);
}

uint64_t SchemeRegistrationDictionaryLockInitOnce(uint64_t *a1)
{
  result = FigSimpleMutexCreate();
  *a1 = result;
  return result;
}

uint64_t SchemeRegistrationDictionaryInitOnce(__CFDictionary **a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  v4 = xmmword_1F0AF1CF0;
  v5 = *&off_1F0AF1D00;
  v6 = xmmword_1F0AF1D10;
  v7 = unk_1F0AF1D20;
  RegisterSchemeInternal(Mutable, @"FairPlay", &v4);
  v4 = xmmword_1F0AF1D30;
  v5 = unk_1F0AF1D40;
  v6 = xmmword_1F0AF1D50;
  v7 = unk_1F0AF1D60;
  RegisterSchemeInternal(Mutable, @"com.apple.pkd", &v4);
  v4 = xmmword_1F0AF1D70;
  v5 = unk_1F0AF1D80;
  v6 = xmmword_1F0AF1D90;
  v7 = unk_1F0AF1DA0;
  result = RegisterSchemeInternal(Mutable, @"com.apple.basicAES", &v4);
  *a1 = Mutable;
  return result;
}

CFMutableDictionaryRef InitCPESessionRecordLocations(uint64_t *a1)
{
  *a1 = FigSimpleMutexCreate();
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_4_121(dispatch_once_t *a1)
{

  dispatch_once_f(a1, a1 + 1, InitCPESessionRecordLocations);
}

void OUTLINED_FUNCTION_5_104(const void **values)
{

  CFDictionaryGetKeysAndValues(v1, 0, values);
}

void OUTLINED_FUNCTION_6_92(uint64_t a1, uint64_t a2, void (__cdecl *a3)(void *))
{

  dispatch_once_f(v3 + 1, v3, a3);
}

void OUTLINED_FUNCTION_7_80(uint64_t a1, uint64_t a2, void (__cdecl *a3)(void *))
{

  dispatch_once_f(v3 + 1, v3, a3);
}

const void *FigExportSettingsForExportPreset(void *key)
{
  if (qword_1ED4CB770 == -1)
  {
    if (!key)
    {
      return 0;
    }
  }

  else
  {
    FigExportSettingsForExportPreset_cold_1(key);
    if (!key)
    {
      return 0;
    }
  }

  v2 = _MergedGlobals_109;
  if (!_MergedGlobals_109)
  {
    return 0;
  }

  return CFDictionaryGetValue(v2, key);
}

void figAssetExportSettings_figExportSettingsForExportPresetOnce(CFDictionaryRef *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x19A8D1510](*MEMORY[0x1E695E480], @"com.apple.MediaToolbox", @"AVAssetExportPresetsBase.plist");
  v4 = MEMORY[0x19A8D1510](v2, @"com.apple.MediaToolbox", @"AVAssetExportPresets.plist");
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    FigGetAllocatorForPermanentAllocations();
    FigCFCreateCombinedDictionary();
    CFRelease(v3);
LABEL_8:
    CFRelease(v5);
    return;
  }

  if (v3)
  {
    AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
    *a1 = CFDictionaryCreateCopy(AllocatorForPermanentAllocations, v3);
    CFRelease(v3);
    if (!v5)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v4)
  {
    v8 = FigGetAllocatorForPermanentAllocations();
    *a1 = CFDictionaryCreateCopy(v8, v5);
    goto LABEL_8;
  }
}

double FigExportSettingsCalculateOutputDimensions(double a1, double a2)
{
  CGFloatIfPresent = FigCFDictionaryGetCGFloatIfPresent();
  v5 = FigCFDictionaryGetCGFloatIfPresent();
  if (CGFloatIfPresent)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return 0.0;
  }

  FloatIfPresent = FigCFDictionaryGetFloatIfPresent();
  v8 = FigCFDictionaryGetFloatIfPresent();
  if (FigCFDictionaryGetFloatIfPresent() && a1 * a2 > 0.0)
  {
    v9 = a1 - sqrt(a1 * 0.0 / a2);
    v10 = round((a1 - v9) * 0.25);
    v11 = a2 * v9 / a1;
    a1 = v10 * 4.0;
    a2 = round((a2 - v11) * 0.25) * 4.0;
  }

  if (FloatIfPresent | v8)
  {
    if (FloatIfPresent && a1 >= 1.0 && (v12 = 0.0, a1 > 0.0))
    {
      a2 = round(a2 * 0.0 / a1 * 0.25) * 4.0;
      if (!v8)
      {
        return v12;
      }
    }

    else
    {
      v12 = a1;
      if (!v8)
      {
        return v12;
      }
    }

    if (a2 >= 1.0 && a2 > 0.0)
    {
      return round(v12 * 0.0 / a2 * 0.25) * 4.0;
    }

    return v12;
  }

  return a1;
}

uint64_t FigExportSettingsAverageBitRateForSourceAndExportPreset(uint64_t a1, double a2, double a3, float a4)
{
  v7 = FigExportSettingsCalculateOutputDimensions(a2, a3);
  if (!a1)
  {
    return 0;
  }

  v9 = v7;
  v10 = v8;
  if (qword_1ED4CB780 != -1)
  {
    FigExportSettingsAverageBitRateForSourceAndExportPreset_cold_1(v6);
  }

  if (!qword_1ED4CB778)
  {
    goto LABEL_100;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    if (FigCFEqual())
    {
      v11 = @"AVAssetExportBitRateBasicSquare";
      goto LABEL_16;
    }

    v11 = @"AVAssetExportBitRateBasic";
LABEL_15:
    if (FigCFEqual())
    {
      goto LABEL_16;
    }

LABEL_100:
    FigCFDictionaryGetInt32IfPresent();
    return 0;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    v11 = @"AVAssetExportBitRateHEVCBasic";
    goto LABEL_15;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    v11 = @"AVAssetExportBitRateMVHEVCSquare";
    goto LABEL_16;
  }

  if (FigCFEqual())
  {
    v11 = @"AVAssetExportBitRateYouTubeHD";
    goto LABEL_15;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    if (!FigCFEqual())
    {
      v11 = @"AVAssetExportBitRateMessage";
      goto LABEL_15;
    }

    v11 = @"AVAssetExportBitRateMessageSquare";
    goto LABEL_16;
  }

  if (FigCFEqual())
  {
    v11 = @"AVAssetExportBitRateAVCAnimoji";
    goto LABEL_15;
  }

  if (FigCFEqual() || FigCFEqual())
  {
LABEL_87:
    v11 = @"AVAssetExportBitRateICPL";
    goto LABEL_15;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    if (FigCFEqual())
    {
      v11 = @"AVAssetExportBitRateICPLSquare";
      goto LABEL_16;
    }

    goto LABEL_87;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    goto LABEL_95;
  }

  if (!FigCFEqual() && !FigCFEqual())
  {
    goto LABEL_100;
  }

  if (!FigCFEqual())
  {
LABEL_95:
    v11 = @"AVAssetExportBitRateICPLHEVC";
    goto LABEL_15;
  }

  v11 = @"AVAssetExportBitRateICPLHEVCSquare";
LABEL_16:
  Value = CFDictionaryGetValue(qword_1ED4CB778, v11);
  if (!Value)
  {
    goto LABEL_100;
  }

  v14 = CFDictionaryGetValue(Value, @"BitRateTiers");
  if (!v14)
  {
    goto LABEL_100;
  }

  v15 = v14;
  Count = CFArrayGetCount(v14);
  if (Count < 1)
  {
    goto LABEL_100;
  }

  v17 = Count;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = v9 + 30;
  if (v9 >= -15)
  {
    v21 = v9 + 15;
  }

  v22 = v21 >> 4;
  v23 = v10 + 30;
  if (v10 >= -15)
  {
    v23 = v10 + 15;
  }

  v24 = v22 * (v23 >> 4);
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v15, v20);
    v26 = exportSettings_tierDimension();
    if (!v18)
    {
      goto LABEL_31;
    }

    v28 = v26 + 30;
    if (v26 >= -15)
    {
      v28 = v26 + 15;
    }

    v29 = v28 >> 4;
    v30 = v27 + 30;
    if (v27 >= -15)
    {
      v30 = v27 + 15;
    }

    if (v24 > v29 * (v30 >> 4))
    {
      ++v20;
    }

    else
    {
LABEL_31:
      if (++v20 >= v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = CFArrayGetValueAtIndex(v15, v20);
      }

      v18 = ValueAtIndex;
    }
  }

  while (v20 != v17);
  if (!v18)
  {
    goto LABEL_100;
  }

  FigCFDictionaryGetFloatIfPresent();
  v31 = 0.0;
  if (v19)
  {
    v32 = exportSettings_tierDimension();
    v34 = v32 + 30;
    if (v32 >= -15)
    {
      v34 = v32 + 15;
    }

    v35 = v34 >> 4;
    v36 = v33 + 30;
    if (v33 >= -15)
    {
      v36 = v33 + 15;
    }

    v37 = v35 * (v36 >> 4);
    FigCFDictionaryGetFloatIfPresent();
    v38 = exportSettings_tierDimension();
    v40 = v39;
    FigCFDictionaryGetFloatIfPresent();
    if (v24 <= v37)
    {
      v41 = v38 + 30;
      if (v38 >= -15)
      {
        v41 = v38 + 15;
      }

      v42 = v41 >> 4;
      v43 = v40 + 30;
      if (v40 >= -15)
      {
        v43 = v40 + 15;
      }

      v31 = ((0.0 - 0.0) * ((v24 - v42 * (v43 >> 4)) / (v37 - v42 * (v43 >> 4)))) + 0.0;
    }
  }

  FigCFDictionaryGetFloat32IfPresent();
  FigCFDictionaryGetFloat32IfPresent();
  v44 = (a4 / 0.0);
  if ((a4 / 0.0) >= 0.5)
  {
    v46 = v44 * 0.5 + 0.5;
  }

  else
  {
    v45 = v44 < 0.3;
    v46 = v44 * 3.25 + -0.875;
    if (v45)
    {
      v46 = 0.1;
    }
  }

  v47 = v31 * v46;
  Float32IfPresent = FigCFDictionaryGetFloat32IfPresent();
  v49 = 0.0;
  if (v47 <= 0.0)
  {
    v49 = v47;
  }

  if (Float32IfPresent)
  {
    v47 = v49;
  }

  v50 = FigCFDictionaryGetFloat32IfPresent();
  v51 = 0.0;
  if (v47 >= 0.0)
  {
    v51 = v47;
  }

  if (!v50)
  {
    v51 = v47;
  }

  v12 = v51;
  FigCFDictionaryGetInt32IfPresent();
  return v12;
}

uint64_t FigExportSettingsGetHDRType(const opaqueCMFormatDescription *a1)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965D88]);
  CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965F30]);
  CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965F98]);
  v3 = 1;
  if (MediaSubType <= 1752589104)
  {
    if (MediaSubType > 1685481572)
    {
      if (MediaSubType > 1718908527)
      {
        if (MediaSubType == 1718908528)
        {
          goto LABEL_28;
        }

        v4 = 1751479857;
      }

      else
      {
        if (MediaSubType == 1685481573)
        {
          goto LABEL_28;
        }

        v4 = 1718908520;
      }
    }

    else if (MediaSubType > 1684895095)
    {
      if (MediaSubType == 1684895096)
      {
        goto LABEL_28;
      }

      v4 = 1685481521;
    }

    else
    {
      if (MediaSubType == 1667524657)
      {
        goto LABEL_28;
      }

      v4 = 1667790435;
    }

    goto LABEL_26;
  }

  if (MediaSubType <= 1902405732)
  {
    if (MediaSubType <= 1869117026)
    {
      if (MediaSubType == 1752589105)
      {
        goto LABEL_28;
      }

      v4 = 1836415073;
      goto LABEL_26;
    }

    if (MediaSubType == 1869117027)
    {
      goto LABEL_28;
    }

    v5 = 26673;
    goto LABEL_25;
  }

  if (MediaSubType <= 1902667125)
  {
    if (MediaSubType == 1902405733)
    {
      goto LABEL_28;
    }

    v5 = 28024;
LABEL_25:
    v4 = v5 | 0x71640000;
    goto LABEL_26;
  }

  if (MediaSubType == 1902667126 || MediaSubType == 1902671459)
  {
    goto LABEL_28;
  }

  v4 = 1902998904;
LABEL_26:
  if (MediaSubType != v4)
  {
    v3 = 0;
  }

LABEL_28:
  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600A0]);
  if (v3)
  {
    v7 = Extension;
    if (Extension)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v7) && CFDictionaryGetValue(v7, @"dvvC") && FigCFEqual() && FigCFEqual() && FigCFEqual())
      {
        return 20;
      }
    }
  }

  if ((v3 & 1) == 0)
  {
    if (MediaSubType <= 1634743415)
    {
      if (MediaSubType != 1634742376 && MediaSubType != 1634742888)
      {
        v10 = 13416;
LABEL_45:
        if (MediaSubType != (v10 | 0x61700000))
        {
          goto LABEL_52;
        }
      }
    }

    else if (((MediaSubType - 1634755432) > 0xB || ((1 << (MediaSubType - 104)) & 0x8C1) == 0) && ((MediaSubType - 1634759272) > 6 || ((1 << (MediaSubType - 104)) & 0x51) == 0))
    {
      v10 = 13432;
      goto LABEL_45;
    }
  }

  if (CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6960080]) && CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6960020]) && FigCFEqual())
  {
    return 10;
  }

LABEL_52:
  if (FigCFEqual())
  {
    return 17;
  }

  if (FigCFEqual())
  {
    return 9;
  }

  return 0;
}

const __CFArray *FigExportSettingsGetPreferredFormatDescription(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    if (CFArrayGetCount(result) < 1)
    {
      v2 = 0;
    }

    else
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
        HDRType = FigExportSettingsGetHDRType(ValueAtIndex);
        if (v3 < HDRType)
        {
          v2 = v4;
        }

        if (v3 <= HDRType)
        {
          v3 = HDRType;
        }

        ++v4;
      }

      while (v4 < CFArrayGetCount(v1));
    }

    return CFArrayGetValueAtIndex(v1, v2);
  }

  return result;
}

CFDictionaryRef FigExportSettings_CopyEffectiveColorPropertyForPresetAndInputOutputFormat(CFDictionaryRef theDict, const __CFArray *a2, const __CFDictionary *a3)
{
  v5 = theDict;
  keys[3] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"colorPrimaries");
    Extension = CFDictionaryGetValue(v5, @"transferFunction");
    theDict = CFDictionaryGetValue(v5, @"ycbcrMatrix");
  }

  else
  {
    Extension = 0;
    Value = 0;
  }

  keys[0] = @"colorPrimaries";
  keys[1] = @"transferFunction";
  keys[2] = @"ycbcrMatrix";
  values = 0;
  v25 = 0;
  v26 = 0;
  if (Value && Extension && theDict)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    v5 = CFDictionaryGetValue(v5, @"colorPropertyTiers");
  }

  if (a3 && CFDictionaryGetCount(a3) >= 1)
  {
    Value = CFDictionaryGetValue(a3, @"colorPrimaries");
    Extension = CFDictionaryGetValue(a3, @"transferFunction");
    v10 = CFDictionaryGetValue(a3, @"ycbcrMatrix");
  }

  else if (a2 && CFArrayGetCount(a2) >= 1)
  {
    PreferredFormatDescription = FigExportSettingsGetPreferredFormatDescription(a2);
    Value = CMFormatDescriptionGetExtension(PreferredFormatDescription, *MEMORY[0x1E6965D88]);
    Extension = CMFormatDescriptionGetExtension(PreferredFormatDescription, *MEMORY[0x1E6965F30]);
    v10 = CMFormatDescriptionGetExtension(PreferredFormatDescription, *MEMORY[0x1E6965F98]);
  }

  else
  {
    Value = 0;
    Extension = 0;
    v10 = 0;
  }

  cf = v10;
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v13 = Count;
      Copy = 0;
      v14 = 0;
      allocator = *MEMORY[0x1E695E480];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v14);
        v16 = ValueAtIndex;
        if (Copy)
        {
          CFDictionaryGetValue(ValueAtIndex, @"colorPrimaries");
          CFDictionaryGetValue(v16, @"transferFunction");
          CFDictionaryGetValue(v16, @"ycbcrMatrix");
          if (FigCFEqual() && FigCFEqual() && FigCFEqual())
          {
            CFRelease(Copy);
            v21 = CFRetain(v16);
            Copy = v21;
            if (v21)
            {
              return Copy;
            }

LABEL_31:
            if (!Value)
            {
              return Copy;
            }

            v17 = CFGetTypeID(Value);
            Copy = 0;
            if (v17 != CFStringGetTypeID())
            {
              return Copy;
            }

            if (!Extension)
            {
              return Copy;
            }

            v18 = CFGetTypeID(Extension);
            Copy = 0;
            if (v18 != CFStringGetTypeID() || !cf)
            {
              return Copy;
            }

            v19 = CFGetTypeID(cf);
            v20 = v19 == CFStringGetTypeID();
            theDict = cf;
            if (!v20)
            {
              return 0;
            }

LABEL_7:
            values = Value;
            v25 = Extension;
            v26 = theDict;
            return CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          }
        }

        else
        {
          Copy = CFDictionaryCreateCopy(allocator, ValueAtIndex);
        }

        if (v13 == ++v14)
        {
          goto LABEL_30;
        }
      }
    }
  }

  Copy = 0;
LABEL_30:
  if (!Copy)
  {
    goto LABEL_31;
  }

  return Copy;
}

uint64_t FigExportSettings_GetMaximumBitsPerComponent(CFArrayRef theArray)
{
  v2 = 0;
  v3 = *MEMORY[0x1E695E480];
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v2 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2);
    CMFormatDescriptionGetExtensions(ValueAtIndex);
    if (!FigCFDictionaryGetIntIfPresent())
    {
      MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
      v7 = CVPixelFormatDescriptionCreateWithPixelFormatType(v3, MediaSubType);
      FigCFDictionaryGetIntIfPresent();
      if (v7)
      {
        CFRelease(v7);
      }
    }

    ++v2;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return 0;
}

double exportSettings_tierDimension()
{
  FigCFDictionaryGetCGFloatIfPresent();
  FigCFDictionaryGetCGFloatIfPresent();
  return 0.0;
}

uint64_t figAssetExportSettings_bitRateTableForExportPresetOnce(uint64_t *a1)
{
  result = MEMORY[0x19A8D1510](*MEMORY[0x1E695E480], @"com.apple.MediaToolbox", @"AVExportBitRate.plist");
  *a1 = result;
  return result;
}

uint64_t RegisterFigCPEProtectorType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigCPEProtectorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigCPEProtectorGetClassID_sRegisterFigCPEProtectorTypeOnce, RegisterFigCPEProtectorType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigMetricItemVariantChangeStartEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, void *a14)
{
  ensureMetricEventTrace();
  if (a14)
  {
    FigMetricEventGetClassID();
    v22 = CMDerivedObjectCreate();
    if (!v22)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v24 = FigSimpleMutexCreate();
      *(DerivedStorage + 128) = v24;
      if (v24)
      {
        *DerivedStorage = 1;
        *(DerivedStorage + 8) = 8;
        if (a3)
        {
          v25 = CFRetain(a3);
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          v25 = CFDateCreate(a1, Current);
        }

        *(DerivedStorage + 16) = v25;
        v27 = *a2;
        *(DerivedStorage + 48) = *(a2 + 2);
        *(DerivedStorage + 32) = v27;
        if (a4)
        {
          v28 = CFRetain(a4);
        }

        else
        {
          v28 = 0;
        }

        *(DerivedStorage + 24) = v28;
        if (a5)
        {
          v29 = CFRetain(a5);
        }

        else
        {
          v29 = 0;
        }

        *(DerivedStorage + 56) = v29;
        if (a6)
        {
          v30 = CFRetain(a6);
        }

        else
        {
          v30 = 0;
        }

        *(DerivedStorage + 64) = v30;
        if (a13)
        {
          v31 = CFRetain(a13);
        }

        else
        {
          v31 = 0;
        }

        *(DerivedStorage + 72) = v31;
        *(DerivedStorage + 80) = a7;
        *(DerivedStorage + 88) = a8;
        *(DerivedStorage + 96) = a9;
        *(DerivedStorage + 104) = a10;
        *(DerivedStorage + 112) = a11;
        *(DerivedStorage + 120) = a12;
        if (a7)
        {
          CFRetain(a7);
          a8 = *(DerivedStorage + 88);
        }

        if (a8)
        {
          CFRetain(a8);
        }

        v32 = *(DerivedStorage + 96);
        if (v32)
        {
          CFRetain(v32);
        }

        v33 = *(DerivedStorage + 104);
        if (v33)
        {
          CFRetain(v33);
        }

        v34 = *(DerivedStorage + 112);
        if (v34)
        {
          CFRetain(v34);
        }

        v35 = *(DerivedStorage + 120);
        if (v35)
        {
          CFRetain(v35);
        }

        v22 = 0;
        *a14 = 0;
      }

      else
      {
        return FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    FigMetricItemVariantChangeStartEventCreateInternal_cold_1(&v37);
    return v37;
  }

  return v22;
}

uint64_t meivcs_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[7];
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = DerivedStorage[8];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[2];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[3];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[9];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[10];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[11];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[12];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[13];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = DerivedStorage[14];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = DerivedStorage[15];
  if (v11)
  {
    CFRelease(v11);
  }

  return FigSimpleMutexDestroy();
}

uint64_t meivcs_setImmutable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 0;

  return FigSimpleMutexUnlock();
}

uint64_t meivcs_isMutable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v1;
}

CFTypeRef meivcs_copySessionID()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    v2 = CFRetain(v1);
  }

  else
  {
    v2 = 0;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t meivcs_setSessionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v5 = 0;
  }

  else
  {
    meivcs_setSessionID_cold_1(&v7);
    v5 = v7;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t meivcs_getMediaTime@<X0>(uint64_t a1@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a1 = *(DerivedStorage + 32);
  *(a1 + 16) = *(DerivedStorage + 48);

  return FigSimpleMutexUnlock();
}

uint64_t meivcs_setMediaTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = 0;
    v5 = *a2;
    *(DerivedStorage + 48) = *(a2 + 2);
    *(DerivedStorage + 32) = v5;
  }

  else
  {
    meivcs_setMediaTime_cold_1(&v7);
    v4 = v7;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t __mr_ensureClientEstablished_block_invoke(uint64_t a1)
{
  result = FigXPCRemoteClientCreate();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t manifoldRemote_deadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = 1;
  return result;
}

uint64_t manifoldRemote_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v12 = 0;
  v13 = 0;
  cf = 0;
  xdict = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    manifoldRemote_copyProperty_cold_1(&v14);
    v8 = v14;
  }

  else
  {
    if (a4)
    {
      BlockBufferData = FigXPCCreateBasicMessage();
      if (BlockBufferData)
      {
        goto LABEL_16;
      }

      BlockBufferData = FigXPCMessageSetCFString();
      if (BlockBufferData)
      {
        goto LABEL_16;
      }

      BlockBufferData = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (BlockBufferData)
      {
        goto LABEL_16;
      }

      if (FigCFEqual())
      {
        uint64 = xpc_dictionary_get_uint64(xdict, "formatReader");
        if (!uint64)
        {
          goto LABEL_10;
        }

        BlockBufferData = FigFormatReaderXPCRemoteRetainCopiedFormatReader(uint64, 1, &cf);
        if (!BlockBufferData)
        {
          BlockBufferData = FigAssetCreateWithFormatReader(a3, cf, 0, 0, &v13);
          if (!BlockBufferData)
          {
            goto LABEL_10;
          }
        }

        goto LABEL_16;
      }

      if (FigCFEqual())
      {
        BlockBufferData = FigXPCMessageCreateBlockBufferData();
        if (BlockBufferData)
        {
LABEL_16:
          v8 = BlockBufferData;
          goto LABEL_17;
        }
      }

      else
      {
        BlockBufferData = FigXPCMessageCopyCFObject();
        if (BlockBufferData)
        {
          goto LABEL_16;
        }
      }

LABEL_10:
      v8 = 0;
      *a4 = v13;
      v13 = 0;
      goto LABEL_11;
    }

    v8 = 0;
  }

LABEL_17:
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t manifoldRemote_setProperty()
{
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    manifoldRemote_setProperty_cold_1(&v1);
    return v1;
  }

  else
  {

    return FigXPCSendStdSetPropertyMessage();
  }
}

void *__copy_constructor_8_8_pa0_6124_0_pa0_43336_8_pa0_40812_16(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  return result;
}

uint64_t __FigManifoldRemoteCallbackInfoGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CB7A0 = result;
  return result;
}

CFStringRef manifoldCallbackInfo_copyDebugDesc(void *a1)
{
  if (a1[2])
  {
    v1 = a1[2];
  }

  else
  {
    v1 = 0;
  }

  if (a1[3])
  {
    v2 = a1[3];
  }

  else
  {
    v2 = 0;
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigManifoldCallbackInfo %p outputCallbacks %p %p %p refCon %p]", a1, v1, v2, a1[4], a1[5]);
}

uint64_t OUTLINED_FUNCTION_6_93()
{

  return FigXPCMessageGetInt32();
}

uint64_t OUTLINED_FUNCTION_7_81(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t xdict)
{

  return manifoldRemote_processPendingCallbacks(v9, xdict);
}

uint64_t OUTLINED_FUNCTION_8_65()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t FigTTMLRegionCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    FigTTMLRegionCreate_cold_2(&v16);
    return v16;
  }

  FigTTMLNodeGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
  if (v8)
  {
    return v8;
  }

  v8 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
  if (v8)
  {
    return v8;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 136) = Mutable;
  if (!Mutable)
  {
    v15 = 213;
LABEL_14:
    FigTTMLBodyCreate_cold_1(v15, &v16);
    return v16;
  }

  v11 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 144) = v11;
  if (!v11)
  {
    v15 = 216;
    goto LABEL_14;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  FigTTMLParseNode(a2, figTTMLRegionConsumeChildNode, a3);
  v13 = v12;
  if (!v12)
  {
    *a4 = 0;
  }

  return v13;
}

uint64_t FigTTMLRegionCreateDefault(const __CFAllocator *a1, __int128 *a2, void *a3)
{
  if (!a3)
  {
    FigTTMLRegionCreateDefault_cold_2(&v13);
    return v13;
  }

  FigTTMLNodeGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a2);
  if (v6)
  {
    return v6;
  }

  CFDictionaryAddValue(*(DerivedStorage + 24), @"http://www.w3.org/XML/1998/namespace id", &stru_1F0B1AFB8);
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 136) = Mutable;
  if (!Mutable)
  {
    v12 = 256;
LABEL_12:
    FigTTMLBodyCreate_cold_1(v12, &v13);
    return v13;
  }

  v9 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 144) = v9;
  if (!v9)
  {
    v12 = 259;
    goto LABEL_12;
  }

  v10 = 0;
  *a3 = 0;
  return v10;
}

uint64_t FigTTMLRegionCopyID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    cf = 0;
    if (CFDictionaryGetValueIfPresent(*(DerivedStorage + 24), @"http://www.w3.org/XML/1998/namespace id", &cf))
    {
      if (cf)
      {
        v4 = CFRetain(cf);
      }

      else
      {
        v4 = 0;
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      return FigSignalErrorAtGM();
    }
  }

  else
  {
    FigTTMLRegionCopyID_cold_1(&v7);
    return v7;
  }

  return result;
}

void figTTMLRegion_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
  v1 = *(DerivedStorage + 136);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 136) = 0;
  }

  v2 = *(DerivedStorage + 144);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 144) = 0;
  }
}

CFStringRef figTTMLRegion_CopyDebugDesc()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"region: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figTTMLRegion_CopyChildNodeArray(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = FigCFArrayCreateConcatenationOfTwoArrays();
  }

  else
  {
    figTTMLRegion_CopyChildNodeArray_cold_1();
  }

  return 0;
}

uint64_t figTTMLRegion_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 10;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLRegion_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

__CFString *FigByteFlumeCustomURLCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigByteFlumeCustomURL <%p>\n", DerivedStorage);
  if (FigRetainProxyIsInvalidated())
  {
    v2 = @" Invalidated\n";
  }

  else
  {
    CFStringAppend(Mutable, @" Original URL      : ");
    v2 = *(DerivedStorage + 88);
  }

  CFStringAppend(Mutable, v2);
  return Mutable;
}

uint64_t FigByteFlumeCustomURLCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  keys[3] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    return 4294954511;
  }

  v9 = *(DerivedStorage + 56);
  if (v9)
  {
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v10)
    {
      return 4294954514;
    }

    return v10(v9, a2, a3, a4);
  }

  if (CFEqual(a2, @"FBF_URL"))
  {
    v11 = *(DerivedStorage + 280);
    if (!v11)
    {
      v11 = *(DerivedStorage + 80);
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"FBF_HTTPResponseHeaders"))
  {
    v11 = *(DerivedStorage + 168);
    if (v11)
    {
LABEL_15:
      v13 = CFRetain(v11);
LABEL_16:
      v12 = v13;
      goto LABEL_17;
    }

    return 4294954513;
  }

  if (CFEqual(a2, @"FBF_EntireLength"))
  {
    if (!*(DerivedStorage + 200))
    {
      return 4294954357;
    }

    v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (DerivedStorage + 192));
    goto LABEL_16;
  }

  if (!CFEqual(a2, @"FBF_BandwidthInfo"))
  {
    if (CFEqual(a2, @"FBF_NoCache"))
    {
      if (!*(DerivedStorage + 288))
      {
        return 4294954513;
      }

      v19 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (CFEqual(a2, @"FBF_MIMEType"))
      {
        v11 = *(DerivedStorage + 184);
        if (v11)
        {
          goto LABEL_15;
        }

        return 4294954513;
      }

      if (CFEqual(a2, @"FBF_StorageSession"))
      {
        return 4294954513;
      }

      if (!CFEqual(a2, @"FBF_EntireLengthAvailableOnDemand"))
      {
        if (CFEqual(a2, @"FBF_ReportingAgent"))
        {
          v11 = *(DerivedStorage + 32);
          if (!v11)
          {
LABEL_12:
            v12 = 0;
LABEL_17:
            result = 0;
            *a4 = v12;
            return result;
          }
        }

        else
        {
          if (!CFEqual(a2, @"FBF_ClientBundleIdentifier"))
          {
            return 4294954512;
          }

          v11 = *(DerivedStorage + 208);
          if (!v11)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_15;
      }

      v19 = MEMORY[0x1E695E4D0];
      if (!*(DerivedStorage + 289))
      {
        v19 = MEMORY[0x1E695E4C0];
      }
    }

    v11 = *v19;
    goto LABEL_15;
  }

  v21 = 0;
  valuePtr = 0.0;
  v20 = 0;
  keys[0] = @"FBF_BandwidthSample";
  keys[1] = @"FBF_BandwidthMovingAverage";
  keys[2] = @"FBF_BandwidthStandardDeviation";
  v14 = *(DerivedStorage + 224);
  if (!v14)
  {
    return 4294954513;
  }

  FigByteRateHistoryReportAverage(v14, &valuePtr, &v20);
  if (FigByteRateHistoryHasCompleteSample(*(DerivedStorage + 224)))
  {
    FigByteRateHistoryReportMovingAverage(*(DerivedStorage + 224), &v21);
  }

  if (valuePtr <= 0.0)
  {
    return 4294954513;
  }

  v15 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  values[1] = CFNumberCreate(v15, kCFNumberDoubleType, &v21);
  values[2] = CFNumberCreate(v15, kCFNumberDoubleType, &v20);
  v16 = CFDictionaryCreate(a3, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = 0;
  *a4 = v16;
  do
  {
    v18 = values[v17];
    if (v18)
    {
      CFRelease(v18);
    }

    ++v17;
  }

  while (v17 != 3);
  return 0;
}

uint64_t FigByteFlumeCustomURLSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    v9 = 4294954511;
    goto LABEL_12;
  }

  if (!a2)
  {
    FigByteFlumeCustomURLSetProperty_cold_1(&v11);
    v9 = v11;
    goto LABEL_12;
  }

  v6 = *(DerivedStorage + 56);
  if (!v6)
  {
    FigByteFlumeCustomURLSetProperty_cold_2(a2, DerivedStorage, a3, &v12);
    v9 = v12;
LABEL_12:
    FigRetainProxyUnlockMutex();
    return v9;
  }

  v7 = CFRetain(v6);
  FigRetainProxyUnlockMutex();
  if (!v7)
  {
    return 0;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v8)
  {
    v9 = v8(v7, a2, a3);
  }

  else
  {
    v9 = 4294954514;
  }

  CFRelease(v7);
  return v9;
}

uint64_t figByteFlumeCancelCustomURLRequest(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

void fbfcu_ReleaseReadRequest(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 14) - 1;
  *(a1 + 14) = v3;
  if (!v3)
  {

    free(a1);
  }
}

uint64_t FigByteFlumeCustomURLRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, void *a8)
{
  v8 = 4294954365;
  if (a3 && a5)
  {
    FigByteFlumeGetFigBaseObject(a1);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigRetainProxyLockMutex();
    if (FigRetainProxyIsInvalidated())
    {
      v8 = 4294954511;
    }

    else
    {
      v17 = malloc_type_calloc(1uLL, 0x68uLL, 0x10E0040628CCBB7uLL);
      if (v17)
      {
        v18 = v17;
        v19 = 0;
        *v18 = a2;
        v18[1] = a3;
        v18[2] = 0;
        if (a6)
        {
          v19 = CFRetain(a6);
        }

        v18[5] = v19;
        v18[6] = a7;
        *(v18 + 14) = 1;
        v18[4] = a5;
        if (!DerivedStorage[18])
        {
          DerivedStorage[29] = FigGetUpTimeNanoseconds();
        }

        v20 = fbfcu_AskForResponse(a1, *v18, v18[1], v18 + 8);
        if (v20)
        {
          v8 = v20;
          fbfcu_ReleaseReadRequest(v18);
        }

        else
        {
          v18[11] = 0;
          v21 = DerivedStorage[19];
          v18[12] = v21;
          *v21 = v18;
          DerivedStorage[19] = v18 + 11;
          v8 = 0;
          if (a8)
          {
            *a8 = v18[8];
          }
        }
      }

      else
      {
        FigByteFlumeCustomURLRead_cold_1(&v23);
        v8 = v23;
      }
    }

    FigRetainProxyUnlockMutex();
  }

  return v8;
}

uint64_t FigByteFlumeCustomURLCopyIdentifier(uint64_t a1, CFDictionaryRef *a2)
{
  value = 0;
  if (!a1)
  {
    FigByteFlumeCustomURLCopyIdentifier_cold_6(&v25);
    goto LABEL_37;
  }

  FigByteFlumeGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigByteFlumeCustomURLCopyIdentifier_cold_5(&v25);
    goto LABEL_37;
  }

  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 56);
  if (!v6)
  {
    valuePtr = 1;
    if (a2)
    {
      *a2 = 0;
      if (*(DerivedStorage + 216) != 2)
      {
        return 4294954513;
      }

      if (*(DerivedStorage + 88))
      {
        FigBaseObject = FigByteFlumeGetFigBaseObject(a1);
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v11)
        {
          v9 = 4294954514;
          goto LABEL_29;
        }

        v12 = *MEMORY[0x1E695E480];
        v13 = v11(FigBaseObject, @"FBF_EntireLength", *MEMORY[0x1E695E480], &value);
        if (v13)
        {
          v9 = v13;
LABEL_29:
          if (value)
          {
            CFRelease(value);
          }

          return v9;
        }

        v14 = CFNumberCreate(v12, kCFNumberSInt32Type, &valuePtr);
        if (v14)
        {
          v15 = v14;
          Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (Mutable)
          {
            v17 = Mutable;
            CFDictionarySetValue(Mutable, @"Version", v15);
            CFDictionarySetValue(v17, @"URL", *(v5 + 88));
            CFDictionarySetValue(v17, @"Size", value);
            v18 = MEMORY[0x1E695E4D0];
            if (!*(v5 + 288))
            {
              v18 = MEMORY[0x1E695E4C0];
            }

            CFDictionarySetValue(v17, @"no-cache", *v18);
            v19 = *(v5 + 120);
            if (v19)
            {
              v20 = CFDictionaryGetValue(v19, @"Last-Modified");
              if (v20)
              {
                CFDictionarySetValue(v17, @"Last-Modified", v20);
              }

              v21 = CFDictionaryGetValue(*(v5 + 120), @"ETag");
              if (v21)
              {
                CFDictionarySetValue(v17, @"ETag", v21);
              }

              v22 = CFDictionaryGetValue(*(v5 + 120), @"ETag weak");
              if (v22)
              {
                CFDictionarySetValue(v17, @"ETag weak", v22);
              }
            }

            *a2 = CFDictionaryCreateCopy(v12, v17);
            CFRelease(v17);
            v9 = 0;
          }

          else
          {
            FigByteFlumeCustomURLCopyIdentifier_cold_1(&v25);
            v9 = v25;
          }

          CFRelease(v15);
          goto LABEL_29;
        }

        FigByteFlumeCustomURLCopyIdentifier_cold_2(&v25);
      }

      else
      {
        FigByteFlumeCustomURLCopyIdentifier_cold_3(&v25);
      }
    }

    else
    {
      FigByteFlumeCustomURLCopyIdentifier_cold_4(&v25);
    }

LABEL_37:
    v9 = v25;
    goto LABEL_29;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2);
}

uint64_t FigByteFlumeCustomURLOpen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigRetainProxyLockMutex();
    if (FigRetainProxyIsInvalidated())
    {
      v7 = 4294954511;
    }

    else if (*(DerivedStorage + 216))
    {
      FigByteFlumeCustomURLOpen_cold_1(&v9);
      v7 = v9;
    }

    else if (*(DerivedStorage + 48))
    {
      *(DerivedStorage + 248) = a2;
      *(DerivedStorage + 256) = a3;
      *(DerivedStorage + 216) = 1;
      v7 = fbfcu_AskForResponse(a1, 0, 2, (DerivedStorage + 272));
      if (v7)
      {
        *(DerivedStorage + 248) = 0;
        *(DerivedStorage + 256) = 0;
      }
    }

    else
    {
      FigByteFlumeCustomURLOpen_cold_2(&v10);
      v7 = v10;
    }

    FigRetainProxyUnlockMutex();
  }

  else
  {
    FigByteFlumeCustomURLOpen_cold_3(&v11);
    return v11;
  }

  return v7;
}

uint64_t fbfcu_copyAllowedHTTPHeaders(const __CFDictionary *a1, CFDictionaryRef *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  keys = 0;
  v12[0] = 0;
  value = 0;
  v10 = 0;
  *a2 = 0;
  if (!CFDictionaryGetValueIfPresent(a1, @"Client-Daap-Validation", &value))
  {
    if (!CFDictionaryGetValueIfPresent(a1, @"Client-Daap-Request-Id", &value))
    {
      v6 = 0;
      goto LABEL_9;
    }

    p_keys = &keys;
    v5 = 1;
    goto LABEL_6;
  }

  keys = @"Client-Daap-Validation";
  if (CFDictionaryGetValueIfPresent(a1, @"Client-Daap-Request-Id", &v10))
  {
    p_keys = v12;
    v5 = 2;
LABEL_6:
    *p_keys = @"Client-Daap-Request-Id";
    goto LABEL_8;
  }

  v5 = 1;
LABEL_8:
  v6 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &value, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v6)
  {
    fbfcu_copyAllowedHTTPHeaders_cold_1(&v8);
    return v8;
  }

LABEL_9:
  result = 0;
  *a2 = v6;
  return result;
}

void fbfcu_FinishRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  v9 = (a1 + 152);
  if (v7)
  {
    v9 = (v7 + 96);
  }

  *v9 = v8;
  *v8 = v7;
  (*(a2 + 32))(*(a2 + 40), *(a2 + 48), *(a2 + 64), a3, a4, a5 | 1u, a6);

  fbfcu_ReleaseReadRequest(a2);
}

void OUTLINED_FUNCTION_1_161(uint64_t a1@<X8>)
{
  if (a1)
  {
    v2 = (a1 + 96);
  }

  *v2 = v1;
  *v1 = a1;
}

uint64_t MediaSampleTimingGeneratorCreateMediaSampleTimingInfoArrayWithDefaultLastSampleDuration(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 104);
  if (v8)
  {
    if (v8 > 0x38E38E38E38E38ELL || (v9 = malloc_type_malloc(72 * v8, 0x1000040FF89C88EuLL)) == 0)
    {
      MediaSampleTimingGeneratorCreateMediaSampleTimingInfoArrayWithDefaultLastSampleDuration_cold_1(&v13);
      return LODWORD(v13.value);
    }

    v10 = v9;
    memcpy(v9, *(a1 + 112), 72 * *(a1 + 104));
    v11 = &v10[72 * *(a1 + 104)];
    MediaSampleTimingGeneratorGetDefaultLastSampleDuration(a1, &v13);
    v11[-3] = v13;
  }

  else
  {
    v10 = 0;
  }

  result = 0;
  *a2 = *(a1 + 96);
  *a3 = *(a1 + 104);
  *a4 = v10;
  return result;
}

CMTime *MediaSampleTimingGeneratorGetDefaultLastSampleDuration@<X0>(CMTime *result@<X0>, CMTime *a2@<X8>)
{
  v3 = MEMORY[0x1E6960C70];
  *&a2->value = *MEMORY[0x1E6960C70];
  a2->epoch = *(v3 + 16);
  if (result->flags == 2)
  {
    v4 = result;
    if (result[6].flags)
    {
      if ((result[5].flags & 1) != 0 && (time1 = **&MEMORY[0x1E6960CC0], v7 = result[5], CMTimeCompare(&time1, &v7)))
      {
        *&a2->value = *&v4[5].value;
        epoch = v4[5].epoch;
      }

      else if (v4[8].flags)
      {
        *&a2->value = *&v4[8].value;
        epoch = v4[8].epoch;
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
        CMTimeMake(&time1, 1, 15);
        *&a2->value = *&time1.value;
        epoch = time1.epoch;
      }

      a2->epoch = epoch;
      epoch_high = HIDWORD(v4->epoch);
      *&time1.value = *&a2->value;
      time1.epoch = epoch;
      return CMTimeConvertScale(a2, &time1, epoch_high, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    }
  }

  return result;
}

uint64_t MediaSampleTimingGeneratorCreateLastMediaSampleTimingInfoArray(uint64_t a1, __int128 *a2, void *a3, void *a4, void *a5)
{
  v10 = *(a1 + 112);
  if (v10 && (*(a2 + 12) & 1) != 0)
  {
    v11 = *(a1 + 20);
    v16 = *a2;
    CMTimeConvertScale(&time1, &v16, v11, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *a2 = time1;
    time1 = **&MEMORY[0x1E6960CC0];
    v16 = *a2;
    if (!CMTimeCompare(&time1, &v16))
    {
      CMTimeMake(&time1, 1, *(a1 + 20));
      *a2 = time1;
    }

    v12 = *(a1 + 112) + 72 * *(a1 + 104);
    v13 = *a2;
    *(v12 - 56) = *(a2 + 2);
    *(v12 - 72) = v13;
    v10 = *(a1 + 112);
  }

  *a3 = *(a1 + 96);
  *a4 = *(a1 + 104);
  *a5 = v10;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v14 = *a2;
  *(a1 + 208) = *(a2 + 2);
  *(a1 + 192) = v14;
  return 0;
}

void MediaSampleTimingGeneratorRelease(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    free(*(a1 + 14));
    CFAllocatorDeallocate(v2, a1);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

uint64_t MediaSampleTimingGeneratorSetMediaTimeScale(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      MediaSampleTimingGeneratorSetMediaTimeScale_cold_1(&v4);
      return v4;
    }

    else
    {
      result = 0;
      *(a1 + 20) = a2;
    }
  }

  else
  {
    MediaSampleTimingGeneratorSetMediaTimeScale_cold_2(&v5);
    return v5;
  }

  return result;
}

void MediaSampleTimingGeneratorReset(uint64_t a1)
{
  v2 = MEMORY[0x1E6960C70];
  v3 = *MEMORY[0x1E6960C70];
  *(a1 + 24) = *MEMORY[0x1E6960C70];
  v4 = *(v2 + 16);
  *(a1 + 40) = v4;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = v4;
  free(*(a1 + 112));
  *(a1 + 112) = 0;
}

uint64_t getSampleTimingAtIndex(uint64_t a1, uint64_t multiplier, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3 != 1)
  {
    v12 = (a4 + 72 * multiplier);
    v26 = *v12;
    v13 = *(v12 + 3);
    v27 = *(v12 + 2);
    value = v13;
    flags = *(v12 + 9);
    timescale = *(v12 + 8);
    epoch = *(v12 + 5);
    lhs.value = *(v12 + 6);
    v16 = *(v12 + 15);
    lhs.timescale = *(v12 + 14);
    v17 = *(v12 + 8);
    v18 = 1;
    if (v16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v25 = **&MEMORY[0x1E6960C70];
  if (multiplier)
  {
    if ((*(a4 + 12) & 1) == 0)
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }

    v26 = *a4;
    v27 = *(a4 + 2);
    time = *a4;
    CMTimeMultiply(&v25, &time, multiplier);
    lhs = *(a4 + 1);
    v23 = v25;
    CMTimeAdd(&time, &lhs, &v23);
    flags = time.flags;
    timescale = time.timescale;
    epoch = time.epoch;
    lhs = *(a4 + 2);
    value = time.value;
    v23 = v25;
    CMTimeAdd(&time, &lhs, &v23);
    lhs.value = time.value;
    v16 = time.flags;
    lhs.timescale = time.timescale;
    v17 = time.epoch;
  }

  else
  {
    v22 = *(a4 + 3);
    v27 = *(a4 + 2);
    value = v22;
    flags = *(a4 + 9);
    timescale = *(a4 + 8);
    epoch = *(a4 + 5);
    lhs.value = *(a4 + 6);
    v16 = *(a4 + 15);
    lhs.timescale = *(a4 + 14);
    v26 = *a4;
    v17 = *(a4 + 8);
  }

  v18 = a1 - multiplier;
  if ((v16 & 1) == 0)
  {
LABEL_6:
    lhs.value = value;
    lhs.timescale = timescale;
    v16 = flags;
    v17 = epoch;
  }

LABEL_7:
  *a5 = v26;
  v19 = value;
  *(a5 + 16) = v27;
  *(a5 + 24) = v19;
  *(a5 + 32) = timescale;
  *(a5 + 36) = flags;
  v20 = lhs.value;
  *(a5 + 40) = epoch;
  *(a5 + 48) = v20;
  *(a5 + 56) = lhs.timescale;
  *(a5 + 60) = v16;
  *(a5 + 64) = v17;
  v11 = 0;
  if (a6)
  {
    *a6 = v18;
  }

  return v11;
}

void *OUTLINED_FUNCTION_3_126@<X0>(uint64_t a1@<X8>)
{

  return malloc_type_malloc(8 * a1, 0x1000040FF89C88EuLL);
}

__n128 OUTLINED_FUNCTION_5_105(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, __n128 a47, unint64_t a48)
{
  result = a47;
  v48[3] = a47;
  v48[4].n128_u64[0] = a48;
  return result;
}

void setCuePositionDo(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  if (v3)
  {
    effectiveRange.location = 0;
    effectiveRange.length = 0;
    v22 = *(MEMORY[0x1E695F058] + 16);
    v23 = *MEMORY[0x1E695F058];
    rect.origin = *MEMORY[0x1E695F058];
    rect.size = v22;
    Attribute = CFAttributedStringGetAttribute(v3, 0, @"kFigSubtitleRenderer_SuggestLayout", &effectiveRange);
    if (Attribute)
    {
      CGRectMakeWithDictionaryRepresentation(Attribute, &rect);
    }

    v25.origin = v23;
    v25.size = v22;
    v5 = CFAttributedStringGetAttribute(*(v2 + 56), 0, @"kFigSubtitleRenderer_SuggestTextLayout", &effectiveRange);
    if (v5)
    {
      CGRectMakeWithDictionaryRepresentation(v5, &v25);
    }

    width = rect.size.width;
    __asm { FMOV            V1.2D, #0.5 }

    v24 = _Q1;
    v12 = vsubq_f64(*(a1 + 1), vmulq_f64(rect.size, _Q1));
    rect.origin = v12;
    _Q1.f64[0] = v12.y;
    height = rect.size.height;
    rect = CGRectIntegral(*(&width - 2));
    v14 = v25.size.width;
    v15 = vsubq_f64(*(a1 + 1), vmulq_f64(v25.size, v24));
    v25.origin = v15;
    y = v15.y;
    v17 = v25.size.height;
    v25 = CGRectIntegral(*(&v14 - 2));
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(rect);
    if (DictionaryRepresentation)
    {
      v19 = DictionaryRepresentation;
      v28.length = CFAttributedStringGetLength(*(v2 + 56));
      v28.location = 0;
      CFAttributedStringSetAttribute(*(v2 + 56), v28, @"kFigSubtitleRenderer_SuggestLayout", v19);
      CFRelease(v19);
    }

    v20 = CGRectCreateDictionaryRepresentation(v25);
    if (v20)
    {
      v21 = v20;
      v29.length = CFAttributedStringGetLength(*(v2 + 56));
      v29.location = 0;
      CFAttributedStringSetAttribute(*(v2 + 56), v29, @"kFigSubtitleRenderer_SuggestTextLayout", v21);
      CFRelease(v21);
    }
  }
}

CGFloat getSuggestedBoundsDo(uint64_t *a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    if (*(v2 + 56))
    {
      v3 = a1[2];
      v4 = *(v2 + 40);
      effectiveRange = *(v2 + 24);
      v34 = v4;
      v5 = *MEMORY[0x1E695EFD0];
      v6 = *(MEMORY[0x1E695EFD0] + 16);
      v35 = v4;
      v36 = v5;
      v7 = *(MEMORY[0x1E695EFD0] + 32);
      v37 = v6;
      v38 = v7;
      v8 = [*v2 contentsAreFlipped];
      SubtitleSampleFromAttributedString = FigSubtitleRendererCreateSubtitleSampleFromAttributedString(*(v2 + 56));
      if (SubtitleSampleFromAttributedString)
      {
        v11 = SubtitleSampleFromAttributedString;
        cf = 0;
        v12 = *(MEMORY[0x1E695F058] + 16);
        v30 = *MEMORY[0x1E695F058];
        v31 = v12;
        v13 = *(v2 + 16);
        v23 = v35;
        v24 = v36;
        v25 = v37;
        v26 = v38;
        v22.origin = effectiveRange;
        v22.size = v34;
        v27 = 0;
        v28 = 0xBFF0000000000000;
        v29 = v8;
        FigSubtitleRendererLayout(v13, v11, &v22, &v30, &cf);
        CFRelease(v11);
        v14 = v31;
        *v3 = v30;
        v3[1] = v14;
        AttributedStringFromSubtitleSample = FigSubtitleRendererGetAttributedStringFromSubtitleSample(cf);
        v16 = *(v2 + 56);
        *(v2 + 56) = AttributedStringFromSubtitleSample;
        if (AttributedStringFromSubtitleSample)
        {
          CFRetain(AttributedStringFromSubtitleSample);
        }

        if (v16)
        {
          CFRelease(v16);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  else
  {
    effectiveRange.location = 0;
    effectiveRange.length = 0;
    v17 = *(MEMORY[0x1E695F058] + 16);
    v22.origin = *MEMORY[0x1E695F058];
    v22.size = v17;
    v18 = *(v2 + 56);
    if (v18)
    {
      Attribute = CFAttributedStringGetAttribute(v18, 0, @"kFigSubtitleRenderer_SuggestLayout", &effectiveRange);
      if (Attribute)
      {
        CGRectMakeWithDictionaryRepresentation(Attribute, &v22);
      }
    }

    v20 = a1[2];
    result = v22.origin.x;
    size = v22.size;
    *v20 = v22.origin;
    *(v20 + 16) = size;
  }

  return result;
}

const __CFAttributedString *getContentIDDo_0(uint64_t *a1)
{
  v2 = *a1;
  v4.location = 0;
  v4.length = 0;
  result = *(v2 + 56);
  if (result)
  {
    result = CFAttributedStringGetAttribute(result, 0, *MEMORY[0x1E6960968], &v4);
  }

  *a1[1] = result;
  return result;
}

void setContentDo(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v2 + 56);
  *(v2 + 56) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  *(v2 + 64) = 1;
}

void setRendererDo_0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

__n128 setViewportDo_0(uint64_t *a1)
{
  result.n128_u64[0] = a1[3];
  if (result.n128_f64[0] >= 0.0)
  {
    result.n128_u64[0] = a1[4];
    if (result.n128_f64[0] >= 0.0)
    {
      v2 = *a1;
      result = *(a1 + 1);
      *(v2 + 40) = *(a1 + 3);
      *(v2 + 24) = result;
    }
  }

  return result;
}

void sub_196752CD8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t FigMockRenderPipelineFactoryGetTypeID()
{
  if (FigMockRenderPipelineFactoryGetTypeID_sRegisterFigMockRenderPipelineFactoryTypeOnce != -1)
  {
    FigMockRenderPipelineFactoryGetTypeID_cold_1();
  }

  return sFigMockRenderPipelineFactoryID;
}

uint64_t registerFigMockRenderPipelineFactoryType()
{
  result = _CFRuntimeRegisterClass();
  sFigMockRenderPipelineFactoryID = result;
  return result;
}

uint64_t FigMockRenderPipelineFactoryCreate(uint64_t a1, const void *a2, uint64_t a3, const void *a4, void *a5)
{
  if (a5)
  {
    if (a3)
    {
      if (FigMockRenderPipelineFactoryGetTypeID_sRegisterFigMockRenderPipelineFactoryTypeOnce != -1)
      {
        FigMockRenderPipelineFactoryGetTypeID_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v10 = Instance;
        if (a2)
        {
          v11 = CFRetain(a2);
        }

        else
        {
          v11 = 0;
        }

        v10[2] = v11;
        v10[3] = a3;
        if (a4)
        {
          v12 = CFRetain(a4);
        }

        else
        {
          v12 = 0;
        }

        result = 0;
        v10[4] = v12;
        *a5 = v10;
      }

      else
      {
        FigMockRenderPipelineFactoryCreate_cold_2(&v14);
        return v14;
      }
    }

    else
    {
      FigMockRenderPipelineFactoryCreate_cold_3(&v15);
      return v15;
    }
  }

  else
  {
    FigMockRenderPipelineFactoryCreate_cold_4(&v16);
    return v16;
  }

  return result;
}

void *figMockRenderPipelineFactory_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void figMockRenderPipelineFactory_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }
}

__CFString *figMockRenderPipelineFactory_CopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigMockRenderPipelineFactory %p>", a1);
  return Mutable;
}

uint64_t FAIRPLAY_CALL_LOG(uint64_t a1)
{
  if (FAIRPLAY_CALL_LOG_sInitOnce != -1)
  {
    FAIRPLAY_CALL_LOG_cold_1();
  }

  return a1;
}

void FAIRPLAY_CALL_LOG_INIT_ONCE(BOOL *a1)
{
  v2 = MGCopyAnswer();
  *a1 = v2 != *MEMORY[0x1E695E4D0];
  a1[1] = 1;
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigTTMLStylingCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    FigTTMLNodeGetClassID();
    v8 = CMDerivedObjectCreate();
    if (v8)
    {
      return v8;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
    if (v8)
    {
      return v8;
    }

    v8 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
    if (v8)
    {
      return v8;
    }

    else
    {
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      *(DerivedStorage + 136) = Mutable;
      if (Mutable)
      {
        *a3 = 0;
        *(a3 + 8) = 0;
        FigTTMLParseNode(a2, figTTMLStyling_ConsumeChildNode, a3);
        v12 = v11;
        if (!v11)
        {
          *a4 = 0;
        }
      }

      else
      {
        FigTTMLStylingCreate_cold_1(&v14);
        return v14;
      }
    }
  }

  else
  {
    FigTTMLStylingCreate_cold_2(&v14);
    return v14;
  }

  return v12;
}

void figTTMLStyling_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 136);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 136) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLStyling_CopyDebugDesc()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"styling: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figTTMLStyling_CopyChildNodeArray(const void *a1, CFArrayRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    v6 = CFGetAllocator(a1);
    *a2 = CFArrayCreateCopy(v6, *(v5 + 136));
  }

  else
  {
    figTTMLStyling_CopyChildNodeArray_cold_1();
  }

  return 0;
}

uint64_t figTTMLStyling_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 12;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLStyling_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigAlternateNSPredicateFilterCreate(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  PredicateWithSubstitutions = createPredicateWithSubstitutions(a2, a3);
  [v8 setObject:PredicateWithSubstitutions atIndexedSubscript:0];

  v12[0] = xmmword_1F0AF2278;
  v12[1] = *&off_1F0AF2288;
  v13 = off_1F0AF2298;
  v10 = FigSimpleAlternateFilterCreate(a1, @"ClientPredicatesFilter", 872, v12, v8, a4);

  return v10;
}

uint64_t clientPredicatesFilter_filter(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [[FigAlternateObjC alloc] initWithFigAlternate:a1];
  v5 = [v3 evaluateWithObject:v4];

  return v5;
}

id createPredicateWithSubstitutions(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4 = [a1 subpredicates];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v15;
        do
        {
          v8 = 0;
          do
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(v4);
            }

            PredicateWithSubstitutions = createPredicateWithSubstitutions(*(*(&v14 + 1) + 8 * v8), a2);
            [v3 addObject:PredicateWithSubstitutions];

            ++v8;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v6);
      }

      v10 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(a1 subpredicates:{"compoundPredicateType"), v3}];
    }

    else
    {
      v10 = [a1 predicateWithSubstitutionVariables:a2];
      v12 = v10;
    }

    return v10;
  }

  else
  {

    return a1;
  }
}

uint64_t FigAlternateMinimumOrMaximumInKeyPathFilterCreate(uint64_t a1, const void *a2, int a3, void *a4)
{
  v4 = faf_lowestInKeyPathComparatorFn;
  v6 = 0uLL;
  if (!a3)
  {
    v4 = faf_highestInKeyPathComparatorFn;
  }

  v7 = 0;
  v8 = v4;
  v9 = 0;
  return FigSimpleAlternateFilterCreate(a1, @"MinOrMaxInKeyPathFilter", 595, &v6, a2, a4);
}

uint64_t faf_highestInKeyPathComparatorFn(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [[FigAlternateObjC alloc] initWithFigAlternate:a1];
  v6 = [[FigAlternateObjC alloc] initWithFigAlternate:a2];
  v7 = [a3 containsString:@"presentationSize"];
  v8 = [(FigAlternateObjC *)v5 valueForKeyPath:a3];
  if (v7)
  {
    [v8 sizeValue];
    v10 = v9;
    [-[FigAlternateObjC valueForKeyPath:](v6 valueForKeyPath:{a3), "sizeValue"}];
  }

  else
  {
    [v8 doubleValue];
    v10 = v12;
    [-[FigAlternateObjC valueForKeyPath:](v6 valueForKeyPath:{a3), "doubleValue"}];
  }

  return (__PAIR128__(v10 < v11, *&v11) - *&v10) >> 64;
}

uint64_t FigAlternateMatchesAnyClientPredicateFilterCreate(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (!v7)
    {
      v17 = 0;
      goto LABEL_18;
    }

    v17 = 0;
    v8 = *v20;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_13;
          }

          v10 = [v10 _predicate];
        }

        if (v10)
        {
          PredicateWithSubstitutions = createPredicateWithSubstitutions(v10, a3);
          if (PredicateWithSubstitutions)
          {
            CFArrayAppendValue(v6, PredicateWithSubstitutions);
            v12 = PredicateWithSubstitutions;
            goto LABEL_14;
          }
        }

LABEL_13:
        v12 = 0;
LABEL_14:
      }

      v7 = [a2 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (!v7)
      {
LABEL_18:
        v13 = CFRetain(v6);
        CFRelease(v6);
        goto LABEL_19;
      }
    }
  }

  FigAlternateMatchesAnyClientPredicateFilterCreate_cold_1(&v23);
  v13 = 0;
  v17 = v23;
LABEL_19:
  if (!v17)
  {
    v24[0] = xmmword_1F0AF22A0;
    v24[1] = *&off_1F0AF22B0;
    v25 = off_1F0AF22C0;
    v17 = FigSimpleAlternateFilterCreate(a1, @"MatchesAnyClientPredicateFilter", 870, v24, v13, a4);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v17;
}

uint64_t finalSelectionMatchesAnyClientPredicate_filter(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [[FigAlternateObjC alloc] initWithFigAlternate:a1];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(a2);
        }

        if ([*(*(&v10 + 1) + 8 * v7) evaluateWithObject:v3])
        {
          v8 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

CFStringRef finalSelectionMatchesAnyClientPredicate_copyDescAddendum()
{
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"predicates: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_1_162(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return [v27 countByEnumeratingWithState:&a11 objects:&a27 count:16];
}

uint64_t OUTLINED_FUNCTION_2_154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{

  return [v20 countByEnumeratingWithState:&a9 objects:&a20 count:16];
}

void mediaAccessibilityDidChange(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    v4 = DerivedStorage;
    v5 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    if (v5)
    {
      v6 = v5;
      if (a2)
      {
        CFRetain(a2);
      }

      *v6 = a2;
      v7 = *(v4 + 8);

      dispatch_async_f(v7, v6, mediaAccessibilityDidChangeDoAsync_0);
    }

    else
    {
      mediaAccessibilityDidChange_cold_1();
    }
  }
}

void clearMediaAccessibilityParams(uint64_t a1)
{
  *(a1 + 128) = 1;
  v2 = vdupq_n_s64(1uLL);
  *(a1 + 32) = v2;
  *(a1 + 48) = v2;
  *a1 = v2;
  *(a1 + 16) = v2;
  memset_pattern16((a1 + 64), &xmmword_196E76490, 0x40uLL);
  v3 = *(a1 + 136);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 136) = 0;
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 144) = 0;
  }

  v5 = *(a1 + 152);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 152) = 0;
  }

  v6 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 160) = _Q0;
  *(a1 + 176) = _Q0;
  *(a1 + 192) = 0xBFF0000000000000;
  v12 = a1 + 200;
  do
  {
    v13 = *(v12 + v6);
    if (v13)
    {
      CFRelease(v13);
      *(v12 + v6) = 0;
    }

    v6 += 8;
  }

  while (v6 != 64);
  *(a1 + 264) = 0;
}

void mediaAccessibilityDidChangeDoAsync_0(const void **a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v41 = 0u;
  v39 = 0u;
  memset(v40, 0, sizeof(v40));
  *v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  *cf = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  if (*DerivedStorage)
  {
    v4 = DerivedStorage;
    v5 = MACaptionAppearanceCopyForegroundColor(kMACaptionAppearanceDomainUser, &v28);
    cf[1] = v5;
    if (v5)
    {
      CGColorGetComponents(v5);
    }

    v6 = MACaptionAppearanceCopyBackgroundColor(kMACaptionAppearanceDomainUser, &v28 + 1);
    v37[0] = v6;
    if (v6)
    {
      CGColorGetComponents(v6);
    }

    v7 = MACaptionAppearanceCopyWindowColor(kMACaptionAppearanceDomainUser, &v29);
    v37[1] = v7;
    if (v7)
    {
      CGColorGetComponents(v7);
    }

    *&v38 = MACaptionAppearanceGetForegroundOpacity(kMACaptionAppearanceDomainUser, &v29 + 1);
    *(&v38 + 1) = MACaptionAppearanceGetBackgroundOpacity(kMACaptionAppearanceDomainUser, &v30);
    *&v39 = MACaptionAppearanceGetWindowOpacity(kMACaptionAppearanceDomainUser, &v30 + 1);
    *(&v39 + 1) = MACaptionAppearanceGetWindowRoundedCornerRadius(kMACaptionAppearanceDomainUser, &v31);
    v8 = kMACaptionAppearanceFontStyleDefault;
    *&v40[0] = MACaptionAppearanceGetRelativeCharacterSize(kMACaptionAppearanceDomainUser, &v31 + 1);
    v9 = &v32;
    do
    {
      *(v40 + v8 + 1) = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, v9, v8);
      ++v8;
      ++v9;
    }

    while (v8 != 8);
    *(&v41 + 1) = MACaptionAppearanceGetTextEdgeStyle(kMACaptionAppearanceDomainUser, cf);
    v10 = v29;
    *(v4 + 88) = v28;
    v11 = v33;
    *(v4 + 152) = v32;
    v12 = v30;
    *(v4 + 136) = v31;
    *(v4 + 120) = v12;
    *(v4 + 104) = v10;
    v13 = v34;
    *(v4 + 200) = v35;
    *(v4 + 184) = v13;
    *(v4 + 27) = cf[0];
    *(v4 + 168) = v11;
    v14 = *(v4 + 28);
    v15 = cf[1];
    *(v4 + 28) = cf[1];
    if (v15)
    {
      CFRetain(v15);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    v16 = *(v4 + 29);
    v17 = v37[0];
    *(v4 + 29) = v37[0];
    if (v17)
    {
      CFRetain(v17);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    v18 = *(v4 + 30);
    v19 = v37[1];
    *(v4 + 30) = v37[1];
    if (v19)
    {
      CFRetain(v19);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    v20 = v39;
    *(v4 + 248) = v38;
    *(v4 + 264) = v20;
    *(v4 + 35) = *&v40[0];
    v21 = (v4 + 288);
    for (i = 25; i != 33; ++i)
    {
      v23 = *v21;
      v24 = *(&v28 + i);
      *v21 = v24;
      if (v24)
      {
        CFRetain(v24);
      }

      if (v23)
      {
        CFRelease(v23);
      }

      ++v21;
    }

    *(v4 + 44) = *(&v41 + 1);
    clearMediaAccessibilityParams(&v28);
    v25 = *(v4 + 5);
    if (v25)
    {
      CFRelease(v25);
      *(v4 + 5) = 0;
    }

    if (*(v4 + 2))
    {
      v26 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
      if (!v26)
      {
        mediaAccessibilityDidChangeDoAsync_cold_1();
        if (!v2)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v27 = v26;
      if (v2)
      {
        CFRetain(v2);
      }

      *v27 = v2;
      dispatch_async_f(*(v4 + 2), v27, sendNotificationDoAsync);
    }
  }

  if (v2)
  {
LABEL_36:
    CFRelease(v2);
  }

LABEL_37:
  free(a1);
}

__CFDictionary *FigSubtitleRendererCreateSubtitleSampleFromAttributedString(const void *a1)
{
  if (a1)
  {
    v2 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v4 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
      if (v4)
      {
        v5 = v4;
        CFArrayAppendValue(v4, a1);
        CFDictionarySetValue(Mutable, @"SubtitleContent", v5);
        valuePtr = 2004251764;
        v6 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
        if (v6)
        {
          v7 = v6;
          CFDictionarySetValue(Mutable, @"SubtitleFormat", v6);
          CFRelease(v7);
        }

        else
        {
          FigSubtitleRendererCreateSubtitleSampleFromAttributedString_cold_1();
        }

        CFRelease(v5);
      }

      else
      {
        FigSubtitleRendererCreateSubtitleSampleFromAttributedString_cold_2();
      }
    }

    else
    {
      FigSubtitleRendererCreateSubtitleSampleFromAttributedString_cold_3();
    }
  }

  else
  {
    FigSubtitleRendererCreateSubtitleSampleFromAttributedString_cold_4();
    return 0;
  }

  return Mutable;
}

NSObject *subtitleRendererLayout(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v26 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15[0] = a1;
  v15[1] = a2;
  v11 = a3[1];
  v16 = *a3;
  v17 = v11;
  v12 = a3[6];
  v21 = a3[5];
  v22 = v12;
  v13 = a3[4];
  v19 = a3[3];
  v20 = v13;
  v18 = a3[2];
  v23 = a4;
  v24 = a5;
  v25 = &v26;
  result = *(DerivedStorage + 8);
  if (result)
  {
    dispatch_sync_f(result, v15, subtitleRendererLayoutDo);
    return v26;
  }

  return result;
}

NSObject *subtitleRendererDrawSubtitleText(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v14 = 0;
  result = *(CMBaseObjectGetDerivedStorage() + 8);
  if (result)
  {
    context[0] = a1;
    context[1] = a2;
    v7 = a3[1];
    v9 = *a3;
    v10 = v7;
    v11 = a3[2];
    v12 = *(a3 + 6);
    v13 = &v14;
    dispatch_sync_f(result, context, subtitleRendererDrawSubtitleTextDo);
    return v14;
  }

  return result;
}

NSObject *FigSubtitleRendererDrawSubtitleTextDirect(uint64_t a1, CGContext *a2, const __CFString *a3, const __CFDictionary *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (*(CMBaseObjectGetDerivedStorage() + 360))
  {
    *v35 = 0u;
    v36 = 0u;
    cf = 0;
    if (a1)
    {
      if (a2)
      {
        v37.origin.x = a5;
        v37.origin.y = a6;
        v37.size.width = a7;
        v37.size.height = a8;
        if (!CGRectEqualToRect(v37, *MEMORY[0x1E695F050]) && a7 > 1.0 && a8 > 1.0)
        {
          SubtitleSample = CreateSubtitleSample(a3, a4);
          if (SubtitleSample)
          {
            transform.a = a5;
            transform.b = a6;
            transform.c = a7;
            transform.d = a8;
            transform.tx = a7;
            transform.ty = a8;
            v17 = *(MEMORY[0x1E695EFD0] + 16);
            v28 = *MEMORY[0x1E695EFD0];
            v29 = v17;
            v30 = *(MEMORY[0x1E695EFD0] + 32);
            v31 = 0;
            v32 = 0xBFF0000000000000;
            v33 = 1;
            v18 = subtitleRendererLayout(a1, SubtitleSample, &transform, v35, &cf);
            if (!v18)
            {
              transform.b = 0.0;
              transform.c = 0.0;
              transform.a = 1.0;
              *&transform.d = xmmword_196E77200;
              transform.ty = a8;
              CGContextConcatCTM(a2, &transform);
              *&transform.a = a2;
              transform.b = 1.0;
              transform.c = 0.0;
              transform.d = 0.0;
              *&transform.tx = xmmword_196E77200;
              *&v28 = a8;
              v18 = subtitleRendererDrawSubtitleText(a1, cf, &transform);
            }

            a_low = v18;
            goto LABEL_11;
          }

          FigSubtitleRendererDrawSubtitleTextDirect_cold_1(&transform);
LABEL_30:
          a_low = LODWORD(transform.a);
LABEL_11:
          if (cf)
          {
            CFRelease(cf);
          }

          if (SubtitleSample)
          {
            CFRelease(SubtitleSample);
          }

          return a_low;
        }

        FigSubtitleRendererDrawSubtitleTextDirect_cold_2(&transform);
      }

      else
      {
        FigSubtitleRendererDrawSubtitleTextDirect_cold_3(&transform);
      }
    }

    else
    {
      FigSubtitleRendererDrawSubtitleTextDirect_cold_4(&transform);
    }

    SubtitleSample = 0;
    goto LABEL_30;
  }

  if (!a1)
  {
    FigSubtitleRendererDrawSubtitleTextDirect_cold_8(&transform);
    return LODWORD(transform.a);
  }

  if (!a2)
  {
    FigSubtitleRendererDrawSubtitleTextDirect_cold_7(&transform);
    return LODWORD(transform.a);
  }

  v20 = *MEMORY[0x1E695F050];
  v21 = *(MEMORY[0x1E695F050] + 8);
  v22 = *(MEMORY[0x1E695F050] + 16);
  v23 = *(MEMORY[0x1E695F050] + 24);
  v38.origin.x = a5;
  v38.origin.y = a6;
  v38.size.width = a7;
  v38.size.height = a8;
  v39.origin.x = *MEMORY[0x1E695F050];
  v39.origin.y = v21;
  v39.size.width = v22;
  v39.size.height = v23;
  if (CGRectEqualToRect(v38, v39) || a7 <= 1.0 || a8 <= 1.0)
  {
    FigSubtitleRendererDrawSubtitleTextDirect_cold_6(&transform);
    return LODWORD(transform.a);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCaptionRendererSessionClear(*(DerivedStorage + 368));
  FigCaptionRendererSessionSetLayoutContext_Viewport(*(DerivedStorage + 368));
  FigCaptionRendererSessionSetLayoutContext_VideoSize(*(DerivedStorage + 368), a7, a8);
  FigCaptionRendererSessionSetLayoutContext_Gravity(*(DerivedStorage + 368), 0);
  FigCaptionRendererSessionSetLayoutContext_Overscan(*(DerivedStorage + 368), 0);
  v25 = CreateSubtitleSample(a3, a4);
  if (!v25)
  {
    FigSubtitleRendererDrawSubtitleTextDirect_cold_5(&transform);
    return LODWORD(transform.a);
  }

  v35[0] = 0;
  FigSubtitleSampleCreatePropertyList(v25, 1, 1, v35, v20, v21, v22, v23);
  FigCaptionRendererSessionSetCaptionSample(*(DerivedStorage + 368));
  transform.b = 0.0;
  transform.c = 0.0;
  transform.a = 1.0;
  *&transform.d = xmmword_196E77200;
  transform.ty = a8;
  CGContextConcatCTM(a2, &transform);
  FigCaptionRendererSessionUpdateCGContext(*(DerivedStorage + 368), a2);
  if (v35[0])
  {
    CFRelease(v35[0]);
  }

  return 0;
}

double FigSubtitleRendererGetWindowRoundedCornerRadius(uint64_t a1)
{
  v4 = 0.0;
  context[0] = a1;
  context[1] = &v4;
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (!v1)
  {
    return 0.0;
  }

  dispatch_sync_f(v1, context, subtitleRendererGetWindowRoundedCornerRadiusDo);
  return v4;
}

uint64_t subtitleRendererGetWindowRoundedCornerRadiusDo(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    result = CMBaseObjectGetDerivedStorage();
    v2 = *(result + 280) * 4.0;
    if (v2 > 10.0)
    {
      v2 = 10.0;
    }

    **(v1 + 8) = v2;
  }

  return result;
}

double FigSubtitleRendererGetWindowOpacity(uint64_t a1)
{
  v4 = 0.0;
  context[0] = a1;
  context[1] = &v4;
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (!v1)
  {
    return 0.0;
  }

  dispatch_sync_f(v1, context, subtitleRendererGetWindowOpacityDo);
  return v4;
}

double subtitleRendererGetWindowOpacityDo(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(a1 + 8);
  if (v4)
  {
    result = *(DerivedStorage + 264);
    *v4 = result;
  }

  return result;
}

const void *FigSubtitleRendererGetAttributedStringFromSubtitleSample(const __CFDictionary *a1)
{
  if (!a1)
  {
    FigSubtitleRendererGetAttributedStringFromSubtitleSample_cold_2();
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"SubtitleContent");
  if (!Value)
  {
    FigSubtitleRendererGetAttributedStringFromSubtitleSample_cold_1();
    return 0;
  }

  return CFArrayGetValueAtIndex(Value, 0);
}

_BYTE *coreTextSubtitleRenderer_Finalize()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*result)
  {
    v1 = result;
    CMNotificationCenterGetDefaultLocalCenter();
    FigGetNotifyingObjectForMediaAccessibilityChanged();
    FigNotificationCenterRemoveWeakListener();
    *v1 = 0;
    v2 = *(v1 + 1);
    if (v2)
    {
      dispatch_release(v2);
      *(v1 + 1) = 0;
    }

    v3 = *(v1 + 2);
    if (v3)
    {
      dispatch_release(v3);
      *(v1 + 2) = 0;
    }

    if (!v1[360])
    {
      v4 = *(v1 + 46);
      if (v4)
      {
        CFRelease(v4);
      }
    }

    clearMediaAccessibilityParams((v1 + 88));
    v5 = *(v1 + 6);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(v1 + 9);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(v1 + 5);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(v1 + 7);
    if (v8)
    {
      CFRelease(v8);
    }

    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
  }

  return result;
}

__CFString *coreTextSubtitleRenderer_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCoreTextSubtitleRenderer %p>", a1);
  return Mutable;
}

void sendNotificationDoAsync(const void **a1)
{
  v2 = *a1;
  if (*CMBaseObjectGetDerivedStorage())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

CFDictionaryRef CreateSubtitleSample(CFStringRef str, CFDictionaryRef attributes)
{
  v3 = *MEMORY[0x1E695E480];
  values = CFAttributedStringCreate(*MEMORY[0x1E695E480], str, attributes);
  if (values)
  {
    v4 = CFArrayCreate(v3, &values, 1, MEMORY[0x1E695E9C0]);
    if (v4)
    {
      v5 = v4;
      Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v7 = Mutable;
        if (attributes && CFDictionaryContainsKey(attributes, @"SubtitleFormat"))
        {
          v8 = 0;
        }

        else
        {
          valuePtr = 2004251764;
          v9 = CFNumberCreate(v3, kCFNumberSInt32Type, &valuePtr);
          if (!v9)
          {
            CreateSubtitleSample_cold_2();
            Copy = 0;
            goto LABEL_12;
          }

          v8 = v9;
          CFDictionarySetValue(v7, @"SubtitleFormat", v9);
        }

        CFDictionarySetValue(v7, @"SubtitleContent", v5);
        Copy = CFDictionaryCreateCopy(v3, v7);
        if (Copy)
        {
          if (!v8)
          {
LABEL_12:
            CFRelease(v5);
            CFRelease(v7);
            goto LABEL_13;
          }
        }

        else
        {
          CreateSubtitleSample_cold_1();
          if (!v8)
          {
            goto LABEL_12;
          }
        }

        CFRelease(v8);
        goto LABEL_12;
      }

      CreateSubtitleSample_cold_3(v5);
    }

    else
    {
      CreateSubtitleSample_cold_4();
    }
  }

  else
  {
    CreateSubtitleSample_cold_5();
  }

  Copy = 0;
LABEL_13:
  if (values)
  {
    CFRelease(values);
  }

  return Copy;
}

uint64_t subtitleRendererDrawSubtitleTextDo(uint64_t a1)
{
  v1 = a1;
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  *&v76.a = *(a1 + 24);
  *&v76.c = v5;
  *&v76.tx = *(a1 + 56);
  result = CMBaseObjectGetDerivedStorage();
  a_low = *result;
  if (*result)
  {
    if (v2)
    {
      Value = CFDictionaryGetValue(v2, @"SubtitleContent");
      if (Value)
      {
        v9 = Value;
        result = CFArrayGetCount(Value);
        if (result < 1)
        {
          a_low = 0;
          goto LABEL_65;
        }

        v57 = v1;
        v10 = 0;
        v12 = *MEMORY[0x1E695F050];
        v11 = *(MEMORY[0x1E695F050] + 8);
        v67 = *(MEMORY[0x1E695F050] + 24);
        v68 = *(MEMORY[0x1E695F050] + 16);
        v63 = *MEMORY[0x1E69607C0];
        v62 = *MEMORY[0x1E695E4C0];
        alloc = *MEMORY[0x1E695E480];
        v59 = *(MEMORY[0x1E695F060] + 8);
        v69 = *(MEMORY[0x1E695F050] + 16);
        v70 = *MEMORY[0x1E695F050];
        key = *MEMORY[0x1E6960818];
        v61 = v9;
        v60 = *MEMORY[0x1E695F050];
        v64 = v11;
        while (1)
        {
          effectiveRange.location = 0;
          effectiveRange.length = 0;
          rect.origin = v70;
          rect.size = v69;
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
          Attribute = CFAttributedStringGetAttribute(ValueAtIndex, 0, @"kFigSubtitleRenderer_SuggestTextLayout", &effectiveRange);
          if (Attribute)
          {
            CGRectMakeWithDictionaryRepresentation(Attribute, &rect);
          }

          v73 = v76;
          v82 = CGRectApplyAffineTransform(rect, &v73);
          y = v82.origin.y;
          x = v82.origin.x;
          width = v82.size.width;
          height = v82.size.height;
          v17 = CFAttributedStringGetAttribute(ValueAtIndex, 0, @"kFigSubtitleRenderer_SuggestLayout", &effectiveRange);
          if (v17)
          {
            CGRectMakeWithDictionaryRepresentation(v17, &rect);
          }

          v73 = v76;
          v83 = CGRectApplyAffineTransform(rect, &v73);
          v18 = v83.origin.x;
          v19 = v83.origin.y;
          v20 = v83.size.width;
          v21 = v83.size.height;
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          v73.a = 0.0;
          v73.b = 0.0;
          valuePtr = 0.0;
          v23 = CFAttributedStringGetAttribute(ValueAtIndex, 0, @"kFigSubtitleRenderer_FontSizeToUse", &v73);
          if (v23)
          {
            CFNumberGetValue(v23, kCFNumberCGFloatType, &valuePtr);
            v84.origin.y = y;
            v84.origin.x = x;
            v84.size.width = width;
            v84.size.height = height;
            v90.origin.x = v12;
            v90.origin.y = v11;
            v90.size.height = v67;
            v90.size.width = v68;
            if (!CGRectEqualToRect(v84, v90))
            {
              break;
            }
          }

          v24 = 0;
LABEL_60:
          CGColorRelease(v24);
          ++v10;
          result = CFArrayGetCount(v9);
          if (result <= v10)
          {
            a_low = 0;
            v1 = v57;
            goto LABEL_65;
          }
        }

        theDict = CFAttributedStringGetAttributes(ValueAtIndex, 0, &v73);
        v24 = copyContentColor(*(DerivedStorage + 104), *(DerivedStorage + 240), *(DerivedStorage + 128), theDict, v63, *(DerivedStorage + 264));
        v25 = CMBaseObjectGetDerivedStorage();
        if (*(v25 + 280) * 4.0 <= 10.0)
        {
          v26 = *(v25 + 280) * 4.0;
        }

        else
        {
          v26 = 10.0;
        }

        CGContextSaveGState(v4);
        CGContextSetFontRenderingStyle();
        CGContextSetShouldSmoothFonts(v4, 0);
        CGContextSetShouldAntialias(v4, 1);
        CGContextSetInterpolationQuality(v4, kCGInterpolationHigh);
        if (v24)
        {
          CGContextSetFillColorWithColor(v4, v24);
          CGContextBeginPath(v4);
          if (v26 <= 1.0)
          {
            v89.origin.x = v18;
            v89.origin.y = v19;
            v89.size.width = v20;
            v89.size.height = v21;
            CGContextAddRect(v4, v89);
          }

          else
          {
            CGContextSaveGState(v4);
            v85.origin.x = v18;
            v85.origin.y = v19;
            v85.size.width = v20;
            v85.size.height = v21;
            MinX = CGRectGetMinX(v85);
            v86.origin.x = v18;
            v86.origin.y = v19;
            v86.size.width = v20;
            v86.size.height = v21;
            MinY = CGRectGetMinY(v86);
            CGContextTranslateCTM(v4, MinX, MinY);
            CGContextScaleCTM(v4, v26, v26);
            v87.origin.x = v18;
            v87.origin.y = v19;
            v87.size.width = v20;
            v87.size.height = v21;
            *&MinX = CGRectGetWidth(v87) / v26;
            v88.origin.x = v18;
            v88.origin.y = v19;
            v88.size.width = v20;
            v88.size.height = v21;
            v29 = CGRectGetHeight(v88) / v26;
            v30 = *&MinX;
            v31 = (v29 * 0.5);
            CGContextMoveToPoint(v4, *&MinX, v31);
            v32 = v29;
            v33 = *&MinX * 0.5;
            v12 = v60;
            v34 = v33;
            CGContextAddArcToPoint(v4, v30, v32, v33, v32, 1.0);
            CGContextAddArcToPoint(v4, 0.0, v32, 0.0, v31, 1.0);
            CGContextAddArcToPoint(v4, 0.0, 0.0, v34, 0.0, 1.0);
            CGContextAddArcToPoint(v4, v30, 0.0, v30, v31, 1.0);
            CGContextClosePath(v4);
            CGContextRestoreGState(v4);
          }

          CGContextFillPath(v4);
        }

        v35 = CFAttributedStringGetAttribute(ValueAtIndex, 0, @"kFigSubtitleRenderer_CommonSetupDone", &v73);
        if (!v35 || v62 == v35)
        {
          MutableCopy = CFAttributedStringCreateMutableCopy(alloc, 0, ValueAtIndex);
          v11 = v64;
          if (!MutableCopy)
          {
LABEL_59:
            CGContextRestoreGState(v4);
            goto LABEL_60;
          }

          v36 = MutableCopy;
          v42 = height / 3.0;
          v43 = subtitleRendererSetupText(v3, MutableCopy, 0, height / 3.0);
          v44 = 0;
          v45 = v59;
          while (1)
          {
            Length = CFAttributedStringGetLength(v36);
            if (Length >= 1)
            {
              v47 = Length;
              v48 = CTFramesetterCreateWithAttributedString(v36);
              if (!v48)
              {
                v9 = v61;
                goto LABEL_57;
              }

              v49 = v48;
              v79.location = 0;
              v79.length = v47;
              v81.width = width;
              v81.height = 1.79769313e308;
              v45 = ceil(CTFramesetterSuggestFrameSizeWithConstraints(v48, v79, 0, v81, 0).height);
              CFRelease(v49);
            }

            v50 = 1.0;
            if (v45 <= 1.0)
            {
              break;
            }

            if (v45 <= height)
            {
              if (v44 == -1)
              {
                break;
              }

              v44 = 1;
            }

            else
            {
              v44 = -1;
              v50 = -1.0;
            }

            v42 = v42 + v50;
            v43 = subtitleRendererSetupText(v3, v36, 3, v42);
          }

          v78[0] = v42;
          v51 = CFNumberCreate(alloc, kCFNumberCGFloatType, v78);
          v80.length = CFAttributedStringGetLength(v36);
          v80.location = 0;
          CFAttributedStringSetAttribute(v36, v80, @"kFigSubtitleRenderer_FontSizeToUse", v51);
          CFRelease(v51);
          ValueAtIndex = v36;
          v9 = v61;
          v38 = y;
          v37 = x;
          if (v43)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v36 = 0;
          v11 = v64;
          v38 = y;
          v37 = x;
        }

        if (*(DerivedStorage + 28))
        {
          v39 = CFAttributedStringCreateMutableCopy(alloc, 0, ValueAtIndex);
          if (!v39)
          {
            goto LABEL_57;
          }

          v40 = v39;
          if (subtitleRendererDrawText(valuePtr, v37, v38, width, height, v3, v39, v4, 2u))
          {
LABEL_55:
            CFRelease(v40);
LABEL_57:
            if (v36)
            {
              CFRelease(v36);
            }

            goto LABEL_59;
          }
        }

        else
        {
          v40 = 0;
        }

        v52 = getEdgeStyle(*(DerivedStorage + 216), *(DerivedStorage + 352), theDict, key) - 1;
        v53 = CFAttributedStringCreateMutableCopy(alloc, 0, ValueAtIndex);
        v54 = v53;
        if (v52 >= 3)
        {
          if (!v53)
          {
            goto LABEL_54;
          }

          setupHighlight(v3, v53);
          if (subtitleRendererSetupText(v3, v54, 2, valuePtr) || subtitleRendererDrawText(valuePtr, v37, v38, width, height, v3, v54, v4, 1u))
          {
            v55 = v54;
            goto LABEL_53;
          }

          v55 = v54;
          v54 = CFAttributedStringCreateMutableCopy(alloc, 0, ValueAtIndex);
          if (!v54)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (!v53)
          {
            goto LABEL_54;
          }

          setupHighlight(v3, v53);
          v55 = 0;
        }

        if (!subtitleRendererSetupText(v3, v54, 1, valuePtr))
        {
          subtitleRendererDrawText(valuePtr, v37, v38, width, height, v3, v54, v4, 0);
        }

        CFRelease(v54);
        if (!v55)
        {
LABEL_54:
          v9 = v61;
          if (!v40)
          {
            goto LABEL_57;
          }

          goto LABEL_55;
        }

LABEL_53:
        CFRelease(v55);
        goto LABEL_54;
      }

      v56 = 4099;
    }

    else
    {
      v56 = 4094;
    }

    result = subtitleRendererDrawSubtitleTextDo_cold_1(v56, &v73);
    a_low = LODWORD(v73.a);
  }

LABEL_65:
  **(v1 + 72) = a_low;
  return result;
}