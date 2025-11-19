@interface CFXPreferences
@end

@implementation CFXPreferences

CFDictionaryRef __40___CFXPreferences_synchronizeEverything__block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  result = CFDictionaryCreateCopy(&__kCFAllocatorSystemDefault, a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __96___CFXPreferences_SourceAdditions__withSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
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

void __96___CFXPreferences_SourceAdditions__withSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke_2()
{
  v2 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if ((__CF_FORK_STATE & 1) == 0)
  {
    out_token = 0;
    notify_register_dispatch("com.apple.CFPreferences._domainsChangedExternally", &out_token, MEMORY[0x1E69E96A0], &__block_literal_global_215);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void __96___CFXPreferences_SourceAdditions__withSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke_3()
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if ((__CF_FORK_STATE & 1) == 0)
  {
    if (_CFPreferencesDoesNSUserDefaultsExist())
    {
      v0 = _CFPreferencesCopyStandardUserDefaults();
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(LocalCenter, @"NSUserDefaultsDidChangeNotification", v0, 0, 1u);
    }

    v2 = CFDictionaryCreate(&__kCFAllocatorSystemDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v3 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(v3, @"com.apple.CFPreferences._didChange", @"com.apple.CFPreferences", v2, 1u);

    CFRelease(v2);
  }
}

void __96___CFXPreferences_SourceAdditions__withSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke_216(uint64_t a1, CFDictionaryRef theDict)
{
  v18 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 40) = CFDictionaryGetValue(theDict, *(a1 + 48));
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    v5 = *MEMORY[0x1E69E9840];

    v6 = v4;
  }

  else
  {
    v7 = *(a1 + 56);
    if (CFEqual(v7, @"kCFPreferencesAnyUser"))
    {
      goto LABEL_22;
    }

    os_unfair_lock_lock(&__useVolatileDomainsForUser_volatileHomeDirsLock);
    Mutable = __useVolatileDomainsForUser_volatileHomeDirs;
    if (!__useVolatileDomainsForUser_volatileHomeDirs)
    {
      Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      __useVolatileDomainsForUser_volatileHomeDirs = Mutable;
    }

    Value = CFDictionaryGetValue(Mutable, v7);
    if (!Value)
    {
      if (CFEqual(@"kCFPreferencesCurrentUser", v7))
      {
        v10 = 0;
      }

      else
      {
        v10 = v7;
      }

      v11 = CFCopyHomeDirectoryURLForUser(v10);
      if (_CFURLExists(v11))
      {
        Value = &__kCFBooleanFalse;
      }

      else
      {
        bzero(buffer, 0x400uLL);
        CFURLGetFileSystemRepresentation(v11, 1u, buffer, 1024);
        CFStringGetCString(v7, v16, 100, 0x8000100u);
        v12 = _CFPrefsClientLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __96___CFXPreferences_SourceAdditions__withSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke_216_cold_1(v12);
        }

        Value = &__kCFBooleanTrue;
      }

      if (v11)
      {
        CFRelease(v11);
      }

      CFDictionarySetValue(__useVolatileDomainsForUser_volatileHomeDirs, v7, Value);
    }

    os_unfair_lock_unlock(&__useVolatileDomainsForUser_volatileHomeDirsLock);
    if (Value == &__kCFBooleanTrue || (__overrideUseVolatileDomainsForUser & 1) != 0)
    {
      _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
      v14 = _CFPrefsClientLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __96___CFXPreferences_SourceAdditions__withSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke_216_cold_2(a1, (a1 + 56), v14);
      }

      _CFSetTSD(0xFu, 0, 0);
      v13 = [[CFPrefsSource alloc] initWithContainingPreferences:*(a1 + 32)];
    }

    else
    {
LABEL_22:
      if (*(a1 + 80) == 1)
      {
        v13 = [[CFPrefsCloudSource alloc] initWithDomain:*(a1 + 64) user:*(a1 + 56) byHost:*(a1 + 81) containerPath:*(a1 + 72) containingPreferences:*(a1 + 32)];
      }

      else
      {
        v13 = [[CFPrefsPlistSource alloc] initWithDomain:*(a1 + 64) user:*(a1 + 56) byHost:*(a1 + 81) containerPath:*(a1 + 72) containingPreferences:*(a1 + 32)];
      }
    }

    *(*(*(a1 + 40) + 8) + 40) = v13;
    CFDictionarySetValue(theDict, *(a1 + 48), *(*(*(a1 + 40) + 8) + 40));
    v15 = *MEMORY[0x1E69E9840];
  }
}

void __81___CFXPreferences_SourceAdditions__withNamedVolatileSourceForIdentifier_perform___block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  *(*(*(a1 + 40) + 8) + 40) = CFDictionaryGetValue(theDict, *(a1 + 48));
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 40) = [[CFPrefsSource alloc] initWithContainingPreferences:*(a1 + 32)];
    CFDictionarySetValue(theDict, *(a1 + 48), *(*(*(a1 + 40) + 8) + 40));
    _addBackstopValuesForIdentifierAndSource(*(a1 + 56), *(*(*(a1 + 40) + 8) + 40));
  }

  v6 = *(a1 + 48);

  CFRelease(v6);
}

id __115___CFXPreferences_SourceAdditions__assertEquivalence_ofIdentifiers_users_hosts_containers_managedFlags_cloudFlags___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (v4)
  {
    if (*(a1 + 40) == 1)
    {
      if (v4 != a2)
      {
        _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@ doesn't match %@", v4, a2);
      }
    }

    else if (v4 == a2)
    {
      __115___CFXPreferences_SourceAdditions__assertEquivalence_ofIdentifiers_users_hosts_containers_managedFlags_cloudFlags___block_invoke_cold_1(v4);
    }
  }

  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void __112___CFXPreferences_SearchListAdditions__with23930198HackSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke(uint64_t a1, __CFString *a2, const __CFString *a3, int a4, __CFString *a5)
{
  v6 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  CacheKeyForQuintuplet = _CFPrefsCreateCacheKeyForQuintuplet(a2, a3, a4, a5, 0);
  v11 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __112___CFXPreferences_SearchListAdditions__with23930198HackSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke_135;
  v14[3] = &unk_1E6DD0AC0;
  v14[4] = v11;
  v14[5] = &v20;
  v14[8] = a2;
  v14[9] = a5;
  v14[10] = a3;
  v15 = v6;
  v14[6] = &v16;
  v14[7] = CacheKeyForQuintuplet;
  [(_CFXPreferences *)v11 withSearchLists:v14];
  if (*(v17 + 24) == 1)
  {
    [*(v21[5] + 112) setEnabled:1];
  }

  CFRelease(CacheKeyForQuintuplet);
  v12 = v21[5];
  (*(*(a1 + 40) + 16))();

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  v13 = *MEMORY[0x1E69E9840];
}

id __112___CFXPreferences_SearchListAdditions__with23930198HackSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke_135(uint64_t a1, CFDictionaryRef theDict)
{
  v26[1] = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 40) = CFDictionaryGetValue(theDict, *(a1 + 56));
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    goto LABEL_2;
  }

  *(*(*(a1 + 40) + 8) + 40) = [[CFPrefsSearchListSource alloc] initWithIdentifier:*(a1 + 64) containingPreferences:*(a1 + 32)];
  v7 = _CFPrefsTestingCloudConfigurationOverrideURL;
  if (_CFPrefsTestingCloudConfigurationOverrideURL)
  {
    if (CFURLGetTypeID() == 29)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  cf = 0;
  v26[0] = 0;
  v9 = [(CFPrefsSearchListSource *)*(*(*(a1 + 40) + 8) + 40) copyCloudConfigurationWithURL:v8 outConfigFileSource:v26 outStoreName:&cf];
  if (v9)
  {
    v10 = v9;
    [(CFPrefsSearchListSource *)*(*(*(a1 + 40) + 8) + 40) addCloudSourceForIdentifier:v9 configurationPath:cf storeName:*(a1 + 72) container:?];
    v11 = *(*(*(*(a1 + 40) + 8) + 40) + 80);
    Count = CFArrayGetCount(v11);
    *(*(*(*(a1 + 40) + 8) + 40) + 112) = CFArrayGetValueAtIndex(v11, Count - 1);
    CFRelease(v10);
  }

  v14 = *(a1 + 72);
  v13 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a1 + 64);
  [CFPrefsSearchListSource addSourceForIdentifier:? user:? byHost:? container:?];
  v17 = *(*(*(*(a1 + 40) + 8) + 40) + 80);
  v18 = CFArrayGetCount(v17);
  *(*(*(*(a1 + 40) + 8) + 40) + 104) = CFArrayGetValueAtIndex(v17, v18 - 1);
  if (v26[0])
  {
    [(CFPrefsSearchListSource *)*(*(*(a1 + 40) + 8) + 40) addSource:?];
  }

  v19 = *(*(*(a1 + 40) + 8) + 40);
  v20 = *(v19 + 88);
  if (v20)
  {
    if (CFSetGetCount(v20) > 0)
    {
      v21 = 1;
      goto LABEL_19;
    }

    v19 = *(*(*(a1 + 40) + 8) + 40);
  }

  v22 = *(v19 + 96);
  if (v22)
  {
    v21 = CFArrayGetCount(v22) > 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_19:
  *(*(*(a1 + 48) + 8) + 24) = v21;
  v23 = *(*(*(a1 + 40) + 8) + 40);
  if (v23)
  {
    *(v23 + 120) = 1;
    v24 = *(*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    v24 = 0;
  }

  CFDictionarySetValue(theDict, *(a1 + 56), v24);

  if (cf)
  {
    CFRelease(cf);
  }

  v4 = *(*(*(a1 + 40) + 8) + 40);
LABEL_2:
  result = v4;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef __71___CFXPreferences_SearchListAdditions__updateSearchListsForIdentifier___block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  result = CFDictionaryCreateCopy(&__kCFAllocatorSystemDefault, a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __108___CFXPreferences_SearchListAdditions__withSearchListForIdentifier_container_cloudConfigurationURL_perform___block_invoke(uint64_t *a1, __CFString *theString, uint64_t a3, char a4, const __CFString *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  MutableCopy = theString;
  if (a5)
  {
    MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, theString);
    CFStringAppend(MutableCopy, a5);
  }

  v11 = _CFPrefsArmPendingKVOSlot();
  v12 = a1[4];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __108___CFXPreferences_SearchListAdditions__withSearchListForIdentifier_container_cloudConfigurationURL_perform___block_invoke_2;
  v15[3] = &unk_1E6DD0B10;
  v15[4] = v12;
  v15[5] = &v21;
  v15[8] = theString;
  v15[9] = a3;
  v15[10] = a1[6];
  v15[11] = a5;
  v16 = a4;
  v15[6] = &v17;
  v15[7] = MutableCopy;
  [(_CFXPreferences *)v12 withSearchLists:v15];
  if (a5)
  {
    CFRelease(MutableCopy);
  }

  if (*(v18 + 24) == 1)
  {
    [*(v22[5] + 112) setEnabled:1];
  }

  v13 = v22[5];
  (*(a1[5] + 16))();

  if (v11)
  {
    [(_CFXPreferences *)a1[4] _deliverPendingKVONotifications];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  v14 = *MEMORY[0x1E69E9840];
}

id __108___CFXPreferences_SearchListAdditions__withSearchListForIdentifier_container_cloudConfigurationURL_perform___block_invoke_2(uint64_t a1, CFDictionaryRef theDict)
{
  v33[1] = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 40) = CFDictionaryGetValue(theDict, *(a1 + 56));
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (!v4)
  {
    *(*(*(a1 + 40) + 8) + 40) = [[CFPrefsSearchListSource alloc] initWithIdentifier:*(a1 + 64) containingPreferences:*(a1 + 32)];
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    [CFPrefsSearchListSource addManagedSourceForIdentifier:? user:?];
    v9 = *(a1 + 64);
    [CFPrefsSearchListSource addManagedSourceForIdentifier:? user:?];
    [CFPrefsSearchListSource addNamedVolatileSourceForIdentifier:?];
    v32 = 0;
    v33[0] = 0;
    v10 = [(CFPrefsSearchListSource *)*(*(*(a1 + 40) + 8) + 40) copyCloudConfigurationWithURL:v33 outConfigFileSource:&v32 outStoreName:?];
    if (v10)
    {
      v11 = v10;
      [(CFPrefsSearchListSource *)*(*(*(a1 + 40) + 8) + 40) addCloudSourceForIdentifier:v10 configurationPath:v32 storeName:*(a1 + 88) container:?];
      v12 = *(*(*(*(a1 + 40) + 8) + 40) + 80);
      Count = CFArrayGetCount(v12);
      *(*(*(*(a1 + 40) + 8) + 40) + 112) = CFArrayGetValueAtIndex(v12, Count - 1);
      CFRelease(v11);
    }

    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v16 = *(a1 + 96);
    v17 = *(a1 + 88);
    [CFPrefsSearchListSource addSourceForIdentifier:? user:? byHost:? container:?];
    v18 = *(*(*(*(a1 + 40) + 8) + 40) + 80);
    v19 = CFArrayGetCount(v18);
    *(*(*(*(a1 + 40) + 8) + 40) + 104) = CFArrayGetValueAtIndex(v18, v19 - 1);
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    [CFPrefsSearchListSource addSuiteSourceForIdentifier:? user:?];
    v22 = *(a1 + 72);
    [CFPrefsSearchListSource addManagedSourceForIdentifier:? user:?];
    v23 = *(a1 + 72);
    v24 = *(a1 + 96);
    v25 = *(a1 + 88);
    [CFPrefsSearchListSource addSourceForIdentifier:? user:? byHost:? container:?];
    v26 = *(a1 + 64);
    [CFPrefsSearchListSource addSourceForIdentifier:? user:? byHost:? container:?];
    v27 = *(a1 + 64);
    [CFPrefsSearchListSource addSuiteSourceForIdentifier:? user:?];
    [CFPrefsSearchListSource addSourceForIdentifier:? user:? byHost:? container:?];
    [CFPrefsSearchListSource addNamedVolatileSourceForIdentifier:?];
    if (v33[0])
    {
      [(CFPrefsSearchListSource *)*(*(*(a1 + 40) + 8) + 40) addSource:?];
    }

    v28 = *(*(*(*(a1 + 40) + 8) + 40) + 88);
    if (v28)
    {
      v29 = CFSetGetCount(v28) > 0;
    }

    else
    {
      v29 = 0;
    }

    *(*(*(a1 + 48) + 8) + 24) = v29;
    v30 = *(*(*(a1 + 40) + 8) + 40);
    if (v30)
    {
      *(v30 + 120) = 1;
      v31 = *(*(*(a1 + 40) + 8) + 40);
    }

    else
    {
      v31 = 0;
    }

    CFDictionarySetValue(theDict, *(a1 + 56), v31);

    v4 = *(*(*(a1 + 40) + 8) + 40);
  }

  result = v4;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

id __106___CFXPreferences_SearchListAdditions__assertEquivalence_ofIdentifiers_containers_cloudConfigurationURLs___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (v4)
  {
    if (*(a1 + 40) == 1)
    {
      if (v4 != a2)
      {
        __106___CFXPreferences_SearchListAdditions__assertEquivalence_ofIdentifiers_containers_cloudConfigurationURLs___block_invoke_cold_2();
      }
    }

    else if (v4 == a2)
    {
      __106___CFXPreferences_SearchListAdditions__assertEquivalence_ofIdentifiers_containers_cloudConfigurationURLs___block_invoke_cold_1();
    }
  }

  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void __93___CFXPreferences_SearchListAdditions__withSuiteSearchListForIdentifier_user_locked_perform___block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = _CFPrefsGetCacheStringForBundleID(*(a1 + 56));
  v4 = *(a1 + 64);
  CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(*(a1 + 56));
  v6 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"suite/%@/%@", CacheStringForBundleID, v4);
  *(*(*(a1 + 48) + 8) + 40) = CFDictionaryGetValue(a2, v6);
  v7 = *(*(*(a1 + 48) + 8) + 40);
  if (!v7)
  {
    *(*(*(a1 + 48) + 8) + 40) = [(CFPrefsSearchListSource *)[CFPrefsSuiteSearchListSource alloc] initWithIdentifier:*(a1 + 56) containingPreferences:*(a1 + 32)];
    v8 = *(*(*(a1 + 48) + 8) + 40);
    if (v8)
    {
      *(v8 + 120) = 1;
      v9 = *(*(*(a1 + 48) + 8) + 40);
    }

    else
    {
      v9 = 0;
    }

    CFDictionarySetValue(a2, v6, v9);

    v7 = *(*(*(a1 + 48) + 8) + 40);
  }

  v10 = v7;

  CFRelease(v6);
}

void __73___CFXPreferences_SearchListAdditions__replaceSearchList_withSearchList___block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  v26 = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(theDict);
  if (((Count >> 59) & 0xF) != 0)
  {
    v23 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", 2 * Count);
    v24 = [NSException exceptionWithName:@"NSGenericException" reason:v23 userInfo:0];
    CFRelease(v23);
    objc_exception_throw(v24);
  }

  v6 = Count;
  if (Count)
  {
    v7 = 2 * Count;
  }

  else
  {
    v7 = 1;
  }

  v8 = MEMORY[0x1EEE9AC00](v7, v5);
  v10 = (&v25 - v9);
  v25 = 0;
  if (v11 >= 0x101)
  {
    v10 = _CFCreateArrayStorage(v8, 0, &v25);
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 32);
  CFDictionaryGetKeysAndValues(theDict, v10, &v10[v6]);
  if (v6 >= 1)
  {
    v14 = v6;
    do
    {
      v15 = v10[v6];
      if (v15 == *(a1 + 32))
      {
        CFDictionaryReplaceValue(theDict, *v10, *(a1 + 40));
      }

      else
      {
        v16 = *(v15 + 10);
        if (v16)
        {
          v27.length = CFArrayGetCount(*(v15 + 10));
          v27.location = 0;
          if (CFArrayContainsValue(v16, v27, *(a1 + 32)))
          {
            CFArrayAppendValue(*(a1 + 56), *v10);
          }
        }
      }

      ++v10;
      --v14;
    }

    while (v14);
  }

  free(v12);
  v17 = CFArrayGetCount(*(a1 + 56));
  if (v17 >= 1)
  {
    for (i = 0; i != v17; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), i);
      Value = CFDictionaryGetValue(theDict, ValueAtIndex);
      v21 = [Value copy];
      [(CFPrefsSearchListSource *)v21 replaceSource:*(a1 + 40) withSource:?];
      if (v21)
      {
        v21[120] = 1;
      }

      [(_CFXPreferences *)*(a1 + 48) replaceSearchList:v21 withSearchList:?];
    }
  }

  CFRelease(*(a1 + 56));

  v22 = *MEMORY[0x1E69E9840];
}

void __65___CFXPreferences_registerUserDefaultsInstance_configurationURL___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) _observingCFPreferences])
  {
    v4 = *(a1 + 32);

    [(CFPrefsSearchListSource *)a2 addPreferencesObserver:v4];
  }
}

void __38___CFXPreferences_flushManagedSources__block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = _os_activity_create(&dword_1830E6000, "Notifying CFPrefsD Of Updated Managed Preferences", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v5, "CFPreferencesOperation", 3);
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = __Block_byref_object_copy__6;
    v14 = __Block_byref_object_dispose__6;
    v15 = 0;
    v6 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38___CFXPreferences_flushManagedSources__block_invoke_68;
    v9[3] = &unk_1E6DD2280;
    v9[5] = v5;
    v9[6] = &v10;
    v9[4] = a2;
    CFPREFERENCES_IS_WAITING_FOR_SYSTEM_CFPREFSD(v6, v9);
    xpc_release(v5);
    v7 = v11[5];
    if (v7)
    {
      xpc_release(v7);
    }

    _Block_object_dispose(&v10, 8);
    os_activity_scope_leave(&state);
  }

  v8 = *MEMORY[0x1E69E9840];
}

xpc_object_t __38___CFXPreferences_flushManagedSources__block_invoke_68(uint64_t a1)
{
  result = xpc_connection_send_message_with_reply_sync(*(a1 + 32), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

void __56___CFXPreferences_appValueIsForcedForKey_appIdentifier___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 copyValueForKey:*(a1 + 40)];
    *(*(*(a1 + 32) + 8) + 24) = v3 != 0;
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

void __56___CFXPreferences_appValueIsForcedForKey_appIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 copyValueForKey:*(a1 + 40)];
    *(*(*(a1 + 32) + 8) + 24) = v3 != 0;
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

uint64_t __80___CFXPreferences_hasCloudValueForKey_appIdentifier_container_configurationURL___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [(CFPrefsSearchListSource *)a2 alreadylocked_hasCloudValueForKey:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

BOOL __88___CFXPreferences_hasNonRegisteredValueForKey_appIdentifier_container_configurationURL___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [(CFPrefsSearchListSource *)a2 alreadylocked_hasNonRegisteredValueForKey:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

os_unfair_lock_s *__64___CFXPreferences_copyKeyListForIdentifier_user_host_container___block_invoke(uint64_t a1, os_unfair_lock_s *a2)
{
  result = [(CFPrefsSource *)a2 copyKeyList];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __61___CFXPreferences_synchronizeIdentifier_user_host_container___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 synchronize];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __52___CFXPreferences_flushCachesForAppIdentifier_user___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
LABEL_12:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = _CFXPCCreateXPCObjectFromCFObject(*(a1 + 40));
  if (v5)
  {
    v6 = v5;
    v7 = _os_activity_create(&dword_1830E6000, "Flushing Cached Preferences Data", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v7, &state);
    xpc_dictionary_set_value(v4, "CFPreferencesDomain", v6);
    xpc_release(v6);
    xpc_dictionary_set_int64(v4, "CFPreferencesOperation", 4);
    v13 = 0;
    v14 = &v13;
    v15 = 0x3052000000;
    v16 = __Block_byref_object_copy__6;
    v17 = __Block_byref_object_dispose__6;
    v18 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52___CFXPreferences_flushCachesForAppIdentifier_user___block_invoke_2;
    v12[3] = &unk_1E6DD2280;
    v12[5] = v4;
    v12[6] = &v13;
    v12[4] = a2;
    v8 = *(a1 + 32);
    if (*(a1 + 48) == 2)
    {
      CFPREFERENCES_IS_WAITING_FOR_SYSTEM_CFPREFSD(v8, v12);
    }

    else
    {
      CFPREFERENCES_IS_WAITING_FOR_USER_CFPREFSD(v8, v12);
    }

    xpc_release(v4);
    v10 = v14[5];
    if (v10)
    {
      xpc_release(v10);
    }

    _Block_object_dispose(&v13, 8);
    os_activity_scope_leave(&state);
    goto LABEL_12;
  }

  v9 = *MEMORY[0x1E69E9840];

  xpc_release(v4);
}

xpc_object_t __52___CFXPreferences_flushCachesForAppIdentifier_user___block_invoke_2(uint64_t a1)
{
  result = xpc_connection_send_message_with_reply_sync(*(a1 + 32), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

void __61___CFXPreferences_simulateTimerSynchronizeForTestingForUser___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v4, "CFPreferencesOperation", 999);
    v9 = 0;
    v10 = &v9;
    v11 = 0x3052000000;
    v12 = __Block_byref_object_copy__6;
    v13 = __Block_byref_object_dispose__6;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61___CFXPreferences_simulateTimerSynchronizeForTestingForUser___block_invoke_2;
    v8[3] = &unk_1E6DD2280;
    v8[5] = v4;
    v8[6] = &v9;
    v8[4] = a2;
    v5 = *(a1 + 32);
    if (*(a1 + 40) == 2)
    {
      CFPREFERENCES_IS_WAITING_FOR_SYSTEM_CFPREFSD(v5, v8);
    }

    else
    {
      CFPREFERENCES_IS_WAITING_FOR_USER_CFPREFSD(v5, v8);
    }

    xpc_release(v4);
    v6 = v10[5];
    if (v6)
    {
      xpc_release(v6);
    }

    _Block_object_dispose(&v9, 8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

xpc_object_t __61___CFXPreferences_simulateTimerSynchronizeForTestingForUser___block_invoke_2(uint64_t a1)
{
  result = xpc_connection_send_message_with_reply_sync(*(a1 + 32), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

uint64_t __72___CFXPreferences_fileProtectionClassForIdentifier_user_host_container___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(v7, 0x400uLL);
  result = _CFPrefsGetPathForTriplet([a2 domainIdentifier], objc_msgSend(a2, "userIdentifier"), objc_msgSend(a2, "isByHost"), objc_msgSend(a2, "container"), v7);
  if (result)
  {
    result = open_dprotected_np(v7, 0, 0, 1);
    if (result != -1)
    {
      v5 = result;
      *(*(*(a1 + 32) + 8) + 24) = fcntl(result, 63);
      result = close(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __65___CFXPreferences_addSuitePreferences_toAppIdentifier_container___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21[0] = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  _CFPrefsExtractQuadrupleFromPathIfPossible(*(*(*(a1 + 40) + 8) + 24), v21, &v20, &v19, &v18, &v18 + 1, &v17);
  if (v21[0])
  {
    *(*(*(a1 + 40) + 8) + 24) = v21[0];
  }

  if (v20)
  {
    CFRelease(v20);
    v20 = 0;
  }

  v2 = v19;
  if (v19)
  {
    *(*(*(a1 + 48) + 8) + 24) = v19;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v13 = __65___CFXPreferences_addSuitePreferences_toAppIdentifier_container___block_invoke_2;
  v14 = &__block_descriptor_48_e5_v8__0l;
  v15 = v2;
  v16 = v21[0];
  if (HIBYTE(v18) == 1)
  {
    __65___CFXPreferences_addSuitePreferences_toAppIdentifier_container___block_invoke_2(v12);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65___CFXPreferences_addSuitePreferences_toAppIdentifier_container___block_invoke_3;
    v9[3] = &unk_1E6DD23D0;
    v10 = *(a1 + 32);
    v3 = *(a1 + 56);
    v11 = *(a1 + 48);
    [(_CFXPreferences *)v10 withSuiteSearchListForIdentifier:v3 user:@"kCFPreferencesCurrentUser" locked:1 perform:v9];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65___CFXPreferences_addSuitePreferences_toAppIdentifier_container___block_invoke_7;
    v6[3] = &unk_1E6DD23D0;
    v7 = *(a1 + 32);
    v4 = *(a1 + 56);
    v8 = *(a1 + 48);
    [(_CFXPreferences *)v7 withSuiteSearchListForIdentifier:v4 user:@"kCFPreferencesAnyUser" locked:1 perform:v6];
    v13(v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __65___CFXPreferences_addSuitePreferences_toAppIdentifier_container___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __65___CFXPreferences_addSuitePreferences_toAppIdentifier_container___block_invoke_3(uint64_t *a1, void *a2)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v4 = [a2 copy];
  v5 = a1[4];
  v6 = *(*(a1[5] + 8) + 24);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65___CFXPreferences_addSuitePreferences_toAppIdentifier_container___block_invoke_4;
  v16[3] = &unk_1E6DD0898;
  v16[4] = v4;
  [(_CFXPreferences *)v5 withManagedSourceForIdentifier:v6 user:@"kCFPreferencesCurrentUser" perform:v16];
  v7 = a1[4];
  v8 = *(*(a1[5] + 8) + 24);
  v9 = *(*(a1[6] + 8) + 24);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65___CFXPreferences_addSuitePreferences_toAppIdentifier_container___block_invoke_5;
  v15[3] = &unk_1E6DD08C0;
  v15[4] = v4;
  [(_CFXPreferences *)v7 withSourceForIdentifier:v8 user:@"kCFPreferencesCurrentUser" byHost:1 container:v9 cloud:0 perform:v15];
  v10 = a1[4];
  v11 = *(*(a1[5] + 8) + 24);
  v12 = *(*(a1[6] + 8) + 24);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65___CFXPreferences_addSuitePreferences_toAppIdentifier_container___block_invoke_6;
  v14[3] = &unk_1E6DD08C0;
  v14[4] = v4;
  [(_CFXPreferences *)v10 withSourceForIdentifier:v11 user:@"kCFPreferencesCurrentUser" byHost:0 container:v12 cloud:0 perform:v14];
  [(CFPrefsSearchListSource *)v4 freeze];
  [(_CFXPreferences *)a1[4] replaceSearchList:a2 withSearchList:v4];

  v13 = *MEMORY[0x1E69E9840];
}

void __65___CFXPreferences_addSuitePreferences_toAppIdentifier_container___block_invoke_7(uint64_t *a1, void *a2)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v4 = [a2 copy];
  v5 = a1[4];
  v6 = *(*(a1[5] + 8) + 24);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65___CFXPreferences_addSuitePreferences_toAppIdentifier_container___block_invoke_8;
  v16[3] = &unk_1E6DD0898;
  v16[4] = v4;
  [(_CFXPreferences *)v5 withManagedSourceForIdentifier:v6 user:@"kCFPreferencesAnyUser" perform:v16];
  v7 = a1[4];
  v8 = *(*(a1[5] + 8) + 24);
  v9 = *(*(a1[6] + 8) + 24);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65___CFXPreferences_addSuitePreferences_toAppIdentifier_container___block_invoke_9;
  v15[3] = &unk_1E6DD08C0;
  v15[4] = v4;
  [(_CFXPreferences *)v7 withSourceForIdentifier:v8 user:@"kCFPreferencesAnyUser" byHost:1 container:v9 cloud:0 perform:v15];
  v10 = a1[4];
  v11 = *(*(a1[5] + 8) + 24);
  v12 = *(*(a1[6] + 8) + 24);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65___CFXPreferences_addSuitePreferences_toAppIdentifier_container___block_invoke_10;
  v14[3] = &unk_1E6DD08C0;
  v14[4] = v4;
  [(_CFXPreferences *)v10 withSourceForIdentifier:v11 user:@"kCFPreferencesAnyUser" byHost:0 container:v12 cloud:0 perform:v14];
  [(CFPrefsSearchListSource *)v4 freeze];
  [(_CFXPreferences *)a1[4] replaceSearchList:a2 withSearchList:v4];

  v13 = *MEMORY[0x1E69E9840];
}

void __89___CFXPreferences_setValuesForKeys_removingValuesForKeys_identifier_user_host_container___block_invoke(uint64_t a1, uint64_t a2)
{
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __89___CFXPreferences_setValuesForKeys_removingValuesForKeys_identifier_user_host_container___block_invoke_2;
  v5[3] = &unk_1E6DD2490;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v3;
  withKeysAndValues(v2, v5);
  v4 = *MEMORY[0x1E69E9840];
}

void __89___CFXPreferences_setValuesForKeys_removingValuesForKeys_identifier_user_host_container___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 40);
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    v11 = Count;
    if (Count >> 60)
    {
      v18 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", Count);
      v19 = [NSException exceptionWithName:@"NSGenericException" reason:v18 userInfo:0];
      CFRelease(v18);
      objc_exception_throw(v19);
    }

    if (Count <= 1)
    {
      Count = 1;
    }

    v12 = MEMORY[0x1EEE9AC00](Count, v10);
    v14 = (v21 - v13);
    v22[0] = 0;
    if (v11 >= 0x101)
    {
      v15 = _CFCreateArrayStorage(v12, 0, v22);
      v14 = v15;
    }

    else
    {
      v15 = 0;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    v23.location = 0;
    v23.length = v11;
    CFArrayGetValues(*(a1 + 40), v23, v14);
  }

  else
  {
    MEMORY[0x1EEE9AC00](0, a2);
    v14 = &v20;
    v15 = 0;
    v11 = 0;
    v22[0] = 0;
  }

LABEL_11:
  [(CFPrefsSource *)*(a1 + 32) setValues:a3 forKeys:a2 count:a4 copyValues:1 removeValuesForKeys:v14 count:v11 from:0];
  v16 = *(a1 + 32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __89___CFXPreferences_setValuesForKeys_removingValuesForKeys_identifier_user_host_container___block_invoke_3;
  v21[3] = &unk_1E6DD2468;
  v21[4] = v16;
  v21[5] = a3;
  v21[6] = a2;
  v21[7] = a4;
  v21[8] = v14;
  v21[9] = v11;
  [v16 transitionIntoDirectModeIfNeededWithRetryBlock:v21];
  free(v15);
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __76___CFXPreferences_setValue_forKey_appIdentifier_container_configurationURL___block_invoke(uint64_t a1, os_unfair_lock_s *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  [(CFPrefsSource *)a2 setValue:*(a1 + 40) forKey:0 from:?];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76___CFXPreferences_setValue_forKey_appIdentifier_container_configurationURL___block_invoke_2;
  v6[3] = &unk_1E6DD2250;
  v6[4] = a2;
  v7 = *(a1 + 32);
  result = [(os_unfair_lock_s *)a2 transitionIntoDirectModeIfNeededWithRetryBlock:v6];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __68___CFXPreferences_copyValuesForKeys_identifier_user_host_container___block_invoke(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 13);
  v4 = *(a1 + 40);
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        v9 = [(os_unfair_lock_s *)a2 alreadylocked_copyValueForKey:ValueAtIndex];
        if (v9)
        {
          v10 = v9;
          CFDictionarySetValue(*(*(*(a1 + 32) + 8) + 24), ValueAtIndex, v9);
          CFRelease(v10);
        }
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = [(os_unfair_lock_s *)a2 alreadylocked_copyDictionary];
  }

  os_unfair_lock_unlock(a2 + 13);
}

void __74___CFXPreferences_copyManagedValuesForKeys_identifier_useSystemContainer___block_invoke(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 13);
  v4 = *(a1 + 40);
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        v9 = [CFPrefsSearchListSource alreadylocked_copyManagedValueForKey:];
        if (v9)
        {
          v10 = v9;
          CFDictionarySetValue(*(*(*(a1 + 32) + 8) + 24), ValueAtIndex, v9);
          CFRelease(v10);
        }
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = [(CFPrefsSearchListSource *)a2 alreadylocked_copyManagedDictionary];
  }

  os_unfair_lock_unlock(a2 + 13);
}

uint64_t __66___CFXPreferences_setValue_forKey_identifier_user_host_container___block_invoke(uint64_t a1, os_unfair_lock_s *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  [(CFPrefsSource *)a2 setValue:*(a1 + 40) forKey:0 from:?];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66___CFXPreferences_setValue_forKey_identifier_user_host_container___block_invoke_2;
  v6[3] = &unk_1E6DD2250;
  v6[4] = a2;
  v7 = *(a1 + 32);
  result = [(os_unfair_lock_s *)a2 transitionIntoDirectModeIfNeededWithRetryBlock:v6];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __66___CFXPreferences_copyValueForKey_identifier_user_host_container___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 copyValueForKey:*(a1 + 40)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __76___CFXPreferences_copyAppValueForKey_identifier_container_configurationURL___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 copyValueForKey:*(a1 + 40)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __85___CFXPreferences_replaceValuesInSourceForIdentifier_user_host_container_withValues___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = CFEqual(*(a1 + 56), @"kCFPreferencesCurrentHost");
  v12 = *(a1 + 64);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85___CFXPreferences_replaceValuesInSourceForIdentifier_user_host_container_withValues___block_invoke_2;
  v14[3] = &__block_descriptor_56_e23_v16__0__CFPrefsSource_8l;
  v14[4] = a3;
  v14[5] = a2;
  v14[6] = a4;
  [(_CFXPreferences *)v8 with23930198HackSourceForIdentifier:v9 user:v10 byHost:v11 != 0 container:v12 cloud:0 perform:v14];
  v13 = *MEMORY[0x1E69E9840];
}

os_unfair_lock_s *__57___CFXPreferences_copyDictionaryForSourceWithIdentifier___block_invoke(uint64_t a1, os_unfair_lock_s *a2)
{
  result = [(CFPrefsSource *)a2 copyDictionary];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

os_unfair_lock_s *__59___CFXPreferences_copyDictionaryForVolatileSourceWithName___block_invoke(uint64_t a1, os_unfair_lock_s *a2)
{
  result = [(CFPrefsSource *)a2 copyDictionary];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

os_unfair_lock_s *__59___CFXPreferences_copyDictionaryForVolatileSourceWithName___block_invoke_2(uint64_t a1, CFDictionaryRef theDict)
{
  result = CFDictionaryGetValue(theDict, *(a1 + 40));
  if (result)
  {
    result = [(CFPrefsSource *)result copyDictionary];
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

os_unfair_lock_s *__54___CFXPreferences_copyDictionaryForApp_withContainer___block_invoke(uint64_t a1, os_unfair_lock_s *a2)
{
  result = [(CFPrefsSource *)a2 copyDictionary];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __38___CFXPreferences_volatileSourceNames__block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  v13[1] = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(theDict);
  if (Count >= 1)
  {
    v6 = Count;
    if (Count >> 60)
    {
      v11 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", Count);
      v12 = [NSException exceptionWithName:@"NSGenericException" reason:v11 userInfo:0];
      CFRelease(v11);
      objc_exception_throw(v12);
    }

    MEMORY[0x1EEE9AC00](Count, v5);
    v8 = (v13 - v7);
    v13[0] = 0;
    if (v6 >= 0x101)
    {
      v8 = _CFCreateArrayStorage(v6, 0, v13);
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    CFDictionaryGetKeysAndValues(theDict, v8, 0);
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreate(&__kCFAllocatorSystemDefault, v8, v6, &kCFTypeArrayCallBacks);
    free(v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __41___CFXPreferences_registerDefaultValues___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[7] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41___CFXPreferences_registerDefaultValues___block_invoke_2;
  v6[3] = &__block_descriptor_56_e23_v16__0__CFPrefsSource_8l;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4;
  [(_CFXPreferences *)v4 withNamedVolatileSourceForIdentifier:v6 perform:?];
  v5 = *MEMORY[0x1E69E9840];
}

void __54___CFXPreferences_ingestVolatileStateFromPreferences___block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  [_CFXPreferences withNamedVolatileSources:?];
  v1 = *MEMORY[0x1E69E9840];
}

void __54___CFXPreferences_ingestVolatileStateFromPreferences___block_invoke_2(uint64_t a1, CFDictionaryRef theDict)
{
  v5 = *MEMORY[0x1E69E9840];
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 3221225472;
  context[2] = __54___CFXPreferences_ingestVolatileStateFromPreferences___block_invoke_3;
  context[3] = &unk_1E6DD25B8;
  v4 = *(a1 + 32);
  CFDictionaryApplyFunction(theDict, applyBlockApplier, context);
  v2 = *MEMORY[0x1E69E9840];
}

void __54___CFXPreferences_ingestVolatileStateFromPreferences___block_invoke_3(uint64_t a1, const void *a2, void *a3)
{
  v5 = [a3 copyVolatileSourceWithContainingPreferences:*(a1 + 32)];
  if (!v5)
  {
    __54___CFXPreferences_ingestVolatileStateFromPreferences___block_invoke_3_cold_1();
  }

  v6 = v5;
  CFDictionarySetValue(*(a1 + 40), a2, v5);
}

void __36___CFXPreferences_resetPreferences___block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  [_CFXPreferences withNamedVolatileSources:?];
  v1 = *MEMORY[0x1E69E9840];
}

void __36___CFXPreferences_resetPreferences___block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 56);
  v2 = *(a1 + 48);
  [_CFXPreferences withSources:?];
  v1 = *MEMORY[0x1E69E9840];
}

void __36___CFXPreferences_resetPreferences___block_invoke_3(uint64_t a1, __CFDictionary *a2)
{
  v13[5] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&stru_1ED40BDE4);
  if (*(a1 + 64) == 1)
  {
    [(_CFXPreferences *)*(a1 + 32) destroyConnections];
  }

  os_unfair_lock_unlock(&stru_1ED40BDE4);
  v4 = *(a1 + 48);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"NSRegistrationDomain");
    v6 = CFDictionaryGetValue(*(a1 + 48), @"NSArgumentDomain");
    if (Value)
    {
      v7 = Value;
    }

    if (v6)
    {
      v8 = v6;
    }

    CFDictionaryRemoveAllValues(*(a1 + 48));
    if (a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    Value = 0;
    if (a2)
    {
LABEL_9:
      CFDictionaryRemoveAllValues(a2);
    }
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    Count = CFDictionaryGetCount(v9);
    if (Count)
    {
      *(*(*(a1 + 40) + 8) + 24) = CFArrayCreateMutable(0, Count, &kCFTypeArrayCallBacks);
      v11 = *(a1 + 56);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __36___CFXPreferences_resetPreferences___block_invoke_4;
      v13[3] = &unk_1E6DD2630;
      v13[4] = *(a1 + 40);
      CFDictionaryApplyFunction(v11, applyBlockApplier, v13);
    }

    CFDictionaryRemoveAllValues(*(a1 + 56));
  }

  if (Value)
  {
    CFDictionarySetValue(*(a1 + 48), @"NSRegistrationDomain", Value);
  }

  if (v6)
  {
    CFDictionarySetValue(*(a1 + 48), @"NSArgumentDomain", v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __39___CFXPreferences_resetUserPreferences__block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  [_CFXPreferences withNamedVolatileSources:?];
  v1 = *MEMORY[0x1E69E9840];
}

void __39___CFXPreferences_resetUserPreferences__block_invoke_2(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  [_CFXPreferences withSources:?];
  v1 = *MEMORY[0x1E69E9840];
}

void __39___CFXPreferences_resetUserPreferences__block_invoke_3(uint64_t a1, const __CFDictionary *a2)
{
  v26[5] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&stru_1ED40BDE4);
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (v5)
  {
    xpc_release(v5);
    v4 = *(a1 + 32);
  }

  *(v4 + 40) = 0;
  os_unfair_lock_unlock(&stru_1ED40BDE4);
  Count = CFDictionaryGetCount(a2);
  v7 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  v8 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  if (!v7 || (v9 = v8) == 0)
  {
    __39___CFXPreferences_resetUserPreferences__block_invoke_3_cold_2();
  }

  CFDictionaryGetKeysAndValues(a2, v7, v8);
  if (Count >= 1)
  {
    v10 = Count & 0x7FFFFFFF;
    v11 = v9;
    v12 = v7;
    do
    {
      if ([*v11 servedByUserSessionDaemon])
      {
        CFDictionaryRemoveValue(a2, *v12);
      }

      ++v12;
      ++v11;
      --v10;
    }

    while (v10);
  }

  free(v7);
  free(v9);
  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = CFDictionaryGetCount(v13);
    v15 = malloc_type_malloc(8 * v14, 0x6004044C4A2DFuLL);
    v16 = malloc_type_malloc(8 * v14, 0x80040B8603338uLL);
    if (!v15 || (v17 = v16) == 0)
    {
      __39___CFXPreferences_resetUserPreferences__block_invoke_3_cold_1();
    }

    CFDictionaryGetKeysAndValues(*(a1 + 48), v15, v16);
    if (v14 >= 1)
    {
      v18 = v14 & 0x7FFFFFFF;
      v19 = v17;
      v20 = v15;
      do
      {
        v21 = *v20;
        if ([*v19 servedByUserSessionDaemon] && !CFEqual(v21, @"NSRegistrationDomain") && !CFEqual(v21, @"NSArgumentDomain"))
        {
          CFDictionaryRemoveValue(*(a1 + 48), *v20);
        }

        ++v20;
        ++v19;
        --v18;
      }

      while (v18);
    }

    free(v15);
    free(v17);
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    v23 = CFDictionaryGetCount(v22);
    if (v23)
    {
      *(*(*(a1 + 40) + 8) + 24) = CFArrayCreateMutable(0, v23, &kCFTypeArrayCallBacks);
      v24 = *(a1 + 56);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __39___CFXPreferences_resetUserPreferences__block_invoke_4;
      v26[3] = &unk_1E6DD2630;
      v26[4] = *(a1 + 40);
      CFDictionaryApplyFunction(v24, applyBlockApplier, v26);
    }

    CFDictionaryRemoveAllValues(*(a1 + 56));
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __37___CFXPreferences_shmemForRole_name___block_invoke(uint64_t a1)
{
  v2 = _CFPrefsClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __37___CFXPreferences_shmemForRole_name___block_invoke_cold_1(a1, v2);
  }
}

void __65___CFXPreferences__setupNewDaemonConnection_invalidationHandler___block_invoke(uint64_t a1, id a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (object_getClass(a2) == MEMORY[0x1E69E9E80])
  {
    remote_connection = xpc_dictionary_get_remote_connection(a2);
    reply = xpc_dictionary_create_reply(a2);
    if (reply)
    {
      v9 = reply;
      xpc_connection_send_message(remote_connection, reply);
      xpc_release(v9);
    }

    else
    {
      v10 = MEMORY[0x1865E4620](a2);
      _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
      v11 = _CFPrefsClientLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v17 = v10;
        _os_log_impl(&dword_1830E6000, v11, OS_LOG_TYPE_INFO, "CFPrefs client received non-reply message: %s", buf, 0xCu);
      }

      _CFSetTSD(0xFu, 0, 0);
      free(v10);
    }

    if (_CFPNLPO_block_invoke_onceToken != -1)
    {
      __65___CFXPreferences__setupNewDaemonConnection_invalidationHandler___block_invoke_cold_1();
    }

    v12 = _CFPNLPO_block_invoke_observationCallBackQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65___CFXPreferences__setupNewDaemonConnection_invalidationHandler___block_invoke_2;
    v14[3] = &unk_1E6DD2748;
    v14[4] = a2;
    objc_copyWeak(&v15, (a1 + 40));
    dispatch_async(v12, v14);
    objc_destroyWeak(&v15);
    goto LABEL_15;
  }

  if (a2 != MEMORY[0x1E69E9E20] || (v4 = *(a1 + 32)) == 0)
  {
LABEL_15:
    v13 = *MEMORY[0x1E69E9840];
    return;
  }

  v5 = *(v4 + 16);
  v6 = *MEMORY[0x1E69E9840];

  v5();
}

dispatch_queue_t __65___CFXPreferences__setupNewDaemonConnection_invalidationHandler___block_invoke_102()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("CFPreferences Remote KVO Callback Queue", v0);
  _CFPNLPO_block_invoke_observationCallBackQueue = result;
  return result;
}

void __65___CFXPreferences__setupNewDaemonConnection_invalidationHandler___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = _CFPrefsClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    int64 = xpc_dictionary_get_int64(*(a1 + 32), "CFPreferencesPID");
    string = xpc_dictionary_get_string(*(a1 + 32), "CFPreferencesDomain");
    v5 = xpc_dictionary_get_string(*(a1 + 32), "CFPreferencesUncanonicalizedPath");
    v6 = xpc_dictionary_get_BOOL(*(a1 + 32), "CFPreferencesIsByHost");
    v7 = xpc_dictionary_get_string(*(a1 + 32), "CFPreferencesCloudConfig");
    v8 = xpc_dictionary_get_string(*(a1 + 32), "CFPreferencesUser");
    v9 = _CFPrefsClientLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219266;
      v21 = int64;
      v22 = 2080;
      v23 = string;
      v24 = 2080;
      v25 = v8;
      v26 = 1024;
      v27 = v6;
      v28 = 2080;
      v29 = v5;
      v30 = 2080;
      v31 = v7;
      _os_log_debug_impl(&dword_1830E6000, v9, OS_LOG_TYPE_DEBUG, "Received remote change notification from process %lld for { domain: %s, user: %s, byHost: %d, path: %s, cloud configuration path: %s }", buf, 0x3Au);
    }
  }

  _CFPrefsArmPendingKVOSlot();
  value = xpc_dictionary_get_value(*(a1 + 32), "CFPreferencesDomain");
  v11 = _CFXPCCreateCFObjectFromXPCObject(value);
  if (v11)
  {
    v12 = v11;
    if (objc_loadWeak((a1 + 40)))
    {
      Weak = objc_loadWeak((a1 + 40));
      [(_CFXPreferences *)Weak updateSearchListsForIdentifier:v12];
    }

    CFRelease(v12);
  }

  v14 = _CFGetTSD(0x10u);
  if (v14)
  {
    v15 = v14;
    _CFSetTSD(0x10u, 0, 0);
    if (v15 != 16)
    {
      Main = CFRunLoopGetMain();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65___CFXPreferences__setupNewDaemonConnection_invalidationHandler___block_invoke_109;
      block[3] = &unk_1E6D81EC0;
      block[4] = v15;
      CFRunLoopPerformBlock(Main, @"kCFRunLoopCommonModes", block);
      v17 = CFRunLoopGetMain();
      CFRunLoopWakeUp(v17);
      CFRelease(v15);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __58___CFXPreferences_appSynchronizeWithIdentifier_container___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 synchronize];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __53___CFXPreferences_removeSuite_fromApp_withContainer___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53___CFXPreferences_removeSuite_fromApp_withContainer___block_invoke_2;
  v9[3] = &unk_1E6DD27C0;
  v9[4] = v2;
  v10 = *(a1 + 48);
  [(_CFXPreferences *)v2 withSuiteSearchListForIdentifier:v3 user:@"kCFPreferencesCurrentUser" locked:1 perform:v9];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53___CFXPreferences_removeSuite_fromApp_withContainer___block_invoke_6;
  v7[3] = &unk_1E6DD27C0;
  v7[4] = v4;
  v8 = *(a1 + 48);
  [(_CFXPreferences *)v4 withSuiteSearchListForIdentifier:v5 user:@"kCFPreferencesAnyUser" locked:1 perform:v7];
  v6 = *MEMORY[0x1E69E9840];
}

void __53___CFXPreferences_removeSuite_fromApp_withContainer___block_invoke_2(uint64_t *a1, void *a2)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v4 = [a2 copy];
  v5 = a1[4];
  v6 = a1[5];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53___CFXPreferences_removeSuite_fromApp_withContainer___block_invoke_3;
  v16[3] = &unk_1E6DD2798;
  v16[4] = v4;
  [(_CFXPreferences *)v5 withManagedSourceForIdentifier:v6 user:@"kCFPreferencesCurrentUser" perform:v16];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53___CFXPreferences_removeSuite_fromApp_withContainer___block_invoke_4;
  v15[3] = &unk_1E6DD08C0;
  v15[4] = v4;
  [(_CFXPreferences *)v7 withSourceForIdentifier:v8 user:@"kCFPreferencesCurrentUser" byHost:1 container:v9 cloud:0 perform:v15];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53___CFXPreferences_removeSuite_fromApp_withContainer___block_invoke_5;
  v14[3] = &unk_1E6DD08C0;
  v14[4] = v4;
  [(_CFXPreferences *)v10 withSourceForIdentifier:v11 user:@"kCFPreferencesCurrentUser" byHost:0 container:v12 cloud:0 perform:v14];
  [(CFPrefsSearchListSource *)v4 freeze];
  [(_CFXPreferences *)a1[4] replaceSearchList:a2 withSearchList:v4];

  v13 = *MEMORY[0x1E69E9840];
}

void __53___CFXPreferences_removeSuite_fromApp_withContainer___block_invoke_6(uint64_t *a1, void *a2)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v4 = [a2 copy];
  v5 = a1[4];
  v6 = a1[5];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53___CFXPreferences_removeSuite_fromApp_withContainer___block_invoke_7;
  v16[3] = &unk_1E6DD2798;
  v16[4] = v4;
  [(_CFXPreferences *)v5 withManagedSourceForIdentifier:v6 user:@"kCFPreferencesAnyUser" perform:v16];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53___CFXPreferences_removeSuite_fromApp_withContainer___block_invoke_8;
  v15[3] = &unk_1E6DD08C0;
  v15[4] = v4;
  [(_CFXPreferences *)v7 withSourceForIdentifier:v8 user:@"kCFPreferencesAnyUser" byHost:1 container:v9 cloud:0 perform:v15];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53___CFXPreferences_removeSuite_fromApp_withContainer___block_invoke_9;
  v14[3] = &unk_1E6DD08C0;
  v14[4] = v4;
  [(_CFXPreferences *)v10 withSourceForIdentifier:v11 user:@"kCFPreferencesAnyUser" byHost:0 container:v12 cloud:0 perform:v14];
  [(CFPrefsSearchListSource *)v4 freeze];
  [(_CFXPreferences *)a1[4] replaceSearchList:a2 withSearchList:v4];

  v13 = *MEMORY[0x1E69E9840];
}

void __65___CFXPreferences_replaceValuesInVolatileSourceNamed_withValues___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[7] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65___CFXPreferences_replaceValuesInVolatileSourceNamed_withValues___block_invoke_2;
  v7[3] = &__block_descriptor_56_e23_v16__0__CFPrefsSource_8l;
  v7[4] = a3;
  v7[5] = a2;
  v7[6] = a4;
  [(_CFXPreferences *)v4 withNamedVolatileSourceForIdentifier:v5 perform:v7];
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __81___CFXPreferences_generateKVONotificationsForIdentifier_withOldValues_newValues___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectAtIndexedSubscript:?];

  return [v3 deferredNotifyCausedByLoadingOfChangesFromDictionary:a2 toDictionary:v4];
}

void __85___CFXPreferences_PlistSourceAdditions__withManagedSourceForIdentifier_user_perform___block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  v12 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 40) = CFDictionaryGetValue(theDict, *(a1 + 48));
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [CFPrefsManagedSource alloc];
    if (v6)
    {
      v7 = *(a1 + 56);
      v8 = *(a1 + 64);
      v9 = *(a1 + 32);
      v11.receiver = v6;
      v11.super_class = CFPrefsManagedSource;
      v6 = objc_msgSendSuper2(&v11, sel_initWithDomain_user_byHost_containerPath_containingPreferences_, v7, v8, 1, 0, v9);
    }

    *(*(*(a1 + 40) + 8) + 40) = v6;
    CFDictionarySetValue(theDict, *(a1 + 48), *(*(*(a1 + 40) + 8) + 40));
  }

  CFRelease(*(a1 + 48));
  v10 = *MEMORY[0x1E69E9840];
}

void __96___CFXPreferences_SourceAdditions__withSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke_216_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = 0;
  _os_log_debug_impl(&dword_1830E6000, log, OS_LOG_TYPE_DEBUG, "CFPreferences: user home directory is unavailable. User domains will be volatile.", v2, 2u);
  v1 = *MEMORY[0x1E69E9840];
}

void __96___CFXPreferences_SourceAdditions__withSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke_216_cold_2(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = "any host";
  if (*(a1 + 81))
  {
    v4 = "current host";
  }

  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v8 = 138544131;
  v9 = v5;
  v10 = 2113;
  v11 = v3;
  v12 = 2082;
  v13 = v4;
  v14 = 2114;
  v15 = v6;
  _os_log_error_impl(&dword_1830E6000, log, OS_LOG_TYPE_ERROR, "Disabling saving preferences for { %{public}@, %{private}@, %{public}s, %{public}@ } because home directory is inaccessible", &v8, 0x2Au);
  v7 = *MEMORY[0x1E69E9840];
}

void __81___CFXPreferences_generateKVONotificationsForIdentifier_withOldValues_newValues___block_invoke(uint64_t a1, os_unfair_lock_s *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a2 + 13);
  OUTLINED_FUNCTION_1_19();
  OUTLINED_FUNCTION_9_1();
  v8 = __81___CFXPreferences_generateKVONotificationsForIdentifier_withOldValues_newValues___block_invoke_2;
  v9 = &unk_1E6DD2810;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = a2;
  v11 = v5;
  [v4 enumerateObjectsUsingBlock:v7];
  os_unfair_lock_unlock(a2 + 13);
  [(_CFXPreferences *)*(a1 + 48) _deliverPendingKVONotifications];
  v6 = *MEMORY[0x1E69E9840];
}

void __37___CFXPreferences_shmemForRole_name___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 136446210;
  v5 = v2;
  _os_log_fault_impl(&dword_1830E6000, a2, OS_LOG_TYPE_FAULT, "Couldn't map preferences shmem named %{public}s", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end