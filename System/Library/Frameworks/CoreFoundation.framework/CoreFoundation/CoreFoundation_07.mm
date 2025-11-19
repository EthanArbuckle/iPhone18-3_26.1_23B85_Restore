UInt8 *__cdecl CFDataGetMutableBytePtr(CFMutableDataRef theData)
{
  if (CF_IS_OBJC(0x14uLL, theData))
  {

    return [(__CFData *)theData mutableBytes];
  }

  else
  {
    v3 = atomic_load(theData + 1);
    if ((v3 & 4) != 0)
    {
      return ((theData + 63) & 0xFFFFFFFFFFFFFFF0);
    }

    else
    {
      return *(theData + 5);
    }
  }
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return __CFRecordAllocationEvent();
}

void OUTLINED_FUNCTION_0_14(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x12u);
}

uint64_t OUTLINED_FUNCTION_0_21(objc_class *a1)
{

  return __CFFullMethodName(a1, v2, v1);
}

void OUTLINED_FUNCTION_0_28(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void readDataFinalize(const void *a1, CFTypeRef *a2)
{
  CFRelease(*a2);
  v4 = CFGetAllocator(a1);

  CFAllocatorDeallocate(v4, a2);
}

mach_port_t CFMachPortGetPort(CFMachPortRef port)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (__CF_FORK_STATE)
  {
    return 0;
  }

  if (!CF_IS_OBJC(0x24uLL, port))
  {
    return *(port + 5);
  }

  return [(__CFMachPort *)port machPort];
}

uint64_t readDataCreate(const void *a1, CFTypeRef *a2)
{
  v3 = CFGetAllocator(a1);
  Typed = CFAllocatorAllocateTyped(v3, 24, 0x107004054E2031FLL, 0);
  if (Typed)
  {
    v5 = CFRetain(*a2);
    *Typed = v5;
    *(Typed + 8) = CFDataGetBytePtr(v5);
    *(Typed + 16) = 0;
  }

  return Typed;
}

uint64_t _CFStringGetUserDefaultEncoding(_DWORD *a1, _DWORD *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = _CFGetEUID();
  v5 = __CFgetenv("__CF_USER_TEXT_ENCODING");
  v13 = v5;
  if (v5)
  {
    if (strtol_l(v5, &v13, 0, 0) == v4 && *v13 == 58)
    {
      v6 = ++v13;
      goto LABEL_8;
    }

    v13 = 0;
  }

  if (v4 < 1)
  {
    goto LABEL_20;
  }

  snprintf(__str, 0x20uLL, "0x%X:0:0", v4);
  setenv("__CF_USER_TEXT_ENCODING", __str, 1);
  v6 = v13;
  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_8:
  result = strtol_l(v6, &v13, 0, 0);
  if ((result & 0xFFFFFFFE) == 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = result;
  }

  *a1 = v8;
  HIDWORD(v10) = v8 - 256;
  LODWORD(v10) = v8 - 256;
  v9 = v10 >> 26;
  if ((v9 - 3) < 5 || v9 == 0)
  {
    *a1 = 0;
  }

  if (*v13 != 58)
  {
LABEL_20:
    result = 0;
    *a1 = 0;
    if (a2)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (a2)
  {
    result = strtol_l(++v13, 0, 0, 0);
LABEL_21:
    *a2 = result;
  }

LABEL_22:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void _CFRuntimeBridgeClasses(unint64_t a1, const char *a2)
{
  os_unfair_lock_lock_with_options();
  if (a1 > 0x47)
  {
    v6 = __CFRuntimeClassTables[((a1 - 72) >> 6) + 16];
    FutureClass = objc_getFutureClass(a2);
    v5 = (v6 + 8 * ((a1 - 72) & 0x3F));
  }

  else
  {
    FutureClass = objc_getFutureClass(a2);
    v5 = &__CFRuntimeBuiltinObjCClassTable[a1];
  }

  v7 = *v5;
  *v5 = FutureClass;

  os_unfair_lock_unlock(&__CFBigRuntimeFunnel);
}

const char *__CFNumberGetTypeID_block_invoke()
{
  if (_CFExecutableLinkedOnOrAfter(7uLL) && *MEMORY[0x1E69E5908])
  {
    _objc_registerTaggedPointerClass();
  }

  else
  {
    __CFNumberTaggedPointersDisabled = 1;
  }

  result = getenv("CFNumberDisableCache");
  if (result)
  {
    result = strcmp(result, "all");
    if (result)
    {
      v1 = 1;
    }

    else
    {
      v1 = 2;
    }

    __CFNumberCaching = v1;
  }

  return result;
}

void __CFCharacterSetInitialize()
{
  if (__CFCharacterSetInitialize_initOnce != -1)
  {
    __CFCharacterSetInitialize_cold_1();
  }
}

CFMutableDictionaryRef _CFXNotificationRegistrarGetNamePool()
{
  os_unfair_lock_assert_owner(&__CFXNotificationRegistrarNamePoolLock);
  result = __CFXNotificationRegistrarNamePool;
  if (!__CFXNotificationRegistrarNamePool)
  {
    result = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, 0);
    __CFXNotificationRegistrarNamePool = result;
  }

  return result;
}

uint64_t CFDictionaryGetKeyIfPresent(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  CFBasicHashFindBucket(a1, a2, &v6);
  if (*(&v7 + 1))
  {
    if (a3)
    {
      *a3 = *(&v6 + 1);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef __CFStringCollectionCopy(const __CFAllocator *a1, const __CFString *a2)
{
  if (!a2)
  {
    __CFStringCollectionCopy_cold_1();
  }

  return CFStringCreateCopy(a1, a2);
}

uint64_t __CFRunLoopTimerDeallocate(uint64_t a1)
{
  *(a1 + 16) |= 4u;
  CFRunLoopTimerInvalidate(a1);
  CFRelease(*(a1 + 96));
  *(a1 + 96) = 0;

  return pthread_mutex_destroy((a1 + 24));
}

void __CFInitialize()
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (!__CFInitialized && (__CFInitializing & 1) == 0)
  {
    __CFInitializing = 1;
    __CFProphylacticAutofsAccess = 1;
    v0 = &qword_1ED40B120;
    v1 = 11;
    do
    {
      v2 = *(v0 - 1);
      if (v2)
      {
        v3 = getenv(v2);
        if (v3)
        {
          *v0 = v3;
        }
      }

      v0 += 2;
      --v1;
    }

    while (v1);
    __exceptionInit();
    objc_setForwardHandler(_CF_forwarding_prep_0, 0);
    objc_setEnumerationMutationHandler(__NSFastEnumerationMutationHandler);
    v25[0] = 0;
    _CFStringGetUserDefaultEncoding(v25 + 1, v25);
    pthread_atfork(__cf_atfork_prepare, 0, __cf_atfork_child);
    v4 = getenv("NSObjCMessageLoggingEnabled");
    if (v4 && (*v4 | 0x20) == 0x79)
    {
      instrumentObjcMessageSends();
    }

    _CFRuntimeBridgeClasses(0, "__NSCFType");
    v5 = &qword_1ED40C0C8;
    v6 = 1;
    v7 = __CFRuntimeBuiltinObjCClassTable[0];
    do
    {
      v8 = __CFRuntimeBuiltinObjCClassTable[v6];
      __CFRuntimeBuiltinObjCClassTable[v6++] = v7;
      ++v5;
    }

    while (v6 != 72);
    _CFRuntimeBridgeClasses(7uLL, "__NSCFString");
    _CFRuntimeBridgeClasses(0x10uLL, "NSNull");
    _CFRuntimeBridgeClasses(0x11uLL, "__NSCFSet");
    _CFRuntimeBridgeClasses(0x12uLL, "__NSCFDictionary");
    _CFRuntimeBridgeClasses(0x13uLL, "__NSCFArray");
    _CFRuntimeBridgeClasses(0x14uLL, "__NSCFData");
    _CFRuntimeBridgeClasses(0x15uLL, "__NSCFBoolean");
    _CFRuntimeBridgeClasses(0x16uLL, "__NSCFNumber");
    CFNumberGetTypeID();
    __CFCharacterSetInitialize();
    TypeID = CFMachPortGetTypeID();
    _CFRuntimeBridgeClasses(TypeID, "NSMachPort");
    v10 = CFURLGetTypeID();
    _CFRuntimeBridgeClasses(v10, "NSURL");
    v11 = CFRunLoopTimerGetTypeID();
    _CFRuntimeBridgeClasses(v11, "__NSCFTimer");
    v12 = CFAttributedStringGetTypeID();
    _CFRuntimeBridgeClasses(v12, "__NSCFAttributedString");
    v13 = CFLocaleGetTypeID();
    _CFRuntimeBridgeClasses(v13, "__NSCFLocale");
    v14 = CFErrorGetTypeID();
    _CFRuntimeBridgeClasses(v14, "__NSCFError");
    v15 = CFCharacterSetGetTypeID();
    _CFRuntimeBridgeClasses(v15, "__NSCFCharacterSet");
    v16 = CFReadStreamGetTypeID();
    _CFRuntimeBridgeClasses(v16, "__NSCFInputStream");
    v17 = CFWriteStreamGetTypeID();
    _CFRuntimeBridgeClasses(v17, "__NSCFOutputStream");
    _CFProcessPath();
    *MEMORY[0x1E69E9640] = _CFAutoreleasePoolPush;
    *MEMORY[0x1E69E9698] = _CFAutoreleasePoolPop;
    __CFOAInitialize();
    __CFStringInitializeSystemEncoding();
    __CFMakeNSBlockClasses();
    v18 = getenv("NSZombieEnabled");
    if (v18 && (*v18 | 0x20) == 0x79 && !__CFZombieEnabled)
    {
      __CFZombieEnabled = -1;
      __CFZombifyNSObject();
    }

    v19 = getenv("NSDeallocateZombies");
    if (v19 && (*v19 | 0x20) == 0x79)
    {
      __CFDeallocateZombies = -1;
    }

    __CFProphylacticAutofsAccess = 0;
    _os_log_set_nscf_formatter();
    v20 = _CFGetHandleForInsertedOrInterposingLibrary("libclang_rt.tsan");
    if (v20)
    {
      v21 = v20;
      __cf_tsanRegisterTagFunction = dlsym(v20, "__tsan_external_register_tag");
      __cf_tsanAssignTagFunction = dlsym(v21, "__tsan_external_assign_tag");
      __cf_tsanReadFunction = dlsym(v21, "__tsan_external_read");
      v22 = dlsym(v21, "__tsan_external_write");
      __cf_tsanWriteFunction = v22;
      if (!__cf_tsanRegisterTagFunction || !__cf_tsanAssignTagFunction || !__cf_tsanReadFunction || !v22 || (__CFTSANTagMutableArray = __cf_tsanRegisterTagFunction("NSMutableArray"), __CFTSANTagMutableDictionary = __cf_tsanRegisterTagFunction("NSMutableDictionary"), __CFTSANTagMutableSet = __cf_tsanRegisterTagFunction("NSMutableSet"), __CFTSANTagMutableOrderedSet = __cf_tsanRegisterTagFunction("NSMutableOrderedSet"), v23 = __cf_tsanRegisterTagFunction("NSMutableData"), __CFTSANTagMutableData = v23, !__CFTSANTagMutableArray) || !__CFTSANTagMutableDictionary || !__CFTSANTagMutableSet || !__CFTSANTagMutableOrderedSet || !v23)
      {
        __cf_tsanRegisterTagFunction = 0;
        __cf_tsanAssignTagFunction = 0;
        __cf_tsanReadFunction = 0;
        __cf_tsanWriteFunction = 0;
        __CFTSANTagMutableArray = 0;
        __CFTSANTagMutableDictionary = 0;
        __CFTSANTagMutableSet = 0;
        __CFTSANTagMutableOrderedSet = 0;
        __CFTSANTagMutableData = 0;
      }
    }

    __CFInitializing = 0;
    __CFInitialized = 1;
  }

  v24 = *MEMORY[0x1E69E9840];
}

objc_uncaught_exception_handler __exceptionInit()
{
  objc_setExceptionPreprocessor(__exceptionPreprocess);
  objc_setExceptionMatcher(__exceptionMatch);

  return objc_setUncaughtExceptionHandler(__handleUncaughtException);
}

char *__CFgetenv(char *__s1)
{
  v2 = &qword_1ED40B120;
  v3 = 11;
  do
  {
    v4 = *(v2 - 1);
    if (v4 && !strcmp(__s1, v4))
    {
      return *v2;
    }

    v2 += 2;
    --v3;
  }

  while (v3);

  return getenv(__s1);
}

const char *_CFProcessPath()
{
  v9 = *MEMORY[0x1E69E9840];
  result = __CFProcessPath;
  if (!__CFProcessPath)
  {
    getpid();
    bufsize[1] = 0;
    bufsize[0] = 1026;
    v1 = csops();
    MEMORY[0x1EEE9AC00](v1, v2);
    if (!_NSGetExecutablePath(v7, bufsize))
    {
      v3 = strdup(v7);
      __CFProcessPath = v3;
      v4 = strrchr(v3, 47);
      if (v4)
      {
        v5 = (v4 + 1);
      }

      else
      {
        v5 = v3;
      }

      __CFprogname = v5;
    }

    result = __CFProcessPath;
    if (!__CFProcessPath)
    {
      result = "";
      __CFProcessPath = "";
      __CFprogname = "";
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __CFOAInitialize()
{
  if (__CFgetenv("OAKeepAllocationStatistics"))
  {
    v0 = __CFOAInitialize_dyfunc;
    if (__CFOAInitialize_dyfunc == -1)
    {
      v0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_OAInitialize");
      __CFOAInitialize_dyfunc = v0;
    }

    if (v0)
    {
      (v0)();
      __CFObjectAllocRecordAllocationFunction = dlsym(0xFFFFFFFFFFFFFFFELL, "_OARecordAllocationEvent");
      __CFObjectAllocSetLastAllocEventNameFunction = dlsym(0xFFFFFFFFFFFFFFFELL, "_OASetLastAllocationEventName");
      __CFOAInitializeNSObject();
      __CFOASafe = 1;
    }
  }
}

const void *__CFSetCharToUniCharFunc(const void *result)
{
  v6 = *MEMORY[0x1E69E9840];
  if (__CFCharToUniCharFunc != result)
  {
    v1 = result;
    if (result)
    {
      result = CFStringEncodingGetConverter(0);
      if (result && *(result + 1) == v1)
      {
        __CFCharToUniCharTable = __CFMacRomanCharToUnicharTable;
      }

      else
      {
        __CFCharToUniCharTable = __CFMutableCharToUniCharTable;
        for (i = 128; i != 256; ++i)
        {
          v5 = 0;
          result = v1(0, i, &v5);
          if (result)
          {
            v3 = v5;
          }

          else
          {
            v3 = -3;
          }

          __CFMutableCharToUniCharTable[i] = v3;
        }
      }

      __CFCharToUniCharFunc = v1;
    }

    else
    {
      __CFCharToUniCharTable = &__CFIdempotentCharToUniCharTable;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __CFMakeNSBlockClasses()
{
  v13 = *MEMORY[0x1E69E9840];
  if (objc_lookUpClass("__NSStackBlock__"))
  {
    v0 = objc_opt_class();
    v1 = objc_lookUpClass("__NSStackBlock__");
    class_setSuperclass(v1, v0);
    v2 = objc_lookUpClass("__NSMallocBlock__");
    class_setSuperclass(v2, v0);
    v3 = objc_lookUpClass("__NSAutoBlock__");
    class_setSuperclass(v3, v0);
    v4 = objc_lookUpClass("__NSGlobalBlock__");
    class_setSuperclass(v4, v0);
  }

  else
  {
    objc_lookUpClass("__NSStackBlock");
    v5 = MEMORY[0x1E69E9820];
    objc_initializeClassPair();
    objc_lookUpClass("__NSMallocBlock");
    v6 = MEMORY[0x1E69E9818];
    objc_initializeClassPair();
    objc_lookUpClass("__NSAutoBlock");
    v7 = MEMORY[0x1E69E9800];
    objc_initializeClassPair();
    objc_lookUpClass("__NSFinalizingBlock");
    v8 = MEMORY[0x1E69E9808];
    objc_initializeClassPair();
    objc_lookUpClass("__NSGlobalBlock");
    v9 = MEMORY[0x1E69E9810];
    objc_initializeClassPair();
    objc_lookUpClass("__NSBlockVariable");
    v10 = MEMORY[0x1E69E9828];
    objc_initializeClassPair();
    objc_registerClassPair(v5);
    objc_registerClassPair(v6);
    objc_registerClassPair(v7);
    objc_registerClassPair(v8);
    objc_registerClassPair(v9);
    objc_registerClassPair(v10);
  }

  v12 = *ymmword_1EF067BC0;
  _Block_use_RR2(&v12);
  v11 = *MEMORY[0x1E69E9840];
}

void *_CFGetHandleForInsertedOrInterposingLibrary(const char *a1)
{
  if (!a1)
  {
    _CFGetHandleForInsertedOrInterposingLibrary_cold_1();
  }

  if (!dyld_has_inserted_or_interposing_libraries())
  {
    return 0;
  }

  return _CFGetHandleForLoadedLibrary(a1);
}

uint64_t _CFStringInitializeTaggedStrings(uint64_t a1)
{
  result = _CFExecutableLinkedOnOrAfter(8uLL);
  if (result)
  {
    if (*MEMORY[0x1E69E5908])
    {
      result = _objc_registerTaggedPointerClass();
      __CFTaggedStringClass = a1;
    }
  }

  return result;
}

CFMutableDictionaryRef OUTLINED_FUNCTION_7_0()
{

  return CFDictionaryCreateMutable(v0, 0, v1, v2);
}

void _CFPreferencesSetAppValueWithContainerAndConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v10 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesSetAppValueWithContainerAndConfiguration_cold_1();
    }

    v10 = [qword_1ED40BE18 copyPrefs];
  }

  v11 = v10;
  [v10 setValue:a2 forKey:a1 appIdentifier:a3 container:a4 configurationURL:a5];
}

CFStringRef createDeepCopyOfValueForKey(CFStringRef cf, uint64_t a2)
{
  v2 = cf;
  if ((cf & 0x8000000000000000) == 0 && &__kCFBooleanFalse != cf && &__kCFBooleanTrue != cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFStringGetTypeID())
    {

      return CFStringCreateCopy(&__kCFAllocatorSystemDefault, v2);
    }

    else
    {
      cf = CFPropertyListCreateDeepCopy(&__kCFAllocatorSystemDefault, v2, 0);
      if (!cf)
      {
        _CFPrefsValidateValueForKey(v2, a2);
        return 0;
      }
    }
  }

  return cf;
}

void OUTLINED_FUNCTION_6_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_6_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(result + 32) + 40);
  v4 = *(*(result + 32) + 48);
  return result;
}

uint64_t _CFPrefsClientLog()
{
  if (makeLogHandles_logToken != -1)
  {
    _CFPrefsClientLog_cold_1();
  }

  return clientHandle;
}

uint64_t _CFPrefsEncodeValueIntoMessage(xpc_object_t xdict, char *key, __objc2_class **cf, void *a4)
{
  v4 = 0;
  v21 = *MEMORY[0x1E69E9840];
  if (!key || !cf)
  {
    goto LABEL_29;
  }

  if (&__kCFBooleanTrue == cf || &__kCFBooleanFalse == cf)
  {
    xpc_dictionary_set_BOOL(xdict, key, &__kCFBooleanTrue == cf);
    Length = 1;
  }

  else
  {
    if (&__kCFNull == cf)
    {
      v11 = xpc_null_create();
      xpc_dictionary_set_value(xdict, key, v11);
      xpc_release(v11);
LABEL_28:
      v4 = 1;
      goto LABEL_29;
    }

    if (CFGetTypeID(cf) == 7)
    {
      bzero(buffer, 0x400uLL);
      if (CFStringGetCString(cf, buffer, 1024, 0x8000100u))
      {
        xpc_dictionary_set_string(xdict, key, buffer);
      }

      else
      {
        v4 = _CFXPCCreateXPCObjectFromCFObject(cf);
        if (!v4)
        {
          goto LABEL_24;
        }

        xpc_dictionary_set_value(xdict, key, v4);
        xpc_release(v4);
      }

      v4 = 1;
LABEL_24:
      Length = CFStringGetLength(cf);
      if (!a4)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    Data = CFPropertyListCreateData(&__kCFAllocatorSystemDefault, cf, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (!Data)
    {
      v16 = strlen(key);
      v17 = CFStringCreateWithBytes(&__kCFAllocatorSystemDefault, key, v16, 0x8000100u, 0);
      _CFPrefsValidateValueForKey(cf, v17);
      if (v17)
      {
        CFRelease(v17);
      }

      v4 = 0;
      goto LABEL_29;
    }

    v13 = Data;
    BytePtr = CFDataGetBytePtr(Data);
    v15 = CFDataGetLength(v13);
    xpc_dictionary_set_data(xdict, key, BytePtr, v15);
    Length = CFDataGetLength(v13);
    CFRelease(v13);
  }

  v4 = 1;
  if (!a4)
  {
    goto LABEL_29;
  }

LABEL_25:
  if (v4 && Length)
  {
    *a4 += Length;
    goto LABEL_28;
  }

LABEL_29:
  v18 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_18313C6FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _CFPrefsEncodeKeyValuePairsIntoMessage(xpc_object_t xdict, __objc2_class ***a2, __objc2_class ***a3, uint64_t a4, void *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a4 <= 0)
  {
    _CFPrefsEncodeKeyValuePairsIntoMessage_cold_1();
  }

  v6 = a4;
  v8 = a2;
  v17 = 0;
  if (a4 == 1)
  {
    if (_CFPrefsEncodeValueIntoMessage(xdict, "Key", *a2, &v17))
    {
      if (*a3)
      {
        v10 = *a3;
      }

      else
      {
        v10 = &__kCFNull;
      }

      v11 = _CFPrefsEncodeValueIntoMessage(xdict, "Value", v10, &v17);
      if (!a5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v11 = 0;
      if (!a5)
      {
        goto LABEL_21;
      }
    }

LABEL_20:
    *a5 = v17;
    goto LABEL_21;
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  v11 = 1;
  do
  {
    v13 = *v8;
    if (*v8)
    {
      bzero(buffer, 0x402uLL);
      if ((v11 & 1) != 0 && CFStringGetCString(v13, buffer, 1026, 0x8000100u))
      {
        if (*a3)
        {
          v14 = *a3;
        }

        else
        {
          v14 = &__kCFNull;
        }

        v11 = _CFPrefsEncodeValueIntoMessage(v12, buffer, v14, &v17);
      }

      else
      {
        v11 = 0;
      }
    }

    ++a3;
    ++v8;
    --v6;
  }

  while (v6);
  xpc_dictionary_set_BOOL(xdict, "MultiKeySet", 1);
  xpc_dictionary_set_value(xdict, "Value", v12);
  xpc_release(v12);
  if (a5)
  {
    goto LABEL_20;
  }

LABEL_21:
  v15 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

uint64_t _CFPrefsDomainSizeAcceptabilityForByteCount(unint64_t a1)
{
  if (a1 < 0x400001)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 > 0x300000)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t _CFPrefsDirectMode()
{
  if (isCFPrefsD)
  {
    v0 = 1;
  }

  else
  {
    if (forceDirect)
    {
      goto LABEL_7;
    }

    if (_CFPrefsProcessPathRequiresDirectMode_onceToken != -1)
    {
      _CFPrefsDirectMode_cold_1();
    }

    if (_CFPrefsProcessPathRequiresDirectMode_onBlacklist)
    {
LABEL_7:
      v0 = 1;
    }

    else
    {
      if (_CFPrefsDirectMode_onceToken != -1)
      {
        _CFPrefsDirectMode_cold_2();
      }

      v0 = forceDirect;
    }
  }

  return v0 & 1;
}

uint64_t _CFPrefsFixUpIncomingMessageForPIDImpersonationIfNeeded(void *a1)
{
  length[1] = *MEMORY[0x1E69E9840];
  xpc_dictionary_set_value(a1, "CFPreferencesAuditToken", 0);
  length[0] = 0;
  result = xpc_dictionary_get_data(a1, "CFPreferencesAuditTokenToImpersonate", length);
  if (result && length[0] == 32)
  {
    v3 = result;
    remote_connection = xpc_dictionary_get_remote_connection(a1);
    if (!remote_connection)
    {
      value = xpc_dictionary_get_value(a1, "connection");
      if (!value || (remote_connection = value, object_getClass(value) != MEMORY[0x1E69E9E68]))
      {
        _CFPrefsFixUpIncomingMessageForPIDImpersonationIfNeeded_cold_1();
      }
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___CFPrefsFixUpIncomingMessageForPIDImpersonationIfNeeded_block_invoke;
    v7[3] = &unk_1E6DD1F18;
    v7[4] = a1;
    v7[5] = v3;
    v7[6] = length[0];
    result = withClientContext(remote_connection, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef _CFPrefsCopyFixedUpUserForMessage(void *a1, BOOL *a2, _BYTE *a3)
{
  remote_connection = xpc_dictionary_get_remote_connection(a1);
  if (!remote_connection)
  {
    value = xpc_dictionary_get_value(a1, "connection");
    if (!value || (remote_connection = value, object_getClass(value) != MEMORY[0x1E69E9E68]))
    {
      _CFPrefsCopyFixedUpUserForMessage_cold_1();
    }
  }

  string = xpc_dictionary_get_string(a1, "CFPreferencesUser");
  v9 = string;
  if (string)
  {
    if (strcmp(string, "mobile") || (string = _CFPrefsCopyUsernameForMobileUser()) == 0)
    {
      string = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, v9, 0x8000100u);
    }
  }

  if (string)
  {
    v10 = string;
  }

  else
  {
    v10 = @"kCFPreferencesAnyUser";
  }

  if (CFEqual(v10, @"kCFPreferencesCurrentUser"))
  {
    CFRelease(v10);
    euid = xpc_connection_get_euid(remote_connection);
    v10 = _CFPrefsCopyUserNameForUID(euid);
    isRootOrRoleAccountUserName = euid < 0x1F5;
  }

  else
  {
    isRootOrRoleAccountUserName = _isRootOrRoleAccountUserName(v10);
  }

  *a3 = isRootOrRoleAccountUserName;
  if (v10)
  {
    Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, v10);
    CFRelease(v10);
  }

  else
  {
    Copy = 0;
  }

  *a2 = v9 != 0;
  return Copy;
}

uint64_t cfprefsdEuid()
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    if (cfprefsdEuid_onceToken != -1)
    {
      cfprefsdEuid_cold_1();
    }

    return cfprefsdEuid_euid;
  }

  else
  {

    return geteuid();
  }
}

CFTypeRef _CFPrefsCopyUserNameForUID(uid_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = cfprefsdEuid();
  if (v2 == a1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___CFPrefsCopyUserNameForUID_block_invoke;
    block[3] = &__block_descriptor_36_e5_v8__0l;
    v11 = a1;
    if (_CFPrefsCopyUserNameForUID_onceToken != -1)
    {
      dispatch_once(&_CFPrefsCopyUserNameForUID_onceToken, block);
    }

    v3 = _CFPrefsCopyUserNameForUID_ourUIDName;
    if (_CFPrefsCopyUserNameForUID_ourUIDName)
    {
      goto LABEL_5;
    }

LABEL_10:
    v4 = 0;
    goto LABEL_18;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___CFPrefsCopyUserNameForUID_block_invoke_2;
  v8[3] = &__block_descriptor_36_e5_v8__0l;
  v9 = v2;
  if (_CFPrefsCopyUserNameForUID_onceToken_96 != -1)
  {
    dispatch_once(&_CFPrefsCopyUserNameForUID_onceToken_96, v8);
  }

  if (_CFPrefsCopyUserNameForUID_otherCommonUID != a1)
  {
    os_unfair_lock_lock(&_CFPrefsCopyUserNameForUID___cacheLock);
    if (_CFPrefsCopyUserNameForUID___cacheKey == a1 && _CFPrefsCopyUserNameForUID___hasCache == 1)
    {
      v4 = _CFPrefsCopyUserNameForUID___cachedResult;
    }

    else
    {
      v5 = _calculateUserNameForUID(a1);
      v4 = v5;
      if (!v5)
      {
LABEL_17:
        os_unfair_lock_unlock(&_CFPrefsCopyUserNameForUID___cacheLock);
        goto LABEL_18;
      }

      _CFPrefsCopyUserNameForUID___cacheKey = a1;
      _CFPrefsCopyUserNameForUID___hasCache = 1;
      _CFPrefsCopyUserNameForUID___cachedResult = v5;
    }

    CFRetain(v4);
    goto LABEL_17;
  }

  v3 = _CFPrefsCopyUserNameForUID_otherCommonUIDName;
  if (!_CFPrefsCopyUserNameForUID_otherCommonUIDName)
  {
    goto LABEL_10;
  }

LABEL_5:
  v4 = CFRetain(v3);
LABEL_18:
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t _CFPrefsGetFixedUpDomainForMessage(void *a1, const void *a2, char a3, const char **a4)
{
  string = xpc_dictionary_get_string(a1, "CFPreferencesDomain");
  if (!string)
  {
    return 0;
  }

  v9 = string;
  v10 = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, string, 0x8000100u);
  if (v10)
  {
    v11 = v10;
    if (CFEqual(v10, @"kCFPreferencesAnyApplication") || CFEqual(@"Apple Global Domain", v11) || CFEqual(@".GlobalPreferences", v11))
    {
      CFRelease(v11);
      v9 = "kCFPreferencesAnyApplication";
      xpc_dictionary_set_string(a1, "CFPreferencesDomain", "kCFPreferencesAnyApplication");
      v11 = @"kCFPreferencesAnyApplication";
    }

    if ((CFStringFind(v11, @"..", 0).location != -1 || CFStringGetCharacterAtIndex(v11, 0) == 47) && !xpc_dictionary_get_BOOL(a1, "CFPreferencesShouldWriteSynchronously"))
    {
      if (_CFPrefsIsAppleInternal_onceToken != -1)
      {
        _CFPrefsGetFixedUpDomainForMessage_cold_1();
      }

      if (_CFPrefsIsAppleInternal_internal == 1)
      {
        v12 = _CFPrefsDaemonLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          _CFPrefsGetFixedUpDomainForMessage_cold_2(v9, v12);
        }
      }
    }

    if (CFEqual(v11, @"kCFPreferencesCurrentApplication") || a2 && CFEqual(a2, @"kCFPreferencesAnyUser") && (a3 & 1) == 0)
    {
      CFRelease(v11);
      v9 = 0;
    }

    else if (v11)
    {
      v13 = _CFPrefsDInternString(v11);
      CFRelease(v11);
      if (!a4)
      {
        return v13;
      }

      goto LABEL_18;
    }
  }

  v13 = 0;
  if (a4)
  {
LABEL_18:
    *a4 = v9;
  }

  return v13;
}

__CFString *_internString(__CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = @"kCFPreferencesAnyApplication";
  if (!CFEqual(a1, @"kCFPreferencesAnyApplication"))
  {
    if ((a1 & 0x8000000000000000) != 0 || CFGetRetainCount(a1) == 0xFFFFFFFFFFFFFFFLL)
    {
      return a1;
    }

    else
    {
      os_unfair_lock_lock(&_internString_lock);
      Mutable = _internString_table;
      if (!_internString_table)
      {
        Mutable = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
        _internString_table = Mutable;
      }

      Value = CFSetGetValue(Mutable, a1);
      if (!Value)
      {
        CFSetAddValue(_internString_table, a1);
        Value = a1;
      }

      os_unfair_lock_unlock(&_internString_lock);
      CFRetain(Value);
    }
  }

  return Value;
}

uint64_t withClientContext(_xpc_connection_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(&_globalContextLock);
  context = xpc_connection_get_context(a1);
  if (!context)
  {
    withClientContext_cold_1();
  }

  v5 = context;
  os_unfair_lock_lock(context + 12);
  v6 = BYTE1(v5[14]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(&_globalContextLock);
  if (v6 == 1)
  {
    (*(a2 + 16))(a2, v5);
  }

  os_unfair_lock_unlock(v5 + 12);
  return v6;
}

CFStringRef _CFPrefsCopyFixedUpContainerForMessage(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v42 = *MEMORY[0x1E69E9840];
  string = xpc_dictionary_get_string(a1, "CFPreferencesContainer");
  bzero(buffer, 0x402uLL);
  value = xpc_dictionary_get_value(a1, "CFPreferencesHostBundleIdentifier");
  v11 = _CFXPCCreateCFObjectFromXPCObject(value);
  v12 = xpc_dictionary_get_BOOL(a1, "CFPreferencesCurrentApplicationDomain");
  if (!a2)
  {
    _CFPrefsCopyFixedUpContainerForMessage_cold_3();
  }

  v13 = v12;
  if (!v12)
  {
    if ((isCFPrefsD & 1) == 0 && _CFPNLPO != -1)
    {
      v14 = CFStringCreateWithFormat(0, 0, @"%@-fakePersona(%d)", a2, _CFPNLPO);
      if (!_CFPrefsGetPathForTriplet(v14, @"kCFPreferencesCurrentUser", 0, 0, buffer))
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    *&length = 0;
    *(&length + 1) = &length;
    *&v41 = 0x2020000000;
    BYTE8(v41) = 0;
    remote_connection = xpc_dictionary_get_remote_connection(a1);
    if (!remote_connection)
    {
      v20 = xpc_dictionary_get_value(a1, "connection");
      remote_connection = v20;
      if (!v20 || object_getClass(v20) != MEMORY[0x1E69E9E68])
      {
        __assert_rtn("_CFPrefsConnectionForMessage", "CFXPreferences_Internal.h", 393, "conn && xpc_get_type(conn) == XPC_TYPE_CONNECTION");
      }
    }

    *&v31 = MEMORY[0x1E69E9820];
    *(&v31 + 1) = 3221225472;
    *&v32 = ___CFPrefsGetSuiteContainer_block_invoke;
    *(&v32 + 1) = &unk_1E6DD2188;
    v35 = a2;
    v36 = buffer;
    v33 = a1;
    p_length = &length;
    v39 = v13;
    v37 = 1026;
    v38 = v11;
    withClientContext(remote_connection, &v31);
    v21 = *(*(&length + 1) + 24);
    _Block_object_dispose(&length, 8);
    if (v21 == 1)
    {
LABEL_6:
      string = buffer;
    }
  }

LABEL_7:
  if (v11)
  {
    CFRelease(v11);
  }

  if (!string || !*string)
  {
    v16 = 0;
    if (!a4 || !a5)
    {
      goto LABEL_41;
    }

    *&length = 0;
    v31 = 0u;
    v32 = 0u;
    data = xpc_dictionary_get_data(a1, "CFPreferencesAuditToken", &length);
    if (data && length == 32)
    {
      v18 = data[1];
      v31 = *data;
      v32 = v18;
    }

    else
    {
      if (!xpc_dictionary_get_remote_connection(a1))
      {
        v22 = xpc_dictionary_get_value(a1, "connection");
        if (!v22 || object_getClass(v22) != MEMORY[0x1E69E9E68])
        {
          _CFPrefsCopyFixedUpContainerForMessage_cold_2();
        }
      }

      xpc_connection_get_audit_token();
    }

    length = v31;
    v41 = v32;
    v16 = 0;
    if (sandbox_container_path_for_audit_token() || !buffer[0])
    {
      goto LABEL_41;
    }

    v23 = (*MEMORY[0x1E69E9BD0] | *MEMORY[0x1E69E9BB8]);
    if (_CFPrefsSandboxCheckForMessage_0(a1) && _CFPrefsSandboxCheckForMessage_0(a1))
    {
      v24 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, buffer);
LABEL_40:
      v16 = v24;
      goto LABEL_41;
    }

LABEL_33:
    v16 = 0;
    goto LABEL_41;
  }

  if (!strncmp(string, "kCFPreferencesNoContainer", 0x19uLL))
  {
    goto LABEL_33;
  }

  getpid();
  v15 = (*MEMORY[0x1E69E9BD0] | *MEMORY[0x1E69E9BC8]);
  if (sandbox_check())
  {
LABEL_39:
    v24 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, string);
    goto LABEL_40;
  }

  v25 = open(string, 1074790400, string);
  v26 = v25;
  if (v25 < 0)
  {
    v27 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      _CFPrefsCopyFixedUpContainerForMessage_cold_1(string, v27);
    }

    goto LABEL_39;
  }

  if (fcntl(v25, 50, buffer) == -1)
  {
    v16 = 0;
  }

  else
  {
    v16 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, buffer);
  }

  close(v26);
LABEL_41:
  v28 = *MEMORY[0x1E69E9840];
  return v16;
}

xpc_object_t _CFPrefsGetEntitlementForMessageWithLockedContext(void *a1, char *key, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _CFPrefsGetEntitlementForMessageWithLockedContext_cold_4();
  }

  v5 = *(a3 + 32);
  if (!v5)
  {
    length = 0;
    v25 = 0u;
    v26 = 0u;
    data = xpc_dictionary_get_data(a1, "CFPreferencesAuditToken", &length);
    if (data && length == 32)
    {
      v9 = data[1];
      v25 = *data;
      v26 = v9;
    }

    else
    {
      if (!xpc_dictionary_get_remote_connection(a1))
      {
        value = xpc_dictionary_get_value(a1, "connection");
        if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
        {
          _CFPrefsGetEntitlementForMessageWithLockedContext_cold_1();
        }
      }

      xpc_connection_get_audit_token();
    }

    v11 = xpc_copy_entitlement_for_token();
    if (!v11)
    {
      goto LABEL_27;
    }

    v12 = v11;
    array = xpc_dictionary_get_array(v11, "com.apple.security.application-groups");
    if (array)
    {
      v14 = array;
      if (xpc_array_get_count(array))
      {
        *(a3 + 40) = _CFXPCCreateCFObjectFromXPCObject(v14);
      }
    }

    v15 = 0;
    v5 = 0;
    v16 = 0;
    do
    {
      v17 = entitlementsWeCareAbout[v15];
      if (key)
      {
        v18 = strlen(entitlementsWeCareAbout[v15]);
        v19 = strncmp(v17, key, v18) == 0;
        v20 = v19 | v16;
        v16 |= v19;
      }

      else
      {
        v20 = 1;
      }

      v21 = xpc_dictionary_get_value(v12, v17);
      if (v21)
      {
        v22 = v21;
        if (!v5)
        {
          v5 = xpc_dictionary_create(0, 0, 0);
        }

        xpc_dictionary_set_value(v5, v17, v22);
      }

      ++v15;
    }

    while (v15 != 6);
    if ((v20 & 1) == 0)
    {
      _CFPrefsGetEntitlementForMessageWithLockedContext_cold_2();
    }

    xpc_release(v12);
    if (!v5)
    {
LABEL_27:
      if (_CFPrefsGetEntitlementForMessageWithLockedContext_onceToken != -1)
      {
        _CFPrefsGetEntitlementForMessageWithLockedContext_cold_3();
      }

      v5 = xpc_retain(_CFPrefsGetEntitlementForMessageWithLockedContext_emptyEntitlements);
    }

    *(a3 + 32) = v5;
    if (key)
    {
      goto LABEL_4;
    }

LABEL_31:
    result = 0;
    goto LABEL_32;
  }

  if (!key)
  {
    goto LABEL_31;
  }

LABEL_4:
  result = xpc_dictionary_get_value(v5, key);
LABEL_32:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFPrefsSandboxCheckForMessage(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  length = 0;
  v8 = 0u;
  v9 = 0u;
  data = xpc_dictionary_get_data(a1, "CFPreferencesAuditToken", &length);
  if (data && length == 32)
  {
    v3 = data[1];
    v8 = *data;
    v9 = v3;
  }

  else
  {
    if (!xpc_dictionary_get_remote_connection(a1))
    {
      value = xpc_dictionary_get_value(a1, "connection");
      if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
      {
        _CFPrefsSandboxCheckForMessage_cold_1();
      }
    }

    xpc_connection_get_audit_token();
  }

  result = sandbox_check_by_audit_token();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFPrefsSandboxCheckForMessage_0(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  length = 0;
  v8 = 0u;
  v9 = 0u;
  data = xpc_dictionary_get_data(a1, "CFPreferencesAuditToken", &length);
  if (data && length == 32)
  {
    v3 = data[1];
    v8 = *data;
    v9 = v3;
  }

  else
  {
    if (!xpc_dictionary_get_remote_connection(a1))
    {
      value = xpc_dictionary_get_value(a1, "connection");
      if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
      {
        _CFPrefsSandboxCheckForMessage_cold_1_0();
      }
    }

    xpc_connection_get_audit_token();
  }

  result = sandbox_check_by_audit_token();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _CFPrefsGetPathForTriplet(__CFString *a1, const __CFString *a2, int a3, CFStringRef filePath, UInt8 *a5)
{
  if (filePath)
  {
    v9 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, filePath, kCFURLPOSIXPathStyle, 1u);
    PreferencesDirectoryURLForTriplet = _CFPrefsCreatePreferencesDirectoryURLForTriplet(a2, a3, v9);
    if (v9)
    {
      CFRelease(v9);
    }

    if (!PreferencesDirectoryURLForTriplet)
    {
      return 0;
    }
  }

  else
  {
    PreferencesDirectoryURLForTriplet = _CFPrefsCreatePreferencesDirectoryURLForTriplet(a2, a3, 0);
    if (!PreferencesDirectoryURLForTriplet)
    {
      return 0;
    }
  }

  CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(a1);
  if (CFEqual(CacheStringForBundleID, @"kCFPreferencesAnyApplication"))
  {
    CacheStringForBundleID = @".GlobalPreferences";
  }

  location = CFStringFind(CacheStringForBundleID, @".plist", 0xDuLL).location;
  if (location == -1)
  {
    CFRetain(CacheStringForBundleID);
    if (!a3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v19.length = location;
    v19.location = 0;
    CacheStringForBundleID = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, CacheStringForBundleID, v19);
    if (!a3)
    {
      goto LABEL_14;
    }
  }

  if (!CFEqual(a2, @"kCFPreferencesAnyUser"))
  {
    v18 = _CFXPreferencesGetByHostIdentifierString();
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@.%@.plist", CacheStringForBundleID, v18);
    goto LABEL_15;
  }

LABEL_14:
  v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@.plist", CacheStringForBundleID);
LABEL_15:
  v14 = v13;
  CFRelease(CacheStringForBundleID);
  if (!v14)
  {
    v16 = 0;
    goto LABEL_20;
  }

  v15 = CFURLCreateWithFileSystemPathRelativeToBase(&__kCFAllocatorSystemDefault, v14, kCFURLPOSIXPathStyle, 0, PreferencesDirectoryURLForTriplet);
  CFRelease(v14);
  CFRelease(PreferencesDirectoryURLForTriplet);
  if (v15)
  {
    v16 = CFURLGetFileSystemRepresentation(v15, 1u, a5, 1024) != 0;
    PreferencesDirectoryURLForTriplet = v15;
LABEL_20:
    CFRelease(PreferencesDirectoryURLForTriplet);
    return v16;
  }

  return 0;
}

CFURLRef _CFPrefsCreatePreferencesDirectoryURLForTriplet(const __CFString *a1, int a2, const void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!CFEqual(a1, @"kCFPreferencesAnyUser"))
  {
    if (a3)
    {
      v8 = CFRetain(a3);
    }

    else
    {
      if (CFEqual(a1, @"kCFPreferencesCurrentUser"))
      {
        v10 = geteuid();
        v11 = getpwuid(v10);
      }

      else
      {
        Length = CFStringGetLength(a1);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v14 = MaximumSizeForEncoding;
        if (MaximumSizeForEncoding >= 0x7F)
        {
          v15 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x6642EF0DuLL);
        }

        else
        {
          v15 = buffer;
        }

        if (CFStringGetCString(a1, v15, v14, 0x8000100u))
        {
          v11 = getpwnam(v15);
        }

        else
        {
          v11 = 0;
        }

        if (buffer != v15)
        {
          free(v15);
        }
      }

      if (v11 && (pw_dir = v11->pw_dir) != 0)
      {
        v17 = strlen(pw_dir);
        v8 = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, pw_dir, v17, 1u);
      }

      else
      {
        v8 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, @"/var/empty", kCFURLPOSIXPathStyle, 1u);
      }
    }

    v18 = v8;
    if (v8)
    {
      if (a2)
      {
        v19 = @"Library/Preferences/ByHost/";
      }

      else
      {
        v19 = @"Library/Preferences/";
      }

      v20 = CFURLCreateWithFileSystemPathRelativeToBase(&__kCFAllocatorSystemDefault, v19, kCFURLPOSIXPathStyle, 1u, v8);
      CFRelease(v18);
      goto LABEL_33;
    }

LABEL_32:
    v20 = 0;
LABEL_33:
    v21 = *MEMORY[0x1E69E9840];
    return v20;
  }

  if (_CFPrefsCurrentProcessIsCFPrefsD() && geteuid())
  {
    goto LABEL_32;
  }

  if (a3)
  {
    v6 = *MEMORY[0x1E69E9840];

    return CFURLCreateWithFileSystemPathRelativeToBase(&__kCFAllocatorSystemDefault, @"Library/Preferences/", kCFURLPOSIXPathStyle, 1u, a3);
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];

    return CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, @"/private/var/preferences", kCFURLPOSIXPathStyle, 1u);
  }
}

uint64_t __CFCopyFormattingDescription(unint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v15 = atomic_load((a1 + 8));
    v16 = (v15 >> 8) & 0x3FF;
    goto LABEL_15;
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E5910];
  v6 = *MEMORY[0x1E69E5910];
  v7 = a1 & 0xC000000000000007;
  if ((a1 & 0xC000000000000007) == 0xC000000000000007)
  {
    v6 = 0;
  }

  v8 = v6 ^ a1;
  v9 = v8 & 7;
  v10 = MEMORY[0x1E69E5900];
  do
  {
    if (v9 == *(MEMORY[0x1E69E5900] + v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 != 7);
  v11 = v4 | v8;
  v12 = v4 & 7;
  v13 = (v11 >> 55) + 8;
  if (v12 == 7)
  {
    LODWORD(v12) = v13;
  }

  if (v12)
  {
    if (v12 == 6)
    {
      return 0;
    }

    if (v12 == 3)
    {
      v14 = off_1EF065848;
LABEL_80:

      return (v14)(a1, a2);
    }
  }

  else
  {
    dyld_program_sdk_at_least();
    v27 = *v5;
    if (v7 == 0xC000000000000007)
    {
      v27 = 0;
    }

    v8 = v27 ^ a1;
    v9 = v8 & 7;
  }

  for (i = 0; i != 7; ++i)
  {
    if (v9 == *(v10 + i))
    {
      break;
    }
  }

  v29 = ((i | v8) >> 55) + 8;
  if ((i & 7) != 7)
  {
    v29 = i & 7;
  }

  if (v29 > 4)
  {
    if (v29 > 19)
    {
      if (v29 != 20)
      {
        if (v29 != 22)
        {
LABEL_73:
          v16 = [a1 _cfTypeID];
          goto LABEL_15;
        }

LABEL_61:
        v16 = 7;
        goto LABEL_15;
      }
    }

    else if (v29 != 5)
    {
      if (v29 == 6)
      {
        v16 = 42;
        goto LABEL_15;
      }

      goto LABEL_73;
    }

LABEL_62:
    v16 = 1;
    goto LABEL_15;
  }

  if (v29 > 2)
  {
    if (v29 == 3)
    {
      v16 = 22;
      goto LABEL_15;
    }

    goto LABEL_62;
  }

  if (v29)
  {
    if (v29 != 2)
    {
      goto LABEL_73;
    }

    goto LABEL_61;
  }

  if (dyld_program_sdk_at_least())
  {
    v16 = 7;
  }

  else
  {
    v16 = 1;
  }

LABEL_15:
  if (!CF_IS_OBJC(v16, a1))
  {
    __CFCheckCFInfoPACSignature_Bridged(a1);
    if ((a1 & 0x8000000000000000) == 0)
    {
      v24 = atomic_load((a1 + 8));
      v25 = (v24 >> 8) & 0x3FF;
      goto LABEL_34;
    }

    v18 = 0;
    v19 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      v19 = 0;
    }

    v20 = v19 ^ a1;
    do
    {
      if ((v20 & 7) == *(MEMORY[0x1E69E5900] + v18))
      {
        break;
      }

      ++v18;
    }

    while (v18 != 7);
    v21 = v18 | v20;
    v22 = v18 & 7;
    v23 = (v21 >> 55) + 8;
    if (v22 == 7)
    {
      LODWORD(v22) = v23;
    }

    if (v22 > 4)
    {
      if (v22 > 19)
      {
        if (v22 != 20)
        {
          if (v22 != 22)
          {
LABEL_84:
            v25 = [a1 _cfTypeID];
LABEL_34:
            if (v25 > 0x47)
            {
              v26 = (__CFRuntimeClassTables[(v25 - 72) >> 6] + 8 * ((v25 - 72) & 0x3F));
              goto LABEL_79;
            }

LABEL_78:
            v26 = &__CFRuntimeBuiltinClassTable + v25;
LABEL_79:
            v14 = *(*v26 + 7);
            if (v14)
            {
              goto LABEL_80;
            }

            return 0;
          }

LABEL_67:
          v25 = 7;
          goto LABEL_78;
        }
      }

      else if (v22 != 5)
      {
        if (v22 == 6)
        {
          v25 = 42;
          goto LABEL_78;
        }

        goto LABEL_84;
      }
    }

    else
    {
      if (v22 <= 2)
      {
        if (!v22)
        {
          if (dyld_program_sdk_at_least())
          {
            v25 = 7;
          }

          else
          {
            v25 = 1;
          }

          goto LABEL_78;
        }

        if (v22 != 2)
        {
          goto LABEL_84;
        }

        goto LABEL_67;
      }

      if (v22 == 3)
      {
        v25 = 22;
        goto LABEL_78;
      }
    }

    v25 = 1;
    goto LABEL_78;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [a1 _copyFormattingDescription:a2];
}

CFStringRef __CFStringCopyFormattingDescription(CFStringRef theString)
{
  if ((theString & 0x8000000000000000) != 0)
  {
    p_data = &kCFAllocatorSystemDefault;
  }

  else
  {
    v2 = atomic_load(&theString->info);
    if (v2 < 0)
    {
      p_data = &kCFAllocatorSystemDefault;
    }

    else
    {
      p_data = &theString[-1].data;
    }
  }

  return CFStringCreateCopy(*p_data, theString);
}

uint64_t _CFPrefsHashKeyOrSource(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (Class == CFPDSourceLookUpKey)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      Length = CFStringGetLength(v4);
      v6 = Length;
      if (Length >= 80)
      {
        v7 = 80;
      }

      else
      {
        v7 = Length;
      }

      v27.location = 0;
      v27.length = v7;
      v23 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, *(a1 + 8), v27);
      v28.location = v6 - v7;
      v28.length = v7;
      v8 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, *(a1 + 8), v28);
    }

    else
    {
      v8 = &stru_1EF068AA8;
      v23 = &stru_1EF068AA8;
    }

    v24 = v8;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = CFRetain(v10);
    }

    else
    {
      v11 = &stru_1EF068AA8;
    }

    v25 = v11;
  }

  else
  {
    if (Class == CFPDCloudSource)
    {
      v9 = *(a1 + 160);
      if (v9)
      {
        v3 = CFRetain(v9);
      }

      else
      {
        v3 = &stru_1EF068AA8;
      }
    }

    else
    {
      v3 = 0;
    }

    v12 = [a1 copyUncanonicalizedPath];
    if (v12)
    {
      v13 = v12;
      v14 = CFStringGetLength(v12);
      v15 = v14;
      if (v14 >= 80)
      {
        v16 = 80;
      }

      else
      {
        v16 = v14;
      }

      v29.location = 0;
      v29.length = v16;
      v23 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v13, v29);
      v30.location = v15 - v16;
      v30.length = v16;
      v24 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v13, v30);
      CFRelease(v13);
    }

    else
    {
      v23 = &stru_1EF068AA8;
      v24 = &stru_1EF068AA8;
    }

    if (v3)
    {
      v17 = v3;
    }

    else
    {
      v17 = &stru_1EF068AA8;
    }

    v25 = v17;
  }

  v18 = 0;
  memset(v22, 0, sizeof(v22));
  do
  {
    v19 = *(&v23 + v18 * 8);
    v22[v18] = CFHash(v19);
    if (v19)
    {
      CFRelease(v19);
    }

    ++v18;
  }

  while (v18 != 3);
  result = CFHashBytes(v22, 24);
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CFHashBytes(uint64_t a1, uint64_t a2)
{
  if (a2 < 4)
  {
    v2 = 0;
    LODWORD(v3) = a2;
  }

  else
  {
    v2 = 0;
    v3 = a2 & 0x7FFFFFFF;
    v4 = ((a2 & 0xFFFFFFFF80000000) + a1 + 1);
    do
    {
      v5 = *(v4 - 1) + 16 * v2;
      v6 = *v4 + 16 * (v5 ^ (16 * (v5 >> 28)));
      v7 = v4[1] + 16 * (v6 ^ (16 * (v6 >> 28)));
      v8 = v4[2] + 16 * (v7 ^ (16 * (v7 >> 28)));
      v9 = v3;
      v2 = (v8 ^ ((v8 & 0xF0000000) >> 24)) & ~(v8 & 0xF0000000);
      v3 -= 4;
      v4 += 4;
    }

    while (v9 > 7);
  }

  switch(v3)
  {
    case 1:
      goto LABEL_11;
    case 2:
LABEL_10:
      v11 = *(a1 + a2 - 2) + 16 * v2;
      v2 = (v11 ^ ((v11 & 0xF0000000) >> 24)) & ~(v11 & 0xF0000000);
LABEL_11:
      v12 = *(a1 + a2 - 1) + 16 * v2;
      return (v12 ^ ((v12 & 0xF0000000) >> 24)) & ~(v12 & 0xF0000000);
    case 3:
      v10 = *(a1 + a2 - 3) + 16 * v2;
      v2 = (v10 ^ ((v10 & 0xF0000000) >> 24)) & ~(v10 & 0xF0000000);
      goto LABEL_10;
  }

  return v2;
}

BOOL _CFPrefsEqualKeyOrSource(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = a1;
  Class = object_getClass(a1);
  v5 = object_getClass(a2);
  if (Class != CFPDSourceLookUpKey && v5 != CFPDSourceLookUpKey)
  {
    return 0;
  }

  v6 = Class == CFPDSourceLookUpKey;
  if (Class == CFPDSourceLookUpKey)
  {
    v7 = v5;
  }

  else
  {
    v7 = Class;
  }

  if (Class == CFPDSourceLookUpKey)
  {
    v8 = a2;
  }

  else
  {
    v8 = v3;
  }

  if (!v6)
  {
    v3 = a2;
  }

  if (v7 == CFPDSourceLookUpKey)
  {
    v11 = v3[1];
    v12 = v8[1];
    if (v11 != v12)
    {
      v13 = !v11 || v12 == 0;
      if (v13 || !CFEqual(v11, v12))
      {
        return 0;
      }
    }

    v14 = v3[2];
    v15 = v8[2];
    if (v14 != v15)
    {
      if (v14)
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        return 0;
      }

      return CFEqual(v14, v15) != 0;
    }

    return 1;
  }

  v9 = v3[2];
  if (v9)
  {
    if (v7 != CFPDCloudSource)
    {
      return 0;
    }

    v10 = v8[20];
    if (v9 != v10 && (!v10 || !CFEqual(v9, v10)))
    {
      return 0;
    }
  }

  else if (v7 == CFPDCloudSource)
  {
    return 0;
  }

  v18 = [v8 copyUncanonicalizedPath];
  v19 = v3[1];
  if (v19 == v18 || v18 == 0 || v19 == 0)
  {
    v17 = v19 == v18;
    if (!v18)
    {
      return v17;
    }
  }

  else
  {
    v17 = CFEqual(v19, v18) != 0;
  }

  CFRelease(v18);
  return v17;
}

uint64_t _CFPrefsDecodeKeyValuePairFromXPCMessage(void *a1, void *a2, void *a3, int *a4)
{
  if (xpc_dictionary_get_BOOL(a1, "MultiKeySet"))
  {
    result = xpc_dictionary_get_value(a1, "Value");
    if (!result)
    {
      return result;
    }

    v9 = result;
    v10 = xpc_string_create("MultipleKeys");
    v11 = 1;
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_12:
    xpc_release(v10);
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = xpc_dictionary_get_value(a1, "Key");
  if (!result)
  {
    return result;
  }

  v10 = result;
  xpc_retain(result);
  result = xpc_dictionary_get_value(a1, "Value");
  if (!result)
  {
    return result;
  }

  v9 = result;
  v11 = 0;
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_4:
  *a2 = v10;
  if (a3)
  {
LABEL_5:
    xpc_retain(v9);
    *a3 = v9;
  }

LABEL_6:
  if (a4)
  {
    *a4 = v11;
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1)
{

  return CFAllocatorAllocateTyped(a1, 16, 0x1080040FC6463CFLL, 0);
}

void *OUTLINED_FUNCTION_11_1(void *a1)
{

  return [(_CFPrefsOversizedPlistDescription *)a1 initWithDict:v4 setKeys:v3 andValues:v2 count:v1];
}

uint64_t _canDup()
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v0 = 1;
  }

  else
  {
    if (_canDup_once != -1)
    {
      _canDup_cold_1();
    }

    v0 = _canDup_canDup ^ 1;
  }

  return v0 & 1;
}

uint64_t eduModeEnabled()
{
  v4 = *MEMORY[0x1E69E9840];
  if (eduModeOverride)
  {
    result = 1;
  }

  else
  {
    multiuser_mode = 0;
    if (host_check_multiuser_mode(0, &multiuser_mode))
    {
      v1 = 1;
    }

    else
    {
      v1 = multiuser_mode == 0;
    }

    result = !v1;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFPrefsSizeOfValue(xpc_object_t xdict, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (a2 == 1)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___CFPrefsSizeOfValue_block_invoke;
    v10[3] = &unk_1E6D7DAB0;
    v10[4] = &v11;
    xpc_dictionary_apply(xdict, v10);
  }

  else if (!a2)
  {
    Class = object_getClass(xdict);
    if (Class == MEMORY[0x1E69E9E58])
    {
      v5 = v12;
      v6 = v12[3] + 1;
LABEL_12:
      v5[3] = v6;
      goto LABEL_13;
    }

    if (Class == MEMORY[0x1E69E9F10])
    {
      length = xpc_string_get_length(xdict);
      goto LABEL_11;
    }

    if (Class == MEMORY[0x1E69E9ED0])
    {
      v12[3] = 0;
      goto LABEL_13;
    }

    if (Class == MEMORY[0x1E69E9E70])
    {
      length = xpc_data_get_length(xdict);
LABEL_11:
      v5 = v12;
      v6 = v12[3] + length;
      goto LABEL_12;
    }
  }

LABEL_13:
  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_18313F41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_5_5(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a14 = v20;
  a15 = v19;

  [(_CFXPreferences *)v18 with23930198HackSourceForIdentifier:v17 user:v16 byHost:a4 container:v15 cloud:0 perform:&a10];
}

void CFStringDelete(CFMutableStringRef theString, CFRange range)
{
  length = range.length;
  location = range.location;
  v16[2] = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(7uLL, theString))
  {
    v5 = *MEMORY[0x1E69E9840];

    [(__CFString *)theString deleteCharactersInRange:location, length];
  }

  else
  {
    v6 = atomic_load(&theString->info);
    if (v6)
    {
      v16[0] = location;
      v16[1] = length;
      __CFStringChangeSizeMultiple(theString, v16, 1, 0, 0);
    }

    else
    {
      v7 = _CFOSLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        CFStringDelete_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    v15 = *MEMORY[0x1E69E9840];
  }
}

void sub_18313F974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CFBundleGetBundleVersionForURL(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v71 = *MEMORY[0x1E69E9840];
  v3 = CFURLCopyAbsoluteURL(v2);
  v4 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
  v5 = CFURLGetString(v2);
  HasSuffix = CFStringHasSuffix(v5, @".framework/");
  Length = CFStringGetLength(@"Resources");
  v8 = CFStringGetLength(@"Contents");
  v9 = CFStringGetLength(@"Support Files");
  v10 = CFStringGetLength(@"WrappedBundle");
  v11 = CFStringGetLength(@"Wrapper");
  v62 = 0;
  v63 = &v62;
  v64 = 0x2000000000;
  v65 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2000000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2000000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2000000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2000000000;
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2000000000;
  v45 = 0;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 0x40000000;
  v41[2] = ___CFBundleGetBundleVersionForURL_block_invoke;
  v41[3] = &unk_1E6D7D718;
  v41[10] = Length;
  v41[11] = v8;
  v41[4] = &v62;
  v41[5] = &v58;
  v41[12] = v9;
  v41[13] = v11;
  v41[6] = &v54;
  v41[7] = &v46;
  v41[14] = v10;
  v41[8] = &v50;
  v41[9] = &v42;
  string = v4;
  _CFIterateDirectory(v4, 0, 0, v41);
  if (*(v43 + 24))
  {
    v70[0] = 0;
    v12 = CFURLCreateWithString(&__kCFAllocatorSystemDefault, @"Wrapper", v2);
    v13 = v12;
    if (v12)
    {
      v14 = _CFIsResourceAtURL(v12, v70);
      v15 = v70[0];
      CFRelease(v13);
      if (v14)
      {
        if (v15)
        {
          *(v47 + 24) = 1;
          v16 = CFURLCreateWithString(&__kCFAllocatorSystemDefault, @"WrappedBundle", v2);
          v70[0] = 0;
          if (_CFIsResourceAtURL(v16, v70) && v70[0])
          {
            *(v51 + 24) = 1;
          }

          CFRelease(v16);
          if (*(v47 + 24) && *(v51 + 24))
          {
            *(v43 + 24) = 0;
          }
        }
      }
    }
  }

  if (!*(v47 + 24) || !*(v51 + 24))
  {
    if (HasSuffix)
    {
      if (*(v63 + 24))
      {
LABEL_24:
        v23 = 0;
        goto LABEL_42;
      }

      if (*(v59 + 24))
      {
LABEL_29:
        v23 = 2;
        goto LABEL_42;
      }
    }

    else
    {
      if (*(v59 + 24))
      {
        goto LABEL_29;
      }

      if (*(v63 + 24))
      {
        goto LABEL_24;
      }
    }

    if (*(v55 + 24))
    {
      v23 = 1;
    }

    else
    {
      v23 = 3;
    }

    goto LABEL_42;
  }

  v17 = CFURLCreateCopyAppendingPathComponent(&__kCFAllocatorSystemDefault, v3, @"WrappedBundle", 1u);
  v18 = CFURLCopyFileSystemPath(v17, kCFURLPOSIXPathStyle);
  CFRelease(v17);
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 0x40000000;
  v36[2] = ___CFBundleGetBundleVersionForURL_block_invoke_2;
  v36[3] = &unk_1E6D7D740;
  v36[4] = &v37;
  v36[5] = v8;
  _CFIterateDirectory(v18, 0, 0, v36);
  if (CFStringGetFileSystemRepresentation(v18, v70, 1024) && CFStringGetFileSystemRepresentation(string, buffer, 1024))
  {
    v19 = readlink(v70, __s, 0x3FFuLL);
    if (v19 >= 2 && __s[0] != 47)
    {
      __s[v19] = 0;
      v20 = strrchr(__s, 46);
      v21 = strrchr(buffer, 46);
      if (v21 && v20)
      {
        if (strcmp(v20 + 1, v21 + 1))
        {
          v22 = _CFBundleResourceLogger();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            _CFBundleGetBundleVersionForURL_cold_2();
          }

LABEL_46:
          v26 = 0;
LABEL_48:
          v30 = open(v70, 0);
          v31 = open(buffer, 0);
          v32 = v31;
          if (v30 < 1 || v31 < 1)
          {
            v33 = 0;
            v25 = 0;
            if (v30 < 1)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v33 = fcntl(v30, 50, __s1) != -1 && fcntl(v32, 50, __s2) != -1 && strncmp(__s1, __s2, 0x400uLL) && strnstr(__s1, __s2, 0x400uLL) == __s1;
          }

          close(v30);
          v25 = v33;
LABEL_58:
          if (v32 >= 1)
          {
            close(v32);
          }

          if (!v25)
          {
            v34 = _CFBundleResourceLogger();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              _CFBundleGetBundleVersionForURL_cold_3();
            }
          }

          goto LABEL_36;
        }
      }

      else if (v21 | v20)
      {
        v29 = _CFBundleResourceLogger();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          _CFBundleGetBundleVersionForURL_cold_1();
        }

        goto LABEL_46;
      }

      v26 = 1;
      goto LABEL_48;
    }

    v24 = _CFBundleResourceLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      _CFBundleGetBundleVersionForURL_cold_4();
    }
  }

  v25 = 0;
  v26 = 0;
LABEL_36:
  CFRelease(v18);
  if ((v25 & v26) == 1)
  {
    if (*(v38 + 24))
    {
      v23 = 12;
    }

    else
    {
      v23 = 13;
    }
  }

  else
  {
    v23 = 3;
  }

  _Block_object_dispose(&v37, 8);
LABEL_42:
  CFRelease(v3);
  CFRelease(string);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);
  v27 = *MEMORY[0x1E69E9840];
  return v23;
}

void sub_183140054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a56, 8);
  _Unwind_Resume(a1);
}

DIR *_CFIterateDirectory(const __CFString *a1, int a2, const __CFArray *a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  result = CFStringGetFileSystemRepresentation(a1, buffer, 1026);
  if (result)
  {
    result = opendir(buffer);
    if (result)
    {
      v8 = result;
      v9 = readdir(result);
      if (v9)
      {
        v10 = v9;
        v29 = a4;
        v27 = v8;
        v28 = a2;
        do
        {
          d_namlen = v10->d_namlen;
          if (!v10->d_namlen || !v10->d_ino)
          {
            goto LABEL_42;
          }

          if (v10->d_name[0] != 46)
          {
            goto LABEL_14;
          }

          if (d_namlen != 1)
          {
            if (d_namlen == 2)
            {
              v12 = v10->d_name[1];
              if (v12 == 46)
              {
                goto LABEL_42;
              }
            }

            else
            {
              v12 = v10->d_name[1];
            }

            if (v12 != 95)
            {
LABEL_14:
              cf = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, v10->d_name);
              v33[0] = 0;
              if (a3)
              {
                if (CFArrayGetCount(a3) < 1)
                {
                  v13 = 0;
                }

                else
                {
                  v13 = 0;
                  v14 = 0;
                  do
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(a3, v14);
                    *__dst = 0;
                    Length = CFStringGetLength(ValueAtIndex);
                    v17 = CFStringFileSystemEncoding();
                    v36.location = 0;
                    v36.length = Length;
                    v13 += CFStringGetBytes(ValueAtIndex, v36, v17, 0, 0, &v33[v13], 1025 - v13, __dst);
                    if (v13 >= 1)
                    {
                      v18 = *__dst;
                      if (v13 >= *__dst)
                      {
                        if (v33[v13 - 1] != 47)
                        {
                          v33[v13++] = 47;
                        }
                      }

                      else if (v33[*__dst - 1] != 47)
                      {
                        v33[*__dst] = 47;
                        v13 = v18 + 1;
                      }
                    }

                    ++v14;
                  }

                  while (v14 < CFArrayGetCount(a3));
                }

                v33[v13] = 0;
                a4 = v29;
                a2 = v28;
                v8 = v27;
              }

              if (a2 && (v10->d_type == 4 || !v10->d_type && (memset(&v32, 0, sizeof(v32)), strncpy(__dst, buffer, 0x400uLL), __strlcat_chk(), __strlcat_chk(), !stat(__dst, &v32)) && (v32.st_mode & 0xF000) == 0x4000))
              {
                __strlcat_chk();
              }

              else if (!a3)
              {
                v21 = cf;
                if (cf)
                {
                  goto LABEL_40;
                }

                goto LABEL_42;
              }

              __strlcat_chk();
              v19 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, v33);
              v20 = v19;
              v21 = cf;
              if (cf)
              {
                if (!v19)
                {
LABEL_40:
                  v22 = CFRetain(v21);
                  v21 = cf;
                  v20 = v22;
                }

                d_type = v10->d_type;
                v24 = v21;
                v25 = (*(a4 + 16))(a4, v21, v20, d_type);
                CFRelease(v24);
                CFRelease(v20);
                if (!v25)
                {
                  break;
                }

                goto LABEL_42;
              }

              if (v19)
              {
                CFRelease(v19);
              }
            }
          }

LABEL_42:
          v10 = readdir(v8);
        }

        while (v10);
      }

      result = closedir(v8);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFSet *_CFBundleCopyInfoDictionaryInDirectoryWithVersion(CFAllocatorRef allocator, CFURLRef baseURL, CFTypeRef *a3, const __CFSet *Mutable, uint64_t a5, int a6)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!baseURL)
  {
    Mutable = 0;
    goto LABEL_82;
  }

  if (a6 > 2)
  {
    if (a6 == 3)
    {
      v12 = CFURLCopyFileSystemPath(baseURL, kCFURLPOSIXPathStyle);
      if (!v12)
      {
        goto LABEL_81;
      }

      v13 = v12;
      if (CFStringHasSuffix(v12, @"Support Files") || CFStringHasSuffix(v13, @"Contents") || CFStringHasSuffix(v13, @"Resources"))
      {
        v9 = 0;
        v10 = @"Resources/Info-iphoneos.plist";
        v11 = @"Resources/Info.plist";
      }

      else
      {
        v9 = CFRetain(baseURL);
        v10 = @"Info-iphoneos.plist";
        v11 = @"Info.plist";
      }

      CFRelease(v13);
      if (!v9)
      {
        goto LABEL_81;
      }

      goto LABEL_26;
    }

    if (a6 != 12)
    {
      if (a6 != 13)
      {
        goto LABEL_81;
      }

      v9 = CFURLCreateWithString(&__kCFAllocatorSystemDefault, @"WrappedBundle/", baseURL);
      v10 = @"WrappedBundle/Info-iphoneos.plist";
      v11 = @"WrappedBundle/Info.plist";
      if (!v9)
      {
        goto LABEL_81;
      }

      goto LABEL_26;
    }

    v9 = CFURLCreateWithString(&__kCFAllocatorSystemDefault, @"WrappedBundle/Contents/", baseURL);
    v10 = @"WrappedBundle/Contents/Info-iphoneos.plist";
    v11 = @"WrappedBundle/Contents/Info.plist";
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_81:
    Mutable = CFDictionaryCreateMutable(allocator, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    goto LABEL_82;
  }

  if (!a6)
  {
    v9 = CFURLCreateWithString(&__kCFAllocatorSystemDefault, @"Resources/", baseURL);
    v10 = @"Resources/Info-iphoneos.plist";
    v11 = @"Resources/Info.plist";
    if (v9)
    {
      goto LABEL_26;
    }

    goto LABEL_81;
  }

  if (a6 == 1)
  {
    v9 = CFURLCreateWithString(&__kCFAllocatorSystemDefault, @"Support%20Files/", baseURL);
    v10 = @"Support%20Files/Info-iphoneos.plist";
    v11 = @"Support%20Files/Info.plist";
    if (v9)
    {
      goto LABEL_26;
    }

    goto LABEL_81;
  }

  if (a6 != 2)
  {
    goto LABEL_81;
  }

  v9 = CFURLCreateWithString(&__kCFAllocatorSystemDefault, @"Contents/", baseURL);
  v10 = @"Contents/Info-iphoneos.plist";
  v11 = @"Contents/Info.plist";
  if (!v9)
  {
    goto LABEL_81;
  }

LABEL_26:
  v14 = CFURLCopyAbsoluteURL(v9);
  v15 = CFURLCopyFileSystemPath(v14, kCFURLPOSIXPathStyle);
  CFRelease(v14);
  v52 = 0;
  v53 = &v52;
  v54 = 0x2000000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  if (v15)
  {
    Length = CFStringGetLength(@"Info.plist");
    v17 = CFStringGetLength(@"Info-iphoneos.plist");
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 0x40000000;
    v47[2] = ___CFBundleCopyInfoDictionaryInDirectoryWithVersion_block_invoke;
    v47[3] = &unk_1E6DD2AD0;
    v47[6] = v17;
    v47[7] = v10;
    v47[4] = &v48;
    v47[5] = &v52;
    v47[8] = baseURL;
    v47[9] = Length;
    v47[10] = v11;
    _CFIterateDirectory(v15, 0, 0, v47);
    CFRelease(v15);
  }

  CFRelease(v9);
  v46 = 0;
  if (Mutable)
  {
    v18 = v53[3];
    v19 = v49[3];
    v60 = v19;
    v61 = v18;
    if (v19)
    {
      LOBYTE(error[0]) = 0;
      *buf = 0;
      MappedOrLoadedPlistData = _CFBundleCreateMappedOrLoadedPlistData(v19, 1, 0, error, buf);
      if (MappedOrLoadedPlistData)
      {
        v46 = v19;
      }

      else if (*buf)
      {
        _CFBundleLogLoadingInfoPlistError(&v60, *buf);
        CFRelease(*buf);
      }
    }

    else
    {
      MappedOrLoadedPlistData = 0;
    }

    if (v18 && !MappedOrLoadedPlistData)
    {
      LOBYTE(error[0]) = 0;
      *buf = 0;
      MappedOrLoadedPlistData = _CFBundleCreateMappedOrLoadedPlistData(v18, 1, 0, error, buf);
      if (MappedOrLoadedPlistData)
      {
        v46 = v18;
      }

      else if (*buf)
      {
        _CFBundleLogLoadingInfoPlistError(&v61, *buf);
        CFRelease(*buf);
      }
    }

    v21 = MappedOrLoadedPlistData == 0;
    if (MappedOrLoadedPlistData)
    {
      v59 = 0;
      v22 = _CFPropertyListCopyTopLevelKeys(&__kCFAllocatorSystemDefault, MappedOrLoadedPlistData, 0, &v59);
      v23 = v22;
      if (v22)
      {
        Count = CFSetGetCount(v22);
        v25 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, Count, 0, 0);
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 0x40000000;
        v58[2] = ___CFBundleCopyLimitedInfoPlistKeys_block_invoke;
        v58[3] = &__block_descriptor_tmp_150;
        v58[4] = v25;
        CFSetApply(v23, v58);
        _CFBundleInfoPlistProcessInfoDictionary(v25);
        TopLevelKeyPaths = __CFPropertyListCreateTopLevelKeyPaths(&__kCFAllocatorSystemDefault, Mutable);
        v27 = CFSetGetCount(Mutable);
        v28 = CFSetCreateMutable(&__kCFAllocatorSystemDefault, v27, &kCFTypeSetCallBacks);
        v29 = CFSetGetCount(Mutable);
        v30 = CFSetCreateMutable(&__kCFAllocatorSystemDefault, v29, &kCFTypeSetCallBacks);
        error[0] = MEMORY[0x1E69E9820];
        error[1] = 0x40000000;
        error[2] = ___CFBundleCopyLimitedInfoPlistKeys_block_invoke_2;
        error[3] = &__block_descriptor_tmp_151;
        error[4] = v25;
        error[5] = v28;
        error[6] = v30;
        CFSetApply(TopLevelKeyPaths, error);
        CFRelease(TopLevelKeyPaths);
        cf = 0;
        if (_CFPropertyListCreateFiltered(&__kCFAllocatorSystemDefault, MappedOrLoadedPlistData, 0, v28, &cf, &v59))
        {
          v31 = cf;
          v32 = CFSetGetCount(v30);
          Mutable = CFDictionaryCreateMutable(allocator, v32, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___CFCopyLogicalKeysMappedToProcessedValues_block_invoke;
          v63 = &__block_descriptor_tmp_152;
          v64 = v25;
          v65 = v31;
          v66 = Mutable;
          CFSetApply(v30, buf);
          CFRelease(cf);
        }

        else
        {
          Mutable = 0;
        }

        CFRelease(v28);
        CFRelease(v23);
        CFRelease(v25);
        CFRelease(v30);
      }

      else
      {
        Mutable = 0;
      }

      if (!Mutable && v59)
      {
        _CFBundleLogLoadingInfoPlistError(&v46, v59);
        CFRelease(v59);
      }

      CFRelease(MappedOrLoadedPlistData);
    }

    else
    {
      Mutable = 0;
    }
  }

  else
  {
    v21 = 1;
  }

  if (v21 && !Mutable)
  {
    v33 = v49[3];
    if (v33)
    {
      v34 = _CFDataCreateFromURL(v33, 0);
      if (v34)
      {
        v35 = &v48;
        goto LABEL_62;
      }
    }

    v36 = v53[3];
    if (v36)
    {
      v34 = _CFDataCreateFromURL(v36, 0);
      if (v34)
      {
        v35 = &v52;
LABEL_62:
        v46 = *(v35[1] + 24);
        error[0] = 0;
        Mutable = CFPropertyListCreateWithData(allocator, v34, 1uLL, 0, error);
        if (Mutable)
        {
          TypeID = CFDictionaryGetTypeID();
          if (TypeID == CFGetTypeID(Mutable))
          {
            _CFBundleInfoPlistProcessInfoDictionary(Mutable);
LABEL_72:
            CFRelease(v34);
            goto LABEL_73;
          }

          CFRelease(Mutable);
        }

        else if (error[0])
        {
          Domain = CFErrorGetDomain(error[0]);
          Code = CFErrorGetCode(error[0]);
          v40 = _CFBundleResourceLogger();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349570;
            *&buf[4] = v46;
            *&buf[12] = 2114;
            *&buf[14] = Domain;
            *&buf[22] = 2050;
            v63 = Code;
            _os_log_error_impl(&dword_1830E6000, v40, OS_LOG_TYPE_ERROR, "There was an error parsing the Info.plist for the bundle at URL <%{public}p>: %{public}@ - %{public}ld", buf, 0x20u);
          }

          CFRelease(error[0]);
        }

        Mutable = CFDictionaryCreateMutable(allocator, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        goto LABEL_72;
      }
    }

    Mutable = 0;
  }

LABEL_73:
  if (a3 && v46)
  {
    CFRetain(v46);
    *a3 = v46;
  }

  v41 = v49[3];
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = v53[3];
  if (v42)
  {
    CFRelease(v42);
  }

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  if (!Mutable)
  {
    goto LABEL_81;
  }

LABEL_82:
  v43 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void sub_183141050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t _CFReadBytesFromFile(const __CFAllocator *a1, CFURLRef url, void **a3, off_t *a4, off_t a5, int a6)
{
  v24 = *MEMORY[0x1E69E9840];
  result = CFURLGetFileSystemRepresentation(url, 1u, buffer, 1026);
  if (result)
  {
    *a3 = 0;
    if (__CFProphylacticAutofsAccess)
    {
      v12 = open("/dev/autofs_nowait", 0);
      v13 = open(buffer, a6, 438);
      if (v13 < 0)
      {
        goto LABEL_22;
      }

      v14 = v13;
    }

    else
    {
      v15 = open(buffer, a6, 438);
      if (v15 < 0)
      {
LABEL_30:
        result = 0;
        goto LABEL_31;
      }

      v14 = v15;
      v12 = -1;
    }

    memset(&v23, 0, sizeof(v23));
    if (fstat(v14, &v23) < 0)
    {
      v20 = *__error();
      close(v14);
      if (v12 != -1)
      {
        close(v12);
      }

      *__error() = v20;
      goto LABEL_30;
    }

    if ((v23.st_mode & 0xF000) != 0x8000)
    {
      close(v14);
      if (v12 != -1)
      {
        close(v12);
      }

      *__error() = 13;
      goto LABEL_30;
    }

    if (v23.st_size)
    {
      if (v23.st_size >= a5)
      {
        st_size = a5;
      }

      else
      {
        st_size = v23.st_size;
      }

      if (a5)
      {
        v17 = st_size;
      }

      else
      {
        v17 = v23.st_size;
      }

      Typed = CFAllocatorAllocateTyped(a1, v17, 1708310027, 0);
      *a3 = Typed;
      if (!Typed)
      {
        goto LABEL_21;
      }

      v19 = Typed;
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
        v19 = *a3;
      }

      if (read(v14, v19, v17) < 0)
      {
        CFAllocatorDeallocate(a1, *a3);
LABEL_21:
        close(v14);
LABEL_22:
        if (v12 != -1)
        {
          close(v12);
        }

        goto LABEL_30;
      }
    }

    else
    {
      v17 = 0;
      *a3 = CFAllocatorAllocateTyped(a1, 4, 449595331, 0);
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
        v17 = 0;
      }
    }

    *a4 = v17;
    if (v12 != -1)
    {
      close(v12);
    }

    close(v14);
    result = 1;
  }

LABEL_31:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

CFDataRef _CFDataCreateFromURL(CFURLRef url, CFErrorRef *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7[0] = 0;
  if (_CFReadBytesFromFile(&__kCFAllocatorSystemDefault, url, v7, &v6, 0, 4))
  {
    result = CFDataCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, v7[0], v6, &__kCFAllocatorSystemDefault);
  }

  else if (a2)
  {
    v4 = CFErrorCreate(&__kCFAllocatorSystemDefault, @"NSOSStatusErrorDomain", -10, 0);
    result = 0;
    *a2 = v4;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void _CFBundleInfoPlistProcessInfoDictionary(void *a1)
{
  v8[7] = *MEMORY[0x1E69E9840];
  if (a1 && CFDictionaryGetCount(a1))
  {
    Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
    v3 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ___CFBundleInfoPlistProcessInfoDictionary_block_invoke;
    v8[3] = &__block_descriptor_tmp_27;
    v8[4] = Mutable;
    v8[5] = v3;
    v8[6] = a1;
    CFDictionaryApply(a1, v8);
    if (CFArrayGetCount(Mutable) >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v4);
        CFDictionaryRemoveValue(a1, ValueAtIndex);
        ++v4;
      }

      while (v4 < CFArrayGetCount(Mutable));
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = ___CFBundleInfoPlistProcessInfoDictionary_block_invoke_2;
    v7[3] = &__block_descriptor_tmp_28_0;
    v7[4] = a1;
    CFDictionaryApply(v3, v7);
    CFRelease(Mutable);
    CFRelease(v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __CFStringFoldCharacterClusterAtIndex(unsigned int a1, UniChar *buffer, uint64_t a3, __int16 a4, unsigned __int16 *a5, unsigned int *a6, void *a7, _BYTE *a8)
{
  v117 = *MEMORY[0x1E69E9840];
  v115 = a1;
  if (!a1)
  {
    v18 = 0;
    goto LABEL_146;
  }

  v14 = a1;
  v15 = HIWORD(a1);
  if (!__CFStringFoldCharacterClusterAtIndex_decompBMP)
  {
    __CFStringFoldCharacterClusterAtIndex_decompBMP = CFUniCharGetBitmapPtrForPlane(9u, 0);
    __CFStringFoldCharacterClusterAtIndex_graphemeBMP = CFUniCharGetBitmapPtrForPlane(0x6Eu, 0);
  }

  v16 = 1;
  if (v15)
  {
    v16 = 2;
  }

  v112 = a3;
  v113 = a8;
  v17 = v16 + a3;
  if (v14 <= 0x7F)
  {
    if (!a5 || v14 != 73)
    {
      v18 = 0;
      v19 = 0;
      if ((a4 & 1) == 0 || v14 - 65 > 0x19)
      {
        goto LABEL_121;
      }

      v19 = 0;
      v115 = v14 | 0x20;
      *a6 = v14 | 0x20;
      goto LABEL_17;
    }

    v18 = 0;
LABEL_36:
    v15 = 0;
    goto LABEL_37;
  }

  if ((a4 & 0x100) != 0 && v14 - 65280 <= 0xEF)
  {
    v18 = 1;
    CFUniCharCompatibilityDecompose(&v115, 1, 1);
    LOWORD(v14) = v115;
    *a6 = v115;
  }

  else
  {
    v18 = 0;
    if (v15)
    {
      goto LABEL_37;
    }
  }

  v15 = 0;
  if ((v14 & 0xFC00) == 0xD800 && (v17 & 0x8000000000000000) == 0)
  {
    v20 = *(buffer + 20);
    if (v20 > v17)
    {
      v21 = *(buffer + 17);
      if (v21)
      {
        v22 = *(v21 + 2 * *(buffer + 19) + 2 * v17);
      }

      else
      {
        v23 = *(buffer + 18);
        if (v23)
        {
          v22 = *(v23 + *(buffer + 19) + v17);
        }

        else
        {
          if (*(buffer + 22) <= v17 || (v24 = *(buffer + 21), v24 > v17))
          {
            v25 = v17 - 4;
            if (v17 < 4)
            {
              v25 = 0;
            }

            if (v25 + 64 < v20)
            {
              v20 = v25 + 64;
            }

            *(buffer + 21) = v25;
            *(buffer + 22) = v20;
            v118.length = v20 - v25;
            v118.location = *(buffer + 19) + v25;
            CFStringGetCharacters(*(buffer + 16), v118, buffer);
            v24 = *(buffer + 21);
          }

          v22 = buffer[v17 - v24];
        }
      }

      if (v22 >> 10 == 55)
      {
        v115 = (v115 << 10) + v22 - 56613888;
        ++v17;
        v15 = HIWORD(v115);
        goto LABEL_37;
      }
    }

    goto LABEL_36;
  }

LABEL_37:
  if ((a4 & 0x90) == 0)
  {
    goto LABEL_51;
  }

  v26 = v115;
  if (v15)
  {
    BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(9u, v15);
    if (!BitmapPtrForPlane)
    {
      goto LABEL_51;
    }
  }

  else
  {
    BitmapPtrForPlane = __CFStringFoldCharacterClusterAtIndex_decompBMP;
    if (!__CFStringFoldCharacterClusterAtIndex_decompBMP)
    {
      goto LABEL_51;
    }
  }

  if ((*(BitmapPtrForPlane + (v26 >> 3)) >> (v26 & 7)))
  {
    v28 = v115;
    v29 = CFUniCharDecomposeCharacter(v115, a6, 64);
    v18 = v29;
    v30 = *a6;
    v115 = *a6;
    if ((a4 & 0x80) != 0 && v30 < 0x510)
    {
      v18 = 1;
    }

    else if ((a4 & 0x10) != 0)
    {
      if (v113 && !v29)
      {
        *v113 = 1;
      }
    }

    else
    {
      v18 = 0;
      v115 = v28;
    }
  }

LABEL_51:
  if ((a4 & 1) == 0)
  {
LABEL_52:
    v19 = 0;
    goto LABEL_121;
  }

  v31 = v115;
  v33 = (a4 & 0x80) == 0 || v115 > 0x50F;
  if (!__CFStringFoldCharacterClusterAtIndex_lowerBMP)
  {
    __CFStringFoldCharacterClusterAtIndex_lowerBMP = CFUniCharGetBitmapPtrForPlane(0x67u, 0);
    __CFStringFoldCharacterClusterAtIndex_caseFoldBMP = CFUniCharGetBitmapPtrForPlane(0x6Au, 0);
    v31 = v115;
  }

  if (!a5 || v31 != 73)
  {
LABEL_70:
    if (v15)
    {
      goto LABEL_71;
    }

    goto LABEL_85;
  }

  v34 = *a5;
  if (v34 == 97)
  {
    if (*(a5 + 1) != 122)
    {
LABEL_69:
      LOWORD(v31) = 73;
      goto LABEL_70;
    }
  }

  else if (v34 != 116 || *(a5 + 1) != 114)
  {
    goto LABEL_69;
  }

  if (*(a5 + 2))
  {
    goto LABEL_69;
  }

  if (v18 < 2)
  {
    if (v17 < 0)
    {
      goto LABEL_69;
    }

    v36 = *(buffer + 20);
    if (v36 <= v17)
    {
      goto LABEL_69;
    }

    v37 = *(buffer + 17);
    if (v37)
    {
      v38 = (v37 + 2 * *(buffer + 19) + 2 * v17);
    }

    else
    {
      if (*(buffer + 18))
      {
        goto LABEL_69;
      }

      if (*(buffer + 22) <= v17 || (v88 = *(buffer + 21), v88 > v17))
      {
        v89 = v17 - 4;
        if (v17 < 4)
        {
          v89 = 0;
        }

        if (v89 + 64 < v36)
        {
          v36 = v89 + 64;
        }

        *(buffer + 21) = v89;
        *(buffer + 22) = v36;
        v120.length = v36 - v89;
        v120.location = *(buffer + 19) + v89;
        CFStringGetCharacters(*(buffer + 16), v120, buffer);
        v88 = *(buffer + 21);
      }

      v38 = &buffer[v17 - v88];
    }

    if (*v38 != 775)
    {
      LOWORD(v31) = v115;
      if (v15)
      {
LABEL_71:
        v35 = CFUniCharGetBitmapPtrForPlane(0x67u, v15);
        if (!v35)
        {
          goto LABEL_87;
        }

LABEL_86:
        if ((*(v35 + (v31 >> 3)) >> (v31 & 7)))
        {
LABEL_92:
          v111 = a4;
          v41 = CFUniCharMapCaseTo(v115, v116, 8, 3, 0, a5);
          v42 = v41;
          v43 = &v116[v41];
          v18 -= v18 > 0;
          if (v18 >= 1 && (v41 & 0xFFFFFFFE) != 0)
          {
            v44 = 0;
            if (v41)
            {
              v45 = v116;
              v46 = v116;
              do
              {
                v47 = *v46++;
                if ((v47 & 0xFC00) == 0xD800 && v46 < v43)
                {
                  v49 = v45[1] & 0xFC00;
                  v50 = v45 + 2;
                  if (v49 == 56320)
                  {
                    v46 = v50;
                  }
                }

                ++v44;
                v45 = v46;
              }

              while (v46 < v43);
            }

            memmove(&a6[v44], a6 + 1, 4 * v18);
          }

          if (v42)
          {
            v51 = v116;
            v52 = a6;
            do
            {
              v54 = (v51 + 1);
              v53 = *v51;
              v115 = v53;
              v55 = (v53 & 0xFC00) != 0xD800 || v54 >= v43;
              if (v55 || (v56 = *v54, (v56 & 0xFC00) != 0xDC00))
              {
                v57 = __CFStringFoldCharacterClusterAtIndex_graphemeBMP;
                ++v51;
              }

              else
              {
                v51 += 2;
                v115 = (v53 << 10) - 56613888 + v56;
                v57 = CFUniCharGetBitmapPtrForPlane(0x6Eu, HIWORD(v115));
                v53 = v115;
              }

              if (v57)
              {
                v58 = v33;
              }

              else
              {
                v58 = 1;
              }

              if ((v58 & 1) != 0 || ((*(v57 + (v53 >> 3)) >> (v53 & 7)) & 1) == 0)
              {
                *v52++ = v53;
                ++v18;
              }
            }

            while (v51 < v43);
          }

          v19 = 0;
          LOBYTE(a4) = v111;
          goto LABEL_121;
        }

LABEL_87:
        v39 = v115;
        if (v15)
        {
          v40 = CFUniCharGetBitmapPtrForPlane(0x6Au, v15);
          if (!v40)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v40 = __CFStringFoldCharacterClusterAtIndex_caseFoldBMP;
          if (!__CFStringFoldCharacterClusterAtIndex_caseFoldBMP)
          {
            goto LABEL_52;
          }
        }

        if (((*(v40 + (v39 >> 3)) >> (v39 & 7)) & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_92;
      }

LABEL_85:
      v35 = __CFStringFoldCharacterClusterAtIndex_lowerBMP;
      if (!__CFStringFoldCharacterClusterAtIndex_lowerBMP)
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }

    *a6 = 105;
    v115 = 105;
    ++v17;
    v19 = 1;
LABEL_17:
    v18 = 1;
    goto LABEL_121;
  }

  if (a6[1] != 775)
  {
    goto LABEL_69;
  }

  if (v18 != 2)
  {
    memmove(a6 + 1, a6 + 2, 4 * v18 - 8);
  }

  *a6 = 105;
  v115 = 105;
  v19 = 1;
  --v18;
LABEL_121:
  if ((a4 & 0x90) != 0)
  {
    LODWORD(v60) = (a4 & 0x80) == 0 || v115 > 0x50F;
    if (v18)
    {
      goto LABEL_129;
    }

    *a6 = v115;
    if (v60)
    {
      if (v17 < 0 || (v70 = *(buffer + 20), v70 <= v17))
      {
        v73 = 0;
      }

      else
      {
        v71 = *(buffer + 17);
        if (v71)
        {
          v72 = *(v71 + 2 * *(buffer + 19) + 2 * v17);
        }

        else
        {
          v80 = *(buffer + 18);
          if (v80)
          {
            v72 = *(v80 + *(buffer + 19) + v17);
          }

          else
          {
            if (*(buffer + 22) <= v17 || (v81 = *(buffer + 21), v81 > v17))
            {
              v82 = v17 - 4;
              if (v17 < 4)
              {
                v82 = 0;
              }

              if (v82 + 64 < v70)
              {
                v70 = v82 + 64;
              }

              *(buffer + 21) = v82;
              *(buffer + 22) = v70;
              v119.length = v70 - v82;
              v119.location = *(buffer + 19) + v82;
              CFStringGetCharacters(*(buffer + 16), v119, buffer);
              v81 = *(buffer + 21);
            }

            v72 = buffer[v17 - v81];
          }
        }

        v73 = v72;
        if (v72 >> 10 == 54)
        {
          v83 = v17 + 1;
          v84 = *(buffer + 20);
          if (v84 > v17 + 1)
          {
            v85 = *(buffer + 17);
            if (v85)
            {
              v86 = *(v85 + 2 * *(buffer + 19) + 2 * v83);
            }

            else
            {
              v87 = *(buffer + 18);
              if (v87)
              {
                v86 = *(v87 + *(buffer + 19) + v83);
              }

              else
              {
                if (*(buffer + 22) <= v83 || (v90 = *(buffer + 21), v90 > v83))
                {
                  v91 = v17 - 3;
                  if (v17 < 3)
                  {
                    v91 = 0;
                  }

                  if (v91 + 64 < v84)
                  {
                    v84 = v91 + 64;
                  }

                  *(buffer + 21) = v91;
                  *(buffer + 22) = v84;
                  v121.length = v84 - v91;
                  v121.location = *(buffer + 19) + v91;
                  CFStringGetCharacters(*(buffer + 16), v121, buffer);
                  v90 = *(buffer + 21);
                }

                v86 = buffer[v83 - v90];
              }
            }

            if (v86 >> 10 == 55)
            {
              v73 = (v73 << 10) + v86 - 56613888;
              v60 = CFUniCharGetBitmapPtrForPlane(0x6Eu, HIWORD(v73));
              v74 = CFUniCharGetBitmapPtrForPlane(9u, HIWORD(v73));
              if (!v60)
              {
                goto LABEL_204;
              }

LABEL_154:
              v75 = v73 >> 3;
              v76 = 1 << (v73 & 7);
              if ((v76 & *(v60 + v75)) == 0)
              {
                v18 = 0;
                LODWORD(v60) = 0;
                goto LABEL_205;
              }

              if ((a4 & 0x80) != 0 && v73 < 0x510)
              {
                v18 = 1;
              }

              else if (v74 && (v76 & *(v74 + v75)) != 0)
              {
                v77 = CFUniCharDecomposeCharacter(v73, a6 + 1, 63);
                v18 = v77 + 1;
                if (v113 && !v77)
                {
                  v18 = 1;
                  *v113 = 1;
                }
              }

              else
              {
                a6[1] = v73;
                v18 = 2;
              }

              v78 = v60 == __CFStringFoldCharacterClusterAtIndex_graphemeBMP;
              LODWORD(v60) = 1;
              if (v78)
              {
                v79 = 1;
              }

              else
              {
                v79 = 2;
              }

              v17 += v79;
LABEL_129:
              if (v18 > 63)
              {
LABEL_130:
                if (v113)
                {
                  *v113 = 1;
                }

LABEL_132:
                if (v18 >= 2)
                {
                  v61 = a7;
                  v62 = &a6[v18 - 1];
                  v63 = 4;
                  do
                  {
                    v64 = v63;
                    v65 = v62;
                    if (v62 <= a6)
                    {
                      break;
                    }

                    v66 = *v62;
                    if (HIWORD(*v62))
                    {
                      v67 = CFUniCharGetBitmapPtrForPlane(0x6Eu, HIWORD(*v62));
                      if (!v67)
                      {
                        break;
                      }
                    }

                    else
                    {
                      v67 = __CFStringFoldCharacterClusterAtIndex_graphemeBMP;
                      if (!__CFStringFoldCharacterClusterAtIndex_graphemeBMP)
                      {
                        break;
                      }
                    }

                    v63 = v64 + 4;
                    v62 = v65 - 1;
                  }

                  while (((*(v67 + (v66 >> 3)) >> (v66 & 7)) & 1) != 0);
                  if (v64 >> 2 >= 2)
                  {
                    CFUniCharPrioritySort(v65, v64 >> 2);
                  }

                  a7 = v61;
                }

                goto LABEL_143;
              }

LABEL_205:
              while ((v17 & 0x8000000000000000) == 0)
              {
                v92 = *(buffer + 20);
                if (v92 <= v17)
                {
                  break;
                }

                v93 = *(buffer + 17);
                if (v93)
                {
                  v94 = *(v93 + 2 * *(buffer + 19) + 2 * v17);
                }

                else
                {
                  v101 = *(buffer + 18);
                  if (v101)
                  {
                    v94 = *(v101 + *(buffer + 19) + v17);
                  }

                  else
                  {
                    if (*(buffer + 22) <= v17 || (v102 = *(buffer + 21), v102 > v17))
                    {
                      v103 = v17 - 4;
                      if (v17 < 4)
                      {
                        v103 = 0;
                      }

                      if (v103 + 64 < v92)
                      {
                        v92 = v103 + 64;
                      }

                      *(buffer + 21) = v103;
                      *(buffer + 22) = v92;
                      v122.length = v92 - v103;
                      v122.location = *(buffer + 19) + v103;
                      CFStringGetCharacters(*(buffer + 16), v122, buffer);
                      v102 = *(buffer + 21);
                    }

                    v94 = buffer[v17 - v102];
                  }
                }

                v115 = v94;
                if (v94 >> 10 != 54)
                {
                  goto LABEL_210;
                }

                v104 = v17 + 1;
                v105 = *(buffer + 20);
                if (v105 <= v17 + 1)
                {
                  goto LABEL_210;
                }

                v106 = *(buffer + 17);
                if (v106)
                {
                  v107 = *(v106 + 2 * *(buffer + 19) + 2 * v104);
                }

                else
                {
                  v108 = *(buffer + 18);
                  if (v108)
                  {
                    v107 = *(v108 + *(buffer + 19) + v104);
                  }

                  else
                  {
                    if (*(buffer + 22) <= v104 || (v109 = *(buffer + 21), v109 > v104))
                    {
                      v110 = v17 - 3;
                      if (v17 < 3)
                      {
                        v110 = 0;
                      }

                      if (v110 + 64 < v105)
                      {
                        v105 = v110 + 64;
                      }

                      *(buffer + 21) = v110;
                      *(buffer + 22) = v105;
                      v123.length = v105 - v110;
                      v123.location = *(buffer + 19) + v110;
                      CFStringGetCharacters(*(buffer + 16), v123, buffer);
                      v109 = *(buffer + 21);
                    }

                    v107 = buffer[v104 - v109];
                  }
                }

                if (v107 >> 10 != 55)
                {
                  goto LABEL_210;
                }

                v115 = (v115 << 10) + v107 - 56613888;
                v95 = CFUniCharGetBitmapPtrForPlane(0x6Eu, HIWORD(v115));
                v96 = CFUniCharGetBitmapPtrForPlane(9u, HIWORD(v115));
                if (v19)
                {
                  goto LABEL_226;
                }

LABEL_211:
                if (!v95)
                {
                  goto LABEL_132;
                }

                v97 = v115 >> 3;
                v98 = 1 << (v115 & 7);
                if ((v98 & *(v95 + v97)) == 0)
                {
                  goto LABEL_132;
                }

                if (v60)
                {
                  if (v96 && (v98 & *(v96 + v97)) != 0)
                  {
                    v99 = CFUniCharDecomposeCharacter(v115, &a6[v18], 64 - v18);
                    v18 += v99;
                    if (!v99)
                    {
                      goto LABEL_130;
                    }
                  }

                  else
                  {
                    a6[v18++] = v115;
                  }
                }

                else if (v18 <= 1)
                {
                  v18 = 1;
                }

                if (v95 == __CFStringFoldCharacterClusterAtIndex_graphemeBMP)
                {
                  v100 = 1;
                }

                else
                {
                  v100 = 2;
                }

                v17 += v100;
LABEL_226:
                v19 = 0;
                if (v18 >= 64)
                {
                  goto LABEL_130;
                }
              }

              v115 = 0;
LABEL_210:
              v95 = __CFStringFoldCharacterClusterAtIndex_graphemeBMP;
              v96 = __CFStringFoldCharacterClusterAtIndex_decompBMP;
              if (v19)
              {
                goto LABEL_226;
              }

              goto LABEL_211;
            }
          }
        }
      }

      v60 = __CFStringFoldCharacterClusterAtIndex_graphemeBMP;
      v74 = __CFStringFoldCharacterClusterAtIndex_decompBMP;
      if (__CFStringFoldCharacterClusterAtIndex_graphemeBMP)
      {
        goto LABEL_154;
      }
    }

LABEL_204:
    v18 = 0;
    goto LABEL_205;
  }

LABEL_143:
  if (a7 && v18 >= 1)
  {
    *a7 = v17 - v112;
  }

LABEL_146:
  v68 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t CFDictionaryApply(void *a1, uint64_t a2)
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x12uLL, a1))
  {
    v4 = *MEMORY[0x1E69E9840];

    return [a1 enumerateKeysAndObjectsWithOptions:0 usingBlock:a2];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __CFDictionaryApply_block_invoke;
    v7[3] = &unk_1E6D7D948;
    v7[4] = a2;
    result = CFBasicHashApply(a1, v7);
    v6 = *MEMORY[0x1E69E9840];
  }

  return result;
}

BOOL _CFBundleSupportedProductName(const __CFString *a1, CFRange rangeToSearch)
{
  length = rangeToSearch.length;
  location = rangeToSearch.location;
  v9.location = rangeToSearch.location;
  v9.length = length;
  if (CFStringFindWithOptions(a1, @"iphone", v9, 8uLL, 0))
  {
    return 1;
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v6 == 2)
    {
      break;
    }

    v10.location = location;
    v10.length = length;
    v8 = CFStringFindWithOptions(a1, _CFBundleSupportedProductName_platforms[v6 + 1], v10, 8uLL, 0);
    v6 = v7 + 1;
  }

  while (!v8);
  return v7 < 2;
}

uint64_t CFArrayApply(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3 - 1;
  if (a3 >= 1)
  {
    v7 = result;
    do
    {
      v8 = [v7 objectAtIndex:a2];
      v11 = 0;
      result = (*(a4 + 16))(a4, v8, &v11);
      if (v11)
      {
        v9 = 1;
      }

      else
      {
        v9 = v4 == 0;
      }

      --v4;
      ++a2;
    }

    while (!v9);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t (*__CFRUNLOOP_IS_CALLING_OUT_TO_AN_OBSERVER_CALLBACK_FUNCTION__(uint64_t (*result)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t, uint64_t, uint64_t)
{
  if (result)
  {
    return result(a2, a3, a4);
  }

  return result;
}

uint64_t CFPREFERENCES_IS_WAITING_FOR_SYSTEM_AND_USER_CFPREFSDS(const os_unfair_lock *a1, uint64_t a2)
{
  os_unfair_lock_assert_not_owner(a1 + 18);
  os_unfair_lock_assert_not_owner(a1 + 19);
  os_unfair_lock_assert_not_owner(a1 + 20);
  return (*(a2 + 16))(a2);
}

void CFArrayAppendArray(CFMutableArrayRef theArray, CFArrayRef otherArray, CFRange otherRange)
{
  if (otherRange.length >= 1)
  {
    v13 = v6;
    v14 = v5;
    v15 = v4;
    v16 = v3;
    v17 = v7;
    v18 = v8;
    location = otherRange.location;
    v12 = otherRange.location + otherRange.length;
    do
    {
      CFArrayAppendValue(theArray, [(__CFArray *)otherArray objectAtIndex:location++, v13, v14, v15, v16, v17, v18]);
    }

    while (location < v12);
  }
}

uint64_t _isRootOrRoleAccountUserName(const __CFString *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (CFEqual(a1, @"root"))
  {
    v2 = 1;
  }

  else if (CFStringGetLength(a1) && CFStringGetCharacterAtIndex(a1, 0) == 95)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v12 = ___isRootOrRoleAccountUserName_block_invoke;
    v13 = &unk_1E6DD21B0;
    v14 = &v15;
    if (CFStringGetCStringPtr(a1, 0x8000100u))
    {
      (v12)(v11);
    }

    else
    {
      Length = CFStringGetLength(a1);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v6 = MaximumSizeForEncoding + 1;
      if ((MaximumSizeForEncoding + 1) < 0x101)
      {
        if (MaximumSizeForEncoding == -1)
        {
          v7 = 0;
        }

        else
        {
          MEMORY[0x1EEE9AC00](MaximumSizeForEncoding, v5);
          v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v7, v6);
        }
      }

      else
      {
        v7 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      }

      bzero(v7, v6);
      if (CFStringGetCString(a1, v7, v6, 0x8000100u))
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v12(v11, v8);
      if (v6 >= 0x101)
      {
        free(v7);
      }
    }

    v2 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v2 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2 & 1;
}

BOOL _CFPrefsGetPathForManagedBundleID(__CFString *a1, __CFString *a2, int a3, UInt8 *a4)
{
  if (_CFPrefsGetPathForManagedBundleID_onceToken == -1)
  {
    if (!a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _CFPrefsGetPathForManagedBundleID_cold_1();
    if (!a3)
    {
      goto LABEL_5;
    }
  }

  if (_CFPrefsGetPathForManagedBundleID_containerizedOnceToken != -1)
  {
    _CFPrefsGetPathForManagedBundleID_cold_2();
  }

LABEL_5:
  if (a1 && (CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(a1)) != 0)
  {
    v9 = CacheStringForBundleID;
    if (CFEqual(CacheStringForBundleID, @"kCFPreferencesAnyApplication"))
    {
      v10 = @".GlobalPreferences";
    }

    else
    {
      v10 = v9;
    }

    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
    if (!a3)
    {
LABEL_11:
      v11 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, _CFPrefsGetPathForManagedBundleID_containingDirectoryPath, kCFURLPOSIXPathStyle, 1u);
      goto LABEL_14;
    }
  }

  v11 = CFRetain(_CFPrefsGetPathForManagedBundleID_containerizedContainingDirectoryURL);
LABEL_14:
  v12 = v11;
  if (!v11)
  {
    return 0;
  }

  if (CFEqual(a2, @"kCFPreferencesAnyUser"))
  {
    if (!v10)
    {
      v14 = &stru_1EF068AA8;
      goto LABEL_29;
    }

    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@.plist", v10);
    goto LABEL_18;
  }

  if (!CFEqual(a2, @"kCFPreferencesCurrentUser"))
  {
    v20 = _CFPrefsCopyUsernameForMobileUser();
    if (v20)
    {
      v21 = v20;
      if (CFEqual(a2, v20))
      {
        a2 = @"mobile";
      }

      CFRelease(v21);
    }

    if (v10)
    {
      v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@/%@.plist", a2, v10);
    }

    else
    {
      v13 = CFRetain(a2);
    }

LABEL_18:
    v14 = v13;
    goto LABEL_19;
  }

  if (_CFPrefsGetPathForManagedBundleID_onceToken_23 != -1)
  {
    _CFPrefsGetPathForManagedBundleID_cold_3();
  }

  v15 = _CFPrefsGetPathForManagedBundleID_ourUserName;
  if (!_CFPrefsGetPathForManagedBundleID_ourUserName)
  {
    v15 = CFCopyUserName();
    if (v10)
    {
      goto LABEL_26;
    }

LABEL_41:
    v16 = CFRetain(v15);
    goto LABEL_42;
  }

  if (!v10)
  {
    goto LABEL_41;
  }

LABEL_26:
  v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@/%@.plist", v15, v10);
LABEL_42:
  v14 = v16;
  if (!_CFPrefsGetPathForManagedBundleID_ourUserName && v15)
  {
    CFRelease(v15);
  }

LABEL_19:
  if (v14)
  {
LABEL_29:
    v18 = CFURLCreateWithFileSystemPathRelativeToBase(&__kCFAllocatorSystemDefault, v14, kCFURLPOSIXPathStyle, 0, v12);
    CFRelease(v14);
    CFRelease(v12);
    if (v18)
    {
      v17 = CFURLGetFileSystemRepresentation(v18, 1u, a4, 1024) != 0;
      v12 = v18;
      goto LABEL_31;
    }

    return 0;
  }

  v17 = 0;
LABEL_31:
  CFRelease(v12);
  return v17;
}

__CFString *_CFPrefsCopyUsernameForMobileUser()
{
  if (!eduModeEnabled())
  {
    return @"mobile";
  }

  if (_CFPrefsCopyUsernameForMobileUser_onceToken != -1)
  {
    _CFPrefsCopyUsernameForMobileUser_cold_1();
  }

  v0 = _CFPrefsCopyUsernameForMobileUser_mobileUserName;

  return CFRetain(v0);
}

uint64_t __createArray(void *a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = a2;
  result = [a1 initWithObjects:v4 count:1];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

char *__NSOrderedSetI_new(uint64_t a1, unint64_t a2, char a3)
{
  v4 = 0;
  v5 = 1;
  v6 = 2;
  v7 = 4;
  if (a2 < 0xFFFFFFFF)
  {
    v8 = 2;
  }

  else
  {
    v7 = 8;
    v8 = 8;
  }

  if (a2 >= 0xFFFF)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  if (a2 >= 0xFFFF)
  {
    v6 = v7;
  }

  if (a2 >= 0xFF)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a2 >= 0xFF)
  {
    v5 = v6;
  }

  while (__NSOrderedSetCapacities[v4] < a2)
  {
    if (++v4 == 64)
    {
      __break(1u);
      break;
    }
  }

  if (!a2)
  {
    v30 = objc_opt_self();
    v29 = __CFAllocateObject(v30, 0);
    v29[14] = 0;
    *(v29 + 6) = 0;
    *(v29 + 2) = 0;
    v29[15] &= 3u;
    v29[15] &= 0xFCu;
    return v29;
  }

  v11 = __NSOrderedSetSizes[v4];
  v32 = v11 * v5;
  v12 = malloc_type_calloc(1uLL, v11 * v5 + 8 * a2, 0x80040B8603338uLL);
  v13 = 0;
  v14 = 0;
  v15 = &v12[8 * a2];
  v16 = v12 - 8;
  if (v11 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v11;
  }

  __src = v12;
  v35 = v17;
  v36 = a2;
  do
  {
    v38 = v14;
    v18 = *(a1 + 8 * v13);
    v19 = v35;
    v20 = [v18 hash] % v11;
    while (v10 <= 1)
    {
      if (v10)
      {
        v21 = *&v15[2 * v20];
        if (!*&v15[2 * v20])
        {
          goto LABEL_43;
        }
      }

      else
      {
        v21 = v15[v20];
        if (!v15[v20])
        {
          goto LABEL_43;
        }
      }

LABEL_33:
      v22 = *&v16[8 * v21];
      if (v22 == v18 || ([v22 isEqual:v18] & 1) != 0)
      {
        v25 = v36;
        v14 = v38;
        goto LABEL_41;
      }

      if (v20 + 1 >= v11)
      {
        v23 = v11;
      }

      else
      {
        v23 = 0;
      }

      v20 = v20 + 1 - v23;
      if (!--v19)
      {
        v24 = v11;
        goto LABEL_44;
      }
    }

    if (v10 != 2)
    {
      v21 = *&v15[8 * v20];
      if (!v21)
      {
        goto LABEL_43;
      }

      goto LABEL_33;
    }

    v21 = *&v15[4 * v20];
    if (*&v15[4 * v20])
    {
      goto LABEL_33;
    }

LABEL_43:
    v24 = v20;
LABEL_44:
    v26 = *(a1 + 8 * v13);
    __src[v38] = v26;
    v25 = v36;
    if ((a3 & 1) == 0 && v26 >= 1)
    {
      v27 = v26;
    }

    v14 = v38 + 1;
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *&v15[4 * v24] = v14;
      }

      else
      {
        *&v15[8 * v24] = v14;
      }
    }

    else if (v10)
    {
      *&v15[2 * v24] = v14;
    }

    else
    {
      v15[v24] = v14;
    }

LABEL_41:
    ++v13;
  }

  while (v13 != v25);
  v28 = objc_opt_self();
  v29 = __CFAllocateObject(v28, v32 + 8 * v14);
  v29[14] = BYTE6(v14);
  *(v29 + 6) = WORD2(v14);
  *(v29 + 2) = v14;
  v29[15] = v29[15] & 3 | (4 * v4);
  v29[15] = v29[15] & 0xFC | v10 & 3;
  memmove(v29 + 16, __src, 8 * v14);
  memmove(&v29[8 * v14 + 16], v15, v32);
  free(__src);
  return v29;
}

CFRunLoopTimerRef CFRunLoopTimerCreate(CFAllocatorRef allocator, CFAbsoluteTime fireDate, CFTimeInterval interval, CFOptionFlags flags, CFIndex order, CFRunLoopTimerCallBack callout, CFRunLoopTimerContext *context)
{
  v7 = MEMORY[0x1EEE9AC00](allocator, flags);
  v12 = v8;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v7;
  v38 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  Instance = _CFRuntimeCreateInstance(v21, 0x2FuLL, 176, 0, v8, v9, v10, v11);
  v23 = Instance;
  if (Instance)
  {
    v24 = atomic_load((Instance + 8));
    v25 = v24;
    do
    {
      atomic_compare_exchange_strong((Instance + 8), &v25, v24 | 8);
      v26 = v25 == v24;
      v24 = v25;
    }

    while (!v26);
    *(Instance + 16) &= ~1u;
    *v37.__opaque = 0;
    v37.__sig = 0;
    pthread_mutexattr_init(&v37);
    pthread_mutexattr_settype(&v37, 2);
    pthread_mutex_init((v23 + 24), &v37);
    pthread_mutexattr_destroy(&v37);
    *(v23 + 88) = 0;
    *(v23 + 96) = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
    *(v23 + 136) = v16;
    if (v18 >= 0.0)
    {
      v27 = v18;
    }

    else
    {
      v27 = 0.0;
    }

    *(v23 + 120) = 0;
    if (v20 <= 4039289860.0)
    {
      v28 = v20;
    }

    else
    {
      v28 = 4039289860.0;
    }

    *(v23 + 104) = v28;
    *(v23 + 112) = v27;
    v29 = mach_absolute_time();
    Current = CFAbsoluteTimeGetCurrent();
    v31 = Current;
    if (v28 >= Current)
    {
      v32 = v28 - Current;
      if (v28 - v31 > 504911232.0)
      {
        v32 = 504911232.0;
      }

      *(v23 + 128) = __CFTimeIntervalToTSR(v32) + v29;
    }

    else
    {
      *(v23 + 128) = v29;
    }

    *(v23 + 144) = v14;
    if (v12)
    {
      v33 = *(v12 + 8);
      v34 = *(v12 + 16);
      if (v34)
      {
        v33 = v34(v33);
        v34 = *(v12 + 16);
      }

      *(v23 + 160) = v33;
      *(v23 + 168) = v34;
      *(v23 + 176) = *(v12 + 24);
    }

    kdebug_trace();
  }

  v35 = *MEMORY[0x1E69E9840];
  return v23;
}

void CFRunLoopAddTimer(CFRunLoopRef rl, CFRunLoopTimerRef timer, CFRunLoopMode mode)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  __CFCheckCFInfoPACSignature(rl);
  v6 = _CFGetNonObjCTypeID(rl);
  if (v6 != 43)
  {
    _CFAssertMismatchedTypeID(0x2BuLL, v6);
  }

  v7 = atomic_load(__CFMainThreadHasExited);
  if (v7)
  {
    CFRunLoopAddTimer_cold_1(rl);
  }

  v8 = atomic_load(rl + 1);
  if ((v8 & 4) == 0)
  {
    v9 = atomic_load(timer + 1);
    if ((v9 & 8) != 0)
    {
      v10 = *(timer + 11);
      if (!v10 || v10 == rl)
      {
        pthread_mutex_lock((rl + 16));
        if (mode == @"kCFRunLoopCommonModes")
        {
          v13 = *(rl + 330);
          if (v13)
          {
            Copy = CFSetCreateCopy(&__kCFAllocatorSystemDefault, v13);
          }

          else
          {
            Copy = 0;
          }

          Mutable = *(rl + 331);
          if (!Mutable)
          {
            Mutable = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
            *(rl + 331) = Mutable;
          }

          CFSetAddValue(Mutable, timer);
          if (!Copy)
          {
            goto LABEL_29;
          }

          v17.version = rl;
          v17.retain = timer;
          CFSetApplyFunction(Copy, __CFRunLoopAddItemToCommonModes, &v17);
          goto LABEL_28;
        }

        v11 = __CFRunLoopCopyMode(rl, mode, 1);
        if (!v11)
        {
LABEL_29:
          pthread_mutex_unlock((rl + 16));
          goto LABEL_30;
        }

        Copy = v11;
        pthread_mutex_lock((v11 + 16));
        if (!*(Copy + 15))
        {
          *&v17.version = *&kCFTypeArrayCallBacks.version;
          *&v17.release = *&kCFTypeArrayCallBacks.release;
          v17.equal = 0;
          *(Copy + 15) = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &v17);
        }

        if (CFSetContainsValue(*(timer + 12), *(Copy + 10)))
        {
LABEL_17:
          pthread_mutex_unlock((Copy + 16));
LABEL_28:
          CFRelease(Copy);
          goto LABEL_29;
        }

        pthread_mutex_lock((timer + 24));
        v14 = *(timer + 11);
        if (v14)
        {
          if (v14 != rl)
          {
            pthread_mutex_unlock((timer + 24));
            goto LABEL_17;
          }
        }

        else
        {
          *(timer + 11) = rl;
        }

        CFSetAddValue(*(timer + 12), *(Copy + 10));
        pthread_mutex_unlock((timer + 24));
        os_unfair_lock_lock(rl + 679);
        __CFRepositionTimerInMode(Copy, timer, 0);
        os_unfair_lock_unlock(rl + 679);
        if (!_CFExecutableLinkedOnOrAfter(7uLL) && _CFRunLoopGetButDontCreateCurrent() != rl)
        {
          CFRunLoopWakeUp(rl);
        }

        goto LABEL_17;
      }
    }
  }

LABEL_30:
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __CFBasicHashReplaceValue(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  ++*(result + 16);
  v8 = *(CFBasicHashCallBackPtrs[(*(result + 24) >> 39) & 0x1FLL] + 8 * ((*(result + 24) >> 34) & 0x1FLL));
  if (v8 && (*(result + 32) & 2) == 0)
  {
    if (result < 0)
    {
      v9 = &kCFAllocatorSystemDefault;
    }

    else
    {
      v10 = atomic_load((result + 8));
      if (v10 < 0)
      {
        v9 = &kCFAllocatorSystemDefault;
      }

      else
      {
        v9 = (result - 16);
      }
    }

    result = v8(*v9, a4);
    v4 = result;
  }

  if ((*(v7 + 18) & 4) != 0)
  {
    v11 = *(CFBasicHashCallBackPtrs[(*(v7 + 24) >> 29) & 0x1FLL] + 8 * ((*(v7 + 24) >> 24) & 0x1FLL));
    if (v11)
    {
      if ((*(v7 + 32) & 2) == 0)
      {
        if (v7 < 0)
        {
          v12 = &kCFAllocatorSystemDefault;
        }

        else
        {
          v13 = atomic_load((v7 + 8));
          if (v13 < 0)
          {
            v12 = &kCFAllocatorSystemDefault;
          }

          else
          {
            v12 = (v7 - 16);
          }
        }

        result = v11(*v12, a3);
        a3 = result;
      }
    }
  }

  v14 = *(v7 + 40);
  v15 = *(v14 + 8 * a2);
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v16 = 2814029233;
  }

  if (v16 == -1)
  {
    v16 = 2780474809;
  }

  *(v14 + 8 * a2) = v16;
  if ((v15 + 1) >= 2)
  {
    if (v15 == 2814029233)
    {
      v15 = 0;
    }

    if (v15 == 2780474809)
    {
      v17 = -1;
    }

    else
    {
      v17 = v15;
    }

    v18 = *(*(CFBasicHashCallBackPtrs + (HIBYTE(*(v7 + 24)) & 0xF8)) + 8 * ((*(v7 + 24) >> 54) & 0x1FLL));
    if (v18 && (*(v7 + 32) & 2) == 0)
    {
      if (v7 < 0)
      {
        v19 = &kCFAllocatorSystemDefault;
      }

      else
      {
        v20 = atomic_load((v7 + 8));
        if (v20 < 0)
        {
          v19 = &kCFAllocatorSystemDefault;
        }

        else
        {
          v19 = (v7 - 16);
        }
      }

      result = v18(*v19, v17);
    }
  }

  if ((*(v7 + 18) & 4) != 0)
  {
    v21 = *(v7 + 48);
    v22 = *(v21 + 8 * a2);
    if (a3)
    {
      v23 = a3;
    }

    else
    {
      v23 = 2814029233;
    }

    if (v23 == -1)
    {
      v23 = 2780474809;
    }

    *(v21 + 8 * a2) = v23;
    if ((v22 + 1) >= 2)
    {
      if (v22 == 2814029233)
      {
        v22 = 0;
      }

      if (v22 == 2780474809)
      {
        v24 = -1;
      }

      else
      {
        v24 = v22;
      }

      v25 = *(CFBasicHashCallBackPtrs[(*(v7 + 24) >> 49) & 0x1FLL] + 8 * ((*(v7 + 24) >> 44) & 0x1FLL));
      if (v25 && (*(v7 + 32) & 2) == 0)
      {
        if (v7 < 0 || (v26 = atomic_load((v7 + 8)), v26 < 0))
        {
          v27 = &kCFAllocatorSystemDefault;
        }

        else
        {
          v27 = (v7 - 16);
        }

        v28 = *v27;

        return v25(v28, v24);
      }
    }
  }

  return result;
}

void CFRunLoopTimerSetTolerance(CFRunLoopTimerRef timer, CFTimeInterval tolerance)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (CF_IS_OBJC(0x2FuLL, timer))
  {

    [(__CFRunLoopTimer *)timer setTolerance:tolerance];
  }

  else
  {
    v4 = *(timer + 14);
    if (v4 <= 0.0)
    {
      v5 = 0.0;
      if (tolerance >= 0.0)
      {
        v5 = tolerance;
      }
    }

    else
    {
      v5 = v4 * 0.5;
      if (v5 > tolerance)
      {
        v5 = tolerance;
      }
    }

    *(timer + 15) = v5;
  }
}

uint64_t _CFAppVersionCheckLessThan(CFTypeRef cf2, int a2, double a3)
{
  if (!cf2)
  {
    _CFAppVersionCheckLessThan_cold_3();
  }

  if (a2 != -1)
  {
    v5 = a2;
    active_platform = dyld_get_active_platform();
    if (_CFPlatformExecutableLinkedOnOrAfter(v5, active_platform))
    {
      return 0;
    }
  }

  if (_bundleInfo_onceToken != -1)
  {
    _CFAppVersionCheckLessThan_cold_1();
  }

  if (!_bundleInfo_info_0)
  {
    _CFAppVersionCheckLessThan_cold_2();
  }

  result = CFEqual(_bundleInfo_info_0, cf2);
  if (result)
  {
    return *&_bundleInfo_info_2 < a3 || a3 < 0.0;
  }

  return result;
}

unint64_t *_CFXNotificationRemoveObservers(unint64_t *result, __CFString *a2, __CFString *a3, uint64_t a4)
{
  if (a2 && a3 && a4)
  {
    v7 = result;
    v8 = result + 1;
    v9 = atomic_load(result + 1);
    if ((v9 & 2) == 0 || (__CFIsDistNoteDaemon & 1) == 0)
    {
      v10 = _CFAutoreleasePoolPush();
      v11 = atomic_load(v8);
      if (v11)
      {
        v12 = @"kCFNotificationAnyObject";
      }

      else
      {
        v12 = a3;
      }

      CFXNotificationRegistrarRemove(v7[2], a2, v12, a4);

      return _CFAutoreleasePoolPop(v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _CFPreferencesCopyValueWithContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v10 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesCopyValueWithContainer_cold_1();
    }

    v10 = [qword_1ED40BE18 copyPrefs];
  }

  v11 = [v10 copyValueForKey:a1 identifier:a2 user:a3 host:a4 container:a5];

  return v11;
}

void CFXNotificationRegistrarRemove(uint64_t a1, __CFString *cf1, __CFString *a3, uint64_t a4)
{
  v7 = *(a1 + 24);
  v8 = @"kCFNotificationAnyName";
  if (cf1)
  {
    v9 = cf1;
    if (@"kCFNotificationAnyName" == cf1)
    {
      v8 = cf1;
    }

    else if (CFEqual(cf1, @"kCFNotificationAnyName"))
    {
      v9 = @"kCFNotificationAnyName";
    }
  }

  else
  {
    v9 = @"kCFNotificationAnyName";
  }

  v10 = (v7 >> 1) & 1;
  if (a3)
  {
    if ((v10 & 1) == 0)
    {
      v11 = CFHash(v9);
LABEL_12:
      v12 = (a3 >> 5) & 0x7F;
      goto LABEL_18;
    }

    if (@"kCFNotificationAnyObject" != a3 && CFEqual(a3, @"kCFNotificationAnyObject"))
    {
      a3 = @"kCFNotificationAnyObject";
    }

    v11 = CFHash(v9);
  }

  else
  {
    a3 = @"kCFNotificationAnyObject";
    v11 = CFHash(v9);
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  v12 = CFHash(a3);
LABEL_18:
  os_unfair_lock_lock((a1 + 16));
  _CFXNotificationRegistrarRemoveNames(a1, a1 + 32, 0, v9, v11, a3, v12, v10, a4);
  if (v9 == v8)
  {
    _CFXNotificationRegistrarRemoveObjects(a1, a1 + 48, a3, v12, v10, a4);
    if (a3 == @"kCFNotificationAnyObject")
    {
      _CFXNotificationRegistrarRemoveNames(a1, a1 + 64, 1, v9, v11, a3, v12, v10, a4);
      _CFXNotificationRegistrarRemoveObservers(a1, (a1 + 80), a4);
    }
  }

  else if (a3 == @"kCFNotificationAnyObject")
  {
    _CFXNotificationRegistrarRemoveNames(a1, a1 + 64, 1, v9, v11, a3, v12, v10, a4);
  }

  os_unfair_lock_unlock((a1 + 16));
}

void _CFXNotificationRegistrarRemoveNames(uint64_t a1, uint64_t a2, int a3, __CFString *a4, unint64_t a5, __CFString *cf1, unint64_t a7, int a8, uint64_t a9)
{
  v26 = *(a2 + 8);
  if (!v26)
  {
    return;
  }

  if (@"kCFNotificationAnyName" == a4)
  {
    v19 = 0;
    while (1)
    {
      v20 = *(*a2 + 4 * v19);
      if (v20 != -1)
      {
        break;
      }

LABEL_20:
      if (++v19 == v26)
      {
        return;
      }
    }

    while (1)
    {
      v21 = *(a1 + 96) + 40 * v20;
      v22 = *(v21 + 4);
      v23 = (v21 + 24);
      if (a3 == 1)
      {
        if (_CFXNotificationRegistrarRemoveObservers(a1, v23, a9))
        {
          v24 = 1;
LABEL_18:
          _CFXNotificationRegistrarRecycleNameRegistration(a1, a2, v20, v24);
        }
      }

      else if (_CFXNotificationRegistrarRemoveObjects(a1, v23, cf1, a7, a8, a9))
      {
        v24 = 0;
        goto LABEL_18;
      }

      v20 = v22;
      if (v22 == -1)
      {
        goto LABEL_20;
      }
    }
  }

  v15 = *(*a2 + 4 * (a5 % v26));
  if (v15 == -1)
  {
    return;
  }

  while (1)
  {
    v16 = *(a1 + 96) + 40 * v15;
    v17 = *(v16 + 4);
    if (!CFCachedStringEqual((v16 + 8), a4))
    {
      goto LABEL_9;
    }

    v18 = (v16 + 24);
    if (a3 != 1)
    {
      break;
    }

    if (_CFXNotificationRegistrarRemoveObservers(a1, v18, a9))
    {
      v25 = 1;
      goto LABEL_23;
    }

LABEL_9:
    v15 = v17;
    if (v17 == -1)
    {
      return;
    }
  }

  if (!_CFXNotificationRegistrarRemoveObjects(a1, v18, cf1, a7, a8, a9))
  {
    goto LABEL_9;
  }

  v25 = 0;
LABEL_23:

  _CFXNotificationRegistrarRecycleNameRegistration(a1, a2, v15, v25);
}

BOOL _CFXNotificationRegistrarRemoveObjects(uint64_t a1, uint64_t a2, __CFString *cf1, unint64_t a4, int a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  if (!v7)
  {
    return *(a2 + 12) == 0;
  }

  if (@"kCFNotificationAnyObject" == cf1)
  {
    for (i = 0; i != v7; ++i)
    {
      v17 = *(*a2 + 4 * i);
      if (v17 != -1)
      {
        do
        {
          v18 = *(a1 + 120) + 32 * v17;
          v19 = *(v18 + 4);
          if (_CFXNotificationRegistrarRemoveObservers(a1, (v18 + 16), a6))
          {
            _CFXNotificationRegistrarRecycleObjectRegistration(a1, a2, v17, a5);
          }

          v17 = v19;
        }

        while (v19 != 0xFFFFFFFFLL);
      }
    }

    return *(a2 + 12) == 0;
  }

  v12 = *(*a2 + 4 * (a4 % v7));
  if (v12 == -1)
  {
    return *(a2 + 12) == 0;
  }

  while (1)
  {
    v13 = *(a1 + 120) + 32 * v12;
    v14 = *(v13 + 4);
    v15 = *(v13 + 8);
    if ((v15 == cf1 || a5 && CFEqual(cf1, v15)) && _CFXNotificationRegistrarRemoveObservers(a1, (v13 + 16), a6) && _CFXNotificationRegistrarRecycleObjectRegistration(a1, a2, v12, a5))
    {
      break;
    }

    v12 = v14;
    if (v14 == -1)
    {
      return *(a2 + 12) == 0;
    }
  }

  return 1;
}

BOOL _CFXNotificationRegistrarRemoveObservers(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  memset(v11, 0, sizeof(v11));
  if (v5 == -1)
  {
LABEL_6:
    _CFXNotificationDisposalListRelease(v11);
    result = a2[1] == 0;
  }

  else
  {
    while (1)
    {
      v7 = *(a1 + 144) + 56 * v5;
      v8 = *(v7 + 4);
      if ((!a3 || *(v7 + 8) == a3) && _CFXNotificationRegistrarRecycleObserverRegistration(a1, a2, v5, v11))
      {
        break;
      }

      v5 = v8;
      if (v8 == -1)
      {
        goto LABEL_6;
      }
    }

    result = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _CFXNotificationRegistrarRecycleObserverRegistration(uint64_t a1, unsigned int *a2, unsigned int a3, unsigned int *a4)
{
  v8 = *(a1 + 144);
  v9 = a3;
  v10 = (v8 + 56 * a3);
  if (a2 && a3 != -1)
  {
    v11 = *v10;
    v12 = v10[1];
    if (*a2 == a3)
    {
      *a2 = v12;
    }

    if (v11 != -1)
    {
      *(v8 + 56 * v11 + 4) = v12;
    }

    if (v12 != -1)
    {
      *(v8 + 56 * v12) = v11;
    }
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    v13 = v10[11];
    if ((v13 & 0x2000) != 0)
    {
      if (*(v10 + 4))
      {
        v15 = xpc_array_create(0, 0);
        xpc_array_set_uint64(v15, 0xFFFFFFFFFFFFFFFFLL, v9 | (v10[10] << 32));
        v16 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v16, "method", "unregister");
        xpc_dictionary_set_uint64(v16, "version", 1uLL);
        xpc_dictionary_set_value(v16, "tokens", v15);
        _CFSuddenTerminationDisable();
        xpc_connection_send_message(*(v10 + 4), v16);
        xpc_connection_send_barrier(*(v10 + 4), &__block_literal_global_39);
        xpc_release(v16);
        xpc_release(v15);
        xpc_release(*(v10 + 4));
      }

      *(v10 + 4) = 0;
    }

    else if ((v13 & 0x4000) != 0)
    {
      v14 = v10[8];
      if (v14)
      {
        notify_cancel(v14);
      }

      v10[8] = 0;
    }
  }

  _CFXNotificationHandlerRelease(v10 + 2, v10[11], a4);
  if ((*(v10 + 45) & 4) != 0)
  {
    objc_destroyWeak(v10 + 1);
  }

  *(v10 + 1) = 0;
  v10[11] = 0x8000;
  v17 = a2[1] - 1;
  a2[1] = v17;
  if (a3 != -1)
  {
    v18 = *(a1 + 144);
    v19 = (v18 + 56 * v9);
    v20 = *(a1 + 160);
    if (v20 != -1)
    {
      *(v18 + 56 * v20) = a3;
    }

    *v19 = -1;
    v19[1] = v20;
    *(a1 + 160) = a3;
    v17 = a2[1];
  }

  --*(a1 + 152);
  return v17 == 0;
}

SEL __methodDescriptionForSelector(Class cls, SEL name)
{
  v19 = *MEMORY[0x1E69E9840];
  if (cls)
  {
    Superclass = cls;
    while (1)
    {
      outCount = 0;
      v5 = class_copyProtocolList(Superclass, &outCount);
      v6 = v5;
      if (outCount)
      {
        break;
      }

      if (v5)
      {
LABEL_10:
        free(v6);
      }

      Superclass = class_getSuperclass(Superclass);
      if (!Superclass)
      {
        goto LABEL_12;
      }
    }

    v7 = 0;
    while (1)
    {
      v8 = v6[v7];
      isMetaClass = class_isMetaClass(Superclass);
      v10 = protocol_getMethodDescription(v8, name, 1, !isMetaClass).name;
      if (v10)
      {
        break;
      }

      v11 = v6[v7];
      v12 = class_isMetaClass(Superclass);
      v10 = protocol_getMethodDescription(v11, name, 0, !v12).name;
      if (v10)
      {
        break;
      }

      if (++v7 >= outCount)
      {
        goto LABEL_10;
      }
    }

    v15 = v10;
    free(v6);
  }

  else
  {
LABEL_12:
    InstanceMethod = class_getInstanceMethod(cls, name);
    if (InstanceMethod)
    {
      v14 = InstanceMethod;
      v15 = method_getName(InstanceMethod);
      method_getTypeEncoding(v14);
    }

    else
    {
      v15 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void _CFPrefsExtractQuadrupleFromPathIfPossible(const __CFString *a1, CFStringRef *a2, CFStringRef *a3, CFTypeRef *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7)
{
  v76 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  if (!a1)
  {
    goto LABEL_84;
  }

  v13 = a1;
  if (CFStringGetCharacterAtIndex(a1, 0) != 47 && CFStringFind(v13, @"..", 0).location == -1)
  {
    goto LABEL_84;
  }

  v68 = a6;
  if (CFStringHasSuffix(v13, @".plist"))
  {
    CFRetain(v13);
  }

  else
  {
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@.plist", v13);
  }

  v69 = a2;
  v70 = a4;
  if (CFStringFind(v13, @"/containers/Shared/SystemGroup/", 0).location == -1 || (v14 = CFStringFind(v13, @"/Library/Preferences/", 4uLL), v14.location == -1))
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
  }

  else
  {
    v77.length = CFStringGetLength(v13) - (v14.location + v14.length);
    v77.location = v14.location + v14.length;
    v15 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v13, v77);
    v78.length = v14.location + 1;
    v78.location = 0;
    v16 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v13, v78);
    v17 = @"kCFPreferencesAnyUser";
  }

  location = CFStringFind(v13, @"/Containers/Shared/AppGroup/", 0).location;
  if (location >= 1)
  {
    v19 = location;
    v20 = CFStringFind(v13, @"/Library/Preferences/", 4uLL);
    if (v20.location != -1)
    {
      v21 = a3;
      v22 = a5;
      v23 = CFStringGetLength(v13) - (v20.location + v20.length);
      if (v15)
      {
        CFRelease(v15);
      }

      v79.location = v20.location + v20.length;
      v79.length = v23;
      v15 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v13, v79);
      if (v16)
      {
        CFRelease(v16);
      }

      v80.length = v20.location + 1;
      v80.location = 0;
      v16 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v13, v80);
      result.length = 0;
      result.location = 0;
      v81.location = 0;
      v81.length = v19;
      if (!CFStringFindWithOptions(v13, @"/", v81, 4uLL, &result))
      {
        _CFPrefsExtractQuadrupleFromPathIfPossible_cold_1();
      }

      a5 = v22;
      v82.location = result.location + 1;
      v82.length = v19 - (result.location + 1);
      v17 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v13, v82);
      a3 = v21;
    }
  }

  if (v15)
  {
    CFRelease(v13);
    v24 = 0;
    goto LABEL_43;
  }

  MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v13);
  CFRelease(v13);
  v26 = CFStringFind(MutableCopy, @"/private/var/preferences/", 8uLL);
  if (v26.location == -1)
  {
    v30 = CFStringFind(MutableCopy, @"/private/var/", 8uLL);
    if (v30.location == -1)
    {
      goto LABEL_26;
    }

    v27 = v30.location;
    v28.length = v30.length;
    v29 = @"/var/";
  }

  else
  {
    v27 = v26.location;
    v28.length = v26.length;
    v29 = @"/Library/Preferences/";
  }

  v28.location = v27;
  CFStringReplace(MutableCopy, v28, v29);
LABEL_26:
  v33 = CFStringFind(MutableCopy, @"/Containers/Data/Application/", 0);
  length = v33.length;
  v31 = v33.location;
  if (v33.location == -1)
  {
    v34 = CFStringFind(MutableCopy, @"/Applications/", 0);
    length = v34.length;
    v31 = v34.location;
    result.length = 0;
    result.location = 0;
    if (v34.location == -1)
    {
      goto LABEL_33;
    }
  }

  else
  {
    result.length = 0;
    result.location = 0;
  }

  v35 = v31 + length + 1;
  v83.length = CFStringGetLength(MutableCopy) - v35;
  v83.location = v35;
  if (CFStringFindWithOptions(MutableCopy, @"/", v83, 0, &result))
  {
    if (v16)
    {
      CFRelease(v16);
    }

    v84.length = result.location;
    v84.location = 0;
    v16 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, MutableCopy, v84);
    v36 = result.location;
    v37 = CFStringGetLength(MutableCopy);
    v85.length = v37 - result.location;
    v85.location = v36;
    v38 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, MutableCopy, v85);
    CFRelease(MutableCopy);
    MutableCopy = v38;
  }

LABEL_33:
  v40 = CFStringFind(MutableCopy, @"/var/Managed Preferences/", 8uLL);
  v39 = v40.length;
  if (v40.location != -1 || (v41 = CFStringFind(MutableCopy, @"/Library/Managed Preferences/", 8uLL), v39 = v41.length, v41.location != -1))
  {
    v42 = v39;
    *v68 = 1;
    v86.length = CFStringGetLength(MutableCopy) - v39;
    v86.location = v42;
    v43 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, MutableCopy, v86);
    CFRelease(MutableCopy);
    v44 = CFStringFind(v43, @"/", 0).location;
    if (v44 == -1)
    {
      v15 = CFRetain(v43);
      if (v17)
      {
        CFRelease(v17);
      }

      v24 = 0;
      v17 = @"kCFPreferencesAnyUser";
    }

    else
    {
      v45 = v44;
      if (v17)
      {
        CFRelease(v17);
      }

      v87.location = 0;
      v87.length = v45;
      v17 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v43, v87);
      v46 = v45 + 1;
      v88.length = CFStringGetLength(v43) - v46;
      v88.location = v46;
      v15 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v43, v88);
      v24 = 1;
    }

    goto LABEL_42;
  }

  v67 = a5;
  *v68 = 0;
  v61 = _CFGetCachedUnsandboxedHomeDirectoryForCurrentUser();
  v62 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, v61);
  v63 = CFStringFind(MutableCopy, @"/Library/Preferences/", 0);
  if (v63.location == -1)
  {
    v24 = 0;
    goto LABEL_102;
  }

  if (!v63.location)
  {
    if (v17)
    {
      CFRelease(v17);
    }

    v24 = 0;
    v64 = &kCFPreferencesCurrentUser;
    if (!v16)
    {
      v64 = &kCFPreferencesAnyUser;
    }

    v17 = *v64;
LABEL_102:
    if (!v62)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

  if (CFStringHasPrefix(MutableCopy, @"/var/db/"))
  {
    if (v17)
    {
      CFRelease(v17);
    }

    v66.length = v63.location - 8;
    v65 = MutableCopy;
    v66.location = 8;
LABEL_101:
    v17 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v65, v66);
    v24 = 1;
    goto LABEL_102;
  }

  if (CFStringHasPrefix(MutableCopy, @"/var/"))
  {
    if (v17)
    {
      CFRelease(v17);
    }

    v66.length = v63.location - 5;
    v65 = MutableCopy;
    v66.location = 5;
    goto LABEL_101;
  }

  if (v62)
  {
    if (CFStringHasPrefix(MutableCopy, v62))
    {
      if (v17)
      {
        CFRelease(v17);
      }

      v24 = 0;
      v17 = @"kCFPreferencesCurrentUser";
    }

    else
    {
      v24 = 0;
    }

LABEL_103:
    CFRelease(v62);
    goto LABEL_104;
  }

  v24 = 0;
LABEL_104:
  if (v63.location == -1 || !v17)
  {
    CFRelease(MutableCopy);
    goto LABEL_108;
  }

  v90.length = CFStringGetLength(MutableCopy) - (v63.location + v63.length);
  v90.location = v63.location + v63.length;
  v15 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, MutableCopy, v90);
  v43 = MutableCopy;
  a5 = v67;
LABEL_42:
  CFRelease(v43);
  if (v15)
  {
LABEL_43:
    if (CFStringHasSuffix(v15, @".plist"))
    {
      v89.length = CFStringGetLength(v15) - 6;
      v89.location = 0;
      v47 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v15, v89);
      CFRelease(v15);
      v15 = v47;
    }

    *v69 = v15;
    v48 = @"kCFPreferencesNoContainer";
    if (v16)
    {
      v48 = v16;
    }

    *v70 = v48;
    bzero(&result, 0x400uLL);
    v74 = 0u;
    v73 = 0u;
    if (!_CFPrefsGetImpersonatedApplicationAuditToken(&v73))
    {
      if (_CFAuditTokenForSelf_onceToken != -1)
      {
        _CFPrefsExtractQuadrupleFromPathIfPossible_cold_2();
      }

      v73 = _CFAuditTokenForSelf_auditToken;
      v74 = unk_1ED40B8E0;
    }

    *buffer = v73;
    v72 = v74;
    v49 = sandbox_container_path_for_audit_token();
    v50 = CFEqual(*v70, @"kCFPreferencesNoContainer");
    if (v49)
    {
      if (v50)
      {
        *v70 = 0;
        goto LABEL_64;
      }
    }

    else if (v50)
    {
      bzero(buffer, 0x400uLL);
      if (CFStringGetCString(*v69, buffer, 1024, 0x8000100u))
      {
        v51 = (*MEMORY[0x1E69E9BD0] | *MEMORY[0x1E69E9BB8]);
        if (!sandbox_check_by_audit_token() || !sandbox_check_by_audit_token())
        {
          *v70 = 0;
        }
      }
    }

    else
    {
      SystemEncoding = CFStringGetSystemEncoding();
      v53 = CFStringCreateWithCStringNoCopy(&__kCFAllocatorSystemDefault, &result, SystemEncoding, &__kCFAllocatorNull);
      if (CFEqual(*v70, v53))
      {
        CFRelease(*v70);
        *v70 = 0;
      }

      CFRelease(v53);
    }

    if (*v70)
    {
      v54 = _CFPrefsCopyUserForContainer(v17, *v70);
      CFRelease(v17);
      v17 = v54;
    }

LABEL_64:
    if (CFEqual(v17, @"wireless"))
    {
      CFRelease(v17);
      v17 = @"_wireless";
    }

    if (!eduModeEnabled())
    {
      goto LABEL_82;
    }

    v55 = _CFPrefsCopyUsernameForMobileUser();
    v56 = a3;
    if (CFEqual(v17, v55))
    {
      CFRelease(v17);
      if (CFEqual(@"mobile", @"kCFPreferencesCurrentUser"))
      {
        v17 = @"kCFPreferencesCurrentUser";
LABEL_81:
        CFRelease(v55);
        a3 = v56;
LABEL_82:
        *a3 = v17;
        if (CFEqual(v17, @"kCFPreferencesAnyUser"))
        {
          *a5 = 1;
        }

        goto LABEL_84;
      }

      v17 = @"kCFPreferencesAnyUser";
      if (CFEqual(@"mobile", @"kCFPreferencesAnyUser"))
      {
        goto LABEL_81;
      }

      v58 = CFCopyUserName();
      v59 = CFEqual(@"mobile", v58);
      CFRelease(v58);
      if (@"kCFPreferencesCurrentUser")
      {
        v17 = @"kCFPreferencesCurrentUser";
        if (v59)
        {
          goto LABEL_81;
        }
      }

      Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, @"mobile");
    }

    else
    {
      if (!v24)
      {
        goto LABEL_81;
      }

      if (_CFPrefsExtractQuadrupleFromPathIfPossible_onceToken != -1)
      {
        _CFPrefsExtractQuadrupleFromPathIfPossible_cold_3();
      }

      if (!_CFPrefsExtractQuadrupleFromPathIfPossible_mobileHome || CFStringFind(_CFPrefsExtractQuadrupleFromPathIfPossible_mobileHome, v17, 0).location == -1)
      {
        goto LABEL_81;
      }

      CFRelease(v17);
      Copy = _CFPrefsCopyUserConstantForUserName(@"mobile");
    }

    v17 = Copy;
    goto LABEL_81;
  }

LABEL_108:
  *a7 = 1;
  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

LABEL_84:
  v60 = *MEMORY[0x1E69E9840];
}

void *CFCopyUserName()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  __CFGetUGIDs(&v5, 0);
  v0 = v5;
  if (!v5)
  {
    v0 = getuid();
  }

  v1 = getpwuid(v0);
  if ((!v1 || (pw_name = v1->pw_name) == 0) && (pw_name = __CFgetenv("USER")) == 0 || (result = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, pw_name, 0x8000100u)) == 0)
  {
    result = CFRetain(&stru_1EF068AA8);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned int *__CFXNotificationDisposalListAddItem(unsigned int *result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  v5 = (v4 - 3);
  if (v4 > 3)
  {
    v7 = result[1];
    result = *(result + 5);
    if (v7 < v5)
    {
      if (result)
      {
        result = malloc_type_realloc(result, (v4 - 3), 0xAF5EAF74uLL);
      }

      else
      {
        result = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
      }

      *(v3 + 5) = result;
      v3[1] = v5;
      LODWORD(v4) = *v3;
    }

    v6 = &result[2 * (v4 - 4)];
  }

  else
  {
    v6 = &result[2 * v4 + 2];
  }

  *v6 = a2;
  *v3 = v4 + 1;
  return result;
}

__CFString *_CFPrefsCreateCacheKeyForQuintuplet(__CFString *a1, const __CFString *a2, int a3, __CFString *a4, char a5)
{
  v48[1] = *MEMORY[0x1E69E9840];
  CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(a1);
  v10 = _CFPrefsGetCacheStringForBundleID(@"kCFPreferencesCurrentApplication");
  if (CFEqual(CacheStringForBundleID, v10))
  {
    CacheStringForBundleID = @"C";
  }

  else if (CFEqual(CacheStringForBundleID, @"kCFPreferencesAnyApplication"))
  {
    CacheStringForBundleID = @"A";
  }

  if (CFEqual(a2, @"kCFPreferencesCurrentUser"))
  {
    Copy = @"kCFPreferencesCurrentUser";
    goto LABEL_7;
  }

  v16 = CFEqual(a2, @"kCFPreferencesAnyUser");
  Copy = @"kCFPreferencesAnyUser";
  if (!v16)
  {
    v17 = CFCopyUserName();
    v18 = CFEqual(a2, v17);
    CFRelease(v17);
    if (@"kCFPreferencesCurrentUser")
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v12 = @"C";
      Copy = @"kCFPreferencesCurrentUser";
LABEL_8:
      CFRelease(Copy);
      goto LABEL_9;
    }

    Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, a2);
  }

  if (Copy == @"kCFPreferencesCurrentUser")
  {
LABEL_7:
    v12 = @"C";
    if (!Copy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (Copy == @"kCFPreferencesAnyUser")
  {
    v12 = @"A";
    if (@"kCFPreferencesAnyUser")
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = Copy;
    if (!Copy)
    {
      v20 = 0;
      goto LABEL_55;
    }
  }

LABEL_9:
  if ((a5 & 1) == 0)
  {
    if (!a4 || CFEqual(a4, @"kCFPreferencesNoContainer"))
    {
      if (CFEqual(CacheStringForBundleID, @"C"))
      {
        if (v12 != @"kCFPreferencesCurrentUser")
        {
        v43 = @"C/C//B/L";
        goto LABEL_51;
      }

      if (CFEqual(CacheStringForBundleID, @"kCFPreferencesAnyApplication"))
      {
        if (v12 != @"kCFPreferencesCurrentUser")
        {
        v43 = @"A/C//B/L";
LABEL_51:
        if (a3)
        {
          v20 = v43;
        }

        else
        {
          v20 = v42;
        }

        goto LABEL_54;
      }
    }

LABEL_34:
    v13 = "L";
    goto LABEL_35;
  }

  v13 = "C";
LABEL_35:
  v47 = v13;
  if (!a4)
  {
    a4 = &stru_1EF068AA8;
  }

  if (a3)
  {
    v21 = "B";
  }

  else
  {
    v21 = "*";
  }

  Length = CFStringGetLength(CacheStringForBundleID);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v24 = CFStringGetLength(v12);
  v25 = CFStringGetMaximumSizeForEncoding(v24, 0x8000100u);
  v26 = CFStringGetLength(a4);
  v27 = CFStringGetMaximumSizeForEncoding(v26, 0x8000100u);
  v46 = &v46;
  v28 = MaximumSizeForEncoding + v25 + v27;
  v29 = v28 + 2;
  v30 = v28 + 7;
  MEMORY[0x1EEE9AC00](v27, v31);
  v33 = &v46 - v32;
  if (v29 < 1019)
  {
    bzero(&v46 - v32, v30);
  }

  else
  {
    v33 = malloc_type_calloc(v30, 1uLL, 0x100004077774924uLL);
  }

  v48[0] = 0;
  v49.length = CFStringGetLength(CacheStringForBundleID);
  v49.location = 0;
  CFStringGetBytes(CacheStringForBundleID, v49, 0x8000100u, 0, 0, v33, v30, v48);
  v34 = v30 + ~v48[0];
  v35 = (strncat(&v33[v48[0]], "/", v34) + 1);
  v50.length = CFStringGetLength(v12);
  v50.location = 0;
  CFStringGetBytes(v12, v50, 0x8000100u, 0, 0, v35, v34, v48);
  v36 = v34 - v48[0];
  v37 = v34 - v48[0] - 1;
  v38 = (strncat(&v35[v48[0]], "/", v37) + 1);
  v51.length = CFStringGetLength(a4);
  v51.location = 0;
  CFStringGetBytes(a4, v51, 0x8000100u, 0, 0, v38, v37, v48);
  v39 = &v38[v48[0]];
  strncat(&v38[v48[0]], "/", v36 - 2);
  strncat(v39 + 1, v21, v36 - 3);
  strncat(v39 + 2, "/", v36 - 4);
  strncat(v39 + 3, v47, v36 - 5);
  v40 = strlen(v33);
  if (v29 < 1019)
  {
    v41 = CFStringCreateWithBytes(&__kCFAllocatorSystemDefault, v33, v40, 0x8000100u, 0);
  }

  else
  {
    v41 = CFStringCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, v33, v40, 0x8000100u, 0, &__kCFAllocatorMalloc);
  }

  v20 = v41;
  CFRelease(v12);
LABEL_55:
  v44 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t _CFTryRetain(uint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      return _CFRetain(result, 1);
    }
  }

  return result;
}

CFTypeRef _copyValueForKey(uint64_t a1, void *key)
{
  v22 = *MEMORY[0x1E69E9840];
  if (byte_1EA84A4F1)
  {
    [a1 alreadylocked_clearCache];
  }

  *v19 = MEMORY[0x1E69E9820];
  *&v19[8] = 3221225472;
  *&v19[16] = __alreadylocked_requestNewDataIfStale_block_invoke;
  v20 = &unk_1E6D81EC0;
  v21 = a1;
  v4 = atomic_load((a1 + 105));
  if ((v4 & 1) == 0)
  {
    v5 = atomic_load((a1 + 40));
    if (!v5 || (v6 = atomic_load(v5), v7 = atomic_load(&sentinelGeneration), v6 != v7) && (v8 = atomic_load((a1 + 48)), v6 != v8))
    {
      os_unfair_lock_assert_owner((a1 + 52));
      (*&v19[16])(v19);
    }
  }

  if (atomic_load((a1 + 88)))
  {
    os_unfair_lock_lock(&locallySetDictLock);
    v10 = atomic_load((a1 + 88));
    Value = CFDictionaryGetValue(v10, key);
    os_unfair_lock_unlock(&locallySetDictLock);
    if (Value == @"MagicRemovedValue")
    {
      goto LABEL_13;
    }

    if (Value)
    {
      goto LABEL_14;
    }
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    Value = CFDictionaryGetValue(v12, key);
    goto LABEL_14;
  }

LABEL_13:
  Value = 0;
LABEL_14:
  v13 = _CFPrefsClientLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [a1 copyOSLogDescription];
    if (Value)
    {
      _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
      v15 = _CFPrefsClientLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *v19 = 138478339;
        *&v19[4] = Value;
        *&v19[12] = 2114;
        *&v19[14] = key;
        *&v19[22] = 2114;
        v20 = v14;
        _os_log_debug_impl(&dword_1830E6000, v15, OS_LOG_TYPE_DEBUG, "looked up value %{private}@ for key %{public}@ in %{public}@", v19, 0x20u);
      }
    }

    else
    {
      _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
      v16 = _CFPrefsClientLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        _copyValueForKey_cold_1();
      }
    }

    _CFSetTSD(0xFu, 0, 0);
    CFRelease(v14);
  }

  if (Value)
  {
    result = CFRetain(Value);
  }

  else
  {
    result = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

xpc_object_t _CFXPCCreateXPCMessageWithCFObject(uint64_t a1)
{
  address[1] = *MEMORY[0x1E69E9840];
  v2 = __CFBinaryPlistWrite15(a1, 0);
  if (!v2)
  {
    goto LABEL_4;
  }

  if (v2 <= 0x4000)
  {
    address[0] = 0;
    alloc = dispatch_data_create_alloc();
    __CFBinaryPlistWrite15(a1, 0);
LABEL_7:
    address[0] = xpc_data_create_with_dispatch_data(alloc);
    dispatch_release(alloc);
    keys = "ECF19A18-7AA6-4141-B4DC-A2E5123B2B5C";
    v5 = xpc_dictionary_create(&keys, address, 1uLL);
    xpc_release(address[0]);
    goto LABEL_8;
  }

  address[0] = 0;
  v3 = v2 + *MEMORY[0x1E69E9AC8] - 1;
  v4 = -*MEMORY[0x1E69E9AC8];
  if (!mach_vm_allocate(*MEMORY[0x1E69E9A60], address, v3 & v4, 687865857))
  {
    __CFBinaryPlistWrite15(a1, 0);
    alloc = dispatch_data_create(address[0], v3 & v4, 0, *MEMORY[0x1E69E9660]);
    goto LABEL_7;
  }

LABEL_4:
  v5 = 0;
LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __CFBinaryPlistWrite15(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v2;
  *&__len_4[8148] = *MEMORY[0x1E69E9840];
  bzero(&__len, 0x1FD8uLL);
  v16[0] = v10;
  v16[1] = v8;
  cf = 0;
  v18 = 0;
  v16[2] = v6;
  __len = 0;
  bufferWrite_0(v16, "bplist15", 8);
  bufferWrite_0(v16, byte_183449F20, 9);
  bufferWrite_0(v16, byte_183449F2A, 5);
  v12 = __writeObject15(v16, v11);
  writeBytes_0(v16, __len_4, __len);
  __len = 0;
  if (v10 | v8)
  {
    newBytes[0] = 19;
    *&newBytes[1] = v18 ^ 0x8000000000000000;
    if (v8)
    {
      *(v8 + 8) = *newBytes;
      *(v8 + 16) = newBytes[8];
    }

    if (v10)
    {
      v21.location = 8;
      v21.length = 9;
      CFDataReplaceBytes(v10, v21, newBytes, 9);
    }
  }

  if (v12)
  {
    result = v18;
  }

  else if (v4 && cf)
  {
    result = 0;
    *v4 = cf;
  }

  else
  {
    if (cf)
    {
      CFRelease(cf);
    }

    result = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL __writeObject15(void *a1, __CFString *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a2);
  v5 = v4;
  __src = 0;
  memset(v58, 0, 512);
  if (v4 > 21)
  {
    if (v4 > 33)
    {
      if (v4 == 34)
      {
        __src = 14;
        bufferWrite_0(a1, &__src, 1);
        v23 = CFUUIDGetTypeID();
        if (CF_IS_OBJC(v23, a2))
        {
          valuePtr[0] = 0uLL;
          [(__CFString *)a2 getUUIDBytes:valuePtr];
          v50 = valuePtr[0];
        }

        else
        {
          v50 = CFUUIDGetUUIDBytes(a2);
        }

        BytePtr = &v50;
        v31 = a1;
        v32 = 16;
        goto LABEL_74;
      }

      if (v4 == 42)
      {
        __src = 51;
        bufferWrite_0(a1, &__src, 1);
        v49 = bswap64(COERCE_UNSIGNED_INT64(CFDateGetAbsoluteTime(a2)));
        bufferWrite_0(a1, &v49, 8);
        v6 = 1;
        goto LABEL_76;
      }
    }

    else
    {
      if (v4 == 22)
      {
        if (!CFNumberIsFloatType(a2))
        {
          if (_CFNumberGetType2(a2) == 17)
          {
            v57 = 0uLL;
            CFNumberGetValue(a2, kCFNumberMaxType|kCFNumberSInt8Type, &v57);
            LOBYTE(valuePtr[0]) = 20;
            *(valuePtr + 1) = *(&v57 + 1);
            *(valuePtr + 9) = v57 ^ 0x8000000000000000;
            BytePtr = valuePtr;
            v31 = a1;
            v32 = 17;
          }

          else
          {
            *&v57 = 0;
            CFNumberGetValue(a2, kCFNumberSInt64Type, &v57);
            v34 = v57;
            if (v57 == v57)
            {
              LOBYTE(valuePtr[0]) = v57 ^ 0x80;
              LOBYTE(usedBufLen) = 16;
              bufferWrite_0(a1, &usedBufLen, 1);
              BytePtr = valuePtr;
            }

            else
            {
              if (v57 != v57)
              {
                LOBYTE(valuePtr[0]) = 19;
                *(valuePtr + 1) = v57 ^ 0x8000000000000000;
                BytePtr = valuePtr;
                v31 = a1;
                v32 = 9;
                goto LABEL_74;
              }

              LOBYTE(valuePtr[0]) = 18;
              bufferWrite_0(a1, valuePtr, 1);
              v55 = BYTE1(v34);
              LOBYTE(usedBufLen) = v34;
              v54 = BYTE2(v34);
              v53 = HIBYTE(v34) ^ 0x80;
              bufferWrite_0(a1, &usedBufLen, 1);
              bufferWrite_0(a1, &v55, 1);
              bufferWrite_0(a1, &v54, 1);
              BytePtr = &v53;
            }

            v31 = a1;
            v32 = 1;
          }

LABEL_74:
          bufferWrite_0(v31, BytePtr, v32);
          goto LABEL_75;
        }

        if (CFNumberGetByteSize(a2) > 4)
        {
          *&valuePtr[0] = 0;
          CFNumberGetValue(a2, kCFNumberFloat64Type, valuePtr);
          *&v57 = bswap64(*&valuePtr[0]);
          __src = 35;
          v6 = 1;
          bufferWrite_0(a1, &__src, 1);
          p_src = &v57;
          v13 = a1;
          v14 = 8;
        }

        else
        {
          LODWORD(valuePtr[0]) = 0;
          CFNumberGetValue(a2, kCFNumberFloat32Type, valuePtr);
          LODWORD(v57) = bswap32(valuePtr[0]);
          __src = 34;
          v6 = 1;
          bufferWrite_0(a1, &__src, 1);
          p_src = &v57;
          v13 = a1;
          v14 = 4;
        }

LABEL_58:
        bufferWrite_0(v13, p_src, v14);
        goto LABEL_76;
      }

      if (v4 == 29)
      {
        v7 = CFURLGetString(a2);
        if (v7)
        {
          v8 = v7;
          v9 = CFURLGetBaseURL(a2);
          if (v9)
          {
            v10 = 13;
          }

          else
          {
            v10 = 12;
          }

          __src = v10;
          bufferWrite_0(a1, &__src, 1);
          if (v9)
          {
            __writeObject15(a1, v9);
          }

          __writeObject15(a1, v8);
          goto LABEL_75;
        }

        goto LABEL_106;
      }
    }

LABEL_38:
    switch(v4)
    {
      case 18:
        Count = CFDictionaryGetCount(a2);
        if ((2 * Count) < 0x101)
        {
          Typed = v58;
        }

        else
        {
          Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 16 * Count, 0xC0040B8AA526DLL, 0);
        }

        CFDictionaryGetKeysAndValues(a2, Typed, &Typed[Count]);
        v33 = -48;
LABEL_84:
        v39 = 15;
        if (Count < 15)
        {
          v39 = Count;
        }

        __src = v33 | v39;
        bufferWrite_0(a1, &__src, 1);
        if (Count >= 15)
        {
          if (Count > 0x7F)
          {
            if (Count >> 15)
            {
              if (Count >> 31)
              {
                LOBYTE(valuePtr[0]) = 19;
                *(valuePtr + 1) = Count;
                BYTE3(valuePtr[0]) = BYTE2(Count);
                BYTE4(valuePtr[0]) = BYTE3(Count);
                BYTE5(valuePtr[0]) = BYTE4(Count);
                BYTE6(valuePtr[0]) = BYTE5(Count);
                BYTE7(valuePtr[0]) = BYTE6(Count);
                BYTE8(valuePtr[0]) = HIBYTE(Count) | 0x80;
                p_usedBufLen = valuePtr;
                v41 = a1;
                v42 = 9;
                goto LABEL_96;
              }

              LOBYTE(valuePtr[0]) = 18;
              bufferWrite_0(a1, valuePtr, 1);
              LOBYTE(usedBufLen) = BYTE1(Count);
              LOBYTE(v57) = Count;
              v55 = BYTE2(Count);
              v54 = BYTE3(Count) | 0x80;
              bufferWrite_0(a1, &v57, 1);
              bufferWrite_0(a1, &usedBufLen, 1);
              bufferWrite_0(a1, &v55, 1);
              p_usedBufLen = &v54;
            }

            else
            {
              LOBYTE(valuePtr[0]) = 17;
              bufferWrite_0(a1, valuePtr, 1);
              LOBYTE(v57) = Count;
              LOBYTE(usedBufLen) = BYTE1(Count) | 0x80;
              bufferWrite_0(a1, &v57, 1);
              p_usedBufLen = &usedBufLen;
            }
          }

          else
          {
            LOBYTE(valuePtr[0]) = Count | 0x80;
            LOBYTE(v57) = 16;
            bufferWrite_0(a1, &v57, 1);
            p_usedBufLen = valuePtr;
          }

          v41 = a1;
          v42 = 1;
LABEL_96:
          bufferWrite_0(v41, p_usedBufLen, v42);
          goto LABEL_97;
        }

        if (Count >= 1)
        {
LABEL_97:
          v43 = 0;
          if (Count << (v5 == 18) <= 1)
          {
            v44 = 1;
          }

          else
          {
            v44 = Count << (v5 == 18);
          }

          while (__writeObject15(a1, Typed[v43]))
          {
            if (v44 == ++v43)
            {
              goto LABEL_102;
            }
          }

          if (Typed != v58)
          {
            CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
          }

          break;
        }

LABEL_102:
        if (Typed != v58)
        {
          CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
        }

LABEL_75:
        v6 = 1;
        goto LABEL_76;
      case 17:
        Count = CFSetGetCount(a2);
        if (Count < 0x101)
        {
          Typed = v58;
        }

        else
        {
          Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * Count, 0xC0040B8AA526DLL, 0);
        }

        CFSetGetValues(a2, Typed);
        v33 = -64;
        goto LABEL_84;
      case 19:
        Count = CFArrayGetCount(a2);
        if (Count < 0x101)
        {
          Typed = v58;
        }

        else
        {
          Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * Count, 0xC0040B8AA526DLL, 0);
        }

        v61.location = 0;
        v61.length = Count;
        CFArrayGetValues(a2, v61, Typed);
        v33 = -96;
        goto LABEL_84;
    }

LABEL_106:
    v6 = 0;
    goto LABEL_76;
  }

  if (v4 > 19)
  {
    if (v4 != 20)
    {
      if (CFBooleanGetValue(a2))
      {
        v11 = 9;
      }

      else
      {
        v11 = 8;
      }

      __src = v11;
      v6 = 1;
      p_src = &__src;
      v13 = a1;
      v14 = 1;
      goto LABEL_58;
    }

    Length = CFDataGetLength(a2);
    v20 = Length;
    v21 = 15;
    if (Length < 15)
    {
      v21 = Length;
    }

    __src = v21 | 0x40;
    bufferWrite_0(a1, &__src, 1);
    if (v20 < 15)
    {
LABEL_73:
      BytePtr = CFDataGetBytePtr(a2);
      v31 = a1;
      v32 = v20;
      goto LABEL_74;
    }

    if (v20 > 0x7F)
    {
      if (v20 >> 15)
      {
        if (v20 >> 31)
        {
          LOBYTE(valuePtr[0]) = 19;
          *(valuePtr + 1) = v20;
          BYTE3(valuePtr[0]) = BYTE2(v20);
          BYTE4(valuePtr[0]) = BYTE3(v20);
          BYTE5(valuePtr[0]) = BYTE4(v20);
          BYTE6(valuePtr[0]) = BYTE5(v20);
          BYTE7(valuePtr[0]) = BYTE6(v20);
          BYTE8(valuePtr[0]) = HIBYTE(v20) | 0x80;
          v22 = valuePtr;
          v35 = a1;
          v36 = 9;
          goto LABEL_72;
        }

        LOBYTE(valuePtr[0]) = 18;
        bufferWrite_0(a1, valuePtr, 1);
        LOBYTE(usedBufLen) = BYTE1(v20);
        LOBYTE(v57) = v20;
        v55 = BYTE2(v20);
        v54 = BYTE3(v20) | 0x80;
        bufferWrite_0(a1, &v57, 1);
        bufferWrite_0(a1, &usedBufLen, 1);
        bufferWrite_0(a1, &v55, 1);
        v22 = &v54;
      }

      else
      {
        LOBYTE(valuePtr[0]) = 17;
        bufferWrite_0(a1, valuePtr, 1);
        LOBYTE(v57) = v20;
        LOBYTE(usedBufLen) = BYTE1(v20) | 0x80;
        bufferWrite_0(a1, &v57, 1);
        v22 = &usedBufLen;
      }
    }

    else
    {
      LOBYTE(valuePtr[0]) = v20 | 0x80;
      LOBYTE(v57) = 16;
      bufferWrite_0(a1, &v57, 1);
      v22 = valuePtr;
    }

    v35 = a1;
    v36 = 1;
LABEL_72:
    bufferWrite_0(v35, v22, v36);
    goto LABEL_73;
  }

  if (v4 != 7)
  {
    if (v4 == 16)
    {
      __src = 0;
      v6 = 1;
      bufferWrite_0(a1, &__src, 1);
      goto LABEL_76;
    }

    goto LABEL_38;
  }

  v15 = CFStringGetLength(a2);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v15, 0x8000100u);
  v17 = MaximumSizeForEncoding;
  if (!*a1 && !a1[1])
  {
    v32 = MaximumSizeForEncoding + 10;
    v31 = a1;
    BytePtr = 0;
    goto LABEL_74;
  }

  if (MaximumSizeForEncoding <= 1024)
  {
    usedBufLen = 0;
    v18 = valuePtr;
LABEL_46:
    v60.location = 0;
    v60.length = v15;
    Bytes = CFStringGetBytes(a2, v60, 0x8000100u, 0, 0, v18, v17, &usedBufLen);
    goto LABEL_47;
  }

  v18 = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, MaximumSizeForEncoding, 0x100004077774924, 0);
  usedBufLen = 0;
  if (v18)
  {
    goto LABEL_46;
  }

  Bytes = 0;
LABEL_47:
  if (Bytes == v15)
  {
    v27 = usedBufLen;
    if (usedBufLen >= 15)
    {
      v27 = 15;
    }

    v47 = v27 | 0x70;
    bufferWrite_0(a1, &v47, 1);
    v28 = usedBufLen;
    if (usedBufLen < 15)
    {
      goto LABEL_112;
    }

    if (usedBufLen > 0x7F)
    {
      if (usedBufLen >> 15)
      {
        if (usedBufLen >> 31)
        {
          LOBYTE(v57) = 19;
          *(&v57 + 1) = usedBufLen | 0x8000000000000000;
          v29 = &v57;
          v45 = a1;
          v46 = 9;
          goto LABEL_111;
        }

        LOBYTE(v57) = 18;
        bufferWrite_0(a1, &v57, 1);
        v54 = BYTE1(v28);
        v55 = v28;
        v53 = BYTE2(v28);
        v52 = HIBYTE(v28) | 0x80;
        bufferWrite_0(a1, &v55, 1);
        bufferWrite_0(a1, &v54, 1);
        bufferWrite_0(a1, &v53, 1);
        v29 = &v52;
      }

      else
      {
        LOBYTE(v57) = 17;
        bufferWrite_0(a1, &v57, 1);
        v55 = v28;
        v54 = BYTE1(v28) | 0x80;
        bufferWrite_0(a1, &v55, 1);
        v29 = &v54;
      }
    }

    else
    {
      LOBYTE(v57) = usedBufLen | 0x80;
      v55 = 16;
      bufferWrite_0(a1, &v55, 1);
      v29 = &v57;
    }

    v45 = a1;
    v46 = 1;
LABEL_111:
    bufferWrite_0(v45, v29, v46);
LABEL_112:
    bufferWrite_0(a1, v18, usedBufLen);
  }

  if (v18 != valuePtr)
  {
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v18);
  }

  v6 = Bytes == v15;
LABEL_76:
  v37 = *MEMORY[0x1E69E9840];
  return v6;
}

CFDateRef __readObject15(uint64_t a1, uint64_t a2, const void **a3)
{
  v139 = *MEMORY[0x1E69E9840];
  v3 = a1 + a2;
  v4 = a1 + a2 - 1;
  v5 = *a3;
  if (*a3 < a1 + 22 || v4 < v5)
  {
    goto LABEL_235;
  }

  v9 = v5 + 1;
  v10 = *v5;
  *a3 = (v5 + 1);
  if (v5 == -1)
  {
    goto LABEL_235;
  }

  v12 = 0;
  v13 = v10 >> 4;
  if (v10 >> 4 > 5)
  {
    if (v13 - 10 >= 4)
    {
      if (v13 == 6)
      {
        v56 = v10 & 0xF;
        if (v56 == 15)
        {
          if (v4 < v9)
          {
            goto LABEL_235;
          }

          v57 = (v5 + 2);
          if ((*v9 & 0xF0) != 0x10)
          {
            goto LABEL_235;
          }

          v12 = 0;
          v58 = 1 << (*v9 & 0xF);
          if (__CFADD__(v58, v57) || v3 < v57 + v58)
          {
            goto LABEL_236;
          }

          v12 = 0;
          if (v58 > 3)
          {
            if (v58 == 4)
            {
              v56 = *v57 ^ 0xFFFFFFFF80000000;
            }

            else
            {
              if (v58 != 8)
              {
                goto LABEL_236;
              }

              v56 = *(v9 + 1) ^ 0x8000000000000000;
            }
          }

          else if (v58 == 1)
          {
            if (*v57 >= 0)
            {
              v56 = *v57 | 0xFFFFFFFFFFFFFF80;
            }

            else
            {
              v56 = *v57 & 0x7F;
            }
          }

          else
          {
            if (v58 != 2)
            {
              goto LABEL_236;
            }

            v59 = *(v9 + 2) << 8;
            v60 = v59;
            v61 = v59 | *(v9 + 1);
            v62 = *&v61 | 0xFFFFFFFFFFFF8000;
            v63 = v61 & 0x7FFF;
            if (v60 >= 0)
            {
              v56 = v62;
            }

            else
            {
              v56 = v63;
            }
          }

          v9 = v57 + v58;
          *a3 = v57 + v58;
        }

        v98 = v56 + v9 - 1;
        if (v98 > ~v56)
        {
          goto LABEL_235;
        }

        v99 = v98 + v56;
        if (v9 > ~v56 || v4 < v99)
        {
          goto LABEL_235;
        }

        if (v56)
        {
          if (v56 < 0)
          {
            goto LABEL_235;
          }

          v101 = 2 * v56;
        }

        else
        {
          v101 = 0;
        }

        Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, v101, 0x1000040BDFB0063, 0);
        if (Typed)
        {
          v103 = Typed;
          memmove(Typed, *a3, v101);
          if (v56)
          {
            v104 = v103;
            v105 = v56;
            do
            {
              *v104 = bswap32(*v104) >> 16;
              ++v104;
              --v105;
            }

            while (v105);
          }

          v12 = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v103, v56);
          CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v103);
          *a3 = (v99 + 1);
          goto LABEL_236;
        }

        goto LABEL_235;
      }

      if (v13 != 7)
      {
        goto LABEL_236;
      }

      v25 = v10 & 0xF;
      if (v25 == 15)
      {
        if (v4 < v9)
        {
          goto LABEL_235;
        }

        v33 = (v5 + 2);
        if ((*v9 & 0xF0) != 0x10)
        {
          goto LABEL_235;
        }

        v12 = 0;
        v34 = 1 << (*v9 & 0xF);
        if (__CFADD__(v34, v33) || v3 < v33 + v34)
        {
          goto LABEL_236;
        }

        v12 = 0;
        if (v34 > 3)
        {
          if (v34 == 4)
          {
            v25 = *v33 ^ 0xFFFFFFFF80000000;
          }

          else
          {
            if (v34 != 8)
            {
              goto LABEL_236;
            }

            v25 = *(v5 + 2) ^ 0x8000000000000000;
          }
        }

        else if (v34 == 1)
        {
          if (*v33 >= 0)
          {
            v25 = *v33 | 0xFFFFFFFFFFFFFF80;
          }

          else
          {
            v25 = *v33 & 0x7F;
          }
        }

        else
        {
          if (v34 != 2)
          {
            goto LABEL_236;
          }

          v35 = *(v5 + 3) << 8;
          v36 = v35;
          v37 = v35 | *(v5 + 2);
          v38 = *&v37 | 0xFFFFFFFFFFFF8000;
          v39 = v37 & 0x7FFF;
          if (v36 >= 0)
          {
            v25 = v38;
          }

          else
          {
            v25 = v39;
          }
        }

        v9 = v33 + v34;
        *a3 = v33 + v34;
      }

      if (!__CFADD__(v25, v9))
      {
        v95 = (v25 + v9);
        if (v3 >= v25 + v9)
        {
          v96 = 134217984;
          goto LABEL_213;
        }
      }

LABEL_235:
      v12 = 0;
      goto LABEL_236;
    }

    v17 = v10 & 0xF;
    if (v17 == 15)
    {
      if (v4 < v9)
      {
        goto LABEL_235;
      }

      v18 = (v5 + 2);
      if ((*v9 & 0xF0) != 0x10)
      {
        goto LABEL_235;
      }

      v12 = 0;
      v19 = 1 << (*v9 & 0xF);
      if (__CFADD__(v19, v18) || v3 < v18 + v19)
      {
        goto LABEL_236;
      }

      v12 = 0;
      if (v19 > 3)
      {
        if (v19 == 4)
        {
          v17 = *v18 ^ 0xFFFFFFFF80000000;
        }

        else
        {
          if (v19 != 8)
          {
            goto LABEL_236;
          }

          v17 = *(v9 + 1) ^ 0x8000000000000000;
        }
      }

      else if (v19 == 1)
      {
        if (*v18 >= 0)
        {
          v17 = *v18 | 0xFFFFFFFFFFFFFF80;
        }

        else
        {
          v17 = *v18 & 0x7F;
        }
      }

      else
      {
        if (v19 != 2)
        {
          goto LABEL_236;
        }

        v20 = *(v9 + 2) << 8;
        v21 = v20;
        v22 = v20 | *(v9 + 1);
        v23 = *&v22 | 0xFFFFFFFFFFFF8000;
        v24 = v22 & 0x7FFF;
        if (v21 >= 0)
        {
          v17 = v23;
        }

        else
        {
          v17 = v24;
        }
      }

      *a3 = v18 + v19;
    }

    v83 = v10 & 0xF0;
    if (v83 == 208)
    {
      if (v17)
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_235;
        }

        v17 *= 2;
        goto LABEL_143;
      }
    }

    else if (v17)
    {
LABEL_143:
      if (v17 >> 61)
      {
        goto LABEL_235;
      }

      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      *values = 0u;
      v108 = 0u;
      if (v17 >= 0x101)
      {
        v84 = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * v17, 0xC0040B8AA526DLL, 0);
        if (!v84)
        {
          goto LABEL_235;
        }
      }

      else
      {
        v84 = values;
      }

      Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
      v88 = 0;
      while (1)
      {
        Object15 = __readObject15(a1, a2, a3);
        v12 = Object15;
        if (!Object15)
        {
          v77 = Mutable;
          goto LABEL_169;
        }

        if (v83 == 208 && v88 < v17 >> 1 && CFGetTypeID(Object15) - 17 <= 2)
        {
          break;
        }

        CFArrayAppendValue(Mutable, v12);
        if (v17 == ++v88)
        {
          goto LABEL_147;
        }
      }

      CFRelease(v12);
      v82 = Mutable;
      goto LABEL_188;
    }

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    *values = 0u;
    v108 = 0u;
    Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
    v17 = 0;
    v84 = values;
LABEL_147:
    v141.location = 0;
    v141.length = v17;
    CFArrayGetValues(Mutable, v141, v84);
    switch(v83)
    {
      case 160:
        v86 = "newArrayWithObjects:count:";
        v87 = "NSArray";
        break;
      case 192:
        v86 = "newSetWithObjects:count:";
        v87 = "NSSet";
        break;
      case 176:
        v86 = "newOrderedSetWithObjects:count:";
        v87 = "NSOrderedSet";
        break;
      default:
        v91 = __CFLookUpClass("NSDictionary");
        v92 = v17 >> 1;
        v12 = [v91 registerName("newDictionaryWithObjects:&v84[v17 >> 1] forKeys:v84 count:v17 >> 1")];
        if (v17 >= 2)
        {
          v93 = v84;
          do
          {
            v94 = *v93++;
            CFRelease(v94);
            --v92;
          }

          while (v92);
        }

        goto LABEL_162;
    }

    v90 = __CFLookUpClass(v87);
    v12 = [v90 registerName(v86)];
LABEL_162:
    CFRelease(Mutable);
    if (v84 != values)
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v84);
    }

    goto LABEL_236;
  }

  if (v10 >> 4 > 2)
  {
    switch(v13)
    {
      case 3u:
        v12 = 0;
        if (v5 > 0xFFFFFFFFFFFFFFF6 || v10 != 51)
        {
          goto LABEL_236;
        }

        if (v3 < v5 + 9)
        {
          goto LABEL_235;
        }

        v41 = *v9;
        *a3 = (v5 + 9);
        v42 = *MEMORY[0x1E69E9840];
        v43 = COERCE_DOUBLE(bswap64(v41));

        return CFDateCreate(&__kCFAllocatorSystemDefault, v43);
      case 4u:
        v48 = v10 & 0xF;
        if (v48 == 15)
        {
          if (v4 < v9)
          {
            goto LABEL_235;
          }

          v49 = (v5 + 2);
          if ((*v9 & 0xF0) != 0x10)
          {
            goto LABEL_235;
          }

          v12 = 0;
          v50 = 1 << (*v9 & 0xF);
          if (__CFADD__(v50, v49) || v3 < v49 + v50)
          {
            goto LABEL_236;
          }

          v12 = 0;
          if (v50 > 3)
          {
            if (v50 == 4)
            {
              v48 = *v49 ^ 0xFFFFFFFF80000000;
            }

            else
            {
              if (v50 != 8)
              {
                goto LABEL_236;
              }

              v48 = *(v5 + 2) ^ 0x8000000000000000;
            }
          }

          else if (v50 == 1)
          {
            if (*v49 >= 0)
            {
              v48 = *v49 | 0xFFFFFFFFFFFFFF80;
            }

            else
            {
              v48 = *v49 & 0x7F;
            }
          }

          else
          {
            if (v50 != 2)
            {
              goto LABEL_236;
            }

            v51 = *(v5 + 3) << 8;
            v52 = v51;
            v53 = v51 | *(v5 + 2);
            v54 = *&v53 | 0xFFFFFFFFFFFF8000;
            v55 = v53 & 0x7FFF;
            if (v52 >= 0)
            {
              v48 = v54;
            }

            else
            {
              v48 = v55;
            }
          }

          v9 = v49 + v50;
          *a3 = v49 + v50;
        }

        if (!__CFADD__(v48, v9))
        {
          v95 = (v48 + v9);
          if (v3 >= v48 + v9)
          {
            result = CFDataCreate(&__kCFAllocatorSystemDefault, v9, v48);
LABEL_214:
            *a3 = v95;
            v97 = *MEMORY[0x1E69E9840];
            return result;
          }
        }

        break;
      case 5u:
        v25 = v10 & 0xF;
        if (v25 == 15)
        {
          if (v4 < v9)
          {
            goto LABEL_235;
          }

          v26 = (v5 + 2);
          if ((*v9 & 0xF0) != 0x10)
          {
            goto LABEL_235;
          }

          v12 = 0;
          v27 = 1 << (*v9 & 0xF);
          if (__CFADD__(v27, v26) || v3 < v26 + v27)
          {
            goto LABEL_236;
          }

          v12 = 0;
          if (v27 > 3)
          {
            if (v27 == 4)
            {
              v25 = *v26 ^ 0xFFFFFFFF80000000;
            }

            else
            {
              if (v27 != 8)
              {
                goto LABEL_236;
              }

              v25 = *(v5 + 2) ^ 0x8000000000000000;
            }
          }

          else if (v27 == 1)
          {
            if (*v26 >= 0)
            {
              v25 = *v26 | 0xFFFFFFFFFFFFFF80;
            }

            else
            {
              v25 = *v26 & 0x7F;
            }
          }

          else
          {
            if (v27 != 2)
            {
              goto LABEL_236;
            }

            v28 = *(v5 + 3) << 8;
            v29 = v28;
            v30 = v28 | *(v5 + 2);
            v31 = *&v30 | 0xFFFFFFFFFFFF8000;
            v32 = v30 & 0x7FFF;
            if (v29 >= 0)
            {
              v25 = v31;
            }

            else
            {
              v25 = v32;
            }
          }

          v9 = v26 + v27;
          *a3 = v26 + v27;
        }

        if (!__CFADD__(v25, v9))
        {
          v95 = (v25 + v9);
          if (v3 >= v25 + v9)
          {
            v96 = 1536;
LABEL_213:
            result = CFStringCreateWithBytes(&__kCFAllocatorSystemDefault, v9, v25, v96, 0);
            goto LABEL_214;
          }
        }

        break;
      default:
        goto LABEL_236;
    }

    goto LABEL_235;
  }

  if (v13)
  {
    if (v13 != 1)
    {
      if (v13 == 2)
      {
        v14 = v10 & 0xF;
        if (v14 == 3)
        {
          if (v5 <= 0xFFFFFFFFFFFFFFF6 && v3 >= v5 + 9)
          {
            v67 = *v9;
            *a3 = (v5 + 9);
            values[0] = bswap64(v67);
            v16 = kCFNumberFloat64Type;
            goto LABEL_242;
          }
        }

        else if (v14 == 2 && v5 <= 0xFFFFFFFFFFFFFFFALL && v3 >= v5 + 5)
        {
          v15 = *v9;
          *a3 = (v5 + 5);
          LODWORD(values[0]) = bswap32(v15);
          v16 = kCFNumberFloat32Type;
LABEL_242:
          v12 = CFNumberCreate(&__kCFAllocatorSystemDefault, v16, values);
          goto LABEL_236;
        }

        goto LABEL_235;
      }

LABEL_236:
      v106 = *MEMORY[0x1E69E9840];
      return v12;
    }

    v45 = v10 & 0xF;
    if (v45 <= 4)
    {
      if (v45 == 4)
      {
        v12 = 0;
        if (v5 > 0xFFFFFFFFFFFFFFEELL || v3 < v5 + 17)
        {
          goto LABEL_236;
        }

        v46 = *v9;
        *a3 = (v5 + 9);
        v47 = *(v5 + 9);
        *a3 = (v5 + 17);
        values[0] = (v47 ^ 0x8000000000000000);
        values[1] = v46;
        v16 = kCFNumberMaxType|kCFNumberSInt8Type;
        goto LABEL_242;
      }

      if (v3 >= v9 && (*v5 & 0xF0) == 0x10)
      {
        v68 = 1 << (*v5 & 0xF);
        if (v5 < ~v68 && v3 >= v9 + v68)
        {
          v12 = 0;
          if (v68 > 3)
          {
            if (v68 == 4)
            {
              v74 = *v9 ^ 0xFFFFFFFF80000000;
            }

            else
            {
              if (v68 != 8)
              {
                goto LABEL_236;
              }

              v74 = *v9 ^ 0x8000000000000000;
            }
          }

          else if (v68 == 1)
          {
            v74 = *v9 & 0x7F;
            if (*v9 >= 0)
            {
              v74 = *v9 | 0xFFFFFFFFFFFFFF80;
            }
          }

          else
          {
            if (v68 != 2)
            {
              goto LABEL_236;
            }

            v70 = *(v5 + 2) << 8;
            v71 = v70;
            v72 = v70 | *v9;
            v73 = *&v72 | 0xFFFFFFFFFFFF8000;
            v74 = v72 & 0x7FFF;
            if (v71 >= 0)
            {
              v74 = v73;
            }
          }

          values[0] = v74;
          *a3 = (v9 + v68);
          v16 = kCFNumberSInt64Type;
          goto LABEL_242;
        }
      }
    }

    goto LABEL_235;
  }

  v12 = 0;
  if (v10 <= 11)
  {
    if (v10)
    {
      if (v10 == 8)
      {
        v40 = &kCFBooleanFalse;
      }

      else
      {
        if (v10 != 9)
        {
          goto LABEL_236;
        }

        v40 = &kCFBooleanTrue;
      }
    }

    else
    {
      v40 = &kCFNull;
    }

    v12 = *v40;
    goto LABEL_236;
  }

  if (v10 == 12)
  {
    v75 = __readObject15(a1, a2, a3);
    if (!v75)
    {
      goto LABEL_235;
    }

    v76 = v75;
    if (CFGetTypeID(v75) == 7)
    {
      v12 = CFURLCreateWithString(&__kCFAllocatorSystemDefault, v76, 0);
      v77 = v76;
LABEL_169:
      CFRelease(v77);
      goto LABEL_236;
    }

    goto LABEL_187;
  }

  if (v10 == 13)
  {
    v12 = __readObject15(a1, a2, a3);
    if (!v12)
    {
      goto LABEL_236;
    }

    v78 = CFURLGetTypeID();
    if (v78 == CFGetTypeID(v12))
    {
      v79 = __readObject15(a1, a2, a3);
      if (v79)
      {
        v76 = v79;
        if (CFGetTypeID(v79) == 7)
        {
          v80 = CFURLCreateWithString(&__kCFAllocatorSystemDefault, v76, v12);
          CFRelease(v12);
          CFRelease(v76);
          v81 = *MEMORY[0x1E69E9840];
          return v80;
        }

        CFRelease(v12);
LABEL_187:
        v82 = v76;
        goto LABEL_188;
      }
    }

    v82 = v12;
LABEL_188:
    CFRelease(v82);
    goto LABEL_235;
  }

  if (v10 != 14)
  {
    goto LABEL_236;
  }

  if (v5 > 0xFFFFFFFFFFFFFFEELL || v3 < v5 + 17)
  {
    goto LABEL_235;
  }

  v64 = *v9;
  *&v66.byte8 = *(v5 + 9);
  *a3 = (v5 + 17);
  v65 = *MEMORY[0x1E69E9840];
  *&v66.byte0 = v64;

  return CFUUIDCreateFromUUIDBytes(&__kCFAllocatorSystemDefault, v66);
}

uint64_t _registrar_compare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t __CreateCFDateFormatter(__objc2_class **a1, const __CFLocale *a2, unint64_t a3, unint64_t a4, __objc2_class **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    a1 = _CFGetTSD(1u);
    if (!a1)
    {
      a1 = &__kCFAllocatorSystemDefault;
    }
  }

  Instance = _CFRuntimeCreateInstance(a1, 0x38uLL, 512, 0, a5, a6, a7, a8);
  v13 = Instance;
  if (Instance)
  {
    *(Instance + 32) = a4;
    *(Instance + 40) = a3;
    if (a3 >= 5)
    {
      *(Instance + 40) = 2;
    }

    if (a4 >= 5)
    {
      *(Instance + 32) = 2;
    }

    if (a2)
    {
      System = a2;
    }

    else
    {
      System = CFLocaleGetSystem();
    }

    *(v13 + 24) = CFRetain(System);
    if (&__kCFBooleanTrue == a5)
    {
      v15 = CFCalendarCreateWithIdentifier(&__kCFAllocatorSystemDefault, @"gregorian");
      CFCalendarSetFirstWeekday(v15, 2);
      CFCalendarSetMinimumDaysInFirstWeek(v15, 4);
      *(v13 + 96) = v15;
    }

    *(v13 + 88) = CFTimeZoneCopyDefault();
    Value = CFLocaleGetValue(*(v13 + 24), @"calendar");
    if (Value && CFEqual(Value, @"gregorian"))
    {
      *(v13 + 112) = CFDateCreate(&__kCFAllocatorSystemDefault, -1609459200.0);
    }

    __ResetUDateFormat(v13, 0);
    if (!*(v13 + 16))
    {
      CFRelease(v13);
      return 0;
    }
  }

  return v13;
}

CFTimeZoneRef CFTimeZoneCopyDefault(void)
{
  v0 = _CFAutoreleasePoolPush();
  v1 = +[NSTimeZone defaultTimeZone];
  if (v1)
  {
    v2 = CFRetain(v1);
  }

  else
  {
    v2 = 0;
  }

  _CFAutoreleasePoolPop(v0);
  return v2;
}

void __CFTSDFinalize(unint64_t a1)
{
  if (pthread_main_np() == 1)
  {
    atomic_store(1u, __CFMainThreadHasExited);
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 440) = a1;
  if ((a1 | 0x1000) != 0x1000)
  {
    ++*a1;
    v3 = _CFAutoreleasePoolPush();
    for (i = 0; i != 560; i += 8)
    {
      v5 = (a1 + i);
      if (*(a1 + i + 8))
      {
        v6 = *(v5 + 71);
        if (v6)
        {
          *(v5 + 1) = 0;
          v6();
        }
      }
    }

    _CFAutoreleasePoolPop(v3);
    if (*a1 == 3)
    {
      free(a1);
      *(StatusReg + 440) = 4096;
    }
  }
}

CFURLRef _CFBundleCreateNormalizedURL(const __CFAllocator *a1, CFURLRef url)
{
  v8 = *MEMORY[0x1E69E9840];
  if (CFURLGetFileSystemRepresentation(url, 1u, buffer, 1026))
  {
    v3 = _CFBundleNormalizedPath(buffer);
    v4 = strlen(v3);
    result = CFURLCreateFromFileSystemRepresentation(a1, v3, v4, 1u);
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFSetFastEnumeration(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (CF_IS_OBJC(0x11uLL, a1))
  {
    return 0;
  }

  return __CFBasicHashFastEnumeration(a1, a2, a3, a4);
}

uint64_t _CFBundleCreate(const __CFAllocator *a1, const __CFURL *a2, int a3, const __CFSet *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  NormalizedURL = _CFBundleCreateNormalizedURL(a1, a2);
  if (!NormalizedURL)
  {
    if (_CFBundleResourceLogger_onceToken != -1)
    {
      _CFBundleCreate_cold_9();
    }

    if (os_log_type_enabled(_CFBundleResourceLogger__log, OS_LOG_TYPE_ERROR))
    {
      _CFBundleCreate_cold_10();
    }

    goto LABEL_44;
  }

  v10 = NormalizedURL;
  v11 = 1;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v11 = 0;
      v14 = 0;
      v12 = 1;
      v15 = 1;
      v13 = 1;
      goto LABEL_18;
    }

    v12 = 0;
    v13 = 0;
    v14 = 1;
    v15 = 1;
    if (a3 != 4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a3)
    {
      v12 = 0;
      v13 = 0;
      v14 = 1;
      v15 = 1;
      if (a3 == 1)
      {
        v11 = 0;
        v14 = 0;
        v13 = 0;
        v12 = 1;
      }

      goto LABEL_18;
    }

    v11 = 0;
  }

  os_unfair_lock_lock(&CFBundleGlobalDataLock);
  v16 = _CFBundleCopyFromTablesForURLLocked(v10);
  os_unfair_lock_unlock(&CFBundleGlobalDataLock);
  if (v16)
  {
    CFRelease(v10);
    goto LABEL_45;
  }

  v12 = 0;
  v15 = 0;
  v13 = 0;
  v14 = 1;
LABEL_18:
  v45 = v15;
  BundleVersionForURL = _CFBundleGetBundleVersionForURL(v10, v9);
  v22 = BundleVersionForURL;
  if (BundleVersionForURL == 3)
  {
    v48[0] = 0;
    *buffer = 0;
    if (_CFGetFileProperties(a1, v10, v48, buffer, 0, 0, 0, 0))
    {
      CFRelease(v10);
      if (_CFBundleLoadingLogger_onceToken != -1)
      {
        _CFBundleCreate_cold_1();
      }

      if (os_log_type_enabled(_CFBundleLoadingLogger__log, OS_LOG_TYPE_ERROR))
      {
        _CFBundleCreate_cold_2();
      }

      goto LABEL_44;
    }

    if (!v48[0] || (*buffer & 0xF000) != 0x4000)
    {
      if (_CFBundleLoadingLogger_onceToken != -1)
      {
        _CFBundleCreate_cold_7();
      }

      if (os_log_type_enabled(_CFBundleLoadingLogger__log, OS_LOG_TYPE_DEBUG))
      {
        _CFBundleCreate_cold_8(a2, buffer);
      }

      v30 = v10;
      goto LABEL_43;
    }
  }

  Instance = _CFRuntimeCreateInstance(a1, 0x1FuLL, 208, 0, v18, v19, v20, v21);
  if (!Instance)
  {
    CFRelease(v10);
    if (_CFBundleLoadingLogger_onceToken != -1)
    {
      _CFBundleCreate_cold_5();
    }

    if (os_log_type_enabled(_CFBundleLoadingLogger__log, OS_LOG_TYPE_ERROR))
    {
      _CFBundleCreate_cold_6();
    }

    goto LABEL_44;
  }

  v16 = Instance;
  *(Instance + 16) = v10;
  *(Instance + 53) = v22;
  *(Instance + 48) = 0;
  *(Instance + 54) = v12;
  *(Instance + 55) = v13;
  *(Instance + 96) = 0;
  *(Instance + 112) = 0;
  *(Instance + 176) = 0;
  v24 = CFURLCopyAbsoluteURL(v10);
  *(v16 + 192) = CFURLCopyFileSystemPath(v24, kCFURLPOSIXPathStyle);
  CFRelease(v24);
  *(v16 + 200) = 0;
  if (a4)
  {
    _CFBundleLoadLimitedInfoDictionary(v16, a4);
  }

  InfoDictionary = CFBundleGetInfoDictionary(v16);
  Identifier = CFBundleGetIdentifier(v16);
  __dmb(0xBu);
  if (v14)
  {
    v27 = Identifier;
    os_unfair_lock_lock(&CFBundleGlobalDataLock);
    v28 = _CFBundleCopyFromTablesForURLLocked(*(v16 + 16));
    if (v28)
    {
      v29 = v28;
      os_unfair_lock_unlock(&CFBundleGlobalDataLock);
      CFRelease(v16);
      v16 = v29;
      goto LABEL_45;
    }

    v33 = _CFBundleGetFromTablesLocked(v27);
    if (!v33)
    {
      goto LABEL_62;
    }

    v34 = v33;
    v35 = *(v33 + 24);
    if (!CFStringGetFileSystemRepresentation(*(v16 + 192), buffer, 1024) || !CFStringGetFileSystemRepresentation(v35, v48, 1024))
    {
      goto LABEL_62;
    }

    v36 = open(buffer, 0);
    v37 = open(v48, 0);
    v38 = v37;
    if (v36 < 1 || v37 < 1)
    {
      v39 = 1;
      if (v36 < 1)
      {
LABEL_59:
        if (v38 >= 1)
        {
          close(v38);
        }

        if (!v39)
        {
          os_unfair_lock_unlock(&CFBundleGlobalDataLock);
          CFRelease(v16);
          v16 = CFRetain(v34);
          goto LABEL_45;
        }

LABEL_62:
        if ((v11 & 1) != 0 || (*v48 = 0, _CFBundleInitPlugIn(v16, InfoDictionary, v48)))
        {
          if ((v45 & 1) == 0)
          {
            _CFBundleAddToTablesLocked(v16, v27);
          }

          os_unfair_lock_unlock(&CFBundleGlobalDataLock);
          if ((v11 & 1) == 0)
          {
            _CFPlugInHandleDynamicRegistration(v16);
          }

          goto LABEL_45;
        }

        Value = CFDictionaryGetValue(InfoDictionary, @"CFPlugInFactories");
        if (Value)
        {
          v41 = Value;
          v42 = CFGetTypeID(Value);
          if (v42 == CFDictionaryGetTypeID())
          {
            v43 = v41;
          }

          else
          {
            v43 = 0;
          }
        }

        else
        {
          v43 = 0;
        }

        if (_CFBundleLoadingLogger_onceToken != -1)
        {
          _CFBundleCreate_cold_4();
        }

        v44 = _CFBundleLoadingLogger__log;
        if (os_log_type_enabled(_CFBundleLoadingLogger__log, OS_LOG_TYPE_ERROR))
        {
          *buffer = 138543874;
          v50 = v43;
          v51 = 2114;
          v52 = v16;
          v53 = 2114;
          v54 = *v48;
          _os_log_error_impl(&dword_1830E6000, v44, OS_LOG_TYPE_ERROR, "More than one bundle with the same factory UUID detected: %{public}@ in %{public}@ and %{public}@", buffer, 0x20u);
        }

        os_unfair_lock_unlock(&CFBundleGlobalDataLock);
        CFRelease(v16);
        v30 = *v48;
        if (!*v48)
        {
          goto LABEL_44;
        }

LABEL_43:
        CFRelease(v30);
LABEL_44:
        v16 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      memset(&v47, 0, sizeof(v47));
      memset(&v46, 0, sizeof(v46));
      v39 = fstat(v36, &v47) || fstat(v38, &v46) || v47.st_dev != v46.st_dev || v47.st_ino != v46.st_ino;
    }

    close(v36);
    goto LABEL_59;
  }

  if ((v45 & 1) == 0)
  {
    _CFBundleCreate_cold_3();
  }

LABEL_45:
  v31 = *MEMORY[0x1E69E9840];
  return v16;
}

const char *_CFBundleNormalizedPath(const char *result)
{
  if (result)
  {
    v1 = result;
    if (!strncmp(result, "/private/preboot/Cryptexes/OS/", 0x1EuLL))
    {
      return v1 + 29;
    }

    else
    {
      v2 = strncmp(v1, "/System/Cryptexes/OS/", 0x15uLL);
      v3 = 20;
      if (v2)
      {
        v3 = 0;
      }

      return &v1[v3];
    }
  }

  return result;
}

void CFStringAppendFormat(CFMutableStringRef theString, CFDictionaryRef formatOptions, CFStringRef format, ...)
{
  va_start(va, format);
  v13 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&theString->info);
  if (v3)
  {
    CFStringAppendFormatAndArguments(theString, formatOptions, format, va);
  }

  else
  {
    v4 = _CFOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      CFStringAppendFormat_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void CFStringAppendFormatAndArguments(CFMutableStringRef theString, CFDictionaryRef formatOptions, CFStringRef format, va_list arguments)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(&theString->info);
  if (v4)
  {
    if (!__CFStringAppendFormatCore(theString, 0, 0, formatOptions, 0, 0, 0))
    {
      CFLog(3, @"ERROR: Failed to format string: %@", v13, v14, v15, v16, v17, v18, 0);
    }
  }

  else
  {
    v5 = _CFOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      CFStringAppendFormatAndArguments_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void CFStringReplaceAll(CFMutableStringRef theString, CFStringRef replacement)
{
  v40[2] = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(7uLL, theString))
  {
    v4 = *MEMORY[0x1E69E9840];

    [(__CFString *)theString setString:replacement];
    return;
  }

  p_info = &theString->info;
  v6 = atomic_load(&theString->info);
  if ((v6 & 1) == 0)
  {
    v7 = _CFOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      CFStringReplaceAll_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    goto LABEL_41;
  }

  v15 = atomic_load(p_info);
  v16 = v15 & 5;
  v17 = atomic_load(p_info);
  v18 = v17 & 0x60;
  if (v16 == 4)
  {
    p_data = &theString->data;
    if (v18)
    {
      v20 = *p_data;
    }

    else
    {
      v22 = atomic_load(&theString->info);
      v20 = &p_data[(v22 & 5) != 4];
    }

    length = *v20;
  }

  else if ((v17 & 0x60) != 0)
  {
    length = theString->length;
  }

  else
  {
    length = theString->data;
  }

  if (replacement == theString)
  {
    Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, replacement);
    replacement = Copy;
  }

  else
  {
    Copy = 0;
  }

  v24 = CFStringGetLength(replacement);
  if (v24 < 1)
  {
    v26 = 0;
  }

  else
  {
    if (CF_IS_OBJC(7uLL, replacement))
    {
      v25 = [(__CFString *)replacement _encodingCantBeStoredInEightBitCFString];
    }

    else
    {
      v27 = atomic_load(&replacement->info);
      v25 = (v27 >> 4) & 1;
    }

    v26 = v25 != 0;
  }

  v40[0] = 0;
  v40[1] = length;
  __CFStringChangeSizeMultiple(theString, v40, 1, v24, v26);
  v28 = atomic_load(&theString->info);
  v29 = atomic_load(&theString->info);
  v30 = v29 & 0x60;
  v31 = &theString->data;
  if ((v28 & 0x10) != 0)
  {
    if (v30)
    {
      v33 = *v31;
      if (!*v31)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v37 = atomic_load(&theString->info);
      v33 = &v31[(v37 & 5) != 4];
      if (!v33)
      {
        goto LABEL_37;
      }
    }

    v43.location = 0;
    v43.length = v24;
    CFStringGetCharacters(replacement, v43, v33);
    goto LABEL_37;
  }

  if (v30)
  {
    v32 = *v31;
  }

  else
  {
    v34 = atomic_load(&theString->info);
    v32 = &v31[(v34 & 5) != 4];
  }

  v35 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v35 = __CFStringComputeEightBitStringEncoding();
  }

  v36 = atomic_load(&theString->info);
  v42.location = 0;
  v42.length = v24;
  CFStringGetBytes(replacement, v42, v35, 0, 0, &v32[(v36 >> 2) & 1], v24, 0);
LABEL_37:
  if (!Copy)
  {
LABEL_41:
    v39 = *MEMORY[0x1E69E9840];
    return;
  }

  v38 = *MEMORY[0x1E69E9840];

  CFRelease(Copy);
}

void CFStringLowercase(CFMutableStringRef theString, CFLocaleRef locale)
{
  v57 = *MEMORY[0x1E69E9840];
  p_info = &theString->info;
  v5 = atomic_load(&theString->info);
  if (!CF_IS_OBJC(7uLL, theString))
  {
    v7 = atomic_load(p_info);
    if ((v7 & 1) == 0)
    {
      v8 = _CFOSLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        CFStringLowercase_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }

      goto LABEL_78;
    }

    v16 = atomic_load(&theString->info);
    v17 = v16 & 5;
    v18 = atomic_load(&theString->info);
    v19 = v18 & 0x60;
    if (v17 == 4)
    {
      p_data = &theString->data;
      if (v19)
      {
        v21 = *p_data;
      }

      else
      {
        v23 = atomic_load(&theString->info);
        v21 = &p_data[(v23 & 5) != 4];
      }

      length = *v21;
      if (!locale)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if ((v18 & 0x60) != 0)
    {
      length = theString->length;
      if (!locale)
      {
        goto LABEL_17;
      }
    }

    else
    {
      length = theString->data;
      if (!locale)
      {
LABEL_17:
        v24 = 0;
        if (!locale && (v5 & 0x10) == 0)
        {
          v25 = atomic_load(&theString->info);
          v26 = &theString->data;
          if ((v25 & 0x60) != 0)
          {
            v27 = *v26;
          }

          else
          {
            v28 = atomic_load(&theString->info);
            v27 = &v26[(v28 & 5) != 4];
          }

          v29 = atomic_load(&theString->info);
          if (length >= 1)
          {
            v24 = 0;
            v30 = &v27[(v29 >> 2) & 1];
            do
            {
              v31 = v30[v24];
              if ((v31 - 65) > 0x19)
              {
                if ((v31 & 0x80) != 0)
                {
                  goto LABEL_32;
                }
              }

              else
              {
                v30[v24] = v31 | 0x20;
              }

              ++v24;
            }

            while (length != v24);
            goto LABEL_78;
          }

          v24 = 0;
        }

LABEL_32:
        if (v24 >= length)
        {
LABEL_78:
          v52 = *MEMORY[0x1E69E9840];
          return;
        }

        if ((v5 & 0x10) == 0)
        {
          v53 = 0;
          v54 = 0;
          __CFStringChangeSizeMultiple(theString, &v53, 1, 0, 1);
        }

        v32 = atomic_load(&theString->info);
        v33 = &theString->data;
        if ((v32 & 0x60) != 0)
        {
          v34 = *v33;
        }

        else
        {
          v35 = atomic_load(&theString->info);
          v34 = &v33[(v35 & 5) != 4];
        }

        ConditionalCaseMappingFlags = 0;
        while (1)
        {
          v37 = *(v34 + 2 * v24);
          v38 = v24 + 1;
          if ((v37 & 0xFC00) == 0xD800 && v38 < length)
          {
            v45 = *(v34 + 2 * v38);
            if ((v45 & 0xFC00) == 0xDC00)
            {
              v37 = v45 + (v37 << 10) - 56613888;
            }
          }

          if (locale || v37 == 931)
          {
            ConditionalCaseMappingFlags = CFUniCharGetConditionalCaseMappingFlags(v37, v34, v24, length, 0, locale, ConditionalCaseMappingFlags);
          }

          else
          {
            ConditionalCaseMappingFlags = 0;
          }

          v40 = CFUniCharMapCaseTo(v37, &v55, 8, 0, ConditionalCaseMappingFlags, locale);
          v41 = v40 - 1;
          if (v40 >= 1)
          {
            *(v34 + 2 * v24) = v55;
          }

          if (v37 < 0x10000)
          {
            if (!v40)
            {
              v53 = v24;
LABEL_63:
              v54 = 1;
              __CFStringChangeSizeMultiple(theString, &v53, 1, 0, 1);
              v46 = atomic_load(&theString->info);
              if ((v46 & 0x60) != 0)
              {
                v34 = *v33;
              }

              else
              {
                v48 = atomic_load(&theString->info);
                v34 = &v33[(v48 & 5) != 4];
              }

              --length;
              goto LABEL_77;
            }

            if (v40 >= 2)
            {
              v53 = v24 + 1;
              v54 = 0;
              __CFStringChangeSizeMultiple(theString, &v53, 1, v41, 1);
              v44 = atomic_load(&theString->info);
              if ((v44 & 0x60) != 0)
              {
                v34 = *v33;
              }

              else
              {
                v49 = atomic_load(&theString->info);
                v34 = &v33[(v49 & 5) != 4];
              }

              memmove((v34 + 2 * v24 + 2), v56, 2 * v41);
              length += v41;
LABEL_76:
              v24 += v41;
            }
          }

          else
          {
            v42 = v40 - 2;
            if (v40 != 2)
            {
              v41 = v40 - 1;
              if (v40 == 1)
              {
                v53 = v24 + 1;
                goto LABEL_63;
              }

              if (!v40)
              {
                v53 = v24;
                v54 = 2;
                __CFStringChangeSizeMultiple(theString, &v53, 1, 0, 1);
                v43 = atomic_load(&theString->info);
                if ((v43 & 0x60) != 0)
                {
                  v34 = *v33;
                }

                else
                {
                  v50 = atomic_load(&theString->info);
                  v34 = &v33[(v50 & 5) != 4];
                }

                length -= 2;
                goto LABEL_77;
              }

              v53 = v24 + 1;
              v54 = 0;
              __CFStringChangeSizeMultiple(theString, &v53, 1, v42, 1);
              v47 = atomic_load(&theString->info);
              if ((v47 & 0x60) != 0)
              {
                v34 = *v33;
              }

              else
              {
                v51 = atomic_load(&theString->info);
                v34 = &v33[(v51 & 5) != 4];
              }

              memmove((v34 + 2 * v24 + 2), v56, 2 * v41);
              length += v42;
              goto LABEL_76;
            }

            ++v24;
            *(v34 + 2 * v24) = v56[0];
          }

LABEL_77:
          if (++v24 >= length)
          {
            goto LABEL_78;
          }
        }
      }
    }

LABEL_16:
    locale = _CFStrGetSpecialCaseHandlingLanguageIdentifierForLocale(locale, 0);
    goto LABEL_17;
  }

  v6 = *MEMORY[0x1E69E9840];

  [(__CFString *)theString _cfLowercase:locale];
}

unint64_t _CFLogvEx3(void (*a1)(uint64_t, char *, size_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = *MEMORY[0x1E69E9840];
  if (os_log_shim_enabled())
  {
    result = _CFGetTSD(2u);
    if (result <= 3)
    {
      v15 = result;
      _CFSetTSD(2u, result + 1, 0);
      if (a5 <= 7)
      {
        v16 = _CFLog_os_trace_type_map[a5];
        os_log_shim_with_CFString_4NSLog();
      }

      _CFSetTSD(2u, v15, 0);
      result = also_do_stderr(0);
      if (result)
      {
        result = _CFLogvEx2Predicate(a1, a2, a3, a4, a5, a6, a7, 0);
      }
    }

    v17 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v18 = *MEMORY[0x1E69E9840];

    return _CFLogvEx2Predicate(a1, a2, a3, a4, a5, a6, a7, 1);
  }

  return result;
}

uint64_t also_do_stderr(int a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1 != 0;
  if (a1)
  {
    if (!issetugid() && getenv("CFLOG_FORCE_STDERR"))
    {
      goto LABEL_14;
    }

    memset(&v7, 0, sizeof(v7));
    if ((fstat(2, &v7) & 0x80000000) == 0)
    {
      if ((v7.st_mode & 0xB000) == 0x8000)
      {
LABEL_14:
        result = 1;
        goto LABEL_15;
      }

      v2 = v7.st_mode & 0xF000;
      if (v2 == 4096 || v2 == 0x2000)
      {
        goto LABEL_7;
      }
    }

LABEL_12:
    result = 0;
    goto LABEL_15;
  }

  memset(&v7, 0, 64);
  v4 = getpid();
  if (proc_pidinfo(v4, 13, 0, &v7, 64) == 64 && (v7.st_atimespec.tv_sec & 2) != 0 || getenv("OS_ACTIVITY_DT_MODE") || getenv("CFLOG_FORCE_DISABLE_STDERR"))
  {
    goto LABEL_12;
  }

  if (!__CFProcessIsRestricted() && getenv("CFLOG_FORCE_STDERR"))
  {
    goto LABEL_14;
  }

  memset(&v7, 0, sizeof(v7));
  if (fstat(2, &v7) < 0)
  {
    goto LABEL_12;
  }

  v6 = v7.st_mode & 0xF000;
  result = 1;
  if (v6 >= 0x8000)
  {
    if (v6 != 0x8000 && v6 != 49152)
    {
      goto LABEL_7;
    }
  }

  else if (v6 != 4096 && v6 != 0x2000)
  {
LABEL_7:
    result = v1;
  }

LABEL_15:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}