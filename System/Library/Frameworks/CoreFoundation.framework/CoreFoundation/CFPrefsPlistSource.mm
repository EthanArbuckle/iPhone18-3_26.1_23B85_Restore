@interface CFPrefsPlistSource
- (BOOL)attachAccessTokenToMessage:(int)a3 accessType:;
- (BOOL)synchronize;
- (CFPrefsPlistSource)initWithDomain:(__CFString *)a3 user:(__CFString *)a4 byHost:(BOOL)a5 containerPath:(__CFString *)a6 containingPreferences:(id)a7;
- (__CFArray)alreadylocked_copyKeyList;
- (__CFDictionary)alreadylocked_copyDictionary;
- (id)alreadylocked_createObserverUpdateMessageWithOperation:(int)a3 forRole:(int *)a4;
- (id)createRequestNewContentMessageForDaemon:(int)a3;
- (id)createSynchronizeMessage;
- (int)alreadylocked_updateObservingRemoteChanges;
- (int64_t)alreadylocked_generationCount;
- (int64_t)generationCount;
- (uint64_t)_logLoudlyAboutSettingKey:(uint64_t)result;
- (uint64_t)_shouldEnableDirectMode;
- (uint64_t)alreadylocked_requestNewData;
- (uint64_t)handleErrorReply:(void *)a3 toMessage:(const void *)a4 settingKeys:(const void *)a5 toValues:(CFIndex)a6 count:(int)a7 retryCount:(uint64_t)a8 retryContinuation:;
- (uint64_t)handleErrorReply:(void *)a3 toMessage:(int)a4 retryCount:(uint64_t)a5 retryContinuation:;
- (uint64_t)sendMessageSettingValues:(__objc2_class *)a3 forKeys:(uint64_t)a4 count:;
- (uint64_t)volatilizeIfInvalidHomeDir;
- (void)_sharedCleanup;
- (void)addPIDImpersonationIfNecessary:(void *)a1;
- (void)alreadylocked_clearCache;
- (void)alreadylocked_setPrecopiedValues:(const void *)a3 forKeys:(const __CFString *)a4 count:(int64_t)a5 from:(id)a6;
- (void)copyValueForKey:(__CFString *)a3;
- (void)createSynchronizeMessage;
- (void)dealloc;
- (void)goReadOnlyAfterTryingToWriteKeys:(__CFString *)a3 values:(uint64_t)a4 count:;
- (void)goVolatileAfterTryingToWriteKeys:(__CFString *)a3 values:(uint64_t)a4 count:;
- (void)handlePossibleOversizedMessage:(const void *)a3 forWritingKeys:(const void *)a4 values:(CFIndex)a5 count:;
- (void)handleReply:(id)a3 toRequestNewDataMessage:(id)a4 onConnection:(id)a5 retryCount:(int)a6 error:(BOOL *)a7;
- (void)requestPlistValidation;
- (void)sendFullyPreparedMessage:(xpc_connection_t)connection toConnection:(uint64_t)a4 settingValues:(uint64_t)a5 forKeys:(uint64_t)a6 count:(int)a7 retryCount:;
- (void)sendRequestNewDataMessage:(uint64_t)a3 toConnection:(uint64_t)a4 retryCount:(BOOL *)a5 error:;
- (void)setContainer:(uint64_t)a1;
- (void)setDomainIdentifier:(uint64_t)a1;
- (void)setUserIdentifier:(uint64_t)a1;
- (void)transitionIntoDirectModeIfNeededWithRetryBlock:(id)a3;
- (void)writeFailedForKeys:(__CFString *)a3 values:(uint64_t)a4 count:;
@end

@implementation CFPrefsPlistSource

- (__CFDictionary)alreadylocked_copyDictionary
{
  v20 = *MEMORY[0x1E69E9840];
  if (byte_1EA84A4F1)
  {
    [(CFPrefsPlistSource *)self alreadylocked_clearCache];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = __alreadylocked_requestNewDataIfStale_block_invoke;
  v18 = &unk_1E6D81EC0;
  v19 = self;
  v3 = atomic_load(&self->_volatile);
  if ((v3 & 1) == 0)
  {
    v4 = atomic_load(&self->super.shmemEntry);
    if (!v4 || (v5 = atomic_load(v4), v6 = atomic_load(&sentinelGeneration), v5 != v6) && (v7 = atomic_load(&self->super.lastKnownShmemState), v5 != v7))
    {
      os_unfair_lock_assert_owner(&self->super._lock);
      v17(v16);
    }
  }

  if (atomic_load(&self->_locallySetDict))
  {
    dict = self->super._dict;
    if (dict)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, dict);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v11 = MutableCopy;
    os_unfair_lock_lock(&locallySetDictLock);
    v12 = atomic_load(&self->_locallySetDict);
    CFDictionaryApplyFunction(v12, locallySetValueOverlayMergeFunc, v11);
    os_unfair_lock_unlock(&locallySetDictLock);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = CFPrefsPlistSource;
    v11 = [(CFPrefsSource *)&v15 alreadylocked_copyDictionary];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)createSynchronizeMessage
{
  v28 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->super._lock);
  v3 = atomic_load(&self->_volatile);
  if (v3)
  {
    goto LABEL_9;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = [(CFPrefsPlistSource *)self domainIdentifier];
  if ((_CFPrefsEncodeValueIntoMessage(v4, "CFPreferencesDomain", v5, 0) & 1) == 0)
  {
    xpc_release(v4);
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  os_unfair_lock_lock_with_options();
  groupContainersForCurrentUser = self->super._containingPreferences->_groupContainersForCurrentUser;
  if (groupContainersForCurrentUser && CFSetContainsValue(groupContainersForCurrentUser, v5))
  {
    bzero(buffer, 0x400uLL);
    if (CFStringGetCString(v5, buffer, 1024, 0x8000100u))
    {
      v26 = 1;
      v7 = container_create_or_lookup_app_group_path_by_app_group_identifier();
      if (v7)
      {
        free(v7);
      }

      else
      {
        v10 = _CFPrefsDaemonLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(CFPrefsPlistSource *)buffer createSynchronizeMessage];
        }
      }
    }

    CFSetRemoveValue(self->super._containingPreferences->_groupContainersForCurrentUser, v5);
    if (!CFSetGetCount(self->super._containingPreferences->_groupContainersForCurrentUser))
    {
      CFRelease(self->super._containingPreferences->_groupContainersForCurrentUser);
      self->super._containingPreferences->_groupContainersForCurrentUser = 0;
    }
  }

  os_unfair_lock_unlock(&groupContainersLock);
  CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(@"kCFPreferencesCurrentApplication");
  _CFPrefsEncodeValueIntoMessage(v4, "CFPreferencesHostBundleIdentifier", CacheStringForBundleID, 0);
  if (CFEqual(v5, CacheStringForBundleID))
  {
    xpc_dictionary_set_BOOL(v4, "CFPreferencesCurrentApplicationDomain", 1);
  }

  v12 = atomic_load(&self->_isByHost);
  if (v12)
  {
    xpc_dictionary_set_BOOL(v4, "CFPreferencesIsByHost", 1);
  }

  xpc_dictionary_set_int64(v4, "CFPreferencesOperation", 1);
  if ([(CFPrefsSource *)self managed])
  {
    xpc_dictionary_set_BOOL(v4, "CFPreferencesIsManaged", 1);
  }

  v13 = [(CFPrefsPlistSource *)self userIdentifier];
  Copy = @"kCFPreferencesAnyUser";
  if (CFEqual(@"kCFPreferencesAnyUser", v13))
  {
    goto LABEL_32;
  }

  _CFPrefsEncodeValueIntoMessage(v4, "CFPreferencesUser", v13, 0);
  if (!CFEqual(@"kCFPreferencesCurrentUser", @"kCFPreferencesCurrentUser"))
  {
    if (CFEqual(@"kCFPreferencesCurrentUser", @"kCFPreferencesAnyUser"))
    {
      goto LABEL_28;
    }

    v15 = CFCopyUserName();
    v16 = CFEqual(@"kCFPreferencesCurrentUser", v15);
    CFRelease(v15);
    if (!@"kCFPreferencesCurrentUser" || !v16)
    {
      Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, @"kCFPreferencesCurrentUser");
      goto LABEL_28;
    }
  }

  Copy = @"kCFPreferencesCurrentUser";
LABEL_28:
  if (!CFEqual(Copy, v13))
  {
    xpc_dictionary_set_BOOL(v4, "CFPreferencesUseCorrectOwner", 1);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

LABEL_32:
  v17 = [(CFPrefsPlistSource *)self container];
  if (v17)
  {
    v18 = v17;
    if (CFStringGetLength(v17) >= 1)
    {
      _CFPrefsEncodeValueIntoMessage(v4, "CFPreferencesContainer", v18, 0);
    }
  }

  if (_CFPrefsSynchronizeIsSynchronous & 1) != 0 || (v25 = atomic_load(&self->_avoidsDaemonCache), (v25) || _CFPrefsTestingFlags || byte_1EA84A4F2 && (arc4random() & 1) == 0)
  {
    xpc_dictionary_set_BOOL(v4, "CFPreferencesShouldWriteSynchronously", 1);
    xpc_dictionary_set_BOOL(v4, "CFPreferencesAvoidCache", 1);
  }

  v19 = atomic_load(&self->_disableBackup);
  if (v19)
  {
    xpc_dictionary_set_BOOL(v4, "CFPreferencesDisableBackups", 1);
  }

  if (atomic_load(&self->_fileProtectionClass))
  {
    v21 = atomic_load(&self->_fileProtectionClass);
    xpc_dictionary_set_int64(v4, "CFPreferencesFileProtectionClass", v21);
  }

  v22 = atomic_load(&self->_restrictedAccess);
  if (v22)
  {
    xpc_dictionary_set_BOOL(v4, "CFPreferencesRestrictedReadability", 1);
  }

  if (byte_1EA84A4F3)
  {
    xpc_dictionary_set_BOOL(v4, "kCFPreferencesTestingSimulateSlowFilesystem", 1);
  }

  if (atomic_load(&dword_1EA84A4FC))
  {
    v24 = atomic_load(&dword_1EA84A4FC);
    xpc_dictionary_set_int64(v4, "kCFPreferencesTestingSimulateOutOfDiskSpace", v24);
  }

LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (uint64_t)volatilizeIfInvalidHomeDir
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 && (v2 = atomic_load((a1 + 109)), (v2 & 1) == 0) && (atomic_store(1u, (a1 + 109)), -[_CFXPreferences euid](*(a1 + 8))) && !CFEqual(@"kCFPreferencesAnyUser", [a1 userIdentifier]) && -[_CFXPreferences currentUserHasInvalidHomeDirectory](*(a1 + 8)))
  {
    v3 = _CFPrefsClientLog();
    v4 = 1;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = [a1 copyOSLogDescription];
      _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
      v6 = _CFPrefsClientLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 138543362;
        v10 = v5;
        _os_log_impl(&dword_1830E6000, v6, OS_LOG_TYPE_INFO, "Volatilizing domain, because home directory is invalid. %{public}@", &v9, 0xCu);
      }

      _CFSetTSD(0xFu, 0, 0);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    atomic_store(1u, (a1 + 105));
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (uint64_t)alreadylocked_requestNewData
{
  v1 = a1;
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = atomic_load((a1 + 105));
    if (v2)
    {
      LOBYTE(v1) = 0;
    }

    else
    {
      v3 = atomic_load((a1 + 40));
      if (v3 && ((v4 = atomic_load(v3), v5 = atomic_load(&sentinelGeneration), v4 == v5) || (v6 = atomic_load((a1 + 48)), v4 == v6)))
      {
        LOBYTE(v1) = 1;
      }

      else
      {
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v7 = *(a1 + 8);
        v8 = atomic_load((a1 + 113));
        if (v8 & 1) != 0 || (_CFPrefsDirectMode())
        {
          v9 = 3;
        }

        else if (xpc_user_sessions_enabled() && (CFEqual(v1[8], @"kCFPreferencesAnyUser") || !xpc_user_sessions_get_session_uid() && CFEqual(v1[8], @"kCFPreferencesCurrentUser")))
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }

        v10 = [(CFTypeRef *)v1 userIdentifier];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __50__CFPrefsPlistSource_alreadylocked_requestNewData__block_invoke;
        v13[3] = &unk_1E6DD2C28;
        v13[4] = v1;
        v13[5] = &v14;
        [(_CFXPreferences *)v7 withConnectionForRole:v9 andUserIdentifier:v10 performBlock:v13];
        LOBYTE(v1) = *(v15 + 24) ^ 1;
        _Block_object_dispose(&v14, 8);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v1 & 1;
}

void __50__CFPrefsPlistSource_alreadylocked_requestNewData__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && ((v4 = *(a1 + 32), v5 = atomic_load((v4 + 113)), (v5 & 1) == 0) && (_CFPrefsDirectMode() & 1) == 0 ? (xpc_user_sessions_enabled() && (CFEqual(*(v4 + 64), @"kCFPreferencesAnyUser") || !xpc_user_sessions_get_session_uid() && CFEqual(*(v4 + 64), @"kCFPreferencesCurrentUser")) ? (v6 = 2) : (v6 = 1)) : (v6 = 3), (v7 = [v4 createRequestNewContentMessageForDaemon:v6]) != 0))
  {
    v8 = v7;
    [(CFPrefsPlistSource *)*(a1 + 32) sendRequestNewDataMessage:v7 toConnection:a2 retryCount:0 error:(*(*(a1 + 40) + 8) + 24)];

    xpc_release(v8);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)synchronize
{
  v2 = atomic_load(&self->_lastWriteFailed);
  if (v2)
  {
    v3 = 0;
    atomic_store(0, &self->_lastWriteFailed);
  }

  else
  {
    v4 = atomic_load(&self->_volatile);
    if (v4)
    {
      v3 = 0;
    }

    else
    {
      v5 = atomic_load(&self->_readonly);
      v3 = v5 ^ 1;
    }
  }

  return v3 & 1;
}

- (int)alreadylocked_updateObservingRemoteChanges
{
  os_unfair_lock_assert_owner(&self->super._lock);
  if ([(__CFPrefsWeakObservers *)self->super._observers approximateCount]&& (v3 = atomic_load(&self->_observing), (v3 & 1) == 0))
  {
    atomic_store(1u, &self->_observing);
  }

  else
  {
    if ([(__CFPrefsWeakObservers *)self->super._observers approximateCount])
    {
      return 0;
    }

    v4 = atomic_load(&self->_observing);
    if ((v4 & 1) == 0)
    {
      return 0;
    }

    atomic_store(0, &self->_observing);
  }

  if ([(CFPrefsPlistSource *)self isVolatile])
  {
    return 0;
  }

  v6 = atomic_load(&self->_observing);
  if (v6)
  {
    return 7;
  }

  else
  {
    return 8;
  }
}

- (__CFArray)alreadylocked_copyKeyList
{
  v15 = *MEMORY[0x1E69E9840];
  if (byte_1EA84A4F1)
  {
    [(CFPrefsPlistSource *)self alreadylocked_clearCache];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = __alreadylocked_requestNewDataIfStale_block_invoke;
  v13 = &unk_1E6D81EC0;
  v14 = self;
  v3 = atomic_load(&self->_volatile);
  if ((v3 & 1) == 0)
  {
    v4 = atomic_load(&self->super.shmemEntry);
    if (!v4 || (v5 = atomic_load(v4), v6 = atomic_load(&sentinelGeneration), v5 != v6) && (v7 = atomic_load(&self->super.lastKnownShmemState), v5 != v7))
    {
      os_unfair_lock_assert_owner(&self->super._lock);
      v12(v11);
    }
  }

  v10.receiver = self;
  v10.super_class = CFPrefsPlistSource;
  result = [(CFPrefsSource *)&v10 alreadylocked_copyKeyList];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_sharedCleanup
{
  if (a1)
  {
    if (atomic_load(a1 + 12))
    {
      v3 = atomic_load(a1 + 12);
      free(v3);
    }

    v4 = a1[9];
    if (v4)
    {
      a1[9] = 0;
      CFRelease(v4);
    }

    v5 = a1[8];
    if (v5)
    {
      a1[8] = 0;
      CFRelease(v5);
    }

    v6 = a1[10];
    if (v6)
    {
      a1[10] = 0;
      CFRelease(v6);
    }

    if (atomic_load(a1 + 11))
    {
      v8 = atomic_load(a1 + 11);

      CFRelease(v8);
    }
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [(CFPrefsPlistSource *)self _sharedCleanup];
  v4.receiver = self;
  v4.super_class = CFPrefsPlistSource;
  [(CFPrefsSource *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setDomainIdentifier:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  if (!cf1)
  {
    v4 = *(a1 + 72);
    if (!v4)
    {
      return;
    }

    *(a1 + 72) = 0;
    goto LABEL_8;
  }

  if (CFEqual(cf1, @"kCFPreferencesCurrentApplication"))
  {
    [CFPrefsPlistSource setDomainIdentifier:];
  }

  v4 = *(a1 + 72);
  if (v4 != cf1 && ![(CFPrefsPlistSource *)cf1 setDomainIdentifier:a1, *(a1 + 72), @"kCFPreferencesCurrentApplication"])
  {
LABEL_8:

    CFRelease(v4);
  }
}

- (CFPrefsPlistSource)initWithDomain:(__CFString *)a3 user:(__CFString *)a4 byHost:(BOOL)a5 containerPath:(__CFString *)a6 containingPreferences:(id)a7
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = CFPrefsPlistSource;
  v11 = [(CFPrefsSource *)&v15 initWithContainingPreferences:a7];
  v12 = v11;
  if (v11)
  {
    [(CFPrefsPlistSource *)v11 setDomainIdentifier:a3];
    [(CFPrefsPlistSource *)v12 setUserIdentifier:a4];
    [(CFPrefsPlistSource *)v12 setContainer:a6];
    atomic_store(a5, (v12 + 104));
    atomic_store(0, (v12 + 40));
    atomic_store(0, (v12 + 48));
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)copyValueForKey:(__CFString *)a3
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = _copyValueForKey(self, a3);
  os_unfair_lock_unlock(&self->super._lock);
  return v5;
}

- (void)alreadylocked_setPrecopiedValues:(const void *)a3 forKeys:(const __CFString *)a4 count:(int64_t)a5 from:(id)a6
{
  v59 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->super._lock);
  if (_CFPrefsTestingFlags)
  {
    [(CFPrefsPlistSource *)self alreadylocked_clearCache];
  }

  v10 = atomic_load(&self->super.shmemEntry);
  if (!v10)
  {
    v13 = 1;
LABEL_8:
    cf = v13;
    goto LABEL_9;
  }

  v11 = atomic_load(v10);
  v12 = atomic_load(&sentinelGeneration);
  if (v11 != v12)
  {
    v14 = atomic_load(&self->super.lastKnownShmemState);
    v13 = v11 != v14;
    goto LABEL_8;
  }

  cf = 0;
LABEL_9:
  if (a5 < 1)
  {
LABEL_39:
    cfb = 0;
    goto LABEL_68;
  }

  v51 = 0;
  v15 = 0;
  v16 = 0;
  do
  {
    v17 = a4[v16];
    v18 = a3[v16];
    if (_CFPrefsTestingFlags)
    {
      goto LABEL_29;
    }

    v19 = atomic_load(&self->_locallySetDict);
    if (v19 != 0 || cf)
    {
      goto LABEL_29;
    }

    dict = self->super._dict;
    if (!dict)
    {
      v22 = 0;
      v23 = v18 != 0;
LABEL_21:
      if (v22 || !self->super._dict || v23)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    Value = CFDictionaryGetValue(dict, a4[v16]);
    v22 = Value != 0;
    v23 = v18 != 0;
    if (Value)
    {
      v24 = v18 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      goto LABEL_21;
    }

    if (!CFEqual(Value, v18))
    {
      goto LABEL_29;
    }

LABEL_24:
    v25 = _CFPrefsClientLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = [(CFPrefsSource *)self copyOSLogDescription];
      _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
      v27 = _CFPrefsClientLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        v56 = v26;
        v57 = 2114;
        v58 = v17;
        _os_log_debug_impl(&dword_1830E6000, v27, OS_LOG_TYPE_DEBUG, "%{public}@ skipping setting already-present value for key %{public}@", buf, 0x16u);
      }

      _CFSetTSD(0xFu, 0, 0);
      CFRelease(v26);
    }

    a4[v16] = 0;
LABEL_29:
    if (([(CFPrefsSource *)self validateValue:v18 forKey:v17 inDict:0 forWriting:1]& 1) != 0)
    {
      if (a4[v16])
      {
        v15 |= [CFPrefsPlistSource _logLoudlyAboutSettingKey:?];
        v51 = 1;
      }
    }

    else
    {
      a4[v16] = 0;
    }

    ++v16;
  }

  while (a5 != v16);
  if ((v51 & 1) == 0)
  {
    goto LABEL_39;
  }

  v28 = _CFPrefsClientLog();
  if (((os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG) | v15) & 1) == 0)
  {
    goto LABEL_67;
  }

  cfa = [(CFPrefsSource *)self copyOSLogDescription];
  v29 = _CFPrefsClientLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if ((v15 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_41:
    v31 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    Mutable = 0;
    if (v15)
    {
      goto LABEL_41;
    }

LABEL_38:
    v31 = 0;
  }

  v32 = a5;
  v33 = a4;
  v34 = a3;
  while (2)
  {
    if (*v33)
    {
      if (v31)
      {
        v35 = [CFPrefsPlistSource _logLoudlyAboutSettingKey:?];
        v36 = v35 | (Mutable != 0);
        if (v35)
        {
          v37 = v31;
        }

        else
        {
          v37 = Mutable;
        }

        if ((v36 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v37 = Mutable;
        if (!Mutable)
        {
          goto LABEL_55;
        }
      }

      if (*v34)
      {
        v38 = *v34;
      }

      else
      {
        v38 = @"nil";
      }

      CFDictionarySetValue(v37, *v33, v38);
    }

LABEL_55:
    ++v34;
    ++v33;
    if (--v32)
    {
      continue;
    }

    break;
  }

  v39 = objc_autoreleasePoolPush();
  _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
  if (Mutable)
  {
    if (CFDictionaryGetCount(Mutable) >= 1)
    {
      [(__CFDictionary *)Mutable description];
      v40 = _CFPrefsClientLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [CFPrefsPlistSource alreadylocked_setPrecopiedValues:forKeys:count:from:];
      }
    }

    CFRelease(Mutable);
  }

  if (v31)
  {
    if (CFDictionaryGetCount(v31) >= 1)
    {
      v41 = [(__CFDictionary *)v31 description];
      v42 = _CFPrefsClientLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v56 = v41;
        v57 = 2114;
        v58 = cfa;
        _os_log_impl(&dword_1830E6000, v42, OS_LOG_TYPE_DEFAULT, "setting %{public}@ in %{public}@", buf, 0x16u);
      }
    }

    CFRelease(v31);
  }

  CFRelease(cfa);
  _CFSetTSD(0xFu, 0, 0);
  objc_autoreleasePoolPop(v39);
LABEL_67:
  cfb = [(CFPrefsPlistSource *)self sendMessageSettingValues:a3 forKeys:a4 count:a5]!= 1;
LABEL_68:
  v43 = atomic_load(&self->_locallySetDict);
  if (!v43 && _CFPrefsReadOnly())
  {
    os_unfair_lock_lock(&locallySetDictLock);
    atomic_store(CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), &self->_locallySetDict);
    os_unfair_lock_unlock(&locallySetDictLock);
  }

  if (a5 >= 1)
  {
    while (2)
    {
      v44 = *a4;
      if (!*a4)
      {
        goto LABEL_82;
      }

      v45 = *a3;
      v46 = self->super._dict;
      if (*a3)
      {
        if (!v46)
        {
          v46 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          self->super._dict = v46;
        }

        CFDictionarySetValue(v46, v44, v45);
        if (!atomic_load(&self->_locallySetDict))
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (v46)
        {
          CFDictionaryRemoveValue(v46, *a4);
        }

        v48 = atomic_load(&self->_locallySetDict);
        v45 = @"MagicRemovedValue";
        if (!v48)
        {
LABEL_82:
          ++a3;
          ++a4;
          if (!--a5)
          {
            goto LABEL_83;
          }

          continue;
        }
      }

      break;
    }

    os_unfair_lock_lock(&locallySetDictLock);
    v49 = atomic_load(&self->_locallySetDict);
    CFDictionarySetValue(v49, v44, v45);
    os_unfair_lock_unlock(&locallySetDictLock);
    goto LABEL_82;
  }

LABEL_83:
  if (cfb)
  {
    atomic_fetch_add(&self->super._generationCount, 1uLL);
  }

  v50 = *MEMORY[0x1E69E9840];
}

- (uint64_t)sendMessageSettingValues:(__objc2_class *)a3 forKeys:(uint64_t)a4 count:
{
  v30 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_17;
  }

  v7 = result;
  if (_CFPrefsReadOnly())
  {
LABEL_3:
    result = 0;
    goto LABEL_17;
  }

  v8 = atomic_load(v7 + 105);
  if ((v8 & 1) == 0)
  {
    v9 = atomic_load(v7 + 106);
    if ((v9 & 1) == 0)
    {
      v19 = [v7 createSynchronizeMessage];
      if (!v19)
      {
        result = 3;
        goto LABEL_17;
      }

      v20 = v19;
      *buf = 0;
      v21 = _CFPrefsEncodeKeyValuePairsIntoMessage(v19, a3, a2, a4, buf);
      v22 = _CFPrefsDomainSizeAcceptabilityForByteCount(*buf);
      [(CFPrefsPlistSource *)v7 handlePossibleOversizedMessage:v22 forWritingKeys:a3 values:a2 count:a4];
      v23 = atomic_load(v7 + 112);
      if ((v23 & 1) != 0 && (_CFPrefsDirectMode() & 1) == 0)
      {
        v24 = atomic_load(v7 + 113);
        if ((v24 & v21 & 1) == 0)
        {
LABEL_27:
          xpc_release(v20);
          goto LABEL_3;
        }
      }

      else if (!v21)
      {
        goto LABEL_27;
      }

      if ([(CFPrefsPlistSource *)v7 attachAccessTokenToMessage:v20 accessType:1])
      {
        [(CFPrefsPlistSource *)v7 addPIDImpersonationIfNecessary:v20];
        [(CFPrefsPlistSource *)v7 sendFullyPreparedMessage:v20 toConnection:0 settingValues:a2 forKeys:a3 count:a4 retryCount:0];
      }

      goto LABEL_27;
    }
  }

  v10 = [v7 copyOSLogDescription];
  if (a4 >= 1)
  {
    do
    {
      if (*a3)
      {
        v11 = atomic_load(v7 + 106);
        if (v11)
        {
          _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
          v12 = _CFPrefsClientLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v14 = *a2;
            v15 = *a3;
            *buf = 138478339;
            *&buf[4] = v14;
            v26 = 2113;
            v27 = v15;
            v28 = 2114;
            v29 = v10;
            _os_log_error_impl(&dword_1830E6000, v12, OS_LOG_TYPE_ERROR, "attempt to set %{private}@ for key in %{private}@ in read-only (due to a previously logged write error) preferences domain %{public}@", buf, 0x20u);
          }
        }

        else
        {
          _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
          v13 = _CFPrefsClientLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v16 = *a2;
            v17 = *a3;
            *buf = 138478339;
            *&buf[4] = v16;
            v26 = 2113;
            v27 = v17;
            v28 = 2114;
            v29 = v10;
            _os_log_error_impl(&dword_1830E6000, v13, OS_LOG_TYPE_ERROR, "attempt to set %{private}@ for key in %{private}@ in non-persistent preferences domain %{public}@", buf, 0x20u);
          }
        }

        _CFSetTSD(0xFu, 0, 0);
      }

      ++a2;
      ++a3;
      --a4;
    }

    while (a4);
  }

  CFRelease(v10);
  result = 2;
LABEL_17:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)writeFailedForKeys:(__CFString *)a3 values:(uint64_t)a4 count:
{
  if (a1)
  {
    v4 = a4;
    if (a4 >= 1)
    {
      do
      {
        v8 = *a2;
        if (*a2)
        {
          atomic_store(1u, (a1 + 110));
          os_unfair_lock_lock(&locallySetDictLock);
          if (!atomic_load((a1 + 88)))
          {
            atomic_store(CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), (a1 + 88));
          }

          v10 = atomic_load((a1 + 88));
          if (*a3)
          {
            v11 = *a3;
          }

          else
          {
            v11 = @"MagicRemovedValue";
          }

          CFDictionarySetValue(v10, v8, v11);
          os_unfair_lock_unlock(&locallySetDictLock);
        }

        ++a3;
        ++a2;
        --v4;
      }

      while (v4);
    }
  }
}

- (uint64_t)handleErrorReply:(void *)a3 toMessage:(const void *)a4 settingKeys:(const void *)a5 toValues:(CFIndex)a6 count:(int)a7 retryCount:(uint64_t)a8 retryContinuation:
{
  v58 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_62;
  }

  if (!a2)
  {
    [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
  }

  if (a2 == MEMORY[0x1E69E9E18])
  {
    if (!__CFProcessIsRestricted() && getenv("__CFPreferencesTestDaemon"))
    {
      v49 = _CFPrefsClientLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
      }

      abort();
    }

    [CFPrefsPlistSource handleErrorReply:a7 toMessage:a8 settingKeys:buf toValues:? count:? retryCount:? retryContinuation:?];
    result = buf[0];
    goto LABEL_62;
  }

  v14 = result;
  Class = object_getClass(a2);
  v16 = MEMORY[0x1E69E9E80];
  if (Class == MEMORY[0x1E69E9E80])
  {
    int64 = xpc_dictionary_get_int64(a2, "CFPreferencesErrorType");
    if (int64 == 4)
    {
      string = xpc_dictionary_get_string(a2, "CFPreferencesUncanonicalizedPath");
      v37 = string;
      if (a7 < 4)
      {
        if (string)
        {
          bzero(buf, 0x402uLL);
          if (dirname_r(v37, buf))
          {
            geteuid();
            getegid();
            if (_CFPrefsCreatePreferencesDirectory(buf))
            {
              _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
              v44 = _CFPrefsClientLog();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
              {
                [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
              }

              _CFSetTSD(0xFu, 0, 0);
              (*(a8 + 16))(a8, (a7 + 1));
              goto LABEL_61;
            }

            _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
            v47 = _CFPrefsClientLog();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v48 = __error();
              [CFPrefsPlistSource handleErrorReply:buf toMessage:v48 settingKeys:v51 toValues:v47 count:? retryCount:? retryContinuation:?];
            }

            _CFSetTSD(0xFu, 0, 0);
          }

          else
          {
            _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
            v46 = _CFPrefsClientLog();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
            }

            _CFSetTSD(0xFu, 0, 0);
          }
        }

        else
        {
          _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
          v45 = _CFPrefsClientLog();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
          }

          _CFSetTSD(0xFu, 0, 0);
        }

        goto LABEL_5;
      }

      _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
      v38 = _CFPrefsClientLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
      }
    }

    else
    {
      if (int64 != 3)
      {
        goto LABEL_5;
      }

      v28 = xpc_dictionary_get_string(a2, "CFPreferencesAccessToken");
      v29 = v28;
      if (a7 < 10)
      {
        if (v28)
        {
          xpc_dictionary_set_value(a3, "CFPreferencesAccessToken", 0);
          v42 = strdup(v29);
          v43 = 0;
          atomic_compare_exchange_strong((v14 + 96), &v43, v42);
          if (v43)
          {
            free(v42);
          }

          (*(a8 + 16))(a8, (a7 + 1));
          goto LABEL_61;
        }

        goto LABEL_5;
      }

      _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
      v30 = _CFPrefsClientLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
      }
    }

    _CFSetTSD(0xFu, 0, 0);
    result = 0;
    goto LABEL_62;
  }

LABEL_5:
  v17 = xpc_dictionary_get_int64(a2, "CFPreferencesByteCountThreshold");
  [(CFPrefsPlistSource *)v14 handlePossibleOversizedMessage:v17 forWritingKeys:a4 values:a5 count:a6];
  if (object_getClass(a2) == MEMORY[0x1E69E9E98] || (result = xpc_dictionary_get_value(a2, "CFPreferencesErrorDescription")) != 0)
  {
    if (a2 == MEMORY[0x1E69E9E20])
    {
      [(CFPrefsPlistSource *)v14 writeFailedForKeys:a4 values:a5 count:a6];
      atomic_store(1u, (v14 + 105));
      if (handleErrorReply_toMessage_settingKeys_toValues_count_retryCount_retryContinuation__onceToken != -1)
      {
        [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
      }
    }

    else
    {
      if (object_getClass(a2) != v16)
      {
        [CFPrefsPlistSource handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:];
      }

      v18 = xpc_dictionary_get_int64(a2, "CFPreferencesErrorType");
      v19 = xpc_dictionary_get_string(a2, "CFPreferencesErrorDescription");
      v20 = [v14 copyOSLogDescription];
      if (xpc_dictionary_get_BOOL(a2, "CFPreferencesErrorClientFault"))
      {
        v21 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v21 = OS_LOG_TYPE_ERROR;
      }

      if (v18 == 1)
      {
        if (a6 < 1)
        {
          _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
          v39 = _CFPrefsClientLog();
          if (os_log_type_enabled(v39, v21))
          {
            *buf = 138543618;
            v53 = v20;
            v54 = 2082;
            v55 = v19;
            _os_log_impl(&dword_1830E6000, v39, v21, "Couldn't read values in %{public}@: %{public}s, detaching from cfprefsd", buf, 0x16u);
          }

          _CFSetTSD(0xFu, 0, 0);
        }

        else
        {
          Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
          v23 = a6;
          v24 = a4;
          do
          {
            if (*v24)
            {
              CFArrayAppendValue(Mutable, *v24);
            }

            ++v24;
            --v23;
          }

          while (v23);
          v25 = CFCopyDescription(Mutable);
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
          v26 = _CFPrefsClientLog();
          if (os_log_type_enabled(v26, v21))
          {
            *buf = 138543874;
            v53 = v25;
            v54 = 2114;
            v55 = v20;
            v56 = 2082;
            v57 = v19;
            _os_log_impl(&dword_1830E6000, v26, v21, "Couldn't write values for keys %{public}@ in %{public}@: %{public}s, detaching from cfprefsd", buf, 0x20u);
          }

          _CFSetTSD(0xFu, 0, 0);
          if (v25)
          {
            CFRelease(v25);
          }
        }

        [(CFPrefsPlistSource *)v14 writeFailedForKeys:a4 values:a5 count:a6];
        atomic_store(1u, (v14 + 105));
      }

      else
      {
        if (a6 < 1)
        {
          _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
          v40 = _CFPrefsClientLog();
          if (os_log_type_enabled(v40, v21))
          {
            *buf = 138543618;
            v53 = v20;
            v54 = 2082;
            v55 = v19;
            _os_log_impl(&dword_1830E6000, v40, v21, "Couldn't read values in %{public}@: %{public}s", buf, 0x16u);
          }

          _CFSetTSD(0xFu, 0, 0);
        }

        else
        {
          v31 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
          v32 = a6;
          v33 = a4;
          do
          {
            if (*v33)
            {
              CFArrayAppendValue(v31, *v33);
            }

            ++v33;
            --v32;
          }

          while (v32);
          v34 = CFCopyDescription(v31);
          if (v31)
          {
            CFRelease(v31);
          }

          _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
          v35 = _CFPrefsClientLog();
          if (os_log_type_enabled(v35, v21))
          {
            *buf = 138543874;
            v53 = v34;
            v54 = 2114;
            v55 = v20;
            v56 = 2082;
            v57 = v19;
            _os_log_impl(&dword_1830E6000, v35, v21, "Couldn't write values for keys %{public}@ in %{public}@: %{public}s", buf, 0x20u);
          }

          _CFSetTSD(0xFu, 0, 0);
          if (v34)
          {
            CFRelease(v34);
          }
        }

        [(CFPrefsPlistSource *)v14 writeFailedForKeys:a4 values:a5 count:a6];
      }

      CFRelease(v20);
    }

    if (a6 >= 1)
    {
      atomic_store(xpc_dictionary_get_uint64(a2, "CFPreferencesShmemState"), (v14 + 48));
    }

LABEL_61:
    result = 1;
  }

LABEL_62:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

void __81__CFPrefsPlistSource_handlePossibleOversizedMessage_forWritingKeys_values_count___block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"com.apple.CFPreferences.byteCountLimitReached", 0, 0, 1u);
}

void __105__CFPrefsPlistSource_handleErrorReply_toMessage_settingKeys_toValues_count_retryCount_retryContinuation___block_invoke()
{
  v0 = _CFPrefsClientLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __105__CFPrefsPlistSource_handleErrorReply_toMessage_settingKeys_toValues_count_retryCount_retryContinuation___block_invoke_cold_1();
  }
}

void __99__CFPrefsPlistSource_sendFullyPreparedMessage_toConnection_settingValues_forKeys_count_retryCount___block_invoke(uint64_t a1, xpc_connection_t connection)
{
  v15[10] = *MEMORY[0x1E69E9840];
  if (connection)
  {
    v4 = xpc_connection_send_message_with_reply_sync(connection, *(a1 + 32));
  }

  else
  {
    v4 = xpc_retain(MEMORY[0x1E69E9E20]);
  }

  v5 = v4;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__CFPrefsPlistSource_sendFullyPreparedMessage_toConnection_settingValues_forKeys_count_retryCount___block_invoke_2;
  v15[3] = &unk_1E6DD2BD8;
  v15[4] = v7;
  v15[5] = v6;
  v15[6] = connection;
  v15[7] = v9;
  v15[8] = v8;
  v15[9] = v10;
  [(CFPrefsPlistSource *)v6 handleErrorReply:v5 toMessage:v7 settingKeys:v8 toValues:v9 count:v10 retryCount:v11 retryContinuation:v15];
  if (object_getClass(v5) == MEMORY[0x1E69E9E80])
  {
    uint64 = xpc_dictionary_get_uint64(v5, "CFPreferencesShmemState");
    if (uint64)
    {
      v14 = atomic_load((*(a1 + 40) + 48));
      if (uint64 == v14 + 1)
      {
        atomic_store(uint64, (*(a1 + 40) + 48));
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)sendRequestNewDataMessage:(uint64_t)a3 toConnection:(uint64_t)a4 retryCount:(BOOL *)a5 error:
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (([CFPrefsPlistSource sendRequestNewDataMessage:a1 toConnection:a2 retryCount:a5 error:&description]& 1) == 0)
      {
        v10 = _os_activity_create(&dword_1830E6000, description, MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        os_activity_scope_enter(v10, &state);
        [(CFPrefsPlistSource *)a1 addPIDImpersonationIfNecessary:a2];
        description = 0;
        p_description = &description;
        v22 = 0x3052000000;
        v23 = __Block_byref_object_copy__7;
        v24 = __Block_byref_object_dispose__7;
        v25 = 0;
        v13 = MEMORY[0x1E69E9820];
        v14 = 3221225472;
        v15 = __78__CFPrefsPlistSource_sendRequestNewDataMessage_toConnection_retryCount_error___block_invoke;
        v16 = &unk_1E6DD2280;
        v18 = a2;
        v19 = &description;
        v17 = a3;
        v11 = atomic_load((a1 + 113));
        if (v11 & 1) != 0 || (_CFPrefsDirectMode())
        {
          CFPREFERENCES_IS_WAITING_FOR_DIRECT_CFPREFSD(*(a1 + 8), &v13);
        }

        else if (xpc_user_sessions_enabled() && (CFEqual(*(a1 + 64), @"kCFPreferencesAnyUser") || !xpc_user_sessions_get_session_uid() && CFEqual(*(a1 + 64), @"kCFPreferencesCurrentUser")))
        {
          CFPREFERENCES_IS_WAITING_FOR_SYSTEM_CFPREFSD(*(a1 + 8), &v13);
        }

        else
        {
          CFPREFERENCES_IS_WAITING_FOR_USER_CFPREFSD(*(a1 + 8), &v13);
        }

        [a1 handleReply:p_description[5] toRequestNewDataMessage:a2 onConnection:a3 retryCount:a4 error:{a5, v13, v14, v15, v16, v17, v18, v19, description}];
        xpc_release(p_description[5]);

        _Block_object_dispose(&description, 8);
        os_activity_scope_leave(&state);
      }
    }

    else
    {
      *a5 = 1;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)createRequestNewContentMessageForDaemon:(int)a3
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->super._lock);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  v5 = atomic_load(&self->_directMode);
  if (v5 & 1) != 0 || (_CFPrefsDirectMode())
  {
    v6 = 3;
  }

  else if (xpc_user_sessions_enabled() && (CFEqual(self->userIdentifier, @"kCFPreferencesAnyUser") || !xpc_user_sessions_get_session_uid() && CFEqual(self->userIdentifier, @"kCFPreferencesCurrentUser")))
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6 == a3)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __62__CFPrefsPlistSource_createRequestNewContentMessageForDaemon___block_invoke;
    v17 = &unk_1E6DD2C50;
    v18 = self;
    v19 = &v20;
    v7 = atomic_load(&self->_volatile);
    if ((v7 & 1) == 0)
    {
      v8 = atomic_load(&self->super.shmemEntry);
      if (!v8 || (v9 = atomic_load(v8), v10 = atomic_load(&sentinelGeneration), v9 != v10) && (v11 = atomic_load(&self->super.lastKnownShmemState), v9 != v11))
      {
        os_unfair_lock_assert_owner(&self->super._lock);
        v16(v15);
      }
    }
  }

  v12 = v21[5];
  _Block_object_dispose(&v20, 8);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void __62__CFPrefsPlistSource_createRequestNewContentMessageForDaemon___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (([(CFPrefsPlistSource *)*(a1 + 32) volatilizeIfInvalidHomeDir]& 1) == 0)
  {
    v3 = [*(a1 + 32) createSynchronizeMessage];
    v5 = *(a1 + 40);
    v4 = a1 + 40;
    *(*(v5 + 8) + 40) = v3;
    v6 = *(*(*v4 + 8) + 40);
    if (v6)
    {
      __62__CFPrefsPlistSource_createRequestNewContentMessageForDaemon___block_invoke_cold_1(v2, v6, v4);
    }
  }
}

void __44__CFPrefsPlistSource_requestPlistValidation__block_invoke(uint64_t a1, _xpc_connection_s *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) createSynchronizeMessage];
  if (v4)
  {
    v6 = v4;
    if ([(CFPrefsPlistSource *)*(a1 + 32) attachAccessTokenToMessage:v4 accessType:0])
    {
      [(CFPrefsPlistSource *)*(a1 + 32) addPIDImpersonationIfNecessary:v6];
      xpc_dictionary_set_BOOL(v6, "ValidatePlist", 1);
      _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
      v7 = _CFPrefsClientLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_1830E6000, v7, OS_LOG_TYPE_INFO, "Requesting validation of plist after invalid data detected", v9, 2u);
      }

      _CFSetTSD(0xFu, 0, 0);
      global_queue = dispatch_get_global_queue(17, 0);
      xpc_connection_send_message_with_reply(a2, v6, global_queue, &__block_literal_global_53);
    }

    xpc_release(v6);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleReply:(id)a3 toRequestNewDataMessage:(id)a4 onConnection:(id)a5 retryCount:(int)a6 error:(BOOL *)a7
{
  v84 = a7;
  v89 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->super._lock);
  v12 = atomic_load(&self->super.shmemEntry);
  if (v12 || (string = xpc_dictionary_get_string(a3, "CFPreferencesShmemName")) == 0)
  {
LABEL_2:
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __88__CFPrefsPlistSource_handleReply_toRequestNewDataMessage_onConnection_retryCount_error___block_invoke;
    v86[3] = &unk_1E6DD2C98;
    v86[4] = a4;
    v86[5] = self;
    v86[6] = a5;
    v86[7] = v84;
    if (([(CFPrefsPlistSource *)self handleErrorReply:a3 toMessage:a4 settingKeys:0 toValues:0 count:0 retryCount:a6 retryContinuation:v86]& 1) != 0)
    {
      goto LABEL_152;
    }

    atomic_store(xpc_dictionary_get_uint64(a3, "CFPreferencesShmemState"), &self->super.lastKnownShmemState);
    value = xpc_dictionary_get_value(a3, "CFPreferencesPropertyList");
    v13 = xpc_dictionary_dup_fd(a3, "PlistFD");
    v14 = xpc_dictionary_get_value(a3, "PlistDiff");
    v15 = xpc_dictionary_get_value(a3, "CFPreferencesValidationPropertyList");
    if (v14 | v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = dyld_program_sdk_at_least();
    }

    if (v13 != -1)
    {
      memset(&v88, 0, sizeof(v88));
      if (fstat(v13, &v88))
      {
        _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
        v22 = _CFPrefsClientLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = __error();
          [CFPrefsPlistSource handleReply:v23 toRequestNewDataMessage:v87 onConnection:v22 retryCount:? error:?];
        }

        _CFSetTSD(0xFu, 0, 0);
        goto LABEL_17;
      }

      st_size = v88.st_size;
      if (!_plistSizeIsAppropriateToRead(v88.st_size))
      {
LABEL_17:
        v24 = 0;
        Mutable = 0;
LABEL_18:
        close(v13);
        goto LABEL_19;
      }

      v30 = mmap(0, st_size, 1, 2, v13, 0);
      if (v30 == -1)
      {
        v42 = *__error();
        v43 = [(CFPrefsSource *)self copyOSLogDescription];
        _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
        v44 = _CFPrefsClientLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [CFPrefsPlistSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
        }

        _CFSetTSD(0xFu, 0, 0);
        CFRelease(v43);
        goto LABEL_17;
      }

      v87[0] = 0;
      v82 = CFDataCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, v30, st_size, &__kCFAllocatorNull);
      v31 = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, v82, v16 ^ 1u, 0, v87);
      Mutable = v31;
      if (v31)
      {
        if (CFGetTypeID(v31) == 18)
        {
          v24 = 1;
LABEL_81:
          if (v82)
          {
            CFRelease(v82);
          }

          munmap(v30, st_size);
          goto LABEL_18;
        }

        v81 = [(CFPrefsSource *)self copyOSLogDescription];
        _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
        v46 = _CFPrefsClientLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          [CFPrefsPlistSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
        }

        _CFSetTSD(0xFu, 0, 0);
        CFRelease(v81);
      }

      else
      {
        v81 = [(CFPrefsSource *)self copyOSLogDescription];
        v80 = &__kCFBooleanTrue;
        _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
        v45 = _CFPrefsClientLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [CFPrefsPlistSource handleReply:v81 toRequestNewDataMessage:v87 onConnection:? retryCount:? error:?];
        }

        _CFSetTSD(0xFu, 0, 0);
        if (os_variant_has_internal_diagnostics())
        {
          v79 = os_log_create("com.apple.defaults", "diagnostics");
          _CFSetTSD(0xFu, v80, 0);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            [CFPrefsPlistSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
          }

          _CFSetTSD(0xFu, 0, 0);
        }

        CFRelease(v81);
        if (v87[0])
        {
          CFRelease(v87[0]);
        }
      }

      v24 = 0;
      goto LABEL_81;
    }

    if (!value)
    {
      Mutable = 0;
      v24 = 1;
      goto LABEL_19;
    }

    if (object_getClass(value) != MEMORY[0x1E69E9E70] || (length = xpc_data_get_length(value), !_plistSizeIsAppropriateToRead(length)))
    {
      Mutable = 0;
      goto LABEL_126;
    }

    *&v88.st_dev = 0;
    bytes_ptr = xpc_data_get_bytes_ptr(value);
    v39 = CFDataCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, bytes_ptr, length, &__kCFAllocatorNull);
    v40 = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, v39, v16 ^ 1u, 0, &v88);
    Mutable = v40;
    if (v39)
    {
      v41 = v40 == 0;
    }

    else
    {
      v41 = 0;
    }

    v24 = !v41;
    if (v41)
    {
      v82 = [(CFPrefsSource *)self copyOSLogDescription];
      v81 = &__kCFBooleanTrue;
      _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
      v47 = _CFPrefsClientLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [CFPrefsPlistSource handleReply:v82 toRequestNewDataMessage:&v88.st_dev onConnection:? retryCount:? error:?];
      }

      _CFSetTSD(0xFu, 0, 0);
      CFRelease(v82);
      [(CFPrefsPlistSource *)self requestPlistValidation];
      if (os_variant_has_internal_diagnostics())
      {
        v48 = os_log_create("com.apple.defaults", "diagnostics");
        v80 = v39;
        _CFSetTSD(0xFu, v81, 0);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          [CFPrefsPlistSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
        }

        _CFSetTSD(0xFu, 0, 0);

        v39 = v80;
      }
    }

    else if (!v39)
    {
      goto LABEL_91;
    }

    CFRelease(v39);
LABEL_91:
    if (*&v88.st_dev)
    {
      CFRelease(*&v88.st_dev);
    }

    if (Mutable && CFGetTypeID(Mutable) != 18)
    {
      v49 = [(CFPrefsSource *)self copyOSLogDescription];
      _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
      v50 = _CFPrefsClientLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        [CFPrefsPlistSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
      }

      _CFSetTSD(0xFu, 0, 0);
      CFRelease(v49);
      [(CFPrefsPlistSource *)self requestPlistValidation];
      v24 = 0;
    }

LABEL_19:
    if (!v24 || !v14)
    {
      if (v15)
      {
        v28 = v24;
      }

      else
      {
        v28 = 0;
      }

      if (v28)
      {
LABEL_103:
        if (object_getClass(v15) == MEMORY[0x1E69E9E70])
        {
          v51 = xpc_data_get_length(v15);
          if (v51 <= 0x7FFFFFFFFFFFFFFELL)
          {
            *&v88.st_dev = 0;
            v52 = xpc_data_get_bytes_ptr(v15);
            v84 = &__kCFAllocatorSystemDefault;
            v53 = CFDataCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, v52, v51, &__kCFAllocatorNull);
            v54 = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, v53, 0, 0, &v88);
            v55 = v54;
            if (!v54 || CFGetTypeID(v54) != 18)
            {
              v56 = [(CFPrefsSource *)self copyOSLogDescription];
              _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
              v57 = _CFPrefsClientLog();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                [CFPrefsPlistSource handleReply:v56 toRequestNewDataMessage:&v88.st_dev onConnection:? retryCount:? error:?];
              }

              _CFSetTSD(0xFu, 0, 0);
              CFRelease(v56);
              if (*&v88.st_dev)
              {
                CFRelease(*&v88.st_dev);
              }
            }

            if (v53)
            {
              CFRelease(v53);
            }

            if (v55)
            {
              if (CFDictionaryGetCount(v55) >= 1)
              {
                if (!Mutable)
                {
                  Mutable = CFDictionaryCreateMutable(v84, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                }

                v85[0] = MEMORY[0x1E69E9820];
                v85[1] = 3221225472;
                v85[2] = __88__CFPrefsPlistSource_handleReply_toRequestNewDataMessage_onConnection_retryCount_error___block_invoke_62;
                v85[3] = &unk_1E6DD2CC0;
                v85[5] = Mutable;
                v85[6] = v55;
                v85[4] = self;
                CFDictionaryApplyFunction(v55, applyDictBlock, v85);
              }

              CFRelease(v55);
            }

            goto LABEL_119;
          }
        }

LABEL_126:
        v62 = [(CFPrefsSource *)self copyOSLogDescription];
        _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
        v63 = _CFPrefsClientLog();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          [CFPrefsPlistSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
        }

        _CFSetTSD(0xFu, 0, 0);
        if (v62)
        {
          CFRelease(v62);
        }

        *v84 = 1;
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        goto LABEL_152;
      }

      if (!v24)
      {
        goto LABEL_126;
      }

LABEL_119:
      v58 = _CFPrefsClientLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        v59 = [(CFPrefsSource *)self copyOSLogDescription];
        v60 = v13 == -1;
        if (!value)
        {
          v60 = 0;
        }

        if (v60)
        {
          v61 = "a new base plist";
        }

        else if (self->super._dict)
        {
          v61 = "the same base plist";
        }

        else
        {
          v61 = "an empty base plist";
        }

        _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
        v64 = _CFPrefsClientLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          v75 = "no additional changes from the base plist";
          v88.st_dev = 138543874;
          *&v88.st_mode = v59;
          WORD2(v88.st_ino) = 2080;
          if (v14)
          {
            v75 = "a diff relative to the base plist";
          }

          *(&v88.st_ino + 6) = v61;
          HIWORD(v88.st_gid) = 2080;
          *&v88.st_rdev = v75;
          _os_log_debug_impl(&dword_1830E6000, v64, OS_LOG_TYPE_DEBUG, "%{public}@ loaded: %s and %s", &v88, 0x20u);
        }

        _CFSetTSD(0xFu, 0, 0);
        CFRelease(v59);
      }

      dict = self->super._dict;
      if (dict)
      {
        CFRelease(dict);
      }

      if (((Mutable != 0) & v16) == 1)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, Mutable);
        CFRelease(Mutable);
        Mutable = MutableCopy;
      }

      if (Mutable)
      {
        Count = CFDictionaryGetCount(Mutable);
        v69 = Count;
        if (Count >> 60)
        {
          v76 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", Count);
          v77 = [NSException exceptionWithName:@"NSGenericException" reason:v76 userInfo:0];
          CFRelease(v76);
          objc_exception_throw(v77);
        }

        if (Count <= 1)
        {
          Count = 1;
        }

        v70 = MEMORY[0x1EEE9AC00](Count, v68);
        v72 = (&v78 - v71);
        *&v88.st_dev = 0;
        if (v69 >= 0x101)
        {
          v72 = _CFCreateArrayStorage(v70, 0, &v88);
          v73 = v72;
        }

        else
        {
          v73 = 0;
        }

        CFDictionaryGetKeysAndValues(Mutable, v72, 0);
        for (; v69; --v69)
        {
          if (([(CFPrefsSource *)self validateValue:*v72 forKey:Mutable inDict:0 forWriting:?]& 1) == 0)
          {
            CFDictionaryRemoveValue(Mutable, *v72);
          }

          ++v72;
        }

        free(v73);
      }

      self->super._dict = Mutable;
      atomic_fetch_add(&self->super._generationCount, 1uLL);
      goto LABEL_152;
    }

    if (object_getClass(v14) != MEMORY[0x1E69E9E50])
    {
LABEL_22:
      v26 = [(CFPrefsSource *)self copyOSLogDescription];
      _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
      v27 = _CFPrefsClientLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [CFPrefsPlistSource handleReply:toRequestNewDataMessage:onConnection:retryCount:error:];
      }

      _CFSetTSD(0xFu, 0, 0);
      CFRelease(v26);
      goto LABEL_126;
    }

    v34 = xpc_array_get_count(v14);
    if ((v34 & 1) != 0 || Mutable)
    {
      if (v34)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v35 = self->super._dict;
      if (v34)
      {
        if (v35)
        {
          v36 = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v35);
        }

        else
        {
          v36 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        goto LABEL_101;
      }

      if (v35)
      {
        v36 = CFRetain(self->super._dict);
LABEL_101:
        Mutable = v36;
        goto LABEL_102;
      }

      Mutable = 0;
    }

LABEL_102:
    _CFPrefsApplyChangesQueueToDictionary(v14, Mutable);
    if (v15)
    {
      goto LABEL_103;
    }

    goto LABEL_119;
  }

  v18 = string;
  v19 = atomic_load(&self->_directMode);
  if (v19 & 1) != 0 || (_CFPrefsDirectMode())
  {
    v20 = 3;
  }

  else if (xpc_user_sessions_enabled() && (CFEqual(self->userIdentifier, @"kCFPreferencesAnyUser") || !xpc_user_sessions_get_session_uid() && CFEqual(self->userIdentifier, @"kCFPreferencesCurrentUser")))
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  v21 = [(_CFXPreferences *)self->super._containingPreferences shmemForRole:v20 name:v18];
  if (v21)
  {
    atomic_store(v21 + 4 * xpc_dictionary_get_int64(a3, "CFPreferencesShmemIndex"), &self->super.shmemEntry);
    goto LABEL_2;
  }

  v32 = [(CFPrefsSource *)self copyOSLogDescription];
  _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
  v33 = _CFPrefsClientLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v88.st_dev = 67109634;
    *&v88.st_mode = v20;
    LOWORD(v88.st_ino) = 2082;
    *(&v88.st_ino + 2) = v18;
    HIWORD(v88.st_uid) = 2114;
    *&v88.st_gid = v32;
    _os_log_error_impl(&dword_1830E6000, v33, OS_LOG_TYPE_ERROR, "going volatile, because unable to obtain shmem entry for role: %d name: %{public}s. %{public}@", &v88, 0x1Cu);
  }

  _CFSetTSD(0xFu, 0, 0);
  atomic_store(1u, &self->_volatile);
  *v84 = 1;
  if (v32)
  {
    CFRelease(v32);
  }

LABEL_152:
  v74 = *MEMORY[0x1E69E9840];
}

void __88__CFPrefsPlistSource_handleReply_toRequestNewDataMessage_onConnection_retryCount_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (byte_1EA84A4F4)
  {
    xpc_dictionary_set_BOOL(*(a1 + 32), "PreviousMessageInjectedFailure", 1);
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);

  [(CFPrefsPlistSource *)v4 sendRequestNewDataMessage:v5 toConnection:v6 retryCount:a2 error:v7];
}

void __88__CFPrefsPlistSource_handleReply_toRequestNewDataMessage_onConnection_retryCount_error___block_invoke_62(uint64_t a1, CFStringRef theString, const void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!CFStringHasPrefix(theString, @"Sig_"))
  {
    Value = CFDictionaryGetValue(*(a1 + 40), theString);
    v7 = Value;
    if (!Value || !CFEqual(Value, a3))
    {
      v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%s%@", "Sig_", theString);
      v9 = CFDictionaryGetValue(*(a1 + 48), v8);
      CFRelease(v8);
      v10 = [*(a1 + 32) copyOSLogDescription];
      _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
      v11 = _CFPrefsClientLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544387;
        v14 = v10;
        v15 = 2114;
        v16 = theString;
        v17 = 2113;
        v18 = v7;
        v19 = 2113;
        v20 = a3;
        v21 = 2114;
        v22 = v9;
        _os_log_error_impl(&dword_1830E6000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Value for key %{public}@ was %{private}@. Expected %{private}@ (%{public}@)", buf, 0x34u);
      }

      _CFSetTSD(0xFu, 0, 0);
      CFRelease(v10);
      CFDictionarySetValue(*(a1 + 40), theString, a3);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

xpc_object_t __78__CFPrefsPlistSource_sendRequestNewDataMessage_toConnection_retryCount_error___block_invoke(uint64_t a1)
{
  result = xpc_connection_send_message_with_reply_sync(*(a1 + 32), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (void)alreadylocked_clearCache
{
  os_unfair_lock_assert_owner(&self->super._lock);
  dict = self->super._dict;
  if (dict && CFDictionaryGetCount(dict) && !atomic_load(&self->_locallySetDict))
  {
    CFRelease(self->super._dict);
    self->super._dict = 0;
    atomic_store(0xFFFFFFFFFFFFFFFFLL, &self->super._generationCount);
    atomic_store(0, &self->super.lastKnownShmemState);
    atomic_store(0, &self->super.shmemEntry);
  }
}

- (int64_t)alreadylocked_generationCount
{
  v14 = *MEMORY[0x1E69E9840];
  if (byte_1EA84A4F1)
  {
    [(CFPrefsPlistSource *)self alreadylocked_clearCache];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __alreadylocked_requestNewDataIfStale_block_invoke;
  v12 = &unk_1E6D81EC0;
  v13 = self;
  v3 = atomic_load(&self->_volatile);
  if ((v3 & 1) == 0)
  {
    v4 = atomic_load(&self->super.shmemEntry);
    if (!v4 || (v5 = atomic_load(v4), v6 = atomic_load(&sentinelGeneration), v5 != v6) && (v7 = atomic_load(&self->super.lastKnownShmemState), v5 != v7))
    {
      os_unfair_lock_assert_owner(&self->super._lock);
      v11(v10);
    }
  }

  result = atomic_load(&self->super._generationCount);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (int64_t)generationCount
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->super._lock);
  if (byte_1EA84A4F1)
  {
    [(CFPrefsPlistSource *)self alreadylocked_clearCache];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __alreadylocked_requestNewDataIfStale_block_invoke;
  v12 = &unk_1E6D81EC0;
  v13 = self;
  v3 = atomic_load(&self->_volatile);
  if ((v3 & 1) == 0)
  {
    v4 = atomic_load(&self->super.shmemEntry);
    if (!v4 || (v5 = atomic_load(v4), v6 = atomic_load(&sentinelGeneration), v5 != v6) && (v7 = atomic_load(&self->super.lastKnownShmemState), v5 != v7))
    {
      os_unfair_lock_assert_owner(&self->super._lock);
      v11(v10);
    }
  }

  os_unfair_lock_unlock(&self->super._lock);
  result = atomic_load(&self->super._generationCount);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)alreadylocked_createObserverUpdateMessageWithOperation:(int)a3 forRole:(int *)a4
{
  if (!a3)
  {
    return 0;
  }

  v7 = [(CFPrefsPlistSource *)self createSynchronizeMessage];
  xpc_dictionary_set_int64(v7, "CFPreferencesOperation", a3);
  v8 = atomic_load(&self->_directMode);
  if (v8 & 1) != 0 || (_CFPrefsDirectMode())
  {
    v9 = 3;
  }

  else if (xpc_user_sessions_enabled() && (CFEqual(self->userIdentifier, @"kCFPreferencesAnyUser") || !xpc_user_sessions_get_session_uid() && CFEqual(self->userIdentifier, @"kCFPreferencesCurrentUser")))
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  *a4 = v9;
  return v7;
}

- (void)setUserIdentifier:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 64);
    if (v4 != cf1)
    {
      if (cf1)
      {
        v5 = @"kCFPreferencesAnyUser";
        if (CFEqual(cf1, @"kCFPreferencesAnyUser") || (v5 = @"kCFPreferencesCurrentUser", CFEqual(cf1, @"kCFPreferencesCurrentUser")))
        {
          *(a1 + 64) = v5;
          if (!v4)
          {
            return;
          }
        }

        else
        {
          *(a1 + 64) = CFStringCreateCopy(&__kCFAllocatorSystemDefault, cf1);
          if (!v4)
          {
            return;
          }
        }
      }

      else
      {
        *(a1 + 64) = 0;
        if (!v4)
        {
          return;
        }
      }

      CFRelease(v4);
    }
  }
}

- (void)setContainer:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 80);
    if (v3 != cf)
    {
      v4 = cf ? CFRetain(cf) : 0;
      *(a1 + 80) = v4;
      if (v3)
      {

        CFRelease(v3);
      }
    }
  }
}

- (uint64_t)_logLoudlyAboutSettingKey:(uint64_t)result
{
  if (result)
  {
    v1 = OUTLINED_FUNCTION_6_5(result, 105);
    if (v2)
    {
      return 0;
    }

    OUTLINED_FUNCTION_6_5(v1, 106);
    if (v4)
    {
      return 0;
    }

    else
    {
      v5 = v3;
      return CFEqual(v3, @"AppleLanguages") || CFEqual(v5, @"AppleLocale") != 0;
    }
  }

  return result;
}

- (void)goVolatileAfterTryingToWriteKeys:(__CFString *)a3 values:(uint64_t)a4 count:
{
  if (a1)
  {
    [(CFPrefsPlistSource *)a1 writeFailedForKeys:a2 values:a3 count:a4];
    OUTLINED_FUNCTION_4_6((a1 + 105));
  }
}

- (uint64_t)_shouldEnableDirectMode
{
  if (a1)
  {
    OUTLINED_FUNCTION_6_5(a1, 112);
    if ((v2 & 1) != 0 && (_CFPrefsDirectMode() & 1) == 0)
    {
      v4 = atomic_load((a1 + 113));
      v3 = v4 ^ 1;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)transitionIntoDirectModeIfNeededWithRetryBlock:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = atomic_load(&self->_byteCountLimitExceeded);
    if ((v4 & 1) != 0 && (_CFPrefsDirectMode() & 1) == 0)
    {
      v6 = atomic_load(&self->_directMode);
      if ((v6 & 1) == 0)
      {
        v7 = [(CFPrefsSource *)self copyOSLogDescription];
        v8 = _CFPrefsClientLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = 138543362;
          v11 = v7;
          _os_log_error_impl(&dword_1830E6000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Transitioning into direct mode", &v10, 0xCu);
        }

        CFRelease(v7);
        os_unfair_lock_lock(&self->super._lock);
        [(CFPrefsPlistSource *)self alreadylocked_clearCache];
        atomic_store(0, &self->_byteCountLimitExceeded);
        OUTLINED_FUNCTION_4_6(&self->_directMode);
        os_unfair_lock_unlock(&self->super._lock);
        (*(a3 + 2))(a3);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)goReadOnlyAfterTryingToWriteKeys:(__CFString *)a3 values:(uint64_t)a4 count:
{
  if (a1)
  {
    [(CFPrefsPlistSource *)a1 writeFailedForKeys:a2 values:a3 count:a4];
    OUTLINED_FUNCTION_4_6((a1 + 106));
  }
}

- (uint64_t)handleErrorReply:(void *)a3 toMessage:(int)a4 retryCount:(uint64_t)a5 retryContinuation:
{
  if (result)
  {
    return [(CFPrefsPlistSource *)result handleErrorReply:a2 toMessage:a3 settingKeys:0 toValues:0 count:0 retryCount:a4 retryContinuation:a5];
  }

  return result;
}

- (void)handlePossibleOversizedMessage:(const void *)a3 forWritingKeys:(const void *)a4 values:(CFIndex)a5 count:
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 == 1)
    {
      v12 = _CFPrefsClientLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = [a1 copyOSLogDescription];
        v15 = [a1 alreadylocked_copyDictionary];
        v16 = OUTLINED_FUNCTION_11_1([_CFPrefsOversizedPlistDescription alloc]);
        v17 = _CFPrefsClientLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          _CFProcessNameString();
          v19 = 138544642;
          v20 = v14;
          OUTLINED_FUNCTION_8_3();
          v21 = 3145728;
          v22 = 1026;
          v23 = 0x400000;
          v24 = 2082;
          v25 = "cause performance problems or lose data";
          v26 = 2114;
          v27 = v18;
          v28 = 2112;
          v29 = v16;
          _os_log_impl(&dword_1830E6000, v17, OS_LOG_TYPE_INFO, "%{public}@: Storing >= %d bytes of data in CFPreferences/NSUserDefaults. If this exceeds %{public}d, it may %{public}s. This is a bug in %{public}@ or a library it uses.\n%@", &v19, 0x36u);
        }

        CFRelease(v14);
        if (v15)
        {
          CFRelease(v15);
        }
      }

      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_50);
    }

    else if (a2 == 2)
    {
      v9 = atomic_load((a1 + 113));
      if (v9 & 1) != 0 || (_CFPrefsDirectMode())
      {
        v10 = [a1 copyOSLogDescription];
        v11 = _CFPrefsClientLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v19 = 138543618;
          v20 = v10;
          OUTLINED_FUNCTION_8_3();
          v21 = 0x400000;
          _os_log_debug_impl(&dword_1830E6000, v11, OS_LOG_TYPE_DEBUG, "%{public}@: Attempt to store >= %d bytes of data in CFPreferences/NSUserDefaults was allowed by virtue of direct mode", &v19, 0x12u);
        }

        CFRelease(v10);
      }

      else
      {
        if (xpc_user_sessions_enabled() && !CFEqual(*(a1 + 64), @"kCFPreferencesAnyUser") && !xpc_user_sessions_get_session_uid())
        {
          CFEqual(*(a1 + 64), @"kCFPreferencesCurrentUser");
        }

        __CFPREFERENCES_HAS_DETECTED_THIS_APP_TRYING_TO_STORE_TOO_MUCH_DATA__(a1, a3, a4, a5);
        OUTLINED_FUNCTION_4_6((a1 + 112));
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)attachAccessTokenToMessage:(int)a3 accessType:
{
  if (result)
  {
    v3 = result;
    v4 = atomic_load((result + 96));
    result = 1;
    if (v4 && !xpc_dictionary_get_value(xdict, "CFPreferencesAccessToken"))
    {
      v7 = atomic_load((v3 + 96));
      v8 = a3 ? open(v7, 514, 384) : open(v7, 0);
      v9 = v8;
      if (v8 < 0)
      {
        return 0;
      }

      xpc_dictionary_set_fd(xdict, "CFPreferencesAccessToken", v8);
      close(v9);
      if (byte_1EA84A4F8)
      {
        return 0;
      }
    }
  }

  return result;
}

- (void)addPIDImpersonationIfNecessary:(void *)a1
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    memset(v7, 0, sizeof(v7));
    if (memcmp(&_CFPrefsAuditTokenToImpersonate, v7, 0x20uLL))
    {
      v4 = [a1 domainIdentifier];
      CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(@"kCFPreferencesCurrentApplication");
      if (CFEqual(v4, CacheStringForBundleID))
      {
        xpc_dictionary_set_data(a2, "CFPreferencesAuditTokenToImpersonate", &_CFPrefsAuditTokenToImpersonate, 0x20uLL);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)sendFullyPreparedMessage:(xpc_connection_t)connection toConnection:(uint64_t)a4 settingValues:(uint64_t)a5 forKeys:(uint64_t)a6 count:(int)a7 retryCount:
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __99__CFPrefsPlistSource_sendFullyPreparedMessage_toConnection_settingValues_forKeys_count_retryCount___block_invoke;
    v14[3] = &unk_1E6DD2C00;
    v14[4] = a2;
    v14[5] = a1;
    v14[6] = a5;
    v14[7] = a4;
    v14[8] = a6;
    v15 = a7;
    if (connection)
    {
      __99__CFPrefsPlistSource_sendFullyPreparedMessage_toConnection_settingValues_forKeys_count_retryCount___block_invoke(v14, connection);
    }

    else
    {
      v8 = *(a1 + 8);
      v9 = atomic_load((a1 + 113));
      if (v9 & 1) != 0 || (_CFPrefsDirectMode())
      {
        v10 = 3;
      }

      else if (xpc_user_sessions_enabled() && ((v12 = OUTLINED_FUNCTION_9_2(), CFEqual(v12, @"kCFPreferencesAnyUser")) || !xpc_user_sessions_get_session_uid() && (v13 = OUTLINED_FUNCTION_9_2(), CFEqual(v13, @"kCFPreferencesCurrentUser"))))
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      -[_CFXPreferences withConnectionForRole:andUserIdentifier:performBlock:](v8, v10, [a1 userIdentifier], v14);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __99__CFPrefsPlistSource_sendFullyPreparedMessage_toConnection_settingValues_forKeys_count_retryCount___block_invoke_2(uint64_t a1)
{
  v2 = xpc_copy(*(a1 + 32));
  v3 = v2;
  if (byte_1EA84A4F4)
  {
    xpc_dictionary_set_BOOL(v2, "PreviousMessageInjectedFailure", 1);
  }

  v4 = [(CFPrefsPlistSource *)*(a1 + 40) attachAccessTokenToMessage:v3 accessType:1];
  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    [CFPrefsPlistSource sendFullyPreparedMessage:v3 toConnection:*(a1 + 48) settingValues:? forKeys:? count:? retryCount:?];
  }

  else if (v5)
  {
    [(CFPrefsPlistSource *)*(a1 + 40) writeFailedForKeys:*(a1 + 56) values:*(a1 + 72) count:?];
    OUTLINED_FUNCTION_4_6((v5 + 106));
  }

  xpc_release(v3);
}

- (void)requestPlistValidation
{
  v10[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = atomic_load(requestInvalidPropertyListDeletion);
    if (v1)
    {
      v3 = a1[1];
      OUTLINED_FUNCTION_6_5(a1, 113);
      if (v4 & 1) != 0 || (_CFPrefsDirectMode())
      {
        v5 = 3;
      }

      else if (xpc_user_sessions_enabled() && ((v8 = OUTLINED_FUNCTION_9_2(), CFEqual(v8, @"kCFPreferencesAnyUser")) || !xpc_user_sessions_get_session_uid() && (v9 = OUTLINED_FUNCTION_9_2(), CFEqual(v9, @"kCFPreferencesCurrentUser"))))
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      v6 = [a1 userIdentifier];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __44__CFPrefsPlistSource_requestPlistValidation__block_invoke;
      v10[3] = &unk_1E6DD1D00;
      v10[4] = a1;
      [(_CFXPreferences *)v3 withConnectionForRole:v5 andUserIdentifier:v6 performBlock:v10];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)setDomainIdentifier:(uint64_t)a3 .cold.2(__CFString *cf, uint64_t a2, uint64_t a3, __CFString *a4)
{
  if (@"kCFPreferencesAnyApplication" == cf || _CFPrefsGetCacheStringForBundleID(a4) == cf)
  {
    v7 = CFRetain(cf);
  }

  else
  {
    v7 = _CFStringCopyBundleUnloadingProtectedString(cf);
  }

  *(a2 + 72) = v7;
  return a3 == 0;
}

- (void)alreadylocked_setPrecopiedValues:forKeys:count:from:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_10_2(&dword_1830E6000, v0, v1, "setting %{private}@ in %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)createSynchronizeMessage
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v7 = 136446466;
  v8 = a1;
  v9 = 2082;
  error_description = container_get_error_description();
  _os_log_error_impl(&dword_1830E6000, a3, OS_LOG_TYPE_ERROR, "Could not lookup group container %{public}s: %{public}s", &v7, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_29();
  _os_log_debug_impl(&dword_1830E6000, v0, OS_LOG_TYPE_DEBUG, "Successfully created directory %{private}s. Retrying write.", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)handleErrorReply:(uint8_t *)buf toMessage:(os_log_t)log settingKeys:toValues:count:retryCount:retryContinuation:.cold.2(uint64_t a1, int *a2, uint8_t *buf, os_log_t log)
{
  v4 = *a2;
  *buf = 136380931;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v4;
  _os_log_error_impl(&dword_1830E6000, log, OS_LOG_TYPE_ERROR, "Failed to create directory %{private}s because of %{darwin.errno}d.", buf, 0x12u);
}

- (void)handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_1_21(&dword_1830E6000, v0, v1, "Failed to compute parent directory path for %{private}s.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:.cold.4()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_6();
  _os_log_error_impl(&dword_1830E6000, v1, OS_LOG_TYPE_ERROR, "cfprefsd required creation of a directory, but failed to provide the path.", v3, 2u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_7_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_7_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleErrorReply:toMessage:settingKeys:toValues:count:retryCount:retryContinuation:.cold.9()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_7_3();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleErrorReply:(char *)a3 toMessage:settingKeys:toValues:count:retryCount:retryContinuation:.cold.11(int a1, uint64_t a2, char *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = _CFPrefsClientLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1830E6000, v6, OS_LOG_TYPE_INFO, "cfprefsd crashed, retrying message", v9, 2u);
  }

  if (a1 <= 9)
  {
    (*(a2 + 16))(a2, (a1 + 1));
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  v8 = *MEMORY[0x1E69E9840];
}

void __105__CFPrefsPlistSource_handleErrorReply_toMessage_settingKeys_toValues_count_retryCount_retryContinuation___block_invoke_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_6();
  _os_log_error_impl(&dword_1830E6000, v1, OS_LOG_TYPE_ERROR, "Could not connect to cfprefsd. No CFPreferences/NSUserDefaults changes will be saved", v3, 2u);
  v2 = *MEMORY[0x1E69E9840];
}

- (uint64_t)sendRequestNewDataMessage:(uint64_t)a1 toConnection:(void *)a2 retryCount:(BOOL *)a3 error:(const char *)a4 .cold.1(uint64_t a1, void *a2, BOOL *a3, const char **a4)
{
  v7 = [(CFPrefsPlistSource *)a1 attachAccessTokenToMessage:a2 accessType:0];
  *a3 = !v7;
  if (!v7)
  {
    return 1;
  }

  v8 = atomic_load((a1 + 113));
  if (v8 & 1) != 0 || (_CFPrefsDirectMode())
  {
    v9 = "Loading Preferences From Direct CFPrefsD";
  }

  else if (xpc_user_sessions_enabled() && (CFEqual(*(a1 + 64), @"kCFPreferencesAnyUser") || !xpc_user_sessions_get_session_uid() && CFEqual(*(a1 + 64), @"kCFPreferencesCurrentUser")))
  {
    v9 = "Loading Preferences From System Session CFPrefsD";
  }

  else
  {
    v9 = "Loading Preferences From User Session CFPrefsD";
  }

  result = 0;
  *a4 = v9;
  return result;
}

void __62__CFPrefsPlistSource_createRequestNewContentMessageForDaemon___block_invoke_cold_1(_BOOL8 *a1, void *a2, uint64_t a3)
{
  if ([(CFPrefsPlistSource *)*a1 attachAccessTokenToMessage:a2 accessType:0])
  {
    v5 = *a1;
    v6 = *(*(*a3 + 8) + 40);

    [(CFPrefsPlistSource *)v5 addPIDImpersonationIfNecessary:v6];
  }
}

- (void)handleReply:(uint64_t)a1 toRequestNewDataMessage:(uint64_t *)a2 onConnection:retryCount:error:.cold.1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_2_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleReply:toRequestNewDataMessage:onConnection:retryCount:error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_1_21(&dword_1830E6000, v0, v1, "bad plist data: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleReply:toRequestNewDataMessage:onConnection:retryCount:error:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_1_21(&dword_1830E6000, v0, v1, "serialized plist for %{public}@ was not a dictionary", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleReply:(os_log_t)log toRequestNewDataMessage:onConnection:retryCount:error:.cold.4(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&dword_1830E6000, log, OS_LOG_TYPE_ERROR, "failed to lstat plist fd: %{darwin.errno}d.", buf, 8u);
}

- (void)handleReply:toRequestNewDataMessage:onConnection:retryCount:error:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_1_21(&dword_1830E6000, v0, v1, "plist read from disk for %{public}@ was not a dictionary", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleReply:(uint64_t)a1 toRequestNewDataMessage:(uint64_t *)a2 onConnection:retryCount:error:.cold.6(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_2_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleReply:toRequestNewDataMessage:onConnection:retryCount:error:.cold.7()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_1_21(&dword_1830E6000, v0, v1, "bad plist data: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleReply:toRequestNewDataMessage:onConnection:retryCount:error:.cold.8()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_2_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleReply:toRequestNewDataMessage:onConnection:retryCount:error:.cold.9()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_1_21(&dword_1830E6000, v0, v1, "plist diff for %{public}@ was invalid", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleReply:toRequestNewDataMessage:onConnection:retryCount:error:.cold.10()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_1_21(&dword_1830E6000, v0, v1, "A RequestNewData response gave an invalid plist. We'll return wrong data this time, but NOT going volatile. Sent a request to validate the plist in the daemon and remove it if invalid. %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleReply:(uint64_t)a1 toRequestNewDataMessage:(uint64_t *)a2 onConnection:retryCount:error:.cold.11(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_2_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

@end