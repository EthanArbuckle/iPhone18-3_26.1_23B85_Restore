void VRTraceInit()
{
  v37 = *MEMORY[0x277D85DE8];
  v0 = dispatch_queue_create("com.apple.viceroytrace", 0);
  v1 = 0;
  atomic_compare_exchange_strong_explicit(&gVRTraceDispatchQueue, &v1, v0, memory_order_relaxed, memory_order_relaxed);
  if (v1)
  {
    dispatch_release(v0);
  }

  if (!gVRTraceDispatchQueue)
  {
    gVRTraceDispatchQueue = MEMORY[0x277D85CD0];
  }

  VRTraceReset_();
  if (VRTraceGetErrorLogLevelForModule("ViceroyTrace") >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR(6u);
    v3 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v2;
      *&buf[12] = 2080;
      *&buf[14] = "VRTraceInit";
      *&buf[22] = 1024;
      *&buf[24] = 314;
      _os_log_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEFAULT, "ViceroyTrace [%s] %s:%d logging-started", buf, 0x1Cu);
    }
  }

  if (VRTraceGetErrorLogLevelForModule("ViceroyTrace") >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR(6u);
    v5 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = VRTraceErrorLogLevelToCSTR(gVRTraceErrorLogLevel);
      *buf = 136316162;
      *&buf[4] = v4;
      *&buf[12] = 2080;
      *&buf[14] = "VRTraceInit";
      *&buf[22] = 1024;
      *&buf[24] = 319;
      *&buf[28] = 2080;
      *&buf[30] = v6;
      *&buf[38] = 1024;
      *&buf[40] = gVRTraceErrorLogLevel;
      _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, "ViceroyTrace [%s] %s:%d gVRTraceErrorLogLevel initialized to %s (%d)", buf, 0x2Cu);
    }
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35 = v7;
  v36 = v7;
  v33 = v7;
  v34 = v7;
  v31 = v7;
  v32 = v7;
  v29 = v7;
  v30 = v7;
  v27 = v7;
  v28 = v7;
  v25 = v7;
  v26 = v7;
  *&buf[32] = v7;
  v24 = v7;
  *buf = v7;
  *&buf[16] = v7;
  GetBundleVersion(buf);
  MEMORY[0x23EEE3420](&dword_23D4DF000, "@:@ ViceroyTrace-init");
  if (VRTraceGetErrorLogLevelForModule("ViceroyTrace") >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR(6u);
    v9 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136316418;
      v12 = v8;
      v13 = 2080;
      v14 = "VRTraceInit";
      v15 = 1024;
      v16 = 324;
      v17 = 2080;
      v18 = buf;
      v19 = 1024;
      v20 = getpid();
      v21 = 2080;
      v22 = VRTraceErrorLogLevelToCSTR(gVRTraceErrorLogLevel);
      _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, "ViceroyTrace [%s] %s:%d @:@ ViceroyTrace-init AVConference=%s, PID=%d, VRTraceErrorLogLevel=%s", &v11, 0x36u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void VRTraceReset()
{
  if (gVRTraceErrorLogLevel == -1)
  {
    VRTraceInit();

    VRTracePrintLoggingInfo();
  }

  else
  {

    VRTraceReset_();
  }
}

uint64_t VRTraceReset_()
{
  v21 = *MEMORY[0x277D85DE8];
  if (gVRTraceOSLog == MEMORY[0x277D86220])
  {
    gVRTraceOSLog = os_log_create("com.apple.AVConference", "ViceroyTrace");
  }

  __dmb(0xBu);
  if (_VRTraceIsInternalOSInstalled(0))
  {
    v0 = 7;
  }

  else
  {
    v0 = 6;
  }

  gVRTraceErrorLogLevel = v0;
  v1 = getenv_plus("VRTraceErrorLogLevel");
  if (v1 || (v1 = getenv_plus("GKSErrorLogLevel")) != 0)
  {
    v2 = VRTraceErrorLogLevelFromCSTR(v1);
    gVRTraceErrorLogLevel = v2;
  }

  else
  {
    v2 = gVRTraceErrorLogLevel;
  }

  if (v2 >= 0xA)
  {
    gVRTraceErrorLogLevel = 9;
  }

  iterate_env_plus("VRTrace", &__block_literal_global_29);
  iterate_env_plus("VRTraceErrorLogLevel_", &__block_literal_global_34);
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"VRTraceLogDebugAsInfo", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    gVRTraceLogDebugAsInfo = AppBooleanValue != 0;
    if (VRTraceGetErrorLogLevelForModule("ViceroyTrace") < 6)
    {
      goto LABEL_19;
    }

    v4 = VRTraceErrorLogLevelToCSTR(6u);
    v5 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315906;
    v14 = v4;
    v15 = 2080;
    v16 = "VRTraceReset_";
    v17 = 1024;
    v18 = 269;
    v19 = 1024;
    v20 = gVRTraceLogDebugAsInfo;
    v6 = "ViceroyTrace [%s] %s:%d VRTraceLogDebugAsInfo is set.  gVRTraceLogDebugAsInfo=%d";
  }

  else
  {
    gVRTraceLogDebugAsInfo = 0;
    if (VRTraceGetErrorLogLevelForModule("ViceroyTrace") < 6)
    {
      goto LABEL_19;
    }

    v7 = VRTraceErrorLogLevelToCSTR(6u);
    v5 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315906;
    v14 = v7;
    v15 = 2080;
    v16 = "VRTraceReset_";
    v17 = 1024;
    v18 = 272;
    v19 = 1024;
    v20 = gVRTraceLogDebugAsInfo;
    v6 = "ViceroyTrace [%s] %s:%d gVRTraceLogDebugAsInfo=%d";
  }

  _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0x22u);
LABEL_19:
  keyExistsAndHasValidFormat = 0;
  v8 = CFPreferencesGetAppBooleanValue(@"enableOSSignpost", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  result = _VRTraceIsInternalOSInstalled(0);
  if (keyExistsAndHasValidFormat)
  {
    v10 = result;
  }

  else
  {
    v10 = 0;
  }

  if (!v8)
  {
    v10 = 0;
  }

  gVRTraceOSSignpostEnabled = v10;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

char *getenv_plus(const char *a1)
{
  v2 = getenv(a1);
  if (v2)
  {
    return v2;
  }

  v3 = CFStringCreateWithCStringNoCopy(0, a1, 0x8000100u, *MEMORY[0x277CBED00]);
  v4 = CFPreferencesCopyAppValue(v3, @"com.apple.VideoConference");
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    if (!strncmp(a1, "VRTrace", 7uLL))
    {
      v5 = 0;
      goto LABEL_16;
    }

    v5 = CFPreferencesCopyAppValue(v3, *MEMORY[0x277CBF028]);
    if (!v5)
    {
LABEL_16:
      v2 = 0;
      if (!v3)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  pthread_once(&getenv_plus_once_control, getenv_plus_pthread_key_init);
  v6 = pthread_getspecific(getenv_plus_pthread_key);
  if (v6)
  {
    free(v6);
  }

  v7 = CFStringCreateWithFormat(0, 0, @"%@", v5);
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  Length = CFStringGetLength(v7);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v11 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x80EEFF9AuLL);
  pthread_setspecific(getenv_plus_pthread_key, v11);
  if (CFStringGetCString(v8, v11, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    v2 = v11;
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v8);
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_17:
  CFRelease(v3);
LABEL_18:
  if (v5)
  {
    CFRelease(v5);
  }

  return v2;
}

void iterate_env_plus(const char *a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v4 = *_NSGetEnviron();
  v5 = strlen(a1);
  v6 = *v4;
  if (*v4)
  {
    v7 = v5;
    do
    {
      if (!strncmp(v6, a1, v7))
      {
        v8 = strdup(v6);
        for (i = v8; *i; ++i)
        {
          if (*i == 61)
          {
            *i++ = 0;
            break;
          }
        }

        (*(a2 + 16))(a2, v8, i);
        free(v8);
      }

      v10 = v4[1];
      ++v4;
      v6 = v10;
    }

    while (v10);
  }

  cStr = a1;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v12 = 0;
  v13 = *MEMORY[0x277CBF028];
  v34[0] = @"com.apple.VideoConference";
  v34[1] = v13;
  v34[2] = *MEMORY[0x277CBF008];
  v14 = *MEMORY[0x277CBF040];
  v15 = *MEMORY[0x277CBF030];
  v16 = *MEMORY[0x277CBF010];
  v17 = *MEMORY[0x277CBF020];
  do
  {
    v18 = v34[v12];
    v19 = CFPreferencesCopyKeyList(v18, v14, v15);
    if (v19)
    {
      v20 = v19;
      v36.length = CFArrayGetCount(v19);
      v36.location = 0;
      CFArrayAppendArray(Mutable, v20, v36);
      CFRelease(v20);
    }

    v21 = CFPreferencesCopyKeyList(v18, v14, v16);
    if (v21)
    {
      v22 = v21;
      v37.length = CFArrayGetCount(v21);
      v37.location = 0;
      CFArrayAppendArray(Mutable, v22, v37);
      CFRelease(v22);
    }

    v23 = CFPreferencesCopyKeyList(v18, v17, v16);
    if (v23)
    {
      v24 = v23;
      v38.length = CFArrayGetCount(v23);
      v38.location = 0;
      CFArrayAppendArray(Mutable, v24, v38);
      CFRelease(v24);
    }

    ++v12;
  }

  while (v12 != 3);
  Count = CFArrayGetCount(Mutable);
  v26 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (Count)
  {
    for (j = 0; j != Count; ++j)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, j);
      CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
      if (CFStringHasPrefix(ValueAtIndex, v26))
      {
        if (CStringPtr)
        {
          v30 = getenv_plus(CStringPtr);
          if (v30)
          {
            (*(a2 + 16))(a2, CStringPtr, v30);
          }
        }
      }
    }
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (Mutable)
  {
    v31 = *MEMORY[0x277D85DE8];

    CFRelease(Mutable);
  }

  else
  {
    v32 = *MEMORY[0x277D85DE8];
  }
}

uint64_t VRTraceGetErrorLogLevelForModule(const void *a1)
{
  v1 = gVRTraceErrorLogLevel;
  if (gVRTraceModuleFilterEnabled == 1)
  {
    pthread_rwlock_rdlock(&gVRTraceLevelLock);
    value = 0xAAAAAAAAAAAAAAAALL;
    if (gVRTraceModuleFilter && CFDictionaryGetValueIfPresent(gVRTraceModuleFilter, a1, &value))
    {
      v1 = value;
    }

    pthread_rwlock_unlock(&gVRTraceLevelLock);
  }

  if ((gVRTraceLogDebugAsInfo & (v1 == 7)) != 0)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

const char *VRTraceErrorLogLevelToCSTR(unsigned int a1)
{
  if (a1 == -1)
  {
    return "UNINIT";
  }

  if (a1 < 1)
  {
    return "NONE";
  }

  if (a1 == 1)
  {
    return "ALERT";
  }

  if (a1 < 3)
  {
    return "CRITICAL";
  }

  if (a1 == 3)
  {
    return "ERROR";
  }

  if (a1 < 5)
  {
    return "ASSERT";
  }

  if (a1 == 5)
  {
    return "WARNING";
  }

  if (a1 < 7)
  {
    return "NOTICE";
  }

  if (a1 == 7)
  {
    return "INFO";
  }

  if (a1 >= 9)
  {
    return "ALL";
  }

  return "DEBUG";
}

__CFBundle *GetBundleVersion(char *a1)
{
  *a1 = 63;
  result = CFBundleGetBundleWithIdentifier(@"com.apple.ViceroyTrace");
  if (result)
  {
    result = CFBundleGetInfoDictionary(result);
    if (result)
    {
      result = CFDictionaryGetValue(result, @"CFBundleVersion");
      if (result)
      {

        return CFStringGetCString(result, a1, 256, 0x8000100u);
      }
    }
  }

  return result;
}

void VRTracePrintLoggingInfo()
{
  v56 = *MEMORY[0x277D85DE8];
  *&v0 = 0xAAAAAAAAAAAAAAAALL;
  *(&v0 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v54 = v0;
  v55 = v0;
  v52 = v0;
  v53 = v0;
  v50 = v0;
  v51 = v0;
  v48 = v0;
  v49 = v0;
  v46 = v0;
  v47 = v0;
  v44 = v0;
  v45 = v0;
  v42 = v0;
  v43 = v0;
  *buffer = v0;
  v41 = v0;
  v38 = v0;
  v39 = v0;
  v36 = v0;
  v37 = v0;
  v34 = v0;
  v35 = v0;
  v32 = v0;
  v33 = v0;
  v30 = v0;
  v31 = v0;
  v28 = v0;
  v29 = v0;
  v26 = v0;
  v27 = v0;
  *v24 = v0;
  v25 = v0;
  __strlcpy_chk();
  __strlcpy_chk();
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    CFStringGetCString(v1, buffer, 256, 0x8000100u);
    CFRelease(v2);
  }

  v3 = MGCopyAnswer();
  if (v3)
  {
    v4 = v3;
    CFStringGetCString(v3, v24, 256, 0x8000100u);
    CFRelease(v4);
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[14] = v5;
  v23[15] = v5;
  v23[12] = v5;
  v23[13] = v5;
  v23[10] = v5;
  v23[11] = v5;
  v23[8] = v5;
  v23[9] = v5;
  v23[6] = v5;
  v23[7] = v5;
  v23[4] = v5;
  v23[5] = v5;
  v23[2] = v5;
  v23[3] = v5;
  v23[0] = v5;
  v23[1] = v5;
  GetBundleVersion(v23);
  if (VRTraceGetErrorLogLevelForModule("ViceroyTrace") >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR(6u);
    v7 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316674;
      v10 = v6;
      v11 = 2080;
      v12 = "VRTracePrintLoggingInfo";
      v13 = 1024;
      v14 = 642;
      v15 = 2080;
      v16 = VRTraceErrorLogLevelToCSTR(gVRTraceErrorLogLevel);
      v17 = 2080;
      v18 = buffer;
      v19 = 2080;
      v20 = v24;
      v21 = 2080;
      v22 = v23;
      _os_log_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_DEFAULT, "ViceroyTrace [%s] %s:%d ErrorLogLevel=%s ProductType=%s BuildVersion=%s AVConference=%s", &v9, 0x44u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x32u);
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x2Cu);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x2Cu);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x32u);
}

BOOL OUTLINED_FUNCTION_18()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_19()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void sub_23D4E4B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VCDiskUtils_CreateDirectory(const char *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = mkpath_np(a1, 0x1EDu);
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR(7u);
      v4 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136316418;
        v9 = v3;
        v10 = 2080;
        v11 = "VCDiskUtils_CreateDirectory";
        v12 = 1024;
        v13 = 116;
        v14 = 2080;
        v15 = a1;
        v16 = 1024;
        v17 = v2;
        v18 = 2080;
        v19 = strerror(v2);
        _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s ret: %d (%s)", &v8, 0x36u);
      }
    }

    if (v2)
    {
      v5 = v2 == 17;
    }

    else
    {
      v5 = 1;
    }

    result = v5;
  }

  else
  {
    VCDiskUtils_CreateDirectory_cold_1();
    result = v8;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VCDiskUtils_FileZipToFile()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v14 = *MEMORY[0x277D85DE8];
  __nitems = -1431655766;
  bzero(v13, 0x4000uLL);
  bzero(__ptr, 0x4000uLL);
  while (1)
  {
    v4 = fread(v13, 1uLL, 0x4000uLL, v3);
    v5 = ferror(v3);
    if (v5)
    {
      VCDiskUtils_FileZipToFile_cold_1(v5, &__nitems_4);
      goto LABEL_12;
    }

    __nitems = 0x4000;
    v6 = CompressionUtils_CompressWithGZip(__ptr, 0x4000, &__nitems, v13, v4);
    if (v6)
    {
      VCDiskUtils_FileZipToFile_cold_2(v6, &__nitems_4);
      goto LABEL_12;
    }

    v7 = fwrite(__ptr, 1uLL, __nitems, v2);
    if (v7 != __nitems)
    {
      if (ferror(v2))
      {
        break;
      }
    }

    if (feof(v3))
    {
      result = 0;
      goto LABEL_8;
    }
  }

  VCDiskUtils_FileZipToFile_cold_3(&__nitems_4);
LABEL_12:
  result = __nitems_4;
LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_9_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x22u);
}

void sub_23D4E8E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

uint64_t ZLibAndGZipCompress(int a1, uint64_t a2, _DWORD *a3, Bytef *a4, uInt a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = 2148401153;
  if (a2 && a3 && a4 && (a5 & 0x80000000) == 0 && (*a3 & 0x80000000) == 0)
  {
    memset(&v19, 0, sizeof(v19));
    bzero(__src, 0x9C4uLL);
    if (deflateInit2_(&v19, 9, 8, a1 | 0xF, 8, 0, "1.2.12", 112))
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          ZLibAndGZipCompress_cold_1();
        }
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v19.next_in = a4;
      v19.avail_in = a5;
      while (1)
      {
        v19.next_out = __src;
        v19.avail_out = 2500;
        v13 = deflate(&v19, v12);
        if (v13)
        {
          break;
        }

        avail_out = v19.avail_out;
        v15 = 2500 - v19.avail_out + v11;
        if (*a3 < v15)
        {
          goto LABEL_18;
        }

        memcpy((a2 + v11), __src, 2500 - v19.avail_out);
        if (avail_out)
        {
          v12 = 4;
        }

        v11 = v15;
      }

      if (v13 != 1 || (v16 = 2500 - v19.avail_out + v11, *a3 < v16))
      {
LABEL_18:
        deflateEnd(&v19);
        v5 = 2148401155;
        goto LABEL_19;
      }

      memcpy((a2 + v11), __src, 2500 - v19.avail_out);
      if (deflateEnd(&v19))
      {
        if (VRTraceGetErrorLogLevelForModule("") >= 3)
        {
          VRTraceErrorLogLevelToCSTR(3u);
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            ZLibAndGZipCompress_cold_2();
          }
        }
      }

      else
      {
        v5 = 0;
        *a3 = v16;
      }
    }
  }

LABEL_19:
  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ZLibAndGZipDecompress(int a1, uint64_t a2, _DWORD *a3, Bytef *a4, uInt a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = 2148401153;
  if (a2 && a3 && a4 && (a5 & 0x80000000) == 0 && (*a3 & 0x80000000) == 0)
  {
    memset(&v19, 0, sizeof(v19));
    bzero(__src, 0x9C4uLL);
    if (inflateInit2_(&v19, a1 | 0xF, "1.2.12", 112))
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          ZLibAndGZipDecompress_cold_1();
        }
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v19.next_in = a4;
      v19.avail_in = a5;
      while (1)
      {
        v19.next_out = __src;
        v19.avail_out = 2500;
        v13 = inflate(&v19, v12);
        if (v13)
        {
          break;
        }

        avail_out = v19.avail_out;
        v15 = 2500 - v19.avail_out + v11;
        if (*a3 < v15)
        {
          goto LABEL_18;
        }

        memcpy((a2 + v11), __src, 2500 - v19.avail_out);
        if (avail_out)
        {
          v12 = 4;
        }

        v11 = v15;
      }

      if (v13 != 1 || (v16 = 2500 - v19.avail_out + v11, *a3 < v16))
      {
LABEL_18:
        inflateEnd(&v19);
        v5 = 2148401155;
        goto LABEL_19;
      }

      memcpy((a2 + v11), __src, 2500 - v19.avail_out);
      if (inflateEnd(&v19))
      {
        if (VRTraceGetErrorLogLevelForModule("") >= 3)
        {
          VRTraceErrorLogLevelToCSTR(3u);
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            ZLibAndGZipDecompress_cold_2();
          }
        }
      }

      else
      {
        v5 = 0;
        *a3 = v16;
      }
    }
  }

LABEL_19:
  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

void OUTLINED_FUNCTION_3_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void OUTLINED_FUNCTION_3_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x1Cu);
}

void OUTLINED_FUNCTION_6_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x26u);
}

double machTimeScale()
{
  if ((_MergedGlobals_0 & 1) == 0)
  {
    machTimeScale_cold_1();
  }

  return *&qword_280C07E48;
}

void sub_23D4F5FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x26u);
}

void OUTLINED_FUNCTION_13_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x22u);
}

BOOL OUTLINED_FUNCTION_14_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t reportingGKLog(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v7 = result;
    v12 = 0;
    if (a5 && *a5)
    {
      v9 = [objc_alloc(MEMORY[0x277CCACA0]) initWithUTF8String:{a5, v12}];
      v13 = a4;
      v14[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else
    {
      v10 = MEMORY[0x277CBEC10];
    }

    result = [v7 sendMessageWithCategory:a2 type:a3 payload:v10 error:&v12];
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void reportingGKAppInfo(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{a2, @"AppName", a3, @"PartName", 0}];
    v5 = 0;
    [a1 sendMessageWithCategory:40 type:0 payload:v4 error:&v5];
  }
}

void connectingGKLog(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2 >= a3)
    {
      v4 = [MEMORY[0x277CCACA0] stringWithFormat:@"%d%d, %d", a3, a2, a3];
      v5 = 1;
    }

    else
    {
      v4 = [MEMORY[0x277CCACA0] stringWithFormat:@"%d%d, %d", a2, a3, a3];
      v5 = 0;
    }

    v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v4, @"Nodes", 0}];
    v7 = 0;
    [a1 sendMessageWithCategory:1 type:v5 payload:v6 error:&v7];
  }
}

void *perfTimerStart(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 startTimingForKey:a2];
  }

  return a1;
}

void *perfTimerStop(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 stopTimingForKey:a2];
  }

  return a1;
}

uint64_t VCReportingDistributionKeys_CameraCaptureFrameRate()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = @"VCReportingDistributionKey_ReportingSum";
  v2[1] = @"VCReportingDistributionKey_ReportingCount";
  v3[0] = @"CAMFC";
  v3[1] = @"CAMDUR";
  v2[2] = @"VCReportingDistributionKey_AggregatedAverage";
  v2[3] = @"VCReportingDistributionKey_AggregatedMax";
  v3[2] = @"CAMFR";
  v3[3] = @"CAMCFRMAX";
  v2[4] = @"VCReportingDistributionKey_AggregatedMin";
  v2[5] = @"VCReportingDistributionKey_AggregatedHistogram";
  v3[4] = @"CAMCFRMIN";
  v3[5] = @"CAMFRH";
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VCReportingDistributionKeys_FIRResponseTime()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = @"VCReportingDistributionKey_ReportingSum";
  v2[1] = @"VCReportingDistributionKey_ReportingCount";
  v3[0] = @"FIRResponseTimeSum";
  v3[1] = @"FIRResponseTimeCount";
  v2[2] = @"VCReportingDistributionKey_AggregatedAverage";
  v2[3] = @"VCReportingDistributionKey_AggregatedMax";
  v3[2] = @"FIRRESPT";
  v3[3] = @"FIRRESPTMAX";
  v2[4] = @"VCReportingDistributionKey_AggregatedMin";
  v2[5] = @"VCReportingDistributionKey_AggregatedHistogram";
  v3[4] = @"FIRRESPTMIN";
  v3[5] = @"FIRRESPTH";
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VCReportingDeltaDistributionKeys_TransmitterHostTimeDelta()
{
  v3[10] = *MEMORY[0x277D85DE8];
  v2[0] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteSum";
  v2[1] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteMin";
  v3[0] = @"AVHTDAbsSum";
  v3[1] = @"AVHTDMin";
  v2[2] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteMax";
  v2[3] = @"VCReportingDistributionKey_ReportingSum";
  v3[2] = @"AVHTDMax";
  v3[3] = @"AVHTDSum";
  v2[4] = @"VCReportingDistributionKey_ReportingCount";
  v2[5] = @"VCReportingDistributionKey_AggregatedAverage";
  v3[4] = @"AVHTDCount";
  v3[5] = @"VTAVHTD";
  v2[6] = @"VCReportingDistributionKey_AggregatedMax";
  v2[7] = @"VCReportingDistributionKey_AggregatedMin";
  v3[6] = @"VTAVHTDMAX";
  v3[7] = @"VTAVHTDMIN";
  v2[8] = @"VCReportingDistributionKey_AggregatedHistogram";
  v2[9] = @"VCReportingDeltaDistributionKey_AggregatedAbsoluteAverage";
  v3[8] = @"VTAVHTDH";
  v3[9] = @"VTABSAVHTD";
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:10];
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VCReportingDistributionKeys_VideoPlayerDisplayFrameRate()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = @"VCReportingDistributionKey_ReportingSum";
  v2[1] = @"VCReportingDistributionKey_ReportingCount";
  v3[0] = @"VPFDC";
  v3[1] = @"VPFDCD";
  v2[2] = @"VCReportingDistributionKey_AggregatedAverage";
  v2[3] = @"VCReportingDistributionKey_AggregatedMax";
  v3[2] = @"VPDFR";
  v3[3] = @"VPDFRMAX";
  v2[4] = @"VCReportingDistributionKey_AggregatedMin";
  v2[5] = @"VCReportingDistributionKey_AggregatedHistogram";
  v3[4] = @"VPDFRMIN";
  v3[5] = @"VPDFRH";
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VCReportingDeltaDistributionKeys_VideoPlayerHostTimeDelta()
{
  v3[10] = *MEMORY[0x277D85DE8];
  v2[0] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteSum";
  v2[1] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteMin";
  v3[0] = @"VPAVTDAbsSum";
  v3[1] = @"VPAVTDMin";
  v2[2] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteMax";
  v2[3] = @"VCReportingDistributionKey_ReportingSum";
  v3[2] = @"VPAVTDMax";
  v3[3] = @"VPAVTDSum";
  v2[4] = @"VCReportingDistributionKey_ReportingCount";
  v2[5] = @"VCReportingDistributionKey_AggregatedAverage";
  v3[4] = @"VPAVTDCount";
  v3[5] = @"VPAVTD";
  v2[6] = @"VCReportingDistributionKey_AggregatedHistogram";
  v2[7] = @"VCReportingDeltaDistributionKey_AggregatedAbsoluteMax";
  v3[6] = @"VPAVTDH";
  v3[7] = @"VPAVTDMAX";
  v2[8] = @"VCReportingDeltaDistributionKey_AggregatedAbsoluteMin";
  v2[9] = @"VCReportingDeltaDistributionKey_AggregatedAbsoluteAverage";
  v3[8] = @"VPAVTDMIN";
  v3[9] = @"VPABSAVTD";
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:10];
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VCReportingDeltaDistributionKeys_VideoPlayerAVSyncOffset()
{
  v3[10] = *MEMORY[0x277D85DE8];
  v2[0] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteSum";
  v2[1] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteMin";
  v3[0] = @"VPAVSOAbsSum";
  v3[1] = @"VPAVSOMin";
  v2[2] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteMax";
  v2[3] = @"VCReportingDistributionKey_ReportingSum";
  v3[2] = @"VPAVSOMax";
  v3[3] = @"VPAVSOSum";
  v2[4] = @"VCReportingDistributionKey_ReportingCount";
  v2[5] = @"VCReportingDistributionKey_AggregatedAverage";
  v3[4] = @"VPAVSOCount";
  v3[5] = @"VPAVSO";
  v2[6] = @"VCReportingDistributionKey_AggregatedHistogram";
  v2[7] = @"VCReportingDeltaDistributionKey_AggregatedAbsoluteMax";
  v3[6] = @"VPAVSOH";
  v3[7] = @"VPAVSOMAX";
  v2[8] = @"VCReportingDeltaDistributionKey_AggregatedAbsoluteMin";
  v2[9] = @"VCReportingDeltaDistributionKey_AggregatedAbsoluteAverage";
  v3[8] = @"VPAVSOMIN";
  v3[9] = @"VPABSAVSO";
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:10];
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void _VCAggregatorMultiway_CollectMediaQueueTelemetry(void *a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = [a2 objectForKeyedSubscript:@"VCMQFlushPerStream"];
  v5 = [a2 objectForKeyedSubscript:@"VCMQQSizePerStream"];
  v6 = [a2 objectForKeyedSubscript:@"VCMQMaxQSizePerStream"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = [v4 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v41;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v41 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v40 + 1) + 8 * i);
          v12 = [a1 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", objc_msgSend(v11, "intValue"))}];
          [v12 setAccumulatedMediaQueueFlushCount:{objc_msgSend(v12, "accumulatedMediaQueueFlushCount") + objc_msgSend(objc_msgSend(v4, "objectForKeyedSubscript:", v11), "intValue")}];
        }

        v8 = [v4 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v8);
    }
  }

  else
  {
    _VCAggregatorMultiway_CollectMediaQueueTelemetry_cold_1();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = [v6 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v6);
          }

          v17 = *(*(&v36 + 1) + 8 * j);
          v18 = [MEMORY[0x277CCABA8] numberWithInt:{objc_msgSend(v17, "intValue")}];
          v19 = [objc_msgSend(v6 objectForKeyedSubscript:{v17), "intValue"}];
          [objc_msgSend(a1 objectForKeyedSubscript:{v18), "maxMediaQueueSize"}];
          if (v20 <= v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = v20;
          }

          [objc_msgSend(a1 objectForKeyedSubscript:{v18), "setMaxMediaQueueSize:", v21}];
        }

        v14 = [v6 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v14);
    }
  }

  else
  {
    _VCAggregatorMultiway_CollectMediaQueueTelemetry_cold_2();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = [v5 countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v5);
          }

          v26 = *(*(&v32 + 1) + 8 * k);
          v27 = [MEMORY[0x277CCABA8] numberWithInt:{objc_msgSend(v26, "intValue")}];
          v28 = [a1 objectForKeyedSubscript:v27];
          LODWORD(v26) = [objc_msgSend(v5 objectForKeyedSubscript:{v26), "intValue"}];
          [v28 accumulatedTotalMediaQueueSize];
          [v28 setAccumulatedTotalMediaQueueSize:v29 + v26];
          v30 = [a1 objectForKeyedSubscript:v27];
          [v30 setTotalMediaQueueSizeReportsCount:{objc_msgSend(v30, "totalMediaQueueSizeReportsCount") + 1}];
        }

        v23 = [v5 countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v23);
    }
  }

  else
  {
    _VCAggregatorMultiway_CollectMediaQueueTelemetry_cold_3();
  }

  v31 = *MEMORY[0x277D85DE8];
}

void _VCAggregatorMultiway_ReportMediaQueueTelemetry(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      _VCAggregatorMultiway_AddMediaQueueStreamGroupTelemetry(a1, 1, [a2 objectForKeyedSubscript:&unk_284FA5420]);
      _VCAggregatorMultiway_AddMediaQueueStreamGroupTelemetry(a1, 2, [a2 objectForKeyedSubscript:&unk_284FA5498]);
      v4 = [a2 objectForKeyedSubscript:&unk_284FA54F8];

      _VCAggregatorMultiway_AddMediaQueueStreamGroupTelemetry(a1, 3, v4);
    }

    else
    {
      _VCAggregatorMultiway_ReportMediaQueueTelemetry_cold_1();
    }
  }

  else
  {
    _VCAggregatorMultiway_ReportMediaQueueTelemetry_cold_2();
  }
}

uint64_t _VCAggregatorMultiway_AddMediaQueueStreamGroupTelemetry(void *a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%u", @"TMQFCS", a2];
  [a1 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a3, "accumulatedMediaQueueFlushCount")), v6}];
  if ([a3 totalMediaQueueSizeReportsCount])
  {
    [a3 accumulatedTotalMediaQueueSize];
    v8 = v7 / [a3 totalMediaQueueSizeReportsCount];
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%u", @"ATMQSS", a2];
  [a1 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", v8), v9}];
  v10 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%u", @"MMQSS", a2];
  v11 = MEMORY[0x277CCABA8];
  [a3 maxMediaQueueSize];
  v12 = [v11 numberWithDouble:?];

  return [a1 setObject:v12 forKeyedSubscript:v10];
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  return [v4 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t OUTLINED_FUNCTION_38()
{

  return [v0 objectForKeyedSubscript:v1];
}

uint64_t OUTLINED_FUNCTION_43()
{

  return [v1 objectForKeyedSubscript:v0];
}

uint64_t OUTLINED_FUNCTION_44()
{

  return [v1 objectForKeyedSubscript:v0];
}

uint64_t OUTLINED_FUNCTION_45()
{

  return [v0 objectForKeyedSubscript:v1];
}

double OUTLINED_FUNCTION_47@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = a2 + *(v2 + a1);
  *(v2 + a1) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_59()
{

  return [v1 objectForKeyedSubscript:v0];
}

BOOL OUTLINED_FUNCTION_60()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_61()
{

  return [v1 objectForKeyedSubscript:v0];
}

uint64_t OUTLINED_FUNCTION_63()
{

  return objc_opt_respondsToSelector();
}

uint64_t OUTLINED_FUNCTION_64()
{

  return [v0 performSelector:v1];
}

void OUTLINED_FUNCTION_66(__int16 a1@<W8>)
{
  *(v3 - 132) = a1;
  *(v2 + 14) = v1;
  *(v3 - 122) = 1024;
}

uint64_t OUTLINED_FUNCTION_68()
{

  return [v1 objectForKeyedSubscript:v0];
}

uint64_t OUTLINED_FUNCTION_69(uint64_t a1, uint64_t a2, ...)
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

uint64_t OUTLINED_FUNCTION_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{

  return [v55 countByEnumeratingWithState:&a47 objects:&a55 count:16];
}

uint64_t OUTLINED_FUNCTION_71()
{

  return [v1 objectForKeyedSubscript:v0];
}

uint64_t OUTLINED_FUNCTION_72()
{

  return [v1 objectForKeyedSubscript:v0];
}

uint64_t OUTLINED_FUNCTION_73()
{

  return [v0 objectForKeyedSubscript:v1];
}

BOOL OUTLINED_FUNCTION_74()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_75()
{

  return [v0 objectForKeyedSubscript:v1];
}

uint64_t reportingUserInfoSetValueCorrection(void *a1)
{
  result = VRTraceIsInternalOSInstalled();
  if (result)
  {
    v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v3.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    gettimeofday(&v3, 0);
    return [a1 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", v3.tv_usec / 1000000.0 + v3.tv_sec), @"_valueCorrection"}];
  }

  return result;
}

void reportingSymptom(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    [a1 updateSymptomCount:a2];

    [a1 reportingSymptom:a2 withOptionalDict:a3];
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      reportingSymptom_cold_1();
    }
  }
}

uint64_t reportingClassSendMsgToServer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[5] = *MEMORY[0x277D85DE8];
  pthread_once(&reportingVCOnce, _reportingVCRunOnce);
  result = _validClassAndSymbols();
  if (result)
  {
    v10 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D0] bundleForClass:{objc_opt_class()), "infoDictionary"), "objectForKey:", @"CFBundleVersion"}];
    if (!v10)
    {
      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          reportingClassSendMsgToServer_cold_1();
        }
      }

      v10 = @"Unknown";
    }

    v16[0] = sRTCReportingSessionInfoClientType;
    v16[1] = sRTCReportingSessionInfoClientVersion;
    v17[0] = &unk_284FA5540;
    v17[1] = v10;
    v16[2] = sRTCReportingSessionInfoSessionID;
    v17[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a1];
    v17[3] = MEMORY[0x277CBEC28];
    v16[3] = sRTCReportingSessionInfoBatchEvent;
    v16[4] = sRTCReportingSessionInfoRequireUserInfo;
    v17[4] = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
    v14[0] = sRTCReportingUserInfoClientName;
    v14[1] = sRTCReportingUserInfoServiceName;
    v15[0] = sRTCReportingFaceTimeClientName;
    v15[1] = sRTCReportingFaceTimeServiceName;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    result = [gRTCReporting_class sendOneMessageWithSessionInfo:v11 userInfo:v12 category:a3 type:a4 payload:a5 error:0];
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void _reportingVCRunOnce()
{
  v0 = dlopen("/System/Library/PrivateFrameworks/RTCReporting.framework/RTCReporting", 1);
  if (v0)
  {
    v1 = v0;
    v2 = dlsym(v0, "RTC_relaxSessions");
    sRTCReportingAPI_RelaxSessionLimit = v2;
    if (v2)
    {
      v2(10);
    }

    else
    {
      _reportingVCRunOnce_cold_1();
    }

    gRTCReporting_class = objc_getClass("RTCReporting");
    if (objc_opt_respondsToSelector())
    {
      [gRTCReporting_class updateEarlyCacheLimitWithNewLimit:400];
    }

    if (!sRTCReportingSessionInfoClientType)
    {
      v3 = dlsym(v1, "kRTCReportingSessionInfoClientType");
      if (v3)
      {
        v4 = *v3;
      }

      else
      {
        v4 = 0;
      }

      sRTCReportingSessionInfoClientType = v4;
    }

    if (!sRTCReportingSessionInfoClientVersion)
    {
      v5 = dlsym(v1, "kRTCReportingSessionInfoClientVersion");
      if (v5)
      {
        v6 = *v5;
      }

      else
      {
        v6 = 0;
      }

      sRTCReportingSessionInfoClientVersion = v6;
    }

    if (!sRTCReportingSessionInfoSessionID)
    {
      v7 = dlsym(v1, "kRTCReportingSessionInfoSessionID");
      if (v7)
      {
        v8 = *v7;
      }

      else
      {
        v8 = 0;
      }

      sRTCReportingSessionInfoSessionID = v8;
    }

    if (!sRTCReportingSessionInfoBatchEvent)
    {
      v9 = dlsym(v1, "kRTCReportingSessionInfoBatchEvent");
      if (v9)
      {
        v10 = *v9;
      }

      else
      {
        v10 = 0;
      }

      sRTCReportingSessionInfoBatchEvent = v10;
    }

    if (!sRTCReportingSessionInfoRequireUserInfo)
    {
      v11 = dlsym(v1, "kRTCReportingSessionInfoRequireUserInfo");
      if (v11)
      {
        v12 = *v11;
      }

      else
      {
        v12 = 0;
      }

      sRTCReportingSessionInfoRequireUserInfo = v12;
    }

    if (!sRTCReportingSessionInfoHierarchyToken)
    {
      v13 = dlsym(v1, "kRTCReportingSessionInfoHierarchyToken");
      if (v13)
      {
        v14 = *v13;
      }

      else
      {
        v14 = 0;
      }

      sRTCReportingSessionInfoHierarchyToken = v14;
    }

    if (!sRTCReportingSessionInfoContainsRealtimeEvents)
    {
      v15 = dlsym(v1, "kRTCReportingSessionInfoContainsRealtimeEvents");
      if (v15)
      {
        v16 = *v15;
      }

      else
      {
        v16 = 0;
      }

      sRTCReportingSessionInfoContainsRealtimeEvents = v16;
    }

    if (!sRTCReportingSessionInfoClientBundleID)
    {
      v17 = dlsym(v1, "kRTCReportingSessionInfoClientBundleID");
      if (v17)
      {
        v18 = *v17;
      }

      else
      {
        v18 = 0;
      }

      sRTCReportingSessionInfoClientBundleID = v18;
    }

    if (!sRTCReportingSessionInfoSamplingUUIID)
    {
      v19 = dlsym(v1, "kRTCReportingSessionInfoSamplingUUIID");
      if (v19)
      {
        v20 = *v19;
      }

      else
      {
        v20 = 0;
      }

      sRTCReportingSessionInfoSamplingUUIID = v20;
    }

    if (!sRTCReportingBackendUploadServer)
    {
      v21 = dlsym(v1, "kRTCReportingBackendUploadServer");
      if (v21)
      {
        v22 = *v21;
      }

      else
      {
        v22 = 0;
      }

      sRTCReportingBackendUploadServer = v22;
    }

    if (!sRTCReportingUserInfoClientName)
    {
      v23 = dlsym(v1, "kRTCReportingUserInfoClientName");
      if (v23)
      {
        v24 = *v23;
      }

      else
      {
        v24 = 0;
      }

      sRTCReportingUserInfoClientName = v24;
    }

    if (!sRTCReportingUserInfoServiceName)
    {
      v25 = dlsym(v1, "kRTCReportingUserInfoServiceName");
      if (v25)
      {
        v26 = *v25;
      }

      else
      {
        v26 = 0;
      }

      sRTCReportingUserInfoServiceName = v26;
    }

    if (!VCRTCReportingMessageParametersCategoryString)
    {
      v27 = dlsym(v1, "kRTCReportingMessageParametersCategory");
      if (v27)
      {
        v28 = *v27;
      }

      else
      {
        v28 = 0;
      }

      VCRTCReportingMessageParametersCategoryString = v28;
    }

    if (!VCRTCReportingMessageParametersTypeString)
    {
      v29 = dlsym(v1, "kRTCReportingMessageParametersType");
      if (v29)
      {
        v30 = *v29;
      }

      else
      {
        v30 = 0;
      }

      VCRTCReportingMessageParametersTypeString = v30;
    }

    if (!VCRTCReportingMessageParametersPayloadString)
    {
      v31 = dlsym(v1, "kRTCReportingMessageParametersPayload");
      if (v31)
      {
        v32 = *v31;
      }

      else
      {
        v32 = 0;
      }

      VCRTCReportingMessageParametersPayloadString = v32;
    }

    if (!VCRTCReportingMessageParametersFlag)
    {
      v33 = dlsym(v1, "kRTCReportingMessageParametersFlag");
      if (v33)
      {
        v34 = *v33;
      }

      else
      {
        v34 = 0;
      }

      VCRTCReportingMessageParametersFlag = v34;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      _reportingVCRunOnce_cold_2();
    }
  }
}

uint64_t _validClassAndSymbols()
{
  if (gRTCReporting_class)
  {
    v0 = sRTCReportingSessionInfoClientType == 0;
  }

  else
  {
    v0 = 1;
  }

  v5 = v0 || sRTCReportingSessionInfoClientVersion == 0 || sRTCReportingSessionInfoSessionID == 0 || sRTCReportingSessionInfoBatchEvent == 0 || sRTCReportingSessionInfoRequireUserInfo == 0 || sRTCReportingBackendUploadServer == 0;
  v6 = !v5;
  if (v5 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      _validClassAndSymbols_cold_1();
    }
  }

  return v6;
}

RTCReportingAgent *reportingCreateAgent(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  pthread_once(&reportingVCOnce, _reportingVCRunOnce);
  if (_validClassAndSymbols())
  {
    v2 = [RTCReportingAgent alloc];
    v3 = *(a1 + 112);
    v21 = *(a1 + 96);
    v22 = v3;
    v23 = *(a1 + 128);
    v4 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = v4;
    v5 = *(a1 + 80);
    v19 = *(a1 + 64);
    v20 = v5;
    v6 = *(a1 + 16);
    *buf = *a1;
    *&buf[16] = v6;
    v7 = [(RTCReportingAgent *)v2 initWithConfig:buf];
    if (v7)
    {
      v8 = v7;
      [(RTCReportingAgent *)v7 blockReportingQueueUntilReportingObjectInitialized];
      v9 = *(a1 + 88);
      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR(7u);
        v11 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v10;
          *&buf[12] = 2080;
          *&buf[14] = "reportingCreateAgent";
          *&buf[22] = 1024;
          *&buf[24] = 1780;
          _os_log_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d RTCReporting configuration started", buf, 0x1Cu);
        }
      }

      v12 = [(RTCReportingAgent *)v8 reportingObject];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __reportingCreateAgent_block_invoke;
      v15[3] = &unk_278BD50A8;
      v15[4] = v8;
      v15[5] = v9;
      [(RTCReporting *)v12 startConfigurationWithCompletionHandler:v15];
    }

    else
    {
      reportingCreateAgent_cold_1();
      v8 = *buf;
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __reportingCreateAgent_block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setBackends:a2];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 32), a2);
  }

  v5 = *(a1 + 32);

  return [v5 signalConfigurationCompleted];
}

void reportingReleaseObject(void *a1)
{
  if (_validReportingObject(a1, "reportingReleaseObject"))
  {
    v2 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingReleaseObject_block_invoke;
    block[3] = &unk_278BD4C38;
    block[4] = a1;
    dispatch_async(v2, block);
  }
}

BOOL _validReportingObject(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![a1 reportingObject])
  {
    if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR(7u);
      v6 = gVRTraceOSLog;
      result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        goto LABEL_9;
      }

      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "_validReportingObject";
      v12 = 1024;
      v13 = 1721;
      v14 = 2080;
      v15 = a2;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d ReportingVC(%s): invalid object.", &v8, 0x26u);
    }

    result = 0;
    goto LABEL_9;
  }

  result = 1;
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void reportingSetPeriodicAggregationOccurredHandler(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 reportingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __reportingSetPeriodicAggregationOccurredHandler_block_invoke;
    v5[3] = &unk_278BD50D0;
    v5[4] = a1;
    v5[5] = a2;
    dispatch_async(v4, v5);
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      reportingSetPeriodicAggregationOccurredHandler_cold_1();
    }
  }
}

uint64_t __reportingSetPeriodicAggregationOccurredHandler_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingSetPeriodicAggregationOccurredHandler");
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) aggregator];

    return [v4 setPeriodicAggregationOccurredHandler:v3];
  }

  return result;
}

void ReportingVC_SetEventDrivenAggregationOccurredHandler(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 reportingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __ReportingVC_SetEventDrivenAggregationOccurredHandler_block_invoke;
    v5[3] = &unk_278BD50D0;
    v5[4] = a1;
    v5[5] = a2;
    dispatch_async(v4, v5);
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      ReportingVC_SetEventDrivenAggregationOccurredHandler_cold_1();
    }
  }
}

uint64_t createAdaptiveLearningForAgent(void *a1, uint64_t a2)
{
  result = _validReportingObject(a1, "createAdaptiveLearningForAgent");
  if (result)
  {

    return [a1 setupAdaptiveLearningWithParameters:a2];
  }

  return result;
}

void reportingCancelLog(void *a1, __int16 a2)
{
  if (a1)
  {
    v4 = [a1 reportingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __reportingCancelLog_block_invoke;
    v5[3] = &unk_278BD4DE8;
    v5[4] = a1;
    v6 = a2;
    dispatch_async(v4, v5);
  }
}

void __reportingCancelLog_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingCancelLog"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:2 type:*(a1 + 40) payload:MEMORY[0x277CBEC10] error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingCancelLog_block_invoke_cold_1();
      }
    }
  }
}

void reportingSetDigestKey(void *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = [a1 reportingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __reportingSetDigestKey_block_invoke;
      block[3] = &unk_278BD4FE0;
      block[4] = a1;
      block[5] = "reportingSetDigestKey";
      block[6] = a2;
      dispatch_async(v4, block);
    }
  }
}

uint64_t __reportingSetDigestKey_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), *(a1 + 40));
  if (result)
  {
    v3 = [*(a1 + 32) reportingObject];
    v4 = *(a1 + 48);

    return [v3 setDigestKey:v4 algorithm:0];
  }

  return result;
}

void reportingCacheModuleSpecificInfo(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v8 = [VCWeakObjectHolder weakObjectHolderWithObject:a1];
    if (a2)
    {
      v9 = v8;
      v10 = [a1 reportingQueue];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __reportingCacheModuleSpecificInfo_block_invoke;
      v11[3] = &unk_278BD50F8;
      v11[4] = v9;
      v11[5] = a4;
      v11[6] = a3;
      v12 = a2;
      dispatch_async(v10, v11);
    }

    else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        reportingCacheModuleSpecificInfo_cold_1();
      }
    }
  }
}

void reportingInheritModuleSpecificInfoFromParent(void *a1, int a2, int a3)
{
  if (a1 && a2 && (a3 + 1) >= 2)
  {
    v6 = [a1 reportingQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __reportingInheritModuleSpecificInfoFromParent_block_invoke;
    v7[3] = &unk_278BD4DC0;
    v7[4] = a1;
    v8 = a2;
    v9 = a3;
    dispatch_async(v6, v7);
  }
}

uint64_t __reportingInheritModuleSpecificInfoFromParent_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfoMap];
  result = [v2 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", *(a1 + 40))}];
  if (result)
  {
    v4 = result;
    v5 = [*(a1 + 32) userInfoMap];
    v6 = [MEMORY[0x277CCABA8] numberWithInt:*(a1 + 44)];

    return [v5 setObject:v4 forKeyedSubscript:v6];
  }

  return result;
}

void reportingSetUserInfo(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v10 = [a1 reportingQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __reportingSetUserInfo_block_invoke;
    v12[3] = &unk_278BD5188;
    v12[4] = a1;
    v12[5] = a2;
    v12[6] = a3;
    v12[7] = a4;
    v12[8] = a5;
    v12[9] = "reportingSetUserInfo";
    dispatch_async(v10, v12);
  }

  else if (a5)
  {
    v11 = *(a5 + 16);

    v11(a5, 0);
  }
}

uint64_t __reportingSetUserInfo_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  result = _validReportingObject(*(a1 + 32), *(a1 + 72));
  if (result)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v3 setObject:*(a1 + 40) forKeyedSubscript:sRTCReportingUserInfoClientName];
    [v3 setObject:*(a1 + 48) forKeyedSubscript:sRTCReportingUserInfoServiceName];
    [*(a1 + 32) setServiceName:*(a1 + 48)];
    if (*(a1 + 56))
    {
      [v3 addEntriesFromDictionary:?];
    }

    if ([*(a1 + 40) isEqualToString:sRTCReportingMultiwayConferenceClientName])
    {
      if ([*(a1 + 32) subSessionId])
      {
        v4 = [objc_msgSend(*(a1 + 32) "subSessionId")];
        v5 = [MEMORY[0x277CCABA8] numberWithInt:(v4 + 1)];
      }

      else
      {
        v5 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:0];
      }

      v6 = v5;
      [v3 setObject:v5 forKeyedSubscript:kVCReportingSubSessionID];
      [*(a1 + 32) setSubSessionId:v6];
    }

    reportingUserInfoSetValueCorrection(v3);
    [objc_msgSend(*(a1 + 32) "reportingObject")];
    v7 = [*(a1 + 32) reportingObject];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __reportingSetUserInfo_block_invoke_529;
    v11[3] = &unk_278BD5140;
    v11[4] = *(a1 + 64);
    [v7 fetchReportingStatesWithUserInfo:v3 fetchComplete:v11];
    if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 8)
    {
      v8 = VRTraceErrorLogLevelToCSTR(8u);
      v9 = gVRTraceOSLog;
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v13 = v8;
          v14 = 2080;
          v15 = "reportingSetUserInfo_block_invoke_2";
          v16 = 1024;
          v17 = 1977;
          v18 = 2112;
          v19 = v3;
          _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d UserInfo=%@", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        __reportingSetUserInfo_block_invoke_cold_1();
      }
    }

    result = [objc_msgSend(*(a1 + 32) "reportingObject")];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __reportingSetUserInfo_block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [a2 hasPrefix:@"URL for the session is:"];
    v4 = v3 ? 7 : 8;
    if (v4 <= VRTraceGetErrorLogLevelForModule("ReportingVC"))
    {
      v5 = VRTraceErrorLogLevelToCSTR(v4);
      if (v3)
      {
        v6 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v6 = gVRTraceOSLog;
        if (gVRTraceLogDebugAsInfo == 1)
        {
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
LABEL_11:
            v8 = 136315906;
            v9 = v5;
            v10 = 2080;
            v11 = "reportingSetUserInfo_block_invoke";
            v12 = 1024;
            v13 = 1969;
            v14 = 2112;
            v15 = a2;
            _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d ReportingVC: %@", &v8, 0x26u);
          }
        }

        else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
        {
          __reportingSetUserInfo_block_invoke_2_cold_1();
        }
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __reportingSetUserInfo_block_invoke_529(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __reportingSetUserInfo_block_invoke_530(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 8)
  {
    v3 = VRTraceErrorLogLevelToCSTR(8u);
    v4 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136316162;
        v7 = v3;
        v8 = 2080;
        v9 = "reportingSetUserInfo_block_invoke";
        v10 = 1024;
        v11 = 1984;
        v12 = 1024;
        v13 = 1984;
        v14 = 1024;
        v15 = [a2 code];
        _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/ReportingVC.m:%d: flushMessages: error code %d.", &v6, 0x28u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      __reportingSetUserInfo_block_invoke_530_cold_1();
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void reportingLog(void *a1, int a2, __int16 a3, __int16 a4, uint64_t a5, _BYTE *a6)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a6 && *a6)
    {
      v17 = a5;
      v18[0] = [MEMORY[0x277CCACA0] stringWithUTF8String:a6];
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    }

    else
    {
      v10 = 0;
    }

    v11 = [a1 reportingQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __reportingLog_block_invoke;
    v13[3] = &unk_278BD5058;
    v14 = a2;
    v13[4] = a1;
    v13[5] = v10;
    v15 = a3;
    v16 = a4;
    dispatch_async(v11, v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __reportingLog_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingLog"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 52) type:*(a1 + 54) payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v2}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingLog_block_invoke_cold_1();
      }
    }
  }
}

id combineModuleSpecificInfoAndPayload(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return a3;
  }

  if (!a2)
  {
    return a3;
  }

  if (!a3)
  {
    return a3;
  }

  v6 = [a1 userInfoMap];
  if (![v6 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", a2)}])
  {
    return a3;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v7 addEntriesFromDictionary:a3];
  v8 = [a1 userInfoMap];
  [v7 addEntriesFromDictionary:{objc_msgSend(v8, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", a2))}];

  return v7;
}

void reportingPIPEnabled(void *a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"PIPDUR";
  v5[0] = [MEMORY[0x277CCABA8] numberWithBool:a2];
  reportingGenericEvent(a1, 48, 0, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1]);
  v3 = *MEMORY[0x277D85DE8];
}

void reportingGenericEvent(void *a1, __int16 a2, __int16 a3, uint64_t a4)
{
  if (a1)
  {
    v8 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingGenericEvent_block_invoke;
    block[3] = &unk_278BD48B8;
    v10 = a2;
    v11 = a3;
    block[4] = a1;
    block[5] = a4;
    dispatch_async(v8, block);
  }
}

void reportingRecordingAndTranscriptionServiceUsage(void *a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"RATSU";
  v5[0] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:a2];
  reportingGenericEvent(a1, 349, 0, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1]);
  v3 = *MEMORY[0x277D85DE8];
}

void __reportingGenericEvent_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (_validReportingObject(*(a1 + 32), "reportingGenericEvent"))
  {
    v7 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 48) type:*(a1 + 50) payload:*(a1 + 40) error:&v7] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      v2 = VRTraceErrorLogLevelToCSTR(3u);
      v3 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 48);
        v6 = [v7 code];
        *buf = 136316418;
        v9 = v2;
        v10 = 2080;
        v11 = "reportingGenericEvent_block_invoke";
        v12 = 1024;
        v13 = 2043;
        v14 = 1024;
        v15 = 2043;
        v16 = 1024;
        v17 = v5;
        v18 = 1024;
        v19 = v6;
        _os_log_error_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_ERROR, "ReportingVC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/ReportingVC.m:%d: eventType:%d error code %d.", buf, 0x2Eu);
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void reportingAdaptiveLearningStats(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v14[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v13[0] = @"TtSD";
    v14[0] = [MEMORY[0x277CCABA8] numberWithDouble:?];
    v13[1] = @"BtRD";
    v14[1] = [MEMORY[0x277CCABA8] numberWithInt:a4];
    v13[2] = @"IBTR";
    v14[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a3];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v9 = [a1 reportingQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __reportingAdaptiveLearningStats_block_invoke;
    v11[3] = &unk_278BD48B8;
    v12 = a2;
    v11[4] = a1;
    v11[5] = v8;
    dispatch_async(v9, v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __reportingAdaptiveLearningStats_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingAdaptiveLearningStats"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:83 type:*(a1 + 48) payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingAdaptiveLearningStats_block_invoke_cold_1();
      }
    }
  }
}

void reportingNoRemoteChanged(void *a1, __int16 a2)
{
  if (a1)
  {
    v4 = [a1 reportingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __reportingNoRemoteChanged_block_invoke;
    v5[3] = &unk_278BD4DE8;
    v5[4] = a1;
    v6 = a2;
    dispatch_async(v4, v5);
  }
}

void __reportingNoRemoteChanged_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingNoRemoteChanged"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:82 type:*(a1 + 40) payload:0 error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingNoRemoteChanged_block_invoke_cold_1();
      }
    }
  }
}

void reportingCallEndError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v20[5] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v19[0] = @"CallEndError";
    v20[0] = [MEMORY[0x277CCABA8] numberWithUnsignedShort:a2];
    v19[1] = @"Term";
    v20[1] = [MEMORY[0x277CCABA8] numberWithUnsignedShort:a3];
    v19[2] = @"NoRemote";
    v20[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4];
    v19[3] = @"RemoteNoRemote";
    v20[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a5];
    v19[4] = @"CallEndErrorDomain";
    if (a7 && *a7)
    {
      v13 = [MEMORY[0x277CCACA0] stringWithFormat:@"%s", a7];
    }

    else
    {
      v13 = &stru_284F80940;
    }

    v20[4] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
    v15 = [objc_alloc(MEMORY[0x277CCAD70]) initWithUUIDBytes:a6];
    v16 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingCallEndError_block_invoke;
    block[3] = &unk_278BD51B0;
    block[4] = a1;
    block[5] = v14;
    block[6] = v15;
    block[7] = "reportingCallEndError";
    block[8] = a1;
    dispatch_async(v16, block);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __reportingCallEndError_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), *(a1 + 56)))
  {
    v5 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:39 type:1 payload:*(a1 + 40) error:&v5] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingCallEndError_block_invoke_cold_1();
      }
    }

    v2 = [objc_msgSend(objc_msgSend(*(a1 + 32) "aggregator")];
    if ([v2 algosScoreDictionary])
    {
      v3 = objc_opt_new();
      [v3 addEntriesFromDictionary:{objc_msgSend(v2, "algosScoreDictionary")}];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"kSymptomReporterClientUUID", [*(a1 + 48) UUIDString]);
      CFDictionarySetValue(Mutable, @"kSymptomReporterAlgosDictionaryKey", v3);
      reportingSymptom(*(a1 + 64), 32, Mutable);

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingCallEndError_block_invoke_cold_2();
      }
    }

    [*(a1 + 32) sendNetworkScoreDictionary:objc_msgSend(objc_msgSend(*(a1 + 32) networkScoreType:{"aggregator"), "algosScoreAggregator"), 0}];
  }
}

void reportingModeRoleTransportLog(void *a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v14[0] = @"DeviceRole";
    v15[0] = [MEMORY[0x277CCABA8] numberWithUnsignedShort:?];
    v14[1] = @"TransportType";
    v15[1] = [MEMORY[0x277CCABA8] numberWithUnsignedShort:a4];
    v14[2] = @"INTTR";
    v15[2] = [MEMORY[0x277CCABA8] numberWithBool:a5];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v10 = [a1 reportingQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __reportingModeRoleTransportLog_block_invoke;
    v12[3] = &unk_278BD4E10;
    v13 = a2;
    v12[4] = a1;
    v12[5] = v9;
    dispatch_async(v10, v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __reportingModeRoleTransportLog_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingModeRoleTransportLog"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:29 type:*(a1 + 48) payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingModeRoleTransportLog_block_invoke_cold_1();
      }
    }
  }
}

void reportingTierLog(void *a1, int a2, __int16 a3, unsigned int *a4, uint64_t a5)
{
  v17[9] = *MEMORY[0x277D85DE8];
  if (a1 && a4)
  {
    v16[0] = @"Tier";
    v17[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*a4];
    v16[1] = @"Dup";
    v17[1] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4[1]];
    v16[2] = @"Bundle";
    v17[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4[4]];
    v16[3] = @"Payload";
    v17[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4[5]];
    v16[4] = @"BitRate";
    v17[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4[6]];
    v16[5] = @"RedPayloads";
    v17[5] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4[2]];
    v16[6] = @"RedMaxDelay";
    v17[6] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4[3]];
    v16[7] = @"REDPayloadBitrate";
    v17[7] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4[7]];
    v16[8] = @"Mode";
    v17[8] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a5];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:9];
    v11 = [a1 reportingQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __reportingTierLog_block_invoke;
    v13[3] = &unk_278BD5080;
    v14 = a2;
    v13[4] = a1;
    v13[5] = v10;
    v15 = a3;
    dispatch_async(v11, v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __reportingTierLog_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingTierLog"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:35 type:*(a1 + 52) payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v2}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingTierLog_block_invoke_cold_1();
      }
    }
  }
}

void reportingPerfTimes(void *a1, int a2, void *a3, uint64_t a4)
{
  if (a1 && a3)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = 0;
    v8 = &kVCReporting_PerfTimersKeys;
    do
    {
      if ([a3 hasKey:v7] && objc_msgSend(a3, "isValidTimingForKey:", v7))
      {
        v9 = [MEMORY[0x277CCACA0] stringWithFormat:@"%s", v8];
        v10 = MEMORY[0x277CCABA8];
        [a3 timingForKey:v7];
        [v6 setObject:objc_msgSend(v10 forKeyedSubscript:{"numberWithInt:", (v11 * 1000.0)), v9}];
      }

      ++v7;
      v8 += 31;
    }

    while (v7 != 24);
    if (a4)
    {
      [v6 addEntriesFromDictionary:?];
    }

    v12 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingPerfTimes_block_invoke;
    block[3] = &unk_278BD48B8;
    block[4] = a1;
    block[5] = v6;
    v16 = a2;
    dispatch_async(v12, block);
  }
}

void __reportingPerfTimes_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingPerfTimes"))
  {
    v4 = 0;
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    if (v3)
    {
      v2 = combineModuleSpecificInfoAndPayload(*(a1 + 32), v3, *(a1 + 40));
    }

    if (([*(a1 + 32) sendMessageWithCategory:34 type:0 payload:v2 error:&v4] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingPerfTimes_block_invoke_cold_1();
      }
    }
  }
}

BOOL reportingRegisterPeriodicTask(_BOOL8 result, int a2, char a3, char a4, uint64_t a5)
{
  if (result)
  {
    if ((a2 + 1) > 1)
    {
      v9 = result;
      v10 = [result reportingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __reportingRegisterPeriodicTask_block_invoke;
      block[3] = &unk_278BD5200;
      v12 = a2;
      v13 = a3;
      v14 = a4;
      block[4] = v9;
      block[5] = a5;
      dispatch_async(v10, block);
      return 1;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        reportingRegisterPeriodicTask_cold_1();
      }

      return 0;
    }
  }

  return result;
}

uint64_t __reportingRegisterPeriodicTask_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingRegisterPeriodicTask");
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 52);
    v5 = *(a1 + 53);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __reportingRegisterPeriodicTask_block_invoke_2;
    v7[3] = &unk_278BD51D8;
    v6 = *(a1 + 32);
    v7[4] = *(a1 + 40);
    return [v6 registerPeriodicTaskForModule:v3 needToUpdate:v4 needToReport:v5 serviceBlock:v7];
  }

  return result;
}

uint64_t __reportingRegisterPeriodicTask_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

BOOL reportingRegisterPeriodicTaskWeak(_BOOL8 result, uint64_t a2, int a3, char a4, char a5, uint64_t a6)
{
  if (result)
  {
    if ((a3 + 1) > 1)
    {
      if (a2)
      {
        if (a6)
        {
          v10 = result;
          v11 = [[VCWeakObjectHolder alloc] initWithObject:a2];
          v12 = [v10 reportingQueue];
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __reportingRegisterPeriodicTaskWeak_block_invoke;
          v13[3] = &unk_278BD5250;
          v14 = a3;
          v15 = a4;
          v16 = a5;
          v13[4] = v10;
          v13[5] = v11;
          v13[6] = a6;
          dispatch_async(v12, v13);

          return 1;
        }

        if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
        {
          VRTraceErrorLogLevelToCSTR(3u);
          result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          reportingRegisterPeriodicTaskWeak_cold_1();
        }
      }

      else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        reportingRegisterPeriodicTaskWeak_cold_2();
      }
    }

    else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      reportingRegisterPeriodicTaskWeak_cold_3();
    }

    return 0;
  }

  return result;
}

uint64_t __reportingRegisterPeriodicTaskWeak_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingRegisterPeriodicTaskWeak");
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v5 = *(a1 + 60);
    v6 = *(a1 + 61);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __reportingRegisterPeriodicTaskWeak_block_invoke_2;
    v7[3] = &unk_278BD5228;
    v8 = *(a1 + 40);
    return [v3 registerPeriodicTaskForModule:v4 needToUpdate:v5 needToReport:v6 serviceBlock:v7];
  }

  return result;
}

void __reportingRegisterPeriodicTaskWeak_block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x23EEE3290]([*(a1 + 32) weak]);
  if (v2)
  {
    v3 = v2;
    (*(*(a1 + 40) + 16))();
    v4 = *MEMORY[0x277D85DE8];

    CFRelease(v3);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR(5u);
      v6 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v5;
        v10 = 2080;
        v11 = "reportingRegisterPeriodicTaskWeak_block_invoke_2";
        v12 = 1024;
        v13 = 2281;
        _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d reportingRegisterPeriodicTaskWeak: reportingObject has already been dealloced", &v8, 0x1Cu);
      }
    }

    v7 = *MEMORY[0x277D85DE8];
  }
}

BOOL reportingRegisterPeriodicTaskOnQueue(_BOOL8 result, uint64_t a2, int a3, char a4, char a5, uint64_t a6)
{
  if (result)
  {
    if ((a3 + 1) > 1)
    {
      v11 = result;
      v12 = [result reportingQueue];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __reportingRegisterPeriodicTaskOnQueue_block_invoke;
      v13[3] = &unk_278BD5250;
      v14 = a3;
      v15 = a4;
      v16 = a5;
      v13[4] = v11;
      v13[5] = a2;
      v13[6] = a6;
      dispatch_async(v12, v13);
      return 1;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        reportingRegisterPeriodicTaskOnQueue_cold_1();
      }

      return 0;
    }
  }

  return result;
}

uint64_t __reportingRegisterPeriodicTaskOnQueue_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingRegisterPeriodicTaskOnQueue");
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v5 = *(a1 + 60);
    v6 = *(a1 + 61);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __reportingRegisterPeriodicTaskOnQueue_block_invoke_2;
    v7[3] = &unk_278BD5228;
    v8 = *(a1 + 40);
    return [v3 registerPeriodicTaskForModule:v4 needToUpdate:v5 needToReport:v6 serviceBlock:v7];
  }

  return result;
}

void __reportingRegisterPeriodicTaskOnQueue_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __reportingRegisterPeriodicTaskOnQueue_block_invoke_3;
  v4[3] = &unk_278BD5278;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_sync(v2, v4);
}

uint64_t __reportingRegisterPeriodicTaskOnQueue_block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

BOOL reportingUnregisterPeriodicTask(_BOOL8 result, int a2)
{
  if (result)
  {
    if ((a2 + 1) > 1)
    {
      v3 = result;
      v4 = [result reportingQueue];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __reportingUnregisterPeriodicTask_block_invoke;
      v5[3] = &unk_278BD4D98;
      v5[4] = v3;
      v6 = a2;
      dispatch_async(v4, v5);
      return 1;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        reportingUnregisterPeriodicTask_cold_1();
      }

      return 0;
    }
  }

  return result;
}

uint64_t __reportingUnregisterPeriodicTask_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingUnregisterPeriodicTask");
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 unregisterPeriodTaskForModule:v4];
  }

  return result;
}

BOOL reportingStartTimer(void *a1, __int16 a2, __int16 a3)
{
  if (a1)
  {
    v6 = [a1 reportingQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __reportingStartTimer_block_invoke;
    v8[3] = &unk_278BD4D98;
    v8[4] = a1;
    v9 = a2;
    v10 = a3;
    dispatch_async(v6, v8);
  }

  return a1 != 0;
}

uint64_t __reportingStartTimer_block_invoke(uint64_t a1)
{
  v3 = 0;
  reportingGetDefaults(&v3 + 1, &v3);
  [*(a1 + 32) clientType];
  result = _validReportingObject(*(a1 + 32), "reportingStartTimer");
  if (result)
  {
    return [*(a1 + 32) startLogTimerWithInterval:HIDWORD(v3) reportingMultiplier:v3 category:*(a1 + 40) type:*(a1 + 42)];
  }

  return result;
}

void reportingGetDefaults(int *a1, int *a2)
{
  if (a1 && a2)
  {
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"ReportingUpdateInterval", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
    if (AppIntegerValue <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = AppIntegerValue;
    }

    if (v5 >= 10)
    {
      v5 = 10;
    }

    if (keyExistsAndHasValidFormat)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1;
    }

    *a1 = v6;
    v7 = CFPreferencesGetAppIntegerValue(@"ReportingFrequency", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= 10)
    {
      v8 = 10;
    }

    if (keyExistsAndHasValidFormat)
    {
      v9 = v8;
    }

    else
    {
      v9 = 5;
    }

    *a2 = v9;
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      reportingGetDefaults_cold_1();
    }
  }
}

BOOL reportingStopTimer(void *a1)
{
  if (a1)
  {
    v2 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingStopTimer_block_invoke;
    block[3] = &unk_278BD4C38;
    block[4] = a1;
    dispatch_async(v2, block);
  }

  return a1 != 0;
}

uint64_t __reportingStopTimer_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingStopTimer");
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 stopLogTimer];
  }

  return result;
}

BOOL reportingSetNWActivityReportingEnabled(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 reportingSetNetworkActivityReportingEnabled:a2];
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      reportingSetNWActivityReportingEnabled_cold_1();
    }
  }

  return a1 != 0;
}

uint64_t reportingStreamGroupFromStreamGroupID(int a1)
{
  if (a1 <= 1718909043)
  {
    if (a1 > 1667329398)
    {
      if (a1 == 1667329399)
      {
        return 5;
      }

      if (a1 == 1667330164)
      {
        return 7;
      }
    }

    else
    {
      if (a1 == 1650745716)
      {
        return 10;
      }

      if (a1 == 1667329381)
      {
        return 1;
      }
    }
  }

  else if (a1 <= 1835623286)
  {
    if (a1 == 1718909044)
    {
      return 8;
    }

    if (a1 == 1835623282)
    {
      return 2;
    }
  }

  else
  {
    switch(a1)
    {
      case 1835623287:
        return 6;
      case 1935897189:
        return 3;
      case 1937339233:
        return 4;
    }
  }

  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    reportingStreamGroupFromStreamGroupID_cold_1();
  }

  return 0;
}

uint64_t reportingSessionModeFromOperatingMode(int a1)
{
  switch(a1)
  {
    case 6:
      return 2;
    case 2:
      return 1;
    case 1:
      return 2;
  }

  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    reportingSessionModeFromOperatingMode_cold_1();
  }

  return 0;
}

uint64_t reportingGetLearntBitrateForSegment(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return [a1 learntBitrateForSegment:a2 defaultValue:a3];
  }

  else
  {
    return a3;
  }
}

void reportingAgentGetAlgoScores(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    [a1 reportingAgentGetAlgosScores:a2 newAlgosScore:a3];
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      reportingAgentGetAlgoScores_cold_1();
    }
  }
}

void *reportingGetUploadFlag(void *result)
{
  if (result)
  {
    v1 = [result backends];
    return [v1 containsObject:sRTCReportingBackendUploadServer];
  }

  return result;
}

BOOL reportingUploadFileWithName(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 reportingQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __reportingUploadFileWithName_block_invoke;
    v6[3] = &unk_278BD4D48;
    v6[4] = a1;
    v6[5] = a2;
    dispatch_async(v4, v6);
  }

  return a1 != 0;
}

uint64_t __reportingUploadFileWithName_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingUploadFileWithName");
  if (result)
  {
    v3 = [*(a1 + 32) reportingObject];
    v4 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 40)];

    return [v3 uploadFileWithURL:v4 completionHandler:&__block_literal_global_616];
  }

  return result;
}

void __reportingUploadFileWithName_block_invoke_2(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "failed";
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "reportingUploadFileWithName_block_invoke_2";
      if (a2)
      {
        v5 = "successful";
      }

      v11 = 1024;
      v12 = 2522;
      v13 = 2080;
      v14 = v5;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d reportingUploadFileWithName: %s.", &v7, 0x26u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void reportingMLEnhance(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = [MEMORY[0x277CBEB38] dictionary];
  [v10 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", a3), @"MLSFENB"}];
  if (a2)
  {
    [v10 setObject:a2 forKeyedSubscript:@"VCSPUUID"];
  }

  if ((a5 & 1) == 0)
  {
    [v10 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", a4), @"MLSW"}];
  }

  reportingGenericEvent(a1, 48, 0, v10);
}

void reportingVideoProp(void *a1, int a2, __int16 a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v15 = MEMORY[0x277CBEB38];
    v24[0] = @"Width";
    v25[0] = [MEMORY[0x277CCABA8] numberWithInt:a5];
    v24[1] = @"Height";
    v25[1] = [MEMORY[0x277CCABA8] numberWithInt:a6];
    v24[2] = @"Framerate";
    v25[2] = [MEMORY[0x277CCABA8] numberWithInt:a7];
    v16 = [v15 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v25, v24, 3)}];
    v17 = v16;
    if (a8)
    {
      [v16 addEntriesFromDictionary:a8];
    }

    v18 = [a1 reportingQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __reportingVideoProp_block_invoke;
    v20[3] = &unk_278BD5058;
    v21 = a2;
    v20[4] = a1;
    v20[5] = v17;
    v22 = a3;
    v23 = a4;
    dispatch_async(v18, v20);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __reportingVideoProp_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingVideoProp"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 52) type:*(a1 + 54) payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v2}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingVideoProp_block_invoke_cold_1();
      }
    }
  }
}

void reportingVideoFeatureToggle(void *a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v8 = a2;
    v9[0] = [MEMORY[0x277CCABA8] numberWithBool:?];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v4 = [a1 reportingQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __reportingGenericEvent_block_invoke;
    v6[3] = &unk_278BD48B8;
    v7 = 48;
    v6[4] = a1;
    v6[5] = v3;
    dispatch_async(v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t reportingDefaultRealtimePeriod()
{
  v2 = 0;
  v1 = 0;
  reportingGetDefaults(&v2, &v1);
  return (v1 * v2);
}

uint64_t algoScorerPeriodicTask(void *a1, void *a2)
{
  v4 = 0.0;
  v5 = 0.0;
  [a1 reportingAgentGetAlgosScores:&v5 newAlgosScore:&v4];
  [a2 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", v4 - v5), @"iALGOS"}];
  return [a2 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", v4), @"ALGOS"}];
}

void reportingRegisterSystemStats(void *a1, int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v27 = -38605833;
    keys = xmmword_23D59AB80;
    if (MGIsDeviceOneOfType())
    {
      v4 = 2;
    }

    else
    {
      v25 = -894965712;
      values = xmmword_23D59AB94;
      if (MGIsDeviceOneOfType())
      {
        v4 = 3;
      }

      else
      {
        v23 = -2101636455;
        valuePtr = xmmword_23D59ABA8;
        if (MGIsDeviceOneOfType())
        {
          v4 = 4;
        }

        else
        {
          v21 = -1955568593;
          v20 = xmmword_23D59ABBC;
          if (MGIsDeviceOneOfType())
          {
            v4 = 5;
          }

          else
          {
            v19 = 28030256;
            v18 = xmmword_23D59ABD0;
            if (MGIsDeviceOneOfType())
            {
              v4 = 6;
            }

            else
            {
              v17 = 1214363620;
              v16 = xmmword_23D59ABE4;
              if (MGIsDeviceOneOfType())
              {
                v4 = 7;
              }

              else
              {
                v4 = 0;
              }
            }
          }
        }
      }
    }

    if (!_MergedGlobals_1007)
    {
      v5 = IOServiceMatching("IOPMPowerSource");
      if (v5)
      {
        _MergedGlobals_1007 = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v5);
      }
    }

    if (!dword_27E2DEF84)
    {
      *&values = @"backlight-control";
      v11 = *MEMORY[0x277CBECE8];
      *&keys = CFDictionaryCreate(*MEMORY[0x277CBECE8], &values, MEMORY[0x277CBED28], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (keys)
      {
        *&values = @"IOPropertyMatch";
        v12 = CFDictionaryCreate(v11, &values, &keys, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFRelease(keys);
        if (v12)
        {
          dword_27E2DEF84 = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v12);
        }
      }
    }

    if (v4)
    {
      if (!hidEventSystem)
      {
        v6 = *MEMORY[0x277CBECE8];
        hidEventSystem = IOHIDEventSystemClientCreate();
        if (hidEventSystem)
        {
          *&keys = @"PrimaryUsagePage";
          *(&keys + 1) = @"PrimaryUsage";
          LODWORD(valuePtr) = 65280;
          LODWORD(v20) = 5;
          *&values = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
          *(&values + 1) = CFNumberCreate(v6, kCFNumberSInt32Type, &v20);
          v7 = CFDictionaryCreate(v6, &keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFRelease(values);
          CFRelease(*(&values + 1));
          IOHIDEventSystemClientSetMatching();
          CFRelease(v7);
          qword_27E2DEF88 = IOHIDEventSystemClientCopyServices(hidEventSystem);
        }
      }
    }

    v8 = [VCWeakObjectHolder weakObjectHolderWithObject:a1, 0];
    v9 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingRegisterSystemStats_block_invoke;
    block[3] = &unk_278BD5058;
    v14 = a2;
    v15 = v4;
    block[4] = a1;
    block[5] = v8;
    dispatch_async(v9, block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __reportingRegisterSystemStats_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingRegisterSystemStats");
  if (result)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __reportingRegisterSystemStats_block_invoke_2;
    v5[3] = &unk_278BD52C0;
    v3 = *(a1 + 48);
    v6 = *(a1 + 52);
    v4 = *(a1 + 32);
    v5[4] = *(a1 + 40);
    return [v4 registerPeriodicTaskForModule:v3 needToUpdate:0 needToReport:1 serviceBlock:v5];
  }

  return result;
}

void reportingThermal(void *a1, int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v22[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v21[0] = @"Thermal";
    v22[0] = [MEMORY[0x277CCABA8] numberWithInt:a4];
    v21[1] = @"TimeToThermal";
    v22[1] = [MEMORY[0x277CCABA8] numberWithInt:a5];
    v21[2] = @"Charging";
    valuePtr = 0;
    MatchingService = _MergedGlobals_1007;
    if (!_MergedGlobals_1007)
    {
      v10 = IOServiceMatching("IOPMPowerSource");
      if (v10)
      {
        MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v10);
        _MergedGlobals_1007 = MatchingService;
        if (!MatchingService)
        {
          goto LABEL_10;
        }
      }

      else
      {
        MatchingService = _MergedGlobals_1007;
        if (!_MergedGlobals_1007)
        {
          goto LABEL_10;
        }
      }
    }

    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IsCharging", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v12 = CFProperty;
      CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
      CFRelease(v12);
      if (valuePtr)
      {
        v13 = @"Yes";
LABEL_11:
        v22[2] = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
        v15 = [a1 reportingQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __reportingThermal_block_invoke;
        block[3] = &unk_278BD5080;
        v18 = a2;
        block[4] = a1;
        block[5] = v14;
        v19 = a3;
        dispatch_async(v15, block);
        goto LABEL_12;
      }
    }

LABEL_10:
    v13 = @"No";
    goto LABEL_11;
  }

LABEL_12:
  v16 = *MEMORY[0x277D85DE8];
}

void __reportingThermal_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingThermal"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:36 type:*(a1 + 52) payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v2}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingThermal_block_invoke_cold_1();
      }
    }
  }
}

void reportingConnecting(void *a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v23[6] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v21 = 1023;
    v14 = malloc_type_calloc(1uLL, 0x400uLL, 0xB6D3A456uLL);
    if (sysctlbyname("kern.bootargs", v14, &v21, 0, 0))
    {
      v15 = @"Unavailable";
    }

    else
    {
      v14[1023] = 0;
      v15 = [MEMORY[0x277CCACA0] stringWithUTF8String:v14];
    }

    free(v14);
    v23[0] = v15;
    v22[0] = @"BootArgs";
    v22[1] = @"NegSw";
    v23[1] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a3];
    v22[2] = @"RemSw";
    v23[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4];
    v22[3] = @"RemSwAvlbl";
    v23[3] = [MEMORY[0x277CCABA8] numberWithBool:a5];
    v22[4] = @"vcrcProfNum";
    v23[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a6];
    v22[5] = @"PCHADel";
    v23[5] = [MEMORY[0x277CCABA8] numberWithDouble:a7];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:6];
    v17 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingConnecting_block_invoke;
    block[3] = &unk_278BD4E10;
    v20 = a2;
    block[4] = a1;
    block[5] = v16;
    dispatch_async(v17, block);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __reportingConnecting_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingConnecting"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:1 type:*(a1 + 48) payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingConnecting_block_invoke_cold_1();
      }
    }
  }
}

void reportingDisconnected(void *a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[6] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v21[0] = @"FileUpload";
    v22[0] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:?];
    v21[1] = @"Roaming";
    v22[1] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:a4];
    v21[2] = @"RxExcessICE";
    v22[2] = [MEMORY[0x277CCABA8] numberWithInt:a5];
    v21[3] = @"TxExcessICE";
    v22[3] = [MEMORY[0x277CCABA8] numberWithInt:a6];
    v21[4] = @"RxExcessRTP";
    v22[4] = [MEMORY[0x277CCABA8] numberWithInt:a7];
    v21[5] = @"TxExcessRTP";
    v22[5] = [MEMORY[0x277CCABA8] numberWithInt:a8];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:6];
    v17 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingDisconnected_block_invoke;
    block[3] = &unk_278BD52E8;
    block[4] = a1;
    block[5] = a9;
    v20 = a2;
    block[6] = v16;
    dispatch_async(v17, block);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __reportingDisconnected_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingDisconnected"))
  {
    v3 = 0;
    v2 = *(a1 + 40);
    if (v2)
    {
      if (([*(a1 + 32) sendMessageWithCategory:80 type:*(a1 + 56) payload:v2 error:&v3] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          __reportingDisconnected_block_invoke_cold_1();
        }
      }
    }

    if (([*(a1 + 32) sendMessageWithCategory:4 type:*(a1 + 56) payload:*(a1 + 48) error:&v3] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingDisconnected_block_invoke_cold_2();
      }
    }
  }
}

void reportingVideoPaused(void *a1, __int16 a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v9 = @"VCSPVideoDegraded";
    v10[0] = [MEMORY[0x277CCABA8] numberWithBool:?];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v5 = [a1 reportingQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __reportingVideoPaused_block_invoke;
    v7[3] = &unk_278BD4E10;
    v8 = a2;
    v7[4] = a1;
    v7[5] = v4;
    dispatch_async(v5, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __reportingVideoPaused_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingVideoPaused"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:8 type:*(a1 + 48) payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingVideoPaused_block_invoke_cold_1();
      }
    }
  }
}

void reportingAWDCallStart(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v13[0] = @"Send";
    v14[0] = [MEMORY[0x277CCABA8] numberWithBool:a2];
    v13[1] = @"Time";
    v14[1] = [MEMORY[0x277CCABA8] numberWithLong:a3];
    v13[2] = @"Mode";
    v14[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4];
    v13[3] = @"Nonce";
    v14[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a5];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
    v10 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingAWDCallStart_block_invoke;
    block[3] = &unk_278BD4D48;
    block[4] = a1;
    block[5] = v9;
    dispatch_async(v10, block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __reportingAWDCallStart_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingAWDCallStart"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:39 type:0 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingAWDCallStart_block_invoke_cold_1();
      }
    }
  }
}

void reportingRemoteFrameSize(void *a1, uint64_t a2, uint64_t a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v9[0] = @"Width";
    v10[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a2];
    v9[1] = @"Height";
    v10[1] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a3];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
    v6 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingRemoteFrameSize_block_invoke;
    block[3] = &unk_278BD4D48;
    block[4] = a1;
    block[5] = v5;
    dispatch_async(v6, block);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __reportingRemoteFrameSize_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingRemoteFrameSize"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:39 type:2 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingRemoteFrameSize_block_invoke_cold_1();
      }
    }
  }
}

void reportingConnectionType(void *a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v7 = @"ConnType";
    v8[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a2];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v4 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingConnectionType_block_invoke;
    block[3] = &unk_278BD4D48;
    block[4] = a1;
    block[5] = v3;
    dispatch_async(v4, block);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __reportingConnectionType_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingConnectionType"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:39 type:3 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingConnectionType_block_invoke_cold_1();
      }
    }
  }
}

void reportingLocalAndRemoteInterface(void *a1, const char *a2, const char *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a3;
    v4 = a2;
    if (a2)
    {
      if (a3)
      {
LABEL_13:
        v14[0] = @"LocalInterface";
        v14[1] = @"RemoteInterface";
        v15[0] = [MEMORY[0x277CCACA0] stringWithUTF8String:v4];
        v15[1] = [MEMORY[0x277CCACA0] stringWithUTF8String:v3];
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
        v11 = [a1 reportingQueue];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __reportingLocalAndRemoteInterface_block_invoke;
        v13[3] = &unk_278BD4D48;
        v13[4] = a1;
        v13[5] = v10;
        dispatch_async(v11, v13);
        goto LABEL_14;
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
      {
        v6 = VRTraceErrorLogLevelToCSTR(5u);
        v7 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v17 = v6;
          v18 = 2080;
          v19 = "reportingLocalAndRemoteInterface";
          v20 = 1024;
          v21 = 3199;
          _os_log_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d Tried to report NULL localInterface to backends", buf, 0x1Cu);
        }
      }

      v4 = "Unknown";
      if (v3)
      {
        goto LABEL_13;
      }
    }

    if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
    {
      v8 = VRTraceErrorLogLevelToCSTR(5u);
      v9 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v17 = v8;
        v18 = 2080;
        v19 = "reportingLocalAndRemoteInterface";
        v20 = 1024;
        v21 = 3203;
        _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d Tried to report NULL remoteInterface to backends", buf, 0x1Cu);
      }
    }

    v3 = "Unknown";
    goto LABEL_13;
  }

LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
}

void __reportingLocalAndRemoteInterface_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingLocalAndRemoteInterface"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:39 type:4 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingLocalAndRemoteInterface_block_invoke_cold_1();
      }
    }
  }
}

void reportingHandoverResult(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[5] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v15[0] = @"codec";
    v16[0] = [MEMORY[0x277CCABA8] numberWithInt:a2];
    v15[1] = @"captureRule";
    v16[1] = [MEMORY[0x277CCACA0] stringWithUTF8String:a3];
    v15[2] = @"encodeRule";
    v16[2] = [MEMORY[0x277CCACA0] stringWithUTF8String:a4];
    v15[3] = @"localBitrateCap";
    v16[3] = [MEMORY[0x277CCABA8] numberWithInt:a5];
    v15[4] = @"remoteBitrateCap";
    v16[4] = [MEMORY[0x277CCABA8] numberWithInt:a6];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];
    v12 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingHandoverResult_block_invoke;
    block[3] = &unk_278BD4D48;
    block[4] = a1;
    block[5] = v11;
    dispatch_async(v12, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __reportingHandoverResult_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingHandoverResult"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:54 type:0 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingHandoverResult_block_invoke_cold_1();
      }
    }
  }
}

void reportingVisualRectangle(void *a1, __int16 a2, double a3, double a4, double a5, double a6)
{
  v17[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v16[0] = @"OriginX";
    v17[0] = [MEMORY[0x277CCABA8] numberWithDouble:?];
    v16[1] = @"OriginY";
    v17[1] = [MEMORY[0x277CCABA8] numberWithDouble:a4];
    v16[2] = @"SizeWidth";
    v17[2] = [MEMORY[0x277CCABA8] numberWithDouble:a5];
    v16[3] = @"SizeHeight";
    v17[3] = [MEMORY[0x277CCABA8] numberWithDouble:a6];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
    v12 = [a1 reportingQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __reportingVisualRectangle_block_invoke;
    v14[3] = &unk_278BD4E10;
    v15 = a2;
    v14[4] = a1;
    v14[5] = v11;
    dispatch_async(v12, v14);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __reportingVisualRectangle_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingVisualRectangle"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:60 type:*(a1 + 48) payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingVisualRectangle_block_invoke_cold_1();
      }
    }
  }
}

void reportingMediaRecorderEvents(void *a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    if (CFDictionaryGetValue(theDict, @"VCMRRecipientUUID"))
    {
      v4 = [a1 reportingQueue];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __reportingMediaRecorderEvents_block_invoke;
      v5[3] = &unk_278BD4D48;
      v5[4] = a1;
      v5[5] = theDict;
      dispatch_async(v4, v5);
    }

    else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        reportingMediaRecorderEvents_cold_1();
      }
    }
  }
}

void __reportingMediaRecorderEvents_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingMediaRecorderEvents"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:81 type:0 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingMediaRecorderEvents_block_invoke_cold_1();
      }
    }
  }
}

void reportingVideoStreamEvent(void *a1, int a2, __int16 a3, uint64_t a4)
{
  if (a1)
  {
    v8 = [a1 clientType];
    if ((v8 + 1) > 0x1C || ((1 << (v8 + 1)) & 0x15ECB1A5) == 0)
    {
      v10 = [a1 reportingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __reportingVideoStreamEvent_block_invoke;
      block[3] = &unk_278BD5080;
      v12 = a2;
      block[4] = a1;
      block[5] = a4;
      v13 = a3;
      dispatch_async(v10, block);
    }
  }
}

void __reportingVideoStreamEvent_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (_validReportingObject(*(a1 + 32), "reportingVideoStreamEvent"))
  {
    v7 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 52) type:0 payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v7}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      v2 = VRTraceErrorLogLevelToCSTR(3u);
      v3 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 52);
        v6 = [v7 code];
        *buf = 136316418;
        v9 = v2;
        v10 = 2080;
        v11 = "reportingVideoStreamEvent_block_invoke";
        v12 = 1024;
        v13 = 3382;
        v14 = 1024;
        v15 = 3382;
        v16 = 1024;
        v17 = v5;
        v18 = 1024;
        v19 = v6;
        _os_log_error_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_ERROR, "ReportingVC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/ReportingVC.m:%d: eventType:%d error code %d.", buf, 0x2Eu);
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void reportingFeatureConfigEvent(void *a1, int a2, __int16 a3, uint64_t a4)
{
  if (a1)
  {
    v8 = [a1 clientType];
    if ((v8 + 1) > 0x1C || ((1 << (v8 + 1)) & 0x15ECB1A5) == 0)
    {
      v10 = [a1 reportingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __reportingFeatureConfigEvent_block_invoke;
      block[3] = &unk_278BD5080;
      v12 = a2;
      block[4] = a1;
      block[5] = a4;
      v13 = a3;
      dispatch_async(v10, block);
    }
  }
}

void __reportingFeatureConfigEvent_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (_validReportingObject(*(a1 + 32), "reportingFeatureConfigEvent"))
  {
    v7 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 52) type:0 payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v7}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      v2 = VRTraceErrorLogLevelToCSTR(3u);
      v3 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 52);
        v6 = [v7 code];
        *buf = 136316418;
        v9 = v2;
        v10 = 2080;
        v11 = "reportingFeatureConfigEvent_block_invoke";
        v12 = 1024;
        v13 = 3405;
        v14 = 1024;
        v15 = 3405;
        v16 = 1024;
        v17 = v5;
        v18 = 1024;
        v19 = v6;
        _os_log_error_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_ERROR, "ReportingVC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/ReportingVC.m:%d: eventType:%d error code %d.", buf, 0x2Eu);
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void reportingEventWithAllowedClientType(void *a1, int a2, int a3, __int16 a4, uint64_t a5)
{
  if (a1)
  {
    if ([a1 clientType] == a2)
    {
      v9 = [a1 reportingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __reportingEventWithAllowedClientType_block_invoke;
      block[3] = &unk_278BD5080;
      v11 = a3;
      block[4] = a1;
      block[5] = a5;
      v12 = a4;
      dispatch_async(v9, block);
    }
  }
}

void __reportingEventWithAllowedClientType_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (_validReportingObject(*(a1 + 32), "reportingEventWithAllowedClientType"))
  {
    v7 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 52) type:0 payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v7}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      v2 = VRTraceErrorLogLevelToCSTR(3u);
      v3 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 52);
        v6 = [v7 code];
        *buf = 136316418;
        v9 = v2;
        v10 = 2080;
        v11 = "reportingEventWithAllowedClientType_block_invoke";
        v12 = 1024;
        v13 = 3428;
        v14 = 1024;
        v15 = 3428;
        v16 = 1024;
        v17 = v5;
        v18 = 1024;
        v19 = v6;
        _os_log_error_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_ERROR, "ReportingVC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/ReportingVC.m:%d: eventType:%d error code %d.", buf, 0x2Eu);
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void reportingAudioStreamEvent(void *a1, int a2, __int16 a3, uint64_t a4)
{
  if (a1)
  {
    v8 = [a1 serviceName];
    if (([v8 isEqualToString:sRTCReportingFaceTimeServiceName] & 1) == 0)
    {
      v9 = [a1 reportingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __reportingAudioStreamEvent_block_invoke;
      block[3] = &unk_278BD5080;
      v11 = a2;
      block[4] = a1;
      block[5] = a4;
      v12 = a3;
      dispatch_async(v9, block);
    }
  }
}

void __reportingAudioStreamEvent_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (_validReportingObject(*(a1 + 32), "reportingAudioStreamEvent"))
  {
    v7 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 52) type:0 payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v7}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      v2 = VRTraceErrorLogLevelToCSTR(3u);
      v3 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 52);
        v6 = [v7 code];
        *buf = 136316418;
        v9 = v2;
        v10 = 2080;
        v11 = "reportingAudioStreamEvent_block_invoke";
        v12 = 1024;
        v13 = 3451;
        v14 = 1024;
        v15 = 3451;
        v16 = 1024;
        v17 = v5;
        v18 = 1024;
        v19 = v6;
        _os_log_error_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_ERROR, "ReportingVC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/ReportingVC.m:%d: eventType:%d error code %d.", buf, 0x2Eu);
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void reportingAudioStreamLogMetricSample(void *a1, const void *a2)
{
  if (a1)
  {
    v4 = [a1 clientType];
    if ((v4 + 1) > 0x1C || ((1 << (v4 + 1)) & 0x1A536FF3) == 0)
    {
      CFRetain(a2);
      v6 = [a1 reportingQueue];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __reportingAudioStreamLogMetricSample_block_invoke;
      v7[3] = &unk_278BD4DC0;
      v7[4] = a1;
      v7[5] = a2;
      dispatch_async(v6, v7);
    }
  }
}

void __reportingAudioStreamLogMetricSample_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingAudioStreamLogMetricSample"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:140 type:0 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingAudioStreamLogMetricSample_block_invoke_cold_1();
      }
    }
  }

  CFRelease(*(a1 + 40));
}

void reportingAudioStreamLogCallStart(void *a1, __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[5] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v12 = [a1 clientType];
    if ((v12 + 1) > 0x1C || ((1 << (v12 + 1)) & 0x1A536FF3) == 0)
    {
      if (!a2)
      {
        if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
        {
          VRTraceErrorLogLevelToCSTR(3u);
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            reportingAudioStreamLogCallStart_cold_1();
          }
        }

        a2 = @"0";
      }

      v19[0] = a2;
      v18[0] = @"CallID";
      v18[1] = @"CodecID";
      v19[1] = [MEMORY[0x277CCABA8] numberWithInt:a3];
      v18[2] = @"ATxR";
      v19[2] = [MEMORY[0x277CCABA8] numberWithInt:a4];
      v18[3] = @"ASR";
      v19[3] = [MEMORY[0x277CCABA8] numberWithInt:a5];
      v18[4] = @"PTM";
      v19[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a6];
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
      v16 = [a1 reportingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __reportingAudioStreamLogCallStart_block_invoke;
      block[3] = &unk_278BD4D48;
      block[4] = a1;
      block[5] = v15;
      dispatch_async(v16, block);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __reportingAudioStreamLogCallStart_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingAudioStreamLogCallStart"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:101 type:0 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingAudioStreamLogCallStart_block_invoke_cold_1();
      }
    }
  }
}

void reportingAudioStreamLogCallEnd(void *a1, __CFString *a2, double a3)
{
  if (a1)
  {
    v6 = [a1 clientType];
    if ((v6 + 1) > 0x1C || ((1 << (v6 + 1)) & 0x1A536FF3) == 0)
    {
      if (!a2)
      {
        if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
        {
          VRTraceErrorLogLevelToCSTR(3u);
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            reportingAudioStreamLogCallEnd_cold_1();
          }
        }

        a2 = @"0";
      }

      v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
      [v8 setObject:a2 forKeyedSubscript:@"CallID"];
      if ([a1 clientType] == 1)
      {
        [v8 setObject:&unk_284FA5558 forKeyedSubscript:@"Mode"];
        [v8 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", a3), @"StreamConnectionTime"}];
      }

      v9 = [a1 reportingQueue];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __reportingAudioStreamLogCallEnd_block_invoke;
      v10[3] = &unk_278BD4D48;
      v10[4] = a1;
      v10[5] = v8;
      dispatch_async(v9, v10);
    }
  }
}

void __reportingAudioStreamLogCallEnd_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingAudioStreamLogCallEnd"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:102 type:0 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingAudioStreamLogCallEnd_block_invoke_cold_1();
      }
    }
  }
}

void reportingScreenCaptureEvent(void *a1, int a2, __int16 a3, __int16 a4, uint64_t a5)
{
  if (a1)
  {
    v10 = [a1 clientType];
    if ((v10 + 1) > 0x1C || ((1 << (v10 + 1)) & 0x15ECB1A5) == 0)
    {
      v12 = [a1 reportingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __reportingScreenCaptureEvent_block_invoke;
      block[3] = &unk_278BD5058;
      v14 = a2;
      block[4] = a1;
      block[5] = a5;
      v15 = a3;
      v16 = a4;
      dispatch_async(v12, block);
    }
  }
}

void __reportingScreenCaptureEvent_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (_validReportingObject(*(a1 + 32), "reportingScreenCaptureEvent"))
  {
    v7 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 52) type:*(a1 + 54) payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v7}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      v2 = VRTraceErrorLogLevelToCSTR(3u);
      v3 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 52);
        v6 = [v7 code];
        *buf = 136316418;
        v9 = v2;
        v10 = 2080;
        v11 = "reportingScreenCaptureEvent_block_invoke";
        v12 = 1024;
        v13 = 3576;
        v14 = 1024;
        v15 = 3576;
        v16 = 1024;
        v17 = v5;
        v18 = 1024;
        v19 = v6;
        _os_log_error_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_ERROR, "ReportingVC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/ReportingVC.m:%d: eventType=%d error code=%d.", buf, 0x2Eu);
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t processGroupSymptoms(uint64_t a1)
{
  if ([&unk_284FA5380 objectForKey:a1])
  {
    return [objc_msgSend(&unk_284FA5380 objectForKeyedSubscript:{a1), "integerValue"}];
  }

  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      processGroupSymptoms_cold_1();
    }
  }

  return 1;
}

void VCReporting_finalizeAggregationWithPayload(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 reportingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __VCReporting_finalizeAggregationWithPayload_block_invoke;
    v5[3] = &unk_278BD4D48;
    v5[4] = a1;
    v5[5] = a2;
    dispatch_async(v4, v5);
  }
}

void VCReporting_FlushReportingSession(void *a1)
{
  if (a1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3052000000;
    v9 = __Block_byref_object_copy__3;
    v10 = __Block_byref_object_dispose__3;
    v11 = dispatch_semaphore_create(0);
    v2 = [a1 reportingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __VCReporting_FlushReportingSession_block_invoke;
    v5[3] = &unk_278BD4CF8;
    v5[4] = a1;
    v5[5] = &v6;
    dispatch_sync(v2, v5);
    v3 = v7[5];
    v4 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v3, v4) && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        VCReporting_FlushReportingSession_cold_1();
      }
    }

    dispatch_release(v7[5]);
    _Block_object_dispose(&v6, 8);
  }
}

void sub_23D54E1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *reportingSymptomSetCallback(void *a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    return [a1 reportingSetReportCallback:a2 withContext:a3];
  }

  return a1;
}

uint64_t VCReporting_GetDynamicReportingModuleID(void *a1)
{
  if (a1)
  {
    return [a1 nextUnassignedReportingModuleID];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

id selectDestinationForRTMetrics(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = [a1 userInfoMap];
        v6 = [v5 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", a2)}];
        if (v6)
        {
          v7 = v6;
          if ([v6 objectForKeyedSubscript:@"VCVSStreamIDs"] || objc_msgSend(v7, "objectForKeyedSubscript:", @"VCASStreamIDs"))
          {
            v8 = MEMORY[0x277CCACA0];
            v9 = [v7 objectForKeyedSubscript:@"VCSPUUID"];
            if ([v7 objectForKeyedSubscript:@"VCVSStreamIDs"])
            {
              v10 = @"VCVSStreamIDs";
            }

            else
            {
              v10 = @"VCASStreamIDs";
            }

            v11 = [v8 stringWithFormat:@"%@:%@", v9, objc_msgSend(v7, "objectForKeyedSubscript:", v10)];
            v12 = [v3 objectForKeyedSubscript:sRTCReportingStreamCollection];
            if (!v12)
            {
              v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
              [v3 setObject:v12 forKeyedSubscript:sRTCReportingStreamCollection];
            }

            v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [v12 setObject:v3 forKeyedSubscript:v11];

            [v3 addEntriesFromDictionary:v7];
          }
        }
      }
    }
  }

  return v3;
}

void reportingSetAggregatorForClientType(void *a1, int a2, char a3, char a4, uint64_t a5)
{
  if (a1)
  {
    v10 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingSetAggregatorForClientType_block_invoke;
    block[3] = &unk_278BD5080;
    block[4] = a1;
    block[5] = a5;
    v12 = a2;
    v13 = a3;
    v14 = a4;
    dispatch_async(v10, block);
  }
}

uint64_t __reportingSetAggregatorForClientType_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingSetAggregatorForClientType_block_invoke");
  if (result)
  {
    if ([*(a1 + 40) count])
    {
      [*(a1 + 32) sendMessageWithCategory:364 type:0 payload:*(a1 + 40) error:0 toAggregatorOnly:1];
    }

    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = *(a1 + 52);
    v6 = *(a1 + 53);

    return [v3 setAggregatorForClientType:v4 isOneToOneEnabled:v5 shouldCreateSecondAggregator:v6];
  }

  return result;
}

uint64_t VCReporting_GetClientType(void *a1)
{
  if (a1)
  {
    return [a1 clientType];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void reportingSetReportingClientPersistentSetting(void *a1, __int128 *a2)
{
  if (a1)
  {
    v4 = [a1 reportingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __reportingSetReportingClientPersistentSetting_block_invoke;
    v5[3] = &unk_278BD5338;
    v5[4] = a1;
    v6 = *a2;
    v7 = *(a2 + 2);
    dispatch_async(v4, v5);
  }
}

uint64_t __reportingSetReportingClientPersistentSetting_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingSetReportingClientPersistentSetting_block_invoke");
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 56);
    [*(a1 + 32) setPersistentSettings:&v3];
    return [objc_msgSend(*(a1 + 32) "aggregator")];
  }

  return result;
}

void reportingSetDataPath(void *a1, int a2)
{
  if (a1)
  {
    v4 = [a1 reportingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __reportingSetDataPath_block_invoke;
    v5[3] = &unk_278BD4D98;
    v5[4] = a1;
    v6 = a2;
    dispatch_async(v4, v5);
  }
}

void *VCReporting_DumpIntoDataStore(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = [result dataStore];
    if (result)
    {
      v4 = [v3 dataStore];
      v5 = *(a2 + 144);
      v10[8] = *(a2 + 128);
      v10[9] = v5;
      v11 = *(a2 + 160);
      v6 = *(a2 + 80);
      v10[4] = *(a2 + 64);
      v10[5] = v6;
      v7 = *(a2 + 112);
      v10[6] = *(a2 + 96);
      v10[7] = v7;
      v8 = *(a2 + 16);
      v10[0] = *a2;
      v10[1] = v8;
      v9 = *(a2 + 48);
      v10[2] = *(a2 + 32);
      v10[3] = v9;
      return VCPersistentDataStore_DumpMessage(v4, v10);
    }
  }

  return result;
}

void VCReporting_DisableDataCollection(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    [objc_msgSend(a1 "remoteDataProducer")];
    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
      {
        v3 = VRTraceErrorLogLevelToCSTR(6u);
        v4 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315650;
          v12 = v3;
          v13 = 2080;
          v14 = "VCReporting_DisableDataCollection";
          v15 = 1024;
          v16 = 3840;
          v5 = "ReportingVC [%s] %s:%d Disabled Remote Data collection";
          v6 = v4;
          v7 = 28;
LABEL_12:
          _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, v5, &v11, v7);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v2 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v2 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR(6u);
        v9 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136316162;
          v12 = v8;
          v13 = 2080;
          v14 = "VCReporting_DisableDataCollection";
          v15 = 1024;
          v16 = 3840;
          v17 = 2112;
          v18 = v2;
          v19 = 2048;
          v20 = a1;
          v5 = "ReportingVC [%s] %s:%d %@(%p) Disabled Remote Data collection";
          v6 = v9;
          v7 = 48;
          goto LABEL_12;
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t filtered_update(unsigned int a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = (qword_27E2DEF90 + 8 * a1);
  v4 = time(0);
  v5 = v4;
  if (v4 < filtered_update_when - 60 || v4 > filtered_update_when + 60)
  {
    v7 = qword_27E2DEF90;
    *(qword_27E2DEF90 + 4) = 0x80000000;
    *(v7 + 12) = 0x80000000;
    *(v7 + 20) = 0x80000000;
    if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR(7u);
      v9 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316162;
        v15 = v8;
        v16 = 2080;
        v17 = "filtered_update";
        v18 = 1024;
        v19 = 2731;
        v20 = 2048;
        v21 = v5;
        v22 = 2048;
        v23 = filtered_update_when;
        _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d getSkinTemperature: resetting temps, now = %ld, last update = %ld", &v14, 0x30u);
      }
    }
  }

  filtered_update_when = v5;
  v10 = v3[1];
  if (v10 == 0x80000000)
  {
    v11 = a2 << 16;
  }

  else
  {
    v11 = v10 + (3276800 / *v3) * (a2 - (v10 >> 16));
    a2 = (v11 >> 16);
  }

  v3[1] = v11;
  v12 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return MEMORY[0x282121E70](v0, 15, 0, 0);
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1)
{

  return MEMORY[0x282121E70](a1, 15, 0, 0);
}

uint64_t OUTLINED_FUNCTION_24_0@<X0>(void **a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;
  v4 = *a1;

  return [v4 code];
}

uint64_t OUTLINED_FUNCTION_29()
{

  return objc_opt_respondsToSelector();
}

CFComparisonResult OUTLINED_FUNCTION_32_0()
{

  return CFStringCompare(v1, v0, 0);
}

CFComparisonResult OUTLINED_FUNCTION_33_0(const __CFString *a1)
{

  return CFStringCompare(a1, v1, 0);
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return IOHIDEventGetFloatValue();
}

const void *OUTLINED_FUNCTION_41()
{
  v3 = *(v0 + 3976);

  return CFArrayGetValueAtIndex(v3, v1);
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return [v0 performSelector:v1];
}

CFIndex OUTLINED_FUNCTION_44_0()
{
  v2 = *(v0 + 3976);

  return CFArrayGetCount(v2);
}

uint64_t _VRTraceIsInternalOSInstalled(int a1)
{
  v1 = _VRTraceIsInternalOSInstalled_hasChecked;
  if (_VRTraceIsInternalOSInstalled_hasChecked != 1 || a1 != 0)
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"VRTraceSimulateCustomerBuild", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v4 = AppBooleanValue == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_23D4DF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "_VRTraceIsInternalOSInstalled: Simulating customer build", v6, 2u);
      }

      _VRTraceIsInternalOSInstalled_simulateCustomerBuild = 1;
    }

    v1 = _VRTraceIsInternalOSInstalled_hasChecked;
  }

  if ((v1 & 1) == 0)
  {
    _VRTraceIsInternalOSInstalled_isInternal = os_variant_has_internal_ui();
    _VRTraceIsInternalOSInstalled_hasChecked = 1;
  }

  return _VRTraceIsInternalOSInstalled_isInternal & ~_VRTraceIsInternalOSInstalled_simulateCustomerBuild & 1;
}

uint64_t VRTraceDefaultErrorLogLevel()
{
  if (_VRTraceIsInternalOSInstalled(0))
  {
    return 7;
  }

  else
  {
    return 6;
  }
}

void VRTraceSetErrorLogLevel(signed int a1)
{
  if (gVRTraceErrorLogLevel == -1)
  {
    VRTraceInit();
  }

  gVRTraceErrorLogLevel = a1;
  if (a1 > 6 || (gVRTraceModuleFilterEnabled & 1) != 0)
  {
    VRTraceSetErrorLogLevel_cold_1(a1);
  }
}

void VRTraceVariable_(int a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, size_t a8)
{
  if (gVRTraceErrorLogLevel == -1)
  {
    VRTraceInit();
  }

  if (VRTraceGetErrorLogLevelForModule(a2) >= a1)
  {
    v14 = malloc_type_malloc(a8, 0xBAD9DFE6uLL);
    if (v14)
    {
      v15 = v14;
      memcpy(v14, a7, a8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __VRTraceVariable__block_invoke;
      block[3] = &__block_descriptor_tmp_11;
      block[4] = a6;
      block[5] = v15;
      v17 = a1;
      block[6] = a8;
      block[7] = a5;
      dispatch_async(gVRTraceDispatchQueue, block);
    }

    else
    {

      VRTraceDebugBreak();
    }
  }
}

size_t VRTraceDebugBreak()
{
  pthread_once(&VRTraceDebugBreak_once_control, VRTraceDebugInit);
  result = fwrite("VRTraceDebugBreak() called.\n", 0x1CuLL, 1uLL, *MEMORY[0x277D85DF8]);
  if (gVRTraceShouldTrapOnDebugBreak == 1)
  {
    v1 = pthread_self();

    return pthread_kill(v1, 5);
  }

  return result;
}

uint64_t VRTraceDebugInit()
{
  result = getenv_plus("VRTraceShouldTrapOnDebugBreak");
  if (result || (result = getenv("USERBREAK")) != 0)
  {
    v1 = result;
    if ((*result - 48) > 9)
    {
      *__error() = 0;
      result = strncasecmp(v1, "yes", 3uLL);
      if (result && (result = strncasecmp(v1, "true", 4uLL), result))
      {
        v2 = 1;
        result = strncasecmp(v1, "t", 1uLL);
        if (result)
        {
          result = strncasecmp(v1, "no", 2uLL);
          if (result && (result = strncasecmp(v1, "false", 5uLL), result) && (result = strncasecmp(v1, "f", 1uLL), result))
          {
            result = __error();
            v2 = 0;
            *result = 22;
          }

          else
          {
            v2 = 0;
          }
        }
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      result = strtol(result, 0, 0);
      v2 = result != 0;
    }

    gVRTraceShouldTrapOnDebugBreak = v2;
  }

  return result;
}

void VRTraceSetErrorLogLevelForModule(const void *a1, signed int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceSetErrorLogLevelForModule_once == -1)
  {
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    VRTraceSetErrorLogLevelForModule_cold_1();
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  gVRTraceModuleFilterEnabled = 1;
  if (VRTraceGetErrorLogLevelForModule("ViceroyTrace") >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR(7u);
    v5 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v4;
      v9 = 2080;
      v10 = "VRTraceSetErrorLogLevelForModule";
      v11 = 1024;
      v12 = 466;
      v13 = 2080;
      v14 = a1;
      v15 = 2080;
      v16 = VRTraceErrorLogLevelToCSTR(a2);
      _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, "ViceroyTrace [%s] %s:%d ErrorLogLevel for module %s set to %s.", &v7, 0x30u);
    }
  }

  pthread_rwlock_wrlock(&gVRTraceLevelLock);
  CFDictionarySetValue(gVRTraceModuleFilter, a1, a2);
  pthread_rwlock_unlock(&gVRTraceLevelLock);
LABEL_7:
  v6 = *MEMORY[0x277D85DE8];
}

CFMutableDictionaryRef __VRTraceSetErrorLogLevelForModule_block_invoke()
{
  result = CFDictionaryCreateMutable(0, 0, &dictCStringCallbacks, 0);
  gVRTraceModuleFilter = result;
  return result;
}

BOOL VRTraceIsOSFaultDisabled()
{
  keyExistsAndHasValidFormat = -86;
  if (CFPreferencesGetAppBooleanValue(@"disableOSLogFault", @"com.apple.VideoConference", &keyExistsAndHasValidFormat))
  {
    v0 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

CFStringRef CFSetCStringCopyDescription(const char *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = "<NULL>";
  }

  return CFStringCreateWithCString(0, v1, 0x8000100u);
}

uint64_t CFSetCStringHash(_BYTE *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  result = 0;
  v4 = a1 + 1;
  do
  {
    result = (__ROR8__(result, 63) + 1) ^ v1;
    v5 = *v4++;
    v1 = v5;
  }

  while (v5);
  return result;
}

uint64_t _VCRemoteDataCollectionDumpProducer_WriteToCSVCallbackColumns(FILE *__stream, int a2, const char **a3)
{
  if (a2 >= 1)
  {
    v5 = a2;
    do
    {
      v7 = *a3++;
      v6 = v7;
      if (v7)
      {
        v8 = v6;
      }

      else
      {
        v8 = "";
      }

      fputs(v8, __stream);
      --v5;
    }

    while (v5);
  }

  fwrite(", ", 2uLL, 1uLL, __stream);
  return 0;
}

uint64_t _VCRemoteDataCollectionDumpProducer_WriteToCSVCallback(FILE *__stream, int a2, uint64_t a3)
{
  v4 = (a2 - 1);
  if (a2 >= 1)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      if (*(a3 + 8 * v6))
      {
        v8 = *(a3 + 8 * v6);
      }

      else
      {
        v8 = "";
      }

      fputs(v8, __stream);
      if (v6 < v4)
      {
        fputc(44, __stream);
      }

      ++v6;
    }

    while (v7 != v6);
  }

  fwrite(",\n", 2uLL, 1uLL, __stream);
  return 0;
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return [v0 performSelector:v1];
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return objc_opt_respondsToSelector();
}

void sub_23D551EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D554CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D555798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D5562A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D556848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VRTraceErrorLogLevelFromCSTR(char *__str)
{
  if (!__str)
  {
    return 9;
  }

  if ((*__str - 48) <= 9)
  {
    return strtol(__str, 0, 0);
  }

  result = strcasecmp(__str, "NONE");
  if (result)
  {
    if (!strcasecmp(__str, "ALERT"))
    {
      return 1;
    }

    else if (!strcasecmp(__str, "CRITICAL"))
    {
      return 2;
    }

    else if (!strcasecmp(__str, "ERROR"))
    {
      return 3;
    }

    else if (!strcasecmp(__str, "ASSERT"))
    {
      return 4;
    }

    else if (!strcasecmp(__str, "WARNING"))
    {
      return 5;
    }

    else if (!strcasecmp(__str, "NOTICE"))
    {
      return 6;
    }

    else if (!strcasecmp(__str, "INFO"))
    {
      return 7;
    }

    else if (!strcasecmp(__str, "DEBUG"))
    {
      return 8;
    }

    else if (!strcasecmp(__str, "ALL"))
    {
      return 9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_23D5595F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VCAggregatorUtils_GetVideoResolutionForDimensions(int a1, int a2)
{
  if (a1 == 96 && a2 == 96)
  {
    return 0;
  }

  if (a1 == 128 && a2 == 128)
  {
    return 1;
  }

  if (a1 == 192 && a2 == 112)
  {
    return 2;
  }

  if (a1 == 192 && a2 == 192)
  {
    return 3;
  }

  if (a1 == 240 && a2 == 240)
  {
    return 4;
  }

  if (a1 == 256 && a2 == 256)
  {
    return 5;
  }

  if (a1 == 320 && a2 == 176)
  {
    return 6;
  }

  if (a1 == 320 && a2 == 240)
  {
    return 7;
  }

  if (a1 == 320 && a2 == 320)
  {
    return 8;
  }

  if (a1 == 480 && a2 == 272)
  {
    return 9;
  }

  if (a1 == 480 && a2 == 368)
  {
    return 10;
  }

  if (a1 == 480 && a2 == 480)
  {
    return 11;
  }

  if (a1 == 512 && a2 == 512)
  {
    return 12;
  }

  if (a1 == 640 && a2 == 368)
  {
    return 13;
  }

  if (a1 == 640 && a2 == 480)
  {
    return 14;
  }

  if (a1 == 640 && a2 == 640)
  {
    return 15;
  }

  if (a1 == 720 && a2 == 720)
  {
    return 16;
  }

  if (a1 == 1024 && a2 == 768)
  {
    return 17;
  }

  if (a1 == 1280 && a2 == 720)
  {
    return 18;
  }

  if (a1 == 1280 && a2 == 960)
  {
    return 19;
  }

  if (a1 == 1080 && a2 == 1080)
  {
    return 20;
  }

  if (a1 == 1664 && a2 == 1248)
  {
    return 21;
  }

  if (a1 == 1920 && a2 == 1080)
  {
    return 22;
  }

  if (a1 == 1920 && a2 == 1440)
  {
    return 23;
  }

  if (a1 == 2592 && a2 == 1936)
  {
    return 24;
  }

  if (a1 == 3264 && a2 == 2448)
  {
    return 25;
  }

  if (a1 == 512 && a2 == 288)
  {
    return 26;
  }

  if (a1 == 384 && a2 == 384)
  {
    return 27;
  }

  if (a1 == 960 && a2 == 960)
  {
    return 28;
  }

  if (a1 == 1440 && a2 == 1440)
  {
    return 29;
  }

  if (a1 == 960 && a2 == 540)
  {
    return 30;
  }

  if (a1 == 480 && a2 == 270)
  {
    return 31;
  }

  if (a1 == 832 && a2 == 624)
  {
    return 32;
  }

  if (a2 == 312 && a1 == 416)
  {
    return 33;
  }

  else
  {
    return 34;
  }
}

double VCAggregatorUtils_GetSizeForVideoResolution(unsigned int a1)
{
  if (a1 < 0x23)
  {
    switch(a1)
    {
      case 0u:
        return 96.0;
      case 1u:
        return 128.0;
      case 2u:
        v8 = 128.0;
        goto LABEL_37;
      case 3u:
        return 192.0;
      case 4u:
        return 240.0;
      case 5u:
        return 256.0;
      case 6u:
      case 7u:
        v8 = 320.0;
        goto LABEL_37;
      case 8u:
        return 320.0;
      case 9u:
      case 0xAu:
      case 0x1Fu:
        v8 = 480.0;
        goto LABEL_37;
      case 0xBu:
        return 480.0;
      case 0xCu:
        return 512.0;
      case 0xDu:
      case 0xEu:
        v8 = 640.0;
        goto LABEL_37;
      case 0xFu:
        return 640.0;
      case 0x10u:
        return 720.0;
      case 0x11u:
        v8 = 1024.0;
        goto LABEL_37;
      case 0x12u:
      case 0x13u:
        v8 = 1280.0;
        goto LABEL_37;
      case 0x14u:
        return 1088.0;
      case 0x15u:
        v8 = 1664.0;
        goto LABEL_37;
      case 0x16u:
      case 0x17u:
        v8 = 1920.0;
        goto LABEL_37;
      case 0x18u:
        return 2592.0;
      case 0x19u:
        return 3264.0;
      case 0x1Au:
        v8 = 512.0;
        goto LABEL_37;
      case 0x1Bu:
        return 384.0;
      case 0x1Cu:
        return 960.0;
      case 0x1Du:
        return 1440.0;
      case 0x1Eu:
        v8 = 960.0;
        goto LABEL_37;
      case 0x20u:
        v8 = 832.0;
        goto LABEL_37;
      case 0x21u:
        v8 = 416.0;
LABEL_37:
        result = v8;
        break;
      default:
        return 0.0;
    }
  }

  else
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
    result = 0.0;
    if (ErrorLogLevelForModule >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR(3u);
      v5 = gVRTraceOSLog;
      v6 = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
      result = 0.0;
      if (v6)
      {
        VCAggregatorUtils_GetSizeForVideoResolution_cold_1(v4, a1, v5);
        return 0.0;
      }
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void sub_23D55AAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _VCPersistentDataStore_WriteBuffer(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  dispatch_assert_queue_V2(*(a1 + 8));
  sqlite3_exec(*(a1 + 8424), "BEGIN TRANSACTION;", 0, 0, 0);
  if (*(a1 + 8416) >= 1)
  {
    v2 = 0;
    v3 = 16;
    while (1)
    {
      v4 = *(a1 + v3 + 144);
      v29 = *(a1 + v3 + 128);
      v30 = v4;
      v31 = *(a1 + v3 + 160);
      v5 = *(a1 + v3 + 80);
      v25 = *(a1 + v3 + 64);
      v26 = v5;
      v6 = *(a1 + v3 + 112);
      v27 = *(a1 + v3 + 96);
      v28 = v6;
      v7 = *(a1 + v3 + 16);
      *v23 = *(a1 + v3);
      *&v23[16] = v7;
      v8 = *(a1 + v3 + 48);
      *&v23[32] = *(a1 + v3 + 32);
      v24 = v8;
      v9 = _VCPersistentDataStore_BindAndExecute(a1, v23);
      if (v9)
      {
        break;
      }

      ++v2;
      v3 += 168;
      if (v2 >= *(a1 + 8416))
      {
        goto LABEL_5;
      }
    }

    v12 = v9;
    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v14 = VRTraceErrorLogLevelToCSTR(3u);
        v15 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          v16 = sqlite3_errmsg(*(a1 + 8424));
          *v23 = 136316162;
          *&v23[4] = v14;
          *&v23[12] = 2080;
          *&v23[14] = "_VCPersistentDataStore_WriteBuffer";
          *&v23[22] = 1024;
          *&v23[24] = 273;
          *&v23[28] = 1024;
          *&v23[30] = v12;
          *&v23[34] = 2080;
          *&v23[36] = v16;
          v17 = " [%s] %s:%d SQLite Error: could not empty buffer with return code=%d and error=%s";
          v18 = v15;
          v19 = 44;
LABEL_16:
          _os_log_error_impl(&dword_23D4DF000, v18, OS_LOG_TYPE_ERROR, v17, v23, v19);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v20 = VRTraceErrorLogLevelToCSTR(3u);
        v21 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          v22 = sqlite3_errmsg(*(a1 + 8424));
          *v23 = 136316674;
          *&v23[4] = v20;
          *&v23[12] = 2080;
          *&v23[14] = "_VCPersistentDataStore_WriteBuffer";
          *&v23[22] = 1024;
          *&v23[24] = 273;
          *&v23[28] = 2112;
          *&v23[30] = v13;
          *&v23[38] = 2048;
          *&v23[40] = a1;
          LOWORD(v24) = 1024;
          *(&v24 + 2) = v12;
          WORD3(v24) = 2080;
          *(&v24 + 1) = v22;
          v17 = " [%s] %s:%d %@(%p) SQLite Error: could not empty buffer with return code=%d and error=%s";
          v18 = v21;
          v19 = 64;
          goto LABEL_16;
        }
      }
    }
  }

LABEL_5:
  sqlite3_exec(*(a1 + 8424), "END TRANSACTION;", 0, 0, 0);
  *(a1 + 8416) = 0;
  result = kdebug_trace();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _VCPersistentDataStore_BindAndExecute(void *a1, uint64_t a2)
{
  v171 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (*a2 > 2)
  {
    switch(v2)
    {
      case 3:
        v63 = a1[1057];
        v64 = *(a2 + 8);
        v66 = *(a2 + 16);
        v65 = *(a2 + 24);
        v68 = *(a2 + 32);
        v67 = *(a2 + 36);
        v69 = *(a2 + 40);
        v71 = *(a2 + 48);
        v70 = *(a2 + 52);
        v72 = sqlite3_bind_int(v63, 1, v64);
        if (v72)
        {
          _VCPersistentDataStore_BindAndExecute_cold_14(v64, v72, buf);
          goto LABEL_217;
        }

        if (sqlite3_bind_double(v63, 2, v66))
        {
          _VCPersistentDataStore_BindAndExecute_cold_15();
          goto LABEL_217;
        }

        if (sqlite3_bind_double(v63, 3, v65))
        {
          _VCPersistentDataStore_BindAndExecute_cold_16();
          goto LABEL_217;
        }

        v73 = sqlite3_bind_int(v63, 4, v68);
        if (v73)
        {
          _VCPersistentDataStore_BindAndExecute_cold_17(v68, v73, buf);
          goto LABEL_217;
        }

        v74 = sqlite3_bind_int(v63, 5, v67);
        if (v74)
        {
          _VCPersistentDataStore_BindAndExecute_cold_18(v67, v74, buf);
          goto LABEL_217;
        }

        v75 = sqlite3_bind_int(v63, 6, v69);
        if (v75)
        {
          _VCPersistentDataStore_BindAndExecute_cold_19(v69, v75, buf);
          goto LABEL_217;
        }

        v76 = sqlite3_bind_int(v63, 7, v71);
        if (v76)
        {
          _VCPersistentDataStore_BindAndExecute_cold_20(v71, v76, buf);
          goto LABEL_217;
        }

        v77 = sqlite3_bind_int(v63, 8, v70);
        if (v77)
        {
          _VCPersistentDataStore_BindAndExecute_cold_21(v70, v77, buf);
          goto LABEL_217;
        }

        v78 = sqlite3_step(v63);
        if (!v78 || (v40 = v78, v78 == 101))
        {
          v40 = sqlite3_reset(v63);
          sqlite3_clear_bindings(v63);
          if (v40)
          {
            _VCPersistentDataStore_BindAndExecute_cold_22();
            goto LABEL_217;
          }

          goto LABEL_131;
        }

        if (VRTraceGetErrorLogLevelForModule("") < 7)
        {
          goto LABEL_131;
        }

        v131 = VRTraceErrorLogLevelToCSTR(7u);
        v132 = gVRTraceOSLog;
        if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_131;
        }

        *buf = 136315906;
        v164 = v131;
        v165 = 2080;
        v166 = "_VCPersistentDataStore_BindAndExecuteLocalRateControlEvent";
        v167 = 1024;
        v168 = 449;
        v169 = 1024;
        v170 = v40;
        goto LABEL_130;
      case 4:
        v108 = a1[1058];
        v109 = *(a2 + 8);
        v111 = *(a2 + 16);
        v110 = *(a2 + 24);
        v113 = *(a2 + 32);
        v112 = *(a2 + 36);
        v114 = *(a2 + 40);
        v115 = *(a2 + 52);
        v162 = *(a2 + 48);
        v117 = *(a2 + 56);
        v116 = *(a2 + 60);
        v119 = *(a2 + 64);
        v118 = *(a2 + 68);
        v120 = sqlite3_bind_int(v108, 1, v109);
        if (v120)
        {
          _VCPersistentDataStore_BindAndExecute_cold_1(v109, v120, buf);
          goto LABEL_217;
        }

        if (sqlite3_bind_double(v108, 2, v111))
        {
          _VCPersistentDataStore_BindAndExecute_cold_2();
          goto LABEL_217;
        }

        if (sqlite3_bind_double(v108, 3, v110))
        {
          _VCPersistentDataStore_BindAndExecute_cold_3();
          goto LABEL_217;
        }

        v121 = sqlite3_bind_int(v108, 4, v113);
        if (v121)
        {
          _VCPersistentDataStore_BindAndExecute_cold_4(v113, v121, buf);
          goto LABEL_217;
        }

        v122 = sqlite3_bind_int(v108, 5, v112);
        if (v122)
        {
          _VCPersistentDataStore_BindAndExecute_cold_5(v112, v122, buf);
          goto LABEL_217;
        }

        v123 = sqlite3_bind_int(v108, 6, v114);
        if (v123)
        {
          _VCPersistentDataStore_BindAndExecute_cold_6(v114, v123, buf);
          goto LABEL_217;
        }

        v124 = sqlite3_bind_int(v108, 7, v115);
        if (v124)
        {
          _VCPersistentDataStore_BindAndExecute_cold_7(v115, v124, buf);
          goto LABEL_217;
        }

        v125 = sqlite3_bind_int(v108, 8, v117);
        if (v125)
        {
          _VCPersistentDataStore_BindAndExecute_cold_8(v117, v125, buf);
          goto LABEL_217;
        }

        v126 = sqlite3_bind_int(v108, 9, v116);
        if (v126)
        {
          _VCPersistentDataStore_BindAndExecute_cold_9(v116, v126, buf);
          goto LABEL_217;
        }

        v127 = sqlite3_bind_int(v108, 10, v119);
        if (v127)
        {
          _VCPersistentDataStore_BindAndExecute_cold_10(v119, v127, buf);
          goto LABEL_217;
        }

        v128 = sqlite3_bind_int(v108, 11, v118);
        if (v128)
        {
          _VCPersistentDataStore_BindAndExecute_cold_11(v118, v128, buf);
          goto LABEL_217;
        }

        v129 = sqlite3_bind_int(v108, 12, v162);
        if (v129)
        {
          _VCPersistentDataStore_BindAndExecute_cold_12(v162, v129, buf);
          goto LABEL_217;
        }

        v130 = sqlite3_step(v108);
        if (!v130 || (v40 = v130, v130 == 101))
        {
          v40 = sqlite3_reset(v108);
          sqlite3_clear_bindings(v108);
          if (v40)
          {
            _VCPersistentDataStore_BindAndExecute_cold_13();
            goto LABEL_217;
          }

          goto LABEL_131;
        }

        if (VRTraceGetErrorLogLevelForModule("") < 7)
        {
          goto LABEL_131;
        }

        v133 = VRTraceErrorLogLevelToCSTR(7u);
        v132 = gVRTraceOSLog;
        if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_131;
        }

        *buf = 136315906;
        v164 = v133;
        v165 = 2080;
        v166 = "_VCPersistentDataStore_BindAndExecuteRCConfigurationEvent";
        v167 = 1024;
        v168 = 469;
        v169 = 1024;
        v170 = v40;
        goto LABEL_130;
      case 5:
        v40 = 0;
        goto LABEL_131;
    }

LABEL_76:
    v40 = 1;
    goto LABEL_131;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v79 = a1[1055];
      v80 = *(a2 + 8);
      v82 = *(a2 + 16);
      v81 = *(a2 + 24);
      v83 = *(a2 + 32);
      v84 = *(a2 + 36);
      v85 = *(a2 + 40);
      v87 = *(a2 + 48);
      v86 = *(a2 + 52);
      v89 = *(a2 + 56);
      v88 = *(a2 + 60);
      v90 = *(a2 + 64);
      v161 = *(a2 + 68);
      v158 = *(a2 + 72);
      v92 = *(a2 + 80);
      v91 = *(a2 + 88);
      v94 = *(a2 + 96);
      v93 = *(a2 + 104);
      v95 = *(a2 + 112);
      v96 = sqlite3_bind_int(v79, 1, v80);
      if (v96)
      {
        _VCPersistentDataStore_BindAndExecute_cold_50(v80, v96, buf);
        goto LABEL_217;
      }

      if (sqlite3_bind_double(v79, 2, v82))
      {
        _VCPersistentDataStore_BindAndExecute_cold_51();
        goto LABEL_217;
      }

      if (sqlite3_bind_double(v79, 3, v81))
      {
        _VCPersistentDataStore_BindAndExecute_cold_52();
        goto LABEL_217;
      }

      v97 = sqlite3_bind_int(v79, 4, v83);
      if (v97)
      {
        _VCPersistentDataStore_BindAndExecute_cold_53(v83, v97, buf);
        goto LABEL_217;
      }

      v98 = sqlite3_bind_int(v79, 5, v84);
      if (v98)
      {
        _VCPersistentDataStore_BindAndExecute_cold_54(v84, v98, buf);
        goto LABEL_217;
      }

      v99 = sqlite3_bind_int(v79, 6, v85);
      if (v99)
      {
        _VCPersistentDataStore_BindAndExecute_cold_55(v85, v99, buf);
        goto LABEL_217;
      }

      v100 = sqlite3_bind_int(v79, 7, v87);
      if (v100)
      {
        _VCPersistentDataStore_BindAndExecute_cold_56(v87, v100, buf);
        goto LABEL_217;
      }

      v101 = sqlite3_bind_int(v79, 8, v86);
      if (v101)
      {
        _VCPersistentDataStore_BindAndExecute_cold_57(v86, v101, buf);
        goto LABEL_217;
      }

      v102 = sqlite3_bind_int(v79, 9, v89);
      if (v102)
      {
        _VCPersistentDataStore_BindAndExecute_cold_58(v89, v102, buf);
        goto LABEL_217;
      }

      v103 = sqlite3_bind_int(v79, 10, v88);
      if (v103)
      {
        _VCPersistentDataStore_BindAndExecute_cold_59(v88, v103, buf);
        goto LABEL_217;
      }

      v104 = sqlite3_bind_int(v79, 11, v90);
      if (v104)
      {
        _VCPersistentDataStore_BindAndExecute_cold_60(v90, v104, buf);
        goto LABEL_217;
      }

      v105 = sqlite3_bind_int(v79, 12, v161);
      if (v105)
      {
        _VCPersistentDataStore_BindAndExecute_cold_61(v161, v105, buf);
        goto LABEL_217;
      }

      v106 = sqlite3_bind_int(v79, 13, v158);
      if (v106)
      {
        _VCPersistentDataStore_BindAndExecute_cold_62(v158, v106, buf);
        goto LABEL_217;
      }

      if (sqlite3_bind_double(v79, 14, v92))
      {
        _VCPersistentDataStore_BindAndExecute_cold_63();
        goto LABEL_217;
      }

      if (sqlite3_bind_double(v79, 15, v91))
      {
        _VCPersistentDataStore_BindAndExecute_cold_64();
        goto LABEL_217;
      }

      if (sqlite3_bind_double(v79, 16, v94))
      {
        _VCPersistentDataStore_BindAndExecute_cold_65();
        goto LABEL_217;
      }

      if (sqlite3_bind_double(v79, 17, v93))
      {
        _VCPersistentDataStore_BindAndExecute_cold_66();
        goto LABEL_217;
      }

      if (sqlite3_bind_double(v79, 18, v95))
      {
        _VCPersistentDataStore_BindAndExecute_cold_67();
        goto LABEL_217;
      }

      v107 = sqlite3_step(v79);
      if (!v107 || (v40 = v107, v107 == 101))
      {
        v40 = sqlite3_reset(v79);
        sqlite3_clear_bindings(v79);
        if (v40)
        {
          _VCPersistentDataStore_BindAndExecute_cold_68();
          goto LABEL_217;
        }

        goto LABEL_131;
      }

      if (VRTraceGetErrorLogLevelForModule("") < 7)
      {
        goto LABEL_131;
      }

      v134 = VRTraceErrorLogLevelToCSTR(7u);
      v132 = gVRTraceOSLog;
      if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_131;
      }

      *buf = 136315906;
      v164 = v134;
      v165 = 2080;
      v166 = "_VCPersistentDataStore_BindAndExecuteBaseBandEvent";
      v167 = 1024;
      v168 = 433;
      v169 = 1024;
      v170 = v40;
      goto LABEL_130;
    }

    if (v2 == 2)
    {
      v3 = a1[1056];
      v4 = *(a2 + 8);
      v6 = *(a2 + 16);
      v5 = *(a2 + 24);
      v8 = *(a2 + 32);
      v7 = *(a2 + 36);
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = *(a2 + 56);
      v156 = *(a2 + 57);
      v159 = *(a2 + 58);
      v12 = *(a2 + 60);
      v13 = *(a2 + 62);
      v14 = *(a2 + 63);
      v152 = *(a2 + 64);
      v154 = *(a2 + 65);
      v150 = *(a2 + 67);
      v148 = *(a2 + 68);
      v15 = *(a2 + 72);
      v140 = *(a2 + 66);
      v141 = *(a2 + 80);
      v142 = *(a2 + 84);
      v143 = *(a2 + 88);
      v144 = *(a2 + 92);
      v145 = *(a2 + 96);
      v146 = *(a2 + 76);
      v139 = *(a2 + 100);
      v16 = sqlite3_bind_int(v3, 1, v4);
      if (v16)
      {
        _VCPersistentDataStore_BindAndExecute_cold_23(v4, v16, buf);
        goto LABEL_217;
      }

      if (sqlite3_bind_double(v3, 2, v6))
      {
        _VCPersistentDataStore_BindAndExecute_cold_24();
        goto LABEL_217;
      }

      if (sqlite3_bind_double(v3, 3, v5))
      {
        _VCPersistentDataStore_BindAndExecute_cold_25();
        goto LABEL_217;
      }

      v17 = sqlite3_bind_int(v3, 4, v8);
      if (v17)
      {
        _VCPersistentDataStore_BindAndExecute_cold_26(v8, v17, buf);
        goto LABEL_217;
      }

      v18 = sqlite3_bind_int(v3, 5, v7);
      if (v18)
      {
        _VCPersistentDataStore_BindAndExecute_cold_27(v7, v18, buf);
        goto LABEL_217;
      }

      v19 = sqlite3_bind_int(v3, 6, v9);
      if (v19)
      {
        _VCPersistentDataStore_BindAndExecute_cold_28(v9, v19, buf);
        goto LABEL_217;
      }

      v20 = sqlite3_bind_int64(v3, 7, v10);
      if (v20)
      {
        _VCPersistentDataStore_BindAndExecute_cold_29(v10, v20);
        goto LABEL_217;
      }

      v21 = sqlite3_bind_int(v3, 8, v11);
      if (v21)
      {
        _VCPersistentDataStore_BindAndExecute_cold_30(v11, v21, buf);
        goto LABEL_217;
      }

      v22 = sqlite3_bind_int(v3, 9, v156);
      if (v22)
      {
        _VCPersistentDataStore_BindAndExecute_cold_31(v156, v22, buf);
        goto LABEL_217;
      }

      v23 = sqlite3_bind_int(v3, 10, v159);
      if (v23)
      {
        _VCPersistentDataStore_BindAndExecute_cold_32(v159, v23, buf);
        goto LABEL_217;
      }

      v24 = sqlite3_bind_int(v3, 11, v12);
      if (v24)
      {
        _VCPersistentDataStore_BindAndExecute_cold_33(v12, v24, buf);
        goto LABEL_217;
      }

      v25 = sqlite3_bind_int(v3, 12, v13);
      if (v25)
      {
        _VCPersistentDataStore_BindAndExecute_cold_34(v13, v25, buf);
        goto LABEL_217;
      }

      v26 = sqlite3_bind_int(v3, 13, v14);
      if (v26)
      {
        _VCPersistentDataStore_BindAndExecute_cold_35(v14, v26, buf);
        goto LABEL_217;
      }

      v27 = sqlite3_bind_int(v3, 14, v152);
      if (v27)
      {
        _VCPersistentDataStore_BindAndExecute_cold_36(v152, v27, buf);
        goto LABEL_217;
      }

      v28 = sqlite3_bind_int(v3, 15, v154);
      if (v28)
      {
        _VCPersistentDataStore_BindAndExecute_cold_37(v154, v28, buf);
        goto LABEL_217;
      }

      v29 = sqlite3_bind_int(v3, 16, v140);
      if (v29)
      {
        _VCPersistentDataStore_BindAndExecute_cold_38(v140, v29, buf);
        goto LABEL_217;
      }

      v30 = sqlite3_bind_int(v3, 17, v150);
      if (v30)
      {
        _VCPersistentDataStore_BindAndExecute_cold_39(v150, v30, buf);
        goto LABEL_217;
      }

      v31 = sqlite3_bind_int(v3, 18, v148);
      if (v31)
      {
        _VCPersistentDataStore_BindAndExecute_cold_40(v148, v31, buf);
        goto LABEL_217;
      }

      if (sqlite3_bind_double(v3, 19, v15))
      {
        _VCPersistentDataStore_BindAndExecute_cold_41();
        goto LABEL_217;
      }

      v32 = sqlite3_bind_int(v3, 20, v146);
      if (v32)
      {
        _VCPersistentDataStore_BindAndExecute_cold_42(v146, v32, buf);
        goto LABEL_217;
      }

      v33 = sqlite3_bind_int(v3, 21, v141);
      if (v33)
      {
        _VCPersistentDataStore_BindAndExecute_cold_43(v141, v33, buf);
        goto LABEL_217;
      }

      v34 = sqlite3_bind_int(v3, 22, v142);
      if (v34)
      {
        _VCPersistentDataStore_BindAndExecute_cold_44(v142, v34, buf);
        goto LABEL_217;
      }

      v35 = sqlite3_bind_int(v3, 23, v143);
      if (v35)
      {
        _VCPersistentDataStore_BindAndExecute_cold_45(v143, v35, buf);
        goto LABEL_217;
      }

      v36 = sqlite3_bind_int(v3, 24, v144);
      if (v36)
      {
        _VCPersistentDataStore_BindAndExecute_cold_46(v144, v36, buf);
        goto LABEL_217;
      }

      v37 = sqlite3_bind_int(v3, 25, v145);
      if (v37)
      {
        _VCPersistentDataStore_BindAndExecute_cold_47(v145, v37, buf);
        goto LABEL_217;
      }

      v38 = sqlite3_bind_int(v3, 26, v139);
      if (v38)
      {
        _VCPersistentDataStore_BindAndExecute_cold_48(v139, v38, buf);
        goto LABEL_217;
      }

      v39 = sqlite3_step(v3);
      if (!v39 || (v40 = v39, v39 == 101))
      {
        v40 = sqlite3_reset(v3);
        sqlite3_clear_bindings(v3);
        if (v40)
        {
          _VCPersistentDataStore_BindAndExecute_cold_49();
LABEL_217:
          v40 = *buf;
          goto LABEL_131;
        }

        goto LABEL_131;
      }

      if (VRTraceGetErrorLogLevelForModule("") < 7)
      {
        goto LABEL_131;
      }

      v136 = VRTraceErrorLogLevelToCSTR(7u);
      v132 = gVRTraceOSLog;
      if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_131;
      }

      *buf = 136315906;
      v164 = v136;
      v165 = 2080;
      v166 = "_VCPersistentDataStore_BindAndExecuteNetworkEvent";
      v167 = 1024;
      v168 = 407;
      v169 = 1024;
      v170 = v40;
LABEL_130:
      _os_log_impl(&dword_23D4DF000, v132, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SQLite Error: could not execute statement with return code=%d", buf, 0x22u);
      goto LABEL_131;
    }

    goto LABEL_76;
  }

  v41 = a1[1054];
  v42 = *(a2 + 8);
  v44 = *(a2 + 16);
  v43 = *(a2 + 24);
  v46 = *(a2 + 32);
  v45 = *(a2 + 36);
  v47 = *(a2 + 40);
  v49 = *(a2 + 48);
  v48 = *(a2 + 56);
  v51 = *(a2 + 64);
  v50 = *(a2 + 72);
  v53 = *(a2 + 80);
  v52 = *(a2 + 88);
  v147 = *(a2 + 104);
  v149 = *(a2 + 112);
  v151 = *(a2 + 120);
  v153 = *(a2 + 128);
  v54 = *(a2 + 136);
  v155 = *(a2 + 144);
  v55 = *(a2 + 152);
  v157 = *(a2 + 160);
  v160 = *(a2 + 96);
  v56 = sqlite3_bind_int(v41, 1, v42);
  if (v56)
  {
    _VCPersistentDataStore_BindAndExecute_cold_69(v42, v56, buf);
    goto LABEL_217;
  }

  if (sqlite3_bind_double(v41, 2, v44))
  {
    _VCPersistentDataStore_BindAndExecute_cold_70();
    goto LABEL_217;
  }

  if (sqlite3_bind_double(v41, 3, v43))
  {
    _VCPersistentDataStore_BindAndExecute_cold_71();
    goto LABEL_217;
  }

  v57 = sqlite3_bind_int(v41, 4, v46);
  if (v57)
  {
    _VCPersistentDataStore_BindAndExecute_cold_72(v46, v57, buf);
    goto LABEL_217;
  }

  v58 = sqlite3_bind_int(v41, 5, v45);
  if (v58)
  {
    _VCPersistentDataStore_BindAndExecute_cold_73(v45, v58, buf);
    goto LABEL_217;
  }

  v59 = sqlite3_bind_int(v41, 6, v47);
  if (v59)
  {
    _VCPersistentDataStore_BindAndExecute_cold_74(v47, v59, buf);
    goto LABEL_217;
  }

  if (sqlite3_bind_double(v41, 7, v49))
  {
    _VCPersistentDataStore_BindAndExecute_cold_75();
    goto LABEL_217;
  }

  if (sqlite3_bind_double(v41, 8, v48))
  {
    _VCPersistentDataStore_BindAndExecute_cold_76();
    goto LABEL_217;
  }

  if (sqlite3_bind_double(v41, 9, v51))
  {
    _VCPersistentDataStore_BindAndExecute_cold_77();
    goto LABEL_217;
  }

  if (sqlite3_bind_double(v41, 10, v50))
  {
    _VCPersistentDataStore_BindAndExecute_cold_78();
    goto LABEL_217;
  }

  if (sqlite3_bind_double(v41, 11, v53))
  {
    _VCPersistentDataStore_BindAndExecute_cold_79();
    goto LABEL_217;
  }

  if (sqlite3_bind_double(v41, 12, v52))
  {
    _VCPersistentDataStore_BindAndExecute_cold_80();
    goto LABEL_217;
  }

  if (sqlite3_bind_double(v41, 13, v160))
  {
    _VCPersistentDataStore_BindAndExecute_cold_81();
    goto LABEL_217;
  }

  if (sqlite3_bind_double(v41, 14, v147))
  {
    _VCPersistentDataStore_BindAndExecute_cold_82();
    goto LABEL_217;
  }

  if (sqlite3_bind_double(v41, 15, v149))
  {
    _VCPersistentDataStore_BindAndExecute_cold_83();
    goto LABEL_217;
  }

  if (sqlite3_bind_double(v41, 16, v151))
  {
    _VCPersistentDataStore_BindAndExecute_cold_84();
    goto LABEL_217;
  }

  if (sqlite3_bind_double(v41, 17, v153))
  {
    _VCPersistentDataStore_BindAndExecute_cold_85();
    goto LABEL_217;
  }

  v60 = sqlite3_bind_int(v41, 18, v54);
  if (v60)
  {
    _VCPersistentDataStore_BindAndExecute_cold_86(v54, v60, buf);
    goto LABEL_217;
  }

  if (sqlite3_bind_double(v41, 19, v155))
  {
    _VCPersistentDataStore_BindAndExecute_cold_87();
    goto LABEL_217;
  }

  v61 = sqlite3_bind_int(v41, 20, v55);
  if (v61)
  {
    _VCPersistentDataStore_BindAndExecute_cold_88(v55, v61, buf);
    goto LABEL_217;
  }

  if (sqlite3_bind_double(v41, 21, v157))
  {
    _VCPersistentDataStore_BindAndExecute_cold_89();
    goto LABEL_217;
  }

  v62 = sqlite3_step(v41);
  if (v62)
  {
    v40 = v62;
    if (v62 != 101)
    {
      if (VRTraceGetErrorLogLevelForModule("") < 7)
      {
        goto LABEL_131;
      }

      v135 = VRTraceErrorLogLevelToCSTR(7u);
      v132 = gVRTraceOSLog;
      if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_131;
      }

      *buf = 136315906;
      v164 = v135;
      v165 = 2080;
      v166 = "_VCPersistentDataStore_BindAndExecuteFeedbackEvent";
      v167 = 1024;
      v168 = 373;
      v169 = 1024;
      v170 = v40;
      goto LABEL_130;
    }
  }

  v40 = sqlite3_reset(v41);
  sqlite3_clear_bindings(v41);
  if (v40)
  {
    _VCPersistentDataStore_BindAndExecute_cold_90();
    goto LABEL_217;
  }

LABEL_131:
  v137 = *MEMORY[0x277D85DE8];
  return v40;
}

void OUTLINED_FUNCTION_11_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x28u);
}

void sub_23D5624F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D5658CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D565D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getWiFiManagerClientCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MobileWiFiLibrary()
{
  v3[9] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!MobileWiFiLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __MobileWiFiLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/PrivateFrameworks/MobileWiFi.framework/MobileWiFi";
    MobileWiFiLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MobileWiFiLibraryCore_frameworkLibrary;
  if (!MobileWiFiLibraryCore_frameworkLibrary)
  {
    MobileWiFiLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __MobileWiFiLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileWiFiLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getWiFiManagerClientCopyDevicesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientCopyDevices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientCopyDevicesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCWFInterfaceClass_block_invoke(uint64_t a1)
{
  v4[9] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreWiFiLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreWiFiLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/PrivateFrameworks/CoreWiFi.framework/CoreWiFi";
    CoreWiFiLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreWiFiLibraryCore_frameworkLibrary)
  {
    __getCWFInterfaceClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CWFInterface");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCWFInterfaceClass_block_invoke_cold_1();
  }

  getCWFInterfaceClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreWiFiLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreWiFiLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_8_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return [v4 migrateValueForKey:a3 from:v5 to:v3 withKey:?];
}

void OUTLINED_FUNCTION_16_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x1Cu);
}

char *OUTLINED_FUNCTION_25_1(char *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__lasts)
{

  return strtok_r(a1, v15, &__lasts);
}

void sub_23D56781C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D5679C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D567AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D56D184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SymptomReporterCreate(uint64_t a1)
{
  v2 = [VCSymptomReporter alloc];

  return [(VCSymptomReporter *)v2 initWithCallID:a1];
}

void SymptomReporterReportSymptom(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *MEMORY[0x277D85DE8];

    [a1 reportSymptom:a2 optionalDictionary:a3];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 5)
    {
      v4 = VRTraceErrorLogLevelToCSTR(5u);
      v5 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = v4;
        v9 = 2080;
        v10 = "SymptomReporterReportSymptom";
        v11 = 1024;
        v12 = 1279;
        _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: invalid symptomReporter passed in", &v7, 0x1Cu);
      }
    }

    v6 = *MEMORY[0x277D85DE8];
  }
}

void SymptomReporterSetCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *MEMORY[0x277D85DE8];

    [a1 VCSymptomReporterSetCallback:a2 context:a3];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 5)
    {
      v4 = VRTraceErrorLogLevelToCSTR(5u);
      v5 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = v4;
        v9 = 2080;
        v10 = "SymptomReporterSetCallback";
        v11 = 1024;
        v12 = 1289;
        _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: invalid symptomReporter passed in", &v7, 0x1Cu);
      }
    }

    v6 = *MEMORY[0x277D85DE8];
  }
}

uint64_t VCSymptomReporter_IsABCEnabled(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *MEMORY[0x277D85DE8];

    return [a1 isSymptomReportingEnabled];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR(5u);
      v4 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v3;
        v8 = 2080;
        v9 = "VCSymptomReporter_IsABCEnabled";
        v10 = 1024;
        v11 = 1298;
        _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: invalid symptomReporter passed in", &v6, 0x1Cu);
      }
    }

    v5 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

void VCDiskUtils_CreateDirectory_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_4_1();
  v0 = *MEMORY[0x277D85DE8];
}

void VCDiskUtils_FileZipToFile_cold_1(int a1, _DWORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *__error();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_9_0(&dword_23D4DF000, v5, v6, " [%s] %s:%d failed to read from source: %d", v7, v8, v9, v10, v12);
    }
  }

  *a2 = a1;
  v11 = *MEMORY[0x277D85DE8];
}

void VCDiskUtils_FileZipToFile_cold_2(int a1, _DWORD *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_9_0(&dword_23D4DF000, v4, v5, " [%s] %s:%d failed to compress buffer: %d", v6, v7, v8, v9, v11);
    }
  }

  *a2 = a1;
  v10 = *MEMORY[0x277D85DE8];
}

void VCDiskUtils_FileZipToFile_cold_3(_DWORD *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    v2 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *__error();
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_12();
      v8 = 139;
      v9 = v4;
      v10 = v5;
      _os_log_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d failed to write to destination: %d", v7, 0x22u);
    }
  }

  *a1 = 1;
  v6 = *MEMORY[0x277D85DE8];
}

void ZLibAndGZipCompress_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/Utilities/CompressionUtils.c:%d: Error initializing deflate.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ZLibAndGZipCompress_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/Utilities/CompressionUtils.c:%d: Error ending deflate.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ZLibAndGZipDecompress_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/Utilities/CompressionUtils.c:%d: Error initializing inflate.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ZLibAndGZipDecompress_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/Utilities/CompressionUtils.c:%d: Error ending inflate.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

double machTimeScale_cold_1()
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  qword_280C07E48 = *&result;
  __dmb(0xBu);
  _MergedGlobals_0 = 1;
  return result;
}

void _VCAggregatorMultiway_CollectMediaQueueTelemetry_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_6_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

void _VCAggregatorMultiway_CollectMediaQueueTelemetry_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_6_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

void _VCAggregatorMultiway_CollectMediaQueueTelemetry_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_6_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

void _VCAggregatorMultiway_ReportMediaQueueTelemetry_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

void _VCAggregatorMultiway_ReportMediaQueueTelemetry_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

void __reportingCacheModuleSpecificInfo_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) strong];
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 40))
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v8 addEntriesFromDictionary:*(a1 + 40)];
      v4 = *(a1 + 48);
      if (v4)
      {
        [v8 setObject:v4 forKeyedSubscript:@"_reportingModuleType"];
      }

      v5 = [v3 userInfoMap];
      [v5 setObject:v8 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", *(a1 + 56))}];
    }

    else
    {
      v6 = [v2 userInfoMap];
      v7 = [MEMORY[0x277CCABA8] numberWithInt:*(a1 + 56)];

      [v6 removeObjectForKey:v7];
    }
  }
}

void *__reportingRegisterSystemStats_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x277CCABA8];
  HIDWORD(valuePtr) = 0;
  v5 = &OBJC_IVAR___RTCReportingAgent__osBuild;
  v6 = 0.0;
  v7 = MEMORY[0x277CBECE8];
  v8 = 0.0;
  if (_MergedGlobals_1007)
  {
    CFProperty = IORegistryEntryCreateCFProperty(_MergedGlobals_1007, @"Temperature", *MEMORY[0x277CBECE8], 0);
    v8 = 0.0;
    if (CFProperty)
    {
      v10 = CFProperty;
      CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr + 4);
      CFRelease(v10);
      LOWORD(v11) = WORD2(valuePtr);
      v8 = v11;
    }
  }

  [a2 setObject:objc_msgSend(v4 forKeyedSubscript:{"numberWithDouble:", v8 / 100.0), @"BT"}];
  v12 = MEMORY[0x277CCABA8];
  if (qword_27E2DEF88)
  {
    switch(*(a1 + 40))
    {
      case 0:
        LOWORD(v29) = 0;
        goto LABEL_73;
      case 1:
        qword_27E2DEF90 = &unk_280C07D60;
        if (CFArrayGetCount(qword_27E2DEF88) < 1)
        {
          v44 = 0;
          v43 = 0;
          v45 = 0;
          goto LABEL_71;
        }

        v70 = v12;
        v30 = 0;
        v31 = 0.0;
        v32 = 0.0;
        while (1)
        {
          v33 = OUTLINED_FUNCTION_41();
          v34 = IOHIDServiceClientCopyProperty(v33, @"Product");
          if (v34)
          {
            break;
          }

LABEL_60:
          if (OUTLINED_FUNCTION_44_0() <= 0)
          {
LABEL_61:
            v43 = (v31 * 100.0);
            v44 = (v32 * 100.0);
            v45 = (v6 * 100.0);
            v12 = v70;
            v7 = MEMORY[0x277CBECE8];
            v5 = &OBJC_IVAR___RTCReportingAgent__osBuild;
LABEL_71:
            v52 = filtered_update(1u, v43);
            v53 = filtered_update(2u, v44);
            v49 = filtered_update(0, v45);
            v50 = v52 * 0.299228 + 59.3247 + v53 * 0.267621;
            v51 = 0.404257;
            goto LABEL_72;
          }
        }

        v35 = v34;
        if (CFStringCompare(v34, @"gas gauge battery", 0))
        {
          if (CFStringCompare(v35, @"Rear Camera Proximity", 0))
          {
            if (CFStringCompare(v35, @"H4P Proximity", 0) || (++v30, (v36 = OUTLINED_FUNCTION_21(v33)) == 0))
            {
LABEL_59:
              CFRelease(v35);
              if (v30 == 3)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            }

            v37 = v36;
            IOHIDEventGetFloatValue();
            v32 = v38;
          }

          else
          {
            ++v30;
            v41 = OUTLINED_FUNCTION_21(v33);
            if (!v41)
            {
              goto LABEL_59;
            }

            v37 = v41;
            IOHIDEventGetFloatValue();
            v31 = v42;
          }
        }

        else
        {
          ++v30;
          v39 = OUTLINED_FUNCTION_21(v33);
          if (!v39)
          {
            goto LABEL_59;
          }

          v37 = v39;
          IOHIDEventGetFloatValue();
          v6 = v40;
        }

        CFRelease(v37);
        goto LABEL_59;
      case 2:
      case 3:
        qword_27E2DEF90 = &_MergedGlobals;
        if (CFArrayGetCount(qword_27E2DEF88) >= 1)
        {
          v13 = 0.0;
          while (1)
          {
            v14 = OUTLINED_FUNCTION_41();
            v15 = IOHIDServiceClientCopyProperty(v14, @"Product");
            if (v15)
            {
              break;
            }

LABEL_17:
            if (OUTLINED_FUNCTION_44_0() <= 0)
            {
              v18 = (v13 * 100.0);
              v19 = (v6 * 100.0);
              v7 = MEMORY[0x277CBECE8];
              v5 = &OBJC_IVAR___RTCReportingAgent__osBuild;
              goto LABEL_69;
            }
          }

          if (OUTLINED_FUNCTION_33_0(v15))
          {
            if (OUTLINED_FUNCTION_32_0() || !OUTLINED_FUNCTION_11_0())
            {
              goto LABEL_16;
            }

            OUTLINED_FUNCTION_34_0();
            v13 = v16;
          }

          else
          {
            if (!OUTLINED_FUNCTION_11_0())
            {
LABEL_16:
              CFRelease(v7);
              goto LABEL_17;
            }

            OUTLINED_FUNCTION_34_0();
            v6 = v17;
          }

          CFRelease(v14);
          goto LABEL_16;
        }

        v18 = 0;
        v19 = 0;
LABEL_69:
        v48 = filtered_update(1u, v18);
        v49 = filtered_update(0, v19);
        v50 = v48 * 0.271 + 264.0;
        v51 = 0.6824;
LABEL_72:
        v29 = (v50 + v49 * v51);
        goto LABEL_73;
      case 4:
      case 5:
        v69 = MEMORY[0x277CCABA8];
        v71 = a1;
        if (CFArrayGetCount(qword_27E2DEF88) >= 1)
        {
          v20 = 0.0;
          while (1)
          {
            v21 = OUTLINED_FUNCTION_41();
            v22 = IOHIDServiceClientCopyProperty(v21, @"Product");
            if (v22)
            {
              break;
            }

LABEL_30:
            if (OUTLINED_FUNCTION_44_0() <= 0)
            {
              goto LABEL_64;
            }
          }

          if (OUTLINED_FUNCTION_33_0(v22))
          {
            if (OUTLINED_FUNCTION_32_0() || !OUTLINED_FUNCTION_11_0())
            {
              goto LABEL_29;
            }

            OUTLINED_FUNCTION_34_0();
            v6 = v23;
          }

          else
          {
            if (!OUTLINED_FUNCTION_11_0())
            {
LABEL_29:
              CFRelease(v7);
              goto LABEL_30;
            }

            OUTLINED_FUNCTION_34_0();
            v20 = v24;
          }

          CFRelease(v21);
          goto LABEL_29;
        }

        v20 = 0.0;
LABEL_64:
        v46 = v6 * 25.92 + 592.99;
        v47 = 57.99;
        goto LABEL_67;
      case 6:
      case 7:
        v69 = MEMORY[0x277CCABA8];
        v71 = a1;
        if (CFArrayGetCount(qword_27E2DEF88) >= 1)
        {
          v20 = 0.0;
          while (1)
          {
            v25 = OUTLINED_FUNCTION_41();
            v26 = IOHIDServiceClientCopyProperty(v25, @"Product");
            if (v26)
            {
              break;
            }

LABEL_43:
            if (OUTLINED_FUNCTION_44_0() <= 0)
            {
              goto LABEL_66;
            }
          }

          if (OUTLINED_FUNCTION_33_0(v26))
          {
            if (OUTLINED_FUNCTION_32_0() || !OUTLINED_FUNCTION_11_0())
            {
              goto LABEL_42;
            }

            OUTLINED_FUNCTION_34_0();
            v6 = v27;
          }

          else
          {
            if (!OUTLINED_FUNCTION_11_0())
            {
LABEL_42:
              CFRelease(v7);
              goto LABEL_43;
            }

            OUTLINED_FUNCTION_34_0();
            v20 = v28;
          }

          CFRelease(v25);
          goto LABEL_42;
        }

        v20 = 0.0;
LABEL_66:
        v46 = v6 * 27.1 + 164.0;
        v47 = 68.24;
LABEL_67:
        v29 = (v46 + v20 * v47);
        v12 = v69;
        a1 = v71;
        v7 = MEMORY[0x277CBECE8];
        v5 = &OBJC_IVAR___RTCReportingAgent__osBuild;
LABEL_73:
        v6 = v29;
        break;
      default:
        LOWORD(v29) = -21846;
        goto LABEL_73;
    }
  }

  [a2 setObject:objc_msgSend(v12 forKeyedSubscript:{"numberWithDouble:", v6 / 100.0), @"ST"}];
  v54 = MEMORY[0x277CCABA8];
  valuePtr = 0;
  v55 = v5[992];
  if (!v55)
  {
    goto LABEL_79;
  }

  v56 = *v7;
  v57 = IORegistryEntryCreateCFProperty(v55, @"InstantAmperage", *v7, 0);
  if (v57)
  {
    v58 = v57;
    CFNumberGetValue(v57, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v58);
  }

  v59 = IORegistryEntryCreateCFProperty(v5[992], @"Voltage", v56, 0);
  if (v59)
  {
    v60 = v59;
    CFNumberGetValue(v59, kCFNumberSInt32Type, &valuePtr + 4);
    CFRelease(v60);
    v61 = HIDWORD(valuePtr);
  }

  else
  {
LABEL_79:
    v61 = 0;
  }

  [a2 setObject:objc_msgSend(v54 forKeyedSubscript:{"numberWithShort:", (valuePtr * v61 / 1000)), @"BP"}];
  v62 = MEMORY[0x277CCABA8];
  HIDWORD(valuePtr) = 0;
  if (!dword_27E2DEF84)
  {
    goto LABEL_89;
  }

  v63 = IORegistryEntryCreateCFProperty(dword_27E2DEF84, @"IODisplayParameters", *v7, 0);
  if (!v63)
  {
    goto LABEL_89;
  }

  v64 = v63;
  Value = CFDictionaryGetValue(v63, @"brightness");
  if (!Value)
  {
    CFRelease(v64);
LABEL_89:
    v67 = 0;
    goto LABEL_90;
  }

  v66 = CFDictionaryGetValue(Value, @"value");
  if (v66)
  {
    CFNumberGetValue(v66, kCFNumberSInt32Type, &valuePtr + 4);
  }

  CFRelease(v64);
  if (SHIDWORD(valuePtr) >= 0xFFFF)
  {
    v67 = -1;
  }

  else
  {
    v67 = WORD2(valuePtr);
  }

LABEL_90:
  [a2 setObject:objc_msgSend(v62 forKeyedSubscript:{"numberWithUnsignedShort:", v67), @"BLL"}];
  result = [*(a1 + 32) strong];
  if (result)
  {
    return algoScorerPeriodicTask(result, a2);
  }

  return result;
}

void reportingSymptom_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void reportingClassSendMsgToServer_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void _reportingVCRunOnce_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

void _reportingVCRunOnce_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void _validClassAndSymbols_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void reportingCreateAgent_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_31_0();
  v0 = *MEMORY[0x277D85DE8];
}

void reportingSetPeriodicAggregationOccurredHandler_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void ReportingVC_SetEventDrivenAggregationOccurredHandler_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void __reportingCancelLog_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void reportingCacheModuleSpecificInfo_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingSetUserInfo_block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_2(&dword_23D4DF000, v0, v1, "ReportingVC [%s] %s:%d UserInfo=%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __reportingSetUserInfo_block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_2(&dword_23D4DF000, v0, v1, "ReportingVC [%s] %s:%d ReportingVC: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __reportingSetUserInfo_block_invoke_530_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  v4 = *MEMORY[0x277D85DE8];
  [v1 code];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_23D4DF000, v0, OS_LOG_TYPE_DEBUG, "ReportingVC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/ReportingVC.m:%d: flushMessages: error code %d.", v3, 0x28u);
  v2 = *MEMORY[0x277D85DE8];
}

void __reportingLog_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingAdaptiveLearningStats_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingNoRemoteChanged_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingCallEndError_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingCallEndError_block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void __reportingModeRoleTransportLog_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingTierLog_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingPerfTimes_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void reportingRegisterPeriodicTask_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void reportingRegisterPeriodicTaskWeak_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void reportingRegisterPeriodicTaskWeak_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void reportingRegisterPeriodicTaskWeak_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void reportingRegisterPeriodicTaskOnQueue_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void reportingUnregisterPeriodicTask_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void reportingGetDefaults_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void reportingSetNWActivityReportingEnabled_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void reportingStreamGroupFromStreamGroupID_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void reportingSessionModeFromOperatingMode_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void reportingAgentGetAlgoScores_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingVideoProp_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingThermal_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingConnecting_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingDisconnected_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingDisconnected_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingVideoPaused_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingAWDCallStart_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingRemoteFrameSize_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingConnectionType_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingLocalAndRemoteInterface_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingHandoverResult_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingVisualRectangle_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void reportingMediaRecorderEvents_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void __reportingMediaRecorderEvents_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingAudioStreamLogMetricSample_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void reportingAudioStreamLogCallStart_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingAudioStreamLogCallStart_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void reportingAudioStreamLogCallEnd_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void __reportingAudioStreamLogCallEnd_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void processGroupSymptoms_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void VCReporting_FlushReportingSession_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void VRTraceSetErrorLogLevel_cold_1(unsigned int a1)
{
  v1 = VRTraceErrorLogLevelToCSTR(a1);
  v2 = VRTraceErrorLogLevelToCSTR(gVRTraceErrorLogLevel);
  v5 = strlen(v2);

  VRTraceVariable_(7, "ViceroyTrace", v3, v4, "gVRTraceErrorLogLevel", "cstr", v1, v5);
}

void VCAggregatorUtils_GetSizeForVideoResolution_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "VCAggregatorUtils_GetSizeForVideoResolution";
  v8 = 1024;
  v9 = 97;
  v10 = 1024;
  v11 = a2;
  _os_log_error_impl(&dword_23D4DF000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid resolution: %d", &v4, 0x22u);
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t VCPersistentDataStore_Finalize(uint64_t a1)
{
  if (!a1)
  {
    return 2;
  }

  v1 = *(a1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __VCPersistentDataStore_Finalize_block_invoke;
  block[3] = &unk_278BD4C38;
  block[4] = a1;
  dispatch_sync(v1, block);
  return 0;
}

uint64_t VCPersistentDataStore_DumpMessage(uint64_t a1, void *__src)
{
  if (!a1)
  {
    return 2;
  }

  if (!*(a1 + 8608))
  {
    return 50;
  }

  if (*__src == 5)
  {
    v4 = __src[1];
    if (v4)
    {
      CFRetain(v4);
    }

    v5 = __src[2];
    if (v5)
    {
      CFRetain(v5);
    }

    v6 = *(a1 + 8);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __VCPersistentDataStore_DumpMessage_block_invoke;
    v11[3] = &unk_278BD5490;
    v11[4] = a1;
    memcpy(v12, __src, sizeof(v12));
    v7 = v11;
  }

  else
  {
    v6 = *(a1 + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __VCPersistentDataStore_DumpMessage_block_invoke_2;
    v9[3] = &unk_278BD5490;
    v9[4] = a1;
    memcpy(v10, __src, sizeof(v10));
    v7 = v9;
  }

  dispatch_async(v6, v7);
  return 0;
}

void _VCPersistentDataStore_BindAndExecute_cold_2()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_3()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_13()
{
  OUTLINED_FUNCTION_16_1();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18_2();
  v0 = *MEMORY[0x277D85DE8];
}

void _VCPersistentDataStore_BindAndExecute_cold_15()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_16()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_22()
{
  OUTLINED_FUNCTION_16_1();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18_2();
  v0 = *MEMORY[0x277D85DE8];
}

void _VCPersistentDataStore_BindAndExecute_cold_24()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_25()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_29(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      v8 = 387;
      v9 = 2048;
      v10 = a1;
      v11 = v5;
      v12 = a2;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SQLite Error: could not bind data=%llu with return code=%d", v7, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v6 = *MEMORY[0x277D85DE8];
}

void _VCPersistentDataStore_BindAndExecute_cold_41()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_49()
{
  OUTLINED_FUNCTION_16_1();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18_2();
  v0 = *MEMORY[0x277D85DE8];
}

void _VCPersistentDataStore_BindAndExecute_cold_51()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_52()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_63()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_64()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_65()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_66()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_67()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_68()
{
  OUTLINED_FUNCTION_16_1();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18_2();
  v0 = *MEMORY[0x277D85DE8];
}

void _VCPersistentDataStore_BindAndExecute_cold_70()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_71()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_75()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_76()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_77()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_78()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_79()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_80()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_81()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_82()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_83()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_84()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_85()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_87()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_89()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_90()
{
  OUTLINED_FUNCTION_16_1();
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18_2();
  v0 = *MEMORY[0x277D85DE8];
}

void MobileWiFiLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA888] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA0] file:"stringWithUTF8String:" lineNumber:"void *MobileWiFiLibrary(void)") description:{@"VCAggregator.m", 42, @"%s", *a1}];
  __break(1u);
}

void __getCWFInterfaceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA888] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA0] file:"stringWithUTF8String:" lineNumber:"Class getCWFInterfaceClass(void)_block_invoke") description:{@"VCAggregator.m", 55, @"Unable to find class %s", "CWFInterface"}];
  __break(1u);
}

void __getCWFInterfaceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA888] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA0] file:"stringWithUTF8String:" lineNumber:"void *CoreWiFiLibrary(void)") description:{@"VCAggregator.m", 54, @"%s", *a1}];
  __break(1u);
}