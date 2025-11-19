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
  v2 = " startTime=%f, lastUpdateTime=%f, curTime=%f, sinceStart=%f, sinceLast=%f \n         resident: (start:%10llu / %8.3fM, last:%10llu / %8.3fM, max:%10llu / %8.3fM, diff:%10llu / %8.3fM, avg:%10llu / %8.3fM) \n          virtual: (start:%10llu / %8.3fM, last:%10llu / %8.3fM, max:%10llu / %8.3fM, diff:%10llu / %8.3fM, avg:%10llu / %8.3fM) \n    physFootprint: (start:%10llu / %8.3fM, last:%10llu / %8.3fM, max:%10llu / %8.3fM, diff:%10llu / %8.3fM, avg:%10llu / %8.3fM) \n";
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
          _os_log_error_impl(&dword_2335D3000, v6, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
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
          _os_log_debug_impl(&dword_2335D3000, v6, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = v8;
        v15 = 2080;
        v16 = v9;
        _os_log_error_impl(&dword_2335D3000, v6, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v11 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v11);
    v2 = "  ACCMemUsageStatInfo:%@ startTime=%f, lastUpdateTime=%f, curTime=%f, sinceStart=%f, sinceLast=%f \n         resident: (start:%10llu / %8.3fM, last:%10llu / %8.3fM, max:%10llu / %8.3fM, diff:%10llu / %8.3fM, avg:%10llu / %8.3fM) \n          virtual: (start:%10llu / %8.3fM, last:%10llu / %8.3fM, max:%10llu / %8.3fM, diff:%10llu / %8.3fM, avg:%10llu / %8.3fM) \n    physFootprint: (start:%10llu / %8.3fM, last:%10llu / %8.3fM, max:%10llu / %8.3fM, diff:%10llu / %8.3fM, avg:%10llu / %8.3fM) \n" + 24;
  }

  else
  {
    LODWORD(v11) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 78);
    LODWORD(v14) = v5;
    _os_log_impl(&dword_2335D3000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v11) = *(a1 + 48);
  }

  gLogObjects = *(a1 + 40);
  gNumLogObjects = v11;
  v12 = *MEMORY[0x277D85DE8];
}

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
    if (a1 <= 8 && ((0x1BFu >> a1) & 1) != 0 && (v4 = dlopen([(__CFString *)off_2789E3290[a1] UTF8String], 1)) != 0)
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
    v11[3] = &unk_2789E32E0;
    v13 = &v14;
    v8 = v6;
    v12 = v8;
    [v7 enumerateBundlesOfType:4 block:v11];
  }

  v9 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v9;
}

void sub_2335D4BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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
        _os_log_impl(&dword_2335D3000, v8, OS_LOG_TYPE_DEFAULT, "%s got non-string when querying key", buf, 0xCu);
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
    _os_log_impl(&dword_2335D3000, v6, OS_LOG_TYPE_DEFAULT, "%s MG error: 0x%08x retrieving key:(%@)", buf, 0x1Cu);
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

id ACCMediaLibraryShimUIDString(void *a1, int a2)
{
  v3 = a1;
  AppBooleanValue = __allowCachedTracksForAppleMusic___allowCachedTracksForAppleMusicSetting;
  if (__allowCachedTracksForAppleMusic___allowCachedTracksForAppleMusicSetting == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"allowCachedTracksForAppleMusic", @"com.apple.iapd", 0);
    __allowCachedTracksForAppleMusic___allowCachedTracksForAppleMusicSetting = AppBooleanValue;
  }

  v5 = @"LM";
  if (a2)
  {
    v5 = @"AM";
  }

  if (!AppBooleanValue)
  {
    v5 = &stru_2848E72C8;
  }

  v6 = v5;
  v7 = GetMediaLibraryHelper();
  v8 = ACCGetOSVersion();
  v9 = [v3 uniqueIdentifier];
  v10 = [v7 showMusic];
  v11 = @"M";
  if (!v10)
  {
    v11 = @"N";
  }

  v12 = v11;
  v13 = [v7 showPodcasts];
  v14 = @"P";
  if (!v13)
  {
    v14 = @"N";
  }

  v15 = v14;
  v16 = [v7 showAudioBooks];
  v17 = @"B";
  if (!v16)
  {
    v17 = @"N";
  }

  v18 = v17;
  if (!v8)
  {
    ACCMediaLibraryShimUIDString_cold_1();
  }

  if (!v9)
  {
    ACCMediaLibraryShimUIDString_cold_1();
  }

  v19 = v18;
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@%@%@%@-%@", v9, v6, v12, v15, v18, v8];

  return v20;
}

id ACCRadioLibraryUIDString()
{
  v0 = ACCGetOSVersion();
  v1 = [MEMORY[0x277CD5E10] deviceMediaLibrary];
  v2 = [v1 uniqueIdentifier];

  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", v2, @"4954524C", v0];

  return v3;
}

uint64_t _sendOnlyInLibraryItemsForPlaylist()
{
  v0 = _sendOnlyInLibraryItemsForPlaylist_state;
  if (!_sendOnlyInLibraryItemsForPlaylist_state)
  {
    v1 = [[ACCSettingsState alloc] initWithKey:@"SendOnlyInLibraryItems" applicationID:@"com.apple.iapd" notification:@"com.apple.iapd.LoggingPreferencesChangedNotification" defaultValue:0 invalidValue:-1];
    v2 = _sendOnlyInLibraryItemsForPlaylist_state;
    _sendOnlyInLibraryItemsForPlaylist_state = v1;

    v0 = _sendOnlyInLibraryItemsForPlaylist_state;
  }

  return [v0 BOOLValue];
}

void sub_2335DADE4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x420], 8);
  _Block_object_dispose(&STACK[0x440], 8);
  _Block_object_dispose(&STACK[0x460], 8);
  _Block_object_dispose(&STACK[0x480], 8);
  _Block_object_dispose(&STACK[0x4B0], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id GetMediaLibraryHelper()
{
  if (GetMediaLibraryHelper___mediaLibraryHelperInitOnce != -1)
  {
    GetMediaLibraryHelper_cold_1();
  }

  v1 = GetMediaLibraryHelper___mediaLibraryHelper;

  return v1;
}

uint64_t __GetMediaLibraryHelper_block_invoke()
{
  GetMediaLibraryHelper___mediaLibraryHelper = objc_alloc_init(MediaLibraryHelper);

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_3(uint64_t a1@<X8>)
{
  v2 = *(*(a1 + 8) + 24);
  v3 = *(v1 + 32);
  v4 = *(v3 + 48);
  v5 = *(v3 + 32);
  v6 = *(v3 + 33);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x3Cu);
}

uint64_t OUTLINED_FUNCTION_6@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 40) = a2;
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  v5 = *(v4 + 80);
  return result;
}

void OUTLINED_FUNCTION_8()
{
  v1 = v0[5];
  v2 = *(*(v0[6] + 8) + 24);
  v3 = v0[4];
  v4 = *(v3 + 48);
  v5 = *(v3 + 32);
  v6 = *(v3 + 33);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id ACCMediaLibraryFeatureRequestedInfoDesc(void *a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 objectForKey:*MEMORY[0x277CE8278]];
  v3 = [v1 objectForKey:*MEMORY[0x277CE8290]];
  v29 = v1;
  v4 = [v1 objectForKey:*MEMORY[0x277CE8298]];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 |= 1 << [*(*(&v38 + 1) + 8 * i) intValue];
      }

      v7 = [v5 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v3;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v35;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v14 |= 1 << [*(*(&v34 + 1) + 8 * j) intValue];
      }

      v13 = [v11 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v4;
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v31;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v20 |= 1 << [*(*(&v30 + 1) + 8 * k) intValue];
      }

      v19 = [v17 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  v23 = MEMORY[0x277CCACA8];
  v24 = [v29 objectForKey:*MEMORY[0x277CE8270]];
  v25 = [v29 objectForKey:*MEMORY[0x277CE8280]];
  v26 = [v23 stringWithFormat:@"[properties(item=%llxh playlist=%llxh content=%llxh) hideNonLocal=%@ playAllSongsCapable=%@]", v8, v14, v20, v24, v25];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

uint64_t ascii_to_hex(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = 0;
      v14 = -86;
      v13 = -86;
      v5 = &v14;
      v6 = 1;
      do
      {
        v7 = v6;
        v8 = *(a2 + 2 * v3 + v4);
        v9 = v8 - 48;
        v10 = v8 - 65;
        if ((v8 - 97) >= 6)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 - 87;
        }

        v12 = v8 - 55;
        if (v10 > 5)
        {
          v12 = v11;
        }

        if (v9 < 0xA)
        {
          v12 = v9;
        }

        *v5 = v12;
        v5 = &v13;
        v4 = 1;
        v6 = 0;
      }

      while ((v7 & 1) != 0);
      *(result + v3++) = v13 | (16 * v14);
    }

    while (v3 != a3 >> 1);
  }

  return result;
}

unsigned __int8 *printBytes(unsigned __int8 *result, uint64_t a2, char *a3, int a4)
{
  if (result)
  {
    v4 = a2;
    if (a2)
    {
      v7 = result;
      do
      {
        v8 = *v7++;
        result = printf(a3, v8);
        --v4;
      }

      while (v4);
      if (a4)
      {

        return putchar(10);
      }
    }
  }

  return result;
}

const char *removeNewline(const char *a1)
{
  v2 = strlen(a1);
  if (v2 && a1[v2 - 1] == 10)
  {
    a1[v2 - 1] = 0;
  }

  return a1;
}

uint64_t obfuscatedPointer(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = obfuscatedPointer_salt;
    if (!obfuscatedPointer_salt)
    {
      v2 = random();
      obfuscatedPointer_salt = v2;
    }

    return v1 + v2;
  }

  return result;
}

BOOL getMemoryUse(void *a1, void *a2, void *a3)
{
  v33 = -1431655766;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v6;
  v32 = v6;
  v29 = v6;
  v30 = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  v26 = v6;
  v23 = v6;
  v24 = v6;
  v21 = v6;
  v22 = v6;
  v19 = v6;
  v20 = v6;
  v18 = v6;
  v16 = v6;
  v17 = v6;
  v14 = v6;
  v15 = v6;
  v12 = v6;
  v13 = v6;
  *task_info_out = v6;
  v11 = v6;
  task_info_outCnt = 93;
  v7 = task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt);
  if (!v7)
  {
    if (a1)
    {
      *a1 = v11;
    }

    if (a2)
    {
      *a2 = *task_info_out;
    }

    if (a3)
    {
      *a3 = v19;
    }
  }

  return v7 == 0;
}

uint64_t init_logging()
{
  init_logging_modules(&_gLogObjects, 1, _kLoggingModuleEntries);

  return MEMORY[0x28213A078]();
}

void __init_logging_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_2335D3000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
}

void ACCGetOSVersion_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_2335D3000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, 0x12u);
  v0 = *MEMORY[0x277D85DE8];
}

void ACCMediaLibraryShimUIDString_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

char *createHexString(uint64_t a1, unint64_t a2, int a3)
{
  if (a1 && a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (!a3)
      {
        v6 = (2 * a2) | 1;
LABEL_10:
        v8 = malloc_type_malloc(v6, 0x100004077774924uLL);
        if (v8)
        {
          v9 = 0;
          v10 = v8;
          v19 = v8;
          v11 = v8;
          v12 = v6;
          while (a3)
          {
            v13 = *(a1 + v9);
            if (v9 >= a2 - 1)
            {
              v18 = *(a1 + v9);
              v15 = v11;
              v16 = v12;
              goto LABEL_17;
            }

            v17 = *(a1 + v9);
            snprintf(v11, v12, "%02X ");
LABEL_18:
            ++v9;
            v12 -= 3;
            v11 += 3;
            v10 += 2;
            v6 -= 2;
            if (a2 == v9)
            {
              return v19;
            }
          }

          v14 = *(a1 + v9);
          v15 = v10;
          v16 = v6;
LABEL_17:
          snprintf(v15, v16, "%02X");
          goto LABEL_18;
        }

        goto LABEL_21;
      }

      if (is_mul_ok(a2, 3uLL))
      {
        v6 = 3 * a2;
        goto LABEL_10;
      }
    }

    do
    {
LABEL_21:
      result = malloc_type_malloc(0xEuLL, 0x100004077774924uLL);
    }

    while (!result);
    strcpy(result, "<print error>");
    return result;
  }

  result = malloc_type_malloc(7uLL, 0x100004077774924uLL);
  if (result)
  {
    strcpy(result, "(null)");
  }

  return result;
}