@interface CFPrefsDaemon
+ (BOOL)_getUncanonicalizedSourcePath:(__CFString *)a3 withDomain:(__CFString *)a4 user:(int)a5 byHost:(const __CFString *)a6 containerPath:(int)a7 managed:(int)a8 managedUsesContainer:;
+ (CFStringRef)_copyUncanonicalizedSourcePathWithDomain:(__CFString *)a3 user:(int)a4 byHost:(const __CFString *)a5 containerPath:(int)a6 managed:(int)a7 managedUsesContainer:;
- (CFPDContainerSource)_createSourceWithDomain:(const void *)a3 user:(uint64_t)a4 container:(uint64_t)a5 byHost:(uint64_t)a6 managed:(uint64_t)a7 shmemIndex:;
- (os_unfair_lock_s)initWithRole:(int)a3 testMode:;
- (uint64_t)_initializeShmemPage:(uint64_t)result;
- (uint64_t)_setSource:(int)a3 isDead:;
- (uint64_t)getShmemName:(uint64_t)result bufLen:;
- (uint64_t)isInTestMode;
- (uint64_t)listener;
- (uint64_t)role;
- (uint64_t)shmem;
- (uint64_t)updateEntireShmem;
- (uint64_t)updateShmemForDomain:(uint64_t)result;
- (uint64_t)updateShmemIndex:(uint64_t)result;
- (uint64_t)userID;
- (void)handleAgentCheckInMessage:(uint64_t)a1;
- (void)handleFlushManagedMessage:(uint64_t)a3 replyHandler:;
- (void)handleFlushSourceForDomainMessage:(uint64_t)a1 replyHandler:;
- (void)handleMessage:(uint64_t)a3 fromPeer:(uint64_t)a4 replyHandler:;
- (void)handleMultiMessage:(uint64_t)a3 replyHandler:;
- (void)handleSimulateTimerSynchronizeForTesting;
- (void)handleSourceMessage:(uint64_t)a3 replyHandler:;
- (void)handleUserDeletedMessage:(uint64_t)a1 replyHandler:(void *)a2;
- (void)logDomainInconsistencyForProcess:(void *)a3 message:(void *)a4 source:;
- (void)synchronousWithSourceCache:(uint64_t)a1;
- (void)withAllKnownManagedSources:(uint64_t)a1;
- (void)withSnapshotOfSourcesForDomainIdentifier:(uint64_t)a3 performBlock:;
- (void)withSourceForDomain:(const __CFString *)a3 inContainer:(__CFString *)a4 user:(int)a5 byHost:(int)a6 managed:(int)a7 managedUsesContainer:(uint64_t)a8 cloudStoreEntitlement:(const void *)a9 cloudConfigurationPath:(uint64_t)a10 performWithSourceLock:(uint64_t)a11 afterReleasingSourceLock:;
@end

@implementation CFPrefsDaemon

- (uint64_t)shmem
{
  v3[5] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (isCFPrefsD == 1)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __22__CFPrefsDaemon_shmem__block_invoke;
      v3[3] = &unk_1E6D81EC0;
      v3[4] = result;
      if (shmem_onceToken != -1)
      {
        dispatch_once(&shmem_onceToken, v3);
      }
    }

    else
    {
      os_unfair_lock_lock(&shmem_directModeShmemLock);
      if (!*(v1 + 576))
      {
        [(CFPrefsDaemon *)v1 _initializeShmemPage:?];
      }

      os_unfair_lock_unlock(&shmem_directModeShmemLock);
    }

    result = *(v1 + 576);
    if (!result)
    {
      [CFPrefsDaemon shmem];
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)role
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)listener
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (void)withSnapshotOfSourcesForDomainIdentifier:(uint64_t)a3 performBlock:
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__CFPrefsDaemon_SourceSupport__withSnapshotOfSourcesForDomainIdentifier_performBlock___block_invoke;
    v8[3] = &unk_1E6DD18D0;
    v8[4] = &v9;
    v8[5] = &v13;
    v8[6] = a2;
    os_unfair_lock_lock((a1 + 48));
    (__86__CFPrefsDaemon_SourceSupport__withSnapshotOfSourcesForDomainIdentifier_performBlock___block_invoke)(v8, *(a1 + 32), *(a1 + 40));
    os_unfair_lock_unlock((a1 + 48));
    (*(a3 + 16))(a3, v14[3], v10[3]);
    v5 = v14[3];
    if (v5)
    {
      if (v10[3])
      {
        v6 = 0;
        do
        {
          CFRelease(*(v14[3] + 8 * v6++));
        }

        while (v6 < v10[3]);
        v5 = v14[3];
      }

      free(v5);
    }

    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

CFIndex __86__CFPrefsDaemon_SourceSupport__withSnapshotOfSourcesForDomainIdentifier_performBlock___block_invoke(int8x16_t *a1, CFSetRef theSet)
{
  v10 = *MEMORY[0x1E69E9840];
  result = CFSetGetCount(theSet);
  *(*(a1[2].i64[0] + 8) + 24) = result;
  v5 = *(*(a1[2].i64[0] + 8) + 24);
  if (v5)
  {
    *(*(a1[2].i64[1] + 8) + 24) = malloc_type_calloc(1uLL, 8 * v5, 0x80040B8603338uLL);
    *(*(a1[2].i64[0] + 8) + 24) = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __86__CFPrefsDaemon_SourceSupport__withSnapshotOfSourcesForDomainIdentifier_performBlock___block_invoke_2;
    v7[3] = &unk_1E6DD18A8;
    v9 = a1[3].i64[0];
    v8 = vextq_s8(a1[2], a1[2], 8uLL);
    result = CFSetApply(theSet, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __86__CFPrefsDaemon_SourceSupport__withSnapshotOfSourcesForDomainIdentifier_performBlock___block_invoke_2(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    if (!*(a1 + 48) || (result = CFEqual([a2 domain], *(a1 + 48)), result))
    {
      result = CFRetain(a2);
      *(*(*(*(a1 + 32) + 8) + 24) + 8 * (*(*(*(a1 + 40) + 8) + 24))++) = result;
    }
  }

  return result;
}

- (void)withAllKnownManagedSources:(uint64_t)a1
{
  v60 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v24 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v25 = &v24;
    v26 = 0x22010000000;
    v27 = &unk_1835A7D5B;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__CFPrefsDaemon_SourceSupport__withAllKnownManagedSources___block_invoke;
    v7[3] = &unk_1E6DD1920;
    v7[6] = &v12;
    v7[7] = &v8;
    v7[8] = &v16;
    v7[9] = &v24;
    v7[4] = a1;
    v7[5] = &v20;
    os_unfair_lock_lock((a1 + 48));
    (__59__CFPrefsDaemon_SourceSupport__withAllKnownManagedSources___block_invoke)(v7, *(a1 + 32), *(a1 + 40));
    os_unfair_lock_unlock((a1 + 48));
    (*(a2 + 16))(a2, v21[3], v13[3], v17[3], v9[3], v25 + 4);
    if (v21[3])
    {
      if (v13[3])
      {
        v4 = 0;
        do
        {
          CFRelease(*(v21[3] + 8 * v4++));
        }

        while (v4 < v13[3]);
      }

      if (v9[3])
      {
        v5 = 0;
        do
        {
          CFRelease(*(v17[3] + 8 * v5++));
        }

        while (v5 < v9[3]);
      }

      free(v21[3]);
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v8, 8);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v20, 8);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void *__59__CFPrefsDaemon_SourceSupport__withAllKnownManagedSources___block_invoke(void *a1, CFSetRef theSet)
{
  v12 = *MEMORY[0x1E69E9840];
  Count = CFSetGetCount(theSet);
  if (Count >= 1)
  {
    v5 = Count;
    *(*(a1[5] + 8) + 24) = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__CFPrefsDaemon_SourceSupport__withAllKnownManagedSources___block_invoke_2;
    v8[3] = &unk_1E6DD18F8;
    v9 = *(a1 + 5);
    v10 = a1[7];
    v11 = v5;
    CFSetApply(theSet, v8);
    *(*(a1[8] + 8) + 24) = *(*(a1[5] + 8) + 24) + 8 * v5 - 8 * *(*(a1[7] + 8) + 24);
  }

  result = memcpy((*(a1[9] + 8) + 32), (a1[4] + 56), 0x200uLL);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __59__CFPrefsDaemon_SourceSupport__withAllKnownManagedSources___block_invoke_2(void *a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a2 managed])
  {
    result = CFRetain(a2);
    v5 = *(*(a1[4] + 8) + 24);
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 24);
    *(v6 + 24) = v7 + 1;
    *(v5 + 8 * v7) = result;
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      result = [a2 managed];
      if (result)
      {
        ++*(*(a1[6] + 8) + 24);
        result = CFRetain(a2);
        *(*(*(a1[4] + 8) + 24) + 8 * (a1[7] - *(*(a1[6] + 8) + 24))) = result;
      }
    }
  }

  return result;
}

+ (BOOL)_getUncanonicalizedSourcePath:(__CFString *)a3 withDomain:(__CFString *)a4 user:(int)a5 byHost:(const __CFString *)a6 containerPath:(int)a7 managed:(int)a8 managedUsesContainer:
{
  objc_opt_self();
  if (a7)
  {
    PathForManagedBundleID = _CFPrefsGetPathForManagedBundleID(a3, a4, a8, a2);
  }

  else
  {
    PathForManagedBundleID = _CFPrefsGetPathForTriplet(a3, a4, a5, a6, a2);
  }

  if (!strncmp("/private/var/empty", a2, 0x12uLL) || !strncmp("/var/empty", a2, 0xAuLL))
  {
    v16 = strlen(a2);
    bzero(a2, v16);
    PathForManagedBundleID = 0;
  }

  if (!strncmp(a2, "/private", 8uLL))
  {
    v17 = strlen(a2);
    memmove(a2, a2 + 8, v17 - 7);
  }

  return PathForManagedBundleID;
}

+ (CFStringRef)_copyUncanonicalizedSourcePathWithDomain:(__CFString *)a3 user:(int)a4 byHost:(const __CFString *)a5 containerPath:(int)a6 managed:(int)a7 managedUsesContainer:
{
  v17 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  bzero(cStr, 0x402uLL);
  if ([CFPrefsDaemon _getUncanonicalizedSourcePath:a2 withDomain:a3 user:a4 byHost:a5 containerPath:a6 managed:a7 managedUsesContainer:?])
  {
    v13 = CFStringFileSystemEncoding();
    result = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, cStr, v13);
  }

  else
  {
    result = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)withSourceForDomain:(const __CFString *)a3 inContainer:(__CFString *)a4 user:(int)a5 byHost:(int)a6 managed:(int)a7 managedUsesContainer:(uint64_t)a8 cloudStoreEntitlement:(const void *)a9 cloudConfigurationPath:(uint64_t)a10 performWithSourceLock:(uint64_t)a11 afterReleasingSourceLock:
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a7 && (a6 & 1) == 0)
    {
      [CFPrefsDaemon withSourceForDomain:inContainer:user:byHost:managed:managedUsesContainer:cloudStoreEntitlement:cloudConfigurationPath:performWithSourceLock:afterReleasingSourceLock:];
    }

    v18 = 0;
    if (a2 && a4)
    {
      v19 = a5;
      if ([(CFPrefsDaemon *)a1 shmem])
      {
        v24 = a8;
        v20 = [CFPrefsDaemon _copyUncanonicalizedSourcePathWithDomain:a2 user:a4 byHost:v19 containerPath:a3 managed:a6 managedUsesContainer:a7];
        v18 = objc_alloc_init(CFPDSourceLookUpKey);
        if (a9)
        {
          v21 = CFRetain(a9);
        }

        else
        {
          v21 = 0;
        }

        v18->cloudPath = v21;
        if (v20)
        {
          v18->uncanonicalizedPath = CFRetain(v20);
          CFRelease(v20);
        }

        else
        {
          v18->uncanonicalizedPath = 0;
        }

        a8 = v24;
      }

      else
      {
        v18 = 0;
      }

      LOBYTE(a5) = v19;
    }

    v30 = 0;
    v31 = &v30;
    v32 = 0x3052000000;
    v33 = __Block_byref_object_copy__4;
    v34 = __Block_byref_object_dispose__4;
    v35 = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __197__CFPrefsDaemon_SourceSupport__withSourceForDomain_inContainer_user_byHost_managed_managedUsesContainer_cloudStoreEntitlement_cloudConfigurationPath_performWithSourceLock_afterReleasingSourceLock___block_invoke;
    v26[3] = &unk_1E6DD1948;
    v26[8] = a2;
    v26[9] = a3;
    v27 = a5;
    v28 = a6;
    v26[10] = a4;
    v26[11] = a9;
    v26[4] = v18;
    v26[5] = a8;
    v26[6] = a1;
    v26[7] = &v30;
    v29 = a7;
    os_unfair_lock_lock((a1 + 48));
    __197__CFPrefsDaemon_SourceSupport__withSourceForDomain_inContainer_user_byHost_managed_managedUsesContainer_cloudStoreEntitlement_cloudConfigurationPath_performWithSourceLock_afterReleasingSourceLock___block_invoke(v26, *(a1 + 32), *(a1 + 40));
    os_unfair_lock_unlock((a1 + 48));
    v22 = v31[5];
    if (v22)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __197__CFPrefsDaemon_SourceSupport__withSourceForDomain_inContainer_user_byHost_managed_managedUsesContainer_cloudStoreEntitlement_cloudConfigurationPath_performWithSourceLock_afterReleasingSourceLock___block_invoke_2;
      v25[3] = &unk_1E6DD1998;
      v25[5] = a10;
      v25[6] = &v30;
      v25[4] = a1;
      [v22 lockedSync:v25];
    }

    else
    {
      (*(a10 + 16))(a10, 0);
    }

    if (a11)
    {
      (*(a11 + 16))(a11, v31[5]);
    }

    _Block_object_dispose(&v30, 8);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __197__CFPrefsDaemon_SourceSupport__withSourceForDomain_inContainer_user_byHost_managed_managedUsesContainer_cloudStoreEntitlement_cloudConfigurationPath_performWithSourceLock_afterReleasingSourceLock___block_invoke(uint64_t a1, CFSetRef theSet, __CFBag *a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    *(*(*(a1 + 56) + 8) + 40) = CFSetGetValue(theSet, v4);
    v7 = *(*(*(a1 + 56) + 8) + 40);
    if (v7)
    {
      [v7 setUncanonicalizedPathCached:1];
      CFBagAddValue(a3, *(*(*(a1 + 56) + 8) + 40));
      v8 = *(*(*(a1 + 56) + 8) + 40);
    }

    else
    {
      v9 = *(a1 + 64);
      v10 = *(a1 + 72);
      v11 = *(a1 + 96);
      v12 = *(a1 + 97);
      v13 = *(a1 + 80);
      v14 = *(a1 + 88);
      if (v9)
      {
        v15 = 7 * (CFHash(*(a1 + 64)) % 0x249);
        v16 = CFStringGetLength(v9) % 7;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      if ((v16 + v15) > 4088 || v16 + v15 == 0)
      {
        v18 = v16 + 1;
      }

      else
      {
        v18 = v16 + v15;
      }

      if (v10)
      {
        v19 = 6;
      }

      else
      {
        v19 = 5;
      }

      if (!(v10 | v14))
      {
        v19 = @"kCFPreferencesAnyUser" == v13 ? 2 : v11 ^ 1;
        v20 = @"kCFPreferencesAnyUser" == v13 ? 4 : 3;
        if (v12)
        {
          v19 = v20;
        }
      }

      v21 = (v19 + v18);
      if (*(a1 + 88))
      {
        v22 = [[CFPDCloudSource alloc] initWithDomain:*(a1 + 64) userName:*(a1 + 80) storeName:*(a1 + 40) configurationPath:*(a1 + 88) containerPath:*(a1 + 72) shmemIndex:v21 daemon:*(a1 + 48)];
      }

      else
      {
        v22 = [(CFPrefsDaemon *)*(a1 + 48) _createSourceWithDomain:*(a1 + 80) user:*(a1 + 72) container:*(a1 + 96) byHost:*(a1 + 97) managed:v21 shmemIndex:?];
      }

      *(*(*(a1 + 56) + 8) + 40) = v22;
      v23 = *(*(*(a1 + 56) + 8) + 40);
      if (v23)
      {
        [v23 setUncanonicalizedPathCached:1];
        [*(*(*(a1 + 56) + 8) + 40) setManagedPreferencesUseContainer:*(a1 + 98)];
        CFSetAddValue(theSet, *(*(*(a1 + 56) + 8) + 40));
        CFBagAddValue(a3, *(*(*(a1 + 56) + 8) + 40));
        [(CFPrefsDaemon *)*(a1 + 48) _setSource:0 isDead:?];
        v25 = [[CFPDObserverOnlyTombstone alloc] initMatchingSource:*(*(*(a1 + 56) + 8) + 40)];
        Value = CFSetGetValue(theSet, v25);

        if (Value)
        {
          [Value transferObservingConnectionsToSource:*(*(*(a1 + 56) + 8) + 40)];
          CFSetRemoveValue(theSet, Value);
        }
      }
    }

    v24 = *(a1 + 32);
  }
}

void __197__CFPrefsDaemon_SourceSupport__withSourceForDomain_inContainer_user_byHost_managed_managedUsesContainer_cloudStoreEntitlement_cloudConfigurationPath_performWithSourceLock_afterReleasingSourceLock___block_invoke_2(void *a1)
{
  v6[6] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[6] + 8) + 40);
  (*(a1[5] + 16))();
  v3 = a1[4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __197__CFPrefsDaemon_SourceSupport__withSourceForDomain_inContainer_user_byHost_managed_managedUsesContainer_cloudStoreEntitlement_cloudConfigurationPath_performWithSourceLock_afterReleasingSourceLock___block_invoke_3;
  v6[3] = &unk_1E6DD1970;
  v4 = a1[6];
  v6[4] = v3;
  v6[5] = v4;
  os_unfair_lock_lock((v3 + 48));
  __197__CFPrefsDaemon_SourceSupport__withSourceForDomain_inContainer_user_byHost_managed_managedUsesContainer_cloudStoreEntitlement_cloudConfigurationPath_performWithSourceLock_afterReleasingSourceLock___block_invoke_3(v6, *(v3 + 32), *(v3 + 40));
  os_unfair_lock_unlock((v3 + 48));
  v5 = *MEMORY[0x1E69E9840];
}

void __197__CFPrefsDaemon_SourceSupport__withSourceForDomain_inContainer_user_byHost_managed_managedUsesContainer_cloudStoreEntitlement_cloudConfigurationPath_performWithSourceLock_afterReleasingSourceLock___block_invoke_3(uint64_t a1, __CFSet *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a1 + 40;
  v6 = CFBasicHashRemoveValue(a3, *(*(*(a1 + 40) + 8) + 40));
  v7 = v6 == 1;
  if (v6 == 1)
  {
    [*(*(*v5 + 8) + 40) setUncanonicalizedPathCached:0];
  }

  v10 = v7;
  v9 = 0;
  [*(*(*v5 + 8) + 40) processEndOfMessageIntendingToRemoveSource:&v10 replacingWithTombstone:&v9];
  if (v10)
  {
    __197__CFPrefsDaemon_SourceSupport__withSourceForDomain_inContainer_user_byHost_managed_managedUsesContainer_cloudStoreEntitlement_cloudConfigurationPath_performWithSourceLock_afterReleasingSourceLock___block_invoke_3_cold_1(a1, v5, a2, &v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __65__CFPrefsDaemon_logDomainInconsistencyForProcess_message_source___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_int64(*(a1 + 32), "CFPreferencesShmemIndex");
  v2 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __65__CFPrefsDaemon_logDomainInconsistencyForProcess_message_source___block_invoke_cold_1(a1, v2);
  }

  v6 = *(a1 + 56);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  [CFPrefsDaemon synchronousWithSourceCache:?];
  v3 = *MEMORY[0x1E69E9840];
}

void __65__CFPrefsDaemon_logDomainInconsistencyForProcess_message_source___block_invoke_52(uint64_t a1, CFSetRef theSet)
{
  v29 = *MEMORY[0x1E69E9840];
  context[0] = *(a1 + 48);
  context[1] = &v22;
  v22 = 0;
  CFSetApplyFunction(theSet, indexSearchCallback, context);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__CFPrefsDaemon_logDomainInconsistencyForProcess_message_source___block_invoke_2;
  v12[3] = &unk_1E6DD1D78;
  v12[4] = v22;
  v12[5] = &v17;
  [v22 lockedSync:v12];
  v3 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__CFPrefsDaemon_logDomainInconsistencyForProcess_message_source___block_invoke_3;
  v11[3] = &unk_1E6DD1D78;
  v11[4] = v3;
  v11[5] = &v13;
  [v3 lockedSync:v11];
  v4 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v8 = *(a1 + 52);
    v9 = v18[3];
    v10 = v14[3];
    *buf = 67240706;
    v24 = v8;
    v25 = 2114;
    v26 = v9;
    v27 = 2114;
    v28 = v10;
    _os_log_fault_impl(&dword_1830E6000, v4, OS_LOG_TYPE_FAULT, "CFPreferences detected an inconsistency. An attempt by process %{public}d to access preferences in \n%{public}@\n actually resolved to \n%{public}@\n Typically this indicates that the process's sandbox profile changed in a way that added or removed a shared-preference-* rule or changed its container path. To avoid overwriting data incorrectly, cfprefsd is disconnecting this client from this source, its preferences will not be saved to disk", buf, 0x1Cu);
  }

  v5 = v18[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = v14[3];
  if (v6)
  {
    CFRelease(v6);
  }

  xpc_release(*(a1 + 40));
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __65__CFPrefsDaemon_logDomainInconsistencyForProcess_message_source___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) debugDump];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __65__CFPrefsDaemon_logDomainInconsistencyForProcess_message_source___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) debugDump];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)handleMessage:(uint64_t)a3 fromPeer:(uint64_t)a4 replyHandler:
{
  if (a1)
  {
    Class = object_getClass(a2);
    if (Class != MEMORY[0x1E69E9E98])
    {
      if (Class != MEMORY[0x1E69E9E80])
      {
        [CFPrefsDaemon handleMessage:fromPeer:replyHandler:];
      }

      [(CFPrefsDaemon *)a3 handleMessage:a2 fromPeer:a4 replyHandler:a1];
    }
  }
}

- (void)handleSourceMessage:(uint64_t)a3 replyHandler:
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_84;
  }

  _CFPrefsFixUpIncomingMessageForPIDImpersonationIfNeeded(a2);
  xpc_retain(a2);
  v47 = 0;
  v5 = _CFPrefsCopyFixedUpUserForMessage(a2, &v47 + 1, &v47);
  if (xpc_user_sessions_enabled() && !xpc_user_sessions_get_session_uid() && (v47 & 1) == 0 && !CFEqual(v5, @"kCFPreferencesAnyUser"))
  {
    [CFPrefsDaemon handleSourceMessage:replyHandler:];
    goto LABEL_84;
  }

  v46 = 0;
  v39 = xpc_dictionary_get_BOOL(a2, "CFPreferencesIsByHost");
  FixedUpDomainForMessage = _CFPrefsGetFixedUpDomainForMessage(a2, v5, v39, &v46);
  if (!FixedUpDomainForMessage)
  {
    [CFPrefsDaemon handleSourceMessage:replyHandler:];
    goto LABEL_84;
  }

  xpc_dictionary_set_value(a2, "AllowWritingSpecialKeysToGlobalPreferences", 0);
  if (FixedUpDomainForMessage == @"kCFPreferencesAnyApplication" && eduModeEnabled())
  {
    remote_connection = xpc_dictionary_get_remote_connection(a2);
    if (!remote_connection)
    {
      value = xpc_dictionary_get_value(a2, "connection");
      remote_connection = value;
      if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
      {
        [CFPrefsDaemon handleSourceMessage:replyHandler:];
      }
    }

    if (xpc_connection_get_euid(remote_connection) == 502 && _CFPrefsBooleanEntitlementValueForMessage(a2, "com.apple.private.defaults-shared-ipad-loginui"))
    {
      xpc_dictionary_set_value(a2, "AllowWritingSpecialKeysToGlobalPreferences", MEMORY[0x1E69E9E10]);
    }
  }

  v41 = xpc_dictionary_get_BOOL(a2, "CFPreferencesIsManaged");
  v9 = xpc_dictionary_get_remote_connection(a2);
  if (!v9)
  {
    v10 = xpc_dictionary_get_value(a2, "connection");
    v9 = v10;
    if (!v10 || object_getClass(v10) != MEMORY[0x1E69E9E68])
    {
      [CFPrefsDaemon handleSourceMessage:replyHandler:];
    }
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 1;
  v48 = MEMORY[0x1E69E9820];
  v49 = 3221225472;
  v50 = ___CFPrefsMessageSenderIsSandboxed_block_invoke_0;
  v51 = &unk_1E6DD1E80;
  v52 = a2;
  v53 = &v54;
  withClientContext(v9, &v48);
  v11 = *(v55 + 24);
  _Block_object_dispose(&v54, 8);
  v12 = xpc_dictionary_get_BOOL(a2, "CFPreferencesCurrentApplicationDomain");
  if (v41)
  {
    if (handleSourceMessage_replyHandler__onceToken != -1)
    {
      [CFPrefsDaemon handleSourceMessage:replyHandler:];
    }

    if (handleSourceMessage_replyHandler__enableContainerizedManagedPrefs == 1)
    {
      v13 = xpc_dictionary_get_remote_connection(a2);
      if (!v13)
      {
        v14 = xpc_dictionary_get_value(a2, "connection");
        v13 = v14;
        if (!v14 || object_getClass(v14) != MEMORY[0x1E69E9E68])
        {
          [CFPrefsDaemon handleSourceMessage:replyHandler:];
        }
      }

      v54 = 0;
      v55 = &v54;
      v56 = 0x2020000000;
      v57 = 0;
      v48 = MEMORY[0x1E69E9820];
      v49 = 3221225472;
      v50 = ___CFPrefsIsConnectionPlatformBinary_block_invoke;
      v51 = &unk_1E6DD2200;
      v52 = v13;
      v53 = &v54;
      withClientContext(v13, &v48);
      v15 = *(v55 + 24);
      _Block_object_dispose(&v54, 8);
      v37 = v15 ^ 1;
    }

    else
    {
      v37 = 0;
    }

    xpc_dictionary_set_value(a2, "CFPreferencesHasFixedUpContainer", 0);
    v16 = 0;
LABEL_33:
    v17 = 1;
    if (!v11)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  xpc_dictionary_set_value(a2, "CFPreferencesHasFixedUpContainer", 0);
  v16 = _CFPrefsCopyFixedUpContainerForMessage(a2, FixedUpDomainForMessage, v46, HIBYTE(v47), v11);
  if (!v16)
  {
    v37 = 0;
    goto LABEL_33;
  }

  xpc_dictionary_set_BOOL(a2, "CFPreferencesHasFixedUpContainer", 1);
  v17 = 0;
  v37 = 0;
  if (!v11)
  {
    goto LABEL_36;
  }

LABEL_34:
  v18 = (*MEMORY[0x1E69E9BD0] | *MEMORY[0x1E69E9BB8]);
  if (_CFPrefsSandboxCheckForMessage_0(a2))
  {
    v19 = 0;
    goto LABEL_37;
  }

LABEL_36:
  v19 = xpc_dictionary_get_string(a2, "Key") == 0;
LABEL_37:
  v38 = a3;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3052000000;
  v51 = __Block_byref_object_copy__5;
  v52 = __Block_byref_object_dispose__5;
  v53 = 0;
  string = xpc_dictionary_get_string(a2, "CFPreferencesCloudConfig");
  v21 = xpc_dictionary_get_value(a2, "CFPreferencesCloudStoreIdentifier");
  v22 = v21;
  if (!v21)
  {
    if (string)
    {
      v22 = xpc_string_create(v46);
      goto LABEL_45;
    }

LABEL_62:
    v25 = 0;
    goto LABEL_63;
  }

  if (object_getClass(v21) != MEMORY[0x1E69E9F10])
  {
    v23 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = _CFPrefsPIDForMessage(a2);
      [(CFPrefsDaemon *)buf handleSourceMessage:v24 replyHandler:v23];
    }

    goto LABEL_62;
  }

  if (!string)
  {
    goto LABEL_62;
  }

  xpc_retain(v22);
LABEL_45:
  v25 = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, string, 0x8000100u);
  if (v19 || _CFPrefsBooleanEntitlementValueForMessage(a2, "com.apple.private.trust-defaults-kvstore-identifier"))
  {
    *(v49 + 40) = v22;
  }

  else if (v12)
  {
    v35 = _CFPrefsCopyEntitlementForMessage(a2, "com.apple.developer.ubiquity-kvstore-identifier");
    v36 = v35;
    if (v35)
    {
      if (object_getClass(v35) == MEMORY[0x1E69E9F10] && xpc_equal(v22, v36))
      {
        *(v49 + 40) = v22;
      }

      xpc_release(v36);
    }
  }

  if (!*(v49 + 40))
  {
    v26 = _CFPrefsCopyEntitlementForMessage(a2, "com.apple.private.ubiquity-kvstore-access");
    v27 = v26;
    if (v26)
    {
      if (object_getClass(v26) == MEMORY[0x1E69E9E50])
      {
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = __50__CFPrefsDaemon_handleSourceMessage_replyHandler___block_invoke_75;
        applier[3] = &unk_1E6DD1F90;
        applier[4] = v22;
        applier[5] = &v48;
        xpc_array_apply(v27, applier);
      }

      xpc_release(v27);
    }
  }

  if (!*(v49 + 40))
  {
    v28 = _CFPrefsCopyEntitlementForMessage(a2, "com.apple.private.ubiquity-additional-kvstore-identifiers");
    v29 = v28;
    if (v28)
    {
      if (object_getClass(v28) == MEMORY[0x1E69E9E50])
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __50__CFPrefsDaemon_handleSourceMessage_replyHandler___block_invoke_2;
        v44[3] = &unk_1E6DD1F90;
        v44[4] = v22;
        v44[5] = &v48;
        xpc_array_apply(v29, v44);
      }

      xpc_release(v29);
    }
  }

  v30 = *(v49 + 40);
  if (v30)
  {
    xpc_retain(v30);
  }

  if (v22)
  {
    xpc_release(v22);
  }

LABEL_63:
  if (((v17 | HIBYTE(v47)) & 1) == 0 && !CFStringHasPrefix(v16, @"/private/var/containers/Shared/SystemGroup/"))
  {
    reply = xpc_dictionary_create_reply(a2);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    populateErrorReply("Using kCFPreferencesAnyUser with a container is only allowed for System Containers", reply, 1u);
    (*(v38 + 16))(v38, reply);
    goto LABEL_74;
  }

  v31 = *(v49 + 40);
  if (string && !v31)
  {
    reply = xpc_dictionary_create_reply(a2);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    populateErrorReply("'com.apple.developer.ubiquity-kvstore-identifier' entitlement needed to use cloud preferences", reply, 1u);
    (*(v38 + 16))(v38, reply);
LABEL_74:
    xpc_release(reply);
    xpc_release(a2);
    goto LABEL_75;
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __50__CFPrefsDaemon_handleSourceMessage_replyHandler___block_invoke_3;
  v43[3] = &unk_1E6DD1FB8;
  v43[6] = v38;
  v43[7] = &v54;
  v43[4] = a2;
  v43[5] = a1;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __50__CFPrefsDaemon_handleSourceMessage_replyHandler___block_invoke_4;
  v42[3] = &unk_1E6DD1FE0;
  v42[4] = a2;
  v42[5] = &v54;
  [(CFPrefsDaemon *)a1 withSourceForDomain:v16 inContainer:v5 user:v39 byHost:v41 managed:v37 & 1 managedUsesContainer:v31 cloudStoreEntitlement:v25 cloudConfigurationPath:v43 performWithSourceLock:v42 afterReleasingSourceLock:?];
  _Block_object_dispose(&v54, 8);
LABEL_75:
  v33 = *(v49 + 40);
  if (v33)
  {
    xpc_release(v33);
  }

  if ((v17 & 1) == 0)
  {
    CFRelease(v16);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  _Block_object_dispose(&v48, 8);
LABEL_84:
  v34 = *MEMORY[0x1E69E9840];
}

- (void)handleMultiMessage:(uint64_t)a3 replyHandler:
{
  v38[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_8;
  }

  v5 = a1;
  if (!xpc_dictionary_get_remote_connection(xdict))
  {
    value = xpc_dictionary_get_value(xdict, "connection");
    if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
    {
      [CFPrefsDaemon handleMultiMessage:replyHandler:];
    }
  }

  v7 = xpc_dictionary_get_value(xdict, "CFPreferencesMessages");
  if (!v7 || (v8 = v7, object_getClass(v7) != MEMORY[0x1E69E9E50]))
  {
    [CFPrefsDaemon handleMultiMessage:? replyHandler:?];
    goto LABEL_8;
  }

  if (!xpc_array_apply(v8, &__block_literal_global_98))
  {
    [CFPrefsDaemon handleMultiMessage:? replyHandler:?];
    goto LABEL_8;
  }

  count = xpc_array_get_count(v8);
  v12 = count;
  if (count >> 60)
  {
    v26 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", count);
    v27 = [NSException exceptionWithName:@"NSGenericException" reason:v26 userInfo:0];
    CFRelease(v26);
    objc_exception_throw(v27);
  }

  if (count <= 1)
  {
    count = 1;
  }

  v13 = MEMORY[0x1EEE9AC00](count, v11);
  v15 = (&v28 - v14);
  v38[0] = 0;
  if (v12 >= 0x101)
  {
    v16 = _CFCreateArrayStorage(v13, 0, v38);
    v30 = &v28;
    v31 = v16;
    v15 = v16;
    goto LABEL_18;
  }

  v31 = 0;
  if (v12)
  {
    v30 = &v28;
LABEL_18:
    for (i = 0; i != v12; ++i)
    {
      v15[i] = xpc_array_get_value(v8, i);
    }

    v29 = a3;
    v18 = 0;
    v19 = MEMORY[0x1E69E9E80];
    do
    {
      v20 = v15[v18];
      v15[v18] = 0;
      if (object_getClass(v20) == v19)
      {
        v32 = MEMORY[0x1E69E9820];
        v33 = 3221225472;
        v34 = __49__CFPrefsDaemon_handleMultiMessage_replyHandler___block_invoke_2;
        v35 = &__block_descriptor_44_e33_v16__0__NSObject_OS_xpc_object__8l;
        v36 = v15;
        v37 = v18;
        [CFPrefsDaemon handleMessage:v5 fromPeer:v20 replyHandler:?];
      }

      if (!v15[v18])
      {
        v15[v18] = xpc_null_create();
      }

      ++v18;
    }

    while (v12 != v18);
    v21 = 0;
    a3 = v29;
    goto LABEL_27;
  }

  v21 = 1;
LABEL_27:
  v22 = v31;
  reply = xpc_dictionary_create_reply(xdict);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  v24 = xpc_array_create(v15, v12);
  xpc_dictionary_set_value(reply, "CFPreferencesMessages", v24);
  xpc_release(v24);
  if ((v21 & 1) == 0)
  {
    v25 = MEMORY[0x1E69E9ED0];
    do
    {
      if (object_getClass(*v15) != v25)
      {
        xpc_release(*v15);
      }

      ++v15;
      --v12;
    }

    while (v12);
  }

  (*(a3 + 16))(a3, reply);
  xpc_release(reply);
  free(v22);
LABEL_8:
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __50__CFPrefsDaemon_handleSourceMessage_replyHandler___block_invoke()
{
  result = access("/containerized_managed_preferences", 0);
  if (!result)
  {
    handleSourceMessage_replyHandler__enableContainerizedManagedPrefs = 1;
  }

  return result;
}

uint64_t __50__CFPrefsDaemon_handleSourceMessage_replyHandler___block_invoke_75(uint64_t a1, int a2, id a3)
{
  if (object_getClass(a3) != MEMORY[0x1E69E9F10] || !xpc_equal(*(a1 + 32), a3))
  {
    return 1;
  }

  result = 0;
  *(*(*(a1 + 40) + 8) + 40) = *(a1 + 32);
  return result;
}

uint64_t __50__CFPrefsDaemon_handleSourceMessage_replyHandler___block_invoke_2(uint64_t a1, int a2, id a3)
{
  if (object_getClass(a3) != MEMORY[0x1E69E9F10] || !xpc_equal(*(a1 + 32), a3))
  {
    return 1;
  }

  result = 0;
  *(*(*(a1 + 40) + 8) + 40) = *(a1 + 32);
  return result;
}

void __50__CFPrefsDaemon_handleSourceMessage_replyHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!xpc_dictionary_get_BOOL(*(a1 + 32), "FullCloudSync"))
  {
    v8 = *(a1 + 32);
    if (a2)
    {
      value = xpc_dictionary_get_value(v8, "CFPreferencesShmemIndex");
      if (!value || (v10 = value, object_getClass(value) != MEMORY[0x1E69E9EB0]) || (v11 = xpc_int64_get_value(v10), v11 == -1) || v11 == [a2 shmemIndex])
      {
        reply = [a2 acceptMessage:*(a1 + 32)];
        *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_21:
        (*(*(a1 + 48) + 16))();
        xpc_release(reply);
        v16 = *MEMORY[0x1E69E9840];
        return;
      }

      v18 = *(a1 + 32);
      v17 = *(a1 + 40);
      length = 0;
      v23 = 0u;
      v24 = 0u;
      data = xpc_dictionary_get_data(v18, "CFPreferencesAuditToken", &length);
      if (data && length == 32)
      {
        v20 = data[1];
        v23 = *data;
        v24 = v20;
      }

      else
      {
        if (!xpc_dictionary_get_remote_connection(v18))
        {
          v21 = xpc_dictionary_get_value(v18, "connection");
          if (!v21 || object_getClass(v21) != MEMORY[0x1E69E9E68])
          {
            __50__CFPrefsDaemon_handleSourceMessage_replyHandler___block_invoke_3_cold_1();
          }
        }

        xpc_connection_get_audit_token();
      }

      [(CFPrefsDaemon *)v17 logDomainInconsistencyForProcess:*(a1 + 32) message:a2 source:?];
      reply = xpc_dictionary_create_reply(*(a1 + 32));
      if (!reply)
      {
        reply = xpc_dictionary_create(0, 0, 0);
      }

      v15 = "Lookup inconsistency";
    }

    else
    {
      reply = xpc_dictionary_create_reply(v8);
      if (!reply)
      {
        reply = xpc_dictionary_create(0, 0, 0);
      }

      v15 = "Domain or user not found";
    }

    populateErrorReply(v15, reply, 1u);
    goto LABEL_21;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = *(a1 + 32);
  if (isKindOfClass)
  {
    v6 = *(a1 + 48);
    v7 = *MEMORY[0x1E69E9840];

    [a2 synchronizeWithCloud:v5 replyHandler:v6];
  }

  else
  {
    v13 = xpc_dictionary_create_reply(*(a1 + 32));
    if (!v13)
    {
      v13 = xpc_dictionary_create(0, 0, 0);
    }

    populateErrorReply("Domain not cloud-backed", v13, 1u);
    (*(*(a1 + 48) + 16))();
    v14 = *MEMORY[0x1E69E9840];

    xpc_release(v13);
  }
}

void __50__CFPrefsDaemon_handleSourceMessage_replyHandler___block_invoke_4(uint64_t a1, void *a2)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [a2 cleanUpAfterAcceptingMessage:*(a1 + 32)];
  }

  v3 = *(a1 + 32);

  xpc_release(v3);
}

void __56__CFPrefsDaemon_handleFlushManagedMessage_replyHandler___block_invoke(uint64_t a1, void **a2, uint64_t a3, void **a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = a3;
    do
    {
      v12 = *a2++;
      [v12 respondToFileWrittenToBehindOurBack];
      --v10;
    }

    while (v10);
  }

  v13 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __56__CFPrefsDaemon_handleFlushManagedMessage_replyHandler___block_invoke_2;
  v22 = &unk_1E6DD2008;
  v23 = *(a1 + 32);
  do
  {
    for (i = *(a6 + 8 * v13); i; i &= ~(1 << v15))
    {
      v15 = __clz(__rbit64(i));
      v21(&v19, (((v13 << 6) | 1) + v15 - 1));
    }

    ++v13;
  }

  while (v13 != 64);
  for (; a5; --a5)
  {
    v16 = *a4++;
    [v16 notifyObservers];
  }

  v17 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
  xpc_release(*(a1 + 40));
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __64__CFPrefsDaemon_handleFlushSourceForDomainMessage_replyHandler___block_invoke(uint64_t a1, void **a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      v5 = *a2++;
      result = [v5 respondToFileWrittenToBehindOurBack];
      --v3;
    }

    while (v3);
  }

  return result;
}

xpc_object_t __49__CFPrefsDaemon_handleMultiMessage_replyHandler___block_invoke_2(xpc_object_t result, xpc_object_t object)
{
  if (object)
  {
    v2 = result;
    result = xpc_retain(object);
    *(*(v2 + 32) + 8 * *(v2 + 40)) = result;
  }

  return result;
}

- (os_unfair_lock_s)initWithRole:(int)a3 testMode:
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = CFPrefsDaemon;
    v5 = objc_msgSendSuper2(&v17, sel_init);
    v6 = v5;
    if (v5)
    {
      LOBYTE(v5[142]._os_unfair_lock_opaque) = a3;
      if (a3)
      {
        os_transaction_create();
      }

      if (a2)
      {
        v6[6]._os_unfair_lock_opaque = a2;
        v7 = a2 == 2;
      }

      else
      {
        if ((isCFPrefsD & 1) == 0)
        {
          [CFPrefsDaemon initWithRole:testMode:];
        }

        if (initWithRole_testMode__onceToken != -1)
        {
          [CFPrefsDaemon initWithRole:testMode:];
        }

        v7 = initWithRole_testMode__runningInSystemContext;
        if (initWithRole_testMode__runningInSystemContext)
        {
          v8 = 2;
        }

        else
        {
          v8 = 1;
        }

        v6[6]._os_unfair_lock_opaque = v8;
      }

      if (LOBYTE(v6[142]._os_unfair_lock_opaque))
      {
        v9 = "com.apple.cfprefsd.daemon.system.test";
      }

      else
      {
        v9 = "com.apple.cfprefsd.daemon.system";
      }

      v10 = "com.apple.cfprefsd.daemon";
      if (LOBYTE(v6[142]._os_unfair_lock_opaque))
      {
        v10 = "com.apple.cfprefsd.daemon.test";
      }

      if (v7)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }

      *&v6[4]._os_unfair_lock_opaque = v11;
      if (isCFPrefsD == 1)
      {
        mach_service = xpc_connection_create_mach_service(v11, 0, 1uLL);
      }

      else
      {
        mach_service = xpc_connection_create(0, 0);
      }

      v13 = mach_service;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __39__CFPrefsDaemon_initWithRole_testMode___block_invoke_2;
      v16[3] = &unk_1E6DD1D00;
      v16[4] = v6;
      xpc_connection_set_event_handler(mach_service, v16);
      v6[12]._os_unfair_lock_opaque = 0;
      os_unfair_lock_lock(v6 + 12);
      *&v6[8]._os_unfair_lock_opaque = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
      *&v6[10]._os_unfair_lock_opaque = CFBagCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeBagCallBacks);
      os_unfair_lock_unlock(v6 + 12);
      *&v6[2]._os_unfair_lock_opaque = v13;
      xpc_connection_activate(v13);
    }
  }

  else
  {
    v6 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __39__CFPrefsDaemon_initWithRole_testMode___block_invoke()
{
  result = xpc_user_sessions_enabled();
  if (result)
  {
    result = xpc_user_sessions_get_session_uid();
    v1 = result == 0;
  }

  else
  {
    v1 = 0;
  }

  initWithRole_testMode__runningInSystemContext = v1;
  return result;
}

void __39__CFPrefsDaemon_initWithRole_testMode___block_invoke_2(uint64_t a1, _xpc_connection_s *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (object_getClass(a2) == MEMORY[0x1E69E9E68])
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __39__CFPrefsDaemon_initWithRole_testMode___block_invoke_3;
    handler[3] = &unk_1E6DD20B8;
    v4 = *(a1 + 32);
    handler[4] = a2;
    handler[5] = v4;
    xpc_connection_set_event_handler(a2, handler);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *__str = 0u;
    v12 = 0u;
    pid = xpc_connection_get_pid(a2);
    if ((snprintf(__str, 0x80uLL, "client-%d", pid) - 1) > 0x7E)
    {
      v7 = 0;
    }

    else
    {
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_create(__str, v6);
    }

    xpc_connection_set_target_queue(a2, v7);

    v8 = objc_alloc_init(_CFPrefsClientContext);
    v8->_lock._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(&v8->_lock);
    atomic_store(*(a1 + 32), &v8->_cfprefsd);
    *&v8->_sandboxed = -1;
    v8->_valid = 1;
    os_unfair_lock_unlock(&v8->_lock);
    xpc_connection_set_context(a2, v8);
    xpc_connection_set_finalizer_f(a2, client_context_finalizer);
    xpc_connection_activate(a2);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __39__CFPrefsDaemon_initWithRole_testMode___block_invoke_3(uint64_t a1, id a2)
{
  v20[5] = *MEMORY[0x1E69E9840];
  if (object_getClass(a2) != MEMORY[0x1E69E9E80])
  {
    if (a2 == MEMORY[0x1E69E9E20])
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v4 = *(a1 + 32);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __39__CFPrefsDaemon_initWithRole_testMode___block_invoke_5;
      v15[3] = &unk_1E6DD1E08;
      v15[4] = &v16;
      withClientContext(v4, v15);
      v5 = v17[3];
      if (v5)
      {
        if (CFSetGetCount(v5) >= 1)
        {
          v6 = v17[3];
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __39__CFPrefsDaemon_initWithRole_testMode___block_invoke_6;
          v13[3] = &unk_1E6DD1C38;
          v14 = *(a1 + 32);
          CFSetApply(v6, v13);
        }

        CFRelease(v17[3]);
      }

      _Block_object_dispose(&v16, 8);
    }

LABEL_15:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v7 = *(a1 + 32);
  if (!terminating)
  {
    context = xpc_connection_get_context(v7);
    if (!context)
    {
      __39__CFPrefsDaemon_initWithRole_testMode___block_invoke_3_cold_2();
    }

    v10 = atomic_load(context + 1);
    if (!v10)
    {
      __39__CFPrefsDaemon_initWithRole_testMode___block_invoke_3_cold_1();
    }

    v11 = *(a1 + 32);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __39__CFPrefsDaemon_initWithRole_testMode___block_invoke_4;
    v20[3] = &unk_1E6DD1D00;
    v20[4] = v11;
    [(CFPrefsDaemon *)v10 handleMessage:a2 fromPeer:v11 replyHandler:v20];
    goto LABEL_15;
  }

  v8 = *MEMORY[0x1E69E9840];

  xpc_connection_cancel(v7);
}

void __39__CFPrefsDaemon_initWithRole_testMode___block_invoke_4(uint64_t a1, void *a2)
{
  if (a2)
  {
    xpc_connection_send_message(*(a1 + 32), a2);
  }
}

uint64_t __39__CFPrefsDaemon_initWithRole_testMode___block_invoke_5(uint64_t result, uint64_t a2)
{
  *(a2 + 57) = 0;
  *(*(*(result + 32) + 8) + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  return result;
}

uint64_t __39__CFPrefsDaemon_initWithRole_testMode___block_invoke_6(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);

    return [a2 observingConnectionWasInvalidated:v4];
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);

      return [a2 removeObservingConnection:v6 daemon:v7];
    }
  }

  return result;
}

- (void)synchronousWithSourceCache:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_11_0();
    os_unfair_lock_lock(v3 + 12);
    (*(v2 + 16))(v2, *(v1 + 32), *(v1 + 40));

    os_unfair_lock_unlock((v1 + 48));
  }
}

- (uint64_t)_setSource:(int)a3 isDead:
{
  if (result)
  {
    v5 = result;
    os_unfair_lock_assert_owner((result + 48));
    result = [a2 managed];
    if (result)
    {
      result = [a2 shmemIndex];
      v6 = *(v5 + 56 + 8 * (result >> 6));
      v7 = v6 | (1 << result);
      v8 = v6 & ~(1 << result);
      if (a3)
      {
        v8 = v7;
      }

      *(v5 + 56 + 8 * (result >> 6)) = v8;
    }
  }

  return result;
}

- (CFPDContainerSource)_createSourceWithDomain:(const void *)a3 user:(uint64_t)a4 container:(uint64_t)a5 byHost:(uint64_t)a6 managed:(uint64_t)a7 shmemIndex:
{
  if (result)
  {
    v7 = a6;
    v8 = a5;
    v11 = result;
    if (a4)
    {
      return [[CFPDContainerSource alloc] initWithDomain:cf1 userName:a3 container:a4 byHost:a5 managed:a6 shmemIndex:a7 daemon:result];
    }

    else
    {
      if (CFEqual(cf1, @"kCFPreferencesAnyApplication"))
      {
        if (CFEqual(a3, @"kCFPreferencesAnyUser"))
        {
          v12 = 0;
        }

        else
        {
          v12 = (v8 | v7) ^ 1;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = (_CFPrefsCurrentProcessIsCFPrefsD() & 1) == 0 && CFStringHasSuffix(cf1, @"_TestMirror") != 0;
      if ((v12 | v13))
      {
        v14 = [CFPDMirroredSource alloc];
        OUTLINED_FUNCTION_16_0();
        return [v15 initWithDomain:v11 userName:? byHost:? managed:? mirroredKeys:? shmemIndex:? daemon:?];
      }

      else
      {
        v16 = [CFPDSource alloc];
        OUTLINED_FUNCTION_16_0();

        return [v17 initWithDomain:? userName:? byHost:? managed:? shmemIndex:? daemon:?];
      }
    }
  }

  return result;
}

void __197__CFPrefsDaemon_SourceSupport__withSourceForDomain_inContainer_user_byHost_managed_managedUsesContainer_cloudStoreEntitlement_cloudConfigurationPath_performWithSourceLock_afterReleasingSourceLock___block_invoke_3_cold_1(uint64_t a1, uint64_t a2, __CFSet *a3, const void **a4)
{
  [(CFPrefsDaemon *)*(a1 + 32) _setSource:1 isDead:?];
  CFSetRemoveValue(a3, *(*(*a2 + 8) + 40));
  if (*a4)
  {
    CFSetAddValue(a3, *a4);
  }
}

- (void)logDomainInconsistencyForProcess:(void *)a3 message:(void *)a4 source:
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = a4;
    xpc_retain(a3);
    v9 = qos_class_main();
    global_queue = dispatch_get_global_queue(v9, 2uLL);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__CFPrefsDaemon_logDomainInconsistencyForProcess_message_source___block_invoke;
    block[3] = &unk_1E6DD1F68;
    v13 = a2;
    block[4] = a3;
    block[5] = a1;
    block[6] = a4;
    dispatch_async(global_queue, block);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)handleFlushManagedMessage:(uint64_t)a3 replyHandler:
{
  v8[7] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    log_client_activity(a2, "requested flush of managed sources", 0);
    _CFPrefsResetManagedPreferencesStateCache();
    reply = xpc_dictionary_create_reply(a2);
    if (!reply)
    {
      reply = OUTLINED_FUNCTION_2_8(0);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__CFPrefsDaemon_handleFlushManagedMessage_replyHandler___block_invoke;
    v8[3] = &unk_1E6DD2030;
    v8[5] = reply;
    v8[6] = a3;
    v8[4] = a1;
    [(CFPrefsDaemon *)a1 withAllKnownManagedSources:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleAgentCheckInMessage:(uint64_t)a1
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_1830E6000, v1, OS_LOG_TYPE_ERROR, "cfprefsd agents don't exist on non-macOS platforms", v3, 2u);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)handleFlushSourceForDomainMessage:(uint64_t)a1 replyHandler:
{
  if (a1)
  {
    OUTLINED_FUNCTION_3_6();
    v3 = v2;
    string = xpc_dictionary_get_string(v1, "CFPreferencesDomain");
    if (string)
    {
      v5 = string;
      log_client_activity(v1, "requested flush of sources", string);
      v6 = CFStringCreateWithCStringNoCopy(&__kCFAllocatorSystemDefault, v5, 0x8000100u, &__kCFAllocatorNull);
      if (v6)
      {
        v10 = v6;
        [(CFPrefsDaemon *)v3 withSnapshotOfSourcesForDomainIdentifier:v6 performBlock:&__block_literal_global_94];
        [(CFPrefsDaemon *)v3 updateShmemForDomain:v10];
        CFRelease(v10);
      }
    }

    reply = xpc_dictionary_create_reply(v1);
    if (!reply)
    {
      reply = OUTLINED_FUNCTION_2_8(0);
    }

    v8 = OUTLINED_FUNCTION_0_25();
    v9(v8);

    xpc_release(reply);
  }
}

- (void)handleUserDeletedMessage:(uint64_t)a1 replyHandler:(void *)a2
{
  if (a1)
  {
    log_client_activity(a2, "reported a user was deleted", 0);
  }
}

- (void)handleSimulateTimerSynchronizeForTesting
{
  if (a1)
  {
    v1 = +[_CFPrefsSynchronizer sharedInstance];

    [(_CFPrefsSynchronizer *)v1 synchronize];
  }
}

uint64_t __56__CFPrefsDaemon_handleFlushManagedMessage_replyHandler___block_invoke_2(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v4 = [(CFPrefsDaemon *)result shmem];
    result = OUTLINED_FUNCTION_6_3(v4);
    if (v6)
    {
      atomic_store(v5, (result + 4 * a2));
    }
  }

  return result;
}

- (uint64_t)updateShmemIndex:(uint64_t)result
{
  if (result)
  {
    v3 = [(CFPrefsDaemon *)result shmem];
    result = OUTLINED_FUNCTION_6_3(v3);
    if (v5)
    {
      atomic_store(v4, (result + 4 * a2));
    }
  }

  return result;
}

- (uint64_t)updateShmemForDomain:(uint64_t)result
{
  if (result)
  {
    result = [(CFPrefsDaemon *)result shmem];
    v3 = result;
    if (a2)
    {
      v4 = 7 * (CFHash(a2) % 0x249);
      result = CFStringGetLength(a2);
      v5 = result % 7;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    v6 = v5 + v4;
    if ((v5 + v4) > 4088 || v6 == 0)
    {
      LOWORD(v6) = v5 + 1;
    }

    if (v6 <= 0xFFF8u)
    {
      v8 = (v3 + 4 * v6);
      v9 = (v6 + 7) - v6;
      do
      {
        if (atomic_fetch_add(v8, 1u) == -1)
        {
          atomic_store(1u, v8);
        }

        ++v8;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

- (uint64_t)isInTestMode
{
  if (a1)
  {
    v1 = *(a1 + 568);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)_initializeShmemPage:(uint64_t)result
{
  v14 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_15;
  }

  v3 = result;
  bzero(__str, 0x400uLL);
  *(v3 + 568);
  v4 = *(v3 + 24);
  OUTLINED_FUNCTION_5_4();
  snprintf(__str, 0x1FuLL, v5);
  if (isCFPrefsD)
  {
    result = shm_open(__str, 514, 420);
  }

  else
  {
    getpid();
    v6 = *MEMORY[0x1E69E9BD0];
    result = sandbox_check();
    if (result)
    {
LABEL_9:
      v8 = *a2;
LABEL_10:
      if (v8)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    result = shm_open(__str, 2, 420);
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_9;
  }

  v7 = result;
  ftruncate(result, 0x4000);
  *a2 = mmap(0, 0x4000uLL, 3, 1, v7, 0);
  result = close(v7);
  v8 = *a2;
  if (*a2 != -1)
  {
    goto LABEL_10;
  }

  *a2 = 0;
LABEL_11:
  if (isCFPrefsD == 1)
  {
    v9 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v12 = __str;
      _os_log_fault_impl(&dword_1830E6000, v9, OS_LOG_TYPE_FAULT, "cfprefsd could not create a shmem named %s, cross-process preferences will not work correctly", buf, 0xCu);
    }
  }

  result = malloc_type_calloc(1uLL, 0x4000uLL, 0x100004052888210uLL);
  *a2 = result;
LABEL_15:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)getShmemName:(uint64_t)result bufLen:
{
  if (result)
  {
    *(result + 568);
    v1 = *(result + 24);
    OUTLINED_FUNCTION_5_4();
    return snprintf(v2, 0x1FuLL, v3);
  }

  return result;
}

- (uint64_t)updateEntireShmem
{
  if (result)
  {
    result = [(CFPrefsDaemon *)result shmem];
    for (i = 4; i != 0x4000; i += 4)
    {
      if (atomic_fetch_add((result + i), 1u) == -1)
      {
        atomic_store(1u, (result + i));
      }
    }
  }

  return result;
}

- (uint64_t)userID
{
  if (a1 && (*(a1 + 24) | 2) == 3)
  {
    return cfprefsdEuid();
  }

  else
  {
    return 0;
  }
}

void __65__CFPrefsDaemon_logDomainInconsistencyForProcess_message_source___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_fault_impl(&dword_1830E6000, a2, OS_LOG_TYPE_FAULT, "Lookup inconsistency for request from pid %d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)handleMessage:(uint64_t)a3 fromPeer:(uint64_t)a4 replyHandler:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_6();
  v8 = v7;
  if (byte_1EA84A4F4 && !xpc_dictionary_get_BOOL(v5, "PreviousMessageInjectedFailure"))
  {

    xpc_connection_cancel(v8);
  }

  else
  {
    xpc_dictionary_set_value(v5, "connection", v8);
    int64 = xpc_dictionary_get_int64(v5, "CFPreferencesOperation");
    switch(int64)
    {
      case 1:
      case 7:
      case 8:
      case 9:
        v10 = OUTLINED_FUNCTION_1_18();

        [(CFPrefsDaemon *)v10 handleSourceMessage:v11 replyHandler:v12];
        break;
      case 2:
        [CFPrefsDaemon handleAgentCheckInMessage:a4];
        goto LABEL_12;
      case 3:
        v21 = OUTLINED_FUNCTION_1_18();

        [(CFPrefsDaemon *)v21 handleFlushManagedMessage:v22 replyHandler:v23];
        break;
      case 4:
        v24 = OUTLINED_FUNCTION_1_18();

        [CFPrefsDaemon handleFlushSourceForDomainMessage:v24 replyHandler:?];
        break;
      case 5:
        v15 = OUTLINED_FUNCTION_1_18();

        [(CFPrefsDaemon *)v15 handleMultiMessage:v16 replyHandler:v17];
        break;
      case 6:

        log_client_activity(v5, "reported a user was deleted", 0);
        break;
      default:
        if (int64 == 999)
        {
          v13 = +[_CFPrefsSynchronizer sharedInstance];
          [(_CFPrefsSynchronizer *)v13 synchronize];
LABEL_12:
          v14 = *(v4 + 16);

          v14(v4, 0);
        }

        else
        {
          reply = xpc_dictionary_create_reply(v5);
          if (!reply)
          {
            reply = OUTLINED_FUNCTION_2_8(0);
          }

          populateErrorReply("Unsupported CFPreferences Daemon Operation", reply, 1u);
          v19 = OUTLINED_FUNCTION_0_25();
          v20(v19);

          xpc_release(reply);
        }

        break;
    }
  }
}

- (void)handleSourceMessage:(os_log_t)log replyHandler:.cold.2(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&dword_1830E6000, log, OS_LOG_TYPE_ERROR, "Client (%d) passed an invalid cloud store identifier value.", buf, 8u);
}

- (void)handleSourceMessage:replyHandler:.cold.6()
{
  OUTLINED_FUNCTION_3_6();
  if (v1)
  {
    CFRelease(v1);
  }

  reply = xpc_dictionary_create_reply(v0);
  if (!reply)
  {
    reply = OUTLINED_FUNCTION_2_8(0);
  }

  populateErrorReply("Domain not found", reply, 1u);
  v3 = OUTLINED_FUNCTION_4_4();
  v4(v3);
  xpc_release(reply);
  xpc_release(v0);
}

- (void)handleSourceMessage:replyHandler:.cold.7()
{
  OUTLINED_FUNCTION_3_6();
  reply = xpc_dictionary_create_reply(v1);
  if (!reply)
  {
    reply = OUTLINED_FUNCTION_2_8(0);
  }

  populateErrorReply("Access to user preferences from system session not allowed", reply, 1u);
  v3 = OUTLINED_FUNCTION_4_4();
  v4(v3);
  xpc_release(reply);

  CFRelease(v0);
}

- (void)handleMultiMessage:(void *)a1 replyHandler:.cold.2(void *a1)
{
  reply = xpc_dictionary_create_reply(a1);
  if (!reply)
  {
    reply = OUTLINED_FUNCTION_2_8(0);
  }

  populateErrorReply("There must be an array of contained messages present in multimessages", reply, 1u);
  v2 = OUTLINED_FUNCTION_0_25();
  v3(v2);

  xpc_release(reply);
}

- (void)handleMultiMessage:(void *)a1 replyHandler:.cold.3(void *a1)
{
  reply = xpc_dictionary_create_reply(a1);
  if (!reply)
  {
    reply = OUTLINED_FUNCTION_2_8(0);
  }

  populateErrorReply("Contained messages must be dictionaries or nulls in multimessages", reply, 1u);
  v2 = OUTLINED_FUNCTION_0_25();
  v3(v2);

  xpc_release(reply);
}

@end