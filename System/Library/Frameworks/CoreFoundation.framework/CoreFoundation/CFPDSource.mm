@interface CFPDSource
- (BOOL)_getUncanonicalizedPath:(_BOOL8)result;
- (BOOL)enqueueNewKey:(id)a3 value:(id)a4 encoding:(int)a5 inBatch:(BOOL)a6 fromMessage:(id)a7;
- (BOOL)getUncanonicalizedPath:(uint64_t)a1;
- (BOOL)shouldBePurgable;
- (BOOL)validateSandboxForWrite:(const char *)a3 containerPath:;
- (CFPDSource)initWithDomain:(__CFString *)a3 userName:(__CFString *)a4 byHost:(BOOL)a5 managed:(BOOL)a6 shmemIndex:(signed __int16)a7 daemon:(id)a8;
- (CFStringRef)_copyUncanonicalizedPath;
- (__CFString)_canTrustUserPropertyForPOSIXPermissionCheckForAccessType:(__CFString *)result;
- (__CFString)copyUncanonicalizedPath;
- (__CFString)debugDump;
- (const)endHandlingRequest;
- (const)hasObservers;
- (id)acceptMessage:(id)a3;
- (id)copyPropertyListWithoutDrainingPendingChangesValidatingPlist:(BOOL)a3 andReturnFileUID:(unsigned int *)a4 andMode:(unsigned __int16 *)a5;
- (id)createDiskWrite;
- (id)description;
- (int)cacheFileInfoForWriting:(BOOL)a3 euid:(unsigned int)a4 egid:(unsigned int)a5 didCreate:(BOOL *)a6;
- (int)validateMessage:(id)a3 withNewKey:(id)a4 newValue:(id)a5 plistIsAvailableToRead:(BOOL)a6 containerPath:(const char *)a7 fileUID:(unsigned int)a8 mode:(unsigned __int16)a9 diagnosticMessage:(const char *)a10;
- (uint64_t)approximatePlistSizeIncludingPendingChanges;
- (uint64_t)beginHandlingRequest;
- (uint64_t)closeFileDescriptors;
- (uint64_t)handleDeviceUnlock;
- (uint64_t)isEmpty;
- (uint64_t)markNeedsToReloadFromDiskDueToFailedWrite;
- (uint64_t)openActualPath;
- (uint64_t)openPropertyListWithoutDrainingPendingChangesOrValidatingPlistAndReturnFileUID:(mode_t *)a3 andMode:;
- (uint64_t)shouldStayDirtyAfterOpenForWritingFailureWithErrno:(void *)a1;
- (uint64_t)tryEndAccessingPlist;
- (uint64_t)validateAccessToken:(int)a3 accessType:;
- (uint64_t)validatePOSIXPermissionsForMessage:(int)a3 accessType:(int)a4 fileUID:(int)a5 mode:(char *)a6 fullyValidated:;
- (uint64_t)validateSandboxForRead:(const char *)a3 containerPath:;
- (uint64_t)validateSandboxPermissionsForMessage:(const char *)a3 containerPath:(int)a4 accessType:;
- (void)asyncNotifyObserversOfWriteFromConnection:(id)a3 message:(id)a4;
- (void)attachSizeWarningsToReply:(unint64_t)a3 forByteCount:;
- (void)beginHandlingRequest;
- (void)cleanUpIfNecessaryAfterCreatingPlist;
- (void)clearCacheForReason:(__CFString *)a3;
- (void)clearPlist;
- (void)createDiskWrite;
- (void)dealloc;
- (void)drainPendingChanges;
- (void)finishedNonRequestWriteWithResult:(__CFDictionary *)a3;
- (void)handleAvoidCache;
- (void)handleEUIDorEGIDMismatch;
- (void)handleNeverCache;
- (void)handleNoPlistFound;
- (void)handleSynchronous;
- (void)handleWritingResult:(__CFDictionary *)a3;
- (void)lockedAsync:(id)a3;
- (void)lockedSync:(id)a3;
- (void)observingConnectionWasInvalidated:(id)a3;
- (void)observingConnectionsLockedSync:(uint64_t)a1;
- (void)processEndOfMessageIntendingToRemoveSource:(BOOL *)a3 replacingWithTombstone:(id *)a4;
- (void)respondToFileWrittenToBehindOurBack;
- (void)setDirty:(BOOL)a3;
- (void)setObserved:(void *)a3 bySenderOfMessage:;
- (void)setPlist:(int)a3 owner:(unsigned int)a4 mode:;
- (void)setUncanonicalizedPathCached:(BOOL)a3;
- (void)stopNotifyingObserver:(uint64_t)a1;
- (void)syncWriteToDisk;
- (void)syncWriteToDiskAndFlushCacheForReason:(__CFString *)a3;
@end

@implementation CFPDSource

- (uint64_t)tryEndAccessingPlist
{
  if (result)
  {
    v1 = result;
    result = *(result + 16);
    if (result)
    {
      result = [result purgable];
      if ((result & 1) == 0)
      {
        result = [(CFPDSource *)v1 shouldBePurgable];
        if (result)
        {
          v2 = *(v1 + 16);

          return [v2 endAccessing];
        }
      }
    }
  }

  return result;
}

- (void)drainPendingChanges
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)clearPlist
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 108));

    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    *(a1 + 142) &= ~0x80u;
    *(a1 + 143) &= ~1u;
  }
}

CFDictionaryRef __29__CFPDSource_createDiskWrite__block_invoke(uint64_t a1)
{
  values[1] = *MEMORY[0x1E69E9840];
  v2 = _CFPrefsWritePlistToFDThenClose(*(a1 + 32), *(a1 + 72), *(a1 + 76), *(a1 + 80), *(a1 + 88), *(a1 + 90), *(a1 + 84), *(a1 + 56), *(a1 + 64));
  if (v2 == 47837)
  {
    __29__CFPDSource_createDiskWrite__block_invoke_cold_1(a1);
  }

  os_unfair_lock_unlock((*(a1 + 40) + 104));

  v3 = *(a1 + 84);
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
  }

  free(*(a1 + 56));
  free(*(a1 + 64));

  if (v2)
  {
    values[0] = v2;
    result = CFDictionaryCreate(&__kCFAllocatorSystemDefault, (a1 + 40), values, 1, 0, 0);
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)createDiskWrite
{
  v30 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(CFPDDataBuffer *)self->_plist purgable])
  {
    [CFPDSource createDiskWrite];
  }

  [(CFPDSource *)self drainPendingChanges];
  os_unfair_lock_lock(&self->_writeLock);
  if ((*(self + 142) & 2) == 0 || !self->_plist || self->_parentFD == -1 || (actualPath = self->_actualPath) == 0)
  {
    os_unfair_lock_unlock(&self->_writeLock);
LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  v4 = strlen(self->_actualPath);
  v5 = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, actualPath, v4, 0);
  lastEuid = self->_lastEuid;
  lastEgid = self->_lastEgid;
  v8 = 384;
  if ((*(self + 142) & 0x10) == 0)
  {
    if (CFEqual(self->_userName, @"kCFPreferencesAnyUser"))
    {
      v8 = 420;
    }

    else
    {
      v8 = 384;
    }
  }

  fileProtectionClass = self->_fileProtectionClass;
  v10 = _CFPrefsTemporaryFDToWriteTo(v5, lastEuid);
  CFRelease(v5);
  if (v10 < 0)
  {
    [CFPDSource createDiskWrite];
    goto LABEL_16;
  }

  memcpy(__dst, "CFPrefs domain writing: ", sizeof(__dst));
  if (!CFStringGetCString(self->_domain, &__dst[24], 488, 0x8000100u))
  {
    __strncat_chk();
  }

  v11 = os_transaction_create();
  v12 = self->_plist;
  v13 = (*(self + 142) >> 6) & 1;
  parentFD = self->_parentFD;
  v21 = v11;
  v15 = lastEgid;
  if (parentFD == -2)
  {
    v16 = -2;
  }

  else
  {
    v16 = dup(parentFD);
  }

  v19 = strdup(self->_fileName);
  v20 = strdup(self->_actualPath);
  [(CFPDSource *)self setDirty:0];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __29__CFPDSource_createDiskWrite__block_invoke;
  v22[3] = &unk_1E6DD19E8;
  v23 = v10;
  v24 = lastEuid;
  v27 = v8;
  v28 = v13;
  v25 = v15;
  v26 = v16;
  v22[7] = v19;
  v22[8] = v20;
  v22[4] = v12;
  v22[5] = self;
  v22[6] = v21;
  result = [v22 copy];
LABEL_17:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (__CFString)copyUncanonicalizedPath
{
  os_unfair_lock_lock(&self->_uncanonicalizedPathCacheLock);
  uncanonicalizedPathCache = self->_uncanonicalizedPathCache;
  if (uncanonicalizedPathCache)
  {
    v4 = CFRetain(uncanonicalizedPathCache);
    os_unfair_lock_unlock(&self->_uncanonicalizedPathCacheLock);
    if (v4)
    {
      return v4;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_uncanonicalizedPathCacheLock);
  }

  return [(CFPDSource *)self _copyUncanonicalizedPath];
}

- (CFStringRef)_copyUncanonicalizedPath
{
  v5 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    bzero(cStr, 0x402uLL);
    if ([CFPDSource _getUncanonicalizedPath:v1])
    {
      v2 = CFStringFileSystemEncoding();
      result = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, cStr, v2);
    }

    else
    {
      result = 0;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)beginHandlingRequest
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_1_17();
  v7 = v3;
  _os_log_debug_impl(&dword_1830E6000, v4, OS_LOG_TYPE_DEBUG, "Data for { %@, %@ } was purged due to memory pressure", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (uint64_t)beginHandlingRequest
{
  *a2 = a1 | 1;
  if ([*(a3 + 16) purgable])
  {
    v4 = ([*(a3 + 16) beginAccessing] << 31) >> 31;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

- (uint64_t)approximatePlistSizeIncludingPendingChanges
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 16);
    if (v3)
    {
      v2 += [v3 length];
    }

    else
    {
      v4 = *(a1 + 128);
      if (v4 != -1)
      {
        bzero(&v9, 0x90uLL);
        v5 = fstatat(v4, *(a1 + 64), &v9, 0);
        st_size = v9.st_size;
        if (v5)
        {
          st_size = 0;
        }

        v2 += st_size;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

- (const)hasObservers
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_assert_owner(result + 25);
    result = *&v1[18]._os_unfair_lock_opaque;
    if (result)
    {
      return (CFSetGetCount(result) > 0);
    }
  }

  return result;
}

- (uint64_t)closeFileDescriptors
{
  if (result)
  {
    v1 = result;
    if ((*(result + 142) & 2) == 0)
    {
      v2 = *(result + 128);
      if ((v2 & 0x80000000) == 0)
      {
        close(v2);
      }

      *(v1 + 128) = -1;
      free(*(v1 + 64));
      *(v1 + 64) = 0;
    }

    result = *(v1 + 132);
    if ((result & 0x80000000) == 0)
    {
      result = close(result);
    }

    *(v1 + 132) = -1;
  }

  return result;
}

- (uint64_t)isEmpty
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2 && xpc_array_get_count(v2) || [*(v1 + 16) length])
    {
      result = 0;
    }

    else
    {
      v4 = *(v1 + 128);
      if (v4 == -1)
      {
        result = 1;
      }

      else
      {
        bzero(&v6, 0x90uLL);
        if (fstatat(v4, *(v1 + 64), &v6, 0))
        {
          v5 = 1;
        }

        else
        {
          v5 = v6.st_size < 1;
        }

        result = v5;
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (const)endHandlingRequest
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_assert_owner(result + 27);
    if ((*(v1 + 142) & 1) == 0)
    {
      [CFPDSource endHandlingRequest];
    }

    *(v1 + 142) &= ~1u;

    return [(CFPDSource *)v1 tryEndAccessingPlist];
  }

  return result;
}

- (BOOL)shouldBePurgable
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_assert_owner((result + 108));
    if (*(v1 + 142) & 2) != 0 || (*(v1 + 142))
    {
      return 0;
    }

    else
    {
      result = os_unfair_lock_trylock((v1 + 104));
      if (result)
      {
        os_unfair_lock_unlock((v1 + 104));
        return 1;
      }
    }
  }

  return result;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  observingConnections = self->_observingConnections;
  if (observingConnections)
  {
    CFRelease(observingConnections);
  }

  pendingChangesQueue = self->_pendingChangesQueue;
  if (pendingChangesQueue)
  {
    xpc_release(pendingChangesQueue);
  }

  free(self->_actualPath);
  free(self->_fileName);
  parentFD = self->_parentFD;
  if ((parentFD & 0x80000000) == 0)
  {
    close(parentFD);
  }

  v7.receiver = self;
  v7.super_class = CFPDSource;
  [(CFPDSource *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (uint64_t)openActualPath
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 132);
  if (v2 == -1)
  {
    v4 = OUTLINED_FUNCTION_15_0();
    if (v5 || (v6 = *(a1 + 64)) == 0)
    {
      *__error() = 22;
      return 0xFFFFFFFFLL;
    }

    else
    {
      v3 = openat(v4, v6, 0);
      if (v3 != -1 && _canDup())
      {
        *(a1 + 132) = dup(v3);
      }
    }
  }

  else
  {
    v3 = dup(v2);
    lseek(*(a1 + 132), 0, 0);
  }

  return v3;
}

- (void)syncWriteToDisk
{
  v3 = [(CFPDSource *)self createDiskWrite];
  if (v3)
  {
    v5 = v3;
    v4 = v3[2]();
    [(CFPDSource *)self handleWritingResult:v4];
    v3 = v5;
    if (v4)
    {
      CFRelease(v4);
      v3 = v5;
    }
  }
}

- (int)cacheFileInfoForWriting:(BOOL)a3 euid:(unsigned int)a4 egid:(unsigned int)a5 didCreate:(BOOL *)a6
{
  v6 = MEMORY[0x1EEE9AC00](self, a2);
  v8 = v7;
  v10 = v9;
  v11 = v6;
  v64 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(v6 + 27);
  free(*(v11 + 56));
  *(v11 + 56) = 0;
  *(v11 + 143) &= ~2u;
  free(*(v11 + 64));
  *(v11 + 64) = 0;
  v12 = *(v11 + 132);
  if ((v12 & 0x80000000) == 0)
  {
    close(v12);
  }

  *(v11 + 132) = -1;
  v13 = *(v11 + 128);
  if ((v13 & 0x80000000) == 0)
  {
    close(v13);
  }

  *(v11 + 128) = -1;
  bzero(__s2, 0x402uLL);
  if (![CFPDSource getUncanonicalizedPath:v11])
  {
    v18 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CFPDSource cacheFileInfoForWriting:v11 euid:? egid:? didCreate:?];
    }

    goto LABEL_79;
  }

  v52 = -1;
  bzero(__s1, 0x402uLL);
  bzero(&v60, 0x402uLL);
  if (v10)
  {
    v14 = atomic_load(&dword_1EA84A4FC);
    if (v14 == 3)
    {
      v15 = _CFPrefsDaemonLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [CFPDSource cacheFileInfoForWriting:v15 euid:? egid:? didCreate:?];
      }

      v16 = 0;
      v17 = 0;
      *__error() = 28;
      goto LABEL_70;
    }
  }

  IsCFPrefsD = _CFPrefsCurrentProcessIsCFPrefsD();
  if (byte_1EA84A4F6)
  {
    v20 = 1;
  }

  else
  {
    v20 = IsCFPrefsD;
  }

  if (v20 == 1)
  {
    if (dirname_r(__s2, &v60))
    {
      if (basename_r(__s2, __s1))
      {
        v21 = open(&v60, 1074790400);
        v52 = v21;
        if (v21 != -1)
        {
          goto LABEL_25;
        }

        v22 = *__error();
        v23 = _CFPrefsDaemonLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [CFPDSource cacheFileInfoForWriting:euid:egid:didCreate:];
        }

        *__error() = v22;
      }

      else
      {
        v27 = _CFPrefsDaemonLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [CFPDSource cacheFileInfoForWriting:euid:egid:didCreate:];
        }
      }
    }

    else
    {
      v26 = _CFPrefsDaemonLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [CFPDSource cacheFileInfoForWriting:euid:egid:didCreate:];
      }
    }
  }

  else
  {
    v52 = -2;
    __strlcpy_chk();
  }

  v21 = v52;
  if (v52 == -1)
  {
LABEL_32:
    v17 = 0;
    v24 = -1;
    goto LABEL_39;
  }

LABEL_25:
  v24 = openat(v21, __s1, 0);
  v17 = 0;
  if (v24 != -1 || !v10)
  {
    goto LABEL_39;
  }

  if (*__error() != 2)
  {
    goto LABEL_32;
  }

  if ((*(v11 + 142) & 0x10) != 0)
  {
    v25 = 384;
  }

  else if (CFEqual(*(v11 + 40), @"kCFPreferencesAnyUser"))
  {
    v25 = 420;
  }

  else
  {
    v25 = 384;
  }

  v24 = openat(v52, __s1, 512, v25);
  v17 = 1;
LABEL_39:
  if (v24 < 0)
  {
    v28 = v10;
  }

  else
  {
    v28 = 0;
  }

  if (v28 != 1)
  {
    goto LABEL_65;
  }

  if (*__error() != 2 && *__error() != 20)
  {
    goto LABEL_69;
  }

  if (v60 == 0x7972617262694C2FLL && v61[0] == 0x657265666572502FLL && *(v61 + 5) == 0x7365636E657265)
  {
    if (!_CFPrefsCreatePreferencesDirectory(&v60))
    {
      goto LABEL_69;
    }

    if ((*(v11 + 142) & 0x10) != 0)
    {
      v35 = 384;
    }

    else if (CFEqual(*(v11 + 40), @"kCFPreferencesAnyUser"))
    {
      v35 = 420;
    }

    else
    {
      v35 = 384;
    }

    v24 = openat(v52, __s1, 512, v35);
    v17 = 1;
LABEL_65:
    if ((v24 & 0x80000000) == 0)
    {
      bzero(buf, 0x402uLL);
      if (fcntl(v24, 50, buf) == -1)
      {
        if ((v52 & 0x80000000) == 0)
        {
          close(v52);
        }

        close(v24);
        v42 = _CFPrefsDaemonLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [CFPDSource cacheFileInfoForWriting:euid:egid:didCreate:];
        }
      }

      else
      {
        *(v11 + 128) = v52;
        *(v11 + 64) = strdup(__s1);
        *(v11 + 56) = strdup(buf);
        if (_canDup())
        {
          *(v11 + 132) = v24;
        }

        else
        {
          close(v24);
        }

        if (!strcmp(buf, __s2))
        {
          v46 = *(v11 + 143) & 0xFD;
        }

        else
        {
          memset(&out_token, 0, sizeof(out_token));
          v43 = lstat(__s2, &out_token);
          if ((out_token.st_mode & 0xF000) == 0xA000 && v43 == 0)
          {
            v45 = 2;
          }

          else
          {
            v45 = 0;
          }

          v46 = v45 | *(v11 + 143) & 0xFD;
        }

        *(v11 + 143) = v46;
        if (((v28 | v10 ^ 1) & 1) != 0 || !sandbox_passthrough_access())
        {
          v16 = 0;
          if (!v17)
          {
            goto LABEL_80;
          }

          goto LABEL_102;
        }

        v47 = _CFPrefsDaemonLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          [CFPDSource cacheFileInfoForWriting:euid:egid:didCreate:];
        }
      }

      v16 = 7;
      if (!v17)
      {
        goto LABEL_80;
      }

LABEL_102:
      *v8 = 1;
      goto LABEL_80;
    }

LABEL_69:
    v16 = 0;
LABEL_70:
    v34 = 1;
    goto LABEL_71;
  }

  v31 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    if (v17)
    {
      v32 = "create";
    }

    else
    {
      v32 = "open";
    }

    v33 = *__error();
    *buf = 136446723;
    v55 = v32;
    v56 = 2081;
    v57 = __s2;
    v58 = 1024;
    LODWORD(v59) = v33;
    _os_log_impl(&dword_1830E6000, v31, OS_LOG_TYPE_INFO, "Couldn't %{public}s %{private}s due to %{darwin.errno}d. Asking client to create directory.", buf, 0x1Cu);
  }

  v34 = 0;
  v16 = 5;
LABEL_71:
  if ((v52 & 0x80000000) == 0)
  {
    close(v52);
  }

  if (v34)
  {
    v36 = *__error();
    v37 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      if (v17)
      {
        v48 = "create";
      }

      else
      {
        v48 = "open";
      }

      v49 = strerror(v36);
      *buf = 136446723;
      v55 = v48;
      v56 = 2081;
      v57 = __s2;
      v58 = 2082;
      v59 = v49;
      _os_log_debug_impl(&dword_1830E6000, v37, OS_LOG_TYPE_DEBUG, "Couldn't %{public}s %{private}s due to %{public}s", buf, 0x20u);
    }

    if (v36 == 1 && (cacheFileInfoForWriting_euid_egid_didCreate__deviceEverUnlocked & 1) == 0 && (*(v11 + 142) & 0x20) == 0)
    {
      *(v11 + 142) |= 0x20u;
      out_token.st_dev = 0;
      objc_initWeak(buf, v11);
      v38 = qos_class_main();
      global_queue = dispatch_get_global_queue(v38, 2uLL);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __58__CFPDSource_cacheFileInfoForWriting_euid_egid_didCreate___block_invoke;
      handler[3] = &unk_1E6DD19C0;
      objc_copyWeak(&v51, buf);
      notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token.st_dev, global_queue, handler);
      objc_destroyWeak(&v51);
      objc_destroyWeak(buf);
    }

LABEL_79:
    v16 = 7;
  }

LABEL_80:
  v40 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)setUncanonicalizedPathCached:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_uncanonicalizedPathCacheLock);
  uncanonicalizedPathCache = self->_uncanonicalizedPathCache;
  if (v3)
  {
    if (uncanonicalizedPathCache)
    {
      goto LABEL_7;
    }

    v6 = [(CFPDSource *)self _copyUncanonicalizedPath];
  }

  else
  {
    if (!uncanonicalizedPathCache)
    {
      goto LABEL_7;
    }

    CFRelease(uncanonicalizedPathCache);
    v6 = 0;
  }

  self->_uncanonicalizedPathCache = v6;
LABEL_7:

  os_unfair_lock_unlock(&self->_uncanonicalizedPathCacheLock);
}

- (CFPDSource)initWithDomain:(__CFString *)a3 userName:(__CFString *)a4 byHost:(BOOL)a5 managed:(BOOL)a6 shmemIndex:(signed __int16)a7 daemon:(id)a8
{
  v19 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = CFPDSource;
  v14 = [(CFPDSource *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_cfprefsd = a8;
    *&v14->_uncanonicalizedPathCacheLock._os_unfair_lock_opaque = 0;
    *&v14->_writeLock._os_unfair_lock_opaque = 0;
    *(v14 + 142) &= ~2u;
    v14->_byHost = a5;
    v14->_domain = _internString(a3);
    v15->_userName = _internString(a4);
    v15->_managed = a6;
    v15->_generationShmemIndex = a7;
    *&v15->_parentFD = -1;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)respondToFileWrittenToBehindOurBack
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__CFPDSource_respondToFileWrittenToBehindOurBack__block_invoke;
  v3[3] = &unk_1E6D81EC0;
  v3[4] = self;
  [(CFPDSource *)self lockedSync:v3];
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t __49__CFPDSource_respondToFileWrittenToBehindOurBack__block_invoke(uint64_t a1)
{
  [*(a1 + 32) syncWriteToDiskAndFlushCacheForReason:@"client invalidated domain"];
  [*(a1 + 32) updateShmemEntry];
  v2 = *(a1 + 32);

  return [v2 asyncNotifyObserversOfWriteFromConnection:0 message:0];
}

- (id)description
{
  v2 = [(CFPDSource *)self debugDump];

  return v2;
}

- (void)setDirty:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (v3)
  {
    [(CFPDSource *)self updateShmemEntry];
  }

  v5 = *(self + 142);
  if (((((v5 & 2) == 0) ^ v3) & 1) == 0)
  {
    if (v3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *(self + 142) = v5 & 0xFD | v6;
    if (v3)
    {
      [CFPDSource setDirty:?];
    }

    else
    {

      self->_dirtyTransaction = 0;
    }
  }
}

- (void)handleWritingResult:(__CFDictionary *)a3
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (!a3)
  {
LABEL_4:
    if ((*(self + 142) & 2) == 0)
    {
      cachedPlistFD = self->_cachedPlistFD;
      if ((cachedPlistFD & 0x80000000) == 0)
      {
        close(cachedPlistFD);
      }

      self->_cachedPlistFD = -1;
      parentFD = self->_parentFD;
      if ((parentFD & 0x80000000) == 0)
      {
        close(parentFD);
      }

      self->_parentFD = -1;
      free(self->_fileName);
      self->_fileName = 0;
    }

    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(a3, self);
  if (Value != 28)
  {
    if (Value)
    {
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  v8 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    userName = self->_userName;
    domain = self->_domain;
    v12 = 138412546;
    v13 = domain;
    v14 = 2112;
    v15 = userName;
    _os_log_impl(&dword_1830E6000, v8, OS_LOG_TYPE_INFO, "Re-marking { %@, %@ } as dirty because previous write failed with ENOSPC", &v12, 0x16u);
  }

  [(CFPDSource *)self setDirty:1];
LABEL_13:
  v11 = *MEMORY[0x1E69E9840];
}

- (void)setPlist:(int)a3 owner:(unsigned int)a4 mode:
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 108));
    if ([*(a1 + 16) purgable])
    {
      [CFPDSource setPlist:owner:mode:];
    }

    v8 = *(a1 + 16);
    *(a1 + 16) = a2;
    if (v8)
    {
    }

    *(a1 + 112) = a3;
    *(a1 + 142) = (a4 >> 1) & 0x80 | *(a1 + 142) & 0x7F;
    *(a1 + 143) = *(a1 + 143) & 0xFE | ((a4 & 4) != 0);
  }
}

- (void)syncWriteToDiskAndFlushCacheForReason:(__CFString *)a3
{
  [(CFPDSource *)self syncWriteToDisk];

  [(CFPDSource *)self clearCacheForReason:a3];
}

uint64_t __55__CFPDSource_markNeedsToReloadFromDiskDueToFailedWrite__block_invoke(uint64_t a1)
{
  [*(a1 + 32) clearCacheForReason:@"previous error"];
  v2 = *(a1 + 32);

  return [v2 updateShmemEntry];
}

uint64_t __32__CFPDSource_handleDeviceUnlock__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = v3[5];
    v4 = v3[6];
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = [v3 container];
    _os_log_impl(&dword_1830E6000, v2, OS_LOG_TYPE_INFO, "Responding to device unlock to refresh preferences reads previously denied by data protection { %@, %@, %@ }", &v8, 0x20u);
  }

  *(*(a1 + 32) + 142) &= ~0x20u;
  [*(a1 + 32) syncWriteToDiskAndFlushCacheForReason:@"device was unlocked"];
  [*(a1 + 32) updateShmemEntry];
  result = [*(a1 + 32) asyncNotifyObserversOfWriteFromConnection:0 message:0];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyPropertyListWithoutDrainingPendingChangesValidatingPlist:(BOOL)a3 andReturnFileUID:(unsigned int *)a4 andMode:(unsigned __int16 *)a5
{
  v7 = a3;
  v48 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(CFPDDataBuffer *)self->_plist purgable])
  {
    [CFPDSource copyPropertyListWithoutDrainingPendingChangesValidatingPlist:andReturnFileUID:andMode:];
  }

  plist = self->_plist;
  if (plist)
  {
    v10 = !v7;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (!plist)
    {
      goto LABEL_22;
    }

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __100__CFPDSource_copyPropertyListWithoutDrainingPendingChangesValidatingPlist_andReturnFileUID_andMode___block_invoke;
    v42[3] = &unk_1E6D81EC0;
    v42[4] = self;
    [(CFPDDataBuffer *)plist quicklyValidatePlistAndOnFailureInvokeBlock:v42];
  }

  else
  {
    v11 = [(CFPDDataBuffer *)plist validatePlist];
    v12 = _CFPrefsDaemonLog();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        userName = self->_userName;
        domain = self->_domain;
        buf.st_dev = 138412546;
        *&buf.st_mode = domain;
        WORD2(buf.st_ino) = 2112;
        *(&buf.st_ino + 6) = userName;
        _os_log_impl(&dword_1830E6000, v13, OS_LOG_TYPE_INFO, "Validation of pre-existing plist succeeded. {%@ %@}", &buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CFPDSource copyPropertyListWithoutDrainingPendingChangesValidatingPlist:? andReturnFileUID:? andMode:?];
      }

      [(CFPDSource *)self clearCacheForReason:@"cached plist is invalid"];
    }
  }

  v16 = self->_plist;
  if (v16)
  {
LABEL_16:
    if (a4)
    {
      *a4 = self->_plistFileOwner;
    }

    if (!a5)
    {
      goto LABEL_37;
    }

    v17 = *(self + 142) & 0x80;
    v18 = v17 >> 7;
    v19 = 2 * v17;
    if (*(self + 143))
    {
      v20 = ((v18 & 1) << 8) | 4;
    }

    else
    {
      v20 = v19;
    }

    goto LABEL_36;
  }

LABEL_22:
  if (self->_managed && !CFPreferencesIsManaged([(CFPDSource *)self user], self->_managedUsesContainer))
  {
    result = 0;
    goto LABEL_38;
  }

  os_unfair_lock_lock(&self->_writeLock);
  if (self->_parentFD == -1)
  {
    [(CFPDSource *)self cacheFileInfo];
    if (self->_parentFD == -1)
    {
      goto LABEL_26;
    }
  }

  actualPath = self->_actualPath;
  v24 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *&buf.st_dev = MEMORY[0x1E69E9820];
    buf.st_ino = 3221225472;
    *&buf.st_uid = __DEBUG_CACHE_MISS_block_invoke;
    *&buf.st_rdev = &__block_descriptor_40_e29_v64__0i8_12_20_28_36_44_52B60l;
    buf.st_atimespec.tv_sec = actualPath;
    _extractCFPDBits(0, 0, self, &buf);
  }

  v25 = *(self + 142);
  if ((v25 & 8) == 0)
  {
    if (!strstr(self->_actualPath, "Preferences/"))
    {
      v26 = [(CFPDSource *)self copyUncanonicalizedPath];
      if (v26 && (v27 = v26, v49.length = CFStringGetLength(v26), v49.location = 0, v28 = CFStringFindWithOptions(v27, @"Preferences/", v49, 0, 0), CFRelease(v27), v28))
      {
        v25 = *(self + 142);
      }

      else
      {
        v25 = *(self + 142) | 4;
      }
    }

    *(self + 142) = v25 | 8;
  }

  v29 = [(CFPDSource *)self openActualPath];
  if ((v29 & 0x80000000) != 0)
  {
LABEL_26:
    os_unfair_lock_unlock(&self->_writeLock);
  }

  else
  {
    v30 = v29;
    v31 = !self->_managed && (*(self + 142) & 4) == 0;
    v16 = [CFPDDataBuffer newBufferFromFile:v29 allowMappingIfSafe:v31];
    memset(&buf, 0, sizeof(buf));
    if (v16)
    {
      v32 = fstat(v30, &buf);
      if (v32)
      {
        st_uid = 0;
      }

      else
      {
        st_uid = buf.st_uid;
      }

      if (v32)
      {
        st_mode = 0;
      }

      else
      {
        st_mode = buf.st_mode;
      }

      [(CFPDSource *)self setPlist:v16 owner:st_uid mode:st_mode];

      if (v7)
      {
        v35 = [(CFPDDataBuffer *)v16 validatePlist];
        v36 = _CFPrefsDaemonLog();
        v37 = v36;
        if (v35)
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v39 = self->_userName;
            v38 = self->_domain;
            *v43 = 138412546;
            v44 = v38;
            v45 = 2112;
            v46 = v39;
            _os_log_impl(&dword_1830E6000, v37, OS_LOG_TYPE_INFO, "Validation of plist read from disk succeeded. {%@ %@}", v43, 0x16u);
          }
        }

        else
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            [CFPDSource copyPropertyListWithoutDrainingPendingChangesValidatingPlist:? andReturnFileUID:? andMode:?];
          }

          unlinkat(self->_parentFD, self->_fileName, 0);
          [(CFPDSource *)self clearCacheForReason:@"plist on disk is invalid"];
          v16 = 0;
        }
      }

      else
      {
        v40 = self->_plist;
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __100__CFPDSource_copyPropertyListWithoutDrainingPendingChangesValidatingPlist_andReturnFileUID_andMode___block_invoke_70;
        v41[3] = &unk_1E6D81EC0;
        v41[4] = self;
        [(CFPDDataBuffer *)v40 quicklyValidatePlistAndOnFailureInvokeBlock:v41];
      }
    }

    else
    {
      [(CFPDSource *)self setPlist:0 owner:0 mode:?];
    }

    close(v30);
    os_unfair_lock_unlock(&self->_writeLock);
    if (v16)
    {
      goto LABEL_16;
    }
  }

  if (a4)
  {
    *a4 = self->_lastEuid;
  }

  if (a5)
  {
    v20 = 384;
    if ((*(self + 142) & 0x10) != 0)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0;
      if (CFEqual(self->_userName, @"kCFPreferencesAnyUser"))
      {
        v20 = 420;
      }

      else
      {
        v20 = 384;
      }
    }

LABEL_36:
    *a5 = v20;
    goto LABEL_37;
  }

  v16 = 0;
LABEL_37:
  result = v16;
LABEL_38:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void __100__CFPDSource_copyPropertyListWithoutDrainingPendingChangesValidatingPlist_andReturnFileUID_andMode___block_invoke(uint64_t a1)
{
  v2 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __100__CFPDSource_copyPropertyListWithoutDrainingPendingChangesValidatingPlist_andReturnFileUID_andMode___block_invoke_cold_1(a1);
  }
}

void __100__CFPDSource_copyPropertyListWithoutDrainingPendingChangesValidatingPlist_andReturnFileUID_andMode___block_invoke_70(uint64_t a1)
{
  v2 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __100__CFPDSource_copyPropertyListWithoutDrainingPendingChangesValidatingPlist_andReturnFileUID_andMode___block_invoke_70_cold_1(a1);
  }
}

- (void)asyncNotifyObserversOfWriteFromConnection:(id)a3 message:(id)a4
{
  v5 = *MEMORY[0x1E69E9840];
  [CFPDSource observingConnectionsLockedSync:?];
  v4 = *MEMORY[0x1E69E9840];
}

void __64__CFPDSource_asyncNotifyObserversOfWriteFromConnection_message___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(CFPDSource *)*(a1 + 32) hasObservers])
  {
    values[0] = _CFXPCCreateXPCObjectFromCFObject(*(*(a1 + 32) + 48));
    values[1] = _CFXPCCreateXPCObjectFromCFObject(*(*(a1 + 32) + 40));
    values[2] = xpc_BOOL_create(*(*(a1 + 32) + 138));
    values[3] = _CFXPCCreateXPCObjectFromCFObject([*(a1 + 32) container]);
    values[4] = _CFXPCCreateXPCObjectFromCFObject([*(a1 + 32) cloudConfigurationPath]);
    if (*(a1 + 40) && (v2 = *(a1 + 48)) != 0)
    {
      length = 0;
      context = 0u;
      v19 = 0u;
      data = xpc_dictionary_get_data(v2, "CFPreferencesAuditToken", &length);
      if (data && length == 32)
      {
        v4 = data[1];
        context = *data;
        v19 = v4;
      }

      else
      {
        if (!xpc_dictionary_get_remote_connection(v2))
        {
          value = xpc_dictionary_get_value(v2, "connection");
          if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
          {
            __64__CFPDSource_asyncNotifyObserversOfWriteFromConnection_message___block_invoke_cold_1();
          }
        }

        xpc_connection_get_audit_token();
      }

      v5 = DWORD1(v19);
    }

    else
    {
      v5 = getpid();
    }

    v7 = xpc_int64_create(v5);
    v8 = *(a1 + 32);
    values[5] = v7;
    *&context = v8;
    v9 = xpc_dictionary_create(_CFPrefsNotifyFuncKeys, values, 6uLL);
    v10 = 0;
    v11 = *(a1 + 40);
    *(&context + 1) = v9;
    *&v19 = v11;
    do
    {
      v12 = values[v10];
      if (v12)
      {
        xpc_release(v12);
      }

      ++v10;
    }

    while (v10 != 6);
    v13 = *(a1 + 32);
    v14 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      _extractCFPDBits(0, 0, v13, &__block_literal_global_389);
    }

    CFSetApplyFunction(*(*(a1 + 32) + 72), notifyFunc, &context);
    xpc_release(*(&context + 1));
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __33__CFPDSource_drainPendingChanges__block_invoke(uint64_t a1)
{
  v2 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __33__CFPDSource_drainPendingChanges__block_invoke_cold_1(a1);
  }
}

- (BOOL)enqueueNewKey:(id)a3 value:(id)a4 encoding:(int)a5 inBatch:(BOOL)a6 fromMessage:(id)a7
{
  applier[6] = *MEMORY[0x1E69E9840];
  if (object_getClass(a3) != MEMORY[0x1E69E9F10])
  {
    [CFPDSource enqueueNewKey:value:encoding:inBatch:fromMessage:];
  }

  if (a5 == 1)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __63__CFPDSource_enqueueNewKey_value_encoding_inBatch_fromMessage___block_invoke;
    applier[3] = &unk_1E6DD1A68;
    applier[4] = self;
    applier[5] = a7;
    xpc_dictionary_apply(a4, applier);
  }

  else
  {
    pendingChangesQueue = self->_pendingChangesQueue;
    if (!pendingChangesQueue)
    {
      pendingChangesQueue = xpc_array_create(0, 0);
      self->_pendingChangesQueue = pendingChangesQueue;
    }

    count = xpc_array_get_count(pendingChangesQueue);
    v15 = count;
    if (count)
    {
      [CFPDSource enqueueNewKey:value:encoding:inBatch:fromMessage:];
    }

    if (count)
    {
      v16 = 1;
      while (1)
      {
        value = xpc_array_get_value(self->_pendingChangesQueue, v16 - 1);
        if (xpc_equal(a3, value))
        {
          break;
        }

        v18 = v16 + 1;
        v16 += 2;
        if (v18 >= v15)
        {
          goto LABEL_11;
        }
      }

      v20 = xpc_array_get_value(self->_pendingChangesQueue, v16);
      v21 = _CFPrefsSizeOfValue(a4, 0);
      v22 = v21 - _CFPrefsSizeOfValue(v20, 0);
      v23 = self->_pendingChangesQueue;
      self->_pendingChangesSize += v22;
      xpc_array_set_value(v23, v16, a4);
    }

    else
    {
LABEL_11:
      xpc_array_append_value(self->_pendingChangesQueue, a3);
      xpc_array_append_value(self->_pendingChangesQueue, a4);
      if (object_getClass(a4) != MEMORY[0x1E69E9ED0])
      {
        v19 = _CFPrefsSizeOfValue(a4, 0);
        self->_pendingChangesSize += _CFPrefsSizeOfValue(a3, 0) + v19;
      }
    }
  }

  [(CFPDSource *)self setDirty:1];
  if (!a6 && self->_pendingChangesSize > 0x20000)
  {

    self->_pendingChangesSize = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __63__CFPDSource_enqueueNewKey_value_encoding_inBatch_fromMessage___block_invoke(uint64_t a1, char *string, uint64_t a3)
{
  v5 = xpc_string_create(string);
  [*(a1 + 32) enqueueNewKey:v5 value:a3 encoding:0 inBatch:1 fromMessage:*(a1 + 40)];
  xpc_release(v5);
  return 1;
}

- (__CFString)debugDump
{
  v3 = [(CFPDSource *)self copyUncanonicalizedPath];
  userName = self->_userName;
  domain = self->_domain;
  plist = self->_plist;
  generationShmemIndex = self->_generationShmemIndex;
  v8 = *(self + 142);
  v9 = (v8 >> 1) & 1;
  byHost = self->_byHost;
  v11 = 384;
  if ((v8 & 0x10) == 0)
  {
    if (CFEqual(userName, @"kCFPreferencesAnyUser"))
    {
      v11 = 420;
    }

    else
    {
      v11 = 384;
    }
  }

  v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"\n*****************************************************\nDomain: %@\nUser: %@\nPath: %@\nplist data:%@\nshmem index:%d\ndirty:%d\nbyHost:%d\nmode:%o\n", domain, userName, v3, plist, generationShmemIndex, v9, byHost, v11);
  if (v3)
  {
    CFRelease(v3);
  }

  return v12;
}

- (void)lockedAsync:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CFPDSource_lockedAsync___block_invoke;
  block[3] = &unk_1E6DD1A90;
  block[4] = self;
  block[5] = a3;
  v3 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v4 = qos_class_self();
  global_queue = dispatch_get_global_queue(v4, 0);
  dispatch_async(global_queue, v3);

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __26__CFPDSource_lockedAsync___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  [(os_unfair_lock *)v1 lock];
  [(CFPDSource *)v1 beginHandlingRequest];
  (*(v2 + 16))(v2);
  [(CFPDSource *)v1 endHandlingRequest];

  return [(os_unfair_lock *)v1 unlock];
}

- (void)lockedSync:(id)a3
{
  [(CFPDSource *)self lock];
  [(CFPDSource *)self beginHandlingRequest];
  (*(a3 + 2))(a3);
  [(CFPDSource *)self endHandlingRequest];

  [(CFPDSource *)self unlock];
}

- (BOOL)validateSandboxForWrite:(const char *)a3 containerPath:
{
  v38 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    os_unfair_lock_assert_owner((result + 108));
    if (*(v5 + 128) == -1)
    {
      result = 0;
    }

    else
    {
      remote_connection = xpc_dictionary_get_remote_connection(a2);
      if (!remote_connection)
      {
        value = xpc_dictionary_get_value(a2, "connection");
        if (!value || (remote_connection = value, object_getClass(value) != MEMORY[0x1E69E9E68]))
        {
          [CFPDSource validateSandboxForWrite:containerPath:];
        }
      }

      length[0] = 0;
      length[1] = length;
      *&v37 = 0x2020000000;
      BYTE8(v37) = 1;
      *&v32 = MEMORY[0x1E69E9820];
      *(&v32 + 1) = 3221225472;
      *&v33 = ___CFPrefsMessageSenderIsSandboxed_block_invoke;
      *(&v33 + 1) = &unk_1E6DD1E80;
      v34 = a2;
      v35 = length;
      withClientContext(remote_connection, &v32);
      v8 = *(length[1] + 24);
      _Block_object_dispose(length, 8);
      if (v8 == 1)
      {
        string = xpc_dictionary_get_string(a2, "CFPreferencesDomain");
        v10 = strlen(a3);
        if (v10)
        {
          v11 = strncmp(*(v5 + 56), a3, v10) != 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = strchr(string, 47) == 0;
        if ((v11 & !xpc_dictionary_get_BOOL(a2, "CFPreferencesHasFixedUpContainer") & v12) == 1)
        {
          v13 = copySanitizedDomain(string);
          length[0] = 0;
          v32 = 0u;
          v33 = 0u;
          data = xpc_dictionary_get_data(a2, "CFPreferencesAuditToken", length);
          if (data && length[0] == 32)
          {
            v15 = data[1];
            v32 = *data;
            v33 = v15;
          }

          else
          {
            if (!xpc_dictionary_get_remote_connection(a2))
            {
              v18 = xpc_dictionary_get_value(a2, "connection");
              if (!v18 || object_getClass(v18) != MEMORY[0x1E69E9E68])
              {
                [CFPDSource validateSandboxForWrite:containerPath:];
              }
            }

            xpc_connection_get_audit_token();
          }

          v19 = *MEMORY[0x1E69E9BD0];
          v20 = (*MEMORY[0x1E69E9BD0] | *MEMORY[0x1E69E9BB8]);
          *length = v32;
          v37 = v33;
          if (sandbox_check_by_audit_token())
          {
            v21 = *(v5 + 128);
            v23 = *(v5 + 56);
            v22 = *(v5 + 64);
            if ((*(v5 + 142) & 0x10) != 0)
            {
              v24 = 384;
            }

            else if (CFEqual(*(v5 + 40), @"kCFPreferencesAnyUser"))
            {
              v24 = 420;
            }

            else
            {
              v24 = 384;
            }

            *length = v32;
            v37 = v33;
            v30 = checkFileWriteData(length, v23, v21, v22, v24, v19);
            if (v30)
            {
              _CFPrefsSandboxCheckForMessage(a2);
            }
          }

          else
          {
            v30 = 0;
          }

          free(v13);
        }

        else
        {
          length[0] = 0;
          v32 = 0u;
          v33 = 0u;
          v16 = xpc_dictionary_get_data(a2, "CFPreferencesAuditToken", length);
          if (v16 && length[0] == 32)
          {
            v17 = v16[1];
            v32 = *v16;
            v33 = v17;
          }

          else
          {
            if (!xpc_dictionary_get_remote_connection(a2))
            {
              v25 = xpc_dictionary_get_value(a2, "connection");
              if (!v25 || object_getClass(v25) != MEMORY[0x1E69E9E68])
              {
                [CFPDSource validateSandboxForWrite:containerPath:];
              }
            }

            xpc_connection_get_audit_token();
          }

          v26 = *(v5 + 128);
          v28 = *(v5 + 56);
          v27 = *(v5 + 64);
          if ((*(v5 + 142) & 0x10) != 0)
          {
            v29 = 384;
          }

          else if (CFEqual(*(v5 + 40), @"kCFPreferencesAnyUser"))
          {
            v29 = 420;
          }

          else
          {
            v29 = 384;
          }

          *length = v32;
          v37 = v33;
          v30 = checkFileWriteData(length, v28, v26, v27, v29, 0);
        }

        result = v30 == 0;
      }

      else
      {
        result = 1;
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)validateSandboxForRead:(const char *)a3 containerPath:
{
  v39 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (!xdict)
    {
      [CFPDSource validateSandboxForRead:containerPath:];
    }

    v5 = result;
    if (*(result + 56))
    {
LABEL_8:
      remote_connection = xpc_dictionary_get_remote_connection(xdict);
      if (!remote_connection)
      {
        value = xpc_dictionary_get_value(xdict, "connection");
        remote_connection = value;
        if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
        {
          [CFPDSource validateSandboxForRead:containerPath:];
        }
      }

      length[0] = 0;
      length[1] = length;
      *&v38 = 0x2020000000;
      BYTE8(v38) = 1;
      *&v33 = MEMORY[0x1E69E9820];
      *(&v33 + 1) = 3221225472;
      *&v34 = ___CFPrefsMessageSenderIsSandboxed_block_invoke;
      *(&v34 + 1) = &unk_1E6DD1E80;
      v35 = xdict;
      v36 = length;
      withClientContext(remote_connection, &v33);
      v12 = *(length[1] + 24);
      _Block_object_dispose(length, 8);
      if (v12 != 1)
      {
        result = 1;
        goto LABEL_43;
      }

      string = xpc_dictionary_get_string(xdict, "CFPreferencesDomain");
      length[0] = 0;
      v33 = 0u;
      v34 = 0u;
      data = xpc_dictionary_get_data(xdict, "CFPreferencesAuditToken", length);
      if (data && length[0] == 32)
      {
        v15 = data[1];
        v33 = *data;
        v34 = v15;
      }

      else
      {
        if (!xpc_dictionary_get_remote_connection(xdict))
        {
          v16 = xpc_dictionary_get_value(xdict, "connection");
          if (!v16 || object_getClass(v16) != MEMORY[0x1E69E9E68])
          {
            [CFPDSource validateSandboxForRead:containerPath:];
          }
        }

        xpc_connection_get_audit_token();
      }

      if (*(v5 + 139) == 1)
      {
        if (!xpc_dictionary_get_remote_connection(xdict))
        {
          v17 = xpc_dictionary_get_value(xdict, "connection");
          if (!v17 || object_getClass(v17) != MEMORY[0x1E69E9E68])
          {
            [CFPDSource validateSandboxForRead:containerPath:];
          }
        }

        v18 = xpc_connection_copy_bundle_id();
        v19 = v18;
        if (!v18 || strcmp(v18, string))
        {
          v20 = copySanitizedDomain(string);
          v21 = (*MEMORY[0x1E69E9BD0] | *MEMORY[0x1E69E9BB8]);
          *length = v33;
          v38 = v34;
          v22 = sandbox_check_by_audit_token();
          free(v20);
LABEL_39:
          free(v19);
LABEL_40:
          if (v22)
          {
            result = 2;
          }

          else
          {
            result = 1;
          }

          goto LABEL_43;
        }
      }

      else
      {
        v23 = strlen(a3);
        if (v23)
        {
          v24 = strncmp(*(v5 + 56), a3, v23) != 0;
        }

        else
        {
          v24 = 1;
        }

        v25 = strchr(string, 47) == 0;
        if ((v24 & !xpc_dictionary_get_BOOL(xdict, "CFPreferencesHasFixedUpContainer") & v25) != 1)
        {
          v30 = (*MEMORY[0x1E69E9BC0] | *MEMORY[0x1E69E9BB8]);
          v31 = *(v5 + 56);
          *length = v33;
          v38 = v34;
          v22 = sandbox_check_by_audit_token();
          goto LABEL_40;
        }

        v19 = copySanitizedDomain(string);
        v26 = *MEMORY[0x1E69E9BD0];
        v27 = *MEMORY[0x1E69E9BB8];
        *length = v33;
        v38 = v34;
        if (sandbox_check_by_audit_token())
        {
          v28 = v26 | *MEMORY[0x1E69E9BC0] | v27;
          v29 = *(v5 + 56);
          *length = v33;
          v38 = v34;
          v22 = sandbox_check_by_audit_token();
          if (v22)
          {
            *length = v33;
            v38 = v34;
            sandbox_check_by_audit_token();
          }

          goto LABEL_39;
        }
      }

      v22 = 0;
      goto LABEL_39;
    }

    [result cacheFileInfo];
    v6 = *(v5 + 56);
    v7 = MEMORY[0x1865E4620](xdict);
    v8 = _CFPrefsDaemonLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v9)
      {
        [CFPDSource validateSandboxForRead:containerPath:];
      }

      free(v7);
      goto LABEL_8;
    }

    if (v9)
    {
      [CFPDSource validateSandboxForRead:containerPath:];
    }

    free(v7);
    result = 9;
  }

LABEL_43:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)validatePOSIXPermissionsForMessage:(int)a3 accessType:(int)a4 fileUID:(int)a5 mode:(char *)a6 fullyValidated:
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_assert_owner(a1 + 27);
  remote_connection = xpc_dictionary_get_remote_connection(a2);
  if (!remote_connection)
  {
    value = xpc_dictionary_get_value(a2, "connection");
    if (!value || (remote_connection = value, object_getClass(value) != MEMORY[0x1E69E9E68]))
    {
      [CFPDSource validatePOSIXPermissionsForMessage:accessType:fileUID:mode:fullyValidated:];
    }
  }

  euid = xpc_connection_get_euid(remote_connection);
  v15 = cfprefsdEuid();
  if (euid && v15 != euid)
  {
    if (a3 == 1 || (euid != a4 ? (v16 = 4) : (v16 = 256), (v16 & a5) == 0))
    {
      if (([CFPDSource validatePOSIXPermissionsForMessage:a1 accessType:a3 fileUID:euid mode:a6 fullyValidated:?]& 1) == 0)
      {
        return 1;
      }

      goto LABEL_18;
    }
  }

  v17 = byte_1EA84A4F7;
  if (byte_1EA84A4F7)
  {
LABEL_18:
    v20 = xpc_dictionary_dup_fd(a2, "CFPreferencesAccessToken");
    v18 = [(CFPDSource *)a1 validateAccessToken:v20 accessType:a3];
    if ((v20 & 0x80000000) == 0)
    {
      close(v20);
    }

    v17 = 1;
    goto LABEL_14;
  }

  v18 = 1;
LABEL_14:
  *a6 = v17;
  return v18;
}

- (int)validateMessage:(id)a3 withNewKey:(id)a4 newValue:(id)a5 plistIsAvailableToRead:(BOOL)a6 containerPath:(const char *)a7 fileUID:(unsigned int)a8 mode:(unsigned __int16)a9 diagnosticMessage:(const char *)a10
{
  v12 = a6;
  v28 = *MEMORY[0x1E69E9840];
  v17 = a4 != 0;
  if (!eduModeEnabled() || !xpc_dictionary_get_BOOL(a3, "AllowWritingSpecialKeysToGlobalPreferences"))
  {
    if (a4 || v12)
    {
      goto LABEL_11;
    }

LABEL_8:
    result = 1;
    goto LABEL_27;
  }

  if (!a4)
  {
    goto LABEL_8;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if (xpc_dictionary_get_BOOL(a3, "MultiKeySet"))
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __118__CFPDSource_validateMessage_withNewKey_newValue_plistIsAvailableToRead_containerPath_fileUID_mode_diagnosticMessage___block_invoke;
    v23[3] = &unk_1E6D7DAB0;
    v23[4] = &v24;
    xpc_dictionary_apply(a5, v23);
    v18 = *(v25 + 24);
  }

  else
  {
    string_ptr = xpc_string_get_string_ptr(a4);
    v18 = isSpecialKey(string_ptr);
    *(v25 + 24) = v18;
  }

  _Block_object_dispose(&v24, 8);
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  LOBYTE(v24) = 0;
  result = [(CFPDSource *)self validatePOSIXPermissionsForMessage:a3 accessType:v17 fileUID:a8 mode:a9 fullyValidated:&v24];
  if (v24 == 1)
  {
    if (result == 3)
    {
      v21 = "writing to another user's preferences requires sufficient permissions to write to the file";
      goto LABEL_26;
    }

    if (result == 2)
    {
      v21 = "accessing another user's preferences requires sufficient permissions to be able to read the file";
LABEL_26:
      *a10 = v21;
    }
  }

  else
  {
    result = [(CFPDSource *)self validateSandboxPermissionsForMessage:a3 containerPath:a7 accessType:v17];
    if (a7 && *a7)
    {
      if (result == 3)
      {
        v21 = "setting preferences outside an application's container requires user-preference-write or file-write-data sandbox access";
        goto LABEL_26;
      }

      if (result == 2)
      {
        v21 = "accessing preferences outside an application's container requires user-preference-read or file-read-data sandbox access";
        goto LABEL_26;
      }
    }

    else
    {
      if (result == 3)
      {
        v21 = "setting these preferences requires user-preference-write or file-write-data sandbox access";
        goto LABEL_26;
      }

      if (result == 2)
      {
        v21 = "accessing these preferences requires user-preference-read or file-read-data sandbox access";
        goto LABEL_26;
      }
    }
  }

LABEL_27:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __118__CFPDSource_validateMessage_withNewKey_newValue_plistIsAvailableToRead_containerPath_fileUID_mode_diagnosticMessage___block_invoke(uint64_t a1, char *__s2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24) == 1 && isSpecialKey(__s2);
  *(v3 + 24) = v4;
  return *(*(*(a1 + 32) + 8) + 24);
}

- (void)setObserved:(void *)a3 bySenderOfMessage:
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_assert_owner(a1 + 27);
    remote_connection = xpc_dictionary_get_remote_connection(a3);
    if (!remote_connection)
    {
      value = xpc_dictionary_get_value(a3, "connection");
      if (!value || (remote_connection = value, object_getClass(value) != MEMORY[0x1E69E9E68]))
      {
        [CFPDSource setObserved:bySenderOfMessage:];
      }
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__CFPDSource_setObserved_bySenderOfMessage___block_invoke;
    v11[3] = &unk_1E6DD1AB8;
    v12 = a2;
    v11[4] = a1;
    if (withClientContext(remote_connection, v11))
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __44__CFPDSource_setObserved_bySenderOfMessage___block_invoke_2;
      v9[3] = &unk_1E6DD1AE0;
      v10 = a2;
      v9[4] = a1;
      v9[5] = a3;
      v9[6] = remote_connection;
      os_unfair_lock_lock(a1 + 25);
      __44__CFPDSource_setObserved_bySenderOfMessage___block_invoke_2(v9);
      os_unfair_lock_unlock(a1 + 25);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __44__CFPDSource_setObserved_bySenderOfMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a2 + 24);
  if (v4 == 1)
  {
    if (!v5)
    {
      v7 = *byte_1EF0680C8;
      *(a2 + 24) = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &v7);
      v5 = *(a2 + 24);
    }

    CFSetAddValue(v5, *(a1 + 32));
  }

  else if (v5)
  {
    CFSetRemoveValue(v5, *(a1 + 32));
    if (!CFSetGetCount(*(a2 + 24)))
    {
      CFRelease(*(a2 + 24));
      *(a2 + 24) = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __44__CFPDSource_setObserved_bySenderOfMessage___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[9];
  if (*(a1 + 56) == 1)
  {
    if (!v3)
    {
      *(*(a1 + 32) + 72) = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
      v2 = *(a1 + 32);
    }

    v4 = *(a1 + 40);
    v5 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      _extractCFPDBits(v4, 0, v2, &__block_literal_global_407);
    }

    v6 = *(*(a1 + 32) + 72);
    v7 = *(a1 + 48);
    v8 = *MEMORY[0x1E69E9840];

    CFSetAddValue(v6, v7);
  }

  else
  {
    if (v3)
    {
      v10 = *(a1 + 40);
      length = 0;
      v19 = 0u;
      v20 = 0u;
      data = xpc_dictionary_get_data(v10, "CFPreferencesAuditToken", &length);
      if (data && length == 32)
      {
        v12 = data[1];
        v19 = *data;
        v20 = v12;
      }

      else
      {
        if (!xpc_dictionary_get_remote_connection(v10))
        {
          value = xpc_dictionary_get_value(v10, "connection");
          if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
          {
            __44__CFPDSource_setObserved_bySenderOfMessage___block_invoke_2_cold_1();
          }
        }

        xpc_connection_get_audit_token();
      }

      v14 = DWORD1(v20);
      v15 = *(a1 + 32);
      v16 = _CFPrefsDaemonLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *&v19 = MEMORY[0x1E69E9820];
        *(&v19 + 1) = 3221225472;
        *&v20 = __DEBUG_STOPPED_OBSERVING_block_invoke;
        *(&v20 + 1) = &unk_1E6DD1EA8;
        v21 = v10;
        v22 = v14;
        _extractCFPDBits(v10, 0, v15, &v19);
      }

      v17 = *(a1 + 48);
      [CFPDSource stopNotifyingObserver:?];
    }

    v9 = *MEMORY[0x1E69E9840];
  }
}

- (id)acceptMessage:(id)a3
{
  v81 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(CFPDDataBuffer *)self->_plist purgable])
  {
    [CFPDSource acceptMessage:];
  }

  reply = xpc_dictionary_create_reply(a3);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  v6 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __DEBUG_REQUEST_block_invoke;
    v78[3] = &unk_1E6DD1ED0;
    v78[4] = self;
    _extractCFPDBits(a3, 0, self, v78);
  }

  v68 = 0;
  v69 = 0;
  v67 = 0;
  int64 = xpc_dictionary_get_int64(a3, "CFPreferencesOperation");
  v8 = _CFPrefsDecodeKeyValuePairFromXPCMessage(a3, &v69, &v68, &v67);
  v66 = 0;
  if (xpc_dictionary_get_BOOL(a3, "CFPreferencesAvoidCache"))
  {
    [(CFPDSource *)self syncWriteToDiskAndFlushCacheForReason:@"we're avoiding the cache"];
  }

  if (xpc_dictionary_get_BOOL(a3, "CFPreferencesRestrictedReadability"))
  {
    *(self + 142) |= 0x10u;
  }

  if (xpc_dictionary_get_BOOL(a3, "CFPreferencesDisableBackups"))
  {
    *(self + 142) |= 0x40u;
  }

  self->_fileProtectionClass = xpc_dictionary_get_int64(a3, "CFPreferencesFileProtectionClass");
  if (xpc_dictionary_get_BOOL(a3, "kCFPreferencesTestingSimulateSlowFilesystem"))
  {
    byte_1EA84A4F3 = 1;
  }

  atomic_store(xpc_dictionary_get_int64(a3, "kCFPreferencesTestingSimulateOutOfDiskSpace"), &dword_1EA84A4FC);
  remote_connection = xpc_dictionary_get_remote_connection(a3);
  if (!remote_connection)
  {
    value = xpc_dictionary_get_value(a3, "connection");
    if (!value || (remote_connection = value, object_getClass(value) != MEMORY[0x1E69E9E68]))
    {
      [CFPDSource acceptMessage:];
    }
  }

  v78[0] = 0;
  v79 = 0u;
  v80 = 0u;
  data = xpc_dictionary_get_data(a3, "CFPreferencesAuditToken", v78);
  if (data && v78[0] == 32)
  {
    v12 = data[1];
    v79 = *data;
    v80 = v12;
  }

  else
  {
    if (!xpc_dictionary_get_remote_connection(a3))
    {
      v13 = xpc_dictionary_get_value(a3, "connection");
      if (!v13 || object_getClass(v13) != MEMORY[0x1E69E9E68])
      {
        [CFPDSource acceptMessage:];
      }
    }

    xpc_connection_get_audit_token();
  }

  bzero(v78, 0x400uLL);
  v75 = v79;
  v76 = v80;
  sandbox_container_path_for_audit_token();
  if (!v8)
  {
    goto LABEL_39;
  }

  if ((_CFPrefsReadOnly() & 1) == 0)
  {
    if (xpc_dictionary_get_BOOL(a3, "CFPreferencesUseCorrectOwner"))
    {
      Length = CFStringGetLength(self->_userName);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v18 = MEMORY[0x1EEE9AC00](MaximumSizeForEncoding, v17);
      v20 = &v59 - v19;
      bzero(&v59 - v19, v18 + 1);
      CFStringGetCString(self->_userName, v20, MaximumSizeForEncoding + 1, 0x8000100u);
      v21 = getpwnam(v20);
      if (v21)
      {
        pw_uid = v21->pw_uid;
        pw_gid = v21->pw_gid;
        goto LABEL_34;
      }

      v22 = _CFPrefsDaemonLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [CFPDSource acceptMessage:];
      }
    }

    pw_uid = xpc_connection_get_euid(remote_connection);
    pw_gid = xpc_connection_get_egid(remote_connection);
LABEL_34:
    if (pw_uid != self->_lastEuid || pw_gid != self->_lastEgid)
    {
      [(CFPDSource *)self syncWriteToDisk];
    }

    self->_lastEuid = pw_uid;
    self->_lastEgid = pw_gid;
    if (self->_parentFD == -1)
    {
      v14 = [(CFPDSource *)self cacheFileInfoForWriting:1 euid:pw_uid egid:pw_gid didCreate:&v66];
      goto LABEL_40;
    }

LABEL_39:
    v14 = 0;
    goto LABEL_40;
  }

  v14 = 8;
LABEL_40:
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v25 = xpc_dictionary_get_BOOL(a3, "ValidatePlist");
  if ((v8 & 1) != 0 || (v30 = v25, !self->_plist) && self->_parentFD == -1 && ([(CFPDSource *)self cacheFileInfo], self->_parentFD == -1))
  {
    v26 = 0;
    v27 = 0;
    v28 = -1;
    if (v14)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (_os_feature_enabled_impl() && CFStringFind(self->_domain, @"com.apple.", 0).location != -1)
  {
    if (acceptMessage__onceToken != -1)
    {
      [CFPDSource acceptMessage:];
    }

    if (acceptMessage___CFMKBDeviceUnlockedSinceBoot && !acceptMessage___CFMKBDeviceUnlockedSinceBoot())
    {
      actualPath = self->_actualPath;
      *&v75 = MEMORY[0x1E69E9820];
      *(&v75 + 1) = 3221225472;
      *&v76 = __ERROR_LOG_PREUNLOCK_ACCESS_block_invoke;
      *(&v76 + 1) = &__block_descriptor_40_e29_v64__0i8_12_20_28_36_44_52B60l;
      v77 = actualPath;
      _extractCFPDBits(a3, 0, self, &v75);
    }
  }

  if (v30 || self->_plist || (v32 = [(CFPDSource *)self openPropertyListWithoutDrainingPendingChangesOrValidatingPlistAndReturnFileUID:&v64 andMode:?], v32 == -1))
  {
    v27 = [(CFPDSource *)self copyPropertyListWithoutDrainingPendingChangesValidatingPlist:v30 andReturnFileUID:&v63 andMode:&v64];
    v28 = -1;
  }

  else
  {
    v28 = v32;
    v27 = 0;
  }

  v26 = v28 != -1 || v27 != 0;
  if (!v14)
  {
LABEL_42:
    LOWORD(v58) = v64;
    v14 = [(CFPDSource *)self validateMessage:a3 withNewKey:v69 newValue:v68 plistIsAvailableToRead:v26 containerPath:v78 fileUID:v63 mode:v58 diagnosticMessage:&v65];
  }

LABEL_43:
  if (v14 > 4)
  {
    if (v14 <= 6)
    {
      if (v14 == 5)
      {
        [CFPDSource acceptMessage:];
        goto LABEL_90;
      }

      v29 = "Invalid plist data";
      v34 = reply;
      v35 = 1;
      goto LABEL_89;
    }

    if (v14 != 7)
    {
      if (v14 == 8)
      {
        v29 = "Writing has been disabled";
      }

      else
      {
        if (v14 != 9)
        {
          goto LABEL_90;
        }

        v29 = "Unable to determine access";
      }

      goto LABEL_88;
    }

LABEL_81:
    v29 = "Path not accessible";
LABEL_88:
    v34 = reply;
    v35 = 0;
LABEL_89:
    populateErrorReply(v29, v34, v35);
    goto LABEL_90;
  }

  if (v14 > 2)
  {
    if (v14 == 3)
    {
      goto LABEL_82;
    }

    if (!self->_actualPath)
    {
      [(CFPDSource *)self cacheFileInfo];
      if (!self->_actualPath)
      {
        goto LABEL_81;
      }
    }

    populateErrorReply("Access token needed", reply, 3u);
    v47 = self->_actualPath;
    v48 = "CFPreferencesAccessToken";
LABEL_146:
    xpc_dictionary_set_string(reply, v48, v47);
    goto LABEL_90;
  }

  if (v14 != 1)
  {
    if (v14 != 2)
    {
      if (!v14)
      {
        [CFPDSource acceptMessage:];
      }

      goto LABEL_90;
    }

LABEL_82:
    if (v65)
    {
      v36 = v65;
    }

    else
    {
      v36 = "Operation not allowed";
    }

    populateErrorReply(v36, reply, 0);
    xpc_dictionary_set_BOOL(reply, "CFPreferencesErrorClientFault", 1);
    goto LABEL_90;
  }

  if (!v8)
  {
    if ((int64 - 7) <= 1)
    {
      [(CFPDSource *)self setObserved:a3 bySenderOfMessage:?];
      goto LABEL_90;
    }

    if (v28 != -1 || v27 || (v49 = self->_pendingChangesQueue) != 0 && xpc_array_get_count(v49))
    {
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __28__CFPDSource_acceptMessage___block_invoke_2;
      v62[3] = &unk_1E6D81EC0;
      v62[4] = self;
      [v27 quicklyValidatePlistAndOnFailureInvokeBlock:v62];
      v50 = [v27 copyXPCData];
      if (v50)
      {
        xpc_dictionary_set_value(reply, "CFPreferencesPropertyList", v50);
        xpc_release(v50);
      }

      if (v28 != -1)
      {
        xpc_dictionary_set_fd(reply, "PlistFD", v28);
      }

      pendingChangesQueue = self->_pendingChangesQueue;
      if (pendingChangesQueue && xpc_array_get_count(pendingChangesQueue))
      {
        v52 = xpc_array_create(0, 0);
        v53 = self->_pendingChangesQueue;
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __28__CFPDSource_acceptMessage___block_invoke_143;
        v61[3] = &unk_1E6DD1B08;
        v61[4] = v52;
        xpc_array_apply(v53, v61);
        xpc_dictionary_set_value(reply, "PlistDiff", v52);
        xpc_release(v52);
      }

      v54 = self->_actualPath;
      if (v50)
      {
        DEBUG_READ(a3, self, v54);
      }

      else
      {
        DEBUG_READ_EMPTY(a3, self, v54);
      }
    }

    xpc_dictionary_set_int64(reply, "CFPreferencesShmemIndex", self->_generationShmemIndex);
    bzero(&v75, 0x400uLL);
    [CFPrefsDaemon getShmemName:? bufLen:?];
    v48 = "CFPreferencesShmemName";
    v47 = &v75;
    goto LABEL_146;
  }

  v45 = [(CFPDSource *)self approximatePlistSizeIncludingPendingChanges];
  if (![(CFPDSource *)self enqueueNewKey:v69 value:v68 encoding:v67 inBatch:0 fromMessage:a3])
  {
    v29 = "Couldn't enqueue updated values";
    v34 = reply;
    v35 = 2;
    goto LABEL_89;
  }

  v46 = [(CFPDSource *)self approximatePlistSizeIncludingPendingChanges];
  if (v46 > v45)
  {
    [(CFPDSource *)self attachSizeWarningsToReply:v46 forByteCount:?];
  }

  if (xpc_dictionary_get_BOOL(a3, "CFPreferencesShouldWriteSynchronously") || v66 == 1)
  {
    [(CFPDSource *)self syncWriteToDisk];
  }

  v60 = v67;
  v55 = v68;
  v59 = v69;
  v56 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    if (v60)
    {
      v57 = v55;
    }

    else
    {
      v57 = v59;
    }

    _extractCFPDBits(a3, v57, self, &__block_literal_global_409);
  }

  [(CFPDSource *)self asyncNotifyObserversOfWriteFromConnection:remote_connection message:a3];
LABEL_90:
  xpc_dictionary_set_int64(reply, "CFPreferencesShmemIndex", self->_generationShmemIndex);
  bzero(&v75, 0x400uLL);
  [CFPrefsDaemon getShmemName:? bufLen:?];
  xpc_dictionary_set_string(reply, "CFPreferencesShmemName", &v75);
  v37 = atomic_load(([(CFPrefsDaemon *)self->_cfprefsd shmem]+ 4 * self->_generationShmemIndex));
  xpc_dictionary_set_uint64(reply, "CFPreferencesShmemState", v37);
  if (v14 == 1)
  {
    goto LABEL_101;
  }

  if (v14 == 4)
  {
    v38 = _CFPrefsDaemonLog();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_101;
    }

    v70 = MEMORY[0x1E69E9820];
    v71 = 3221225472;
    v72 = __DEBUG_NEEDS_TOKEN_block_invoke;
    v73 = &__block_descriptor_33_e29_v64__0i8_12_20_28_36_44_52B60l;
    LOBYTE(v74) = v8;
  }

  else
  {
    string = xpc_dictionary_get_string(reply, "CFPreferencesErrorDescription");
    if (v8)
    {
      v40 = &v68;
      if (!v67)
      {
        v40 = &v69;
      }

      v41 = *v40;
      v70 = MEMORY[0x1E69E9820];
      v71 = 3221225472;
      v72 = __ERROR_WRITE_REJECTED_block_invoke;
      v73 = &__block_descriptor_40_e29_v64__0i8_12_20_28_36_44_52B60l;
      v74 = string;
      v42 = a3;
      goto LABEL_100;
    }

    v70 = MEMORY[0x1E69E9820];
    v71 = 3221225472;
    v72 = __ERROR_READ_REJECTED_block_invoke;
    v73 = &__block_descriptor_40_e29_v64__0i8_12_20_28_36_44_52B60l;
    v74 = string;
  }

  v42 = a3;
  v41 = 0;
LABEL_100:
  _extractCFPDBits(v42, v41, self, &v70);
LABEL_101:
  if (v66 == 1)
  {
    [(CFPDSource *)self cleanUpIfNecessaryAfterCreatingPlist];
  }

  if ((*(self + 142) & 4) != 0)
  {
    [(CFPDSource *)self syncWriteToDiskAndFlushCacheForReason:@"we're never caching"];
  }

  [(CFPDSource *)self closeFileDescriptors];
  if (v69)
  {
    xpc_release(v69);
  }

  if (v68)
  {
    xpc_release(v68);
  }

  if (v28 != -1)
  {
    close(v28);
  }

  v43 = *MEMORY[0x1E69E9840];
  return reply;
}

uint64_t (*__28__CFPDSource_acceptMessage___block_invoke())(void)
{
  v0 = dlopen("/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag", 256);
  result = dlsym(v0, "MKBDeviceUnlockedSinceBoot");
  acceptMessage___CFMKBDeviceUnlockedSinceBoot = result;
  return result;
}

void __28__CFPDSource_acceptMessage___block_invoke_2(uint64_t a1)
{
  v2 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __28__CFPDSource_acceptMessage___block_invoke_2_cold_1(a1);
  }
}

- (void)processEndOfMessageIntendingToRemoveSource:(BOOL *)a3 replacingWithTombstone:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (*a3)
  {
    if ((*(self + 142) & 0x20) != 0)
    {
      *a3 = 0;
    }

    else
    {
      [(CFPDSource *)self processEndOfMessageIntendingToRemoveSource:v22 replacingWithTombstone:a4, a3];
    }
  }

  if (self->_actualPath)
  {
    if (_CFPrefsCurrentProcessIsCFPrefsD())
    {
      v7 = strlen(self->_actualPath);
      v8 = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, self->_actualPath, v7, 0);
      if (v8)
      {
        v9 = v8;
        PathComponent = CFURLCreateCopyDeletingLastPathComponent(&__kCFAllocatorSystemDefault, v8);
        CFRelease(v9);
        if (PathComponent)
        {
          v11 = CFURLCopyFileSystemPath(PathComponent, kCFURLPOSIXPathStyle);
          CFRelease(PathComponent);
          if (v11)
          {
            v12 = *a3;
            os_unfair_lock_assert_owner(&self->_lock);
            if (v12)
            {
              os_unfair_lock_lock(&dirWatcherLock);
              if (self->_watchingParentDirectory)
              {
                self->_watchingParentDirectory = 0;
                Value = CFDictionaryGetValue(dirWatcherTargets, v11);
                if (Value)
                {
                  v14 = Value;
                  v24.length = CFArrayGetCount(Value);
                  v24.location = 0;
                  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v14, v24, self);
                  if (FirstIndexOfValue != -1)
                  {
                    CFArrayRemoveValueAtIndex(v14, FirstIndexOfValue);
                  }

                  if (!CFArrayGetCount(v14))
                  {
                    CFDictionaryRemoveValue(dirWatcherTargets, v11);
                    v16 = watchedDirs;
                    v25.length = CFArrayGetCount(watchedDirs);
                    v25.location = 0;
                    v17 = CFArrayGetFirstIndexOfValue(v16, v25, v11);
                    if (v17 != -1)
                    {
                      CFArrayRemoveValueAtIndex(watchedDirs, v17);
LABEL_34:
                      os_unfair_lock_unlock(&dirWatcherLock);
                      os_unfair_lock_assert_not_owner(&dirWatcherLock);
                      dispatch_async(fseventsQueue, &__block_literal_global_428);
                      goto LABEL_31;
                    }
                  }
                }
              }
            }

            else
            {
              if ([(CFPrefsDaemon *)self->_cfprefsd role]== 2)
              {
LABEL_31:
                CFRelease(v11);
                goto LABEL_32;
              }

              if (initializeFSEvents_predicate != -1)
              {
                [CFPDSource processEndOfMessageIntendingToRemoveSource:replacingWithTombstone:];
              }

              if (_CFPrefsWatchForDeletionOfDirectory_onceToken != -1)
              {
                [CFPDSource processEndOfMessageIntendingToRemoveSource:replacingWithTombstone:];
              }

              v18 = _internString(v11);
              os_unfair_lock_lock(&dirWatcherLock);
              if (!self->_watchingParentDirectory)
              {
                self->_watchingParentDirectory = 1;
                Mutable = CFDictionaryGetValue(dirWatcherTargets, v18);
                if (!Mutable)
                {
                  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
                  if (Mutable)
                  {
                    CFDictionarySetValue(dirWatcherTargets, v18, Mutable);
                    CFRelease(Mutable);
                  }
                }

                v26.length = CFArrayGetCount(Mutable);
                v26.location = 0;
                if (!CFArrayContainsValue(Mutable, v26, self))
                {
                  CFArrayAppendValue(Mutable, self);
                }

                v20 = watchedDirs;
                v27.length = CFArrayGetCount(watchedDirs);
                v27.location = 0;
                if (!CFArrayContainsValue(v20, v27, v18))
                {
                  CFArrayAppendValue(watchedDirs, v18);
                  goto LABEL_34;
                }
              }
            }

            os_unfair_lock_unlock(&dirWatcherLock);
            goto LABEL_31;
          }
        }
      }
    }
  }

LABEL_32:
  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)getUncanonicalizedPath:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_0();
  os_unfair_lock_lock(v3 + 24);
  v4 = *(v1 + 88);
  if (v4)
  {
    v5 = CFStringFileSystemEncoding();
    v6 = CFStringGetCString(v4, v2, 1024, v5) != 0;
    os_unfair_lock_unlock((v1 + 96));
    return v6;
  }

  os_unfair_lock_unlock((v1 + 96));

  return [CFPDSource _getUncanonicalizedPath:v1];
}

id __58__CFPDSource_cacheFileInfoForWriting_euid_egid_didCreate___block_invoke(uint64_t a1, int token)
{
  v6 = *MEMORY[0x1E69E9840];
  notify_cancel(token);
  cacheFileInfoForWriting_euid_egid_didCreate__deviceEverUnlocked = 1;
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_3_5();
    OUTLINED_FUNCTION_18();
    result = [v4 lockedSync:?];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)handleDeviceUnlock
{
  v3 = *MEMORY[0x1E69E9840];
  if (result)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_3_5();
    OUTLINED_FUNCTION_18();
    result = [v1 lockedSync:?];
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_getUncanonicalizedPath:(_BOOL8)result
{
  if (result)
  {
    OUTLINED_FUNCTION_14_0();
    v5 = *(v3 + 40);
    v4 = *(v3 + 48);
    v6 = *(v3 + 138);
    v7 = [v3 container];
    v8 = *(v2 + 139);
    v9 = *(v2 + 140);

    return [CFPrefsDaemon _getUncanonicalizedSourcePath:v1 withDomain:v4 user:v5 byHost:v6 containerPath:v7 managed:v8 managedUsesContainer:v9];
  }

  return result;
}

- (uint64_t)shouldStayDirtyAfterOpenForWritingFailureWithErrno:(void *)a1
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v4 = _CFPrefsDaemonLog();
  v5 = v4;
  if (a2 != 28)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = a1[7];
      strerror(a2);
      v18 = 136380931;
      v19 = v12;
      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_7_1();
      _os_log_error_impl(v13, v14, v15, v16, v17, 0x16u);
    }

    goto LABEL_7;
  }

  v6 = 1;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = a1[5];
    v7 = a1[6];
    OUTLINED_FUNCTION_1_17();
    v20 = v9;
    _os_log_impl(&dword_1830E6000, v5, OS_LOG_TYPE_INFO, "Re-marking { %@, %@ } as dirty because attempt to open temporary path failed with ENOSPC", &v18, 0x16u);
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)cleanUpIfNecessaryAfterCreatingPlist
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 108));
    bzero(&v13, 0x90uLL);
    v2 = OUTLINED_FUNCTION_15_0();
    if (!v3)
    {
      if (fstatat(v2, *(a1 + 64), &v13, 32))
      {
        if (*__error() != 2)
        {
          v4 = _CFPrefsDaemonLog();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            v5 = *(a1 + 56);
            v6 = __error();
            strerror(*v6);
            v11 = 136380931;
            v12 = v5;
            OUTLINED_FUNCTION_5_3();
            _os_log_error_impl(&dword_1830E6000, v4, OS_LOG_TYPE_ERROR, "couldn't stat file at %{private}s due to %{public}s", &v11, 0x16u);
          }
        }
      }

      else if (!v13.st_size && (v13.st_mode & 0xF000) == 0x8000 && unlinkat(*(a1 + 128), *(a1 + 64), 0) == -1)
      {
        v7 = _CFPrefsDaemonLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          v9 = *(a1 + 56);
          v10 = __error();
          strerror(*v10);
          v11 = 136380931;
          v12 = v9;
          OUTLINED_FUNCTION_5_3();
          _os_log_fault_impl(&dword_1830E6000, v7, OS_LOG_TYPE_FAULT, "couldn't delete temporary file at %{private}s due to %{public}s", &v11, 0x16u);
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (uint64_t)markNeedsToReloadFromDiskDueToFailedWrite
{
  v3 = *MEMORY[0x1E69E9840];
  if (result)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_18();
    result = [v1 lockedAsync:?];
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)finishedNonRequestWriteWithResult:(__CFDictionary *)a3
{
  [(CFPDSource *)self lock];
  [(CFPDSource *)self handleWritingResult:a3];
  [(CFPDSource *)self tryEndAccessingPlist];

  [(CFPDSource *)self unlock];
}

- (uint64_t)openPropertyListWithoutDrainingPendingChangesOrValidatingPlistAndReturnFileUID:(mode_t *)a3 andMode:
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 104));
    v6 = OUTLINED_FUNCTION_15_0();
    if (v7 && ([a1 cacheFileInfo], v6 = OUTLINED_FUNCTION_15_0(), v7))
    {
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = openat(v6, *(a1 + 64), 256);
      if (v8 != -1)
      {
        bzero(&v11, 0x90uLL);
        if (fstat(v8, &v11) || v11.st_size < 0x100000)
        {
          close(v8);
          v8 = 0xFFFFFFFFLL;
        }

        if (a2)
        {
          *a2 = v11.st_uid;
        }

        if (a3)
        {
          *a3 = v11.st_mode;
        }
      }
    }

    os_unfair_lock_unlock((a1 + 104));
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)observingConnectionsLockedSync:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_11_0();
    os_unfair_lock_lock(v3 + 25);
    (*(v2 + 16))(v2);

    os_unfair_lock_unlock(v1 + 25);
  }
}

- (void)observingConnectionWasInvalidated:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  [CFPDSource observingConnectionsLockedSync:?];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)stopNotifyingObserver:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_11_0();
    os_unfair_lock_assert_owner(v3 + 25);
    v4 = *(v1 + 72);
    if (v4)
    {
      CFSetRemoveValue(v4, v2);
      if (!CFSetGetCount(*(v1 + 72)))
      {
        CFRelease(*(v1 + 72));
        *(v1 + 72) = 0;
      }
    }
  }
}

- (void)clearCacheForReason:(__CFString *)a3
{
  v9[5] = *MEMORY[0x1E69E9840];
  v5 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0_24();
    v9[1] = 3221225472;
    v9[2] = __DEBUG_CACHE_EVICT_block_invoke;
    v9[3] = &__block_descriptor_40_e29_v64__0i8_12_20_28_36_44_52B60l;
    v9[4] = a3;
    _extractCFPDBits(0, 0, self, v9);
  }

  [(CFPDSource *)self setDirty:0];
  pendingChangesQueue = self->_pendingChangesQueue;
  if (pendingChangesQueue)
  {
    xpc_release(pendingChangesQueue);
  }

  [(CFPDSource *)self clearPlist];
  self->_pendingChangesQueue = 0;
  self->_pendingChangesSize = 0;
  free(self->_actualPath);
  self->_actualPath = 0;
  *(self + 143) &= ~2u;
  free(self->_fileName);
  self->_fileName = 0;
  parentFD = self->_parentFD;
  if ((parentFD & 0x80000000) == 0)
  {
    close(parentFD);
  }

  self->_parentFD = -1;
  v8 = *MEMORY[0x1E69E9840];
}

- (uint64_t)validateAccessToken:(int)a3 accessType:
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = 0;
    goto LABEL_28;
  }

  if (a2 == -1)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  bzero(__s2, 0x400uLL);
  if (a2 < 0)
  {
    v8 = _CFPrefsDaemonLog();
    if (OUTLINED_FUNCTION_12_0(v8))
    {
      *buf = 67109120;
      LODWORD(v53) = a2;
LABEL_12:
      OUTLINED_FUNCTION_13_0();
      v14 = 8;
LABEL_13:
      _os_log_impl(v9, v10, v11, v12, v13, v14);
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  bzero(&v57, 0x90uLL);
  if (!fstat(a2, &v57))
  {
    if (fcntl(a2, 50, __s2) == -1)
    {
      v17 = _CFPrefsDaemonLog();
      if (!OUTLINED_FUNCTION_12_0(v17))
      {
        goto LABEL_28;
      }

      goto LABEL_41;
    }

    v15 = *(a1 + 56);
    if (v15)
    {
      v16 = strdup(v15);
    }

    else
    {
      v16 = 0;
    }

    if (*(a1 + 128) == -1)
    {
      [a1 cacheFileInfo];
      if (*(a1 + 128) == -1)
      {
        v22 = _CFPrefsDaemonLog();
        if (OUTLINED_FUNCTION_12_0(v22))
        {
          *buf = 0;
          OUTLINED_FUNCTION_13_0();
          _os_log_impl(v23, v24, v25, v26, v27, 2u);
        }

        free(v16);
        goto LABEL_28;
      }
    }

    if (v16 && strcmp(*(a1 + 56), v16))
    {
      v18 = _CFPrefsDaemonLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 56);
        *buf = 136315394;
        v53 = v16;
        v54 = 2080;
        v55 = v19;
        _os_log_impl(&dword_1830E6000, v18, OS_LOG_TYPE_INFO, "Failed access token check because _actualPath has changed since the last-known path (%s vs %s)", buf, 0x16u);
      }

      [a1 clearCacheForReason:@"observed actual path changed"];
      free(v16);
      goto LABEL_27;
    }

    free(v16);
    if (byte_1EA84A4F9)
    {
      [a1 setDirty:1];
      [a1 syncWriteToDisk];
      [a1 cacheFileInfo];
      byte_1EA84A4F9 = 0;
    }

    v28 = [(CFPDSource *)a1 openActualPath];
    if (v28 == -1)
    {
      v37 = _CFPrefsDaemonLog();
      if (!OUTLINED_FUNCTION_12_0(v37))
      {
        goto LABEL_28;
      }

      goto LABEL_41;
    }

    v29 = v28;
    bzero(&v56, 0x90uLL);
    if (fstat(v29, &v56))
    {
      v30 = _CFPrefsDaemonLog();
      if (!OUTLINED_FUNCTION_12_0(v30))
      {
LABEL_39:
        close(v29);
        goto LABEL_28;
      }

      v31 = *__error();
      OUTLINED_FUNCTION_17_0();
LABEL_38:
      OUTLINED_FUNCTION_13_0();
      _os_log_impl(v32, v33, v34, v35, v36, 8u);
      goto LABEL_39;
    }

    bzero(buf, 0x400uLL);
    if (fcntl(v29, 50, buf) == -1)
    {
      v40 = _CFPrefsDaemonLog();
      if (!OUTLINED_FUNCTION_12_0(v40))
      {
        goto LABEL_39;
      }

      v41 = *__error();
      *v48 = 67109120;
      LODWORD(v49) = v41;
      goto LABEL_38;
    }

    close(v29);
    if (strcmp(buf, __s2))
    {
      v39 = _CFPrefsDaemonLog();
      if (!OUTLINED_FUNCTION_12_0(v39))
      {
        goto LABEL_28;
      }

      *v48 = 136315394;
      v49 = __s2;
      v50 = 2080;
      v51 = buf;
      OUTLINED_FUNCTION_13_0();
      v14 = 22;
      goto LABEL_13;
    }

    v42 = *(a1 + 56);
    if (!v42 || strcmp(buf, v42))
    {
      v43 = _CFPrefsDaemonLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = *(a1 + 56);
        *v48 = 136315394;
        v49 = __s2;
        v50 = 2080;
        v51 = v44;
        _os_log_impl(&dword_1830E6000, v43, OS_LOG_TYPE_INFO, "Failed access token check because verification path doesn't match known actual path (%s vs %s)", v48, 0x16u);
      }

      [a1 clearCacheForReason:@"observed actual path changed"];
      goto LABEL_28;
    }

    if (v56.st_dev == v57.st_dev && v56.st_ino == v57.st_ino)
    {
      if (v56.st_nlink)
      {
        if (a3 != 1 || (fcntl(a2, 3, 0) & 3) == 2)
        {
          v6 = 1;
          goto LABEL_28;
        }

        v47 = _CFPrefsDaemonLog();
        if (!OUTLINED_FUNCTION_12_0(v47))
        {
          goto LABEL_28;
        }

        *v48 = 0;
        OUTLINED_FUNCTION_13_0();
        v14 = 2;
        goto LABEL_13;
      }

      v45 = _CFPrefsDaemonLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *v48 = 0;
        v46 = "Failed access token check because the file it references has been unlinked";
        goto LABEL_61;
      }
    }

    else
    {
      v45 = _CFPrefsDaemonLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *v48 = 0;
        v46 = "Failed access token check because inode of token doesn't match verification inode";
LABEL_61:
        _os_log_impl(&dword_1830E6000, v45, OS_LOG_TYPE_INFO, v46, v48, 2u);
      }
    }

LABEL_27:
    v6 = 4;
    goto LABEL_28;
  }

  v7 = _CFPrefsDaemonLog();
  if (OUTLINED_FUNCTION_12_0(v7))
  {
LABEL_41:
    v38 = *__error();
    OUTLINED_FUNCTION_17_0();
    goto LABEL_12;
  }

LABEL_28:
  v20 = *MEMORY[0x1E69E9840];
  return v6;
}

- (__CFString)_canTrustUserPropertyForPOSIXPermissionCheckForAccessType:(__CFString *)result
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    result = result[1].data;
    if (result)
    {
      result = (!CFStringHasPrefix(result, @"/") && (data = v2[1].data, v11.length = CFStringGetLength(data), v11.location = 0, !CFStringFindWithOptions(data, @"..", v11, 0, 0)) && ((v6 = [(__CFString *)v2 container]) == 0 || CFStringGetFileSystemRepresentation(v6, buffer, 1024) && (getpid(), v7 = *MEMORY[0x1E69E9BD0], !sandbox_check())) && ((v2[4].info & 0x200000000000000) == 0 || a2 != 0));
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)validateSandboxPermissionsForMessage:(const char *)a3 containerPath:(int)a4 accessType:
{
  if (result)
  {
    if (a4 == 1)
    {
      if ([(CFPDSource *)result validateSandboxForWrite:a2 containerPath:a3])
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    else
    {

      return [(CFPDSource *)result validateSandboxForRead:a2 containerPath:a3];
    }
  }

  return result;
}

- (void)handleAvoidCache
{
  if (result)
  {
    return [result syncWriteToDiskAndFlushCacheForReason:@"we're avoiding the cache"];
  }

  return result;
}

- (void)handleNeverCache
{
  if (result)
  {
    return [result syncWriteToDiskAndFlushCacheForReason:@"we're never caching"];
  }

  return result;
}

- (void)handleEUIDorEGIDMismatch
{
  if (result)
  {
    return [result syncWriteToDisk];
  }

  return result;
}

- (void)handleSynchronous
{
  if (result)
  {
    return [result syncWriteToDisk];
  }

  return result;
}

- (void)handleNoPlistFound
{
  if (result)
  {
    return [result syncWriteToDisk];
  }

  return result;
}

- (void)attachSizeWarningsToReply:(unint64_t)a3 forByteCount:
{
  if (a1)
  {
    v4 = _CFPrefsDomainSizeAcceptabilityForByteCount(a3);

    xpc_dictionary_set_int64(a2, "CFPreferencesByteCountThreshold", v4);
  }
}

const os_unfair_lock *__80__CFPDSource_processEndOfMessageIntendingToRemoveSource_replacingWithTombstone___block_invoke(uint64_t a1)
{
  result = [(CFPDSource *)*(a1 + 32) hasObservers];
  if (result)
  {
    **(a1 + 40) = [[CFPDObserverOnlyTombstone alloc] initMatchingSource:*(a1 + 32)];
    v3 = *(a1 + 32);
    v4 = **(a1 + 40);

    return [v4 alreadyLocked_transferObservingConnectionsFromSource:v3];
  }

  return result;
}

- (void)cacheFileInfoForWriting:(uint64_t)a1 euid:egid:didCreate:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 48);
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cacheFileInfoForWriting:euid:egid:didCreate:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_0();
  v4 = 1024;
  v5 = v0;
  _os_log_debug_impl(&dword_1830E6000, v1, OS_LOG_TYPE_DEBUG, "Couldn't open parent path %{private}s due to %{darwin.errno}d", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)cacheFileInfoForWriting:euid:egid:didCreate:.cold.3()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)cacheFileInfoForWriting:euid:egid:didCreate:.cold.4()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)cacheFileInfoForWriting:euid:egid:didCreate:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)cacheFileInfoForWriting:euid:egid:didCreate:.cold.6()
{
  OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cacheFileInfoForWriting:(os_log_t)log euid:egid:didCreate:.cold.7(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = 0;
  _os_log_debug_impl(&dword_1830E6000, log, OS_LOG_TYPE_DEBUG, "Simulating ENOSPC in cacheFileInfo for testing", v2, 2u);
  v1 = *MEMORY[0x1E69E9840];
}

- (uint64_t)setDirty:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = +[_CFPrefsSynchronizer sharedInstance];
  [_CFPrefsSynchronizer noteDirtySource:v2];
  memcpy(__dst, "CFPrefs domain dirty: ", sizeof(__dst));
  if (!CFStringGetCString(*(a1 + 48), &__dst[22], 490, 0x8000100u))
  {
    __strncat_chk();
  }

  result = os_transaction_create();
  *(a1 + 80) = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)createDiskWrite
{
  OUTLINED_FUNCTION_14_0();
  v2 = __error();
  [v1 setDirty:{-[CFPDSource shouldStayDirtyAfterOpenForWritingFailureWithErrno:](v1, *v2)}];

  os_unfair_lock_unlock(v0);
}

uint64_t __29__CFPDSource_createDiskWrite__block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = *(a1 + 40);
  if (result)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_18();
    result = [v2 lockedAsync:?];
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)copyPropertyListWithoutDrainingPendingChangesValidatingPlist:(uint64_t)a1 andReturnFileUID:andMode:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)copyPropertyListWithoutDrainingPendingChangesValidatingPlist:(uint64_t)a1 andReturnFileUID:andMode:.cold.2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __100__CFPDSource_copyPropertyListWithoutDrainingPendingChangesValidatingPlist_andReturnFileUID_andMode___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __100__CFPDSource_copyPropertyListWithoutDrainingPendingChangesValidatingPlist_andReturnFileUID_andMode___block_invoke_70_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __33__CFPDSource_drainPendingChanges__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)validateSandboxForRead:containerPath:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0(&dword_1830E6000, v0, v1, "Initial attempt to validate sandbox access of message %{private}s in container %{private}s due to no plist path, but we recovered successfully by recalculating the path.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)validateSandboxForRead:containerPath:.cold.5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0(&dword_1830E6000, v0, v1, "unable to validate sandbox access of message %{private}s in container %{private}s due to no plist path, conservatively assuming not allowed.");
  v2 = *MEMORY[0x1E69E9840];
}

- (uint64_t)validatePOSIXPermissionsForMessage:(uid_t)a3 accessType:(_BYTE *)a4 fileUID:mode:fullyValidated:.cold.1(uint64_t a1, int a2, uid_t a3, _BYTE *a4)
{
  if (![(CFPDSource *)a1 _canTrustUserPropertyForPOSIXPermissionCheckForAccessType:a2])
  {
    return 1;
  }

  v7 = _CFPrefsCopyUserNameForUID(a3);
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  if (CFEqual(*(a1 + 40), v7))
  {
    v9 = 0;
    *a4 = 0;
  }

  else
  {
    v9 = 1;
  }

  CFRelease(v8);
  return v9;
}

- (void)acceptMessage:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(&dword_1830E6000, v0, OS_LOG_TYPE_FAULT, "unable to find user information for requested user %s", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)acceptMessage:.cold.4()
{
  OUTLINED_FUNCTION_11_0();
  v4 = *MEMORY[0x1E69E9840];
  populateErrorReply("Directory needed", v0, 4u);
  bzero(string, 0x402uLL);
  if ([CFPDSource getUncanonicalizedPath:v1])
  {
    xpc_dictionary_set_string(v0, "CFPreferencesUncanonicalizedPath", string);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __28__CFPDSource_acceptMessage___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)processEndOfMessageIntendingToRemoveSource:(uint64_t)a3 replacingWithTombstone:(_BYTE *)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  OUTLINED_FUNCTION_14_0();
  if ([(CFPDSource *)v8 isEmpty])
  {
    *v4 = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __80__CFPDSource_processEndOfMessageIntendingToRemoveSource_replacingWithTombstone___block_invoke;
    v4[3] = &unk_1E6DD1B30;
    v4[4] = v5;
    v4[5] = a3;
    [CFPDSource observingConnectionsLockedSync:v5];
  }

  else
  {
    *a4 = 0;
  }
}

@end