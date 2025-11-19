uint64_t sub_1CADE8228()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id _MSMainBundleIdentifier()
{
  if (_MSMainBundleIdentifier_once != -1)
  {
    _MSMainBundleIdentifier_cold_1();
  }

  v1 = _MSMainBundleIdentifier_bundleIdentifier;

  return v1;
}

id getCKUIBehaviorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKUIBehaviorClass_softClass;
  v7 = getCKUIBehaviorClass_softClass;
  if (!getCKUIBehaviorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKUIBehaviorClass_block_invoke;
    v3[3] = &unk_1E83A2BA8;
    v3[4] = &v4;
    __getCKUIBehaviorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CADE90F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKUIBehaviorClass_block_invoke(uint64_t a1)
{
  ChatKitLibrary();
  result = objc_getClass("CKUIBehavior");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCKUIBehaviorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCKUIBehaviorClass_block_invoke_cold_1();
    return ChatKitLibrary();
  }

  return result;
}

uint64_t ChatKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ChatKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ChatKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E83A2BC8;
    v5 = 0;
    ChatKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ChatKitLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!ChatKitLibraryCore_frameworkLibrary)
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

uint64_t __ChatKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ChatKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCKIsRunningInMacCatalystSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ChatKitLibrary();
  result = dlsym(v2, "CKIsRunningInMacCatalyst");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCKIsRunningInMacCatalystSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x26u);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

id MSStickerBrowserStateRestorationInfoPath(void *a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E695DFF8];
  v2 = a1;
  v3 = [v1 __ms_cachesDirectory];
  v4 = [v3 path];
  v13[0] = v4;
  v13[1] = @"BrowserData";
  v5 = MEMORY[0x1E696AEC0];
  v6 = [v2 hash];

  v7 = [v5 stringWithFormat:@"sticker-browser-%tu", v6];
  v13[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];

  v9 = [MEMORY[0x1E696AEC0] pathWithComponents:v8];
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v9 stringByDeletingLastPathComponent];
  [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:0];

  return v9;
}

id MSStickerBrowserStateRestorationInfo(void *a1)
{
  v1 = MSStickerBrowserStateRestorationInfoPath(a1);
  v2 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v1];

  return v2;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1CADF5D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKBrowserItemPayloadClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ChatKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ChatKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E83A2E20;
    v6 = 0;
    ChatKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (ChatKitLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("CKBrowserItemPayload");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKBrowserItemPayloadClass_block_invoke_cold_1();
  }

  getCKBrowserItemPayloadClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ChatKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  ChatKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_1CADF7814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ms_defaultLog()
{
  if (ms_defaultLog_onceToken != -1)
  {
    ms_defaultLog_cold_1();
  }

  v1 = ms_defaultLog_eventLog;

  return v1;
}

uint64_t __ms_defaultLog_block_invoke()
{
  ms_defaultLog_eventLog = os_log_create("com.apple.Messages.extensions", "Default");

  return MEMORY[0x1EEE66BB8]();
}

id ms_traceLog()
{
  if (ms_traceLog_onceToken != -1)
  {
    ms_traceLog_cold_1();
  }

  v1 = ms_traceLog_eventLog;

  return v1;
}

uint64_t __ms_traceLog_block_invoke()
{
  ms_traceLog_eventLog = os_log_create("com.apple.Messages.extensions", "Trace");

  return MEMORY[0x1EEE66BB8]();
}

id getCKImageDataClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKImageDataClass_softClass;
  v7 = getCKImageDataClass_softClass;
  if (!getCKImageDataClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKImageDataClass_block_invoke;
    v3[3] = &unk_1E83A2BA8;
    v3[4] = &v4;
    __getCKImageDataClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CADFC014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CADFC3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCKImageDataClass_block_invoke(uint64_t a1)
{
  ChatKitLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CKImageData");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCKImageDataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCKImageDataClass_block_invoke_cold_1();
    ChatKitLibrary_0();
  }
}

void ChatKitLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ChatKitLibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ChatKitLibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E83A2F00;
    v3 = 0;
    ChatKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ChatKitLibraryCore_frameworkLibrary_1)
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

uint64_t __ChatKitLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  ChatKitLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getCKPreviewDispatchCacheClass_block_invoke(uint64_t a1)
{
  ChatKitLibrary_0();
  result = objc_getClass("CKPreviewDispatchCache");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCKPreviewDispatchCacheClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCKPreviewDispatchCacheClass_block_invoke_cold_1();
    return +[(MSStickerUsageEvent *)v3];
  }

  return result;
}

id getCKImageAnimationTimerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKImageAnimationTimerClass_softClass;
  v7 = getCKImageAnimationTimerClass_softClass;
  if (!getCKImageAnimationTimerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKImageAnimationTimerClass_block_invoke;
    v3[3] = &unk_1E83A2BA8;
    v3[4] = &v4;
    __getCKImageAnimationTimerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CAE04980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCKUIBehaviorClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKUIBehaviorClass_softClass_0;
  v7 = getCKUIBehaviorClass_softClass_0;
  if (!getCKUIBehaviorClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKUIBehaviorClass_block_invoke_0;
    v3[3] = &unk_1E83A2BA8;
    v3[4] = &v4;
    __getCKUIBehaviorClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CAE04E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CAE052A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCKPreviewDispatchCacheClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKPreviewDispatchCacheClass_softClass_0;
  v7 = getCKPreviewDispatchCacheClass_softClass_0;
  if (!getCKPreviewDispatchCacheClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKPreviewDispatchCacheClass_block_invoke_0;
    v3[3] = &unk_1E83A2BA8;
    v3[4] = &v4;
    __getCKPreviewDispatchCacheClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CAE059FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCKAnimatedImageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKAnimatedImageClass_softClass;
  v7 = getCKAnimatedImageClass_softClass;
  if (!getCKAnimatedImageClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKAnimatedImageClass_block_invoke;
    v3[3] = &unk_1E83A2BA8;
    v3[4] = &v4;
    __getCKAnimatedImageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CAE05F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSTKStickerUsageManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSTKStickerUsageManagerClass_softClass;
  v7 = getSTKStickerUsageManagerClass_softClass;
  if (!getSTKStickerUsageManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSTKStickerUsageManagerClass_block_invoke;
    v3[3] = &unk_1E83A2BA8;
    v3[4] = &v4;
    __getSTKStickerUsageManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CAE0713C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCKImageAnimationTimerClass_block_invoke(uint64_t a1)
{
  ChatKitLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CKImageAnimationTimer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCKImageAnimationTimerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCKImageAnimationTimerClass_block_invoke_cold_1();
    ChatKitLibrary_1();
  }
}

void ChatKitLibrary_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ChatKitLibraryCore_frameworkLibrary_2)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ChatKitLibraryCore_block_invoke_2;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E83A3118;
    v3 = 0;
    ChatKitLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ChatKitLibraryCore_frameworkLibrary_2)
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

uint64_t __ChatKitLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  ChatKitLibraryCore_frameworkLibrary_2 = result;
  return result;
}

Class __getCKUIBehaviorClass_block_invoke_0(uint64_t a1)
{
  ChatKitLibrary_1();
  result = objc_getClass("CKUIBehavior");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCKUIBehaviorClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCKUIBehaviorClass_block_invoke_cold_1();
    return __getCKImageDataClass_block_invoke_0(v3);
  }

  return result;
}

Class __getCKImageDataClass_block_invoke_0(uint64_t a1)
{
  ChatKitLibrary_1();
  result = objc_getClass("CKImageData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCKImageDataClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCKImageDataClass_block_invoke_cold_1();
    return __getCKPreviewDispatchCacheClass_block_invoke_0(v3);
  }

  return result;
}

Class __getCKPreviewDispatchCacheClass_block_invoke_0(uint64_t a1)
{
  ChatKitLibrary_1();
  result = objc_getClass("CKPreviewDispatchCache");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCKPreviewDispatchCacheClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCKPreviewDispatchCacheClass_block_invoke_cold_1();
    return __getCKAnimatedImageClass_block_invoke(v3);
  }

  return result;
}

Class __getCKAnimatedImageClass_block_invoke(uint64_t a1)
{
  ChatKitLibrary_1();
  result = objc_getClass("CKAnimatedImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCKAnimatedImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCKAnimatedImageClass_block_invoke_cold_1();
    return __getSTKStickerUsageManagerClass_block_invoke(v3);
  }

  return result;
}

Class __getSTKStickerUsageManagerClass_block_invoke(uint64_t a1)
{
  if (!StickersLibraryCore_frameworkLibrary)
  {
    StickersLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("STKStickerUsageManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTKStickerUsageManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StickersLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StickersLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1CAE0F22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKBrowserItemPayloadClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ChatKitLibraryCore_frameworkLibrary_3)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ChatKitLibraryCore_block_invoke_3;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E83A3198;
    v6 = 0;
    ChatKitLibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v2 = v4[0];
    if (ChatKitLibraryCore_frameworkLibrary_3)
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
  result = objc_getClass("CKBrowserItemPayload");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKBrowserItemPayloadClass_block_invoke_cold_1();
  }

  getCKBrowserItemPayloadClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ChatKitLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  ChatKitLibraryCore_frameworkLibrary_3 = result;
  return result;
}

Messages::MSCriticalMessagingError_optional __swiftcall MSCriticalMessagingError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1CAE0FBA8(uint64_t a1)
{
  v2 = sub_1CAE12F74();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CAE0FBE4(uint64_t a1)
{
  v2 = sub_1CAE12F74();
  v3 = sub_1CAE12FC8();
  v4 = sub_1CAE1301C();

  return MEMORY[0x1EEDC6AB0](a1, v2, v3, v4);
}

unint64_t MSCriticalMessagingError.errorDescription.getter()
{
  v1 = *v0;
  v2 = 0x206E776F6E6B6E55;
  v3 = 0x7070757320746F4ELL;
  v4 = 0x6874756120746F4ELL;
  if (v1 != 3)
  {
    v4 = 0x69616620646E6553;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1CAE0FD14()
{
  v1 = *v0;
  v2 = 0x206E776F6E6B6E55;
  v3 = 0x7070757320746F4ELL;
  v4 = 0x6874756120746F4ELL;
  if (v1 != 3)
  {
    v4 = 0x69616620646E6553;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Messages::MSCriticalMessagingAuthorizationStatus_optional __swiftcall MSCriticalMessagingAuthorizationStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1CAE0FE44()
{
  v1 = *v0;
  sub_1CAE16584();
  MEMORY[0x1CCAA97F0](v1);
  return sub_1CAE165A4();
}

uint64_t sub_1CAE0FE8C()
{
  v1 = *v0;
  sub_1CAE16584();
  MEMORY[0x1CCAA97F0](v1);
  return sub_1CAE165A4();
}

uint64_t MSRecipient.phoneNumber.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MSRecipient.phoneNumber.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static MSRecipient.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1CAE16514();
  }
}

uint64_t MSRecipient.hashValue.getter()
{
  sub_1CAE16584();
  sub_1CAE16404();
  return sub_1CAE165A4();
}

uint64_t sub_1CAE0FFF0()
{
  sub_1CAE16584();
  sub_1CAE16404();
  return sub_1CAE165A4();
}

uint64_t sub_1CAE10044()
{
  sub_1CAE16584();
  sub_1CAE16404();
  return sub_1CAE165A4();
}

uint64_t sub_1CAE1008C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1CAE16514();
  }
}

id MSCriticalSMSMessenger.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MSCriticalSMSMessenger.init()()
{
  v1 = OBJC_IVAR____TtC8Messages22MSCriticalSMSMessenger_messenger;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69A5AA8]) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MSCriticalSMSMessenger();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1CAE10200(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1CAE10220, 0, 0);
}

uint64_t sub_1CAE10220()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isBackgroundMessagingAPIEnabled];

  if (!v2)
  {
    v4 = 2;
    goto LABEL_5;
  }

  v3 = v0[3];
  if (*(v3 + 16) > 5uLL)
  {
    v4 = 1;
LABEL_5:
    sub_1CAE10588();
    swift_allocError();
    *v5 = v4;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }

  v8 = v0[4];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v3;
  v10 = swift_task_alloc();
  v0[6] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC47EF50);
  *v10 = v0;
  v10[1] = sub_1CAE103EC;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001ALL, 0x80000001CAE1E390, sub_1CAE11D8C, v9, v11);
}

uint64_t sub_1CAE103EC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1CAE10524;
  }

  else
  {

    v2 = sub_1CAE10508;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CAE10524()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1CAE10588()
{
  result = qword_1EC47EF48;
  if (!qword_1EC47EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC47EF48);
  }

  return result;
}

void sub_1CAE1060C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_1CAE12828(0, &qword_1EC47EF70);
  sub_1CAE12828(0, &qword_1EC47EF78);
  sub_1CAE12870();
  v5 = sub_1CAE163D4();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1CAE106E8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1CAE10708, 0, 0);
}

uint64_t sub_1CAE10708()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isBackgroundMessagingAPIEnabled];

  if (!v2)
  {
    v4 = 2;
    goto LABEL_5;
  }

  v3 = v0[3];
  if (*(v3 + 16) > 5uLL)
  {
    v4 = 1;
LABEL_5:
    sub_1CAE10588();
    swift_allocError();
    *v5 = v4;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }

  v8 = v0[4];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v3;
  v10 = swift_task_alloc();
  v0[6] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC47EF50);
  *v10 = v0;
  v10[1] = sub_1CAE108D4;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001ELL, 0x80000001CAE1E3B0, sub_1CAE11E20, v9, v11);
}

uint64_t sub_1CAE108D4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1CAE1324C;
  }

  else
  {

    v2 = sub_1CAE13250;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CAE109F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC47EFB0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00]();
  v13 = &v17 - v12;
  (*(v11 + 16))(&v17 - v12, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  (*(v11 + 32))(v15 + v14, v13, v10);
  a6(a3, a5, v15);
}

uint64_t sub_1CAE10B48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1CAE163C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC47EFB0);
    return sub_1CAE16434();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC47EFB0);
    return sub_1CAE16444();
  }
}

void sub_1CAE10BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v8 = a7;
  v9 = a6;
  v10 = a5;
  v11 = v7;
  v13 = a2;
  v14 = *(a1 + 16);
  if (v14)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1CAE16494();
    v16 = a1 + 40;
    do
    {
      v17 = objc_allocWithZone(MEMORY[0x1E69A7F18]);

      v18 = [v17 init];
      v19 = sub_1CAE163E4();
      [v18 setPhoneNumber_];

      sub_1CAE16474();
      sub_1CAE164A4();
      sub_1CAE164B4();
      sub_1CAE16484();
      v16 += 16;
      --v14;
    }

    while (v14);
    v9 = a6;
    v8 = a7;
    v13 = a2;
    v10 = a5;
  }

  v20 = *&v7[OBJC_IVAR____TtC8Messages22MSCriticalSMSMessenger_messenger];
  sub_1CAE12828(0, &qword_1EC47EF70);
  v21 = v20;
  v22 = sub_1CAE16414();

  v23 = swift_allocObject();
  v23[2] = v13;
  v23[3] = a3;
  v23[4] = v11;
  aBlock[4] = v10;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CAE1060C;
  aBlock[3] = v9;
  v24 = _Block_copy(aBlock);

  v25 = v11;

  [v21 *v8];
  _Block_release(v24);
}

uint64_t sub_1CAE10E20(unint64_t a1, uint64_t a2, void (*a3)(unint64_t, void *))
{
  if (a2)
  {
    v4 = sub_1CAE163C4();
    v5 = [v4 code];
    if (v5 >= 5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    v7 = sub_1CAE12E18(MEMORY[0x1E69E7CC0]);
    sub_1CAE10588();
    v8 = swift_allocError();
    *v9 = v6;
    a3(v7, v8);
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = sub_1CAE164C4() | 0x8000000000000000;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v12 = ~v15;
    v11 = a1 + 64;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v13 = v17 & *(a1 + 64);
    v14 = a1;
  }

  v18 = 0;
  v47 = v12;
  v19 = (v12 + 64) >> 6;
  v20 = MEMORY[0x1E69E7CC8];
  v50 = v19;
  v51 = v14;
  v49 = v11;
  while ((v14 & 0x8000000000000000) != 0)
  {
    if (!sub_1CAE164D4() || (sub_1CAE12828(0, &qword_1EC47EF70), swift_dynamicCast(), sub_1CAE12828(0, &qword_1EC47EF78), v27 = v54, swift_dynamicCast(), v53 = v54, v23 = v18, v24 = v13, !v54))
    {
LABEL_40:
      sub_1CAE128D8();
      a3(v20, 0);
    }

LABEL_26:
    v52 = v24;
    v28 = [v27 phoneNumber];
    v29 = sub_1CAE163F4();
    v31 = v30;

    v32 = [v53 integerValue];
    if (v32 == 2)
    {
      v33 = 2;
    }

    else
    {
      v33 = v32 == 1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v20;
    v36 = sub_1CAE128E0(v29, v31);
    v37 = v20[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_42;
    }

    v40 = v35;
    if (v20[3] >= v39)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v35)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_1CAE12CB0();
        if (v40)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_1CAE12958(v39, isUniquelyReferenced_nonNull_native);
      v41 = sub_1CAE128E0(v29, v31);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_44;
      }

      v36 = v41;
      if (v40)
      {
LABEL_15:

        *(v20[7] + v36) = v33;

        goto LABEL_16;
      }
    }

    v20[(v36 >> 6) + 8] |= 1 << v36;
    v43 = (v20[6] + 16 * v36);
    *v43 = v29;
    v43[1] = v31;
    *(v20[7] + v36) = v33;

    v44 = v20[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_43;
    }

    v20[2] = v46;
LABEL_16:
    v18 = v23;
    v14 = v51;
    v13 = v52;
    v11 = v49;
    v19 = v50;
  }

  v21 = v18;
  v22 = v13;
  v23 = v18;
  if (v13)
  {
LABEL_22:
    v24 = (v22 - 1) & v22;
    v25 = (v23 << 9) | (8 * __clz(__rbit64(v22)));
    v26 = *(*(v14 + 56) + v25);
    v27 = *(*(v14 + 48) + v25);
    v53 = v26;
    if (!v27)
    {
      goto LABEL_40;
    }

    goto LABEL_26;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v19)
    {
      goto LABEL_40;
    }

    v22 = *(v11 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_1CAE16534();
  __break(1u);
  return result;
}

uint64_t sub_1CAE11288(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v3[2] = v2;
  v3[3] = v4;
  v6 = *a2;
  v7 = a2[1];
  v3[4] = v5;
  v3[5] = v6;
  v3[6] = v7;
  return MEMORY[0x1EEE6DFA0](sub_1CAE112B8, 0, 0);
}

uint64_t sub_1CAE112B8()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isBackgroundMessagingAPIEnabled];

  if (v2)
  {
    v0[7] = objc_opt_self();
    v0[8] = sub_1CAE16464();
    v0[9] = sub_1CAE16454();
    v4 = sub_1CAE16424();

    return MEMORY[0x1EEE6DFA0](sub_1CAE1140C, v4, v3);
  }

  else
  {
    sub_1CAE10588();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_1CAE1140C()
{
  v1 = *(v0 + 56);

  *(v0 + 80) = [v1 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1CAE11494, 0, 0);
}

uint64_t sub_1CAE11494()
{
  *(v0 + 88) = sub_1CAE16454();
  v2 = sub_1CAE16424();

  return MEMORY[0x1EEE6DFA0](sub_1CAE11520, v2, v1);
}

uint64_t sub_1CAE11520()
{
  v1 = *(v0 + 80);

  *(v0 + 96) = [v1 applicationState];

  return MEMORY[0x1EEE6DFA0](sub_1CAE115A0, 0, 0);
}

uint64_t sub_1CAE115A0()
{
  if (*(v0 + 96) == 2)
  {
    v1 = *(v0 + 48);
    v8 = *(v0 + 16);
    v9 = *(v0 + 32);
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *(v2 + 16) = v8;
    *(v2 + 32) = v9;
    *(v2 + 48) = v1;
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = sub_1CAE11720;
    v4 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DE38](v0 + 128, 0, 0, 0x743A5F28646E6573, 0xEB00000000293A6FLL, sub_1CAE11EB0, v2, v4);
  }

  else
  {
    sub_1CAE10588();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6(0);
  }
}

uint64_t sub_1CAE11720()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1CAE11858;
  }

  else
  {

    v2 = sub_1CAE1183C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CAE11858()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1CAE118C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC47EFA8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00]();
  v14 = v18 - v13;
  v19[0] = a3;
  v19[1] = a4;
  v18[0] = a5;
  v18[1] = a6;
  (*(v12 + 16))(v18 - v13, a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v14, v11);
  sub_1CAE11AB4(v19, v18, sub_1CAE13070, v16);
}

uint64_t sub_1CAE11A34(uint64_t a1)
{
  if (a1)
  {
    sub_1CAE163C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC47EFA8);
    return sub_1CAE16434();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC47EFA8);
    return sub_1CAE16444();
  }
}

void sub_1CAE11AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E69A7F10]) init];
  v8 = sub_1CAE163E4();
  [v7 setMessageText_];

  v9 = [objc_allocWithZone(MEMORY[0x1E69A7F18]) init];
  v10 = sub_1CAE163E4();
  [v9 setPhoneNumber_];

  v11 = *(v4 + OBJC_IVAR____TtC8Messages22MSCriticalSMSMessenger_messenger);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v15[4] = sub_1CAE12808;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1CAE11D18;
  v15[3] = &block_descriptor;
  v13 = _Block_copy(v15);
  v14 = v11;

  [v14 sendBackgroundMessage:v7 toRecipient:v9 completion:v13];
  _Block_release(v13);
}

void sub_1CAE11C60(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    v7 = sub_1CAE163C4();
    v3 = [v7 code];
    if (v3 >= 5)
    {
      v4 = 0;
    }

    else
    {
      v4 = v3;
    }

    sub_1CAE10588();
    v5 = swift_allocError();
    *v6 = v4;
    a2();
  }

  else
  {
    a2();
  }
}

void sub_1CAE11D18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id MSCriticalSMSMessenger.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSCriticalSMSMessenger();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CAE11EC4()
{
  result = qword_1EC47EF58;
  if (!qword_1EC47EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC47EF58);
  }

  return result;
}

unint64_t sub_1CAE11F1C()
{
  result = qword_1EC47EF60;
  if (!qword_1EC47EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC47EF60);
  }

  return result;
}

unint64_t sub_1CAE11F74()
{
  result = qword_1EC47EF68;
  if (!qword_1EC47EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC47EF68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MSCriticalMessagingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MSCriticalMessagingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MSCriticalMessagingAuthorizationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MSCriticalMessagingAuthorizationStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1CAE12294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CAE122DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of MSCriticalSMSMessenger.requestAuthorization(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CAE12470;

  return v7(a1);
}

uint64_t sub_1CAE12470(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of MSCriticalSMSMessenger.checkAuthorizationStatus(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CAE13214;

  return v7(a1);
}

uint64_t dispatch thunk of MSCriticalSMSMessenger.send(_:to:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x90);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CAE12470;

  return v9(a1, a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CAE12828(uint64_t a1, unint64_t *a2)
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

unint64_t sub_1CAE12870()
{
  result = qword_1EC47EF80;
  if (!qword_1EC47EF80)
  {
    sub_1CAE12828(255, &qword_1EC47EF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC47EF80);
  }

  return result;
}

unint64_t sub_1CAE128E0(uint64_t a1, uint64_t a2)
{
  sub_1CAE16584();
  sub_1CAE16404();
  v4 = sub_1CAE165A4();

  return sub_1CAE12BF8(a1, a2, v4);
}

uint64_t sub_1CAE12958(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC47EF88);
  v34 = a2;
  result = sub_1CAE164F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1CAE16584();
      sub_1CAE16404();
      result = sub_1CAE165A4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1CAE12BF8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1CAE16514())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_1CAE12CB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC47EF88);
  v2 = *v0;
  v3 = sub_1CAE164E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_1CAE12E18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC47EF88);
    v3 = sub_1CAE16504();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1CAE128E0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t objectdestroy_36Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1CAE12F74()
{
  result = qword_1EC47EF90;
  if (!qword_1EC47EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC47EF90);
  }

  return result;
}

unint64_t sub_1CAE12FC8()
{
  result = qword_1EC47EF98;
  if (!qword_1EC47EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC47EF98);
  }

  return result;
}

unint64_t sub_1CAE1301C()
{
  result = qword_1EC47EFA0;
  if (!qword_1EC47EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC47EFA0);
  }

  return result;
}

uint64_t sub_1CAE13070(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC47EFA8);

  return sub_1CAE11A34(a1);
}

uint64_t objectdestroy_48Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}