@interface _CFXPreferences
+ (id)copyDefaultPreferences;
- (BOOL)appValueIsForcedForKey:(__CFString *)a3 appIdentifier:;
- (BOOL)currentUserHasInvalidHomeDirectory;
- (CFMutableDictionaryRef)copyDictionaryForApp:(const __CFString *)a3 withContainer:;
- (CFMutableDictionaryRef)copyDictionaryForSourceWithIdentifier:(uint64_t)a1;
- (CFMutableDictionaryRef)copyManagedValuesForKeys:(__CFString *)a3 identifier:(int)a4 useSystemContainer:;
- (CFMutableDictionaryRef)copyValuesForKeys:(__CFString *)a3 identifier:(__CFString *)a4 user:(CFTypeRef)cf1 host:(__CFString *)a6 container:;
- (CFMutableStringRef)copyDescriptionOfSearchLists;
- (_CFXPreferences)init;
- (_xpc_connection_s)_copyDaemonConnectionSettingUpIfNecessaryForRole:(const void *)a3 andUserIdentifier:;
- (os_unfair_lock_s)copyDictionaryForVolatileSourceWithName:(os_unfair_lock_s *)a1;
- (uint64_t)_replaceDirectConnection:(uint64_t)result;
- (uint64_t)alreadylocked_withNamedVolatileSources:(uint64_t)result;
- (uint64_t)alreadylocked_withSearchLists:(uint64_t)result;
- (uint64_t)alreadylocked_withSources:(uint64_t)result;
- (uint64_t)appSynchronizeWithIdentifier:(const __CFString *)a3 container:;
- (uint64_t)copyKeyListForIdentifier:(const __CFString *)a3 user:(CFTypeRef)cf1 host:(__CFString *)a5 container:;
- (uint64_t)euid;
- (uint64_t)fileProtectionClassForIdentifier:(const __CFString *)a3 user:(CFTypeRef)cf1 host:(__CFString *)a5 container:;
- (uint64_t)hasCloudValueForKey:(__CFString *)a3 appIdentifier:(const __CFString *)a4 container:(uint64_t)a5 configurationURL:;
- (uint64_t)hasNonRegisteredValueForKey:(__CFString *)a3 appIdentifier:(const __CFString *)a4 container:(uint64_t)a5 configurationURL:;
- (uint64_t)nonLaunchPersonaUID;
- (uint64_t)preloadAppValuesForIdentifiers:(uint64_t)a3 containers:(uint64_t)a4 configurationURLs:(uint64_t)a5 count:;
- (uint64_t)shmemForRole:(const char *)a3 name:;
- (uint64_t)synchronizeIdentifier:(const __CFString *)a3 user:(CFTypeRef)cf1 host:(__CFString *)a5 container:;
- (uint64_t)volatileSourceNames;
- (void)_deliverPendingKVONotifications;
- (void)_setupNewDaemonConnection:(uint64_t)a3 invalidationHandler:;
- (void)addSuitePreferences:(CFTypeRef)cf1 toAppIdentifier:(uint64_t)a4 container:;
- (void)assertEquivalence:(BOOL)a3 ofIdentifiers:(__CFArray *)a4 containers:(__CFArray *)a5 cloudConfigurationURLs:(__CFArray *)a6;
- (void)assertEquivalence:(BOOL)a3 ofIdentifiers:(__CFArray *)a4 users:(__CFArray *)a5 hosts:(__CFArray *)a6 containers:(__CFArray *)a7 managedFlags:(__CFArray *)a8 cloudFlags:(__CFArray *)a9;
- (void)copyAppValueForKey:(__CFString *)a3 identifier:(__CFString *)a4 container:(__CFString *)a5 configurationURL:(__CFURL *)a6;
- (void)copyValueForKey:(__CFString *)a3 identifier:(__CFString *)a4 user:(__CFString *)a5 host:(__CFString *)a6 container:(__CFString *)a7;
- (void)currentUserHasInvalidHomeDirectory;
- (void)dealloc;
- (void)destroyConnections;
- (void)flushCachesForAppIdentifier:(const void *)a3 user:;
- (void)flushManagedSources;
- (void)fullCloudSynchronizeForAppIdentifier:(uint64_t)a1 container:configurationURL:completionHandler:;
- (void)generateKVONotificationsForIdentifier:(__CFString *)a3 withOldValues:(id)a4 newValues:(id)a5;
- (void)ingestVolatileStateFromPreferences:(uint64_t)a1;
- (void)registerDefaultValues:(__CFDictionary *)a3;
- (void)registerUserDefaultsInstance:(id)a3 configurationURL:(__CFURL *)a4;
- (void)removeSuite:(uint64_t)a3 fromApp:(uint64_t)a4 withContainer:;
- (void)removeVolatileSourceForName:(os_unfair_lock_s *)a1;
- (void)replaceSearchList:(uint64_t)a3 withSearchList:;
- (void)replaceValuesInSourceForIdentifier:(uint64_t)a1 user:host:container:withValues:;
- (void)replaceValuesInVolatileSourceNamed:(uint64_t)a1 withValues:;
- (void)resetPreferences:(BOOL)a3;
- (void)resetUserPreferences;
- (void)setAccessRestricted:(CFTypeRef)cf1 forAppIdentifier:;
- (void)setBackupDisabled:(__CFString *)cf1 identifier:(const __CFString *)a4 user:(const void *)a5 host:(__CFString *)a6 container:;
- (void)setCloudSyncEnabled:(uint64_t)a3 forKey:(__CFString *)theString appIdentifier:(CFStringRef)a5 container:;
- (void)setDaemonCacheEnabled:(BOOL)a3 identifier:(__CFString *)a4 user:(__CFString *)a5 host:(__CFString *)a6 container:(__CFString *)a7;
- (void)setFileProtectionClass:(__CFString *)cf1 identifier:(const __CFString *)a4 user:(const void *)a5 host:(__CFString *)a6 container:;
- (void)setValue:(uint64_t)a1 forKey:identifier:user:host:container:;
- (void)setValue:(void *)a3 forKey:(__CFString *)a4 appIdentifier:(__CFString *)a5 container:(__CFString *)a6 configurationURL:(__CFURL *)a7;
- (void)setValuesForKeys:(uint64_t)a1 removingValuesForKeys:identifier:user:host:container:;
- (void)simulateTimerSynchronizeForTestingForUser:(__CFString *)a3;
- (void)synchronizeEverything;
- (void)unregisterUserDefaultsInstance:(id)a3;
- (void)updateSearchListsForIdentifier:(uint64_t)a1;
- (void)with23930198HackSourceForIdentifier:(__CFString *)cf2 user:(int)a4 byHost:(__CFString *)a5 container:(int)a6 cloud:(uint64_t)a7 perform:;
- (void)withConnectionForRole:(const void *)a3 andUserIdentifier:(uint64_t)a4 performBlock:;
- (void)withManagedSourceForIdentifier:(uint64_t)a3 user:(uint64_t)a4 perform:;
- (void)withNamedVolatileSourceForIdentifier:(uint64_t)a3 perform:;
- (void)withNamedVolatileSources:(os_unfair_lock_s *)a1;
- (void)withSearchListForIdentifier:(CFStringRef)a3 container:(uint64_t)a4 cloudConfigurationURL:(uint64_t)a5 perform:;
- (void)withSearchLists:(uint64_t)a1;
- (void)withSourceForIdentifier:(const __CFString *)cf2 user:(int)a4 byHost:(__CFString *)a5 container:(int)a6 cloud:(uint64_t)a7 perform:;
- (void)withSources:(os_unfair_lock_s *)a1;
- (void)withSuiteSearchListForIdentifier:(const __CFString *)cf1 user:(int)a4 locked:(uint64_t)a5 perform:;
@end

@implementation _CFXPreferences

- (void)_deliverPendingKVONotifications
{
  if (a1)
  {
    os_unfair_lock_assert_not_owner(a1 + 18);
    os_unfair_lock_assert_not_owner(a1 + 19);
    os_unfair_lock_assert_not_owner(a1 + 20);
    v2 = _CFGetTSD(0x10u);
    if (v2)
    {
      v3 = v2;
      _CFSetTSD(0x10u, 0, 0);
      if (v3 != 16)
      {
        _CFPrefsDeliverPendingKVONotificationsGuts(v3);

        CFRelease(v3);
      }
    }
  }
}

- (uint64_t)euid
{
  if (result)
  {
    return *(result + 60);
  }

  return result;
}

- (BOOL)currentUserHasInvalidHomeDirectory
{
  if (result)
  {
    v1 = result;
    v2 = (result + 68);
    if (atomic_load((result + 68)))
    {
LABEL_15:
      v8 = atomic_load(v2);
      return v8 == 2;
    }

    v4 = _CFUnsandboxedHomeDirectoryForCurrentUser();
    v5 = v4;
    if (v4)
    {
      if (*v4 && strncmp(v4, "/var/empty", 0xAuLL))
      {
        atomic_store(1u, (v1 + 68));
LABEL_14:
        free(v5);
        goto LABEL_15;
      }

      atomic_store(2u, (v1 + 68));
      if (*v5)
      {
        v6 = "starts with /var/empty";
      }

      else
      {
        v6 = "is empty";
      }
    }

    else
    {
      atomic_store(2u, (v1 + 68));
      v6 = "is null";
    }

    _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
    v7 = _CFPrefsClientLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_CFXPreferences *)v6 currentUserHasInvalidHomeDirectory];
    }

    _CFSetTSD(0xFu, 0, 0);
    goto LABEL_14;
  }

  return result;
}

- (_CFXPreferences)init
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _CFXPreferences;
  v2 = [(_CFXPreferences *)&v12 init];
  if (v2)
  {
    v2->_sources = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v2->_sourcesLock._os_unfair_lock_opaque = 0;
    v2->_namedVolatileSources = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v2->_namedVolatileSourcesLock._os_unfair_lock_opaque = 0;
    v2->_searchLists = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v2->_searchListsLock._os_unfair_lock_opaque = 0;
    v2->_launchdUID = -1;
    v2->_euid = _CFGetEUID();
    v3 = xpc_copy_entitlement_for_self();
    v4 = v3;
    if (v3 && object_getClass(v3) == MEMORY[0x1E69E9E50] && (count = xpc_array_get_count(v4)) != 0)
    {
      v8 = count;
      v9 = 0;
      v2->_groupContainersForCurrentUser = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
      do
      {
        string = xpc_array_get_string(v4, v9);
        v11 = CFStringCreateWithCString(0, string, 0x8000100u);
        CFSetAddValue(v2->_groupContainersForCurrentUser, v11);
        CFRelease(v11);
        ++v9;
      }

      while (v8 != v9);
    }

    else
    {
      v2->_groupContainersForCurrentUser = 0;
    }

    if (v4)
    {
      xpc_release(v4);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)synchronizeEverything
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = 0;
    v4 = &v3;
    v5 = 0x2020000000;
    v6 = 0;
    [_CFXPreferences withSources:a1];
    v1 = v4[3];
    if (v1)
    {
      CFDictionaryApplyFunction(v1, synchronizeApplier, 0);
      CFRelease(v4[3]);
    }

    _Block_object_dispose(&v3, 8);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)currentUserHasInvalidHomeDirectory
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136446210;
  v4 = a1;
  _os_log_error_impl(&dword_1830E6000, a2, OS_LOG_TYPE_ERROR, "All kCFPreferencesCurrentUser domains in this process will be volatile, because homeDirPath %{public}s", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)destroyConnections
{
  if (a1)
  {
    os_unfair_lock_lock(&unk_1ED40BDE8);
    v2 = a1[4];
    if (v2)
    {
      xpc_release(v2);
    }

    a1[4] = 0;
    v3 = a1[5];
    if (v3)
    {
      xpc_release(v3);
    }

    a1[5] = 0;
    qword_1ED40BDF0 = 0;
    qword_1ED40BDF8 = 0;
    v4 = a1[6];
    if (v4)
    {
      xpc_release(v4);
    }

    a1[6] = 0;

    os_unfair_lock_unlock(&unk_1ED40BDE8);
  }
}

- (void)withSourceForIdentifier:(const __CFString *)cf2 user:(int)a4 byHost:(__CFString *)a5 container:(int)a6 cloud:(uint64_t)a7 perform:
{
  v49 = *MEMORY[0x1E69E9840];
  v48 = a4;
  if (a1)
  {
    if (a4 && !CFEqual(@"kCFPreferencesAnyUser", cf2))
    {
      v48 = 0;
    }

    v46 = 0;
    v47 = 0;
    v45 = 0;
    v44 = 0;
    _CFPrefsExtractQuadrupleFromPathIfPossible(a2, &v47, &v46, &v45, &v48, &v44 + 1, &v44);
    v12 = v47;
    if (v47)
    {
      a2 = v47;
      if (a6)
      {
        [_CFXPreferences withSourceForIdentifier:user:byHost:container:cloud:perform:];
      }
    }

    v14 = v45;
    v13 = v46;
    if (v46)
    {
      v15 = v46;
    }

    else
    {
      v15 = cf2;
    }

    if (v45)
    {
      a5 = v45;
    }

    v16 = _CFPrefsCopyUserForContainer(v15, a5);
    Copy = @"kCFPreferencesAnyUser";
    if (CFEqual(@"kCFPreferencesAnyUser", v16))
    {
      v18 = v48;
      if (!v48)
      {
        v18 = 1;
      }

      v48 = v18;
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v38 = __96___CFXPreferences_SourceAdditions__withSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke;
    v39 = &__block_descriptor_64_e5_v8__0l;
    v40 = v14;
    v41 = v12;
    v42 = v13;
    v43 = v16;
    if (HIBYTE(v44) == 1)
    {
      [(_CFXPreferences *)a1 withManagedSourceForIdentifier:a2 user:v16 perform:a7];
      v38(v37);
    }

    else
    {
      CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(a2);
      if (CFEqual(v16, @"kCFPreferencesCurrentUser"))
      {
        Copy = @"kCFPreferencesCurrentUser";
      }

      else if (!CFEqual(v16, @"kCFPreferencesAnyUser"))
      {
        v20 = CFCopyUserName();
        v21 = CFEqual(v16, v20) == 0;
        CFRelease(v20);
        v22 = !v21;
        if (!@"kCFPreferencesCurrentUser")
        {
          v22 = 0;
        }

        Copy = @"kCFPreferencesCurrentUser";
        if (!v22)
        {
          Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, v16);
        }
      }

      if (withSourceForIdentifier_user_byHost_container_cloud_perform__registerOnce != -1)
      {
        [_CFXPreferences withSourceForIdentifier:user:byHost:container:cloud:perform:];
      }

      v23 = v48;
      CacheKeyForQuintuplet = _CFPrefsCreateCacheKeyForQuintuplet(CacheStringForBundleID, Copy, v48, a5, a6);
      v31 = 0;
      v32 = &v31;
      v33 = 0x3052000000;
      v34 = __Block_byref_object_copy__0;
      v35 = __Block_byref_object_dispose__0;
      v36 = 0;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __96___CFXPreferences_SourceAdditions__withSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke_216;
      v28[3] = &unk_1E6DCF088;
      v28[6] = CacheKeyForQuintuplet;
      v28[7] = Copy;
      v29 = a6;
      v30 = v23;
      v28[8] = CacheStringForBundleID;
      v28[9] = a5;
      v28[4] = a1;
      v28[5] = &v31;
      os_unfair_lock_lock((a1 + 72));
      __96___CFXPreferences_SourceAdditions__withSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke_216(v28, *(a1 + 8));
      os_unfair_lock_unlock((a1 + 72));
      if (CacheKeyForQuintuplet)
      {
        CFRelease(CacheKeyForQuintuplet);
      }

      CFRelease(Copy);
      v38(v37);
      v25 = _CFPrefsArmPendingKVOSlot();
      (*(a7 + 16))(a7, v32[5]);

      if (v25)
      {
        [(_CFXPreferences *)a1 _deliverPendingKVONotifications];
      }

      _Block_object_dispose(&v31, 8);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)withNamedVolatileSourceForIdentifier:(uint64_t)a3 perform:
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3052000000;
    v12 = __Block_byref_object_copy__0;
    v13 = __Block_byref_object_dispose__0;
    v14 = 0;
    CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(a2);
    Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, CacheStringForBundleID);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81___CFXPreferences_SourceAdditions__withNamedVolatileSourceForIdentifier_perform___block_invoke;
    v8[3] = &unk_1E6DCF0B0;
    v8[4] = a1;
    v8[5] = &v9;
    v8[6] = Copy;
    v8[7] = CacheStringForBundleID;
    os_unfair_lock_lock((a1 + 80));
    __81___CFXPreferences_SourceAdditions__withNamedVolatileSourceForIdentifier_perform___block_invoke(v8, *(a1 + 16));
    os_unfair_lock_unlock((a1 + 80));
    LODWORD(CacheStringForBundleID) = _CFPrefsArmPendingKVOSlot();
    (*(a3 + 16))(a3, v10[5]);

    if (CacheStringForBundleID)
    {
      [(_CFXPreferences *)a1 _deliverPendingKVONotifications];
    }

    _Block_object_dispose(&v9, 8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)assertEquivalence:(BOOL)a3 ofIdentifiers:(__CFArray *)a4 users:(__CFArray *)a5 hosts:(__CFArray *)a6 containers:(__CFArray *)a7 managedFlags:(__CFArray *)a8 cloudFlags:(__CFArray *)a9
{
  v41 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3052000000;
  v38 = __Block_byref_object_copy__0;
  v39 = __Block_byref_object_dispose__0;
  v40 = 0;
  Count = CFArrayGetCount(a4);
  if (Count != CFArrayGetCount(a7) || (v11 = CFArrayGetCount(a4), v11 != CFArrayGetCount(a5)) || (v12 = CFArrayGetCount(a4), v12 != CFArrayGetCount(a6)) || (v13 = CFArrayGetCount(a4), v13 != CFArrayGetCount(a7)) || (v14 = CFArrayGetCount(a4), v14 != CFArrayGetCount(a8)) || (v15 = CFArrayGetCount(a4), v15 != CFArrayGetCount(a9)))
  {
    __assert_rtn("[_CFXPreferences(SourceAdditions) assertEquivalence:ofIdentifiers:users:hosts:containers:managedFlags:cloudFlags:]", "CFPrefsSource.m", 1303, "CFArrayGetCount(identifiers) == CFArrayGetCount(containers) && CFArrayGetCount(identifiers) == CFArrayGetCount(users) && CFArrayGetCount(identifiers) == CFArrayGetCount(hosts) && CFArrayGetCount(identifiers) == CFArrayGetCount(containers) && CFArrayGetCount(identifiers) == CFArrayGetCount(managedFlags) && CFArrayGetCount(identifiers) == CFArrayGetCount(isCloudFlags)");
  }

  for (i = 0; i < CFArrayGetCount(a4); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a7, i);
    v18 = CFArrayGetValueAtIndex(a6, i);
    v19 = CFArrayGetValueAtIndex(a9, i);
    v20 = CFArrayGetValueAtIndex(a8, i);
    v21 = CFArrayGetValueAtIndex(a4, i);
    v22 = CFArrayGetValueAtIndex(a5, i);
    if (v20 == &__kCFBooleanTrue && v19 == &__kCFBooleanTrue)
    {
      __assert_rtn("[_CFXPreferences(SourceAdditions) assertEquivalence:ofIdentifiers:users:hosts:containers:managedFlags:cloudFlags:]", "CFPrefsSource.m", 1311, "!(managed && cloud)");
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __115___CFXPreferences_SourceAdditions__assertEquivalence_ofIdentifiers_users_hosts_containers_managedFlags_cloudFlags___block_invoke;
    v33[3] = &unk_1E6DCF0D8;
    v33[4] = &v35;
    v34 = a3;
    if (v20 == &__kCFBooleanTrue)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __115___CFXPreferences_SourceAdditions__assertEquivalence_ofIdentifiers_users_hosts_containers_managedFlags_cloudFlags___block_invoke_2;
      v32[3] = &unk_1E6DCF100;
      v32[4] = v33;
      [(_CFXPreferences *)self withManagedSourceForIdentifier:v21 user:v22 perform:v32];
    }

    else
    {
      if (ValueAtIndex == &__kCFNull)
      {
        v23 = 0;
      }

      else
      {
        v23 = ValueAtIndex;
      }

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __115___CFXPreferences_SourceAdditions__assertEquivalence_ofIdentifiers_users_hosts_containers_managedFlags_cloudFlags___block_invoke_3;
      v31[3] = &unk_1E6DCF128;
      v31[4] = v33;
      [(_CFXPreferences *)self withSourceForIdentifier:v21 user:v22 byHost:v18 == @"kCFPreferencesCurrentHost" container:v23 cloud:v19 == &__kCFBooleanTrue perform:v31];
    }
  }

  _Block_object_dispose(&v35, 8);
  v24 = *MEMORY[0x1E69E9840];
}

- (void)withSuiteSearchListForIdentifier:(const __CFString *)cf1 user:(int)a4 locked:(uint64_t)a5 perform:
{
  v28[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v28[3] = a2;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3052000000;
    v25 = __Block_byref_object_copy__2;
    v26 = __Block_byref_object_dispose__2;
    v27 = 0;
    if (CFEqual(cf1, @"kCFPreferencesCurrentUser"))
    {
      Copy = @"kCFPreferencesCurrentUser";
    }

    else
    {
      Copy = @"kCFPreferencesAnyUser";
      if (!CFEqual(cf1, @"kCFPreferencesAnyUser"))
      {
        v11 = CFCopyUserName();
        v12 = CFEqual(cf1, v11);
        CFRelease(v11);
        if (!@"kCFPreferencesCurrentUser" || (Copy = @"kCFPreferencesCurrentUser", !v12))
        {
          Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, cf1);
        }
      }
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v15 = __93___CFXPreferences_SearchListAdditions__withSuiteSearchListForIdentifier_user_locked_perform___block_invoke;
    v16 = &unk_1E6DD0B88;
    v20 = a2;
    v21 = Copy;
    v18 = v28;
    v19 = &v22;
    v17 = a1;
    if (a4)
    {
      __93___CFXPreferences_SearchListAdditions__withSuiteSearchListForIdentifier_user_locked_perform___block_invoke(v14, *(a1 + 24));
    }

    else
    {
      os_unfair_lock_lock((a1 + 76));
      v15(v14, *(a1 + 24));
      os_unfair_lock_unlock((a1 + 76));
    }

    (*(a5 + 16))(a5, v23[5]);

    CFRelease(Copy);
    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(v28, 8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)with23930198HackSourceForIdentifier:(__CFString *)cf2 user:(int)a4 byHost:(__CFString *)a5 container:(int)a6 cloud:(uint64_t)a7 perform:
{
  v20[6] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_23:
    v18 = *MEMORY[0x1E69E9840];
    return;
  }

  if ((a6 & 1) != 0 || !eduModeEnabled())
  {
    goto LABEL_18;
  }

  if (appIsInternal_onceToken != -1)
  {
    [_CFXPreferences with23930198HackSourceForIdentifier:user:byHost:container:cloud:perform:];
  }

  if (appIsInternal_isInternal != 1 || _CFGetTSD(0xFu) == &__kCFBooleanTrue)
  {
    goto LABEL_18;
  }

  if (CFEqual(cf2, @"kCFPreferencesCurrentUser"))
  {
    Copy = @"kCFPreferencesCurrentUser";
  }

  else
  {
    Copy = @"kCFPreferencesAnyUser";
    if (!CFEqual(cf2, @"kCFPreferencesAnyUser"))
    {
      v15 = CFCopyUserName();
      v19 = CFEqual(cf2, v15);
      CFRelease(v15);
      if (@"kCFPreferencesCurrentUser" && v19)
      {
        CFRelease(@"kCFPreferencesCurrentUser");
LABEL_21:
        _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
        v17 = _CFPrefsArmPendingKVOSlot();
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __112___CFXPreferences_SearchListAdditions__with23930198HackSourceForIdentifier_user_byHost_container_cloud_perform___block_invoke;
        v20[3] = &unk_1E6DD0AE8;
        v20[4] = a1;
        v20[5] = a7;
        normalizeQuintuplet(a2, cf2, a4, a5, 0, v20);
        _CFSetTSD(0xFu, 0, 0);
        if (v17)
        {
          [(_CFXPreferences *)a1 _deliverPendingKVONotifications];
        }

        goto LABEL_23;
      }

      Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, cf2);
    }
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  if (Copy == @"kCFPreferencesCurrentUser")
  {
    goto LABEL_21;
  }

LABEL_18:
  v16 = *MEMORY[0x1E69E9840];

  [(_CFXPreferences *)a1 withSourceForIdentifier:a2 user:cf2 byHost:a4 container:a5 cloud:a6 perform:a7];
}

- (void)updateSearchListsForIdentifier:(uint64_t)a1
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71___CFXPreferences_SearchListAdditions__updateSearchListsForIdentifier___block_invoke;
    v6[3] = &unk_1E6DD0960;
    v6[4] = &v7;
    os_unfair_lock_lock((a1 + 76));
    __71___CFXPreferences_SearchListAdditions__updateSearchListsForIdentifier___block_invoke(v6, *(a1 + 24));
    os_unfair_lock_unlock((a1 + 76));
    v4 = v8[3];
    if (v4)
    {
      CFDictionaryApplyFunction(v4, notifySearchListOfRemoteChangesCallback, a2);
      CFRelease(v8[3]);
    }

    _Block_object_dispose(&v7, 8);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)assertEquivalence:(BOOL)a3 ofIdentifiers:(__CFArray *)a4 containers:(__CFArray *)a5 cloudConfigurationURLs:(__CFArray *)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  Count = CFArrayGetCount(a4);
  if (Count != CFArrayGetCount(a5) || (v12 = CFArrayGetCount(a4), v12 != CFArrayGetCount(a6)))
  {
    __assert_rtn("[_CFXPreferences(SearchListAdditions) assertEquivalence:ofIdentifiers:containers:cloudConfigurationURLs:]", "CFPrefsSearchListSource.m", 1784, "CFArrayGetCount(identifiers) == CFArrayGetCount(containers) && CFArrayGetCount(identifiers) == CFArrayGetCount(cloudURLs)");
  }

  for (i = 0; i < CFArrayGetCount(a4); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a5, i);
    v15 = CFArrayGetValueAtIndex(a6, i);
    v16 = CFArrayGetValueAtIndex(a4, i);
    if (ValueAtIndex == &__kCFNull)
    {
      v17 = 0;
    }

    else
    {
      v17 = ValueAtIndex;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __106___CFXPreferences_SearchListAdditions__assertEquivalence_ofIdentifiers_containers_cloudConfigurationURLs___block_invoke;
    v20[3] = &unk_1E6DD0B60;
    if (v15 == &__kCFNull)
    {
      v18 = 0;
    }

    else
    {
      v18 = v15;
    }

    v20[4] = &v22;
    v21 = a3;
    [(_CFXPreferences *)self withSearchListForIdentifier:v16 container:v17 cloudConfigurationURL:v18 perform:v20];
  }

  _Block_object_dispose(&v22, 8);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)ingestVolatileStateFromPreferences:(uint64_t)a1
{
  v3[6] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 == a1)
    {
      [_CFXPreferences ingestVolatileStateFromPreferences:];
    }

    [_CFXPreferences ingestVolatileStateFromPreferences:v3];
  }

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)copyDefaultPreferences
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    return 0;
  }

  if (qword_1ED40BE20 != -1)
  {
    +[_CFXPreferences copyDefaultPreferences];
  }

  v3 = qword_1ED40BE18;

  return [v3 copyPrefs];
}

- (void)unregisterUserDefaultsInstance:(id)a3
{
  v8[5] = *MEMORY[0x1E69E9840];
  v5 = [a3 _identifier];
  v6 = [a3 _container];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50___CFXPreferences_unregisterUserDefaultsInstance___block_invoke;
  v8[3] = &unk_1E6DD0910;
  v8[4] = a3;
  [(_CFXPreferences *)self withSearchListForIdentifier:v5 container:v6 cloudConfigurationURL:0 perform:v8];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)registerUserDefaultsInstance:(id)a3 configurationURL:(__CFURL *)a4
{
  v10[5] = *MEMORY[0x1E69E9840];
  v7 = [a3 _identifier];
  v8 = [a3 _container];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65___CFXPreferences_registerUserDefaultsInstance_configurationURL___block_invoke;
  v10[3] = &unk_1E6DD0910;
  v10[4] = a3;
  [(_CFXPreferences *)self withSearchListForIdentifier:v7 container:v8 cloudConfigurationURL:a4 perform:v10];
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)appValueIsForcedForKey:(__CFString *)a3 appIdentifier:
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56___CFXPreferences_appValueIsForcedForKey_appIdentifier___block_invoke;
    v10[3] = &unk_1E6DD22B0;
    v10[4] = &v11;
    v10[5] = a2;
    [(_CFXPreferences *)a1 withManagedSourceForIdentifier:a3 user:@"kCFPreferencesCurrentUser" perform:v10];
    if (*(v12 + 24))
    {
      v6 = 1;
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __56___CFXPreferences_appValueIsForcedForKey_appIdentifier___block_invoke_2;
      v9[3] = &unk_1E6DD22B0;
      v9[4] = &v11;
      v9[5] = a2;
      [(_CFXPreferences *)a1 withManagedSourceForIdentifier:a3 user:@"kCFPreferencesAnyUser" perform:v9];
      v6 = *(v12 + 24) != 0;
    }

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (uint64_t)hasCloudValueForKey:(__CFString *)a3 appIdentifier:(const __CFString *)a4 container:(uint64_t)a5 configurationURL:
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80___CFXPreferences_hasCloudValueForKey_appIdentifier_container_configurationURL___block_invoke;
    v8[3] = &unk_1E6DD22E0;
    v8[4] = &v9;
    v8[5] = a2;
    [(_CFXPreferences *)a1 withSearchListForIdentifier:a3 container:a4 cloudConfigurationURL:a5 perform:v8];
    v5 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (uint64_t)hasNonRegisteredValueForKey:(__CFString *)a3 appIdentifier:(const __CFString *)a4 container:(uint64_t)a5 configurationURL:
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __88___CFXPreferences_hasNonRegisteredValueForKey_appIdentifier_container_configurationURL___block_invoke;
    v8[3] = &unk_1E6DD22E0;
    v8[4] = &v9;
    v8[5] = a2;
    [(_CFXPreferences *)a1 withSearchListForIdentifier:a3 container:a4 cloudConfigurationURL:a5 perform:v8];
    v5 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (uint64_t)copyKeyListForIdentifier:(const __CFString *)a3 user:(CFTypeRef)cf1 host:(__CFString *)a5 container:
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v9 = CFEqual(cf1, @"kCFPreferencesCurrentHost") != 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64___CFXPreferences_copyKeyListForIdentifier_user_host_container___block_invoke;
    v15[3] = &unk_1E6DD2310;
    v15[4] = &v16;
    [(_CFXPreferences *)a1 withSourceForIdentifier:a2 user:a3 byHost:v9 container:a5 cloud:0 perform:v15];
    v10 = v17[3];
    if (v10)
    {
      Count = CFArrayGetCount(v10);
      v12 = v17[3];
      if (!Count)
      {
        CFRelease(v17[3]);
        v12 = 0;
        v17[3] = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (uint64_t)synchronizeIdentifier:(const __CFString *)a3 user:(CFTypeRef)cf1 host:(__CFString *)a5 container:
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    v9 = CFEqual(cf1, @"kCFPreferencesCurrentHost") != 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61___CFXPreferences_synchronizeIdentifier_user_host_container___block_invoke;
    v13[3] = &unk_1E6DD2310;
    v13[4] = &v14;
    [(_CFXPreferences *)a1 withSourceForIdentifier:a2 user:a3 byHost:v9 container:a5 cloud:0 perform:v13];
    v10 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)setDaemonCacheEnabled:(BOOL)a3 identifier:(__CFString *)a4 user:(__CFString *)a5 host:(__CFString *)a6 container:(__CFString *)a7
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = CFEqual(a6, @"kCFPreferencesCurrentHost") != 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72___CFXPreferences_setDaemonCacheEnabled_identifier_user_host_container___block_invoke;
  v14[3] = &__block_descriptor_33_e23_v16__0__CFPrefsSource_8l;
  v15 = a3;
  [(_CFXPreferences *)self withSourceForIdentifier:a4 user:a5 byHost:v12 container:a7 cloud:0 perform:v14];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)setBackupDisabled:(__CFString *)cf1 identifier:(const __CFString *)a4 user:(const void *)a5 host:(__CFString *)a6 container:
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (CFEqual(cf1, @"kCFPreferencesAnyApplication"))
    {
      [_CFXPreferences setBackupDisabled:identifier:user:host:container:];
    }

    v12 = CFEqual(a5, @"kCFPreferencesCurrentHost") != 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68___CFXPreferences_setBackupDisabled_identifier_user_host_container___block_invoke;
    v14[3] = &__block_descriptor_33_e23_v16__0__CFPrefsSource_8l;
    v15 = a2;
    [(_CFXPreferences *)a1 withSourceForIdentifier:a4 user:v12 byHost:a6 container:0 cloud:v14 perform:?];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setFileProtectionClass:(__CFString *)cf1 identifier:(const __CFString *)a4 user:(const void *)a5 host:(__CFString *)a6 container:
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (CFEqual(cf1, @"kCFPreferencesAnyApplication"))
    {
      [_CFXPreferences setFileProtectionClass:identifier:user:host:container:];
    }

    v12 = CFEqual(a5, @"kCFPreferencesCurrentHost") != 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73___CFXPreferences_setFileProtectionClass_identifier_user_host_container___block_invoke;
    v14[3] = &__block_descriptor_36_e23_v16__0__CFPrefsSource_8l;
    v15 = a2;
    [(_CFXPreferences *)a1 withSourceForIdentifier:a4 user:v12 byHost:a6 container:0 cloud:v14 perform:?];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (uint64_t)fileProtectionClassForIdentifier:(const __CFString *)a3 user:(CFTypeRef)cf1 host:(__CFString *)a5 container:
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = -1;
    v9 = CFEqual(cf1, @"kCFPreferencesCurrentHost") != 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72___CFXPreferences_fileProtectionClassForIdentifier_user_host_container___block_invoke;
    v13[3] = &unk_1E6DD2310;
    v13[4] = &v14;
    [(_CFXPreferences *)a1 withSourceForIdentifier:a2 user:a3 byHost:v9 container:a5 cloud:0 perform:v13];
    v10 = *(v15 + 6);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)setAccessRestricted:(CFTypeRef)cf1 forAppIdentifier:
{
  v4[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (CFEqual(cf1, @"kCFPreferencesAnyApplication"))
    {
      [_CFXPreferences setAccessRestricted:forAppIdentifier:];
    }

    [_CFXPreferences setAccessRestricted:v4 forAppIdentifier:?];
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)addSuitePreferences:(CFTypeRef)cf1 toAppIdentifier:(uint64_t)a4 container:
{
  v12[4] = *MEMORY[0x1E69E9840];
  if (a1 && !CFEqual(cf1, a2))
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = a2;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v11[3] = a4;
    v8 = _CFPrefsArmPendingKVOSlot();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65___CFXPreferences_addSuitePreferences_toAppIdentifier_container___block_invoke;
    v10[3] = &unk_1E6DD23F8;
    v10[4] = a1;
    v10[5] = v12;
    v10[6] = v11;
    v10[7] = cf1;
    [(_CFXPreferences *)a1 withSearchLists:v10];
    if (v8)
    {
      [(_CFXPreferences *)a1 _deliverPendingKVONotifications];
    }

    _Block_object_dispose(v11, 8);
    _Block_object_dispose(v12, 8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setValue:(void *)a3 forKey:(__CFString *)a4 appIdentifier:(__CFString *)a5 container:(__CFString *)a6 configurationURL:(__CFURL *)a7
{
  v8[6] = *MEMORY[0x1E69E9840];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76___CFXPreferences_setValue_forKey_appIdentifier_container_configurationURL___block_invoke;
  v8[3] = &__block_descriptor_48_e33_v16__0__CFPrefsSearchListSource_8l;
  v8[4] = a3;
  v8[5] = a4;
  [(_CFXPreferences *)self withSearchListForIdentifier:a5 container:a6 cloudConfigurationURL:a7 perform:v8];
  v7 = *MEMORY[0x1E69E9840];
}

- (CFMutableDictionaryRef)copyValuesForKeys:(__CFString *)a3 identifier:(__CFString *)a4 user:(CFTypeRef)cf1 host:(__CFString *)a6 container:
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v11 = CFEqual(cf1, @"kCFPreferencesCurrentHost");
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68___CFXPreferences_copyValuesForKeys_identifier_user_host_container___block_invoke;
    v15[3] = &unk_1E6DD24F8;
    v15[4] = &v16;
    v15[5] = a2;
    [(_CFXPreferences *)a1 with23930198HackSourceForIdentifier:a3 user:a4 byHost:v11 != 0 container:a6 cloud:0 perform:v15];
    Mutable = v17[3];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    Mutable = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return Mutable;
}

- (CFMutableDictionaryRef)copyManagedValuesForKeys:(__CFString *)a3 identifier:(int)a4 useSystemContainer:
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    if (a4 && (v7 = _CFPreferencesCopyManagedPreferencesContainerURL(), (v8 = v7) != 0))
    {
      v9 = CFURLCopyFileSystemPath(v7, kCFURLPOSIXPathStyle);
      CFRelease(v8);
    }

    else
    {
      v9 = 0;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74___CFXPreferences_copyManagedValuesForKeys_identifier_useSystemContainer___block_invoke;
    v13[3] = &unk_1E6DD22E0;
    v13[4] = &v14;
    v13[5] = a2;
    [(_CFXPreferences *)a1 withSearchListForIdentifier:a3 container:v9 cloudConfigurationURL:0 perform:v13];
    Mutable = v15[3];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    Mutable = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return Mutable;
}

- (void)copyValueForKey:(__CFString *)a3 identifier:(__CFString *)a4 user:(__CFString *)a5 host:(__CFString *)a6 container:(__CFString *)a7
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v12 = CFEqual(a6, @"kCFPreferencesCurrentHost");
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66___CFXPreferences_copyValueForKey_identifier_user_host_container___block_invoke;
  v16[3] = &unk_1E6DD24F8;
  v16[4] = &v17;
  v16[5] = a3;
  [(_CFXPreferences *)self with23930198HackSourceForIdentifier:a4 user:a5 byHost:v12 != 0 container:a7 cloud:0 perform:v16];
  v13 = v18[3];
  _Block_object_dispose(&v17, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)copyAppValueForKey:(__CFString *)a3 identifier:(__CFString *)a4 container:(__CFString *)a5 configurationURL:(__CFURL *)a6
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76___CFXPreferences_copyAppValueForKey_identifier_container_configurationURL___block_invoke;
  v9[3] = &unk_1E6DD22E0;
  v9[4] = &v10;
  v9[5] = a3;
  [(_CFXPreferences *)self withSearchListForIdentifier:a4 container:a5 cloudConfigurationURL:a6 perform:v9];
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CFMutableDictionaryRef)copyDictionaryForSourceWithIdentifier:(uint64_t)a1
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57___CFXPreferences_copyDictionaryForSourceWithIdentifier___block_invoke;
    v7[3] = &unk_1E6DD2310;
    v7[4] = &v8;
    [(_CFXPreferences *)a1 withSourceForIdentifier:a2 user:@"kCFPreferencesCurrentUser" byHost:0 container:0 cloud:0 perform:v7];
    v2 = v9[3];
    if (v2)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v2);
      v4 = v9[3];
      if (v4)
      {
        CFRelease(v4);
      }
    }

    else
    {
      MutableCopy = 0;
    }

    _Block_object_dispose(&v8, 8);
  }

  else
  {
    MutableCopy = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

- (os_unfair_lock_s)copyDictionaryForVolatileSourceWithName:(os_unfair_lock_s *)a1
{
  v2 = a1;
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    if (CFEqual(cf1, @"NSArgumentDomain") || CFEqual(cf1, @"NSRegistrationDomain"))
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __59___CFXPreferences_copyDictionaryForVolatileSourceWithName___block_invoke;
      v9[3] = &unk_1E6DD2310;
      v9[4] = &v10;
      [(_CFXPreferences *)v2 withNamedVolatileSourceForIdentifier:v9 perform:?];
    }

    else
    {
      _CFPrefsGetCacheStringForBundleID(cf1);
      [_CFXPreferences withNamedVolatileSources:v2];
    }

    v4 = v11[3];
    if (v4)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v4);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v2 = MutableCopy;
    v6 = v11[3];
    if (v6)
    {
      CFRelease(v6);
    }

    _Block_object_dispose(&v10, 8);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

- (CFMutableDictionaryRef)copyDictionaryForApp:(const __CFString *)a3 withContainer:
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54___CFXPreferences_copyDictionaryForApp_withContainer___block_invoke;
    v9[3] = &unk_1E6DD2568;
    v9[4] = &v10;
    [(_CFXPreferences *)a1 withSearchListForIdentifier:a2 container:a3 cloudConfigurationURL:0 perform:v9];
    v3 = v11[3];
    if (v3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v5 = MutableCopy;
    v6 = v11[3];
    if (v6)
    {
      CFRelease(v6);
    }

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (uint64_t)volatileSourceNames
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v7 = 0;
    [_CFXPreferences withNamedVolatileSources:a1];
    v1 = v5[3];
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v1 = 0;
  }

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

- (void)registerDefaultValues:(__CFDictionary *)a3
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41___CFXPreferences_registerDefaultValues___block_invoke;
  v4[3] = &unk_1E6DD2590;
  v4[4] = self;
  withKeysAndValues(a3, v4);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)resetPreferences:(BOOL)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36___CFXPreferences_resetPreferences___block_invoke;
  v5[3] = &unk_1E6DD26A8;
  v6 = a3;
  v5[4] = self;
  v5[5] = &v7;
  [(_CFXPreferences *)self withSearchLists:v5];
  v3 = v8[3];
  if (v3)
  {
    CFRelease(v3);
  }

  _Block_object_dispose(&v7, 8);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)resetUserPreferences
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v7 = 0;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __39___CFXPreferences_resetUserPreferences__block_invoke;
    v3[3] = &unk_1E6DD2720;
    v3[4] = a1;
    v3[5] = &v4;
    [(_CFXPreferences *)a1 withSearchLists:v3];
    v1 = v5[3];
    if (v1)
    {
      CFRelease(v1);
    }

    _Block_object_dispose(&v4, 8);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)_setupNewDaemonConnection:(uint64_t)a3 invalidationHandler:
{
  location[1] = *MEMORY[0x1E69E9840];
  if (val)
  {
    objc_initWeak(location, val);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65___CFXPreferences__setupNewDaemonConnection_invalidationHandler___block_invoke;
    v6[3] = &unk_1E6DD2770;
    objc_copyWeak(&v7, location);
    v6[4] = a3;
    xpc_connection_set_event_handler(a2, v6);
    xpc_connection_activate(a2);
    objc_destroyWeak(&v7);
    objc_destroyWeak(location);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (uint64_t)appSynchronizeWithIdentifier:(const __CFString *)a3 container:
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 1;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58___CFXPreferences_appSynchronizeWithIdentifier_container___block_invoke;
    v6[3] = &unk_1E6DD2568;
    v6[4] = &v7;
    [(_CFXPreferences *)a1 withSearchListForIdentifier:a2 container:a3 cloudConfigurationURL:0 perform:v6];
    v3 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)removeSuite:(uint64_t)a3 fromApp:(uint64_t)a4 withContainer:
{
  v10[8] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = _CFPrefsArmPendingKVOSlot();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53___CFXPreferences_removeSuite_fromApp_withContainer___block_invoke;
    v10[3] = &unk_1E6DD27E8;
    v10[4] = a1;
    v10[5] = a3;
    v10[6] = a2;
    v10[7] = a4;
    [(_CFXPreferences *)a1 withSearchLists:v10];
    if (v8)
    {
      [(_CFXPreferences *)a1 _deliverPendingKVONotifications];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)generateKVONotificationsForIdentifier:(__CFString *)a3 withOldValues:(id)a4 newValues:(id)a5
{
  v11[7] = *MEMORY[0x1E69E9840];
  v9 = [a4 count];
  if (v9 != [a5 count])
  {
    [_CFXPreferences generateKVONotificationsForIdentifier:withOldValues:newValues:];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81___CFXPreferences_generateKVONotificationsForIdentifier_withOldValues_newValues___block_invoke;
  v11[3] = &unk_1E6DD2838;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = self;
  [(_CFXPreferences *)self withSearchListForIdentifier:a3 container:0 cloudConfigurationURL:0 perform:v11];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)withManagedSourceForIdentifier:(uint64_t)a3 user:(uint64_t)a4 perform:
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(a2);
    v8 = _CFPrefsGetCacheStringForBundleID(CacheStringForBundleID);
    CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"managed/%@/%@", v8, a3);
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = __Block_byref_object_copy__7;
    v14 = __Block_byref_object_dispose__7;
    v15 = 0;
    [_CFXPreferences withSources:a1];
    LODWORD(a3) = _CFPrefsArmPendingKVOSlot();
    (*(a4 + 16))(a4, v11[5]);

    if (a3)
    {
      [(_CFXPreferences *)a1 _deliverPendingKVONotifications];
    }

    _Block_object_dispose(&v10, 8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)withSources:(os_unfair_lock_s *)a1
{
  if (a1)
  {
    os_unfair_lock_lock(a1 + 18);
    v2 = OUTLINED_FUNCTION_2_3(8);
    v3(v2);

    os_unfair_lock_unlock(a1 + 18);
  }
}

- (void)withNamedVolatileSources:(os_unfair_lock_s *)a1
{
  if (a1)
  {
    os_unfair_lock_lock(a1 + 20);
    v2 = OUTLINED_FUNCTION_2_3(16);
    v3(v2);

    os_unfair_lock_unlock(a1 + 20);
  }
}

- (uint64_t)alreadylocked_withSources:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_10(result, a2, 8);
  }

  return result;
}

- (uint64_t)alreadylocked_withNamedVolatileSources:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_10(result, a2, 16);
  }

  return result;
}

- (CFMutableStringRef)copyDescriptionOfSearchLists
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
    OUTLINED_FUNCTION_2_6();
    v6[1] = 3221225472;
    v6[2] = __68___CFXPreferences_SearchListAdditions__copyDescriptionOfSearchLists__block_invoke;
    v6[3] = &__block_descriptor_40_e25_v16__0____CFDictionary__8l;
    v6[4] = v3;
    os_unfair_lock_lock((a1 + 76));
    __68___CFXPreferences_SearchListAdditions__copyDescriptionOfSearchLists__block_invoke(v6, *(a1 + 24));
    os_unfair_lock_unlock((a1 + 76));
  }

  else
  {
    Mutable = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return Mutable;
}

- (void)withSearchLists:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 76));
    (*(a2 + 16))(a2, *(a1 + 24));

    os_unfair_lock_unlock((a1 + 76));
  }
}

- (void)withSearchListForIdentifier:(CFStringRef)a3 container:(uint64_t)a4 cloudConfigurationURL:(uint64_t)a5 perform:
{
  v6[7] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __108___CFXPreferences_SearchListAdditions__withSearchListForIdentifier_container_cloudConfigurationURL_perform___block_invoke;
    v6[3] = &unk_1E6DD0B38;
    v6[5] = a5;
    v6[6] = a4;
    v6[4] = a1;
    normalizeQuintuplet(theString, @"kCFPreferencesCurrentUser", 0, a3, a4 != 0, v6);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (uint64_t)alreadylocked_withSearchLists:(uint64_t)result
{
  if (result)
  {
    return (*(a2 + 16))(a2, *(result + 24));
  }

  return result;
}

- (void)replaceSearchList:(uint64_t)a3 withSearchList:
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
    OUTLINED_FUNCTION_1_15();
    v9 = 3221225472;
    v10 = __73___CFXPreferences_SearchListAdditions__replaceSearchList_withSearchList___block_invoke;
    v11 = &unk_1E6DD0BB0;
    v12 = a2;
    v13 = a3;
    v14 = a1;
    v15 = v6;
    __73___CFXPreferences_SearchListAdditions__replaceSearchList_withSearchList___block_invoke(v8, *(a1 + 24));
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (uint64_t)nonLaunchPersonaUID
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (void)flushManagedSources
{
  v4[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_8_2();
    v4[2] = __38___CFXPreferences_flushManagedSources__block_invoke;
    v4[3] = &unk_1E6DD1D00;
    v4[4] = v2;
    if (xpc_user_sessions_enabled())
    {
      [(_CFXPreferences *)a1 withConnectionForRole:0 andUserIdentifier:v4 performBlock:?];
    }

    [(_CFXPreferences *)a1 withConnectionForRole:0 andUserIdentifier:v4 performBlock:?];
    _CFPrefsResetManagedPreferencesStateCache();
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)withConnectionForRole:(const void *)a3 andUserIdentifier:(uint64_t)a4 performBlock:
{
  if (a1)
  {
    v5 = [(_CFXPreferences *)a1 _copyDaemonConnectionSettingUpIfNecessaryForRole:a2 andUserIdentifier:a3];
    (*(a4 + 16))(a4, v5);
    if (v5)
    {

      xpc_release(v5);
    }
  }
}

- (void)flushCachesForAppIdentifier:(const void *)a3 user:
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(a2);
    v6 = 1;
    if (xpc_user_sessions_enabled())
    {
      if (CFEqual(a3, @"kCFPreferencesAnyUser"))
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      if (!xpc_user_sessions_get_session_uid() && CFEqual(a3, @"kCFPreferencesCurrentUser"))
      {
        v6 = 2;
      }
    }

    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_8_2();
    v8[2] = __52___CFXPreferences_flushCachesForAppIdentifier_user___block_invoke;
    v8[3] = &unk_1E6DD2358;
    v9 = v6;
    v8[4] = a1;
    v8[5] = CacheStringForBundleID;
    [(_CFXPreferences *)a1 withConnectionForRole:v6 andUserIdentifier:a3 performBlock:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)simulateTimerSynchronizeForTestingForUser:(__CFString *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = 1;
  if (xpc_user_sessions_enabled())
  {
    if (CFEqual(@"kCFPreferencesAnyUser", a3))
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  OUTLINED_FUNCTION_1_19();
  OUTLINED_FUNCTION_9_1();
  v8 = __61___CFXPreferences_simulateTimerSynchronizeForTestingForUser___block_invoke;
  v9 = &unk_1E6DD2380;
  v11 = v5;
  v10 = self;
  [(_CFXPreferences *)&self->super.isa withConnectionForRole:v5 andUserIdentifier:a3 performBlock:v7];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fullCloudSynchronizeForAppIdentifier:(uint64_t)a1 container:configurationURL:completionHandler:
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_8_2();
    v7[2] = __101___CFXPreferences_fullCloudSynchronizeForAppIdentifier_container_configurationURL_completionHandler___block_invoke;
    v7[3] = &unk_1E6DD2420;
    v7[4] = v1;
    [(_CFXPreferences *)v2 withSearchListForIdentifier:v3 container:v4 cloudConfigurationURL:v5 perform:v7];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setCloudSyncEnabled:(uint64_t)a3 forKey:(__CFString *)theString appIdentifier:(CFStringRef)a5 container:
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70___CFXPreferences_setCloudSyncEnabled_forKey_appIdentifier_container___block_invoke;
    v6[3] = &__block_descriptor_41_e33_v16__0__CFPrefsSearchListSource_8l;
    v7 = a2;
    v6[4] = a3;
    [(_CFXPreferences *)a1 withSearchListForIdentifier:a5 container:0 cloudConfigurationURL:v6 perform:?];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setValuesForKeys:(uint64_t)a1 removingValuesForKeys:identifier:user:host:container:
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    OUTLINED_FUNCTION_6_4();
    CFEqual(v1, @"kCFPreferencesCurrentHost");
    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_5_5(v2, v3, v4, v2 != 0, v5, v6, v7, v8, v10, v11, v12, __89___CFXPreferences_setValuesForKeys_removingValuesForKeys_identifier_user_host_container___block_invoke, &__block_descriptor_48_e23_v16__0__CFPrefsSource_8l, v13, v14);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setValue:(uint64_t)a1 forKey:identifier:user:host:container:
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    OUTLINED_FUNCTION_6_4();
    CFEqual(v1, @"kCFPreferencesCurrentHost");
    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_5_5(v2, v3, v4, v2 != 0, v5, v6, v7, v8, v10, v11, v12, __66___CFXPreferences_setValue_forKey_identifier_user_host_container___block_invoke, &__block_descriptor_48_e23_v16__0__CFPrefsSource_8l, v13, v14);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (uint64_t)preloadAppValuesForIdentifiers:(uint64_t)a3 containers:(uint64_t)a4 configurationURLs:(uint64_t)a5 count:
{
  if (result)
  {
    return [CFPrefsSearchListSource preloadDomainsForIdentifiers:a2 containers:a3 cloudConfigurationURLs:a4 count:a5 containingPreferences:result];
  }

  return result;
}

- (void)replaceValuesInSourceForIdentifier:(uint64_t)a1 user:host:container:withValues:
{
  v8[9] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_8_2();
    v8[2] = __85___CFXPreferences_replaceValuesInSourceForIdentifier_user_host_container_withValues___block_invoke;
    v8[3] = &unk_1E6DD2540;
    v8[4] = v1;
    v8[5] = v2;
    v8[6] = v3;
    v8[7] = v4;
    v8[8] = v5;
    withKeysAndValues(v6, v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeVolatileSourceForName:(os_unfair_lock_s *)a1
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1 && !CFEqual(cf1, @"NSArgumentDomain") && !CFEqual(cf1, @"NSRegistrationDomain"))
  {
    _CFPrefsGetCacheStringForBundleID(cf1);
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_8_2();
    [_CFXPreferences withNamedVolatileSources:a1];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (uint64_t)shmemForRole:(const char *)a3 name:
{
  block[5] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_13;
  }

  if (a2 != 3 && !_CFPrefsDirectMode())
  {
    if (a2 == 2)
    {
      if ((_MergedGlobals_2 & 1) == 0)
      {
LABEL_14:
        os_unfair_lock_lock(&unk_1ED40BDE8);
        v9 = &qword_1ED40BDF0;
        if (a2 != 2)
        {
          v9 = &qword_1ED40BDF8;
        }

        v8 = *v9;
        if (*v9)
        {
          os_unfair_lock_unlock(&unk_1ED40BDE8);
          goto LABEL_30;
        }

        v10 = shm_open(a3, 0, 0);
        if (v10 == -1)
        {
          v8 = 0;
        }

        else
        {
          v11 = v10;
          v8 = mmap(0, 0x4000uLL, 1, 1, v10, 0);
          close(v11);
          if (v8 == -1)
          {
            if (a2 == 2)
            {
              v8 = 0;
              _MergedGlobals_2 = 1;
LABEL_24:
              qword_1ED40BDF0 = v8;
LABEL_27:
              os_unfair_lock_unlock(&unk_1ED40BDE8);
              if (v8)
              {
                goto LABEL_30;
              }

              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __37___CFXPreferences_shmemForRole_name___block_invoke;
              block[3] = &__block_descriptor_40_e5_v8__0l;
              block[4] = a3;
              if (qword_1ED40BE00 == -1)
              {
                v8 = 0;
                goto LABEL_30;
              }

              dispatch_once(&qword_1ED40BE00, block);
              goto LABEL_13;
            }

            v8 = 0;
            byte_1ED40BDE1 = 1;
LABEL_26:
            qword_1ED40BDF8 = v8;
            goto LABEL_27;
          }
        }

        if (a2 == 2)
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }
    }

    else if ((byte_1ED40BDE1 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    v8 = 0;
LABEL_30:
    v12 = *MEMORY[0x1E69E9840];
    return v8;
  }

  if (qword_1ED40BE10 != -1)
  {
    dispatch_once(&qword_1ED40BE10, &__block_literal_global_255);
  }

  v5 = qword_1ED40BE08;
  v6 = *MEMORY[0x1E69E9840];

  return [(CFPrefsDaemon *)v5 shmem];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  [(_CFXPreferences *)self destroyConnections];
  sources = self->_sources;
  if (sources)
  {
    CFRelease(sources);
  }

  namedVolatileSources = self->_namedVolatileSources;
  if (namedVolatileSources)
  {
    CFRelease(namedVolatileSources);
  }

  searchLists = self->_searchLists;
  if (searchLists)
  {
    CFRelease(searchLists);
  }

  groupContainersForCurrentUser = self->_groupContainersForCurrentUser;
  if (groupContainersForCurrentUser)
  {
    CFRelease(groupContainersForCurrentUser);
  }

  v8.receiver = self;
  v8.super_class = _CFXPreferences;
  [(_CFXPreferences *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_replaceDirectConnection:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    os_unfair_lock_lock(&stru_1ED40BDE4);
    v4 = v3[6];
    if (v4)
    {
      xpc_connection_cancel(v4);
      xpc_release(v3[6]);
      v3[6] = 0;
    }

    v3[6] = xpc_retain(a2);
    [(_CFXPreferences *)v3 _setupNewDaemonConnection:a2 invalidationHandler:0];
    os_unfair_lock_unlock(&stru_1ED40BDE4);

    return [(xpc_object_t *)v3 resetPreferences:0];
  }

  return result;
}

- (_xpc_connection_s)_copyDaemonConnectionSettingUpIfNecessaryForRole:(const void *)a3 andUserIdentifier:
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = 0;
    goto LABEL_27;
  }

  os_unfair_lock_lock(&stru_1ED40BDE4);
  v6 = _CFPrefsDirectMode();
  if (a2 != 3 && (v6 & 1) == 0)
  {
    v7 = 5;
    if (a2 == 2)
    {
      v7 = 4;
    }

    v8 = &a1[v7];
    v9 = a1[v7];
    if (v9)
    {
      goto LABEL_25;
    }

    if (a2 == 1 && xpc_user_sessions_enabled() && !xpc_user_sessions_get_session_uid())
    {
      if (!a3 || (v19 = _CFPreferencesUIDForUsername(a3), v19 == -101))
      {
        v20 = _CFPrefsClientLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = a3;
          _os_log_error_impl(&dword_1830E6000, v20, OS_LOG_TYPE_ERROR, "Could not resolve UID for user identifier %@. Please use _CFPreferencesGetUserIdentifierForUid() to target a specific user", buf, 0xCu);
        }

        v9 = 0;
        goto LABEL_26;
      }

      v11 = v19;
      if (xpc_user_sessions_get_foreground_uid() != v19)
      {
        v21 = _CFPrefsClientLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v23 = a3;
          v24 = 1024;
          v25 = v11;
          _os_log_error_impl(&dword_1830E6000, v21, OS_LOG_TYPE_ERROR, "Could not target user session daemon connection for user %@: user session with UID %i is not active", buf, 0x12u);
        }
      }

      v10 = &__block_literal_global_111;
    }

    else
    {
      v10 = 0;
      v11 = -101;
    }

    if (__CFProcessIsRestricted() || !getenv("__CFPreferencesTestDaemon"))
    {
      v12 = "com.apple.cfprefsd.daemon";
      v13 = "com.apple.cfprefsd.daemon.system";
    }

    else
    {
      v12 = "com.apple.cfprefsd.daemon.test";
      v13 = "com.apple.cfprefsd.daemon.system.test";
    }

    if (a2 == 2)
    {
      v16 = v13;
    }

    else
    {
      v16 = v12;
    }

    *v8 = xpc_connection_create_mach_service(v16, 0, 0);
    if (v11 != -101)
    {
      xpc_connection_set_target_user_session_uid();
    }

    goto LABEL_24;
  }

  v8 = a1 + 6;
  v9 = a1[6];
  if (!v9)
  {
    if (qword_1ED40BE10 != -1)
    {
      dispatch_once(&qword_1ED40BE10, &__block_literal_global_255);
    }

    v14 = [(CFPrefsDaemon *)qword_1ED40BE08 listener];
    v15 = xpc_endpoint_create(v14);
    *v8 = xpc_connection_create_from_endpoint(v15);
    xpc_release(v15);
    v10 = 0;
LABEL_24:
    [(_CFXPreferences *)a1 _setupNewDaemonConnection:v10 invalidationHandler:?];
    v9 = *v8;
  }

LABEL_25:
  xpc_retain(v9);
LABEL_26:
  os_unfair_lock_unlock(&stru_1ED40BDE4);
LABEL_27:
  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)replaceValuesInVolatileSourceNamed:(uint64_t)a1 withValues:
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_9_1();
    v6 = __65___CFXPreferences_replaceValuesInVolatileSourceNamed_withValues___block_invoke;
    v7 = &unk_1E6DD2490;
    v8 = v1;
    v9 = v2;
    withKeysAndValues(v3, v5);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)ingestVolatileStateFromPreferences:(void *)a1 .cold.2(void *a1)
{
  v1 = OUTLINED_FUNCTION_3_7(a1);
  v1[1] = 3221225472;
  v1[2] = __54___CFXPreferences_ingestVolatileStateFromPreferences___block_invoke;
  v1[3] = &unk_1E6DD2608;
  v1[4] = v2;
  v1[5] = v3;
  [_CFXPreferences withNamedVolatileSources:v3];
}

- (void)setAccessRestricted:(void *)a1 forAppIdentifier:.cold.2(void *a1)
{
  v1 = OUTLINED_FUNCTION_3_7(a1);
  v1[1] = 3221225472;
  v1[2] = __56___CFXPreferences_setAccessRestricted_forAppIdentifier___block_invoke;
  v1[3] = &__block_descriptor_33_e23_v16__0__CFPrefsSource_8l;
  *(v1 + 32) = v2;
  [(_CFXPreferences *)v5 withSourceForIdentifier:v3 user:@"kCFPreferencesAnyUser" byHost:1 container:0 cloud:0 perform:v4];
}

@end