void saveBackTrace(__CFDictionary *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  v2 = backtrace(v10, 8);
  v3 = backtrace_symbols(v10, v2);
  Mutable = CFArrayCreateMutable(0, v2, MEMORY[0x1E695E9C0]);
  v5 = Mutable;
  if (v3 && Mutable)
  {
    if (v2 >= 1)
    {
      for (i = 0; i != v2; ++i)
      {
        v7 = CFStringCreateWithCString(0, v3[i], 0);
        if (v7)
        {
          v8 = v7;
          CFArrayInsertValueAtIndex(v5, i, v7);
          CFRelease(v8);
        }

        else
        {
          CFArrayInsertValueAtIndex(v5, i, @" ");
        }
      }
    }

    CFDictionarySetValue(a1, @"CreatorBacktrace", v5);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v3)
  {
    free(v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t IOPMPerformBlockWithAssertion(CFDictionaryRef AssertionProperties, uint64_t a2)
{
  AssertionID = 0;
  result = 3758097090;
  if (AssertionProperties)
  {
    if (a2)
    {
      result = IOPMAssertionCreateWithProperties(AssertionProperties, &AssertionID);
      if (!result)
      {
        (*(a2 + 16))(a2);
        result = AssertionID;
        if (AssertionID)
        {
          IOPMAssertionRelease(AssertionID);
          return 0;
        }
      }
    }
  }

  return result;
}

void IOPMAssertionRetain(IOPMAssertionID theAssertion)
{
  v13 = -536870212;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  if (theAssertion)
  {
    if (pm_connect_init(&v12))
    {
      goto LABEL_3;
    }

    if (theAssertion >= 0x10000 && gAssertionsDict)
    {
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
        {
          IOPMAssertionRetain_cold_1();
        }
      }

      else
      {
        v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v2)
        {
          IOPMAssertionRetain_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
        }
      }

      goto LABEL_3;
    }

    if (io_pm_assertion_retain_release(v12, theAssertion, 1, &v10, &v11 + 1, &v11, &v13))
    {
LABEL_3:
      v13 = -536870199;
      goto LABEL_5;
    }

    entr_act_modify();
  }

  else
  {
    v13 = -536870206;
  }

LABEL_5:
  if (v12)
  {
    _pm_disconnect();
  }
}

uint64_t IOPMAssertionSetProcessState(int a1, unsigned int a2)
{
  v4 = 3758097084;
  global_queue = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", global_queue, 0);
  if (mach_service)
  {
    v7 = mach_service;
    xpc_connection_set_target_queue(mach_service, global_queue);
    xpc_connection_set_event_handler(v7, &__block_literal_global_212);
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        IOPMAssertionSetProcessState_cold_1();
      }

      xpc_dictionary_set_uint64(v9, "pid", a1);
      xpc_dictionary_set_uint64(v9, "assertionSetState", a2);
      xpc_connection_resume(v7);
      xpc_connection_send_message(v7, v9);
      xpc_release(v9);
      xpc_release(v7);
      return 0;
    }

    else
    {
      xpc_release(v7);
      v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v10)
      {
        __fetchAssertionCategoryPolicies_block_invoke_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }
  }

  return v4;
}

uint64_t IOPMAssertionSetTimeout(IOPMAssertionID a1, double a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v3)
  {
    return 3758097084;
  }

  v4 = v3;
  v5 = IOPMAssertionSetProperty(a1, @"TimeoutSeconds", v3);
  CFRelease(v4);
  return v5;
}

uint64_t IOPMAssertionDeclareNotificationEvent(const __CFString *a1, IOPMAssertionID *a2, CFTimeInterval a3)
{
  v6 = 3758097097;
  AssertionID = 0;
  PMRootDomainRef = getPMRootDomainRef();
  if (PMRootDomainRef)
  {
    v8 = PMRootDomainRef;
    v9 = *MEMORY[0x1E695E480];
    CFProperty = IORegistryEntryCreateCFProperty(PMRootDomainRef, @"DesktopMode", *MEMORY[0x1E695E480], 0);
    v11 = IORegistryEntryCreateCFProperty(v8, @"AppleClamshellState", v9, 0);
    if (*MEMORY[0x1E695E4D0] == v11 && *MEMORY[0x1E695E4C0] == CFProperty)
    {
      v6 = 3758097112;
    }

    else
    {
      v6 = IOPMAssertionCreateWithDescription(@"DisplayWake", a1, 0, 0, 0, a3, @"TimeoutActionRelease", &AssertionID);
      if (a2)
      {
        *a2 = AssertionID;
      }
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (CFProperty)
    {
      CFRelease(CFProperty);
    }
  }

  return v6;
}

IOReturn IOPMAssertionDeclareUserActivity(CFStringRef AssertionName, IOPMUserActiveType userType, IOPMAssertionID *AssertionID)
{
  v14 = 0;
  v15 = -536870212;
  v13 = 0;
  if (!AssertionName || !AssertionID)
  {
    v15 = -536870206;
    goto LABEL_6;
  }

  if (pm_connect_init(&v14))
  {
    v15 = -536870199;
    goto LABEL_6;
  }

  Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"AssertName", AssertionName);
  if (collectBackTrace)
  {
    saveBackTrace(Mutable);
  }

  Data = CFPropertyListCreateData(0, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    v15 = -536870206;
    if (!Mutable)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

  v9 = Data;
  v10 = v14;
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(v9);
  if (io_pm_declare_user_active(v10, userType, BytePtr, Length, AssertionID, &v13, &v15))
  {
    v15 = -536870199;
  }

  CFRelease(v9);
  if (Mutable)
  {
LABEL_17:
    CFRelease(Mutable);
  }

LABEL_6:
  if (v14)
  {
    _pm_disconnect();
  }

  return v15;
}

IOReturn IOPMDeclareNetworkClientActivity(CFStringRef AssertionName, IOPMAssertionID *AssertionID)
{
  v12 = 0;
  v13 = -536870212;
  v11 = 0;
  if (!AssertionName || !AssertionID)
  {
    v13 = -536870206;
    goto LABEL_6;
  }

  if (pm_connect_init(&v12))
  {
    v13 = -536870199;
    goto LABEL_6;
  }

  Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"AssertName", AssertionName);
  if (collectBackTrace)
  {
    saveBackTrace(Mutable);
  }

  Data = CFPropertyListCreateData(0, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    v13 = -536870206;
    if (!Mutable)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

  v7 = Data;
  v8 = v12;
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(v7);
  if (io_pm_declare_network_client_active(v8, BytePtr, Length, AssertionID, &v11, &v13))
  {
    v13 = -536870199;
  }

  CFRelease(v7);
  if (Mutable)
  {
LABEL_17:
    CFRelease(Mutable);
  }

LABEL_6:
  if (v12)
  {
    _pm_disconnect();
  }

  return v13;
}

uint64_t IOPMSetReservePowerMode(int a1)
{
  v4 = 0;
  result = _pm_connect(&v4 + 1);
  if (!result)
  {
    if (HIDWORD(v4))
    {
      v3 = io_pm_set_value_int(SHIDWORD(v4), 9, a1, &v4);
      _pm_disconnect();
      if (v4)
      {
        return v4;
      }

      else
      {
        return v3;
      }
    }

    else
    {
      return 3758097112;
    }
  }

  return result;
}

uint64_t _copyAssertionsByProcess(unsigned int a1, CFDictionaryRef *a2, const __CFAllocator *a3)
{
  v3 = 3758097090;
  cf = 0;
  if (a2 && (a1 == 7 || a1 == 2))
  {
    v3 = _copyPMServerObject(a1, 0, 0, &cf);
    v6 = cf;
    if (v3)
    {
      if (cf)
      {
LABEL_6:
        CFRelease(v6);
      }
    }

    else
    {
      if (!cf)
      {
        return 0;
      }

      Count = CFArrayGetCount(cf);
      v9 = Count;
      if (!Count)
      {
        v3 = 0;
        goto LABEL_6;
      }

      v10 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
      v11 = malloc_type_malloc(8 * v9, 0x6004044C4A2DFuLL);
      v12 = v11;
      if (v10 && v11)
      {
        if (v9 >= 1)
        {
          v13 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v6, v13);
            if (ValueAtIndex)
            {
              v15 = ValueAtIndex;
              v10[v13] = CFDictionaryGetValue(ValueAtIndex, @"AssertPID");
              v12[v13] = CFDictionaryGetValue(v15, @"PerTaskAssertions");
            }

            ++v13;
          }

          while ((v9 & 0x7FFFFFFF) != v13);
        }

        *a2 = CFDictionaryCreate(a3, v10, v12, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      if (v10)
      {
        free(v10);
      }

      if (v12)
      {
        free(v12);
      }

      v3 = 0;
      if (v6)
      {
        goto LABEL_6;
      }
    }
  }

  return v3;
}

uint64_t IOPMCopyAssertionsByType(const __CFData *a1, CFPropertyListRef *a2)
{
  if (a2)
  {
    return _copyPMServerObject(6u, 0, a1, a2);
  }

  else
  {
    return 3758097090;
  }
}

CFDictionaryRef IOPMAssertionCopyProperties(IOPMAssertionID theAssertion)
{
  v2 = 0;
  _copyPMServerObject(1u, theAssertion, 0, &v2);
  return v2;
}

IOReturn IOPMCopyAssertionsStatus(CFDictionaryRef *AssertionsStatus)
{
  if (AssertionsStatus)
  {
    return _copyPMServerObject(3u, 0, 0, AssertionsStatus);
  }

  else
  {
    return -536870206;
  }
}

uint64_t IOPMCopyAssertionActivityUpdateWithAllocator(CFPropertyListRef *a1, BOOL *a2, _DWORD *a3, const __CFAllocator *a4)
{
  v15 = -536870199;
  v16 = 0;
  length = 0;
  bytes = 0;
  *a1 = 0;
  _pm_connect(&length + 1);
  result = HIDWORD(length);
  if (HIDWORD(length))
  {
    if (io_pm_assertion_activity_log(SHIDWORD(length), &bytes, &length, a3, &v16, &v15))
    {
      v9 = 0;
    }

    else
    {
      v9 = v15 == 0;
    }

    if (v9 && length != 0)
    {
      v11 = CFDataCreateWithBytesNoCopy(0, bytes, length, *MEMORY[0x1E695E498]);
      if (v11)
      {
        v12 = v11;
        *a1 = CFPropertyListCreateWithData(a4, v11, 1uLL, 0, 0);
        CFRelease(v12);
      }

      if (a2)
      {
        *a2 = v16 != 0;
      }
    }

    if (bytes && length)
    {
      mach_vm_deallocate(*MEMORY[0x1E69E9A60], bytes, length);
    }

    if (HIDWORD(length))
    {
      _pm_disconnect();
    }

    return v15;
  }

  return result;
}

void __IOPMCopyAssertionActivityUpdateWithCallback_block_invoke_232(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  (*(*(a1 + 32) + 16))();
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t IOPMSetAssertionActivityLog(int a1)
{
  v4 = 0;
  v2 = _pm_connect(&v4 + 1);
  if (!v2)
  {
    if (HIDWORD(v4))
    {
      v2 = io_pm_set_value_int(SHIDWORD(v4), 7, a1, &v4);
      _pm_disconnect();
    }

    else
    {
      return 3758097112;
    }
  }

  return v2;
}

uint64_t IOPMSetAssertionActivityAggregate(int a1)
{
  v4 = 0;
  v2 = _pm_connect(&v4 + 1);
  if (!v2)
  {
    if (HIDWORD(v4))
    {
      v2 = io_pm_set_value_int(SHIDWORD(v4), 8, a1, &v4);
      _pm_disconnect();
    }

    else
    {
      return 3758097112;
    }
  }

  return v2;
}

uint64_t IOPMAssertionSetBTCollection(unsigned int a1)
{
  out_token = 0;
  notify_register_check("com.apple.powermanagement.collectbt", &out_token);
  notify_set_state(out_token, a1);
  notify_post("com.apple.powermanagement.collectbt");
  return notify_cancel(out_token);
}

uint64_t IOPMSetAssertionExceptionLimits(const void *a1)
{
  v2 = 3758097090;
  v10 = 0;
  v11 = -536870212;
  TypeID = CFDictionaryGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    if (pm_connect_init(&v10))
    {
      v11 = -536870199;
    }

    else
    {
      Data = CFPropertyListCreateData(0, a1, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      if (Data)
      {
        v5 = Data;
        v6 = v10;
        BytePtr = CFDataGetBytePtr(Data);
        Length = CFDataGetLength(v5);
        if (io_pm_set_exception_limits(v6, BytePtr, Length, &v11))
        {
          v11 = -536870199;
        }

        CFRelease(v5);
      }

      else
      {
        v11 = -536870206;
      }
    }

    if (v10)
    {
      _pm_disconnect();
    }

    return v11;
  }

  return v2;
}

void *IOPMScheduleAssertionExceptionNotification(NSObject *a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (v4)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __IOPMScheduleAssertionExceptionNotification_block_invoke;
    handler[3] = &unk_1E74A9990;
    handler[4] = a2;
    if (notify_register_dispatch("com.apple.powermanagement.assertionexception", v4, a1, handler))
    {
      free(v4);
      return 0;
    }
  }

  return v4;
}

uint64_t __IOPMScheduleAssertionExceptionNotification_block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  result = notify_get_state(token, &state64);
  if (!result)
  {
    return (*(*(a1 + 32) + 16))();
  }

  return result;
}

void IOPMUnregisterExceptionNotification(int *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      notify_cancel(v2);
    }

    *a1 = 0;

    free(a1);
  }
}

__CFArray *__IOHIDPlugInLoadBundles(const __CFArray *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (CFArrayGetCount(a1) >= 1)
  {
    v4 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      v6 = CFStringCreateWithFormat(0, 0, @"%@%@", &stru_1F0B93200, ValueAtIndex);
      v7 = CFURLCreateWithFileSystemPath(v2, v6, kCFURLPOSIXPathStyle, 1u);
      BundlesFromDirectory = CFBundleCreateBundlesFromDirectory(v2, v7, @"plugin");
      if (BundlesFromDirectory)
      {
        v9 = BundlesFromDirectory;
        v10 = _IOHIDLogCategory(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          Count = CFArrayGetCount(v9);
          *buf = 134218498;
          v15 = Count;
          v16 = 2112;
          v17 = v6;
          v18 = 2112;
          v19 = v9;
          _os_log_impl(&dword_197195000, v10, OS_LOG_TYPE_DEFAULT, "Loaded %ld HID plugins (%@) %@", buf, 0x20u);
        }

        v21.length = CFArrayGetCount(v9);
        v21.location = 0;
        CFArrayAppendArray(Mutable, v9, v21);
        CFRelease(v9);
      }

      CFRelease(v6);
      CFRelease(v7);
      ++v4;
    }

    while (v4 < CFArrayGetCount(a1));
  }

  CFRelease(&stru_1F0B93200);
  v12 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t _IOHIDLoadSessionFilterBundles()
{
  if (_IOHIDLoadSessionFilterBundles_onceToken != -1)
  {
    _IOHIDLoadSessionFilterBundles_cold_1();
  }

  return __hidSessionFilterBundles;
}

uint64_t _IOHIDLoadServicePluginBundles()
{
  if (_IOHIDLoadServicePluginBundles_onceToken != -1)
  {
    _IOHIDLoadServicePluginBundles_cold_1();
  }

  return __hidServicePluginBundles;
}

void _IOHIDPlugInInstanceCacheClear()
{
  if (__hidPlugInInstanceCache)
  {
    CFDictionaryApplyFunction(__hidPlugInInstanceCache, __IOHIDPlugInInstanceCacheApplier, 0);
    v0 = __hidPlugInInstanceCache;

    CFDictionaryRemoveAllValues(v0);
  }
}

uint64_t IODPControllerGetTypeID()
{
  result = __kIODPControllerTypeID;
  if (!__kIODPControllerTypeID)
  {
    pthread_once(&__controllerTypeInit_0, __IODPControllerRegister);
    return __kIODPControllerTypeID;
  }

  return result;
}

uint64_t __IODPControllerRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIODPControllerTypeID = result;
  return result;
}

uint64_t IODPControllerCreate(uint64_t a1)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IOAVCopyFirstMatchingIOAVObjectOfType("IODPController", IODPControllerCreateWithService, 0, 0, -1);
  }

  else
  {
    return 0;
  }
}

uint64_t IODPControllerCreateWithLocation(uint64_t a1, unsigned int a2)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IOAVCopyFirstMatchingIOAVObjectOfType("IODPController", IODPControllerCreateWithService, 0, a2, -1);
  }

  else
  {
    return 0;
  }
}

uint64_t IODPControllerSetScramblingInhibited(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 0, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IODPControllerSetSupportsEnhancedMode(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 1u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IODPControllerSetSupportsDownspread(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 2u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IODPControllerSetLaneCount(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 3u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IODPControllerSetLinkRate(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 6u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IODPControllerSetDriveSettings(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  input[3] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  result = IOConnectCallMethod(*(a1 + 20), 0xAu, input, 3u, 0, 0, 0, 0, 0, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IODPControllerSetQualityPattern(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 9u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IODPControllerSetSecureAuxFilter(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 0xBu, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IODPControllerFree(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 20);
  if (v3)
  {
    IOServiceClose(v3);
  }

  result = *(a1 + 16);
  if (result)
  {

    return IOObjectRelease(result);
  }

  return result;
}

uint64_t IODPDeviceGetTypeID()
{
  result = __kIODPDeviceTypeID;
  if (!__kIODPDeviceTypeID)
  {
    pthread_once(&__deviceTypeInit, __IODPDeviceRegister);
    return __kIODPDeviceTypeID;
  }

  return result;
}

uint64_t __IODPDeviceRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIODPDeviceTypeID = result;
  return result;
}

uint64_t IODPDeviceCreate(uint64_t a1)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IOAVCopyFirstMatchingIOAVObjectOfType("IODPDevice", IODPDeviceCreateWithService, 0, 0, -1);
  }

  else
  {
    return 0;
  }
}

uint64_t IODPDeviceCreateWithLocation(uint64_t a1, unsigned int a2)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IOAVCopyFirstMatchingIOAVObjectOfType("IODPDevice", IODPDeviceCreateWithService, 0, a2, -1);
  }

  else
  {
    return 0;
  }
}

uint64_t IODPDeviceGetController(uint64_t a1)
{
  result = *(a1 + 56);
  if (!result)
  {
    parent = 0;
    if (IORegistryEntryGetParentEntry(*(a1 + 16), "IOService", &parent))
    {
      result = IODPControllerCreateWithService(*MEMORY[0x1E695E480], parent);
      *(a1 + 56) = result;
    }

    else
    {
      return *(a1 + 56);
    }
  }

  return result;
}

uint64_t IODPDeviceReadDPCD(uint64_t a1, unsigned int a2, void *outputStruct, unsigned int a4)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  if (a4 >= 0x1000)
  {
    v4 = 4096;
  }

  else
  {
    v4 = a4;
  }

  v7 = v4;
  result = IOConnectCallMethod(*(a1 + 20), 0, input, 1u, 0, 0, 0, 0, outputStruct, &v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IODPDeviceWriteDPCD(uint64_t a1, unsigned int a2, void *inputStruct, unsigned int a4)
{
  input[1] = *MEMORY[0x1E69E9840];
  if (a4 >= 0x1000)
  {
    v4 = 4096;
  }

  else
  {
    v4 = a4;
  }

  v5 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v5, 1u, input, 1u, inputStruct, v4, 0, 0, 0, 0);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IODPDeviceSetUpdateMode(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 4u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IODPDeviceSetUpdated(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 5u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __IODPDeviceFree(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 20);
  if (v3)
  {
    IOServiceClose(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    IOObjectRelease(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t IODPServiceGetTypeID()
{
  result = __kIODPServiceTypeID;
  if (!__kIODPServiceTypeID)
  {
    pthread_once(&__serviceTypeInit_0, __IODPServiceRegister);
    return __kIODPServiceTypeID;
  }

  return result;
}

uint64_t __IODPServiceRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIODPServiceTypeID = result;
  return result;
}

uint64_t IODPServiceCreate(uint64_t a1)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IOAVCopyFirstMatchingIOAVObjectOfType("IODPService", IODPServiceCreateWithService, 0, 0, -1);
  }

  else
  {
    return 0;
  }
}

uint64_t IODPServiceCreateWithLocation(uint64_t a1, unsigned int a2)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IOAVCopyFirstMatchingIOAVObjectOfType("IODPService", IODPServiceCreateWithService, 0, a2, -1);
  }

  else
  {
    return 0;
  }
}

_OWORD *IODPServiceGetDevice(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result)
  {
    parent = 0;
    if (IORegistryEntryGetParentEntry(*(a1 + 16), "IOService", &parent))
    {
      return *(a1 + 32);
    }

    else
    {
      result = IODPDeviceCreateWithService(*MEMORY[0x1E695E480], parent);
      *(a1 + 32) = result;
    }
  }

  return result;
}

void __IODPServiceFree(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 20);
  if (v3)
  {
    IOServiceClose(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    IOObjectRelease(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t getPortProperty(io_registry_entry_t a1, void *a2, void *a3, void *a4)
{
  v8 = 3758097088;
  v9 = *MEMORY[0x1E695E480];
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"PortType", *MEMORY[0x1E695E480], 0);
  if (a2)
  {
    v11 = CFProperty;
    if (CFProperty)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v11))
      {
        CFNumberGetValue(v11, kCFNumberSInt32Type, a2);
        CFRelease(v11);
        v13 = IORegistryEntryCreateCFProperty(a1, @"PortNumber", v9, 0);
        if (a3)
        {
          v14 = v13;
          if (v13)
          {
            v15 = CFNumberGetTypeID();
            if (v15 == CFGetTypeID(v14))
            {
              CFNumberGetValue(v14, kCFNumberSInt32Type, a3);
              CFRelease(v14);
              v16 = IORegistryEntryCreateCFProperty(a1, @"PortVariant", v9, 0);
              v8 = 0;
              if (a4)
              {
                v17 = v16;
                if (v16)
                {
                  v18 = CFNumberGetTypeID();
                  v8 = 3758097088;
                  if (v18 == CFGetTypeID(v17))
                  {
                    CFNumberGetValue(v17, kCFNumberSInt32Type, a4);
                    CFRelease(v17);
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v8;
}

__CFString *IODPCreateStringWithLinkTrainingData(const __CFAllocator *a1, uint64_t a2, int a3)
{
  Mutable = CFStringCreateMutable(a1, 0);
  v6 = Mutable;
  if (Mutable)
  {
    _IOAVStringAppendIndendationAndFormat(Mutable, a3, @"Link Training Data:\n\n");
    _IOAVStringAppendIndendationAndFormat(v6, a3 + 1, @"Lane Count:    %d\n", *(a2 + 8));
    v7 = IODPLinkRateScalar(*(a2 + 12));
    _IOAVStringAppendIndendationAndFormat(v6, a3 + 1, @"Link Rate:     %llu bps\n", v7);
    if (*(a2 + 1))
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    _IOAVStringAppendIndendationAndFormat(v6, a3 + 1, @"Enhanced Mode: %s\n", v8);
    if (*(a2 + 2))
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    _IOAVStringAppendIndendationAndFormat(v6, a3 + 1, @"Downspread:    %s\n", v9);
    if (*(a2 + 3))
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    _IOAVStringAppendIndendationAndFormat(v6, a3 + 1, @"Fast:          %s\n", v10);
    if (*(a2 + 5))
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    _IOAVStringAppendIndendationAndFormat(v6, a3 + 1, @"FEC:           %s\n", v11);
    if (*(a2 + 6))
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    _IOAVStringAppendIndendationAndFormat(v6, a3 + 1, @"PSR:           %s\n", v12);
    if (*(a2 + 8))
    {
      v13 = 0;
      v14 = (a2 + 28);
      do
      {
        _IOAVStringAppendIndendationAndFormat(v6, a3 + 1, @"Lane %d:\n\n", v13);
        _IOAVStringAppendIndendationAndFormat(v6, a3 + 2, @"Swing Voltage: %d\n", *(v14 - 1));
        v15 = *v14;
        v14 += 3;
        _IOAVStringAppendIndendationAndFormat(v6, a3 + 2, @"Pre-emphasis:  %d\n", v15);
        _IOAVStringAppendIndendationAndFormat(v6, a3 + 1, @"\n");
        ++v13;
      }

      while (v13 < *(a2 + 8));
    }

    _IOAVStringAppendIndendationAndFormat(v6, a3, @"\n");
  }

  return v6;
}

uint64_t IOAVAudioInterfaceGetTypeID()
{
  result = __kIOAVAudioInterfaceTypeID;
  if (!__kIOAVAudioInterfaceTypeID)
  {
    pthread_once(&__interfaceTypeInit_0, __IOAVAudioInterfaceRegister);
    return __kIOAVAudioInterfaceTypeID;
  }

  return result;
}

uint64_t __IOAVAudioInterfaceRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOAVAudioInterfaceTypeID = result;
  return result;
}

uint64_t IOAVAudioInterfaceCreate(uint64_t a1)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IOAVCopyFirstMatchingIOAVObjectOfType("IOAVAudioInterface", IOAVAudioInterfaceCreateWithService, 0, 2u, -1);
  }

  else
  {
    return 0;
  }
}

io_connect_t *IOAVAudioInterfaceGetService(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result)
  {
    parent = 0;
    if (IORegistryEntryGetParentEntry(*(a1 + 16), "IOService", &parent))
    {
      result = IOAVServiceCreateWithService(*MEMORY[0x1E695E480], parent);
      *(a1 + 32) = result;
    }

    else
    {
      return *(a1 + 32);
    }
  }

  return result;
}

uint64_t IOAVAudioInterfaceSetLogLevel(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 0, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVAudioInterfaceSetLogLevelMask(uint64_t a1, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  result = IOConnectCallMethod(*(a1 + 20), 1u, input, 2u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef IOAVAudioInterfaceCopyElements(uint64_t a1)
{
  cf = 0;
  v1 = IOAVConnectCallCopyMethod(*(a1 + 20), 5u, &cf);
  result = 0;
  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = cf == 0;
  }

  if (!v3)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFArrayGetTypeID())
    {
      return cf;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef IOAVAudioInterfaceCopyChannelLayoutElements(uint64_t a1)
{
  cf = 0;
  v1 = IOAVConnectCallCopyMethod(*(a1 + 20), 6u, &cf);
  result = 0;
  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = cf == 0;
  }

  if (!v3)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFArrayGetTypeID())
    {
      return cf;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOAVAudioInterfaceGetLinkData(uint64_t a1, void *outputStruct)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = 0;
  v4 = 32;
  result = IOConnectCallMethod(*(a1 + 20), 2u, input, 1u, 0, 0, 0, 0, outputStruct, &v4);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVAudioInterfaceGetLinkDataWithSource(uint64_t a1, void *outputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a3;
  v5 = 32;
  result = IOConnectCallMethod(*(a1 + 20), 2u, input, 1u, 0, 0, 0, 0, outputStruct, &v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVAudioInterfaceStartLink(uint64_t a1, void *inputStruct)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = 0;
  result = IOConnectCallMethod(v2, 3u, input, 1u, inputStruct, 0x20uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVAudioInterfaceStopLink(uint64_t a1, void *inputStruct)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = 0;
  result = IOConnectCallMethod(v2, 4u, input, 1u, inputStruct, 0x20uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVAudioInterfaceStartLinkWithSource(uint64_t a1, void *inputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 20);
  input[0] = a3;
  result = IOConnectCallMethod(v3, 3u, input, 1u, inputStruct, 0x20uLL, 0, 0, 0, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVAudioInterfaceStopLinkWithSource(uint64_t a1, void *inputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 20);
  input[0] = a3;
  result = IOConnectCallMethod(v3, 4u, input, 1u, inputStruct, 0x20uLL, 0, 0, 0, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __IOAVAudioInterfaceFree(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    IOServiceClose(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t IOAVControllerGetTypeID()
{
  result = __kIOAVControllerTypeID;
  if (!__kIOAVControllerTypeID)
  {
    pthread_once(&__controllerTypeInit_1, __IOAVControllerRegister);
    return __kIOAVControllerTypeID;
  }

  return result;
}

uint64_t __IOAVControllerRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOAVControllerTypeID = result;
  return result;
}

uint64_t IOAVControllerCreate(uint64_t a1)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IOAVCopyFirstMatchingIOAVObjectOfType("IOAVController", IOAVControllerCreateWithService, 0, 0, -1);
  }

  else
  {
    return 0;
  }
}

uint64_t IOAVControllerCreateWithLocation(uint64_t a1, unsigned int a2)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IOAVCopyFirstMatchingIOAVObjectOfType("IOAVController", IOAVControllerCreateWithService, 0, a2, -1);
  }

  else
  {
    return 0;
  }
}

uint64_t IOAVControllerSetPower(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 6u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVControllerSetLogLevel(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 0, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVControllerSetLogLevelMask(uint64_t a1, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  result = IOConnectCallMethod(*(a1 + 20), 1u, input, 2u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVControllerSetEventLogCommandMask(uint64_t a1, uint64_t a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 3u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVControllerSetEventLogEventMask(uint64_t a1, uint64_t a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 4u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVControllerSetEventLogSize(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 2u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVControllerSetVirtualDeviceMode(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 8u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVControllerGetCRCData(uint64_t a1, unsigned int a2, void *outputStruct)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  v5 = 16;
  result = IOConnectCallMethod(*(a1 + 20), 0xCu, input, 1u, 0, 0, 0, 0, outputStruct, &v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IOAVControllerFree(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    IOServiceClose(v2);
  }

  result = *(a1 + 16);
  if (result)
  {

    return IOObjectRelease(result);
  }

  return result;
}

uint64_t IOAVDeviceGetTypeID()
{
  result = __kIOAVDeviceTypeID;
  if (!__kIOAVDeviceTypeID)
  {
    pthread_once(&__deviceTypeInit_0, __IOAVDeviceRegister);
    return __kIOAVDeviceTypeID;
  }

  return result;
}

uint64_t __IOAVDeviceRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOAVDeviceTypeID = result;
  return result;
}

uint64_t IOAVDeviceCreate(uint64_t a1)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IOAVCopyFirstMatchingIOAVObjectOfType("IOAVDevice", IOAVDeviceCreateWithService, 0, 0, -1);
  }

  else
  {
    return 0;
  }
}

uint64_t IOAVDeviceCreateWithLocation(uint64_t a1, unsigned int a2)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IOAVCopyFirstMatchingIOAVObjectOfType("IOAVDevice", IOAVDeviceCreateWithService, 0, a2, -1);
  }

  else
  {
    return 0;
  }
}

io_connect_t *IOAVDeviceGetController(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result)
  {
    parent = 0;
    if (IORegistryEntryGetParentEntry(*(a1 + 16), "IOService", &parent))
    {
      result = IOAVControllerCreateWithService(*MEMORY[0x1E695E480], parent);
      *(a1 + 32) = result;
    }

    else
    {
      return *(a1 + 32);
    }
  }

  return result;
}

uint64_t IOAVDeviceSetLogLevel(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 0, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVDeviceSetLogLevelMask(uint64_t a1, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  result = IOConnectCallMethod(*(a1 + 20), 1u, input, 2u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVDeviceSetEventLogCommandMask(uint64_t a1, uint64_t a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 3u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVDeviceSetEventLogEventMask(uint64_t a1, uint64_t a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 4u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVDeviceSetEventLogSize(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 2u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVDeviceReadI2C(uint64_t a1, unsigned int a2, unsigned int a3, void *outputStruct, unsigned int a5)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  v7 = a5;
  if (a5 <= 0x1000)
  {
    result = IOConnectCallMethod(*(a1 + 20), 6u, input, 2u, 0, 0, 0, 0, outputStruct, &v7);
  }

  else
  {
    result = 3758097090;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVDeviceWriteI2C(uint64_t a1, unsigned int a2, unsigned int a3, void *inputStruct, size_t inputStructCnt)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  if (inputStructCnt <= 0x1000)
  {
    result = IOConnectCallMethod(*(a1 + 20), 7u, input, 2u, inputStruct, inputStructCnt, 0, 0, 0, 0);
  }

  else
  {
    result = 3758097090;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVDeviceGetLinkData(uint64_t a1, unsigned int a2, void *outputStruct)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  v5 = 272;
  result = IOConnectCallMethod(*(a1 + 20), 8u, input, 1u, 0, 0, 0, 0, outputStruct, &v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __IOAVDeviceFree(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    IOServiceClose(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t IOAVDisplayMemoryGetTypeID()
{
  result = __kIOAVDisplayMemoryTypeID;
  if (!__kIOAVDisplayMemoryTypeID)
  {
    pthread_once(&__serviceTypeInit_1, __IOAVDisplayMemoryRegister);
    return __kIOAVDisplayMemoryTypeID;
  }

  return result;
}

uint64_t __IOAVDisplayMemoryRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOAVDisplayMemoryTypeID = result;
  return result;
}

uint64_t IOAVDisplayMemoryRead(uint64_t a1, unsigned int a2, void *outputStruct, unsigned int a4)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  v6 = a4;
  result = IOConnectCallMethod(*(a1 + 20), 0, input, 1u, 0, 0, 0, 0, outputStruct, &v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVDisplayMemoryWrite(uint64_t a1, unsigned int a2, void *inputStruct, size_t inputStructCnt)
{
  input[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v4, 1u, input, 1u, inputStruct, inputStructCnt, 0, 0, 0, 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVDisplayMemoryRead64(uint64_t a1, uint64_t a2, void *outputStruct, unsigned int a4)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  v6 = a4;
  result = IOConnectCallMethod(*(a1 + 20), 2u, input, 1u, 0, 0, 0, 0, outputStruct, &v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVDisplayMemoryWrite64(uint64_t a1, uint64_t a2, void *inputStruct, size_t inputStructCnt)
{
  input[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v4, 3u, input, 1u, inputStruct, inputStructCnt, 0, 0, 0, 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IOAVDisplayMemoryFree(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    IOServiceClose(v2);
  }

  result = *(a1 + 16);
  if (result)
  {

    return IOObjectRelease(result);
  }

  return result;
}

void _IOAVStringAppendIndendationAndFormat(CFMutableStringRef theString, int a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a2)
  {
    v5 = a2;
    do
    {
      CFStringAppend(theString, @"    ");
      --v5;
    }

    while (v5);
  }

  CFStringAppendFormatAndArguments(theString, 0, format, va);
}

__CFString *IOAVCreateDiagnosticsStringWithLocation(const __CFAllocator *a1, unsigned int a2)
{
  Mutable = CFStringCreateMutable(a1, 0);
  if (Mutable)
  {
    v5 = IOAVControllerCreateWithLocation(a1, a2);
    if (v5)
    {
      v6 = v5;
      v7 = IOAVControllerCopyDiagnosticsString();
      if (v7)
      {
        v8 = v7;
        CFStringAppend(Mutable, v7);
        CFRelease(v8);
      }

      CFRelease(v6);
    }

    v9 = IOAVDeviceCreateWithLocation(a1, a2);
    if (v9)
    {
      v10 = v9;
      v11 = IOAVDeviceCopyDiagnosticsString();
      if (v11)
      {
        v12 = v11;
        CFStringAppend(Mutable, v11);
        CFRelease(v12);
      }

      CFRelease(v10);
    }

    v13 = IOAVServiceCreate(a1);
    if (v13)
    {
      v14 = v13;
      v15 = IOAVServiceCopyDiagnosticsString();
      if (v15)
      {
        v16 = v15;
        CFStringAppend(Mutable, v15);
        CFRelease(v16);
      }

      CFRelease(v14);
    }

    v17 = IOAVAudioInterfaceCreate(a1);
    if (v17)
    {
      v18 = v17;
      v19 = IOAVAudioInterfaceCopyDiagnosticsString();
      if (v19)
      {
        v20 = v19;
        CFStringAppend(Mutable, v19);
        CFRelease(v20);
      }

      CFRelease(v18);
    }

    v21 = IOAVVideoInterfaceCreate(a1);
    if (v21)
    {
      v22 = v21;
      v23 = IOAVVideoInterfaceCopyDiagnosticsString();
      if (v23)
      {
        v24 = v23;
        CFStringAppend(Mutable, v23);
        CFRelease(v24);
      }

      CFRelease(v22);
    }
  }

  return Mutable;
}

__CFDictionary *IOAVCreateDiagnosticsReferenceWithLocation(const __CFAllocator *a1, unsigned int a2)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = IOAVControllerCreateWithLocation(a1, a2);
    if (v5)
    {
      v6 = v5;
      v7 = IOAVControllerCopyProperties(v5);
      if (v7)
      {
        v8 = v7;
        CFDictionarySetValue(Mutable, @"IOAVController", v7);
        CFRelease(v8);
      }

      CFRelease(v6);
    }

    v9 = IOAVDeviceCreateWithLocation(a1, a2);
    if (v9)
    {
      v10 = v9;
      v11 = IOAVDeviceCopyProperties(v9);
      if (v11)
      {
        v12 = v11;
        CFDictionarySetValue(Mutable, @"IOAVDevice", v11);
        CFRelease(v12);
      }

      CFRelease(v10);
    }

    v13 = IOAVServiceCreate(a1);
    if (v13)
    {
      v14 = v13;
      v15 = IOAVServiceCopyProperties(v13);
      if (v15)
      {
        v16 = v15;
        CFDictionarySetValue(Mutable, @"IOAVService", v15);
        CFRelease(v16);
      }

      CFRelease(v14);
    }

    v17 = IOAVAudioInterfaceCreate(a1);
    if (v17)
    {
      v18 = v17;
      v19 = IOAVAudioInterfaceCopyProperties(v17);
      if (v19)
      {
        v20 = v19;
        CFDictionarySetValue(Mutable, @"IOAVAudioInterface", v19);
        CFRelease(v20);
      }

      CFRelease(v18);
    }

    v21 = IOAVVideoInterfaceCreate(a1);
    if (v21)
    {
      v22 = v21;
      v23 = IOAVVideoInterfaceCopyProperties(v21);
      if (v23)
      {
        v24 = v23;
        CFDictionarySetValue(Mutable, @"IOAVVideoInterface", v23);
        CFRelease(v24);
      }

      CFRelease(v22);
    }

    v25 = IOAVControlInterfaceCreate(a1);
    if (v25)
    {
      v26 = v25;
      v27 = IOAVControlInterfaceCopyProperties(v25);
      if (v27)
      {
        v28 = v27;
        CFDictionarySetValue(Mutable, @"IOAVControlInterface", v27);
        CFRelease(v28);
      }

      CFRelease(v26);
    }
  }

  return Mutable;
}

__CFString *IOAVCreateStringWithVideoLinkData(const __CFAllocator *a1, unsigned __int8 *a2, int a3, char a4)
{
  Mutable = CFStringCreateMutable(a1, 0);
  v9 = Mutable;
  if (Mutable)
  {
    if (a4)
    {
      v10 = *(a2 + 10);
      v11 = vcvtd_n_f64_s32(*(a2 + 24), 0x10uLL);
      v12 = *(a2 + 12);
      v13 = *(a2 + 20);
      v14 = *(a2 + 2);
      v15 = IOAVVideoColorDynamicRangeString(*(a2 + 4));
      v16 = IOAVVideoPixelEncodingString(*(a2 + 3));
      v26 = IOAVVideoColorimetryString(*(a2 + 5));
      v27 = IOAVVideoColorEOTFString(*(a2 + 6));
      v17 = 112;
      if (v10)
      {
        v17 = 105;
      }

      CFStringAppendFormat(v9, 0, @"%dx%d%c %.3f Hz, %dbpc %s Range %s, %s colorimetry, %s EOTF", v12, v13, v17, *&v11, v14, v15, v16, v26, v27);
      if (*(a2 + 1))
      {
        if (*(a2 + 63))
        {
          v18 = @", DSC (%f bpp, passthrough)";
        }

        else
        {
          v18 = @", DSC (%f bpp, decompress)";
        }

        CFStringAppendFormat(v9, 0, v18, vcvtd_n_f64_u32(*(a2 + 62), 4uLL));
      }
    }

    else
    {
      _IOAVStringAppendIndendationAndFormat(Mutable, a3, @"Video Link Data:\n\n");
      v19 = IOAVCreateStringWithVideoTimingData(a1, (a2 + 40), a3 + 1);
      if (v19)
      {
        v20 = v19;
        CFStringAppend(v9, v19);
        CFRelease(v20);
      }

      v21 = IOAVCreateStringWithVideoColorData(a1, a2 + 2, a3 + 1);
      if (v21)
      {
        v22 = v21;
        CFStringAppend(v9, v21);
        CFRelease(v22);
      }

      if (*(a2 + 1))
      {
        if (*(a2 + 63))
        {
          v23 = @"DSC:          YES (%f bpp, passthrough)\n";
        }

        else
        {
          v23 = @"DSC:          YES (%f bpp, decompress)\n";
        }

        _IOAVStringAppendIndendationAndFormat(v9, a3 + 1, v23, vcvtd_n_f64_u32(*(a2 + 62), 4uLL));
      }

      else
      {
        _IOAVStringAppendIndendationAndFormat(v9, a3 + 1, @"DSC:          NO\n");
      }

      _IOAVStringAppendIndendationAndFormat(v9, a3 + 1, @"Link ID:      %u\n", *(a2 + 30) & 0xFFF);
      v24 = IOAVVideoLinkModeString(*a2);
      _IOAVStringAppendIndendationAndFormat(v9, a3 + 1, @"Link Mode:    %s\n", v24);
      _IOAVStringAppendIndendationAndFormat(v9, a3 + 1, @"Test Mode:    %d\n", *(a2 + 1));
      _IOAVStringAppendIndendationAndFormat(v9, a3, @"\n");
    }
  }

  return v9;
}

__CFString *IOAVCreateStringWithVideoTimingData(const __CFAllocator *a1, uint64_t a2, int a3)
{
  Mutable = CFStringCreateMutable(a1, 0);
  PixelClock = IOAVVideoTimingGetPixelClock(a2, 0);
  if (Mutable)
  {
    v7 = PixelClock;
    _IOAVStringAppendIndendationAndFormat(Mutable, a3, @"Timing Attributes:\n");
    _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"Horizontal:    Total: %5u Active: %5u FrontPorch: %4u SyncWidth: %3u BackPorch: %3u SyncPolarity: %u PixelRepetition: %u SyncRate: %10.6f kHz\n", *(a2 + 4), *(a2 + 8), *(a2 + 20), *(a2 + 12), *(a2 + 16), *(a2 + 28), *(a2 + 32), vcvtd_n_f64_s32(*(a2 + 24), 0x10uLL));
    _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"Vertical:      Total: %5u Active: %5u FrontPorch: %4u SyncWidth: %3u BackPorch: %3u SyncPolarity: %u PixelRepetition: %u SyncRate: %10.6f Hz\n", *(a2 + 36), *(a2 + 40), *(a2 + 52), *(a2 + 44), *(a2 + 48), *(a2 + 60), *(a2 + 64), vcvtd_n_f64_s32(*(a2 + 56), 0x10uLL));
    if (*a2)
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"Interlaced:    %s\n", v8);
    if ((*a2 & 2) != 0)
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"Split:         %s\n", v9);
    _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"Pixel Clock:   %f Mhz (%u Hz)\n", v7 / 1000000.0, v7);
    v10 = IOAVVideoScanInformationString(*(a2 + 76));
    _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"Scan Type:     %s\n", v10);
    _IOAVStringAppendIndendationAndFormat(Mutable, a3, @"\n");
  }

  return Mutable;
}

__CFString *IOAVCreateStringWithVideoColorData(const __CFAllocator *a1, unsigned int *a2, int a3)
{
  Mutable = CFStringCreateMutable(a1, 0);
  v6 = Mutable;
  if (Mutable)
  {
    _IOAVStringAppendIndendationAndFormat(Mutable, a3, @"Color Attributes:\n");
    v7 = *a2;
    v8 = IOAVVideoPixelEncodingString(a2[1]);
    v9 = IOAVVideoColorDynamicRangeString(a2[2]);
    v10 = IOAVVideoColorimetryString(a2[3]);
    v11 = IOAVVideoColorEOTFString(a2[4]);
    _IOAVStringAppendIndendationAndFormat(v6, a3 + 1, @"Depth: [%d bpc] Encoding: [%s] Range: [%s] Colorimetry: [%s] EOTF: [%s] DSC: [%s]\n", v7, v8, v9, v10, v11, IOAVCreateStringWithVideoColorData_dscMethods[a2[5] & 3]);
    _IOAVStringAppendIndendationAndFormat(v6, a3, @"\n");
  }

  return v6;
}

__CFString *__IOAVCreateStringWithAudioLinkData(const __CFAllocator *a1, unsigned int *a2, int a3, int a4, char a5)
{
  Mutable = CFStringCreateMutable(a1, 0);
  v11 = Mutable;
  if (Mutable)
  {
    if (a5)
    {
      LODWORD(v10) = a2[3];
      v12 = *a2;
      v13 = a2[1];
      v14 = a2[2];
      v15 = v10 / 1000.0;
      v16 = IOAVAudioFormatString(v12);
      CFStringAppendFormat(v11, 0, @"%g kHz %dch %d-bit %s", *&v15, v13, v14, v16);
    }

    else
    {
      v22 = 0;
      memset(&v21, 0, 32);
      _IOAVStringAppendIndendationAndFormat(Mutable, a3, @"Audio Link Data:\n");
      v17 = IOAVAudioFormatString(*a2);
      _IOAVStringAppendIndendationAndFormat(v11, a3 + 1, @"Format: %s Channels: %d SampleSize: %d SampleRate: %d hz\n", v17, a2[1], a2[2], a2[3]);
      if (a4)
      {
        _IOAVStringAppendIndendationAndFormat(v11, a3 + 1, @"Layout:\n");
        IOAVAudioGetChannelLayoutData(a2[5], &v21);
        if (v21.n128_u32[0])
        {
          v18 = 0;
          do
          {
            v19 = IOAVAudioSpeakerString(v21.n128_u32[v18 + 2]);
            _IOAVStringAppendIndendationAndFormat(v11, a3 + 2, @"Channel %d: %s\n", v18++, v19);
          }

          while (v18 < v21.n128_u32[0]);
        }
      }

      _IOAVStringAppendIndendationAndFormat(v11, a3, @"\n");
    }
  }

  return v11;
}

__CFString *IOAVCreateStringWithAudioChannelLayoutData(const __CFAllocator *a1, unsigned int *a2, int a3)
{
  Mutable = CFStringCreateMutable(a1, 0);
  v6 = Mutable;
  if (Mutable)
  {
    _IOAVStringAppendIndendationAndFormat(Mutable, a3, @"Audio Channel Layout Data:\n\n");
    _IOAVStringAppendIndendationAndFormat(v6, a3 + 1, @"Total Channels: %d Active Channels: %d\n", *a2, a2[1]);
    _IOAVStringAppendIndendationAndFormat(v6, a3 + 1, @"Layout:\n");
    if (*a2)
    {
      v7 = 0;
      do
      {
        v8 = IOAVAudioSpeakerString(a2[v7 + 2]);
        _IOAVStringAppendIndendationAndFormat(v6, a3 + 2, @"Channel %d: %s\n", v7++, v8);
      }

      while (v7 < *a2);
    }

    _IOAVStringAppendIndendationAndFormat(v6, a3, @"\n");
  }

  return v6;
}

const __CFDictionary *_IOAVElementListGetElementIDAtIndex(const __CFArray *a1, CFIndex a2)
{
  result = CFArrayGetValueAtIndex(a1, a2);
  if (result)
  {

    return CFDictionaryGetValue(result, @"ID");
  }

  return result;
}

__CFString *_IOAVCreateStringOfColorIDs(const __CFAllocator *a1, CFDictionaryRef theDict, void *key, int a4, uint64_t (*a5)(const __CFArray *, uint64_t))
{
  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    return 0;
  }

  v11 = Value;
  Mutable = CFStringCreateMutable(a1, 0);
  if (Mutable)
  {
    Count = CFArrayGetCount(v11);
    if (Count)
    {
      v14 = Count;
      v15 = CFDictionaryGetValue(theDict, @"UnsafeColorElementIDs");
      theArray = v15;
      if (v15)
      {
        v16 = CFArrayGetCount(v15);
      }

      else
      {
        v16 = 0;
      }

      _IOAVStringAppendIndendationAndFormat(Mutable, a4, @"%@:", key);
      if (v14 >= 1)
      {
        for (i = 0; i != v14; ++i)
        {
          valuePtr = 0;
          if ((i & 0xF) == 0 && i + 1 < v14)
          {
            CFStringAppend(Mutable, @"\n");
            _IOAVStringAppendIndendationAndFormat(Mutable, a4 + 1, &stru_1F0B93200);
          }

          v18 = a5(v11, i);
          if (v18)
          {
            v19 = v18;
            v20 = CFGetTypeID(v18);
            if (v20 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v19, kCFNumberSInt64Type, &valuePtr);
              v21 = valuePtr;
              if (v16)
              {
                v26.location = 0;
                v26.length = v16;
                if (CFArrayContainsValue(theArray, v26, v19))
                {
                  v22 = 42;
                }

                else
                {
                  v22 = 32;
                }
              }

              else
              {
                v22 = 32;
              }

              CFStringAppendFormat(Mutable, 0, @"%3lld%c ", v21, v22);
            }
          }
        }
      }

      CFStringAppend(Mutable, @"\n");
    }
  }

  return Mutable;
}

__CFString *IOAVCreateStringWithElement(const __CFAllocator *a1, const __CFDictionary *a2, int a3)
{
  Mutable = CFStringCreateMutable(a1, 0);
  if (!Mutable)
  {
    return Mutable;
  }

  Value = CFDictionaryGetValue(a2, @"ElementType");
  if (!Value)
  {
    return Mutable;
  }

  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v8 = IOAVElementTypeString(valuePtr);
  _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"%s Element\n", v8);
  _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"------------------------\n");
  if (a2)
  {
    *buffer = 0;
    v9 = CFDictionaryGetValue(a2, @"ID");
    if (v9)
    {
      CFNumberGetValue(v9, kCFNumberSInt64Type, buffer);
      _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"%s: %lld\n", "ID", *buffer);
    }

    *buffer = 0;
    v10 = CFDictionaryGetValue(a2, @"Score");
    if (v10)
    {
      CFNumberGetValue(v10, kCFNumberSInt64Type, buffer);
      _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"%s: %lld\n", "Score", *buffer);
    }

    v11 = CFDictionaryGetValue(a2, @"IsVirtual");
    v12 = MEMORY[0x1E695E4D0];
    if (v11)
    {
      if (v11 == *MEMORY[0x1E695E4D0])
      {
        v13 = "YES";
      }

      else
      {
        v13 = "NO";
      }

      _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"%s: %s\n", "IsVirtual", v13);
    }

    v14 = CFDictionaryGetValue(a2, @"IsPreferred");
    if (v14)
    {
      if (v14 == *v12)
      {
        v15 = "YES";
      }

      else
      {
        v15 = "NO";
      }

      _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"%s: %s\n", "IsPreferred", v15);
    }

    v16 = CFDictionaryGetValue(a2, @"IsPromoted");
    if (v16)
    {
      if (v16 == *v12)
      {
        v17 = "YES";
      }

      else
      {
        v17 = "NO";
      }

      _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"%s: %s\n", "IsPromoted", v17);
    }
  }

  if (valuePtr > 1)
  {
    if (valuePtr == 3)
    {
      *&v68 = 0;
      *buffer = 0u;
      v67 = 0u;
      v64 = CFDictionaryGetValue(a2, @"ElementData");
      if (!v64)
      {
        return Mutable;
      }

      v77.location = 0;
      v77.length = 40;
      CFDataGetBytes(v64, v77, buffer);
      v63 = IOAVCreateStringWithAudioChannelLayoutData(a1, buffer, a3 + 1);
      goto LABEL_87;
    }

    if (valuePtr == 2)
    {
      *buffer = 0u;
      v67 = 0u;
      v72 = 0;
      v26 = CFDictionaryGetValue(a2, @"ElementData");
      if (v26)
      {
        v75.location = 0;
        v75.length = 32;
        CFDataGetBytes(v26, v75, buffer);
        v27 = __IOAVCreateStringWithAudioLinkData(a1, buffer, a3 + 1, 0, 0);
        v28 = CFDictionaryGetValue(a2, @"AudioChannelLayoutElements");
        if (v28)
        {
          v29 = v28;
          Count = CFArrayGetCount(v28);
          if (Count)
          {
            v31 = Count;
            _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"%s: ", "AudioChannelLayoutElements");
            if (v31 >= 1)
            {
              for (i = 0; i != v31; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v29, i);
                v71 = 0;
                if (ValueAtIndex)
                {
                  v34 = CFDictionaryGetValue(ValueAtIndex, @"ID");
                  if (v34)
                  {
                    CFNumberGetValue(v34, kCFNumberSInt64Type, &v71);
                    _IOAVStringAppendIndendationAndFormat(Mutable, 1, @"%lld ", v71);
                  }
                }
              }
            }

            CFStringAppend(Mutable, @"\n");
          }
        }

        v35 = CFDictionaryGetValue(a2, @"StreamSampleRate");
        if (v35)
        {
          CFNumberGetValue(v35, kCFNumberIntType, &v72 + 4);
        }

        v36 = CFDictionaryGetValue(a2, @"MaxChannelCount");
        if (v36)
        {
          CFNumberGetValue(v36, kCFNumberIntType, &v72);
        }

        _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"Audio Stream Data:\n");
        v37 = IOAVAudioFormatString(*buffer);
        _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 2, @"Format: %s Channels: %d SampleSize: %d SampleRate: %d hz\n", v37, v72, *&buffer[8], HIDWORD(v72));
        if (v27)
        {
          goto LABEL_88;
        }
      }

      return Mutable;
    }

    goto LABEL_51;
  }

  if (!valuePtr)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    *buffer = 0u;
    v38 = CFDictionaryGetValue(a2, @"ElementData");
    if (!v38)
    {
      return Mutable;
    }

    v76.location = 0;
    v76.length = 80;
    CFDataGetBytes(v38, v76, buffer);
    v39 = IOAVCreateStringWithVideoTimingData(a1, buffer, a3 + 1);
    if (a2)
    {
      LODWORD(v71) = 0;
      v40 = CFDictionaryGetValue(a2, @"StandardType");
      if (v40)
      {
        CFNumberGetValue(v40, kCFNumberSInt32Type, &v71);
        v41 = IOAVStandardTypeString(v71);
        _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"%s: %s\n", "StandardType", v41);
      }

      LODWORD(v71) = 0;
      v42 = CFDictionaryGetValue(a2, @"TimingType");
      if (v42)
      {
        CFNumberGetValue(v42, kCFNumberSInt32Type, &v71);
        v43 = IOAVVideoTimingTypeString(v71);
        _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"%s: %s\n", "TimingType", v43);
      }

      LODWORD(v71) = 0;
      v44 = CFDictionaryGetValue(a2, @"TimingStandard");
      if (v44)
      {
        CFNumberGetValue(v44, kCFNumberSInt32Type, &v71);
        v45 = IOAVVideoTimingStandardString(v71);
        _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"%s: %s\n", "TimingStandard", v45);
      }

      v71 = 0;
      v46 = CFDictionaryGetValue(a2, @"CEAShortID");
      if (v46)
      {
        CFNumberGetValue(v46, kCFNumberSInt64Type, &v71);
        _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"%s: %lld\n", "CEAShortID", v71);
      }

      LODWORD(v71) = 0;
      v47 = CFDictionaryGetValue(a2, @"AspectRatio");
      if (v47)
      {
        CFNumberGetValue(v47, kCFNumberSInt32Type, &v71);
        v48 = IOAVVideoAspectRatioString(v71);
        _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"%s: %s\n", "AspectRatio", v48);
      }

      v71 = 0;
      v49 = CFDictionaryGetValue(a2, @"PreciseAspectRatio");
      if (v49)
      {
        CFNumberGetValue(v49, kCFNumberSInt64Type, &v71);
        LOWORD(v50) = v71;
        if (v71 < 0)
        {
          v50 = -v71;
        }

        _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"%s: %lld.%0*lld\n", "PreciseAspectRatio", v71 / 0x10000, 3, (1000 * v50) >> 16);
      }
    }

    _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"%s:\n", "ValidPixelEncodings");
    v51 = CFDictionaryGetValue(a2, @"ValidPixelEncodings");
    if (v51)
    {
      LODWORD(v71) = 0;
      CFNumberGetValue(v51, kCFNumberIntType, &v71);
      for (j = 0; j != 15; ++j)
      {
        if ((v71 >> j))
        {
          v53 = IOAVVideoPixelEncodingString(j);
          _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 2, @"%s\n", v53);
        }
      }
    }

    v54 = _IOAVCreateStringOfColorIDs(a1, a2, @"ColorModes", a3 + 1, _IOAVElementListGetElementIDAtIndex);
    if (v54)
    {
      v55 = v54;
      CFStringAppend(Mutable, v54);
      CFRelease(v55);
    }

    v56 = _IOAVCreateStringOfColorIDs(a1, a2, @"DSCRequiredColorElementIDs", a3 + 1, MEMORY[0x1E695D730]);
    if (v56)
    {
      v57 = v56;
      CFStringAppend(Mutable, v56);
      CFRelease(v57);
    }

    if (v39)
    {
      CFStringAppend(Mutable, v39);
      CFRelease(v39);
    }

    v58 = CFDictionaryGetValue(a2, @"DownstreamFormat");
    if (v58)
    {
      v59 = v58;
      _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"%s:\n\n", "DownstreamFormat");
      v60 = IOAVCreateStringWithElement(a1, v59, (a3 + 1));
      if (v60)
      {
        v61 = v60;
        CFStringAppend(Mutable, v60);
        CFRelease(v61);
      }
    }

    v62 = CFDictionaryGetValue(a2, @"UpstreamFormat");
    if (!v62)
    {
      return Mutable;
    }

    v24 = v62;
    v25 = "UpstreamFormat";
    goto LABEL_84;
  }

  if (valuePtr != 1)
  {
LABEL_51:
    CFShow(a2);
    return Mutable;
  }

  *buffer = 0u;
  v67 = 0u;
  if (a2)
  {
    LODWORD(v71) = 0;
    v18 = CFDictionaryGetValue(a2, @"StandardType");
    if (v18)
    {
      CFNumberGetValue(v18, kCFNumberSInt32Type, &v71);
      v19 = IOAVStandardTypeString(v71);
      _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"%s: %s\n", "StandardType", v19);
    }
  }

  v20 = CFDictionaryGetValue(a2, @"ElementData");
  if (!v20)
  {
    return Mutable;
  }

  v74.location = 0;
  v74.length = 32;
  CFDataGetBytes(v20, v74, buffer);
  v21 = IOAVCreateStringWithVideoColorData(a1, buffer, a3 + 1);
  if (!v21)
  {
    return Mutable;
  }

  v22 = v21;
  CFStringAppend(Mutable, v21);
  CFRelease(v22);
  v23 = CFDictionaryGetValue(a2, @"DownstreamFormat");
  if (!v23)
  {
    return Mutable;
  }

  v24 = v23;
  v25 = "DownstreamFormat";
LABEL_84:
  _IOAVStringAppendIndendationAndFormat(Mutable, a3 + 1, @"%s:\n\n", v25);
  v63 = IOAVCreateStringWithElement(a1, v24, (a3 + 1));
LABEL_87:
  v27 = v63;
  if (v63)
  {
LABEL_88:
    CFStringAppend(Mutable, v27);
    CFStringAppend(Mutable, @"\n");
    CFRelease(v27);
  }

  return Mutable;
}

__CFString *IOAVCreateStringWithElements(const __CFAllocator *a1, const __CFArray *a2, int a3)
{
  Mutable = CFStringCreateMutable(a1, 0);
  if (Mutable)
  {
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        if (ValueAtIndex)
        {
          v11 = ValueAtIndex;
          v12 = CFGetTypeID(ValueAtIndex);
          if (v12 == CFDictionaryGetTypeID())
          {
            v13 = IOAVCreateStringWithElement(a1, v11, a3);
            if (v13)
            {
              v14 = v13;
              CFStringAppend(Mutable, v13);
              CFRelease(v14);
            }
          }
        }
      }
    }
  }

  return Mutable;
}

__CFString *IOAVCreateStringWithData(const __CFAllocator *a1, const __CFData *a2, int a3)
{
  Mutable = CFStringCreateMutable(a1, 0);
  if (Mutable)
  {
    Length = CFDataGetLength(a2);
    v7 = Length;
    if (Length)
    {
      v8 = 0;
      v9 = Length;
      do
      {
        v10 = v9;
        if (v9 >= 0x10uLL)
        {
          v10 = 16;
        }

        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        v12 = v8;
        _IOAVStringAppendIndendationAndFormat(Mutable, a3, @"%08x: ", v8);
        v13 = v12;
        do
        {
          BytePtr = CFDataGetBytePtr(a2);
          _IOAVStringAppendIndendationAndFormat(Mutable, a3, @"%02x ", BytePtr[v13++]);
          --v11;
        }

        while (v11);
        _IOAVStringAppendIndendationAndFormat(Mutable, a3, @"\n");
        v8 = (v12 + 16);
        v9 -= 16;
      }

      while (v8 < v7);
    }
  }

  return Mutable;
}

CFTypeID __IOAVPropertyListCreateWithCFProperties_block_invoke()
{
  _MergedGlobals_3 = CFBooleanGetTypeID();
  qword_1ED446AD8 = CFNumberGetTypeID();
  qword_1ED446AE0 = CFStringGetTypeID();
  qword_1ED446AE8 = CFDateGetTypeID();
  qword_1ED446AF0 = CFDataGetTypeID();
  qword_1ED446AF8 = CFArrayGetTypeID();
  qword_1ED446B00 = CFDictionaryGetTypeID();
  result = CFSetGetTypeID();
  qword_1ED446B08 = result;
  return result;
}

uint64_t IOAVServiceGetTypeID()
{
  result = __kIOAVServiceTypeID;
  if (!__kIOAVServiceTypeID)
  {
    pthread_once(&__serviceTypeInit_2, __IOAVServiceRegister);
    return __kIOAVServiceTypeID;
  }

  return result;
}

uint64_t __IOAVServiceRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOAVServiceTypeID = result;
  return result;
}

uint64_t IOAVServiceCreate(uint64_t a1)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IOAVCopyFirstMatchingIOAVObjectOfType("IOAVService", IOAVServiceCreateWithService, 0, 0, -1);
  }

  else
  {
    return 0;
  }
}

uint64_t IOAVServiceCreateWithLocation(uint64_t a1, unsigned int a2)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IOAVCopyFirstMatchingIOAVObjectOfType("IOAVService", IOAVServiceCreateWithService, 0, a2, -1);
  }

  else
  {
    return 0;
  }
}

io_connect_t *IOAVServiceGetDevice(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result)
  {
    parent = 0;
    if (IORegistryEntryGetParentEntry(*(a1 + 16), "IOService", &parent))
    {
      return *(a1 + 32);
    }

    else
    {
      result = IOAVDeviceCreateWithService(*MEMORY[0x1E695E480], parent);
      *(a1 + 32) = result;
    }
  }

  return result;
}

uint64_t IOAVServiceSetLogLevel(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 0, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceSetLogLevelMask(uint64_t a1, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  result = IOConnectCallMethod(*(a1 + 20), 1u, input, 2u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceSetEventLogCommandMask(uint64_t a1, uint64_t a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 3u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceSetEventLogEventMask(uint64_t a1, uint64_t a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 4u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceSetEventLogSize(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 2u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceSetVirtualEDIDMode(uint64_t a1, unsigned int a2, CFDataRef theData)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
  }

  else
  {
    BytePtr = 0;
    Length = 0;
  }

  result = IOConnectCallMethod(*(a1 + 20), 0x17u, input, 1u, BytePtr, Length, 0, 0, 0, 0);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceGetLinkData(uint64_t a1, unsigned int a2, void *outputStruct)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = 0;
  v5 = 272;
  result = IOConnectCallMethod(*(a1 + 20), 6u, input, 2u, 0, 0, 0, 0, outputStruct, &v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceGetLinkDataWithSource(uint64_t a1, unsigned int a2, void *outputStruct, unsigned int a4)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a4;
  v6 = 272;
  result = IOConnectCallMethod(*(a1 + 20), 6u, input, 2u, 0, 0, 0, 0, outputStruct, &v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceSetFRLMaxRate(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 0xAu, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceSetFRLMinRate(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 0xBu, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceSetFRLRecovery(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 0xEu, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceStartLink(uint64_t a1, void *inputStruct)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = 0;
  result = IOConnectCallMethod(v2, 0xFu, input, 1u, inputStruct, 0x110uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceStartLinkWithSource(uint64_t a1, void *inputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 20);
  input[0] = a3;
  result = IOConnectCallMethod(v3, 0xFu, input, 1u, inputStruct, 0x110uLL, 0, 0, 0, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceStopLink(uint64_t a1, void *inputStruct)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = 0;
  result = IOConnectCallMethod(v2, 0x10u, input, 1u, inputStruct, 0x110uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceStopLinkWithSource(uint64_t a1, void *inputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 20);
  input[0] = a3;
  result = IOConnectCallMethod(v3, 0x10u, input, 1u, inputStruct, 0x110uLL, 0, 0, 0, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceStartInfoFrame(uint64_t a1, void *inputStruct)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = 0;
  result = IOConnectCallMethod(v2, 0x11u, input, 1u, inputStruct, 0x20uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceStartInfoFrameWithSource(uint64_t a1, void *inputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 20);
  input[0] = a3;
  result = IOConnectCallMethod(v3, 0x11u, input, 1u, inputStruct, 0x20uLL, 0, 0, 0, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceStopInfoFrame(uint64_t a1, void *inputStruct)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = 0;
  result = IOConnectCallMethod(v2, 0x12u, input, 1u, inputStruct, 0x20uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceStopInfoFrameWithSource(uint64_t a1, void *inputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 20);
  input[0] = a3;
  result = IOConnectCallMethod(v3, 0x12u, input, 1u, inputStruct, 0x20uLL, 0, 0, 0, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceSetHDRStaticMetadata(uint64_t a1, const void *a2)
{
  v2 = *MEMORY[0x1E695E4C0];
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *MEMORY[0x1E695E4C0];
  }

  return IOAVConnectCallSetMethod(*(a1 + 20), 0x1Eu, v3);
}

uint64_t IOAVServiceSetContentProtectionSupportEnabled(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 0x1Bu, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceReadI2C(uint64_t a1, unsigned int a2, unsigned int a3, void *outputStruct, unsigned int a5)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  v7 = a5;
  if (a5 <= 0x1000)
  {
    result = IOConnectCallMethod(*(a1 + 20), 0x18u, input, 2u, 0, 0, 0, 0, outputStruct, &v7);
  }

  else
  {
    result = 3758097090;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVServiceWriteI2C(uint64_t a1, unsigned int a2, unsigned int a3, void *inputStruct, size_t inputStructCnt)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  if (inputStructCnt <= 0x1000)
  {
    result = IOConnectCallMethod(*(a1 + 20), 0x19u, input, 2u, inputStruct, inputStructCnt, 0, 0, 0, 0);
  }

  else
  {
    result = 3758097090;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __IOAVServiceFree(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    IOServiceClose(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t IOAVVideoInterfaceGetTypeID()
{
  result = __kIOAVVideoInterfaceTypeID;
  if (!__kIOAVVideoInterfaceTypeID)
  {
    pthread_once(&__interfaceTypeInit_1, __IOAVVideoInterfaceRegister);
    return __kIOAVVideoInterfaceTypeID;
  }

  return result;
}

uint64_t __IOAVVideoInterfaceRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOAVVideoInterfaceTypeID = result;
  return result;
}

uint64_t IOAVVideoInterfaceCreate(uint64_t a1)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IOAVCopyFirstMatchingIOAVObjectOfType("IOAVVideoInterface", IOAVVideoInterfaceCreateWithService, 0, 0, -1);
  }

  else
  {
    return 0;
  }
}

uint64_t IOAVVideoInterfaceCreateWithLocation(uint64_t a1, unsigned int a2)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IOAVCopyFirstMatchingIOAVObjectOfType("IOAVVideoInterface", IOAVVideoInterfaceCreateWithService, 0, a2, -1);
  }

  else
  {
    return 0;
  }
}

io_connect_t *IOAVVideoInterfaceGetService(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result)
  {
    parent = 0;
    if (IORegistryEntryGetParentEntry(*(a1 + 16), "IOService", &parent))
    {
      result = IOAVServiceCreateWithService(*MEMORY[0x1E695E480], parent);
      *(a1 + 32) = result;
    }

    else
    {
      return *(a1 + 32);
    }
  }

  return result;
}

CFTypeRef IOAVVideoInterfaceCopyDisplayAttributes(uint64_t a1)
{
  cf = 0;
  v1 = IOAVConnectCallCopyMethod(*(a1 + 20), 0xDu, &cf);
  result = 0;
  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = cf == 0;
  }

  if (!v3)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDictionaryGetTypeID())
    {
      return cf;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef IOAVVideoInterfaceCopyTimingElements(uint64_t a1)
{
  cf = 0;
  v1 = IOAVConnectCallCopyMethod(*(a1 + 20), 0xBu, &cf);
  result = 0;
  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = cf == 0;
  }

  if (!v3)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFArrayGetTypeID())
    {
      return cf;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef IOAVVideoInterfaceCopyColorElements(uint64_t a1)
{
  cf = 0;
  v1 = IOAVConnectCallCopyMethod(*(a1 + 20), 0xCu, &cf);
  result = 0;
  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = cf == 0;
  }

  if (!v3)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFArrayGetTypeID())
    {
      return cf;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOAVVideoInterfaceSetLogLevel(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 0, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVVideoInterfaceSetLogLevelMask(uint64_t a1, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  result = IOConnectCallMethod(*(a1 + 20), 1u, input, 2u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVVideoInterfaceGetLinkData(uint64_t a1, void *outputStruct)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = 0;
  v4 = 256;
  result = IOConnectCallMethod(*(a1 + 20), 2u, input, 1u, 0, 0, 0, 0, outputStruct, &v4);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVVideoInterfaceGetLinkDataWithSource(uint64_t a1, void *outputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a3;
  v5 = 256;
  result = IOConnectCallMethod(*(a1 + 20), 2u, input, 1u, 0, 0, 0, 0, outputStruct, &v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVVideoInterfaceStartLink(uint64_t a1, void *inputStruct)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = 0;
  result = IOConnectCallMethod(v2, 3u, input, 1u, inputStruct, 0x100uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVVideoInterfaceStartLinkWithSource(uint64_t a1, void *inputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 20);
  input[0] = a3;
  result = IOConnectCallMethod(v3, 3u, input, 1u, inputStruct, 0x100uLL, 0, 0, 0, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVVideoInterfaceStartLinkWithModes(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  input[4] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  input[3] = a5;
  result = IOConnectCallMethod(*(a1 + 20), 5u, input, 4u, 0, 0, 0, 0, 0, 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVVideoInterfaceStopLinkWithSource(uint64_t a1, void *inputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 20);
  input[0] = a3;
  result = IOConnectCallMethod(v3, 4u, input, 1u, inputStruct, 0x100uLL, 0, 0, 0, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVVideoInterfaceUpdateLinkWithSource(uint64_t a1, void *inputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 20);
  input[0] = a3;
  result = IOConnectCallMethod(v3, 0xEu, input, 1u, inputStruct, 0x100uLL, 0, 0, 0, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVVideoInterfaceSetRotation(uint64_t a1, float a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = ((a2 * 65536.0) + 0.5);
  result = IOConnectCallMethod(v2, 7u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVVideoInterfaceSetColorDitherRemoval(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 8u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVVideoInterfaceSetBounds(uint64_t a1, uint64_t a2, uint64_t a3)
{
  inputStruct[0] = a2;
  inputStruct[1] = a3;
  return IOConnectCallMethod(*(a1 + 20), 9u, 0, 0, inputStruct, 0x10uLL, 0, 0, 0, 0);
}

uint64_t IOAVVideoInterfaceSetScreenVirtualTemperature(uint64_t a1, float a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = ((a2 * 65536.0) + 0.5);
  result = IOConnectCallMethod(v2, 0xAu, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __IOAVVideoInterfaceFree(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    IOServiceClose(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t __IOUSBDeviceDescriptionRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOUSBDeviceDescriptionTypeID = result;
  return result;
}

uint64_t IOUSBDevicDeviceDescriptionGetTypeID()
{
  result = __kIOUSBDeviceDescriptionTypeID;
  if (!__kIOUSBDeviceDescriptionTypeID)
  {
    pthread_once(&__deviceDescriptionTypeInit, __IOUSBDeviceDescriptionRegister);
    return __kIOUSBDeviceDescriptionTypeID;
  }

  return result;
}

uint64_t IOUSBDeviceDescriptionCreate(const __CFAllocator *a1)
{
  if (!__kIOUSBDeviceDescriptionTypeID)
  {
    pthread_once(&__deviceDescriptionTypeInit, __IOUSBDeviceDescriptionRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    *(Instance + 16) = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(v3 + 24) = a1;
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    CFDictionarySetValue(*(v3 + 16), @"ConfigurationDescriptors", Mutable);
    CFRelease(Mutable);
  }

  return v3;
}

CFTypeRef IOUSBDeviceDescriptionCreateFromController(const __CFAllocator *a1, uint64_t a2)
{
  Service = IOUSBDeviceControllerGetService(a2);
  result = IORegistryEntryCreateCFProperty(Service, @"DeviceDescription", *MEMORY[0x1E695E480], 0);
  if (result)
  {
    v5 = result;
    v6 = __IOUSBDeviceDescriptionCreateFromDictionary(a1, result);
    CFRelease(v5);
    return v6;
  }

  return result;
}

uint64_t __IOUSBDeviceDescriptionCreateFromDictionary(const __CFAllocator *a1, const void *a2)
{
  v3 = IOUSBDeviceDescriptionCreate(a1);
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 16);
    if (v5 != a2)
    {
      CFRelease(v5);
      *(v4 + 16) = CFRetain(a2);
    }
  }

  return v4;
}

uint64_t IOUSBDeviceDescriptionCreateFromDefaults(const __CFAllocator *a1)
{
  cf = 0;
  v2 = 0;
  if (IOUSBDeviceControllerCreate(*MEMORY[0x1E695E480], &cf))
  {
    v3 = 1;
  }

  else
  {
    v3 = cf == 0;
  }

  if (!v3)
  {
    Service = IOUSBDeviceControllerGetService(cf);
    v2 = __IOUSBDeviceDescriptionCreate(a1, Service, 0);
    CFRelease(cf);
  }

  return v2;
}

uint64_t IOUSBDeviceDescriptionCreateFromDefaultsAndController(const __CFAllocator *a1, uint64_t a2)
{
  Service = IOUSBDeviceControllerGetService(a2);

  return __IOUSBDeviceDescriptionCreate(a1, Service, 0);
}

uint64_t __IOUSBDeviceDescriptionCreate(const __CFAllocator *a1, io_registry_entry_t a2, const void *a3)
{
  result = __IOUSBDeviceDescriptionCreateFromFile(a1, @"/System/Library/AppleUSBDevice/USBDeviceConfigurationOverride.plist", a2, a3);
  if (!result)
  {

    return __IOUSBDeviceDescriptionCreateFromFile(a1, @"/System/Library/AppleUSBDevice/USBDeviceConfiguration.plist", a2, a3);
  }

  return result;
}

uint64_t IOUSBDeviceDescriptionCreateWithType(const __CFAllocator *a1, const void *a2)
{
  cf = 0;
  v4 = 0;
  if (IOUSBDeviceControllerCreate(*MEMORY[0x1E695E480], &cf))
  {
    v5 = 1;
  }

  else
  {
    v5 = cf == 0;
  }

  if (!v5)
  {
    v4 = __IOUSBDeviceDescriptionCreate(a1, cf, a2);
    CFRelease(cf);
  }

  return v4;
}

const __CFNumber *__IOUSBDeviceGetIntProperty(uint64_t a1, const void *a2)
{
  valuePtr = 0;
  result = CFDictionaryGetValue(*(a1 + 16), a2);
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

void IOUSBDeviceDescriptionSetClass(uint64_t a1, char a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*(a1 + 24), kCFNumberCharType, &valuePtr);
  CFDictionarySetValue(*(a1 + 16), @"deviceClass", v3);
  CFRelease(v3);
}

void IOUSBDeviceDescriptionSetSubClass(uint64_t a1, char a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*(a1 + 24), kCFNumberCharType, &valuePtr);
  CFDictionarySetValue(*(a1 + 16), @"deviceSubClass", v3);
  CFRelease(v3);
}

void IOUSBDeviceDescriptionSetProtocol(uint64_t a1, char a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*(a1 + 24), kCFNumberCharType, &valuePtr);
  CFDictionarySetValue(*(a1 + 16), @"deviceProtocol", v3);
  CFRelease(v3);
}

void IOUSBDeviceDescriptionSetVendorID(uint64_t a1, __int16 a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*(a1 + 24), kCFNumberShortType, &valuePtr);
  CFDictionarySetValue(*(a1 + 16), @"vendorID", v3);
  CFRelease(v3);
}

void IOUSBDeviceDescriptionSetProductID(uint64_t a1, __int16 a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*(a1 + 24), kCFNumberShortType, &valuePtr);
  CFDictionarySetValue(*(a1 + 16), @"productID", v3);
  CFRelease(v3);
}

void IOUSBDeviceDescriptionRemoveAllConfigurations(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"ConfigurationDescriptors");

  CFArrayRemoveAllValues(Value);
}

uint64_t IOUSBDeviceDescriptionGetMatchingConfiguration(uint64_t a1, const __CFArray *a2)
{
  result = CFDictionaryGetValue(*(a1 + 16), @"ConfigurationDescriptors");
  if (!result)
  {
    return result;
  }

  v4 = result;
  result = CFArrayGetCount(result);
  if (!result)
  {
    return result;
  }

  v5 = result;
  if (result < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = *MEMORY[0x1E695E4D0];
  v9 = @"DefaultConfiguration";
  v21 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v6);
    if (ValueAtIndex)
    {
      v11 = ValueAtIndex;
      v7 = CFDictionaryGetValue(ValueAtIndex, v9) == v8 ? (v6 + 1) : v7;
      Value = CFDictionaryGetValue(v11, @"Interfaces");
      if (Value)
      {
        v13 = Value;
        Count = CFArrayGetCount(Value);
        if (a2)
        {
          v15 = Count;
          if (Count)
          {
            v16 = CFArrayGetCount(a2);
            if (v16)
            {
              break;
            }
          }
        }
      }
    }

LABEL_19:
    if (++v6 == v5)
    {
      return v7;
    }
  }

  v17 = v16;
  if (v16 >= 1)
  {
    v18 = v9;
    v19 = 0;
    while (1)
    {
      v20 = CFArrayGetValueAtIndex(a2, v19);
      v22.location = 0;
      v22.length = v15;
      if (CFArrayGetFirstIndexOfValue(v13, v22, v20) == -1)
      {
        break;
      }

      if (v17 == ++v19)
      {
        goto LABEL_21;
      }
    }

    v9 = v18;
    v8 = v21;
    goto LABEL_19;
  }

LABEL_21:
  result = (v6 + 1);
  if (v6 == -1)
  {
    return v7;
  }

  return result;
}

uint64_t IOUSBDeviceDescriptionAppendConfigurationWithoutAttributes(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"ConfigurationDescriptors");
  CFDictionarySetValue(*(a1 + 16), @"AllowMultipleCreates", *MEMORY[0x1E695E4D0]);
  Mutable = CFDictionaryCreateMutable(*(a1 + 24), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = CFArrayCreateMutable(*(a1 + 24), 0, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(Mutable, @"Interfaces", v6);
  CFRelease(v6);
  if (a2)
  {
    CFDictionaryAddValue(Mutable, @"Description", a2);
  }

  CFArrayAppendValue(Value, Mutable);
  CFRelease(Mutable);
  return CFArrayGetCount(Value) - 1;
}

void IOUSBDeviceDescriptionSetAllowOverride(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(v2, @"AllowMultipleCreates", *v3);
}

uint64_t IOUSBDeviceDescriptionAppendConfiguration(uint64_t a1, const void *a2, char a3, char a4)
{
  valuePtr = a3;
  v12 = a4;
  Value = CFDictionaryGetValue(*(a1 + 16), @"ConfigurationDescriptors");
  appended = IOUSBDeviceDescriptionAppendConfigurationWithoutAttributes(a1, a2);
  ValueAtIndex = CFArrayGetValueAtIndex(Value, appended);
  v9 = CFNumberCreate(*(a1 + 24), kCFNumberCharType, &valuePtr);
  CFDictionaryAddValue(ValueAtIndex, @"Attributes", v9);
  CFRelease(v9);
  v10 = CFNumberCreate(*(a1 + 24), kCFNumberCharType, &v12);
  CFDictionaryAddValue(ValueAtIndex, @"MaxPower", v10);
  CFRelease(v10);
  return appended;
}

uint64_t IOUSBDeviceDescriptionAppendConfigurationWithInterface(uint64_t a1, const void *a2)
{
  appended = IOUSBDeviceDescriptionAppendConfigurationWithoutAttributes(a1, a2);
  IOUSBDeviceDescriptionAppendInterfaceToConfiguration(a1, appended, a2);
  return appended;
}

uint64_t IOUSBDeviceDescriptionAppendInterfaceToConfiguration(uint64_t a1, int a2, const void *a3)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"ConfigurationDescriptors");
  ValueAtIndex = CFArrayGetValueAtIndex(Value, a2);
  if (!ValueAtIndex)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = CFDictionaryGetValue(ValueAtIndex, @"Interfaces");
  CFArrayAppendValue(v7, a3);
  return CFArrayGetCount(v7) - 1;
}

uint64_t IOUSBDeviceDescriptionAppendConfigurationWithInterfaces(uint64_t a1, const __CFArray *a2)
{
  v4 = CFStringCreateByCombiningStrings(*MEMORY[0x1E695E480], a2, @"+");
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  appended = IOUSBDeviceDescriptionAppendConfigurationWithoutAttributes(a1, v4);
  IOUSBDeviceDescriptionAppendInterfacesToConfiguration(a1, appended, a2);
  CFRelease(v5);
  return appended;
}

uint64_t IOUSBDeviceDescriptionAppendInterfacesToConfiguration(uint64_t a1, int a2, const __CFArray *a3)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"ConfigurationDescriptors");
  ValueAtIndex = CFArrayGetValueAtIndex(Value, a2);
  if (!ValueAtIndex)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = CFDictionaryGetValue(ValueAtIndex, @"Interfaces");
  v9.length = CFArrayGetCount(a3);
  v9.location = 0;
  CFArrayAppendArray(v7, a3, v9);
  return CFArrayGetCount(v7) - 1;
}

uint64_t IOUSBDeviceDescriptionCreateWithConfigurationInterfaces(const __CFAllocator *a1, const __CFArray *a2)
{
  v3 = IOUSBDeviceDescriptionCreate(a1);
  Count = CFArrayGetCount(a2);
  if (v3)
  {
    v5 = Count;
    if (Count >= 1)
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
        IOUSBDeviceDescriptionAppendConfigurationWithInterfaces(v3, ValueAtIndex);
        ++v6;
      }

      while (v5 != v6);
    }
  }

  return v3;
}

__CFArray *IOUSBDeviceDescriptionCopyInterfaces(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"ConfigurationDescriptors");
  Count = CFArrayGetCount(Value);
  Mutable = CFArrayCreateMutable(*(a1 + 24), Count, MEMORY[0x1E695E9C0]);
  if (Mutable && Count >= 1)
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, v5);
      v7 = CFDictionaryGetValue(ValueAtIndex, @"Interfaces");
      Copy = CFArrayCreateCopy(*(a1 + 24), v7);
      if (!Copy)
      {
        break;
      }

      v9 = Copy;
      CFArrayAppendValue(Mutable, Copy);
      CFRelease(v9);
      if (Count == ++v5)
      {
        return Mutable;
      }
    }

    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

void __IOUSBDeviceDescriptionRelease(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

CFStringRef __IOUSBDeviceDescriptionSerializeDebug(uint64_t a1)
{
  IntProperty = __IOUSBDeviceGetIntProperty(a1, @"productID");
  v3 = __IOUSBDeviceGetIntProperty(a1, @"vendorID");
  v4 = __IOUSBDeviceGetIntProperty(a1, @"deviceID");
  v5 = __IOUSBDeviceGetIntProperty(a1, @"deviceClass");
  v6 = __IOUSBDeviceGetIntProperty(a1, @"deviceSubClass");
  v7 = __IOUSBDeviceGetIntProperty(a1, @"deviceProtocol");
  Value = CFDictionaryGetValue(*(a1 + 16), @"manufacturerString");
  v9 = CFDictionaryGetValue(*(a1 + 16), @"productString");
  v10 = CFDictionaryGetValue(*(a1 + 16), @"serialNumber");
  return CFStringCreateWithFormat(0, 0, @"IOUSBDeviceDescription: pid/vid/ver=%04x/%04x/%d class/sub/prot=%d/%d/%d Mfg:%@ Prod:%@ Ser:%@\n%@", IntProperty, v3, v4, v5, v6, v7, Value, v9, v10, *(a1 + 16));
}

uint64_t __IOUSBDeviceDescriptionCreateFromFile(const __CFAllocator *a1, const __CFString *a2, io_registry_entry_t a3, const void *a4)
{
  v7 = CFURLCreateWithFileSystemPath(a1, a2, kCFURLPOSIXPathStyle, 0);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  resourceData = 0;
  errorCode = 0;
  v9 = CFURLCreateDataAndPropertiesFromResource(a1, v7, &resourceData, 0, 0, &errorCode);
  v10 = 0;
  v11 = resourceData;
  if (v9 == 1 && !errorCode && resourceData)
  {
    v12 = CFPropertyListCreateFromXMLData(a1, resourceData, 2uLL, 0);
    if (!v12)
    {
      v10 = 0;
LABEL_25:
      v11 = resourceData;
      goto LABEL_26;
    }

    v13 = v12;
    v14 = *MEMORY[0x1E695E480];
    if (a3 && (v15 = IORegistryEntryCreateCFProperty(a3, @"DefaultDeviceDescription", *MEMORY[0x1E695E480], 0)) != 0)
    {
      v16 = v15;
      if (!a4)
      {
LABEL_17:
        CFProperty = IORegistryEntryCreateCFProperty(a3, @"ConfigurationType", v14, 0);
        if (CFProperty)
        {
          a4 = CFProperty;
          goto LABEL_19;
        }

LABEL_30:
        v10 = 0;
LABEL_23:
        CFRelease(v16);
        goto LABEL_24;
      }
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!Mutable)
      {
        v10 = 0;
LABEL_24:
        CFRelease(v13);
        goto LABEL_25;
      }

      v16 = Mutable;
      if (!a4)
      {
        if (!a3)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }
    }

    CFRetain(a4);
LABEL_19:
    Value = CFDictionaryGetValue(v13, @"configurations");
    v20 = CFDictionaryGetValue(Value, a4);
    if (v20)
    {
      CFDictionarySetValue(v16, @"ConfigurationDescriptors", v20);
      v10 = __IOUSBDeviceDescriptionCreateFromDictionary(0, v16);
    }

    else
    {
      v10 = 0;
    }

    CFRelease(a4);
    goto LABEL_23;
  }

LABEL_26:
  if (v11)
  {
    CFRelease(v11);
    resourceData = 0;
  }

  CFRelease(v8);
  return v10;
}

uint64_t IOUSBDeviceControllerGetTypeID()
{
  result = __kIOUSBDeviceControllerTypeID;
  if (!__kIOUSBDeviceControllerTypeID)
  {
    pthread_once(&__controllerTypeInit_2, __IOUSBDeviceControllerRegister);
    return __kIOUSBDeviceControllerTypeID;
  }

  return result;
}

uint64_t __IOUSBDeviceControllerRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOUSBDeviceControllerTypeID = result;
  return result;
}

uint64_t IOUSBDeviceControllerCreate(uint64_t a1, uint64_t *a2)
{
  v4 = 3758097085;
  v5 = -60;
  while (1)
  {
    v6 = IOServiceMatching("IOUSBDeviceController");
    if (!v6)
    {
      break;
    }

    MatchingService = IOServiceGetMatchingService(0, v6);
    if (MatchingService)
    {
      v9 = MatchingService;
      v4 = IOUSBDeviceControllerCreateWithService(a1, MatchingService, a2);
      IOObjectRelease(v9);
      return v4;
    }

    usleep(0x7A120u);
    if (__CFADD__(v5++, 1))
    {
      return 3758097136;
    }
  }

  return v4;
}

uint64_t IOUSBDeviceControllerCreateWithService(uint64_t a1, io_object_t a2, uint64_t *a3)
{
  if (!__kIOUSBDeviceControllerTypeID)
  {
    pthread_once(&__controllerTypeInit_2, __IOUSBDeviceControllerRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 3758097085;
  }

  v6 = Instance;
  *(Instance + 16) = 0;
  *(Instance + 16) = a2;
  IOObjectRetain(a2);
  result = 0;
  *a3 = v6;
  return result;
}

uint64_t IOUSBDeviceControllerGoOffAndOnBus(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (!v3)
  {
    return 3758097085;
  }

  v4 = v3;
  v5 = IOUSBDeviceControllerSendCommand(a1, @"GoOffAndOnBus", v3);
  CFRelease(v4);
  return v5;
}

uint64_t IOUSBDeviceControllerSendCommand(uint64_t a1, const void *a2, const void *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 3758097085;
  }

  v7 = Mutable;
  CFDictionarySetValue(Mutable, @"USBDeviceCommand", a2);
  if (a3)
  {
    CFDictionarySetValue(v7, @"USBDeviceCommandParameter", a3);
  }

  v8 = IORegistryEntrySetCFProperties(*(a1 + 16), v7);
  CFRelease(v7);
  return v8;
}

uint64_t IOUSBDeviceControllerForceOffBus(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = @"ForceOffBusEnable";
  }

  else
  {
    v2 = @"ForceOffBusDisable";
  }

  return IOUSBDeviceControllerSendCommand(a1, v2, 0);
}

uint64_t IOUSBDeviceControllerSetPreferredConfiguration(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (!v3)
  {
    return 3758097090;
  }

  v4 = v3;
  v5 = IOUSBDeviceControllerSendCommand(a1, @"SetDevicePreferredConfiguration", v3);
  CFRelease(v4);
  return v5;
}

uint64_t IOUSBDeviceControllerSetDescription(uint64_t a1, uint64_t a2)
{
  Info = _IOUSBDeviceDescriptionGetInfo(a2);

  return IOUSBDeviceControllerSendCommand(a1, @"SetDeviceDescription", Info);
}

uint64_t __IOUSBDeviceControllerRelease(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = IOObjectRelease(result);
  }

  *(a1 + 16) = 0;
  return result;
}

uint64_t IOHIDAnalyticsEventSetStringValueForField()
{
  if (setStringValueForFieldFuncPtr)
  {
    return setStringValueForFieldFuncPtr();
  }

  return result;
}

uint64_t IOHIDAnalyticsEventAddField()
{
  if (addFieldFuncPtr)
  {
    return addFieldFuncPtr();
  }

  return result;
}

void *____loadFramework_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/HIDAnalytics.framework/HIDAnalytics", 1);
  __loadFramework_haHandle_0 = result;
  if (result)
  {
    createEventFuncPtr = dlsym(result, "HIDAnalyticsEventCreate");
    if (__loadFramework_haHandle_0)
    {
      addHistogramFieldFuncPtr = dlsym(__loadFramework_haHandle_0, "HIDAnalyticsEventAddHistogramField");
      if (__loadFramework_haHandle_0)
      {
        addFieldFuncPtr = dlsym(__loadFramework_haHandle_0, "HIDAnalyticsEventAddField");
        if (__loadFramework_haHandle_0)
        {
          setIntegerValueForFieldFuncPtr = dlsym(__loadFramework_haHandle_0, "HIDAnalyticsEventSetIntegerValueForField");
          if (__loadFramework_haHandle_0)
          {
            setStringValueForFieldFuncPtr = dlsym(__loadFramework_haHandle_0, "HIDAnalyticsEventSetStringValueForField");
            if (__loadFramework_haHandle_0)
            {
              activateEventFuncPtr = dlsym(__loadFramework_haHandle_0, "HIDAnalyticsEventActivate");
              if (__loadFramework_haHandle_0)
              {
                v1 = dlsym(__loadFramework_haHandle_0, "HIDAnalyticsEventCancel");
                result = __loadFramework_haHandle_0;
                cancelEventFuncPtr = v1;
                if (__loadFramework_haHandle_0)
                {
                  v2 = dlsym(__loadFramework_haHandle_0, "HIDAnalyticsHistogramEventCreate");
                  result = __loadFramework_haHandle_0;
                  createHistogramEventFuncPtr = v2;
                  if (__loadFramework_haHandle_0)
                  {
                    result = dlsym(__loadFramework_haHandle_0, "HIDAnalyticsHistogramEventSetIntegerValue");
                  }

                  goto LABEL_18;
                }

LABEL_17:
                createHistogramEventFuncPtr = 0;
LABEL_18:
                setHistogramIntegerValueFuncPtr = result;
                return result;
              }

LABEL_16:
              result = 0;
              cancelEventFuncPtr = 0;
              goto LABEL_17;
            }

LABEL_15:
            activateEventFuncPtr = 0;
            goto LABEL_16;
          }

LABEL_14:
          setStringValueForFieldFuncPtr = 0;
          goto LABEL_15;
        }

LABEL_13:
        setIntegerValueForFieldFuncPtr = 0;
        goto LABEL_14;
      }
    }

    else
    {
      addHistogramFieldFuncPtr = 0;
    }

    addFieldFuncPtr = 0;
    goto LABEL_13;
  }

  return result;
}

uint64_t io_pm_get_value_int(int a1, int a2, _DWORD *a3)
{
  memset(&v12[16], 0, 28);
  *v12 = 0u;
  *&v12[20] = *MEMORY[0x1E69E99E0];
  *&v12[28] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&v12[4] = a1;
  *&v12[8] = special_reply_port;
  v11 = 5395;
  *&v12[12] = 0x11D2800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v11);
    v6 = *&v12[8];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x24u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v12[16] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v12[16] == 73100)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (*v12 == 40)
          {
            if (!*&v12[4])
            {
              v8 = *&v12[28];
              if (!*&v12[28])
              {
                *a3 = *&v12[32];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (*v12 == 36)
          {
            if (*&v12[4])
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v12[28] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v12[28];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t io_pm_set_value_int(int a1, int a2, int a3, _DWORD *a4)
{
  memset(&v13[16], 0, 28);
  *v13 = 0u;
  *&v13[20] = *MEMORY[0x1E69E99E0];
  *&v13[28] = a2;
  *&v13[32] = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13[4] = a1;
  *&v13[8] = special_reply_port;
  v12 = 5395;
  *&v13[12] = 0x11D2900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    v7 = *&v13[8];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x28u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&v13[16] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&v13[16] == 73101)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (*v13 == 40)
          {
            if (!*&v13[4])
            {
              v9 = *&v13[28];
              if (!*&v13[28])
              {
                *a4 = *&v13[32];
                return v9;
              }

              goto LABEL_23;
            }
          }

          else if (*v13 == 36)
          {
            if (*&v13[4])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&v13[28] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&v13[28];
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  return v9;
}

uint64_t io_pm_force_active_settings(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13.msgh_bits = 2147489043;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = special_reply_port;
  *&v13.msgh_voucher_port = 0x11D2A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v13, 3162115, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v13.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v13.msgh_id == 73102)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 40)
          {
            if (!v13.msgh_remote_port)
            {
              v9 = HIDWORD(v15);
              if (!HIDWORD(v15))
              {
                *a4 = v16;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (v13.msgh_size == 36)
          {
            if (v13.msgh_remote_port)
            {
              v10 = 1;
            }

            else
            {
              v10 = HIDWORD(v15) == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v15);
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v13);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t io_pm_schedule_repeat_event(mach_port_t a1, uint64_t a2, int a3, int a4, int *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 1;
  v16 = a2;
  v17 = 16777472;
  v18 = a3;
  v19 = *MEMORY[0x1E69E99E0];
  v20 = a3;
  v21 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x11D2C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x3Cu, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (msg.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (msg.msgh_id == 73104)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v10 = HIDWORD(v16);
              if (!HIDWORD(v16))
              {
                *a5 = v17;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v11 = 1;
            }

            else
            {
              v11 = HIDWORD(v16) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = HIDWORD(v16);
            }

            goto LABEL_23;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t io_pm_cancel_repeat_events(int a1, _DWORD *a2)
{
  memset(&v14[4], 0, 28);
  v11 = 0;
  special_reply_port = mig_get_special_reply_port();
  v12 = a1;
  v13 = special_reply_port;
  v10 = 5395;
  *v14 = 0x11D2D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = v13;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&v14[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&v14[4] == 73105)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (v11 == 40)
          {
            if (!v12)
            {
              v7 = *&v14[16];
              if (!*&v14[16])
              {
                *a2 = *&v14[20];
                return v7;
              }

              goto LABEL_23;
            }
          }

          else if (v11 == 36)
          {
            if (v12)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&v14[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&v14[16];
            }

            goto LABEL_23;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  return v7;
}

uint64_t io_pm_last_wake_time(int a1, void *a2, _DWORD *a3, void *a4, _DWORD *a5, _DWORD *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  *&v23[4] = 0u;
  LODWORD(v21) = 0;
  special_reply_port = mig_get_special_reply_port();
  HIDWORD(v21) = a1;
  v22 = special_reply_port;
  v20 = 5395;
  *v23 = 0x11D2E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v20);
    v13 = v22;
  }

  else
  {
    v13 = special_reply_port;
  }

  v14 = mach_msg(&v20, 3162115, 0x18u, 0x58u, v13, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (*&v23[4] == 71)
      {
        v15 = 4294966988;
      }

      else if (*&v23[4] == 73106)
      {
        if ((v20 & 0x80000000) == 0)
        {
          if (v21 == 36)
          {
            v15 = 4294966996;
            if (*&v23[16])
            {
              if (HIDWORD(v21))
              {
                v15 = 4294966996;
              }

              else
              {
                v15 = *&v23[16];
              }
            }
          }

          else
          {
            v15 = 4294966996;
          }

          goto LABEL_26;
        }

        v15 = 4294966996;
        if (*&v23[8] == 2 && v21 == 80 && BYTE3(v24) == 1 && BYTE3(v25) == 1)
        {
          v16 = DWORD1(v24);
          if (DWORD1(v24) == v26)
          {
            v17 = DWORD1(v25);
            if (DWORD1(v25) == DWORD1(v26))
            {
              v15 = 0;
              *a2 = *&v23[12];
              *a3 = v16;
              *a4 = *(&v24 + 1);
              *a5 = v17;
              *a6 = DWORD2(v26);
              goto LABEL_27;
            }
          }
        }
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v20);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_27:
  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t io_pm_declare_user_active(mach_port_t a1, int a2, uint64_t a3, int a4, int *a5, _DWORD *a6, _DWORD *a7)
{
  v28 = *MEMORY[0x1E69E9840];
  v20 = 1;
  v21 = a3;
  v22 = 16777472;
  v23 = a4;
  v24 = *MEMORY[0x1E69E99E0];
  v25 = a2;
  v26 = a4;
  v27 = *a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x11D3400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v13 = mach_msg(&msg, 3162115, 0x40u, 0x38u, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (!v13)
    {
      if (msg.msgh_id == 71)
      {
        v14 = 4294966988;
      }

      else if (msg.msgh_id == 73112)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 48)
          {
            if (!msg.msgh_remote_port)
            {
              v14 = HIDWORD(v21);
              if (!HIDWORD(v21))
              {
                v18 = v23;
                *a5 = v22;
                *a6 = v18;
                *a7 = v24;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v15 = 1;
            }

            else
            {
              v15 = HIDWORD(v21) == 0;
            }

            if (v15)
            {
              v14 = 4294966996;
            }

            else
            {
              v14 = HIDWORD(v21);
            }

            goto LABEL_23;
          }
        }

        v14 = 4294966996;
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t io_pm_declare_network_client_active(mach_port_t a1, uint64_t a2, int a3, int *a4, _DWORD *a5, _DWORD *a6)
{
  v19 = 1;
  v20 = a2;
  v21 = 16777472;
  v22 = a3;
  v23 = *MEMORY[0x1E69E99E0];
  v10 = *a4;
  v24 = a3;
  v25 = v10;
  special_reply_port = mig_get_special_reply_port();
  *&v18.msgh_bits = 2147489043;
  v18.msgh_remote_port = a1;
  v18.msgh_local_port = special_reply_port;
  *&v18.msgh_voucher_port = 0x11D3500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v18);
    msgh_local_port = v18.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v13 = mach_msg(&v18, 3162115, 0x3Cu, 0x38u, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (!v13)
    {
      if (v18.msgh_id == 71)
      {
        v14 = 4294966988;
      }

      else if (v18.msgh_id == 73113)
      {
        if ((v18.msgh_bits & 0x80000000) == 0)
        {
          if (v18.msgh_size == 48)
          {
            if (!v18.msgh_remote_port)
            {
              v14 = HIDWORD(v20);
              if (!HIDWORD(v20))
              {
                v17 = v22;
                *a4 = v21;
                *a5 = v17;
                *a6 = v23;
                return v14;
              }

              goto LABEL_23;
            }
          }

          else if (v18.msgh_size == 36)
          {
            if (v18.msgh_remote_port)
            {
              v15 = 1;
            }

            else
            {
              v15 = HIDWORD(v20) == 0;
            }

            if (v15)
            {
              v14 = 4294966996;
            }

            else
            {
              v14 = HIDWORD(v20);
            }

            goto LABEL_23;
          }
        }

        v14 = 4294966996;
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v18);
      return v14;
    }

    mig_dealloc_special_reply_port();
  }

  return v14;
}

uint64_t io_pm_get_uuid(int a1, int a2, char *a3, _DWORD *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(v19, 0, 476);
  *&v18[16] = 0u;
  *v18 = 0u;
  *&v18[20] = *MEMORY[0x1E69E99E0];
  *&v18[28] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&v18[4] = a1;
  *&v18[8] = special_reply_port;
  v17 = 5395;
  *&v18[12] = 0x11D3600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v17);
    v8 = *&v18[8];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(&v17, 3162115, 0x24u, 0x438u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&v18[16] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&v18[16] == 73114)
      {
        if ((v17 & 0x80000000) == 0)
        {
          if ((*v18 - 1073) <= 0xFFFFFBFE)
          {
            if (*&v18[28])
            {
              v11 = *&v18[4] == 0;
            }

            else
            {
              v11 = 0;
            }

            if (v11 && *v18 == 36)
            {
              v10 = *&v18[28];
            }

            else
            {
              v10 = 4294966996;
            }

            goto LABEL_25;
          }

          if (!*&v18[4])
          {
            v10 = *&v18[28];
            if (*&v18[28])
            {
              goto LABEL_25;
            }

            if (DWORD1(v19[0]) <= 0x400)
            {
              v10 = 4294966996;
              if ((*v18 - 48) >= DWORD1(v19[0]))
              {
                v15 = (DWORD1(v19[0]) + 3) & 0xFFFFFFFC;
                if (*v18 == v15 + 48)
                {
                  v16 = &v18[v15 - 4];
                  mig_strncpy(a3, v19 + 8, 1024);
                  v10 = 0;
                  *a4 = *(v16 + 11);
                  goto LABEL_26;
                }
              }

              goto LABEL_25;
            }
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(&v17);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t io_pm_connection_create(unsigned int a1, const char *a2, int a3, _DWORD *a4, _DWORD *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  memset(v21, 0, 480);
  v19 = 0u;
  v20 = 0u;
  *(&v20 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v9 = mig_strncpy_zerofill(v21 + 8, a2, 1024);
  }

  else
  {
    v9 = mig_strncpy(v21 + 8, a2, 1024);
  }

  LODWORD(v21[0]) = 0;
  DWORD1(v21[0]) = v9;
  v10 = (v9 + 3) & 0xFFFFFFFC;
  *(v21 + v10 + 8) = a3;
  special_reply_port = mig_get_special_reply_port();
  *(&v19 + 1) = __PAIR64__(special_reply_port, a1);
  LODWORD(v19) = 5395;
  *&v20 = 0x11D3700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v19);
    v12 = HIDWORD(v19);
  }

  else
  {
    v12 = special_reply_port;
  }

  v13 = mach_msg(&v19, 3162115, v10 + 44, 0x34u, v12, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (!v13)
    {
      if (DWORD1(v20) == 71)
      {
        v14 = 4294966988;
      }

      else if (DWORD1(v20) == 73115)
      {
        if ((v19 & 0x80000000) == 0)
        {
          if (DWORD1(v19) == 44)
          {
            if (!DWORD2(v19))
            {
              v14 = LODWORD(v21[0]);
              if (!LODWORD(v21[0]))
              {
                v18 = DWORD2(v21[0]);
                *a4 = DWORD1(v21[0]);
                *a5 = v18;
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          else if (DWORD1(v19) == 36)
          {
            if (DWORD2(v19))
            {
              v15 = 1;
            }

            else
            {
              v15 = LODWORD(v21[0]) == 0;
            }

            if (v15)
            {
              v14 = 4294966996;
            }

            else
            {
              v14 = LODWORD(v21[0]);
            }

            goto LABEL_26;
          }
        }

        v14 = 4294966996;
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v19);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_27:
  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t io_pm_connection_schedule_notification(int a1, int a2, int a3, int a4, int *a5)
{
  *&msg[20] = 0u;
  *&msg[4] = 0u;
  *&msg[24] = 1;
  *&msg[28] = a3;
  v14 = 1245184;
  v15 = *MEMORY[0x1E69E99E0];
  v16 = a2;
  v17 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x11D3800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(msg, 3162115, 0x38u, 0x30u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 73116)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 40)
          {
            if (!*&msg[8])
            {
              v10 = *&msg[32];
              if (!*&msg[32])
              {
                *a5 = v14;
                return v10;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v11 = 1;
            }

            else
            {
              v11 = *&msg[32] == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  return v10;
}

uint64_t io_pm_connection_release(int a1, int a2, _DWORD *a3)
{
  memset(&v12[16], 0, 28);
  *v12 = 0u;
  *&v12[20] = *MEMORY[0x1E69E99E0];
  *&v12[28] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&v12[4] = a1;
  *&v12[8] = special_reply_port;
  v11 = 5395;
  *&v12[12] = 0x11D3900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v11);
    v6 = *&v12[8];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x24u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v12[16] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v12[16] == 73117)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (*v12 == 40)
          {
            if (!*&v12[4])
            {
              v8 = *&v12[28];
              if (!*&v12[28])
              {
                *a3 = *&v12[32];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (*v12 == 36)
          {
            if (*&v12[4])
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v12[28] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v12[28];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t io_pm_connection_acknowledge_event(mach_port_t a1, int a2, int a3, uint64_t a4, int a5, int *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = 1;
  v17 = a4;
  v18 = 16777472;
  v19 = a5;
  v20 = *MEMORY[0x1E69E99E0];
  v21 = a2;
  v22 = a3;
  v23 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x11D3A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v10 = mach_msg(&msg, 3162115, 0x40u, 0x30u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (msg.msgh_id == 71)
      {
        v11 = 4294966988;
      }

      else if (msg.msgh_id == 73118)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v11 = HIDWORD(v17);
              if (!HIDWORD(v17))
              {
                *a6 = v18;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v12 = 1;
            }

            else
            {
              v12 = HIDWORD(v17) == 0;
            }

            if (v12)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = HIDWORD(v17);
            }

            goto LABEL_23;
          }
        }

        v11 = 4294966996;
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t io_ps_new_pspowersource(int a1, _DWORD *a2, _DWORD *a3)
{
  *&msg[20] = 0u;
  v14 = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x11D3B00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(msg, 3162115, 0x18u, 0x34u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 73119)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v9 = *&msg[32];
              if (!*&msg[32])
              {
                v12 = DWORD1(v14);
                *a2 = v14;
                *a3 = v12;
                return v9;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&msg[32] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  return v9;
}

uint64_t io_ps_update_pspowersource(mach_port_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 1;
  v16 = a3;
  v17 = 16777472;
  v18 = a4;
  v19 = *MEMORY[0x1E69E99E0];
  v20 = a2;
  v21 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x11D3C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x3Cu, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (msg.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (msg.msgh_id == 73120)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v10 = HIDWORD(v16);
              if (!HIDWORD(v16))
              {
                *a5 = v17;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v11 = 1;
            }

            else
            {
              v11 = HIDWORD(v16) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = HIDWORD(v16);
            }

            goto LABEL_23;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t io_ps_release_pspowersource(int a1, int a2)
{
  *&msg[20] = 0u;
  v9 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x11D3D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = special_reply_port;
  }

  v5 = mach_msg(msg, 3162115, 0x24u, 0x2Cu, v4, 0, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_special_reply_port();
      return v6;
    }

    if (*&msg[20] == 71)
    {
      v6 = 4294966988;
    }

    else if (*&msg[20] == 73121)
    {
      v6 = 4294966996;
      if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
      {
        v6 = *&msg[32];
        if (!*&msg[32])
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = 4294966995;
    }

    mach_msg_destroy(msg);
  }

  return v6;
}

uint64_t io_pm_hid_event_report_activity(int a1, int a2, _DWORD *a3)
{
  memset(&v12[16], 0, 28);
  *v12 = 0u;
  *&v12[20] = *MEMORY[0x1E69E99E0];
  *&v12[28] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&v12[4] = a1;
  *&v12[8] = special_reply_port;
  v11 = 5395;
  *&v12[12] = 0x11D3F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v11);
    v6 = *&v12[8];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x24u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v12[16] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v12[16] == 73123)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (*v12 == 40)
          {
            if (!*&v12[4])
            {
              v8 = *&v12[28];
              if (!*&v12[28])
              {
                *a3 = *&v12[32];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (*v12 == 36)
          {
            if (*&v12[4])
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v12[28] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v12[28];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t io_pm_hid_event_copy_history(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v16 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x11D4000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(msg, 3162115, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 73124)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v11 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v11 = 4294966996;
              }

              else
              {
                v11 = *&msg[32];
              }
            }
          }

          else
          {
            v11 = 4294966996;
          }

          goto LABEL_25;
        }

        v11 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v16) == 1)
        {
          v12 = DWORD1(v16);
          if (DWORD1(v16) == v17)
          {
            v11 = 0;
            *a2 = *&msg[28];
            *a3 = v12;
            *a4 = DWORD1(v17);
            goto LABEL_26;
          }
        }
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t io_pm_set_debug_flags(int a1, int a2, int a3, _DWORD *a4, _DWORD *a5)
{
  *&msg[20] = 0u;
  v16 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  LODWORD(v16) = a3;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x11D4100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(msg, 3162115, 0x28u, 0x34u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 73125)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v11 = *&msg[32];
              if (!*&msg[32])
              {
                v14 = DWORD1(v16);
                *a4 = v16;
                *a5 = v14;
                return v11;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v12 = 1;
            }

            else
            {
              v12 = *&msg[32] == 0;
            }

            if (v12)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v11 = 4294966996;
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_special_reply_port();
  }

  return v11;
}

uint64_t io_pm_set_bt_wake_interval(int a1, int a2, _DWORD *a3, _DWORD *a4)
{
  *&msg[20] = 0u;
  v15 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x11D4200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(msg, 3162115, 0x24u, 0x34u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 73126)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v10 = *&msg[32];
              if (!*&msg[32])
              {
                v13 = DWORD1(v15);
                *a3 = v15;
                *a4 = v13;
                return v10;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v11 = 1;
            }

            else
            {
              v11 = *&msg[32] == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  return v10;
}

uint64_t io_pm_set_dw_linger_interval(int a1, int a2, _DWORD *a3)
{
  memset(&v12[16], 0, 28);
  *v12 = 0u;
  *&v12[20] = *MEMORY[0x1E69E99E0];
  *&v12[28] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&v12[4] = a1;
  *&v12[8] = special_reply_port;
  v11 = 5395;
  *&v12[12] = 0x11D4300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v11);
    v6 = *&v12[8];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x24u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v12[16] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v12[16] == 73127)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (*v12 == 40)
          {
            if (!*&v12[4])
            {
              v8 = *&v12[28];
              if (!*&v12[28])
              {
                *a3 = *&v12[32];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (*v12 == 36)
          {
            if (*&v12[4])
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v12[28] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v12[28];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t io_pm_change_sa_assertion_behavior(int a1, int a2, _DWORD *a3, _DWORD *a4)
{
  *&msg[20] = 0u;
  v15 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x11D4400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(msg, 3162115, 0x24u, 0x34u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 73128)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v10 = *&msg[32];
              if (!*&msg[32])
              {
                v13 = DWORD1(v15);
                *a3 = v15;
                *a4 = v13;
                return v10;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v11 = 1;
            }

            else
            {
              v11 = *&msg[32] == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  return v10;
}

uint64_t io_pm_set_sleepservice_wake_time_cap(int a1, int a2, _DWORD *a3)
{
  memset(&v12[16], 0, 28);
  *v12 = 0u;
  *&v12[20] = *MEMORY[0x1E69E99E0];
  *&v12[28] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&v12[4] = a1;
  *&v12[8] = special_reply_port;
  v11 = 5395;
  *&v12[12] = 0x11D4500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v11);
    v6 = *&v12[8];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x24u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v12[16] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v12[16] == 73129)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (*v12 == 40)
          {
            if (!*&v12[4])
            {
              v8 = *&v12[28];
              if (!*&v12[28])
              {
                *a3 = *&v12[32];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (*v12 == 36)
          {
            if (*&v12[4])
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v12[28] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v12[28];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t io_pm_ctl_assertion_type(unsigned int a1, const char *a2, int a3, _DWORD *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(v18, 0, 480);
  v16 = 0u;
  v17 = 0u;
  *(&v17 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v7 = mig_strncpy_zerofill(v18 + 8, a2, 1024);
  }

  else
  {
    v7 = mig_strncpy(v18 + 8, a2, 1024);
  }

  LODWORD(v18[0]) = 0;
  DWORD1(v18[0]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  *(v18 + v8 + 8) = a3;
  special_reply_port = mig_get_special_reply_port();
  *(&v16 + 1) = __PAIR64__(special_reply_port, a1);
  LODWORD(v16) = 5395;
  *&v17 = 0x11D4700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v16);
    v10 = HIDWORD(v16);
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(&v16, 3162115, v8 + 44, 0x30u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (DWORD1(v17) == 71)
      {
        v12 = 4294966988;
      }

      else if (DWORD1(v17) == 73131)
      {
        if ((v16 & 0x80000000) == 0)
        {
          if (DWORD1(v16) == 40)
          {
            if (!DWORD2(v16))
            {
              v12 = LODWORD(v18[0]);
              if (!LODWORD(v18[0]))
              {
                *a4 = DWORD1(v18[0]);
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          else if (DWORD1(v16) == 36)
          {
            if (DWORD2(v16))
            {
              v13 = 1;
            }

            else
            {
              v13 = LODWORD(v18[0]) == 0;
            }

            if (v13)
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = LODWORD(v18[0]);
            }

            goto LABEL_26;
          }
        }

        v12 = 4294966996;
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v16);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_27:
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t io_pm_assertion_notify(unsigned int a1, const char *a2, int a3, _DWORD *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(v18, 0, 480);
  v16 = 0u;
  v17 = 0u;
  *(&v17 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v7 = mig_strncpy_zerofill(v18 + 8, a2, 1024);
  }

  else
  {
    v7 = mig_strncpy(v18 + 8, a2, 1024);
  }

  LODWORD(v18[0]) = 0;
  DWORD1(v18[0]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  *(v18 + v8 + 8) = a3;
  special_reply_port = mig_get_special_reply_port();
  *(&v16 + 1) = __PAIR64__(special_reply_port, a1);
  LODWORD(v16) = 5395;
  *&v17 = 0x11D4800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v16);
    v10 = HIDWORD(v16);
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(&v16, 3162115, v8 + 44, 0x30u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (DWORD1(v17) == 71)
      {
        v12 = 4294966988;
      }

      else if (DWORD1(v17) == 73132)
      {
        if ((v16 & 0x80000000) == 0)
        {
          if (DWORD1(v16) == 40)
          {
            if (!DWORD2(v16))
            {
              v12 = LODWORD(v18[0]);
              if (!LODWORD(v18[0]))
              {
                *a4 = DWORD1(v18[0]);
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          else if (DWORD1(v16) == 36)
          {
            if (DWORD2(v16))
            {
              v13 = 1;
            }

            else
            {
              v13 = LODWORD(v18[0]) == 0;
            }

            if (v13)
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = LODWORD(v18[0]);
            }

            goto LABEL_26;
          }
        }

        v12 = 4294966996;
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v16);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_27:
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t io_pm_assertion_activity_log(int a1, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  *&msg[20] = 0u;
  v21 = 0u;
  v23 = 0;
  v22 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = *a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x11D4900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v13 = *&msg[12];
  }

  else
  {
    v13 = special_reply_port;
  }

  v14 = mach_msg(msg, 3162115, 0x24u, 0x4Cu, v13, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (*&msg[20] == 71)
      {
        v15 = 4294966988;
      }

      else if (*&msg[20] == 73133)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v15 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v15 = 4294966996;
              }

              else
              {
                v15 = *&msg[32];
              }
            }
          }

          else
          {
            v15 = 4294966996;
          }

          goto LABEL_25;
        }

        v15 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 68 && !*&msg[8] && BYTE3(v21) == 1)
        {
          v16 = DWORD1(v21);
          if (DWORD1(v21) == v22)
          {
            v15 = 0;
            *a2 = *&msg[28];
            *a3 = v16;
            v17 = DWORD2(v22);
            *a4 = DWORD1(v22);
            *a5 = v17;
            *a6 = HIDWORD(v22);
            goto LABEL_26;
          }
        }
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t io_pm_set_exception_limits(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13.msgh_bits = 2147489043;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = special_reply_port;
  *&v13.msgh_voucher_port = 0x11D4B00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v13, 3162115, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v13.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v13.msgh_id == 73135)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 40)
          {
            if (!v13.msgh_remote_port)
            {
              v9 = HIDWORD(v15);
              if (!HIDWORD(v15))
              {
                *a4 = v16;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (v13.msgh_size == 36)
          {
            if (v13.msgh_remote_port)
            {
              v10 = 1;
            }

            else
            {
              v10 = HIDWORD(v15) == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v15);
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v13);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t io_hideventsystem_do_client_refresh(int a1, void *a2, _DWORD *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(&msg_16[4], 0, 44);
  msg_4 = 0;
  special_reply_port = mig_get_special_reply_port();
  msg_8 = a1;
  msg_12 = special_reply_port;
  msg = 5395;
  *msg_16 = 0x1117400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v7 = msg_12;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&msg, 3162115, 0x18u, 0x40u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg_16[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg_16[4] == 70104)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (msg_4 == 36)
          {
            v9 = 4294966996;
            if (*&msg_16[16])
            {
              if (msg_8)
              {
                v9 = 4294966996;
              }

              else
              {
                v9 = *&msg_16[16];
              }
            }
          }

          else
          {
            v9 = 4294966996;
          }

          goto LABEL_28;
        }

        v9 = 4294966996;
        if (*&msg_16[8] == 1 && msg_4 == 56 && !msg_8 && msg_16[23] == 1)
        {
          v10 = *&msg_16[24];
          if (*&msg_16[24] == *&msg_16[36])
          {
            v9 = 0;
            *a2 = *&msg_16[12];
            *a3 = v10;
            goto LABEL_29;
          }
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      goto LABEL_29;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg_12);
    }

    goto LABEL_28;
  }

LABEL_29:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t io_hideventsystem_dispatch_event(int a1, uint64_t a2, int a3, mach_msg_timeout_t timeout)
{
  v8 = a2;
  v9 = 16777472;
  v10 = a3;
  v11 = *MEMORY[0x1E69E99E0];
  v12 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_19723E120;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v5 = mach_msg(msg, 17, 0x38u, 0, 0, timeout, 0);
  if ((v5 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v5;
}

uint64_t io_hideventsystem_service_conforms_to(mach_port_t a1, uint64_t a2, int a3, int a4, int a5, int *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = 1;
  v17 = a2;
  v18 = 16777472;
  v19 = a3;
  v20 = *MEMORY[0x1E69E99E0];
  v21 = a3;
  v22 = a4;
  v23 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1117600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v10 = mach_msg(&msg, 3162115, 0x40u, 0x30u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (msg.msgh_id == 71)
      {
        v11 = 4294966988;
      }

      else if (msg.msgh_id == 70106)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v11 = HIDWORD(v17);
              if (!HIDWORD(v17))
              {
                *a6 = v18;
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v12 = 1;
            }

            else
            {
              v12 = HIDWORD(v17) == 0;
            }

            if (v12)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = HIDWORD(v17);
            }

            goto LABEL_26;
          }
        }

        v11 = 4294966996;
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&msg);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v11 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_26;
  }

LABEL_27:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t io_hideventsystem_copy_matching_event_for_service(mach_port_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, _DWORD *a6)
{
  v16 = 1;
  v17 = a3;
  v18 = 16777472;
  v19 = a4;
  v20 = *MEMORY[0x1E69E99E0];
  v21 = a2;
  v22 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&v15.msgh_bits = 2147489043;
  v15.msgh_remote_port = a1;
  v15.msgh_local_port = special_reply_port;
  *&v15.msgh_voucher_port = 0x1117800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v15);
    msgh_local_port = v15.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v11 = mach_msg(&v15, 3162115, 0x40u, 0x40u, msgh_local_port, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (v15.msgh_id == 71)
      {
        v12 = 4294966988;
      }

      else if (v15.msgh_id == 70108)
      {
        if ((v15.msgh_bits & 0x80000000) == 0)
        {
          if (v15.msgh_size == 36)
          {
            v12 = 4294966996;
            if (HIDWORD(v17))
            {
              if (v15.msgh_remote_port)
              {
                v12 = 4294966996;
              }

              else
              {
                v12 = HIDWORD(v17);
              }
            }
          }

          else
          {
            v12 = 4294966996;
          }

          goto LABEL_27;
        }

        v12 = 4294966996;
        if (v16 == 1 && *&v15.msgh_size == 56 && HIBYTE(v18) == 1)
        {
          v13 = v19;
          if (v19 == v21)
          {
            v12 = 0;
            *a5 = v17;
            *a6 = v13;
            return v12;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(&v15);
      return v12;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v12 - 268435459) <= 1)
  {
    if ((v15.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v15.msgh_local_port);
    }

    goto LABEL_27;
  }

  return v12;
}

uint64_t io_hideventsystem_set_element_value_for_service(mach_port_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int *a7)
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = 1;
  v18 = a2;
  v19 = 16777472;
  v20 = a3;
  v21 = *MEMORY[0x1E69E99E0];
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  special_reply_port = mig_get_special_reply_port();
  *&v16.msgh_bits = 2147489043;
  v16.msgh_remote_port = a1;
  v16.msgh_local_port = special_reply_port;
  *&v16.msgh_voucher_port = 0x1117900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v16);
    msgh_local_port = v16.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v11 = mach_msg(&v16, 3162115, 0x44u, 0x30u, msgh_local_port, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (v16.msgh_id == 71)
      {
        v12 = 4294966988;
      }

      else if (v16.msgh_id == 70109)
      {
        if ((v16.msgh_bits & 0x80000000) == 0)
        {
          if (v16.msgh_size == 40)
          {
            if (!v16.msgh_remote_port)
            {
              v12 = HIDWORD(v18);
              if (!HIDWORD(v18))
              {
                *a7 = v19;
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          else if (v16.msgh_size == 36)
          {
            if (v16.msgh_remote_port)
            {
              v13 = 1;
            }

            else
            {
              v13 = HIDWORD(v18) == 0;
            }

            if (v13)
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = HIDWORD(v18);
            }

            goto LABEL_26;
          }
        }

        v12 = 4294966996;
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v16);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v12 - 268435459) <= 1)
  {
    if ((v16.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v16.msgh_local_port);
    }

    goto LABEL_26;
  }

LABEL_27:
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t io_hideventsystem_copy_properties_for_service(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6, _DWORD *a7, _DWORD *a8)
{
  v19 = 2;
  v20 = a2;
  v21 = 16777472;
  v22 = a3;
  v23 = a4;
  v24 = 16777472;
  v25 = a5;
  v26 = *MEMORY[0x1E69E99E0];
  v27 = a3;
  v28 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&v18.msgh_bits = 2147489043;
  v18.msgh_remote_port = a1;
  v18.msgh_local_port = special_reply_port;
  *&v18.msgh_voucher_port = 0x1117C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v18);
    msgh_local_port = v18.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v14 = mach_msg(&v18, 3162115, 0x4Cu, 0x44u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (v18.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (v18.msgh_id == 70112)
      {
        if ((v18.msgh_bits & 0x80000000) == 0)
        {
          if (v18.msgh_size == 36)
          {
            v15 = 4294966996;
            if (HIDWORD(v20))
            {
              if (v18.msgh_remote_port)
              {
                v15 = 4294966996;
              }

              else
              {
                v15 = HIDWORD(v20);
              }
            }
          }

          else
          {
            v15 = 4294966996;
          }

          goto LABEL_27;
        }

        v15 = 4294966996;
        if (v19 == 1 && *&v18.msgh_size == 60 && HIBYTE(v21) == 1)
        {
          v16 = v22;
          if (v22 == v24)
          {
            v15 = 0;
            *a6 = v20;
            *a7 = v16;
            *a8 = v25;
            return v15;
          }
        }
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(&v18);
      return v15;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v15 - 268435459) <= 1)
  {
    if ((v18.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v18.msgh_local_port);
    }

    goto LABEL_27;
  }

  return v15;
}

uint64_t io_hideventsystem_register_property_changed_notification(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_19723E130;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t io_hideventsystem_unregister_property_changed_notification(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_19723E140;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t io_hideventsystem_register_event_filter(mach_port_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 70020;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t io_hideventsystem_unregister_event_filter(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x1118500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t io_hideventsystem_register_record_client_changed_notification(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x1118600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t io_hideventsystem_unregister_record_client_changed_notification(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x1118700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t io_hideventsystem_register_record_service_changed_notification(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x1118800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t io_hideventsystem_unregister_record_service_changed_notification(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x1118900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t io_hideventsystem_remove_virtual_service(mach_port_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 70027;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x28u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t iohideventsystem_server_routine(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 70029) >= 0xFFFFFFE3)
  {
    return *(&_iohideventsystem_subsystem + 5 * (v1 - 70000) + 5);
  }

  else
  {
    return 0;
  }
}

_DWORD *_Xio_hideventsystem_do_client_refresh(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = _io_hideventsystem_do_client_refresh(result[3], (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _Xio_hideventsystem_dispatch_event(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 56)
  {
    if (*(result + 39) == 1 && *(result + 40) == *(result + 52))
    {
      v3 = *(result + 12);
      v4 = *(result + 28);
      result = _io_hideventsystem_dispatch_event();
      *(a2 + 32) = result;
      return result;
    }

    v5 = -300;
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _Xio_hideventsystem_service_conforms_to(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 64)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = _io_hideventsystem_service_conforms_to(*(result + 12), *(result + 28), v3, *(result + 56), *(result + 60), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _Xio_hideventsystem_copy_matching_event_for_service(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 64)
  {
    v3 = -304;
LABEL_9:
    *(a2 + 32) = v3;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 60))
  {
    v3 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  result = _io_hideventsystem_copy_matching_event_for_service(*(result + 12), *(result + 52), *(result + 28), *(result + 40), (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_10:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _Xio_hideventsystem_set_element_value_for_service(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 68)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = _io_hideventsystem_set_element_value_for_service(*(result + 12), *(result + 28), v3, *(result + 56), *(result + 60), *(result + 64), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _Xio_hideventsystem_copy_properties_for_service(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 76)
  {
    v3 = -304;
LABEL_11:
    *(a2 + 32) = v3;
    goto LABEL_12;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || *(result + 40) != *(result + 68) || *(result + 56) != *(result + 72))
  {
    v3 = -300;
    goto LABEL_11;
  }

  *(a2 + 36) = 16777473;
  result = _io_hideventsystem_copy_properties_for_service(*(result + 12), *(result + 28), *(result + 40), *(result + 44), *(result + 56), (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_12:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _Xio_hideventsystem_register_property_changed_notification(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 56)
  {
    if (*(result + 39) == 1 && *(result + 40) == *(result + 52))
    {
      v3 = *(result + 12);
      v4 = *(result + 28);
      result = _io_hideventsystem_register_property_changed_notification();
      *(a2 + 32) = result;
      return result;
    }

    v5 = -300;
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _Xio_hideventsystem_unregister_property_changed_notification(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 56)
  {
    if (*(result + 39) == 1 && *(result + 40) == *(result + 52))
    {
      v3 = *(result + 12);
      v4 = *(result + 28);
      result = _io_hideventsystem_unregister_property_changed_notification();
      *(a2 + 32) = result;
      return result;
    }

    v5 = -300;
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_Xio_hideventsystem_register_event_filter(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _io_hideventsystem_register_event_filter(result[3], result[8]);
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_Xio_hideventsystem_unregister_event_filter(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _io_hideventsystem_unregister_event_filter(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_Xio_hideventsystem_register_record_client_changed_notification(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _io_hideventsystem_register_record_client_changed_notification(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_Xio_hideventsystem_unregister_record_client_changed_notification(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _io_hideventsystem_unregister_record_client_changed_notification(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_Xio_hideventsystem_register_record_service_changed_notification(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _io_hideventsystem_register_record_service_changed_notification(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_Xio_hideventsystem_unregister_record_service_changed_notification(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _io_hideventsystem_unregister_record_service_changed_notification(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _Xio_hideventsystem_remove_virtual_service(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _io_hideventsystem_remove_virtual_service(*(result + 12), *(result + 32));
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t iohideventsystem_client_dispatch_event_filter(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6, _DWORD *a7, _DWORD *a8, mach_msg_timeout_t a9)
{
  v20 = 2;
  v21 = a2;
  v22 = 16777472;
  v23 = a3;
  v24 = a4;
  v25 = 16777472;
  v26 = a5;
  v27 = *MEMORY[0x1E69E99E0];
  v28 = a3;
  v29 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&v19.msgh_bits = 2147489043;
  v19.msgh_remote_port = a1;
  v19.msgh_local_port = special_reply_port;
  *&v19.msgh_voucher_port = 0x124FB00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v19);
    msgh_local_port = v19.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v15 = mach_msg(&v19, 3162515, 0x4Cu, 0x44u, msgh_local_port, a9, 0);
  v16 = v15;
  if ((v15 - 268435458) > 0xE || ((1 << (v15 - 2)) & 0x4003) == 0)
  {
    if (!v15)
    {
      if (v19.msgh_id == 71)
      {
        v16 = 4294966988;
      }

      else if (v19.msgh_id == 75103)
      {
        if ((v19.msgh_bits & 0x80000000) == 0)
        {
          if (v19.msgh_size == 36)
          {
            v16 = 4294966996;
            if (HIDWORD(v21))
            {
              if (v19.msgh_remote_port)
              {
                v16 = 4294966996;
              }

              else
              {
                v16 = HIDWORD(v21);
              }
            }
          }

          else
          {
            v16 = 4294966996;
          }

          goto LABEL_27;
        }

        v16 = 4294966996;
        if (v20 == 1 && *&v19.msgh_size == 60 && HIBYTE(v22) == 1)
        {
          v17 = v23;
          if (v23 == v25)
          {
            v16 = 0;
            *a6 = v21;
            *a7 = v17;
            *a8 = v26;
            return v16;
          }
        }
      }

      else
      {
        v16 = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(&v19);
      return v16;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v16 - 268435459) <= 1)
  {
    if ((v19.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v19.msgh_local_port);
    }

    goto LABEL_27;
  }

  return v16;
}

uint64_t iohideventsystem_client_dispatch_client_records_changed(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x124FC00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 129, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t iohideventsystem_client_dispatch_service_records_changed(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x124FD00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 129, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t iohideventsystem_copy_matching_event_from_virtual_service(mach_port_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, _DWORD *a6, mach_msg_timeout_t a7)
{
  v18 = 1;
  v19 = a3;
  v20 = 16777472;
  v21 = a4;
  v22 = *MEMORY[0x1E69E99E0];
  v23 = a2;
  v24 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&v17.msgh_bits = 2147489043;
  v17.msgh_remote_port = a1;
  v17.msgh_local_port = special_reply_port;
  *&v17.msgh_voucher_port = 0x1250200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v17);
    msgh_local_port = v17.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v13 = mach_msg(&v17, 3162515, 0x40u, 0x40u, msgh_local_port, a7, 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (!v13)
    {
      if (v17.msgh_id == 71)
      {
        v14 = 4294966988;
      }

      else if (v17.msgh_id == 75110)
      {
        if ((v17.msgh_bits & 0x80000000) == 0)
        {
          if (v17.msgh_size == 36)
          {
            v14 = 4294966996;
            if (HIDWORD(v19))
            {
              if (v17.msgh_remote_port)
              {
                v14 = 4294966996;
              }

              else
              {
                v14 = HIDWORD(v19);
              }
            }
          }

          else
          {
            v14 = 4294966996;
          }

          goto LABEL_27;
        }

        v14 = 4294966996;
        if (v18 == 1 && *&v17.msgh_size == 56 && HIBYTE(v20) == 1)
        {
          v15 = v21;
          if (v21 == v23)
          {
            v14 = 0;
            *a5 = v19;
            *a6 = v15;
            return v14;
          }
        }
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(&v17);
      return v14;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v14 - 268435459) <= 1)
  {
    if ((v17.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v17.msgh_local_port);
    }

    goto LABEL_27;
  }

  return v14;
}

uint64_t iohideventsystem_output_event_to_virtual_service(mach_port_t a1, uint64_t a2, uint64_t a3, int a4, int *a5, mach_msg_timeout_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 1;
  v18 = a3;
  v19 = 16777472;
  v20 = a4;
  v21 = *MEMORY[0x1E69E99E0];
  v22 = a2;
  v23 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1250300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v11 = mach_msg(&msg, 3162515, 0x40u, 0x30u, msgh_local_port, a6, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (msg.msgh_id == 71)
      {
        v12 = 4294966988;
      }

      else if (msg.msgh_id == 75111)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v12 = HIDWORD(v18);
              if (!HIDWORD(v18))
              {
                *a5 = v19;
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v13 = 1;
            }

            else
            {
              v13 = HIDWORD(v18) == 0;
            }

            if (v13)
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = HIDWORD(v18);
            }

            goto LABEL_26;
          }
        }

        v12 = 4294966996;
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&msg);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v12 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_26;
  }

LABEL_27:
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t iohideventsystem_client_refresh(mach_port_t a1, int a2)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x1250400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v3 = mach_msg(&msg, a2 | 1, 0x18u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v3;
}

uint64_t iohideventsystem_client_server_routine(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 75013) >= 0xFFFFFFF3)
  {
    return *(&_iohideventsystem_client_subsystem + 5 * (v1 - 75000) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t _Xiohideventsystem_client_dispatch_event_filter(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 76)
  {
    v3 = -304;
LABEL_11:
    *(a2 + 32) = v3;
    goto LABEL_12;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || *(result + 40) != *(result + 68) || *(result + 56) != *(result + 72))
  {
    v3 = -300;
    goto LABEL_11;
  }

  *(a2 + 36) = 16777473;
  result = _iohideventsystem_client_dispatch_event_filter(*(result + 12), *(result + 28), *(result + 40), *(result + 44), *(result + 56), (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_12:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *_Xiohideventsystem_client_dispatch_client_records_changed(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _iohideventsystem_client_dispatch_client_records_changed(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_Xiohideventsystem_client_dispatch_service_records_changed(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _iohideventsystem_client_dispatch_service_records_changed(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _Xiohideventsystem_copy_matching_event_from_virtual_service(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 64)
  {
    v3 = -304;
LABEL_9:
    *(a2 + 32) = v3;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 60))
  {
    v3 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  result = _iohideventsystem_copy_matching_event_from_virtual_service(*(result + 12), *(result + 52), *(result + 28), *(result + 40), (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_10:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _Xiohideventsystem_output_event_to_virtual_service(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 64)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 60)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = _iohideventsystem_output_event_to_virtual_service(*(result + 12), *(result + 52), *(result + 28), v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *_Xiohideventsystem_client_refresh(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _iohideventsystem_client_refresh(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t io_iterator_reset(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xAF300000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t io_service_get_matching_services(unsigned int a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, 480);
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 512);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 512);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xAF400000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t io_registry_entry_get_property(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xAF500000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t io_registry_iterator_enter_entry(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xAF700000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t io_registry_iterator_exit_entry(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xAF800000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t io_registry_entry_get_properties(unsigned int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  *&v6.msgh_bits = 0x1800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xAFB00000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t io_registry_entry_get_property_bytes()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v53 = *MEMORY[0x1E69E9840];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *__n = 0u;
  v24 = 0u;
  *reply_port = 0u;
  v22 = 0u;
  *(&v22 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v7 = mig_strncpy_zerofill(&__n[1], v1, 128);
  }

  else
  {
    v7 = mig_strncpy(&__n[1], v1, 128);
  }

  LODWORD(__n[0]) = 0;
  HIDWORD(__n[0]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  v9 = v8 + 44;
  v10 = reply_port + v8;
  v11 = *v3;
  if (*v3 >= 0x1000)
  {
    v11 = 4096;
  }

  *(v10 + 10) = v11;
  v12 = mig_get_reply_port();
  reply_port[0] = 5395;
  reply_port[1] = v9;
  *&reply_port[2] = __PAIR64__(v12, v6);
  *&v22 = 0xAFC00000000;
  v13 = mach_msg2_internal();
  v14 = v13;
  if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
    goto LABEL_29;
  }

  if (v13)
  {
    mig_dealloc_reply_port(reply_port[3]);
    goto LABEL_29;
  }

  if (DWORD1(v22) == 71)
  {
    v14 = 4294966988;
LABEL_28:
    mach_msg_destroy(reply_port);
    goto LABEL_29;
  }

  if (DWORD1(v22) != 2912)
  {
    v14 = 4294966995;
    goto LABEL_28;
  }

  if ((reply_port[0] & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  if (reply_port[1] - 4137 <= 0xFFFFEFFE)
  {
    if (LODWORD(__n[0]))
    {
      v15 = reply_port[2] == 0;
    }

    else
    {
      v15 = 0;
    }

    if (v15 && reply_port[1] == 36)
    {
      v14 = LODWORD(__n[0]);
    }

    else
    {
      v14 = 4294966996;
    }

    goto LABEL_28;
  }

  if (reply_port[2])
  {
LABEL_27:
    v14 = 4294966996;
    goto LABEL_28;
  }

  v14 = LODWORD(__n[0]);
  if (LODWORD(__n[0]))
  {
    goto LABEL_28;
  }

  v19 = HIDWORD(__n[0]);
  v14 = 4294966996;
  if (HIDWORD(__n[0]) > 0x1000 || reply_port[1] - 40 < HIDWORD(__n[0]) || reply_port[1] != ((WORD2(__n[0]) + 3) & 0x3FFC) + 40)
  {
    goto LABEL_28;
  }

  v20 = *v3;
  if (HIDWORD(__n[0]) <= v20)
  {
    memcpy(v5, &__n[1], HIDWORD(__n[0]));
    v14 = 0;
    *v3 = v19;
  }

  else
  {
    memcpy(v5, &__n[1], v20);
    *v3 = v19;
    v14 = 4294966989;
  }

LABEL_29:
  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t io_connect_map_shared_memory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  v9 = MEMORY[0x1EEE9AC00]();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v9;
  v40 = *MEMORY[0x1E69E9840];
  memset(v39, 0, 432);
  memset(v38, 0, sizeof(v38));
  memset(&reply_port, 0, sizeof(reply_port));
  v36 = 1;
  v37 = v18;
  DWORD1(v38[0]) = 1245184;
  *(&v38[0] + 1) = *MEMORY[0x1E69E99E0];
  LODWORD(v38[1]) = v19;
  *(&v38[1] + 4) = *v15;
  *(&v38[1] + 12) = *v13;
  DWORD1(v38[2]) = v20;
  if (MEMORY[0x1EEE9AC40])
  {
    v21 = mig_strncpy_zerofill(v39, v10, 128);
  }

  else
  {
    v21 = mig_strncpy(v39, v10, 128);
  }

  DWORD2(v38[2]) = 0;
  HIDWORD(v38[2]) = v21;
  v22 = (v21 + 3) & 0xFFFFFFFC;
  v23 = v22 + 84;
  v24 = &reply_port + v22;
  v25 = *a9;
  if (*a9 >= 0x1000)
  {
    v25 = 4096;
  }

  *(v24 + 20) = v25;
  v26 = mig_get_reply_port();
  reply_port.msgh_bits = -2147478253;
  reply_port.msgh_size = v23;
  *&reply_port.msgh_remote_port = __PAIR64__(v26, v17);
  *&reply_port.msgh_voucher_port = 0xAFF00000000;
  v27 = mach_msg2_internal();
  v28 = v27;
  if ((v27 - 268435458) <= 0xE && ((1 << (v27 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port.msgh_local_port);
    goto LABEL_29;
  }

  if (v27)
  {
    mig_dealloc_reply_port(reply_port.msgh_local_port);
    goto LABEL_29;
  }

  if (reply_port.msgh_id == 71)
  {
    v28 = 4294966988;
LABEL_28:
    mach_msg_destroy(&reply_port);
    goto LABEL_29;
  }

  if (reply_port.msgh_id != 2915)
  {
    v28 = 4294966995;
    goto LABEL_28;
  }

  if ((reply_port.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  if (reply_port.msgh_size - 4153 <= 0xFFFFEFFE)
  {
    if (LODWORD(v38[0]))
    {
      v29 = reply_port.msgh_remote_port == 0;
    }

    else
    {
      v29 = 0;
    }

    if (v29 && reply_port.msgh_size == 36)
    {
      v28 = LODWORD(v38[0]);
    }

    else
    {
      v28 = 4294966996;
    }

    goto LABEL_28;
  }

  if (reply_port.msgh_remote_port)
  {
LABEL_27:
    v28 = 4294966996;
    goto LABEL_28;
  }

  v28 = LODWORD(v38[0]);
  if (LODWORD(v38[0]))
  {
    goto LABEL_28;
  }

  v33 = DWORD1(v38[1]);
  v28 = 4294966996;
  if (DWORD1(v38[1]) > 0x1000 || reply_port.msgh_size - 56 < DWORD1(v38[1]) || reply_port.msgh_size != ((WORD2(v38[1]) + 3) & 0x3FFC) + 56)
  {
    goto LABEL_28;
  }

  *v16 = *(v38 + 4);
  *v14 = *(v38 + 12);
  v34 = *a9;
  if (v33 <= v34)
  {
    memcpy(v12, &v38[1] + 8, v33);
    v28 = 0;
    *a9 = v33;
  }

  else
  {
    memcpy(v12, &v38[1] + 8, v34);
    *a9 = v33;
    v28 = 4294966989;
  }

LABEL_29:
  v31 = *MEMORY[0x1E69E9840];
  return v28;
}

uint64_t io_connect_add_client(unsigned int a1, int a2)
{
  v9 = 0x13000000000000;
  v7 = 1;
  v8 = a2;
  v10 = 0;
  *&v6.msgh_bits = 0x2880001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB0400000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t io_registry_entry_in_plane(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB0D00000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t io_service_get_busy_state(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xB0F00000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t io_service_wait_quiet(unsigned int a1, uint64_t a2)
{
  v9 = 0;
  v7 = *MEMORY[0x1E69E99E0];
  v8 = a2;
  *&v6.msgh_bits = 0x2800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB1000000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t io_registry_entry_create_iterator(unsigned int a1, const char *a2, int a3, _DWORD *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(v17, 0, 140);
  *reply_port = 0u;
  v16 = 0u;
  *(&v16 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v7 = mig_strncpy_zerofill(v17 + 8, a2, 128);
  }

  else
  {
    v7 = mig_strncpy(v17 + 8, a2, 128);
  }

  LODWORD(v17[0]) = 0;
  DWORD1(v17[0]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  v9 = v8 + 44;
  *(v17 + v8 + 8) = a3;
  v10 = mig_get_reply_port();
  reply_port[0] = 5395;
  reply_port[1] = v9;
  *&reply_port[2] = __PAIR64__(v10, a1);
  *&v16 = 0xB1100000000;
  v11 = mach_msg2_internal();
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else
  {
    if (!v11)
    {
      if (DWORD1(v16) == 71)
      {
        v12 = 4294966988;
      }

      else if (DWORD1(v16) == 2933)
      {
        if ((reply_port[0] & 0x80000000) != 0)
        {
          v12 = 4294966996;
          if (DWORD2(v16) == 1 && reply_port[1] == 40 && !reply_port[2] && WORD3(v17[0]) << 16 == 1114112)
          {
            v12 = 0;
            *a4 = HIDWORD(v16);
            goto LABEL_26;
          }
        }

        else if (reply_port[1] == 36)
        {
          v12 = 4294966996;
          if (LODWORD(v17[0]))
          {
            if (reply_port[2])
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = LODWORD(v17[0]);
            }
          }
        }

        else
        {
          v12 = 4294966996;
        }
      }

      else
      {
        v12 = 4294966995;
      }

      mach_msg_destroy(reply_port);
      goto LABEL_26;
    }

    mig_dealloc_reply_port(reply_port[3]);
  }

LABEL_26:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t io_iterator_is_valid(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xB1200000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t io_catalog_send_data(unsigned int a1, int a2, uint64_t a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 1;
  v10 = a3;
  v11 = 16777472;
  v12 = a4;
  v13 = *MEMORY[0x1E69E99E0];
  v14 = a2;
  v15 = a4;
  *&v8.msgh_bits = 0x3C80001513;
  *&v8.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v8.msgh_voucher_port = 0xB1400000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v8.msgh_local_port);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(v8.msgh_local_port);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(&v8);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t io_catalog_terminate(unsigned int a1, int a2, char *src)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, 140);
  *reply_port = 0u;
  v10 = 0u;
  *(&v10 + 1) = *MEMORY[0x1E69E99E0];
  LODWORD(v11[0]) = a2;
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v11 + 12, src, 128);
  }

  else
  {
    v4 = mig_strncpy(v11 + 12, src, 128);
  }

  DWORD1(v11[0]) = 0;
  DWORD2(v11[0]) = v4;
  reply_port[0] = 5395;
  reply_port[1] = ((v4 + 3) & 0xFFFFFFFC) + 44;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v10 = 0xB1500000000;
  v5 = mach_msg2_internal();
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v6 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}