void *WeakLinkSymbol(const char *a1, unint64_t a2)
{
  result = __HandleForSource(a2);
  if (result)
  {

    return dlsym(result, a1);
  }

  return result;
}

const void *__HandleForSource(unint64_t a1)
{
  pthread_mutex_lock(&__HandlesLock);
  Mutable = __Handles;
  if (!__Handles)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    __Handles = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, a1);
  if (!Value)
  {
    if (a1 <= 8 && ((0x1BFu >> a1) & 1) != 0 && (v4 = dlopen([*(&off_2789E7788 + a1) UTF8String], 1)) != 0)
    {
      Value = v4;
      CFDictionarySetValue(__Handles, a1, v4);
    }

    else
    {
      NSLog(&cfstr_CouldNotLoadSo.isa, a1);
      Value = 0;
    }
  }

  pthread_mutex_unlock(&__HandlesLock);
  return Value;
}

id WeakLinkClass(void *a1, unint64_t a2)
{
  v3 = a1;
  if (__HandleForSource(a2))
  {
    v4 = NSClassFromString(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id *WeakLinkStringConstant(const char *a1, unint64_t a2)
{
  v3 = __HandleForSource(a2);
  if (v3)
  {
    v3 = dlsym(v3, a1);
    if (v3)
    {
      v3 = *v3;
    }
  }

  return v3;
}

void init_logging()
{
  init_logging_modules(&_gLogObjects, 3, _kLoggingModuleEntries);

  init_logging_signposts();
}

void sub_23364A104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23364A5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23364B20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ___getMediaLibraryHelper_block_invoke()
{
  _getMediaLibraryHelper___mediaLibraryHelper = objc_alloc_init(MediaLibraryHelper);

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void init_logging_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __init_logging_modules_block_invoke;
  block[3] = &__block_descriptor_tmp;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_modules_onceToken, block);
  }
}

void __init_logging_modules_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = &off_23364F000;
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + v3);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v14) = v4;
          _os_log_error_impl(&dword_233648000, v6, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
          v7 = *(a1 + 32);
          v8 = "<Undefined>";
        }
      }

      v9 = *(v7 + v3 + 8);
      if (!v9)
      {
        v9 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __init_logging_modules_block_invoke_cold_1(v17, v4, &v18);
          v9 = "<Undefined>";
        }
      }

      v10 = os_log_create(v8, v9);
      *(*(a1 + 40) + 8 * v4) = v10;
      if (v10)
      {
        ++v5;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v14 = v8;
          v15 = 2080;
          v16 = v9;
          _os_log_debug_impl(&dword_233648000, v6, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = v8;
        v15 = 2080;
        v16 = v9;
        _os_log_error_impl(&dword_233648000, v6, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v11 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v11);
    v2 = &off_23364F000;
  }

  else
  {
    LODWORD(v11) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 348);
    LODWORD(v14) = v5;
    _os_log_impl(&dword_233648000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v11) = *(a1 + 48);
  }

  gLogObjects = *(a1 + 40);
  gNumLogObjects = v11;
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t IsAppVisibleInCurrentMode(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v2 = WeakLinkClass(@"LSApplicationProxy", 1uLL);
  v3 = WeakLinkClass(@"LSApplicationWorkspace", 1uLL);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = [v3 defaultWorkspace];
  v5 = [v4 applicationIsInstalled:v1];

  if (v5)
  {
    v6 = [v2 applicationProxyForIdentifier:v1];
    v7 = [v3 defaultWorkspace];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __IsAppVisibleInCurrentMode_block_invoke;
    v11[3] = &unk_2789E7898;
    v13 = &v14;
    v8 = v6;
    v12 = v8;
    [v7 enumerateBundlesOfType:4 block:v11];
  }

  v9 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v9;
}

void sub_23364CED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __IsAppVisibleInCurrentMode_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isEqual:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

id ACCGetOSVersion()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = MGCopyAnswerWithError();
  v1 = v0;
  if (v0)
  {
    v4 = CFGetTypeID(v0);
    if (v4 == CFStringGetTypeID())
    {
      v5 = [MEMORY[0x277CCACA8] stringWithString:v1];
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v8 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ACCGetOSVersion_cold_1();
        }

        v8 = MEMORY[0x277D86220];
        v9 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v13 = "ACCGetOSVersion";
        _os_log_impl(&dword_233648000, v8, OS_LOG_TYPE_DEFAULT, "%s got non-string when querying key", buf, 0xCu);
      }

      v5 = 0;
    }

    goto LABEL_25;
  }

  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ACCGetOSVersion_cold_1();
    }

    v6 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "ACCGetOSVersion";
    v14 = 1024;
    v15 = 0;
    v16 = 2112;
    v17 = @"ProductVersion";
    _os_log_impl(&dword_233648000, v6, OS_LOG_TYPE_DEFAULT, "%s MG error: 0x%08x retrieving key:(%@)", buf, 0x1Cu);
  }

  v5 = 0;
  v7 = 0;
  if (v1)
  {
LABEL_25:
    CFRelease(v1);
    v7 = v5;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

void init_logging_signpost_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __init_logging_signpost_modules_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_signpost_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_signpost_modules_onceToken, block);
  }
}

void __init_logging_signpost_modules_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = &off_23364F000;
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + v3);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v14) = v4;
          _os_log_error_impl(&dword_233648000, v6, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
          v7 = *(a1 + 32);
          v8 = "<Undefined>";
        }
      }

      v9 = *(v7 + v3 + 8);
      if (!v9)
      {
        v9 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __init_logging_signpost_modules_block_invoke_cold_1(v17, v4, &v18);
          v9 = "<Undefined>";
        }
      }

      v10 = os_log_create(v8, v9);
      *(*(a1 + 40) + 8 * v4) = v10;
      if (v10)
      {
        ++v5;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v14 = v8;
          v15 = 2080;
          v16 = v9;
          _os_log_debug_impl(&dword_233648000, v6, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = v8;
        v15 = 2080;
        v16 = v9;
        _os_log_error_impl(&dword_233648000, v6, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v11 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v11);
    v2 = &off_23364F000;
  }

  else
  {
    LODWORD(v11) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 348);
    LODWORD(v14) = v5;
    _os_log_impl(&dword_233648000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v11) = *(a1 + 48);
  }

  gLogSignpostObjects = *(a1 + 40);
  gNumLogSignpostObjects = v11;
  v12 = *MEMORY[0x277D85DE8];
}

void __init_logging_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_233648000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
}

void ACCGetOSVersion_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_233648000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, 0x12u);
  v0 = *MEMORY[0x277D85DE8];
}

void __init_logging_signpost_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_233648000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
}