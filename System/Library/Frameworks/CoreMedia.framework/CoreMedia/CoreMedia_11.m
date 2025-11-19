double cmtime_getMappingFromArrayOrExtrapolate@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  CMTimeMake(&lhs, 1, 1);
  if (lhs.epoch)
  {
    v20 = 0u;
    memset(v21, 0, 24);
  }

  else
  {
    v20 = *&kCMTimeZero.value;
    *&v21[0] = 0;
    *(v21 + 8) = *&lhs.value;
  }

  CMTimeMake(&lhs, 1, 1);
  if (lhs.epoch)
  {
    v22 = 0u;
    memset(v23, 0, sizeof(v23));
  }

  else
  {
    v22 = *&kCMTimeZero.value;
    *v23 = 0;
    *&v23[8] = *&lhs.value;
  }

  v8 = v21[0];
  *a4 = v20;
  *(a4 + 16) = v8;
  *(a4 + 32) = *&v21[1];
  *(a4 + 40) = 0;
  *&v9 = v22;
  v10 = *v23;
  *(a4 + 48) = v22;
  *(a4 + 64) = v10;
  *(a4 + 80) = *&v23[16];
  *(a4 + 88) = 0;
  if (a3 >= a2)
  {
    if (a2)
    {
      v15 = a1 + 96 * a2;
      if (*(v15 - 56))
      {
        memset(&v17, 0, sizeof(v17));
      }

      else
      {
        lhs = *(v15 - 96);
        *&rhs.value = *(v15 - 72);
        rhs.epoch = 0;
        CMTimeAdd(&v17, &lhs, &rhs);
      }

      *a4 = v17;
      if (*(v15 - 8))
      {
        memset(&v17, 0, sizeof(v17));
      }

      else
      {
        lhs = *(v15 - 48);
        *&rhs.value = *(v15 - 24);
        rhs.epoch = 0;
        CMTimeAdd(&v17, &lhs, &rhs);
      }

      *&v9 = v17.value;
      *(a4 + 48) = v17;
    }
  }

  else
  {
    v11 = (a1 + 96 * a3);
    v12 = v11[3];
    *(a4 + 32) = v11[2];
    *(a4 + 48) = v12;
    v13 = v11[5];
    *(a4 + 64) = v11[4];
    *(a4 + 80) = v13;
    v9 = *v11;
    v14 = v11[1];
    *a4 = *v11;
    *(a4 + 16) = v14;
  }

  return *&v9;
}

uint64_t CMTimeCompareExtraApproximately(CMTime *a1, CMTime *a2)
{
  memset(&v8, 0, sizeof(v8));
  lhs = *a1;
  v5 = *a2;
  CMTimeSubtract(&time, &lhs, &v5);
  CMTimeAbsoluteValue(&v8, &time);
  CMTimeMake(&time, 10, 1000000000);
  lhs = v8;
  if (CMTimeCompare(&lhs, &time) < 1)
  {
    return 0;
  }

  time = *a1;
  lhs = *a2;
  return CMTimeCompare(&time, &lhs);
}

uint64_t figEndpointMessengerRemoteXPC_EnsureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __figEndpointMessengerRemoteXPC_EnsureClientEstablished_block_invoke;
  block[3] = &unk_1E74A0F18;
  block[4] = &v3;
  if (figEndpointMessengerRemoteXPC_EnsureClientEstablished_gFigEndpointMessengerClientSetupOnce != -1)
  {
    dispatch_once(&figEndpointMessengerRemoteXPC_EnsureClientEstablished_gFigEndpointMessengerClientSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t remoteXPCEndpointMessenger_DeadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage(a1);
  *(result + 1) = 1;
  return result;
}

unint64_t FigEndpointMessengerRemoteXPC_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  cf = 0;
  v16 = 0;
  ObjectID = remoteXPCEndpointMessenger_GetObjectID(a1, &v16);
  if (ObjectID)
  {
    v11 = ObjectID;
    if (!a4)
    {
      goto LABEL_11;
    }

    v12 = 0;
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v11 = FigXPCSendStdCopyPropertyMessage(gFigEndpointMessengerRemoteClient, v16, a2, &cf, v7, v8, v9, v10);
  v12 = cf;
  if (!a4)
  {
    goto LABEL_9;
  }

  if (!cf)
  {
    goto LABEL_7;
  }

  v13 = CFRetain(cf);
  v12 = cf;
LABEL_8:
  *a4 = v13;
LABEL_9:
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_11:
  FigXPCRemoteClientKillServerOnTimeout(gFigEndpointMessengerRemoteClient, v11, "FigEndpointMessengerRemoteXPC_CopyProperty", a2);
  return v11;
}

uint64_t remoteXPCEndpointMessenger_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    remoteXPCEndpointMessenger_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[1])
    {
      remoteXPCEndpointMessenger_GetObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  return result;
}

uint64_t RegisterFigRetainProxyType()
{
  result = _CFRuntimeRegisterClass();
  sFigRetainProxyID = result;
  return result;
}

uint64_t FigRetainProxyInvalidate(uint64_t a1)
{
  FigReentrantMutexLock(*(a1 + 16));
  *(a1 + 48) = 1;
  v2 = *(a1 + 16);

  return FigReentrantMutexUnlock(v2);
}

CFTypeRef FigRetainProxyRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void FigRetainProxyRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigRetainProxyLockMutex(uint64_t a1)
{
  v2 = FigReentrantMutexLock(*(a1 + 16));
  figRetainProxyIncrementLockCount(a1);
  return v2;
}

void figRetainProxyIncrementLockCount(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(a1 + 40) = v1 + 1;
  if (!v1)
  {
    v3 = FigCFWeakReferenceHolderCopyReferencedObject(*(a1 + 32));
    if (v3 == *(a1 + 24))
    {
      *(a1 + 49) = 1;
    }

    else
    {
      if (v3)
      {
        CFRelease(v3);
      }

      *(a1 + 48) = 1;
    }
  }
}

uint64_t FigRetainProxyTryLockMutex(uint64_t a1)
{
  v2 = FigReentrantMutexTryLock(*(a1 + 16));
  if (v2)
  {
    figRetainProxyIncrementLockCount(a1);
  }

  return v2;
}

uint64_t FigRetainProxyConditionVariableWaitRelative(uint64_t a1, pthread_cond_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 40) - 1;
  *(a1 + 40) = v11;
  if (!v11 && *(a1 + 49) == 1)
  {
    *(a1 + 49) = 0;
    v12 = *(a1 + 24);
    if (v12)
    {
      CFRelease(v12);
    }
  }

  v13 = FigConditionVariableWaitRelative(a2, *(a1 + 16), a3, a4, a5, a6, a7, a8);
  figRetainProxyIncrementLockCount(a1);
  return v13;
}

uint64_t FigRetainProxyUnlockMutex(uint64_t a1)
{
  v2 = *(a1 + 40) - 1;
  *(a1 + 40) = v2;
  if (v2 || *(a1 + 49) != 1)
  {
    v6 = *(a1 + 16);

    return FigReentrantMutexUnlock(v6);
  }

  else
  {
    *(a1 + 49) = 0;
    v3 = *(a1 + 24);
    v4 = FigReentrantMutexUnlock(*(a1 + 16));
    if (v3)
    {
      CFRelease(v3);
    }

    return v4;
  }
}

uint64_t FigRetainProxyUnlockAll(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (*(a1 + 49))
  {
    *(a1 + 49) = 0;
    v3 = *(a1 + 24);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  if (v2 >= 1)
  {
    v4 = v2;
    do
    {
      FigReentrantMutexUnlock(*(a1 + 16));
      --v4;
    }

    while (v4);
  }

  return v2;
}

void FigRetainProxyRelock(uint64_t a1, uint64_t a2)
{
  do
  {
    FigReentrantMutexLock(*(a1 + 16));
    figRetainProxyIncrementLockCount(a1);
  }

  while (*(a1 + 40) < a2);
}

CFTypeRef FigRetainProxyRetainOwner(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void FigRetainProxyReleaseOwner(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t FigRetainProxyCreate(const void *a1, uint64_t a2, void *a3)
{
  if (!a2 || !a3)
  {
    FigRetainProxyCreate_cold_3(&v14);
    return v14;
  }

  FigThreadRunOnce(&sRegisterFigRetainProxyTypeOnce, RegisterFigRetainProxyType);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigRetainProxyCreate_cold_2(&v13);
    return v13;
  }

  v7 = Instance;
  v8 = FigReentrantMutexCreateWithFlags(a1, 2);
  v7[2] = v8;
  if (!v8)
  {
    v11 = 337;
LABEL_12:
    FigRetainProxyCreate_cold_1(v11, v7, &v12);
    return v12;
  }

  v7[3] = a2;
  v9 = FigCFWeakReferenceHolderCreateWithReferencedObject(a2);
  v7[4] = v9;
  if (!v9)
  {
    v11 = 340;
    goto LABEL_12;
  }

  result = 0;
  v7[5] = 0;
  *a3 = v7;
  return result;
}

double FigRetainProxyInit(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

__n128 FigRetainProxyFinalize(__n128 *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a1[2].n128_u64[0];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1 + 1;
  if (a1[1].n128_u64[0])
  {
    if (a1[2].n128_i64[1] >= 1)
    {
      v12[0] = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, v12, &type);
      v5 = v12[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v7 = v5;
      }

      else
      {
        v7 = v5 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v12[1] = 136315394;
        v13 = "FigRetainProxyFinalize";
        v14 = 2048;
        v15 = a1;
        v8 = _os_log_send_and_compose_impl();
        LOBYTE(v5) = v12[0];
      }

      else
      {
        v8 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 0, v8, v8 != &v16, v5, 0, v6);
      if (FigCanTriggerTapToRadar())
      {
        FigLogBacktrace();
        RadarDescriptionString = FigTapToRadarCreateRadarDescriptionString(*MEMORY[0x1E695E480], @"FigRetainProxy with non-zero lock count is finalizing, deallocating a locked FigReentrantMutex. This likely causes a crash later when the mutex is unlocked. See <rdar://155142378>");
        FigTriggerTapToRadar(@"Serious issue detected during media playback - deallocated a locked mutex", @"Deallocating FigRetainProxy with non-zero lockCount, thus deallocating a locked FigReeentrantMutex", RadarDescriptionString, 0x143C88u);
        if (RadarDescriptionString)
        {
          CFRelease(RadarDescriptionString);
        }
      }
    }

    FigReentrantMutexDestroy(v3->n128_u64[0]);
  }

  v3[2].n128_u64[0] = -1;
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *v3 = result;
  v3[1] = result;
  return result;
}

CFStringRef FigRetainProxyCopyDebugDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 24);
  if (*(a1 + 49))
  {
    v4 = " retained";
  }

  else
  {
    v4 = "";
  }

  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"[FigRetainProxy %p owner %p%s retain count %d lock count %d", a1, v3, v4, v5, *(a1 + 40));
}

uint64_t FigIsReferenceAllowedBySecurityPolicy(const __CFURL *a1, const __CFURL *a2, char a3)
{
  URLZone = GetURLZone(a1);
  v7 = GetURLZone(a2);
  if ((a3 & 2) != 0 && URLZone == 2 && v7 == 1 || (a3 & 4) != 0 && URLZone == 1 && v7 == 2)
  {
    return 0;
  }

  if ((a3 & 0x10) == 0 || URLZone != 1 || v7 != 1)
  {
    v8 = 1;
    if ((a3 & 8) == 0 || URLZone != 2 || v7 != 2)
    {
      return v8;
    }

    v9 = CFURLCopyScheme(a1);
    v10 = CFURLCopyScheme(a2);
    v11 = CFURLCopyHostName(a1);
    v12 = CFURLCopyHostName(a2);
    v13 = v12;
    if (v9 && v11 && v10 && v12)
    {
      if (CFStringCompare(v9, v10, 1uLL))
      {
        v8 = 0;
      }

      else
      {
        v8 = CFStringCompare(v11, v13, 1uLL) == kCFCompareEqualTo;
      }
    }

    else if (!v9)
    {
LABEL_29:
      if (v10)
      {
        CFRelease(v10);
      }

LABEL_31:
      if (!v11)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    CFRelease(v9);
    goto LABEL_29;
  }

  v11 = CFURLCopyAbsoluteURL(a1);
  v14 = CFURLCopyAbsoluteURL(a2);
  v13 = v14;
  if (!v11 || !v14)
  {
    v8 = 1;
    goto LABEL_31;
  }

  v8 = CFEqual(v11, v14);
LABEL_32:
  CFRelease(v11);
LABEL_33:
  if (v13)
  {
    CFRelease(v13);
  }

  return v8;
}

uint64_t GetURLZone(const __CFURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFURLCopyScheme(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = 1;
  if (CFStringCompare(v1, @"file", 1uLL))
  {
    if (CFStringCompare(v2, @"res", 1uLL))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  CFRelease(v2);
  return v3;
}

uint64_t figCustomURLLoaderRemote_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*(DerivedStorage + 8))
  {
    figCustomURLLoaderRemote_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 9))
    {
      figCustomURLLoaderRemote_GetObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  return result;
}

uint64_t figCustomURLLoaderRemote_DeadConnectionCallback(const void *a1)
{
  v2 = CFGetTypeID(a1);
  result = FigCustomURLLoaderGetCFTypeID();
  if (v2 == result)
  {
    result = CMBaseObjectGetDerivedStorage(a1);
    *(result + 8) = 1;
  }

  return result;
}

void figCustomURLLoaderRemote_serverStatePurged(const void *a1, uint64_t a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == FigCustomURLLoaderGetCFTypeID())
  {
    *(CMBaseObjectGetDerivedStorage(a1) + 9) = 1;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt64(Mutable, @"PurgeIdentifier", a2, v6, v7, v8, v9, v10);
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification(DefaultLocalCenter, 0x1F0B839D0, a1, Mutable);
    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }
}

uint64_t figCustomURLLoaderRemote_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage(a1);
  v10 = qword_1ED4CCBD8;

  return FigXPCSendStdSetPropertyMessage(v10, v5, a2, a3, v6, v7, v8, v9);
}

uint64_t figCustomURLLoaderRemote_GetURL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (DerivedStorage && (v12 = *(DerivedStorage + 24)) != 0)
  {
    v13 = *(*(CMBaseObjectGetVTable(*(DerivedStorage + 24)) + 16) + 24);
    if (v13)
    {

      return v13(v12, a2, a3, a4, a5, a6);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    figCustomURLLoaderRemote_GetURL_cold_1(&v15);
    return v15;
  }
}

uint64_t figCustomURLLoaderRemote_CancelRequest(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (DerivedStorage && (v4 = *(DerivedStorage + 24)) != 0)
  {
    v5 = *(*(CMBaseObjectGetVTable(*(DerivedStorage + 24)) + 16) + 32);
    if (v5)
    {

      return v5(v4, a2);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    figCustomURLLoaderRemote_CancelRequest_cold_1(&v7);
    return v7;
  }
}

uint64_t RegisterFigManagedFilePoolType()
{
  result = _CFRuntimeRegisterClass();
  sFigManagedFilePoolID = result;
  return result;
}

size_t FigManagedFilePoolCreate(int64_t a1, CFAllocatorRef Default, void *a3)
{
  if (a1 <= 0)
  {
    FigManagedFilePoolCreate_cold_3(&v23);
    v8 = 0;
    v15 = v23;
    if (!a3)
    {
      return v15;
    }

    goto LABEL_18;
  }

  if (!a3)
  {
    FigManagedFilePoolCreate_cold_2(&v22);
    return v22;
  }

  FigThreadRunOnce(&sRegisterFigManagedFilePoolTypeOnce, RegisterFigManagedFilePoolType);
  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (!Instance)
  {
    FigManagedFilePoolCreate_cold_1(&v21);
    v15 = v21;
LABEL_18:
    *a3 = v8;
    return v15;
  }

  if (Default)
  {
    *(Instance + 16) = Default;
  }

  else
  {
    Default = CFAllocatorGetDefault();
    v8[2] = Default;
    if (!Default)
    {
      goto LABEL_8;
    }
  }

  CFRetain(Default);
LABEL_8:
  v9 = FigReentrantMutexCreate();
  v8[3] = v9;
  if (!v9)
  {
    v17 = 908;
    goto LABEL_26;
  }

  v10 = malloc_type_calloc(a1, 0x10uLL, 0x20040A4A59CD2uLL);
  if (!v10)
  {
    v17 = 232;
LABEL_26:
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0EuLL, "<<< ManagedFiles >>>", v17, v3, v19, v20);
    if (v15)
    {
      CFRelease(v8);
      v8 = 0;
    }

    goto LABEL_18;
  }

  if (a1 != 1)
  {
    v11 = 0;
    v12 = vdupq_n_s64(a1 - 2);
    v13 = v10 + 16;
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v11), xmmword_197165580)));
      if (v14.i8[0])
      {
        *(v13 - 2) = v13;
      }

      if (v14.i8[4])
      {
        *v13 = v13 + 2;
      }

      v11 += 2;
      v13 += 4;
    }

    while ((a1 & 0x7FFFFFFFFFFFFFFELL) != v11);
  }

  v15 = 0;
  v8[6] = a1;
  v8[7] = v10;
  if (a3)
  {
    goto LABEL_18;
  }

  return v15;
}

size_t FigManagedFilePoolCreateByteStreamForFile(const void *a1, const __CFURL *a2, int a3, uint64_t a4, CFTypeRef *a5)
{
  cf = 0;
  if (!a1)
  {
    FigManagedFilePoolCreateByteStreamForFile_cold_4(&v20);
    return v20;
  }

  if (!a2)
  {
    FigManagedFilePoolCreateByteStreamForFile_cold_3(&v20);
    return v20;
  }

  if (!a5)
  {
    FigManagedFilePoolCreateByteStreamForFile_cold_2(&v20);
    return v20;
  }

  if ((a3 & 0xFFFFFFBF) != 0)
  {
    FigManagedFilePoolCreateByteStreamForFile_cold_1(&v20);
    return v20;
  }

  ClassID = CMByteStreamGetClassID();
  v15 = CMDerivedObjectCreate(a4, &kManagedFileByteStreamVTable, ClassID, &cf, v11, v12, v13, v14);
  v16 = cf;
  if (v15 || (DerivedStorage = CMBaseObjectGetDerivedStorage(cf), *DerivedStorage = CFRetain(a1), *(DerivedStorage + 16) = 0, *(DerivedStorage + 24) = 0, *(DerivedStorage + 32) = 0, v15 = FindAndRetainManagedFile(DerivedStorage, a2, 0, a3), v16 = cf, v15))
  {
    if (v16)
    {
      CFRelease(v16);
    }
  }

  else
  {
    *a5 = cf;
  }

  return v15;
}

size_t FindAndRetainManagedFile(uint64_t a1, const __CFURL *a2, unsigned int *a3, int a4)
{
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v9 = *(a1 + 16);
  v10 = *a1;
  v29 = 0;
  if (!v9)
  {
    FileInfo = FigFileGetFileInfo(a2, &v30);
    if (!FileInfo)
    {
      goto LABEL_3;
    }

    st_dev = FileInfo;
LABEL_28:
    *(a1 + 8) = 0;
    goto LABEL_21;
  }

  DarwinFileDesc = FigFileGetDarwinFileDesc(a3);
  if (DarwinFileDesc == -1)
  {
    FindAndRetainManagedFile_cold_2(&v33);
    st_dev = v33.st_dev;
    goto LABEL_28;
  }

  memset(&v33, 0, sizeof(v33));
  if (fstat(DarwinFileDesc, &v33))
  {
    if (!FindAndRetainManagedFile_cold_1(&v33, v34))
    {
      st_dev = v34[0];
      goto LABEL_28;
    }
  }

  else
  {
    FindAndRetainManagedFile_cold_3(&v33, &v30);
  }

LABEL_3:
  FigReentrantMutexLock(*(v10 + 24));
  v12 = *(v10 + 32);
  if (v12)
  {
    while (!CFEqual(a2, *(v12 + 24)) || *(v12 + 16) != a4 || !FigFileInfoEqual(&v30, v12 + 32) || *(v12 + 72) != v9)
    {
      v12 = *(v12 + 8);
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    FigAtomicIncrement32((v12 + 88));
    goto LABEL_19;
  }

LABEL_9:
  v13 = malloc_type_calloc(1uLL, 0x68uLL, 0x106004065D502D3uLL);
  if (v13)
  {
    v12 = v13;
    v13[22] = 1;
    *(v13 + 3) = CFRetain(a2);
    *(v12 + 16) = a4;
    v14 = v31;
    *(v12 + 32) = v30;
    *(v12 + 48) = v14;
    *(v12 + 64) = v32;
    *(v12 + 72) = v9;
    v15 = *a1;
    FigReentrantMutexLock(*(*a1 + 24));
    if (*(a1 + 16))
    {
      if (!a3)
      {
        FindAndRetainManagedFile_cold_4(v34);
        st_dev = v34[0];
        if (!v34[0])
        {
          goto LABEL_15;
        }

LABEL_31:
        FigReentrantMutexUnlock(*(v15 + 24));
        DisposeManagedFile(v12);
        goto LABEL_32;
      }

      v16 = &v29;
      v17 = a1;
      v18 = a3;
    }

    else
    {
      v17 = a1;
      v18 = 0;
      v16 = 0;
    }

    st_dev = AccessManagedFileHelper(v17, v18, v16, v12);
    if (!st_dev)
    {
LABEL_15:
      FigAtomicDecrement32((v12 + 92));
      v20 = (v15 + 32);
      v21 = *(v15 + 32);
      if (v21)
      {
        *v21 = v12;
        v22 = *v20;
        v20 = v12;
      }

      else
      {
        v22 = v12;
      }

      v20[1] = v22;
      *(v15 + 32) = v12;
      FigReentrantMutexUnlock(*(v15 + 24));
LABEL_19:
      st_dev = 0;
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  st_dev = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0EuLL, "<<< ManagedFiles >>>", 0x14D, v4, v27, v28);
LABEL_32:
  v12 = 0;
LABEL_20:
  FigReentrantMutexUnlock(*(v10 + 24));
  v23 = v29;
  *(a1 + 8) = v12;
  if (!v23)
  {
LABEL_21:
    FigFileForkClose(a3);
  }

  return st_dev;
}

double ManagedFilePoolInit(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void ManagedFilePoolFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    FigReentrantMutexDestroy(v2);
    *(a1 + 24) = 0;
  }

  free(*(a1 + 56));
  *(a1 + 56) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }
}

__CFString *ManagedFilePoolCopyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = a1[6];
  v5 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"FigManagedFilePool %p of %d descriptors retainCount: %d", a1, v4, v5);
  return Mutable;
}

void ManagedFileByteStreamFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v2 = DerivedStorage;
  v3 = DerivedStorage[1];
  if (v3)
  {
    v4 = *DerivedStorage;
    FigReentrantMutexLock(*(*DerivedStorage + 24));
    if (!FigAtomicDecrement32((v3 + 88)))
    {
      CloseManagedFile(v4, v3);
      v5 = (v4 + 32);
      v6 = *(v3 + 8);
      if (*v3)
      {
        v5 = (*v3 + 8);
      }

      *v5 = v6;
      v7 = (v4 + 40);
      if (v6)
      {
        v7 = v6;
      }

      *v7 = *v3;
      *v3 = 0;
      *(v3 + 8) = 0;
      DisposeManagedFile(v3);
    }

    FigReentrantMutexUnlock(*(v4 + 24));
    v2[1] = 0;
  }

  v8 = v2[4];
  if (v8)
  {
    CFRelease(v8);
    v2[4] = 0;
  }

  v2[3] = 0;
  if (*v2)
  {
    CFRelease(*v2);
    *v2 = 0;
  }
}

__CFString *ManagedFileByteStreamCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = CFCopyDescription(*(DerivedStorage[1] + 24));
  v4 = v3;
  v5 = @"UNKNOWN PATH";
  if (v3)
  {
    v5 = v3;
  }

  if (*(DerivedStorage[1] + 80))
  {
    v6 = "open";
  }

  else
  {
    v6 = "closed";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigManagedFileByteStream %p>{%@} Owning pool %p Currently %s", DerivedStorage, v5, *DerivedStorage, v6);
  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

void CloseManagedFile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  if (v2)
  {
    *(a2 + 80) = 0;
    v4 = v2[1];
    if (v4)
    {
      CFRelease(v4);
      v2[1] = 0;
    }

    *v2 = *(a1 + 56);
    *(a1 + 56) = v2;
  }
}

void DisposeManagedFile(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t AccessManagedFileHelper(uint64_t a1, unsigned int *a2, _BYTE *a3, uint64_t a4)
{
  v9 = *a1;
  FigReentrantMutexLock(*(*a1 + 24));
  FigAtomicIncrement32((a4 + 92));
  *(a4 + 96) = FigGetUpTimeNanoseconds();
  if (*(a4 + 80))
  {
    goto LABEL_2;
  }

  v12 = v9[7];
  if (v12)
  {
LABEL_5:
    v9[7] = *v12;
    *v12 = 0;
  }

  else
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v18 = v9[4];
      if (!v18)
      {
        FigUSleep(0x64u);
LABEL_38:
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCF68uLL, "<<< ManagedFiles >>>", 0x254, v4, v25, v26);
        FigReentrantMutexUnlock(v9[3]);
        if (!v10)
        {
          return v10;
        }

        goto LABEL_39;
      }

      v19 = 0;
      v20 = 0;
      do
      {
        if (*(v18 + 92))
        {
          ++v19;
        }

        else if (*(v18 + 80) && *(v18 + 96) < v17)
        {
          v17 = *(v18 + 96);
          v20 = v18;
        }

        v18 = *(v18 + 8);
      }

      while (v18);
      if (v20)
      {
        break;
      }

      FigUSleep(0x64u);
      if (v19 <= 1)
      {
        goto LABEL_38;
      }
    }

    CloseManagedFile(v9, v20);
    v12 = v9[7];
    if (v12)
    {
      goto LABEL_5;
    }
  }

  if (*(a1 + 16))
  {
    v14 = *(a1 + 24);
    v13 = *(a1 + 32);
    cf = 0;
    v28 = 0;
    if (a2)
    {
      v10 = FigByteStreamCreateFromReadOnlyOpenFileAssumingOwnership(a2, *MEMORY[0x1E695E480], &cf);
      v15 = 0;
      if (!v10)
      {
        v16 = 0;
LABEL_28:
        v15 = 0;
        v10 = 0;
        *(v12 + 8) = cf;
        cf = 0;
        *(a4 + 80) = v12;
        goto LABEL_29;
      }

      v16 = 0;
LABEL_29:
      FigFileForkClose(v15);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      if (a3)
      {
        *a3 = 1;
      }

      if (!v10)
      {
        goto LABEL_2;
      }

      goto LABEL_36;
    }

    if (v14)
    {
      v22 = FigCFWeakReferenceHolderCopyReferencedObject(v13);
      v16 = v22;
      if (v22)
      {
        v10 = v14(v22, &v28);
        v15 = v28;
        if (v10)
        {
          goto LABEL_29;
        }

        v23 = FigByteStreamCreateFromReadOnlyOpenFileAssumingOwnership(v28, *MEMORY[0x1E695E480], &cf);
        v28 = 0;
        if (!v23)
        {
          goto LABEL_28;
        }

        v10 = v23;
        v15 = 0;
        goto LABEL_29;
      }

      AccessManagedFileHelper_cold_1(&v29);
      v15 = 0;
    }

    else
    {
      AccessManagedFileHelper_cold_2(&v29);
      v15 = 0;
      v16 = 0;
    }

    v10 = v29;
    goto LABEL_29;
  }

  v21 = CMByteStreamCreateForFileURL(*MEMORY[0x1E695E480], *(a4 + 24), *(a4 + 16), (v12 + 8));
  if (!v21)
  {
    *(a4 + 80) = v12;
LABEL_2:
    FigReentrantMutexUnlock(v9[3]);
    return 0;
  }

  v10 = v21;
LABEL_36:
  *v12 = v9[7];
  v9[7] = v12;
  FigReentrantMutexUnlock(v9[3]);
LABEL_39:
  FigAtomicDecrement32((a4 + 92));
  return v10;
}

uint64_t OUTLINED_FUNCTION_2_27(uint64_t a1)
{
  v2 = *(a1 + 8);

  return AccessManagedFileHelper(a1, 0, 0, v2);
}

uint64_t OUTLINED_FUNCTION_5_23()
{
  v2 = (*(v0 + 8) + 92);

  return FigAtomicDecrement32(v2);
}

uint64_t OUTLINED_FUNCTION_6_22(uint64_t a1)
{

  return CMBaseObjectGetDerivedStorage(a1);
}

size_t _createWithCFData(const void *a1, int a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  cf = 0;
  if (a3)
  {
    _createWithCFData_cold_1(&v18);
    return v18;
  }

  if (!a1)
  {
    _createWithCFData_cold_2(&v18);
    return v18;
  }

  ClassID = CMByteStreamGetClassID();
  v14 = CMDerivedObjectCreate(a4, &kFigDataByteStreamVTable, ClassID, &cf, v10, v11, v12, v13);
  if (v14)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
    *DerivedStorage = CFRetain(a1);
    if (a2)
    {
      DerivedStorage[1] = CFRetain(a1);
    }

    v14 = 0;
    *a5 = cf;
  }

  return v14;
}

void FigDataByteStreamFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {

    CFRelease(v5);
  }
}

size_t FigDataByteStreamCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (CFEqual(a2, @"FBS_EntireLength") || CFEqual(a2, @"FBS_AvailableLength"))
  {
    v8 = *MEMORY[0x1E695E480];
    Length = CFDataGetLength(*DerivedStorage);
    SInt64 = FigCFNumberCreateSInt64(v8, Length);
LABEL_4:
    v11 = SInt64;
LABEL_5:
    result = 0;
    *a4 = v11;
    return result;
  }

  if (CFEqual(a2, @"FBS_EntireLengthAvailableOnDemand"))
  {
    v13 = *MEMORY[0x1E695E4D0];
LABEL_8:
    SInt64 = CFRetain(v13);
    goto LABEL_4;
  }

  if (CFEqual(a2, @"FBS_URL"))
  {
    v13 = *(DerivedStorage + 16);
    if (v13)
    {
      goto LABEL_8;
    }

    return 4294954512;
  }

  if (CFEqual(a2, @"FBS_FileType"))
  {
    v13 = *(DerivedStorage + 32);
    if (v13)
    {
      goto LABEL_8;
    }

    return 4294954512;
  }

  if (CFEqual(a2, @"FBS_MIMEType"))
  {
    v13 = *(DerivedStorage + 24);
    if (v13)
    {
      goto LABEL_8;
    }

    return 4294954512;
  }

  if (CFEqual(a2, @"FBS_ReadSupported"))
  {
    v14 = MEMORY[0x1E695E4D0];
    goto LABEL_23;
  }

  if (CFEqual(a2, @"FBS_WriteSupported"))
  {
    v14 = MEMORY[0x1E695E4D0];
    if (!*(DerivedStorage + 8))
    {
      v14 = MEMORY[0x1E695E4C0];
    }

LABEL_23:
    v13 = *v14;
    if (!*v14)
    {
      v11 = 0;
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE10uLL, "(Fig)", 0xC3, v4, v15, v16);
}

size_t FigDataByteStreamSetProperty(const void *a1, const void *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (CFEqual(a2, @"FBS_URL"))
  {
    if (a3)
    {
      v8 = CFGetTypeID(a3);
      if (v8 == CFURLGetTypeID())
      {
        v9 = DerivedStorage[2];
        DerivedStorage[2] = a3;
        goto LABEL_9;
      }

      FigDataByteStreamSetProperty_cold_1(&v18);
      return v18;
    }

    v9 = DerivedStorage[2];
    DerivedStorage[2] = 0;
    if (!v9)
    {
      return 0;
    }

LABEL_21:
    CFRelease(v9);
    return 0;
  }

  if (!CFEqual(a2, @"FBS_FileType"))
  {
    if (CFEqual(a2, @"FBS_MIMEType"))
    {
      if (!a3 || (v13 = CFGetTypeID(a3), v13 == CFStringGetTypeID()))
      {
        v14 = DerivedStorage[3];
        if (v14)
        {
          CFRelease(v14);
          DerivedStorage[3] = 0;
        }

        if (a3)
        {
          v15 = CFGetAllocator(a1);
          Copy = CFStringCreateCopy(v15, a3);
          result = 0;
          DerivedStorage[3] = Copy;
          return result;
        }

        return 0;
      }

      FigDataByteStreamSetProperty_cold_3(&v20);
      return v20;
    }

    else
    {

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE10uLL, "(Fig)", 0xE0, v3, v11, v12);
    }
  }

  if (!a3)
  {
    v9 = DerivedStorage[4];
    DerivedStorage[4] = 0;
    if (!v9)
    {
      return 0;
    }

    goto LABEL_21;
  }

  v10 = CFGetTypeID(a3);
  if (v10 == CFNumberGetTypeID())
  {
    v9 = DerivedStorage[4];
    DerivedStorage[4] = a3;
LABEL_9:
    CFRetain(a3);
    if (!v9)
    {
      return 0;
    }

    goto LABEL_21;
  }

  FigDataByteStreamSetProperty_cold_2(&v19);
  return v19;
}

uint64_t FigDataByteStreamGetAvailableLengthAtOffset(uint64_t a1, uint64_t a2, CFIndex *a3)
{
  CMBaseObject = CMByteStreamGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage(CMBaseObject);
  if (a3)
  {
    Length = CFDataGetLength(*DerivedStorage);
    result = 0;
    *a3 = (Length - a2) & ~((Length - a2) >> 63);
  }

  else
  {
    FigDataByteStreamGetAvailableLengthAtOffset_cold_1(&v9);
    return v9;
  }

  return result;
}

size_t RegisterFigCPECryptorType()
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&sFigCPECryptorClassDesc, ClassID, 1, &sFigCPECryptorClassID, v1, v2, v3, v4);
}

uint64_t FigCPECryptorGetTypeID()
{
  FigThreadRunOnce(&FigCPECryptorGetClassID_sRegisterFigCPECryptorTypeOnce, RegisterFigCPECryptorType);
  v0 = sFigCPECryptorClassID;

  return CMBaseClassGetCFTypeID(v0);
}

size_t FigCPECopyCryptorForSerializationToken(void *a1, CFTypeRef *a2)
{
  if (FigCPECryptorServerExistsInProcess())
  {

    return FigCPECryptorServerCopyCryptorForID(a1, a2, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    v11 = *MEMORY[0x1E695E480];

    return FigCPECryptorRemoteRetainCopiedCryptor(v11, a1, a2);
  }
}

uint64_t FigTransportServiceGetClassID()
{
  if (_MergedGlobals_41 != -1)
  {
    FigTransportServiceGetClassID_cold_1();
  }

  return qword_1ED4CCC00;
}

size_t service_getClassID(void *a1)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&service_getClassID_sClassDesc, ClassID, 1, a1, v3, v4, v5, v6);
}

uint64_t FigTransportServiceGetTypeID()
{
  if (_MergedGlobals_41 != -1)
  {
    FigTransportServiceGetClassID_cold_1();
  }

  v1 = qword_1ED4CCC00;

  return CMBaseClassGetCFTypeID(v1);
}

uint64_t FigSandboxRegistrationGetTypeID()
{
  if (sRegisterFigSandboxRegistrationTypeOnce != -1)
  {
    FigSandboxRegistrationGetTypeID_cold_1();
  }

  return sFigSandboxRegistrationID;
}

uint64_t RegisterFigSandboxRegistrationType()
{
  result = _CFRuntimeRegisterClass();
  sFigSandboxRegistrationID = result;
  return result;
}

size_t FigSandboxRegistrationCreate(const __CFData *a1, uint64_t a2, const void *a3, void *a4)
{
  v9 = *MEMORY[0x1E695E480];
  if (sRegisterFigSandboxRegistrationTypeOnce != -1)
  {
    FigSandboxRegistrationGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v11 = Instance;
    *(Instance + 24) = a2;
    CFDataGetBytePtr(a1);
    if (a3)
    {
      v12 = CFRetain(a3);
    }

    else
    {
      v12 = 0;
    }

    v11[2] = v12;
    v13 = sandbox_extension_consume();
    v11[4] = v13;
    if (v13 == -1)
    {
      FigSandboxRegistrationServerDumpMappings(v11);
      v15 = *__error();
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      if (v15 == 12)
      {
        v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBA1uLL, "<<<< SandboxRegistration >>>>", 0x115, v4, v17, v18);
        cf = 0;
        FigServer_CopyProcessName(a2, &cf);
        RadarDescriptionString = FigTapToRadarCreateRadarDescriptionString(v9, @"Pid %d (%@) failed to share sandbox extension for '%@' with mediaplaybackd - possible leak of sandbox extensions.", a2, cf, a3);
        FigTriggerTapToRadar(@"mediaplaybackd failed to obtain access to a media file", @"mediaplaybackd cannot access file. Failure to consume sandbox extension.", RadarDescriptionString, 0x16FF06u);
        if (RadarDescriptionString)
        {
          CFRelease(RadarDescriptionString);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (FigSandboxRegistrationCreate_onceToken != -1)
        {
          FigSandboxRegistrationCreate_cold_3();
        }
      }

      else
      {
        v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBA3uLL, "<<<< SandboxRegistration >>>>", 0x12F, v4, v17, v18);
      }

      CFRelease(v11);
    }

    else
    {
      if (figSandboxRegistrationRecordForDiagnosticLogging_onceToken != -1)
      {
        FigSandboxRegistrationCreate_cold_2();
      }

      FigSimpleMutexLock(figSandboxRegistrationRecordForDiagnosticLogging_mutex);
      FigCFWeakReferenceTableAddValueAssociatedWithKey(figSandboxRegistrationRecordForDiagnosticLogging_sandboxRegistrations, v11, v11);
      FigSimpleMutexUnlock(figSandboxRegistrationRecordForDiagnosticLogging_mutex);
      v14 = 0;
      *a4 = v11;
    }
  }

  else
  {
    FigSandboxRegistrationCreate_cold_4(&v22);
    return v22;
  }

  return v14;
}

void __FigSandboxRegistrationCreate_block_invoke()
{
  v0 = dispatch_queue_create(0, 0);
  v1 = dispatch_time(0, 60000000000);
  dispatch_after(v1, v0, &__block_literal_global_14);

  dispatch_release(v0);
}

size_t FigSandboxRegistrationCreateWithURLOnSelfGrantingReadWriteAccess(const __CFURL *a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (sRegisterFigSandboxRegistrationTypeOnce != -1)
  {
    FigSandboxRegistrationGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigSandboxRegistrationCreateWithURLOnSelfGrantingReadWriteAccess_cold_4(buffer);
    return *buffer;
  }

  v8 = Instance;
  *(Instance + 24) = a2;
  v9 = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  CFStringGetCString(v9, buffer, 1024, 0x8000100u);
  if (buffer[0])
  {
    v10 = sandbox_extension_issue_file_to_self();
    if (v10)
    {
      v11 = v10;
      v12 = sandbox_extension_consume();
      v8[4] = v12;
      if (v12 != -1)
      {
        *a3 = v8;
        free(v11);
        v13 = 0;
        if (!v9)
        {
          return v13;
        }

        goto LABEL_11;
      }

      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBA3uLL, "<<<< SandboxRegistration >>>>", 0x15E, v3, v15, v16);
      free(v11);
    }

    else
    {
      FigSandboxRegistrationCreateWithURLOnSelfGrantingReadWriteAccess_cold_2();
      v13 = 0;
    }
  }

  else
  {
    FigSandboxRegistrationCreateWithURLOnSelfGrantingReadWriteAccess_cold_3(&v18);
    v13 = v18;
  }

  CFRelease(v8);
  if (v9)
  {
LABEL_11:
    CFRelease(v9);
  }

  return v13;
}

void *figSandboxRegistrationInit(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = -1;
  return result;
}

void figSandboxRegistrationFinalize(uint64_t a1)
{
  if (*(a1 + 32) != -1)
  {
    sandbox_extension_release();
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

__CFString *figSandboxRegistrationCopyFormattingDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (FigIsItOKToLogURLs())
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = @"<REDACTED>";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigSandboxRegistration %p> hold <extensionHandle %lld> for client PID %d - %@", a1, v4, v5, v6);
  return Mutable;
}

__CFString *figSandboxRegistrationCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = *(a1 + 24);
  if (FigIsItOKToLogURLs())
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = @"<REDACTED>";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigSandboxRegistration %p> for client PID %d - %@", a1, v4, v5);
  return Mutable;
}

void __figSandboxRegistrationRecordForDiagnosticLogging_block_invoke()
{
  figSandboxRegistrationRecordForDiagnosticLogging_mutex = FigSimpleMutexCreate();
  FigCFWeakReferenceTableCreate(*MEMORY[0x1E695E480], 1, &figSandboxRegistrationRecordForDiagnosticLogging_sandboxRegistrations);

  FigInstallSysdiagnoseBlock(@"Sandbox Registrations", &__block_literal_global_33_0);
}

uint64_t __figSandboxRegistrationRecordForDiagnosticLogging_block_invoke_2()
{
  v34 = *MEMORY[0x1E69E9840];
  v0 = &sVCCPreallocationSaveToSymlinkCString[720];
  FigSimpleMutexLock(figSandboxRegistrationRecordForDiagnosticLogging_mutex);
  v1 = figSandboxRegistrationRecordForDiagnosticLogging_sandboxRegistrations;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    FigCFWeakReferenceTableApplyFunction(v1, figSandboxRegistrationDumpAllApply, Mutable);
    v4 = FigCFDictionaryCopyArrayOfKeys(v3);
    if (v4)
    {
      v5 = v4;
      if (CFArrayGetCount(v4) <= 0)
      {
        CFRelease(v3);
      }

      else
      {
        v6 = 0;
        do
        {
          ValueAtIndex = FigCFArrayGetValueAtIndex(v5, v6);
          Value = CFDictionaryGetValue(v3, ValueAtIndex);
          v9 = Value;
          if (Value)
          {
            Count = CFArrayGetCount(Value);
          }

          else
          {
            Count = 0;
          }

          cf = 0;
          SInt32 = FigCFNumberGetSInt32(ValueAtIndex);
          FigServer_CopyProcessName(SInt32, &cf);
          v21 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v21, &type);
          v13 = v21;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v15 = v13;
          }

          else
          {
            v15 = v13 & 0xFFFFFFFE;
          }

          if (v15)
          {
            v16 = "s";
            if (Count == 1)
            {
              v16 = "";
            }

            v23 = 136316162;
            v24 = "figSandboxRegistrationDumpAll";
            v25 = 2114;
            v26 = ValueAtIndex;
            v27 = 2114;
            v28 = cf;
            v29 = 2048;
            v30 = Count;
            v31 = 2082;
            v32 = v16;
            v17 = _os_log_send_and_compose_impl();
            LOBYTE(v13) = v21;
          }

          else
          {
            v17 = 0;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v17, v17 != &v33, v13, 0, v14);
          if (FigIsItOKToLogURLs() && Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              CFArrayGetValueAtIndex(v9, i);
            }
          }

          if (cf)
          {
            CFRelease(cf);
          }

          ++v6;
        }

        while (v6 < CFArrayGetCount(v5));
        CFRelease(v3);
        v0 = sVCCPreallocationSaveToSymlinkCString + 720;
      }

      CFRelease(v5);
    }

    else
    {
      __figSandboxRegistrationRecordForDiagnosticLogging_block_invoke_2_cold_1(v3);
    }
  }

  else
  {
    __figSandboxRegistrationRecordForDiagnosticLogging_block_invoke_2_cold_2();
  }

  return FigSimpleMutexUnlock(*(v0 + 294));
}

void figSandboxRegistrationDumpAllApply(uint64_t a1, int *a2, void *a3)
{
  v5 = *MEMORY[0x1E695E480];
  SInt32 = FigCFNumberCreateSInt32(*MEMORY[0x1E695E480], a2[6]);
  if (!SInt32)
  {
    figSandboxRegistrationDumpAllApply_cold_2();
    return;
  }

  v7 = SInt32;
  Value = FigCFDictionaryGetValue(a3);
  if (!Value)
  {
    Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      figSandboxRegistrationDumpAllApply_cold_1();
      goto LABEL_6;
    }

    Value = Mutable;
    FigCFDictionarySetValue(a3, v7, Mutable);
    CFRelease(Value);
  }

  CFArrayAppendValue(Value, a2);
LABEL_6:

  CFRelease(v7);
}

uint64_t FigEndpointManagerStartServer(const void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue(Mutable, @"AirPlay", a1);
  started = FigEndpointManagerStartServerEx(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return started;
}

void __FigEndpointManagerStartServerEx_block_invoke(uint64_t a1, const void *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(*(a1 + 32), a2, Mutable);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void FigEndpointManagerXPCClientInfoDispose(void **a1)
{
  FigEndpointRPCCacheDispose(*a1);
  FigEndpointRPCCacheDispose(a1[1]);
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

CFMutableDictionaryRef OUTLINED_FUNCTION_0_63()
{

  return CFDictionaryCreateMutable(v0, 0, v1, v2);
}

uint64_t FigVP9Bridge_ParseVPCC(const __CFData *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    FigVP9Bridge_ParseVPCC_cold_5(&v30, a2, a3, a4, a5, a6, a7, a8);
    return v30;
  }

  if (!a2)
  {
    FigVP9Bridge_ParseVPCC_cold_4(&v29, 0, a3, a4, a5, a6, a7, a8);
    return v29;
  }

  if (*a2)
  {
    FigVP9Bridge_ParseVPCC_cold_1(&v28, a2, a3, a4, a5, a6, a7, a8);
    return v28;
  }

  Length = CFDataGetLength(a1);
  if (Length <= 11)
  {
    FigVP9Bridge_ParseVPCC_cold_3(Length, v11, v12, v13, v14, v15, v16, v17);
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  if (*BytePtr != 1)
  {
    FigVP9Bridge_ParseVPCC_cold_2(BytePtr, v19, v20, v21, v22, v23, v24, v25);
    return 0;
  }

  v26 = BytePtr;
  result = 0;
  a2[1] = v26[4];
  a2[2] = v26[5];
  a2[3] = v26[6] >> 4;
  a2[4] = (v26[6] >> 1) & 7;
  a2[5] = v26[6] & 1;
  a2[6] = v26[7];
  a2[7] = v26[8];
  a2[8] = v26[9];
  return result;
}

size_t endpointCentricPlugin_CreateEndpointCentricPluginObjectInternal(const __CFAllocator *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  cf = 0;
  ClassID = FigHALAudioPluginGetClassID();
  v17 = CMDerivedObjectCreate(a1, &kFigHALAudioPluginVTable_0, ClassID, &cf, v13, v14, v15, v16);
  if (v17)
  {
    v23 = v17;
    goto LABEL_15;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
  DerivedStorage[1] = a2;
  DerivedStorage[6] = a4;
  DerivedStorage[7] = a5;
  DerivedStorage[4] = a3;
  v19 = dispatch_queue_create("FigHALEndpointCentricPlugin.InternalQueue", 0);
  DerivedStorage[2] = v19;
  if (!v19)
  {
    v25 = 812;
LABEL_14:
    endpointCentricPlugin_CreateEndpointCentricPluginObjectInternal_cold_1(v25, &v27);
    v23 = v27;
    goto LABEL_15;
  }

  v20 = dispatch_queue_create("FigHALEndpointCentricPlugin.HostQueue", 0);
  DerivedStorage[3] = v20;
  if (!v20)
  {
    v25 = 815;
    goto LABEL_14;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  DerivedStorage[9] = Mutable;
  if (!Mutable)
  {
    v25 = 819;
    goto LABEL_14;
  }

  v22 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  DerivedStorage[10] = v22;
  if (!v22)
  {
    v25 = 823;
    goto LABEL_14;
  }

  v23 = FigHALAudioObjectMapperAddPluginObjectMapping(a2, cf);
  if (!v23)
  {
    *a6 = cf;
    return v23;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

void endpointCentricPlugin_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v2 = DerivedStorage[9];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[9] = 0;
  }

  v3 = DerivedStorage[10];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[10] = 0;
  }

  v4 = DerivedStorage[5];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[5] = 0;
  }

  v5 = DerivedStorage[2];
  if (v5)
  {
    dispatch_release(v5);
    DerivedStorage[2] = 0;
  }

  v6 = DerivedStorage[3];
  if (v6)
  {
    dispatch_release(v6);
    DerivedStorage[3] = 0;
  }
}

CFStringRef endpointCentricPlugin_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v3 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __endpointCentricPlugin_CopyDebugDescription_block_invoke;
  block[3] = &unk_1E74A13F8;
  block[6] = a1;
  block[7] = DerivedStorage;
  block[4] = &v13;
  block[5] = &v9;
  dispatch_sync(v3, block);
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigHALEndpointCentricPlugin:\nEndponts/Streams:\n%@\nStreams/Devices:\n%@", v14[3], v10[3]);
  v5 = v14[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = v10[3];
  if (v6)
  {
    CFRelease(v6);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v4;
}

uint64_t endpointCentricPlugin_HasProperty(uint64_t a1, int *a2)
{
  v2 = *a2;
  result = 1;
  if (*a2 <= 1819107690)
  {
    v4 = v2 == 1668047219;
    v5 = 1684370979;
  }

  else
  {
    v4 = v2 == 1819107691 || v2 == 1870098020;
    v5 = 1969841252;
  }

  if (!v4 && v2 != v5)
  {
    return 0;
  }

  return result;
}

uint64_t endpointCentricPlugin_GetPropertyDataSize(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v4 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = *a2;
  if (*a2 > 1819107690)
  {
    if (v5 == 1819107691)
    {
      v4 = 8;
      goto LABEL_11;
    }

    if (v5 != 1870098020)
    {
      if (v5 != 1969841252)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

LABEL_8:
    v6 = *(DerivedStorage + 16);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __endpointCentricPlugin_GetPropertyDataSize_block_invoke;
    v8[3] = &unk_1E74A1420;
    v8[4] = &v9;
    v8[5] = DerivedStorage;
    dispatch_sync(v6, v8);
    v4 = *(v10 + 6);
    goto LABEL_12;
  }

  if (v5 == 1668047219)
  {
LABEL_9:
    v4 = 4;
LABEL_11:
    v12 = v4;
    goto LABEL_12;
  }

  if (v5 == 1684370979)
  {
    goto LABEL_8;
  }

LABEL_12:
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t endpointCentricPlugin_GetPropertyData(uint64_t a1, int *a2, int a3, uint64_t a4, unsigned int a5, _DWORD *a6, _DWORD *a7)
{
  v25 = 0;
  v26[0] = &v25;
  v26[1] = 0x2000000000;
  v27 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v14 = *a2;
  if (*a2 <= 1819107690)
  {
    if (v14 != 1668047219)
    {
      if (v14 != 1684370979)
      {
        goto LABEL_18;
      }

LABEL_11:
      v24[0] = 0;
      v24[1] = v24;
      v24[2] = 0x2000000000;
      v24[3] = 0;
      v16 = *(DerivedStorage + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __endpointCentricPlugin_GetPropertyData_block_invoke;
      block[3] = &unk_1E74A1448;
      block[4] = v24;
      block[5] = DerivedStorage;
      v23 = a5;
      block[6] = a7;
      block[7] = a6;
      block[8] = a2;
      dispatch_sync(v16, block);
      _Block_object_dispose(v24, 8);
      goto LABEL_19;
    }

    *a6 = 4;
    if (a5 >= 4)
    {
      v17 = 0;
      *a7 = 1634757735;
      goto LABEL_17;
    }

LABEL_16:
    v17 = 561211770;
    goto LABEL_17;
  }

  if (v14 == 1819107691)
  {
    *a6 = 8;
    if (a5 >= 8)
    {
      v17 = 0;
      *a7 = @"Apple Inc.";
LABEL_17:
      *(v26[0] + 24) = v17;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v14 == 1870098020)
  {
    goto LABEL_11;
  }

  if (v14 != 1969841252)
  {
LABEL_18:
    *(v26[0] + 24) = 2003332927;
    goto LABEL_19;
  }

  if (a5 <= 3)
  {
    endpointCentricPlugin_GetPropertyData_cold_3(v26);
  }

  else if (a3 == 8)
  {
    if (a4)
    {
      v15 = *(DerivedStorage + 16);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 0x40000000;
      v20[2] = __endpointCentricPlugin_GetPropertyData_block_invoke_16;
      v20[3] = &unk_1E74A1470;
      v20[4] = &v25;
      v20[5] = DerivedStorage;
      v21 = a5;
      v20[6] = a4;
      v20[7] = a6;
      v20[8] = a7;
      dispatch_sync(v15, v20);
    }

    else
    {
      endpointCentricPlugin_GetPropertyData_cold_2(v26);
    }
  }

  else
  {
    endpointCentricPlugin_GetPropertyData_cold_1(v26);
  }

LABEL_19:
  v18 = *(v26[0] + 24);
  _Block_object_dispose(&v25, 8);
  return v18;
}

uint64_t endpointCentricPlugin_Initialize(const void *a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v10 = 0;
  *DerivedStorage = a2;
  v5 = DerivedStorage[7];
  if (v5)
  {
    v5(*MEMORY[0x1E695E480], DerivedStorage[1], a2, &v10);
  }

  CFRetain(a1);
  v6 = DerivedStorage[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __endpointCentricPlugin_Initialize_block_invoke;
  block[3] = &unk_1E74A1498;
  block[4] = &v11;
  block[5] = v10;
  block[6] = DerivedStorage;
  block[7] = a1;
  dispatch_async(v6, block);
  v7 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v7;
}

void endpointCentricPlugin_ActivatedEndpointsChangedNotificationCallback(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a2);
  CFRetain(a2);
  v4 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __endpointCentricPlugin_ActivatedEndpointsChangedNotificationCallback_block_invoke;
  block[3] = &__block_descriptor_tmp_19_3;
  block[4] = a2;
  dispatch_async(v4, block);
}

uint64_t endpointCentricPlugin_UpdateEndpointApplier(void *a1, uint64_t a2)
{
  result = endpointCentricPlugin_UpdateEndpoint(*a2, a1, *(a2 + 8));
  *(a2 + 9) += result;
  return result;
}

uint64_t endpointCentricPlugin_UpdateEndpoint(const void *a1, void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v35 = 0;
  theArray = 0;
  context[0] = DerivedStorage;
  context[1] = a2;
  if (!a3)
  {
    v8 = FigEndpointCopyStreamsForTypeAndSubType(a2, *MEMORY[0x1E695E480], @"Audio", 0, &theArray);
    if (v8 != -16723 && v8 != 0)
    {
      v10 = v8;
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v10, "<<< EndpointCentricHALPlugin >>>", 0xD8, v3, v12, v13);
    }
  }

  v14 = CFDictionaryGetValue(*(DerivedStorage + 80), a2);
  value = v14;
  if (v14)
  {
    v15 = v14;
    CFRetain(v14);
    v16 = *MEMORY[0x1E695E480];
  }

  else
  {
    v16 = *MEMORY[0x1E695E480];
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    value = Mutable;
    if (!Mutable)
    {
      endpointCentricPlugin_UpdateEndpoint_cold_3();
      v19 = 0;
      MutableCopy = 0;
      goto LABEL_24;
    }

    v15 = Mutable;
  }

  MutableCopy = CFSetCreateMutableCopy(v16, 0, v15);
  if (MutableCopy)
  {
    v19 = CFSetCreateMutable(v16, 0, MEMORY[0x1E695E9F8]);
    if (v19)
    {
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        if (Count >= 1)
        {
          v21 = Count;
          for (i = 0; i != v21; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
            if (CFSetContainsValue(v15, ValueAtIndex))
            {
              CFSetRemoveValue(MutableCopy, ValueAtIndex);
            }

            else
            {
              CFSetAddValue(v19, ValueAtIndex);
            }
          }
        }
      }

      CFSetApplyFunction(v19, endpointCentricPlugin_AddStreamApplier, context);
      CFSetApplyFunction(MutableCopy, endpointCentricPlugin_RemoveStreamApplier, context);
      if (a3)
      {
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener(DefaultLocalCenter, a1, endpointCentricPlugin_EndpointNotificationCallback, @"Endpoint_EndpointActivated", a2);
        v25 = CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener(v25, a1, endpointCentricPlugin_EndpointNotificationCallback, @"Endpoint_EndpointDeactivated", a2);
        v26 = CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener(v26, a1, endpointCentricPlugin_EndpointNotificationCallback, @"Endpoint_StreamsChanged", a2);
        v27 = CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener(v27, a1, endpointCentricPlugin_EndpointNotificationCallback, @"Endpoint_Dissociated", a2);
        CFDictionaryRemoveValue(*(DerivedStorage + 80), a2);
      }

      else if (!CFDictionaryContainsKey(*(DerivedStorage + 80), a2))
      {
        v28 = CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterAddListener(v28, a1, endpointCentricPlugin_EndpointNotificationCallback, @"Endpoint_EndpointActivated", a2);
        v29 = CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterAddListener(v29, a1, endpointCentricPlugin_EndpointNotificationCallback, @"Endpoint_EndpointDeactivated", a2);
        v30 = CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterAddListener(v30, a1, endpointCentricPlugin_EndpointNotificationCallback, @"Endpoint_StreamsChanged", a2);
        v31 = CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterAddListener(v31, a1, endpointCentricPlugin_EndpointNotificationCallback, @"Endpoint_Dissociated", a2);
        CFDictionarySetValue(*(DerivedStorage + 80), a2, value);
      }
    }

    else
    {
      endpointCentricPlugin_UpdateEndpoint_cold_1();
    }
  }

  else
  {
    endpointCentricPlugin_UpdateEndpoint_cold_2();
    v19 = 0;
  }

LABEL_24:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v35;
}

void endpointCentricPlugin_RemoveStreamApplier(void *value, uint64_t a2)
{
  CFSetRemoveValue(*(a2 + 16), value);
  if (CFDictionaryContainsKey(*(*a2 + 72), value))
  {
    CFDictionaryRemoveValue(*(*a2 + 72), value);
    ++*(a2 + 24);
  }
}

void endpointCentricPlugin_EndpointNotificationCallback(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a2);
  CFRetain(a2);
  CFRetain(a4);
  v8 = *(DerivedStorage + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __endpointCentricPlugin_EndpointNotificationCallback_block_invoke;
  v9[3] = &__block_descriptor_tmp_22_1;
  v9[4] = a3;
  v9[5] = a2;
  v9[6] = a4;
  v9[7] = DerivedStorage;
  dispatch_async(v8, v9);
}

CMItemCount CMTagCollectionGetCount(CMTagCollectionRef tagCollection)
{
  if (tagCollection)
  {
    v2 = CFGetTypeID(tagCollection);
    if (_MergedGlobals_43 != -1)
    {
      CMTagCollectionGetCount_cold_1();
    }

    if (v2 == qword_1ED4CCC28)
    {
      return *(tagCollection + 4);
    }
  }

  CMTagCollectionGetCount_cold_2();
  return 0;
}

uint64_t FigTagCollectionGetTypeID()
{
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  return qword_1ED4CCC28;
}

CFTypeID CMTagCollectionGetTypeID(void)
{
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  return qword_1ED4CCC28;
}

uint64_t RegisterCMTagCollectionType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CCC28 = result;
  return result;
}

size_t _CMTagCollectionCreateCommon(char a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t *a7)
{
  if (!a7)
  {
    _CMTagCollectionCreateCommon_cold_7(&v27);
    return v27;
  }

  v11 = a4;
  if ((a1 & 1) == 0 || (a1 & 2) != 0)
  {
    if ((a1 & 3) != 0)
    {
      if ((a1 & 1) != 0 && (a1 & 2) != 0)
      {
        if (!a6)
        {
          _CMTagCollectionCreateCommon_cold_4(&v27);
          return v27;
        }
      }

      else
      {
        if ((a1 & 3) != 2)
        {
          emitter = fig_log_get_emitter("com.apple.coremedia", "");
          v21 = v7;
          v22 = 4294951556;
          v23 = 681;
          goto LABEL_25;
        }

        if (!a6)
        {
          _CMTagCollectionCreateCommon_cold_3(&v27);
          return v27;
        }
      }
    }

    else
    {
      v14 = a4 < 0;
      if (!a3)
      {
        v14 = a4 != 0;
      }

      if (v14)
      {
        _CMTagCollectionCreateCommon_cold_6(&v27);
        return v27;
      }
    }
  }

  else
  {
    if (a3 || a4)
    {
      _CMTagCollectionCreateCommon_cold_2(&v27);
      return v27;
    }

    if (a5 < 0)
    {
      _CMTagCollectionCreateCommon_cold_1(&v27);
      return v27;
    }
  }

  *a7 = 0;
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v16 = Instance;
    Instance[3] = 0;
    Instance[4] = 0;
    Instance[2] = 0x274616773;
    Instance[5] = 0;
    Instance[6] = 16;
    Instance[7] = Instance + 8;
    if ((a1 & 2) != 0)
    {
      _CMTagCollectionEnsureTagArraySpace(Instance, *(a6 + 48), 0);
      v17 = *(a6 + 32);
      *(v16 + 32) = v17;
      memcpy(*(v16 + 56), *(a6 + 56), 16 * v17);
    }

    else
    {
      if (a1)
      {
        v25 = a5;
      }

      else
      {
        v25 = v11;
      }

      _CMTagCollectionEnsureTagArraySpace(Instance, v25, 0);
      if (a3 && v11 >= 1 && (a1 & 1) == 0)
      {
        v26 = a3 + 8;
        do
        {
          _CMTagCollectionAddTagAvoidingDuplicates(v16, *(v26 - 8));
          v26 += 16;
          --v11;
        }

        while (v11);
      }
    }

    if (a1)
    {
      *(v16 + 20) |= 1u;
    }

    result = 0;
    *a7 = v16;
    return result;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v21 = v7;
  v22 = 4294951555;
  v23 = 696;
LABEL_25:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v22, "<<<< FigTagCollection >>>>", v23, v21, v19, v20);
}

CFStringRef CMTagCollectionCopyDescription(CFAllocatorRef allocator, CMTagCollectionRef tagCollection)
{
  Mutable = CFStringCreateMutable(allocator, 0);
  if (Mutable)
  {
    if (!tagCollection)
    {
      goto LABEL_19;
    }

    v5 = CFGetTypeID(tagCollection);
    if (_MergedGlobals_43 != -1)
    {
      CMTagCollectionGetCount_cold_1();
    }

    if (v5 == qword_1ED4CCC28)
    {
      if (*(tagCollection + 5))
      {
        CFStringAppendFormat(Mutable, 0, @"CMMutableTagCollection");
      }

      else
      {
        CFStringAppendFormat(Mutable, 0, @"CMTagCollection");
      }

      if ((*(tagCollection + 20) & 0x10) != 0)
      {
        CFStringAppendFormat(Mutable, 0, @"{inline}");
        if ((*(tagCollection + 20) & 0x10) != 0)
        {
          CFStringAppendFormat(Mutable, 0, @"{%d tags}", *(tagCollection + 4));
        }
      }

      CFStringAppendFormat(Mutable, 0, @"{\n");
      if (*(tagCollection + 4) >= 1)
      {
        v6 = 0;
        v7 = 0;
        do
        {
          v8 = CMTagCopyDescription(allocator, *(*(tagCollection + 7) + v6));
          CFStringAppendFormat(Mutable, 0, @"%@\n", v8);
          if (v8)
          {
            CFRelease(v8);
          }

          ++v7;
          v6 += 16;
        }

        while (v7 < *(tagCollection + 4));
      }

      CFStringAppendFormat(Mutable, 0, @"}");
    }

    else
    {
LABEL_19:
      CMTagCollectionCopyDescription_cold_2();
    }
  }

  return Mutable;
}

void CMTagCollectionApply(CMTagCollectionRef tagCollection, CMTagCollectionApplierFunction applier, void *context)
{
  if (!tagCollection)
  {
    goto LABEL_10;
  }

  v6 = CFGetTypeID(tagCollection);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v6 != qword_1ED4CCC28)
  {
LABEL_10:
    v9 = 986;
LABEL_12:
    CMTagCollectionApply_cold_2(v9);
    return;
  }

  if (!applier)
  {
    v9 = 987;
    goto LABEL_12;
  }

  if (*(tagCollection + 4) >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      (applier)(*(*(tagCollection + 7) + v7), *(*(tagCollection + 7) + v7 + 8), context);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(tagCollection + 4));
  }
}

CMTag CMTagCollectionApplyUntil(CMTagCollectionRef tagCollection, CMTagCollectionTagFilterFunction applier, void *context)
{
  v4 = 0;
  v3 = 0;
  if (!tagCollection)
  {
    goto LABEL_13;
  }

  v8 = CFGetTypeID(tagCollection);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v8 != qword_1ED4CCC28)
  {
LABEL_13:
    v16 = 1015;
LABEL_15:
    CMTagCollectionApply_cold_2(v16);
    goto LABEL_12;
  }

  if (!applier)
  {
    v16 = 1016;
    goto LABEL_15;
  }

  if (*(tagCollection + 4) >= 1)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = (*(tagCollection + 7) + v9);
      v12 = *v11;
      v13 = v11[1];
      if ((applier)(*v11, v13, context))
      {
        break;
      }

      ++v10;
      v9 += 16;
      if (v10 >= *(tagCollection + 4))
      {
        goto LABEL_12;
      }
    }

    v3 = v13;
    v4 = v12;
  }

LABEL_12:
  v14 = v4;
  v15 = v3;
  result.value = v15;
  result.category = v14;
  result.dataType = HIDWORD(v14);
  return result;
}

Boolean CMTagCollectionContainsTag(CMTagCollectionRef tagCollection, CMTag tag)
{
  if (!tagCollection)
  {
    goto LABEL_6;
  }

  value = tag.value;
  v3 = *&tag.category;
  v5 = CFGetTypeID(tagCollection);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v5 == qword_1ED4CCC28)
  {
    context[1] = value;
    v8 = 0;
    context[0] = v3;
    CMTagCollectionApplyUntil(tagCollection, _CMTagCollectionContainsTagApplier, context);
    return v8;
  }

  else
  {
LABEL_6:
    CMTagCollectionContainsTag_cold_2();
    return 0;
  }
}

uint64_t _CMTagCollectionContainsTagApplier(CMTag a1, uint64_t a2)
{
  if (!CMTagEqualToTag(a1, *a2))
  {
    return *(a2 + 16);
  }

  result = 1;
  *(a2 + 16) = 1;
  return result;
}

uint64_t _CMTagCollectionContainsTagsApplier(CMTag tag, uint64_t a2)
{
  if (!*(a2 + 12) && !*(a2 + 8))
  {
    *&tag.category = CMTagCollectionContainsTag(*a2, tag);
    *(a2 + 8) = tag.category == kCMTagCategory_Undefined;
  }

  return *&tag.category;
}

Boolean CMTagCollectionContainsSpecifiedTags(CMTagCollectionRef tagCollection, const CMTag *containedTags, CMItemCount containedTagCount)
{
  if (!tagCollection)
  {
    goto LABEL_14;
  }

  v6 = CFGetTypeID(tagCollection);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v6 != qword_1ED4CCC28)
  {
LABEL_14:
    CMTagCollectionContainsSpecifiedTags_cold_4();
    return 0;
  }

  if (!containedTags)
  {
    CMTagCollectionContainsSpecifiedTags_cold_3();
    return 0;
  }

  if (containedTagCount < 0)
  {
    CMTagCollectionContainsSpecifiedTags_cold_2();
    return 0;
  }

  if (!containedTagCount)
  {
    return 1;
  }

  v7 = 0;
  p_value = &containedTags->value;
  do
  {
    if (!v7)
    {
      v7 = CMTagCollectionContainsTag(tagCollection, *(p_value - 1)) == 0;
    }

    p_value += 2;
    --containedTagCount;
  }

  while (containedTagCount);
  return !v7;
}

Boolean CMTagCollectionContainsCategory(CMTagCollectionRef tagCollection, CMTagCategory category)
{
  if (!tagCollection)
  {
    goto LABEL_6;
  }

  v4 = CFGetTypeID(tagCollection);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v4 == qword_1ED4CCC28)
  {
    context = category;
    return CMTagCollectionApplyUntil(tagCollection, _CMTagCollectionContainsTagCategoryApplier, &context).category == category;
  }

  else
  {
LABEL_6:
    CMTagCollectionContainsCategory_cold_2();
    return 0;
  }
}

CMItemCount CMTagCollectionGetCountOfCategory(CMTagCollectionRef tagCollection, CMTagCategory category)
{
  if (!tagCollection)
  {
    goto LABEL_6;
  }

  v4 = CFGetTypeID(tagCollection);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v4 == qword_1ED4CCC28)
  {
    v7 = 0;
    v6 = category;
    CMTagCollectionApply(tagCollection, _CMTagCollectionCountOfCategoryApplier, &v6);
    return v7;
  }

  else
  {
LABEL_6:
    CMTagCollectionGetCountOfCategory_cold_2();
    return 0;
  }
}

uint64_t _CMTagCollectionCountOfCategoryApplier(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a3 == result)
  {
    ++*(a3 + 8);
  }

  return result;
}

CMItemCount CMTagCollectionCountTagsWithFilterFunction(CMTagCollectionRef tagCollection, CMTagCollectionTagFilterFunction filterApplier, void *context)
{
  if (!tagCollection)
  {
    goto LABEL_9;
  }

  v6 = CFGetTypeID(tagCollection);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v6 != qword_1ED4CCC28)
  {
LABEL_9:
    CMTagCollectionCountTagsWithFilterFunction_cold_3();
    return 0;
  }

  if (!filterApplier)
  {
    CMTagCollectionCountTagsWithFilterFunction_cold_2();
    return 0;
  }

  v9 = 0uLL;
  v8[0] = filterApplier;
  v8[1] = context;
  v10 = 0uLL;
  CMTagCollectionApply(tagCollection, _CMTagCollectionCountTagsFilterFunctionApplier, v8);
  if (HIDWORD(v10))
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t _CMTagCollectionCountTagsFilterFunctionApplier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*a3)(a1, a2, *(a3 + 8));
  if (result)
  {
    ++*(a3 + 16);
  }

  return result;
}

uint64_t _CMTagCollectionGetTagsFilterFunctionApplier(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 44) && !*(a3 + 40))
  {
    v5 = result;
    result = (*a3)(result, a2, *(a3 + 8));
    if (result)
    {
      v6 = *(a3 + 16);
      if (v6 == *(a3 + 24))
      {
        *(a3 + 40) = 1;
        *(a3 + 44) = -15748;
      }

      else
      {
        v7 = (*(a3 + 32) + 16 * v6);
        *v7 = v5;
        v7[1] = a2;
        ++*(a3 + 16);
      }
    }
  }

  return result;
}

OSStatus CMTagCollectionCreateIntersection(CMTagCollectionRef tagCollection1, CMTagCollectionRef tagCollection2, CMTagCollectionRef *tagCollectionOut)
{
  cf = 0;
  if (!tagCollection1)
  {
    goto LABEL_18;
  }

  v6 = CFGetTypeID(tagCollection1);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v6 != qword_1ED4CCC28)
  {
LABEL_18:
    v12 = 1620;
LABEL_21:
    CMTagCollectionCreateIntersection_cold_3(v12, context);
    v10 = context[0];
    goto LABEL_13;
  }

  if (!tagCollection2)
  {
    goto LABEL_19;
  }

  v7 = CFGetTypeID(tagCollection2);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v7 != qword_1ED4CCC28)
  {
LABEL_19:
    v12 = 1621;
    goto LABEL_21;
  }

  if (!tagCollectionOut)
  {
    v12 = 1622;
    goto LABEL_21;
  }

  v8 = CFGetAllocator(tagCollection1);
  if (tagCollection1 == tagCollection2)
  {
    Common = _CMTagCollectionCreateCommon(3, v8, 0, 0, 0, tagCollection1, &cf);
    if (!Common)
    {
      goto LABEL_16;
    }
  }

  else
  {
    Common = _CMTagCollectionCreateCommon(1, v8, 0, 0, 0, 0, &cf);
    if (!Common)
    {
      context[0] = tagCollection1;
      context[1] = tagCollection2;
      context[2] = cf;
      v14 = 0;
      CMTagCollectionApply(tagCollection1, _CMTagCollectionIntersectApplier, context);
      v10 = v14;
      if (v14)
      {
        goto LABEL_13;
      }

LABEL_16:
      v10 = 0;
      *tagCollectionOut = cf;
      return v10;
    }
  }

  v10 = Common;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t _CMTagCollectionIntersectApplier(CMTag tag, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    value = tag.value;
    v4 = *&tag.category;
    v5 = *(a2 + 8);
    *&v7.category = v4;
    v7.value = value;
    *&tag.category = CMTagCollectionContainsTag(v5, v7);
    if (tag.category)
    {
      *&v8.category = v4;
      v8.value = value;
      *&tag.category = CMTagCollectionAddTag(*(a2 + 16), v8);
    }

    if (!*(a2 + 24))
    {
      *(a2 + 24) = tag.category;
    }
  }

  return *&tag.category;
}

OSStatus CMTagCollectionCreateUnion(CMTagCollectionRef tagCollection1, CMTagCollectionRef tagCollection2, CMTagCollectionRef *tagCollectionOut)
{
  cf = 0;
  if (!tagCollection1)
  {
    goto LABEL_18;
  }

  v6 = CFGetTypeID(tagCollection1);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v6 != qword_1ED4CCC28)
  {
LABEL_18:
    CMTagCollectionCreateUnion_cold_5(context);
LABEL_21:
    v10 = context[0];
    goto LABEL_22;
  }

  if (!tagCollection2)
  {
    goto LABEL_19;
  }

  v7 = CFGetTypeID(tagCollection2);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v7 != qword_1ED4CCC28)
  {
LABEL_19:
    CMTagCollectionCreateUnion_cold_4(context);
    goto LABEL_21;
  }

  if (!tagCollectionOut)
  {
    CMTagCollectionCreateUnion_cold_3(context);
    goto LABEL_21;
  }

  v8 = CFGetAllocator(tagCollection1);
  if (tagCollection1 == tagCollection2)
  {
    Common = _CMTagCollectionCreateCommon(3, v8, 0, 0, 0, tagCollection1, &cf);
    if (!Common)
    {
LABEL_16:
      v10 = 0;
      *tagCollectionOut = cf;
      return v10;
    }

LABEL_24:
    v10 = Common;
    goto LABEL_22;
  }

  Common = _CMTagCollectionCreateCommon(1, v8, 0, 0, 0, 0, &cf);
  if (Common)
  {
    goto LABEL_24;
  }

  context[0] = tagCollection1;
  context[1] = tagCollection2;
  context[2] = cf;
  v13 = 0;
  CMTagCollectionApply(tagCollection1, _CMTagCollectionUnionApplier, context);
  v10 = v13;
  if (!v13)
  {
    CMTagCollectionApply(tagCollection2, _CMTagCollectionUnionApplier, context);
    v10 = v13;
    if (!v13)
    {
      goto LABEL_16;
    }
  }

LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t _CMTagCollectionUnionApplier(CMTag tagToAdd, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    *&tagToAdd.category = CMTagCollectionAddTag(*(a2 + 16), tagToAdd);
    if (!*(a2 + 24))
    {
      *(a2 + 24) = tagToAdd.category;
    }
  }

  return *&tagToAdd.category;
}

OSStatus CMTagCollectionCreateDifference(CMTagCollectionRef tagCollectionMinuend, CMTagCollectionRef tagCollectionSubtrahend, CMTagCollectionRef *tagCollectionOut)
{
  cf = 0;
  if (!tagCollectionMinuend)
  {
    goto LABEL_15;
  }

  v6 = CFGetTypeID(tagCollectionMinuend);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v6 != qword_1ED4CCC28)
  {
LABEL_15:
    v11 = 1739;
LABEL_18:
    CMTagCollectionCreateIntersection_cold_3(v11, context);
    v10 = context[0];
    goto LABEL_19;
  }

  if (!tagCollectionSubtrahend)
  {
    goto LABEL_16;
  }

  v7 = CFGetTypeID(tagCollectionSubtrahend);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v7 != qword_1ED4CCC28)
  {
LABEL_16:
    v11 = 1740;
    goto LABEL_18;
  }

  if (!tagCollectionOut)
  {
    v11 = 1741;
    goto LABEL_18;
  }

  v8 = CFGetAllocator(tagCollectionMinuend);
  Common = _CMTagCollectionCreateCommon(1, v8, 0, 0, 0, 0, &cf);
  v10 = Common;
  if (tagCollectionMinuend != tagCollectionSubtrahend)
  {
    if (Common)
    {
      goto LABEL_19;
    }

    context[0] = tagCollectionMinuend;
    context[1] = tagCollectionSubtrahend;
    context[2] = cf;
    v14 = 0;
    CMTagCollectionApply(tagCollectionMinuend, _CMTagCollectionSubtractApplier, context);
    v10 = v14;
  }

  if (!v10)
  {
    v10 = 0;
    *tagCollectionOut = cf;
    return v10;
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t _CMTagCollectionSubtractApplier(CMTag tag, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    value = tag.value;
    v4 = *&tag.category;
    v5 = *(a2 + 8);
    *&v7.category = v4;
    v7.value = value;
    if (CMTagCollectionContainsTag(v5, v7))
    {
      *&tag.category = 0;
    }

    else
    {
      *&v8.category = v4;
      v8.value = value;
      *&tag.category = CMTagCollectionAddTag(*(a2 + 16), v8);
    }

    if (!*(a2 + 24))
    {
      *(a2 + 24) = tag.category;
    }
  }

  return *&tag.category;
}

OSStatus CMTagCollectionCreateExclusiveOr(CMTagCollectionRef tagCollection1, CMTagCollectionRef tagCollection2, CMTagCollectionRef *tagCollectionOut)
{
  cf = 0;
  if (!tagCollection1)
  {
    goto LABEL_17;
  }

  v6 = CFGetTypeID(tagCollection1);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v6 != qword_1ED4CCC28)
  {
LABEL_17:
    CMTagCollectionCreateExclusiveOr_cold_5(&context);
LABEL_20:
    v10 = context;
    goto LABEL_21;
  }

  if (!tagCollection2)
  {
    goto LABEL_18;
  }

  v7 = CFGetTypeID(tagCollection2);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v7 != qword_1ED4CCC28)
  {
LABEL_18:
    CMTagCollectionCreateExclusiveOr_cold_4(&context);
    goto LABEL_20;
  }

  if (!tagCollectionOut)
  {
    CMTagCollectionCreateExclusiveOr_cold_3(&context);
    goto LABEL_20;
  }

  v8 = CFGetAllocator(tagCollection1);
  Common = _CMTagCollectionCreateCommon(1, v8, 0, 0, 0, 0, &cf);
  v10 = Common;
  if (tagCollection1 != tagCollection2)
  {
    if (Common)
    {
      goto LABEL_21;
    }

    v14 = cf;
    v15 = 0;
    context = tagCollection1;
    v13 = tagCollection2;
    CMTagCollectionApply(tagCollection1, _CMTagCollectionExcludeApplier, &context);
    v10 = v15;
    if (v15)
    {
      goto LABEL_21;
    }

    context = tagCollection2;
    v13 = tagCollection1;
    CMTagCollectionApply(tagCollection2, _CMTagCollectionExcludeApplier, &context);
    v10 = v15;
  }

  if (!v10)
  {
    v10 = 0;
    *tagCollectionOut = cf;
    return v10;
  }

LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t _CMTagCollectionExcludeApplier(CMTag tag, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    value = tag.value;
    v4 = *&tag.category;
    v5 = *(a2 + 8);
    *&v7.category = v4;
    v7.value = value;
    if (CMTagCollectionContainsTag(v5, v7))
    {
      *&tag.category = 0;
    }

    else
    {
      *&v8.category = v4;
      v8.value = value;
      *&tag.category = CMTagCollectionAddTag(*(a2 + 16), v8);
    }

    if (!*(a2 + 24))
    {
      *(a2 + 24) = tag.category;
    }
  }

  return *&tag.category;
}

OSStatus CMTagCollectionAddTag(CMMutableTagCollectionRef tagCollection, CMTag tagToAdd)
{
  if (!tagCollection)
  {
    goto LABEL_7;
  }

  value = tagToAdd.value;
  v3 = *&tagToAdd.category;
  v5 = CFGetTypeID(tagCollection);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v5 == qword_1ED4CCC28)
  {
    if (*(tagCollection + 20))
    {
      _CMTagCollectionEnsureTagArraySpace(tagCollection, *(tagCollection + 4) + 1, 0);
      *&v9.category = v3;
      v9.value = value;
      _CMTagCollectionAddTagAvoidingDuplicates(tagCollection, v9);
      return 0;
    }

    else
    {
      CMTagCollectionAddTag_cold_2(&v7);
      return v7;
    }
  }

  else
  {
LABEL_7:
    CMTagCollectionAddTag_cold_3(&v8);
    return v8;
  }
}

void _CMTagCollectionEnsureTagArraySpace(uint64_t a1, int64_t count, int a3)
{
  v5 = *(a1 + 20);
  if (*(a1 + 48) >= count)
  {
    if (count <= 15 && a3 && ((v5 >> 1) & 1) == 0)
    {
      v7 = *(a1 + 56);
      v8 = v7[3];
      v10 = *v7;
      v9 = v7[1];
      *(a1 + 96) = v7[2];
      *(a1 + 112) = v8;
      *(a1 + 64) = v10;
      *(a1 + 80) = v9;
      v11 = v7[7];
      v13 = v7[4];
      v12 = v7[5];
      *(a1 + 160) = v7[6];
      *(a1 + 176) = v11;
      *(a1 + 128) = v13;
      *(a1 + 144) = v12;
      v14 = v7[11];
      v16 = v7[8];
      v15 = v7[9];
      *(a1 + 224) = v7[10];
      *(a1 + 240) = v14;
      *(a1 + 192) = v16;
      *(a1 + 208) = v15;
      v17 = v7[15];
      v19 = v7[12];
      v18 = v7[13];
      *(a1 + 288) = v7[14];
      *(a1 + 304) = v17;
      *(a1 + 256) = v19;
      *(a1 + 272) = v18;
      free(v7);
      *(a1 + 48) = 0;
      *(a1 + 56) = a1 + 64;
      *(a1 + 20) |= 2u;
    }
  }

  else if ((v5 & 2) != 0)
  {
    v20 = malloc_type_calloc(count, 0x10uLL, 0x1000040451B5BE8uLL);
    *(a1 + 56) = v20;
    *(a1 + 20) &= ~2u;
    v21 = *(a1 + 256);
    v22 = *(a1 + 272);
    v23 = *(a1 + 304);
    v20[14] = *(a1 + 288);
    v20[15] = v23;
    v20[12] = v21;
    v20[13] = v22;
    v24 = *(a1 + 192);
    v25 = *(a1 + 208);
    v26 = *(a1 + 240);
    v20[10] = *(a1 + 224);
    v20[11] = v26;
    v20[8] = v24;
    v20[9] = v25;
    v27 = *(a1 + 128);
    v28 = *(a1 + 144);
    v29 = *(a1 + 176);
    v20[6] = *(a1 + 160);
    v20[7] = v29;
    v20[4] = v27;
    v20[5] = v28;
    v30 = *(a1 + 64);
    v31 = *(a1 + 80);
    v32 = *(a1 + 112);
    v20[2] = *(a1 + 96);
    v20[3] = v32;
    *v20 = v30;
    v20[1] = v31;
    *(a1 + 48) = count;
  }

  else
  {
    v6 = malloc_type_realloc(*(a1 + 56), 16 * count, 0x1000040451B5BE8uLL);
    *(a1 + 48) = count;
    *(a1 + 56) = v6;
  }

  if (*(a1 + 32) > count)
  {
    *(a1 + 32) = count;
  }
}

uint64_t _CMTagCollectionAddTagAvoidingDuplicates(uint64_t a1, CMTag a2)
{
  value = a2.value;
  v3 = *&a2.category;
  v9 = -1;
  v8 = 0;
  result = _CMTagCollectionFindTag(a1, a2, &v9, &v8);
  if (!result)
  {
    v6 = v9;
    if (!v8)
    {
      result = memmove((*(a1 + 56) + 16 * v9 + 16), (*(a1 + 56) + 16 * v9), 16 * (*(a1 + 32) - v9));
    }

    v7 = (*(a1 + 56) + 16 * v6);
    *v7 = v3;
    v7[1] = value;
    ++*(a1 + 32);
  }

  return result;
}

OSStatus CMTagCollectionRemoveAllTags(CMMutableTagCollectionRef tagCollection)
{
  if (!tagCollection)
  {
    goto LABEL_7;
  }

  v2 = CFGetTypeID(tagCollection);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v2 == qword_1ED4CCC28)
  {
    if (*(tagCollection + 20))
    {
      _CMTagCollectionEnsureTagArraySpace(tagCollection, 0, 1);
      return 0;
    }

    else
    {
      CMTagCollectionRemoveAllTags_cold_2(&v4);
      return v4;
    }
  }

  else
  {
LABEL_7:
    CMTagCollectionRemoveAllTags_cold_3(&v5);
    return v5;
  }
}

OSStatus CMTagCollectionRemoveAllTagsOfCategory(CMMutableTagCollectionRef tagCollection, CMTagCategory category)
{
  if (!tagCollection)
  {
    goto LABEL_18;
  }

  v4 = CFGetTypeID(tagCollection);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v4 == qword_1ED4CCC28)
  {
    if (*(tagCollection + 20))
    {
      v5 = *(tagCollection + 4);
      if (v5)
      {
        if (v5 >= 1)
        {
          v6 = 0;
          v7 = 16 * v5 - 16;
          do
          {
            v8 = v7 - 16 * v6;
            v9 = (*(tagCollection + 7) + 16 * v6);
            while (*v9 != category)
            {
              ++v6;
              v8 -= 16;
              v9 += 4;
              if (v6 >= v5)
              {
                goto LABEL_16;
              }
            }

            if (~v6 + v5 >= 1)
            {
              memmove(v9, v9 + 4, v8);
            }

            --v5;
            v7 -= 16;
          }

          while (v6 < v5);
        }

LABEL_16:
        result = 0;
        *(tagCollection + 4) = v5;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      CMTagCollectionRemoveAllTagsOfCategory_cold_2(&v11);
      return v11;
    }
  }

  else
  {
LABEL_18:
    CMTagCollectionRemoveAllTagsOfCategory_cold_3(&v12);
    return v12;
  }

  return result;
}

uint64_t FigTagCollectionAddTagsFromCollection(uint64_t a1, CMTagCollectionRef tagCollection)
{
  v3 = a1;
  v4 = 0;
  CMTagCollectionApply(tagCollection, _CMTagCollectionAddTagsFromCollectionApplier, &v3);
  return v4;
}

OSStatus CMTagCollectionAddTagsFromCollection(CMMutableTagCollectionRef tagCollection, CMTagCollectionRef collectionWithTagsToAdd)
{
  v3 = tagCollection;
  v4 = 0;
  CMTagCollectionApply(collectionWithTagsToAdd, _CMTagCollectionAddTagsFromCollectionApplier, &v3);
  return v4;
}

uint64_t _CMTagCollectionAddTagsFromCollectionApplier(CMTag tagToAdd, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    *&tagToAdd.category = CMTagCollectionAddTag(*a2, tagToAdd);
    if (!*(a2 + 8))
    {
      *(a2 + 8) = tagToAdd.category;
    }
  }

  return *&tagToAdd.category;
}

uint64_t FigTagCollectionAddTagsFromCollectionWithFilterFunction(uint64_t a1, CMTagCollectionRef tagCollection, uint64_t a3, uint64_t a4)
{
  context[0] = 0;
  context[1] = a1;
  context[2] = a3;
  context[3] = a4;
  if (a3)
  {
    CMTagCollectionApply(tagCollection, _CMTagCollectionAddTagsFromCollectionWithFilterFunctionApplier, context);
    return LODWORD(context[0]);
  }

  else
  {
    FigTagCollectionAddTagsFromCollectionWithFilterFunction_cold_1(&v6);
    return v6;
  }
}

uint64_t _CMTagCollectionAddTagsFromCollectionWithFilterFunctionApplier(uint64_t result, CMTagValue a2, uint64_t a3)
{
  if (!*a3)
  {
    v5 = result;
    result = (*(a3 + 16))(result, a2, *(a3 + 24));
    if (result)
    {
      *&v6.category = v5;
      v6.value = a2;
      result = CMTagCollectionAddTag(*(a3 + 8), v6);
      *a3 = result;
    }
  }

  return result;
}

OSStatus CMTagCollectionCopyTagsOfCategories(CFAllocatorRef allocator, CMTagCollectionRef tagCollection, const CMTagCategory *categories, CMItemCount categoriesCount, CMTagCollectionRef *collectionWithTagsOfCategories)
{
  cf = 0;
  if (!tagCollection)
  {
    goto LABEL_12;
  }

  v10 = CFGetTypeID(tagCollection);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v10 != qword_1ED4CCC28)
  {
LABEL_12:
    CMTagCollectionCopyTagsOfCategories_cold_4(&v17);
    return v17;
  }

  if (!categories || categoriesCount <= 0)
  {
    CMTagCollectionCopyTagsOfCategories_cold_3(&v17);
    return v17;
  }

  if (!collectionWithTagsOfCategories)
  {
    CMTagCollectionCopyTagsOfCategories_cold_2(&v17);
    return v17;
  }

  Common = _CMTagCollectionCreateCommon(1, allocator, 0, 0, 0, 0, &cf);
  v12 = cf;
  if (Common || (v14[2] = cf, v15 = 0, v14[0] = categories, v14[1] = categoriesCount, CMTagCollectionApply(tagCollection, _CMTagCollectionAddTagsOfCategoriesFromCollectionApplier, v14), Common = v15, v12 = cf, v15))
  {
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    *collectionWithTagsOfCategories = cf;
  }

  return Common;
}

uint64_t _CMTagCollectionAddTagsOfCategoriesFromCollectionApplier(CMTag tagToAdd, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    v3 = *(a2 + 8);
    if (v3 < 1)
    {
      *&tagToAdd.category = 0;
LABEL_12:
      *(a2 + 24) = tagToAdd.category;
      return *&tagToAdd.category;
    }

    value = tagToAdd.value;
    v5 = *&tagToAdd.category;
    for (i = 0; i < v3; ++i)
    {
      if (*(*a2 + 4 * i) == v5)
      {
        *&v8.category = v5;
        v8.value = value;
        *&tagToAdd.category = CMTagCollectionAddTag(*(a2 + 16), v8);
        if (tagToAdd.category)
        {
          goto LABEL_9;
        }

        v3 = *(a2 + 8);
      }
    }

    *&tagToAdd.category = 0;
LABEL_9:
    if (!*(a2 + 24))
    {
      goto LABEL_12;
    }
  }

  return *&tagToAdd.category;
}

CFDictionaryRef CMTagCollectionCopyAsDictionary(CMTagCollectionRef tagCollection, CFAllocatorRef allocator)
{
  if (!tagCollection)
  {
    goto LABEL_10;
  }

  v4 = CFGetTypeID(tagCollection);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v4 != qword_1ED4CCC28)
  {
LABEL_10:
    CMTagCollectionCopyAsDictionary_cold_4();
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    CMTagCollectionCopyAsDictionary_cold_3();
    return Mutable;
  }

  v6 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!v6)
  {
    CMTagCollectionCopyAsDictionary_cold_2();
LABEL_14:
    CFRelease(Mutable);
    return 0;
  }

  v7 = v6;
  context[1] = allocator;
  v10 = 0;
  context[0] = v6;
  CMTagCollectionApply(tagCollection, _CMTagCollectionCopyAsDictionaryApplier, context);
  if (v10)
  {
    CFRelease(v7);
    goto LABEL_14;
  }

  CFDictionaryAddValue(Mutable, @"tags", v7);
  CFRelease(v7);
  return Mutable;
}

void _CMTagCollectionCopyAsDictionaryApplier(CMTag a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    v9 = v2;
    v10 = v3;
    v5 = CMTagCopyAsDictionary(a1, *(a2 + 8));
    if (v5)
    {
      v6 = v5;
      CFArrayAppendValue(*a2, v5);
      CFRelease(v6);
      v7 = 0;
    }

    else
    {
      _CMTagCollectionCopyAsDictionaryApplier_cold_1(&v8);
      v7 = v8;
    }

    if (!*(a2 + 16))
    {
      *(a2 + 16) = v7;
    }
  }
}

OSStatus CMTagCollectionCreateFromDictionary(CFDictionaryRef dict, CFAllocatorRef allocator, CMTagCollectionRef *newCollectionOut)
{
  cf = 0;
  if (!dict || (v6 = CFGetTypeID(dict), v6 != CFDictionaryGetTypeID()))
  {
    CMTagCollectionCreateFromDictionary_cold_4(&v11);
LABEL_13:
    v9 = v11;
    goto LABEL_14;
  }

  if (!newCollectionOut)
  {
    CMTagCollectionCreateFromDictionary_cold_3(&v11);
    goto LABEL_13;
  }

  Common = _CMTagCollectionCreateCommon(1, allocator, 0, 0, 0, 0, &cf);
  if (Common)
  {
    v9 = Common;
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(dict, @"tags");
  if (!Value)
  {
    CMTagCollectionCreateFromDictionary_cold_2(&v11);
    goto LABEL_13;
  }

  v11 = cf;
  v12 = 0;
  FigCFArrayApplyFunction(Value, _CMTagCollectionMakeFromDictionaryApplier, &v11);
  if (!v12)
  {
    v9 = 0;
    *newCollectionOut = cf;
    return v9;
  }

  CMTagCollectionCreateFromDictionary_cold_1(&v12, &v11, &v14);
  v9 = v14;
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

const __CFDictionary *_CMTagCollectionMakeFromDictionaryApplier(const __CFDictionary *cf, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    v10 = v2;
    v11 = v3;
    v5 = cf;
    if (cf && (v6 = CFGetTypeID(cf), v6 == CFDictionaryGetTypeID()))
    {
      v7 = CMTagMakeFromDictionary(v5);
      if (HIDWORD(*&v7.category))
      {
        cf = CMTagCollectionAddTag(*a2, v7);
      }

      else
      {
        _CMTagCollectionMakeFromDictionaryApplier_cold_1(&v8);
        cf = v8;
      }
    }

    else
    {
      _CMTagCollectionMakeFromDictionaryApplier_cold_2(&v9);
      cf = v9;
    }

    if (!*(a2 + 8))
    {
      *(a2 + 8) = cf;
    }
  }

  return cf;
}

void _CMTagCollectionCopyAsXPCDictionaryApplier(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    v10 = v3;
    v11 = v4;
    v6 = FigTagCopyAsXPCDictionary(a1, a2);
    if (v6)
    {
      v7 = v6;
      xpc_array_append_value(*a3, v6);
      xpc_release(v7);
      v8 = 0;
    }

    else
    {
      _CMTagCollectionCopyAsXPCDictionaryApplier_cold_1(&v9);
      v8 = v9;
    }

    if (!*(a3 + 8))
    {
      *(a3 + 8) = v8;
    }
  }
}

size_t FigTagCollectionCreateFromXPCDictionary(void *a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (a1)
  {
    if (a3)
    {
      Common = _CMTagCollectionCreateCommon(1, a2, 0, 0, 0, 0, &cf);
      if (Common)
      {
LABEL_11:
        v13 = Common;
        goto LABEL_12;
      }

      value = xpc_dictionary_get_value(a1, "TagsArray");
      if (value)
      {
        v7 = value;
        v8 = cf;
        if (!xpc_array_get_count(value))
        {
          goto LABEL_10;
        }

        v9 = 0;
        while (1)
        {
          v10 = xpc_array_get_value(v7, v9);
          v11 = FigTagMakeFromXPCDictionary(v10);
          if (!HIDWORD(v11))
          {
            break;
          }

          v17.value = v12;
          *&v17.category = v11;
          Common = CMTagCollectionAddTag(v8, v17);
          if (Common)
          {
            goto LABEL_11;
          }

          if (++v9 >= xpc_array_get_count(v7))
          {
            goto LABEL_10;
          }
        }

        if (FigTagCollectionCreateFromXPCDictionary_cold_1(&v16))
        {
LABEL_10:
          v13 = 0;
          *a3 = cf;
          return v13;
        }
      }

      else
      {
        FigTagCollectionCreateFromXPCDictionary_cold_2(&v16);
      }
    }

    else
    {
      FigTagCollectionCreateFromXPCDictionary_cold_3(&v16);
    }
  }

  else
  {
    FigTagCollectionCreateFromXPCDictionary_cold_4(&v16);
  }

  v13 = v16;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

size_t _CMTagCollectionCopyAsDataApplier(size_t result, unint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    v8[3] = v3;
    v8[4] = v4;
    v6 = bswap32(result);
    v7 = bswap32(HIDWORD(result));
    v8[0] = bswap64(a2);
    result = FigAtomWriterAppendData(*a3, &v6, 4);
    if (!result)
    {
      result = FigAtomWriterAppendData(*a3, &v7, 4);
      if (!result)
      {
        result = FigAtomWriterAppendData(*a3, v8, 8);
      }
    }

    if (!*(a3 + 8))
    {
      *(a3 + 8) = result;
    }
  }

  return result;
}

uint64_t ParseTagCollectionDataChildAtoms(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v7 = (a2 + 8);
  while (1)
  {
    result = FigAtomStreamGetCurrentAtomTypeAndDataLength(a1, &v12, 0);
    if (result)
    {
      return result;
    }

    if (a3 >= 1)
    {
      v9 = v7;
      v10 = v7;
      v11 = a3;
      while (v12 != *(v10 - 2))
      {
        v10 += 2;
        v9 += 4;
        if (!--v11)
        {
          goto LABEL_9;
        }
      }

      result = (*v10)(a1, a4);
      if (result)
      {
        return result;
      }
    }

LABEL_9:
    LODWORD(result) = FigAtomStreamAdvanceToNextAtom(a1);
    if (result)
    {
      if (result == -12890)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }
  }
}

double CMTagCollectionInit(_OWORD *a1)
{
  result = 0.0;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void CMTagCollectionFinalize(uint64_t a1)
{
  if ((*(a1 + 20) & 2) == 0)
  {
    free(*(a1 + 56));
  }
}

BOOL CMTagCollectionEqual(const void **cf, const void **a2)
{
  if (cf == a2)
  {
    return 1;
  }

  result = 0;
  if (cf && a2)
  {
    v5 = CFGetTypeID(cf);
    if (_MergedGlobals_43 != -1)
    {
      CMTagCollectionGetCount_cold_1();
    }

    if (v5 == qword_1ED4CCC28)
    {
      v6 = CFGetTypeID(a2);
      if (_MergedGlobals_43 != -1)
      {
        CMTagCollectionGetCount_cold_1();
      }

      if (v6 == qword_1ED4CCC28)
      {
        v7 = cf[4];
        if (v7 == a2[4])
        {
          return memcmp(cf[7], a2[7], 16 * v7) == 0;
        }
      }

      else
      {
        CMTagCollectionEqual_cold_4();
      }
    }

    else
    {
      CMTagCollectionEqual_cold_2();
    }

    return 0;
  }

  return result;
}

unint64_t CMTagCollectionHash(void *a1)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v2 = CFGetTypeID(a1);
  if (_MergedGlobals_43 != -1)
  {
    CMTagCollectionGetCount_cold_1();
  }

  if (v2 == qword_1ED4CCC28)
  {
    v3 = _CMTagCFHashBytes((a1 + 2), 4);
    v4 = (_CMTagCFHashBytes(a1 + 20, 4) + (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
    v5 = (_CMTagCFHashBytes((a1 + 3), 8) + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
    if (a1[4] >= 1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v5 ^= (v5 << 6) + 2654435769u + (v5 >> 2) + CMTagHash(*(a1[7] + v6));
        ++v7;
        v6 += 16;
      }

      while (v7 < a1[4]);
    }
  }

  else
  {
LABEL_9:
    CMTagCollectionHash_cold_2();
    return 0;
  }

  return v5;
}

CFStringRef CMTagCollectionCopyFormattingDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);

  return CMTagCollectionCopyDescription(v2, a1);
}

CFStringRef CMTagCollectionCopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);

  return CMTagCollectionCopyDescription(v2, a1);
}

uint64_t _CMTagCollectionFindTag(uint64_t a1, CMTag tag1, uint64_t *a3, char *a4)
{
  v6 = *(a1 + 32);
  if (v6 < 1)
  {
    result = 0;
    v13 = 1;
  }

  else
  {
    value = tag1.value;
    v8 = *&tag1.category;
    v10 = 0;
    v6 = 0;
    while (1)
    {
      *&v14.category = v8;
      v14.value = value;
      v11 = CMTagCompare(v14, *(*(a1 + 56) + v10));
      if (v11 == kCFCompareLessThan)
      {
        break;
      }

      if (v11 == kCFCompareEqualTo)
      {
        v13 = 0;
        result = 1;
        goto LABEL_10;
      }

      ++v6;
      v10 += 16;
      if (v6 >= *(a1 + 32))
      {
        result = 0;
        v13 = 1;
        v6 = *(a1 + 32);
        goto LABEL_10;
      }
    }

    result = 0;
    v13 = 0;
  }

LABEL_10:
  *a3 = v6;
  *a4 = v13;
  return result;
}

size_t OUTLINED_FUNCTION_7_18@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  a6 = a1;

  return FigAtomWriterAppendData(&a7, &a6, 4);
}

uint64_t FigApplicationStateMonitorGetClassID()
{
  if (sRegisterFigApplicationStateMonitorClassIDOnce != -1)
  {
    FigApplicationStateMonitorGetClassID_cold_1();
  }

  return sFigApplicationStateMonitorClassID;
}

size_t RegisterFigApplicationStateMonitorType()
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&sFigApplicationStateMonitorClassDesc, ClassID, 1, &sFigApplicationStateMonitorClassID, v1, v2, v3, v4);
}

uint64_t FigApplicationStateMonitorGetTypeID()
{
  if (sRegisterFigApplicationStateMonitorClassIDOnce != -1)
  {
    FigApplicationStateMonitorGetClassID_cold_1();
  }

  v1 = sFigApplicationStateMonitorClassID;

  return CMBaseClassGetCFTypeID(v1);
}

size_t fasm_ensureApplicationStateMonitor(uint64_t a1, void **a2)
{
  v67 = *MEMORY[0x1E69E9840];
  callBacks = *byte_1F0B74BD0;
  v5 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigApplicationStateMonitorTrace[1], @"figapplicationstatemonitor_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v5, 0, gFigApplicationStateMonitorTrace);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CE88, @"figapplicationstatemonitor_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CE80);
  AllocatorForMedia = FigGetAllocatorForMedia();
  UInt32 = FigCFNumberCreateUInt32(AllocatorForMedia, a1);
  if (!UInt32)
  {
    fasm_ensureApplicationStateMonitor_cold_2(v66, v8, v9, v10, v11, v12, v13, v14);
    return v66[0];
  }

  v15 = UInt32;
  v16 = CFDictionaryGetValue(gApplicationMonitors, UInt32);
  if (v16)
  {
    v17 = CFRetain(v16);
    value = v17;
    if (v17)
    {
      if (dword_1EAF1CE88 >= 2)
      {
        v18 = v17;
        v58 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CE80, 1, &v58, &type);
        v20 = v58;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v22 = v20;
        }

        else
        {
          v22 = v20 & 0xFFFFFFFE;
        }

        if (v22)
        {
          v62 = 136315394;
          v63 = "fasm_ensureApplicationStateMonitor";
          v64 = 2112;
          v65 = v18;
LABEL_18:
          v25 = _os_log_send_and_compose_impl();
          LOBYTE(v20) = v58;
LABEL_26:
          v38 = qword_1EAF1CE80;
          v39 = v25 != v66;
          v40 = v20;
LABEL_39:
          fig_log_call_emit_and_clean_up_after_send_and_compose(v38, 1u, 1, v25, v39, v40, 0, v21);
          goto LABEL_40;
        }

        goto LABEL_25;
      }

      goto LABEL_40;
    }
  }

  else
  {
    value = 0;
  }

  if (CFSetContainsValue(qword_1ED4CCC48, v15))
  {
    if (dword_1EAF1CE88 >= 2)
    {
      v58 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CE80, 1, &v58, &type);
      v20 = v58;
      if (os_log_type_enabled(v23, type))
      {
        v24 = v20;
      }

      else
      {
        v24 = v20 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v62 = 136315394;
        v63 = "fasm_ensureApplicationStateMonitor";
        v64 = 1024;
        LODWORD(v65) = a1;
        goto LABEL_18;
      }

LABEL_25:
      v25 = 0;
      goto LABEL_26;
    }

LABEL_40:
    v49 = 0;
    *a2 = value;
    value = 0;
    goto LABEL_41;
  }

  v30 = FigGetAllocatorForMedia();
  if (sRegisterFigApplicationStateMonitorClassIDOnce != -1)
  {
    FigApplicationStateMonitorGetClassID_cold_1();
  }

  v31 = CMDerivedObjectCreate(v30, &kFigApplicationStateMonitor_VTable, sFigApplicationStateMonitorClassID, &value, v26, v27, v28, v29);
  if (!v31)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(value);
    *DerivedStorage = a1;
    *(DerivedStorage + 16) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
    v33 = [MEMORY[0x1E69C75C8] handleForIdentifier:objc_msgSend(MEMORY[0x1E696AD98] error:{"numberWithInt:", a1), 0}];
    if (v33)
    {
      v36 = [v33 hostProcess];
      if (v36)
      {
        v37 = [v36 pid];
      }

      else
      {
        v37 = 0;
      }

      v41 = [MEMORY[0x1E69C7608] predicateMatchingIdentifier:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a1)}];
      if (v41)
      {
        v42 = v41;
        v43 = [MEMORY[0x1E69C7628] descriptor];
        if (v43)
        {
          v44 = v43;
          [v43 setEndowmentNamespaces:&unk_1F0B8F5D0];
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __fasm_ensureApplicationStateMonitor_block_invoke;
          v59[3] = &unk_1E74A1598;
          v59[4] = v44;
          v59[5] = v42;
          v45 = [MEMORY[0x1E69C7600] monitorWithConfiguration:v59];
          if (v45)
          {
            *(DerivedStorage + 8) = v45;
            *(DerivedStorage + 24) = v37;
            CFDictionarySetValue(gApplicationMonitors, v15, value);
            if (dword_1EAF1CE88)
            {
              v58 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CE80, 1, &v58, &type);
              v47 = v58;
              if (os_log_type_enabled(v46, type))
              {
                v48 = v47;
              }

              else
              {
                v48 = v47 & 0xFFFFFFFE;
              }

              if (v48)
              {
                v62 = 136315394;
                v63 = "fasm_ensureApplicationStateMonitor";
                v64 = 2112;
                v65 = value;
                v25 = _os_log_send_and_compose_impl();
                LOBYTE(v47) = v58;
              }

              else
              {
                v25 = 0;
              }

              v38 = qword_1EAF1CE80;
              v39 = v25 != v66;
              v40 = v47;
              goto LABEL_39;
            }

            goto LABEL_40;
          }

          v51 = 432;
        }

        else
        {
          v51 = 420;
        }
      }

      else
      {
        v51 = 417;
      }
    }

    else
    {
      v51 = 409;
    }

    v49 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE80, 0xFFFFB419uLL, "<<<< FigApplicationStateMonitor >>>>", v51, v2, v34, v35);
    CFSetAddValue(qword_1ED4CCC48, v15);
    if (dword_1EAF1CE88 >= 2)
    {
      v58 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CE80, 1, &v58, &type);
      v53 = v58;
      if (os_log_type_enabled(v52, type))
      {
        v55 = v53;
      }

      else
      {
        v55 = v53 & 0xFFFFFFFE;
      }

      if (v55)
      {
        v62 = 136315394;
        v63 = "fasm_ensureApplicationStateMonitor";
        v64 = 1024;
        LODWORD(v65) = a1;
        v56 = _os_log_send_and_compose_impl();
        LOBYTE(v53) = v58;
      }

      else
      {
        v56 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CE80, 1u, 1, v56, v56 != v66, v53, 0, v54);
    }

    goto LABEL_41;
  }

  v49 = v31;
LABEL_41:
  CFRelease(v15);
  if (value)
  {
    CFRelease(value);
  }

  return v49;
}

void fasm_callbackClientFreeAndClearContext(const void **a1)
{
  a1[1] = 0;
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void __fasm_ensureInternalState_block_invoke()
{
  v21 = *MEMORY[0x1E69E9840];
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  gApplicationMonitors = CFDictionaryCreateMutable(AllocatorForPermanentAllocations, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (gApplicationMonitors)
  {
    qword_1ED4CCC40 = FigSimpleMutexCreate();
    if (qword_1ED4CCC40)
    {
      v8 = FigGetAllocatorForPermanentAllocations();
      qword_1ED4CCC48 = CFSetCreateMutable(v8, 0, MEMORY[0x1E695E9F8]);
      if (qword_1ED4CCC48)
      {
        goto LABEL_4;
      }

      v14 = 254;
    }

    else
    {
      v14 = 251;
    }
  }

  else
  {
    v14 = 248;
  }

  __fasm_ensureInternalState_block_invoke_cold_1(v14, v1, v2, v3, v4, v5, v6, v7);
LABEL_4:
  if (dword_1EAF1CE88)
  {
    v16[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CE80, 1, v16, &type);
    v10 = v16[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 0xFFFFFFFE;
    }

    if (v12)
    {
      v16[1] = 136315394;
      v17 = "fasm_ensureInternalState_block_invoke";
      v18 = 1024;
      v19 = _MergedGlobals_44;
      v13 = _os_log_send_and_compose_impl();
      LOBYTE(v10) = v16[0];
    }

    else
    {
      v13 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CE80, 1u, 1, v13, v13 != &v20, v10, 0, v11);
  }
}

uint64_t __fasm_ensureApplicationStateMonitor_block_invoke(uint64_t a1, void *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  [a2 setStateDescriptor:*(a1 + 32)];
  v5[0] = *(a1 + 40);
  [a2 setPredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v5, 1)}];
  return [a2 setUpdateHandler:&__block_literal_global_38];
}

void __fasm_ensureApplicationStateMonitor_block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v97 = *MEMORY[0x1E69E9840];
  v6 = [a3 isDaemon];
  v7 = [objc_msgSend(objc_msgSend(a4 "state")];
  v8 = [a3 pid];
  v9 = [objc_msgSend(a4 "previousState")];
  if (((v9 - 1) & 0xFC) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v9 - 1) + 1;
  }

  v11 = [objc_msgSend(a4 "state")];
  v12 = 0;
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      v12 = 0;
      v13 = 3;
    }

    else
    {
      v13 = 0;
      if (v11 == 4)
      {
        v12 = 0;
        v13 = 4;
      }
    }
  }

  else if (v11 == 1)
  {
    v12 = 1;
    v13 = 1;
  }

  else
  {
    v13 = 0;
    if (v11 == 2)
    {
      v12 = 0;
      v13 = 2;
    }
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v23 = Mutable;
    FigCFDictionarySetUInt32(Mutable, @"FigApplicationStateMonitorCallbackDictionary_pid", v8, v18, v19, v20, v21, v22);
    FigCFDictionarySetUInt32(v23, @"FigApplicationStateMonitorCallbackDictionary_currentSchedulerStatus", v13, v24, v25, v26, v27, v28);
    FigCFDictionarySetUInt32(v23, @"FigApplicationStateMonitorCallbackDictionary_previousSchedulerStatus", v10, v29, v30, v31, v32, v33);
    FigCFDictionarySetBoolean(v23, @"FigApplicationStateMonitorCallbackDictionary_isDaemon", v6);
    FigCFDictionarySetBoolean(v23, @"FigApplicationStateMonitorCallbackDictionary_isVisible", v7);
    v34 = FigGetAllocatorForMedia();
    UInt32 = FigCFNumberCreateUInt32(v34, v8);
    if (UInt32)
    {
      v43 = UInt32;
      FigSimpleMutexLock(qword_1ED4CCC40);
      Value = CFDictionaryGetValue(gApplicationMonitors, v43);
      if (Value)
      {
        v52 = Value;
        DerivedStorage = CMBaseObjectGetDerivedStorage(Value);
        v86 = v13;
        if (CFArrayGetCount(*(DerivedStorage + 16)) < 1)
        {
          v62 = 1;
        }

        else
        {
          key = v43;
          v54 = v10;
          v55 = v12;
          v56 = 0;
          v57 = 0;
          do
          {
            ValueAtIndex = FigCFArrayGetValueAtIndex(*(DerivedStorage + 16), v57);
            v59 = FigCFWeakReferenceHolderCopyReferencedObject(*ValueAtIndex);
            if (v59)
            {
              v60 = 0;
            }

            else
            {
              v60 = v56 == 0;
            }

            if (v60)
            {
              v56 = 1;
            }

            else
            {
              v61 = v59;
              (ValueAtIndex[1])();
              if (v61)
              {
                CFRelease(v61);
              }
            }

            ++v57;
          }

          while (v57 < CFArrayGetCount(*(DerivedStorage + 16)));
          v62 = v56 == 0;
          v12 = v55;
          v10 = v54;
          v43 = key;
        }

        if (dword_1EAF1CE88)
        {
          v88[0] = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CE80, 1, v88, &type);
          v64 = v88[0];
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v66 = v64;
          }

          else
          {
            v66 = v64 & 0xFFFFFFFE;
          }

          if (v66)
          {
            v88[1] = 136315906;
            v89 = "fasm_updateHandler";
            v90 = 2112;
            v91 = v52;
            v92 = 1024;
            v93 = v86;
            v94 = 1024;
            v95 = v10;
            v67 = _os_log_send_and_compose_impl();
            LOBYTE(v64) = v88[0];
          }

          else
          {
            v67 = 0;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CE80, 1u, 1, v67, v67 != &v96, v64, 0, v65);
        }

        if (v12)
        {
          CFDictionaryRemoveValue(gApplicationMonitors, v43);
        }

        if (!v62)
        {
          v68 = FigCFDictionaryCopyArrayOfKeys(gApplicationMonitors);
          if (v68)
          {
            v76 = v68;
            if (CFArrayGetCount(v68) >= 1)
            {
              v77 = 0;
              do
              {
                v78 = CFArrayGetValueAtIndex(v76, v77);
                v79 = CFDictionaryGetValue(gApplicationMonitors, v78);
                v80 = CMBaseObjectGetDerivedStorage(v79);
                Count = CFArrayGetCount(*(v80 + 16));
                if (Count >= 1)
                {
                  v82 = Count + 1;
                  do
                  {
                    v83 = CFArrayGetValueAtIndex(*(v80 + 16), v82 - 2);
                    v84 = FigCFWeakReferenceHolderCopyReferencedObject(*v83);
                    if (v84)
                    {
                      CFRelease(v84);
                    }

                    else
                    {
                      CFArrayRemoveValueAtIndex(*(v80 + 16), v82 - 2);
                      fasm_callbackClientFreeAndClearContext(v83);
                    }

                    --v82;
                  }

                  while (v82 > 1);
                }

                ++v77;
              }

              while (v77 < CFArrayGetCount(v76));
            }

            CFRelease(v76);
          }

          else
          {
            __fasm_ensureApplicationStateMonitor_block_invoke_2_cold_1(0, v69, v70, v71, v72, v73, v74, v75);
          }
        }

        FigSimpleMutexUnlock(qword_1ED4CCC40);
      }

      else
      {
        __fasm_ensureApplicationStateMonitor_block_invoke_2_cold_2(0, v45, v46, v47, v48, v49, v50, v51);
      }

      CFRelease(v43);
    }

    else
    {
      __fasm_ensureApplicationStateMonitor_block_invoke_2_cold_3(0, v36, v37, v38, v39, v40, v41, v42);
    }

    CFRelease(v23);
  }

  else
  {
    __fasm_ensureApplicationStateMonitor_block_invoke_2_cold_4(0, v16, v17, v18, v19, v20, v21, v22);
  }
}

void fasm_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  *DerivedStorage = 0;
  [*(DerivedStorage + 8) invalidate];

  v2 = *(DerivedStorage + 16);
  if (v2)
  {

    CFRelease(v2);
  }
}

CFStringRef fasm_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v3 = DerivedStorage[6];
  v4 = *MEMORY[0x1E695E480];
  v5 = *DerivedStorage;
  if (v3 < 1)
  {
    return CFStringCreateWithFormat(v4, 0, @"[FigApplicationStateMonitor %p pid %d]", a1, v5);
  }

  else
  {
    return CFStringCreateWithFormat(v4, 0, @"[FigApplicationStateMonitor %p pid %d hostPID %d]", a1, v5, v3);
  }
}

uint64_t OUTLINED_FUNCTION_6_23()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_8_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{
  v17 = *(v15 + 3712);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v17, 1, &a15, &a14);
}

size_t FigScheduledIOFRSCreateForByteStream(uint64_t a1, const void *a2, int a3, CFTypeRef *a4, int a5, int a6, int a7, int a8)
{
  cf = 0;
  v26 = 0;
  v24 = 0;
  if (!a2)
  {
    FigScheduledIOFRSCreateForByteStream_cold_2(v27 + 1);
LABEL_21:
    v19 = HIDWORD(v27[0]);
    goto LABEL_12;
  }

  if (!a4)
  {
    FigScheduledIOFRSCreateForByteStream_cold_1(v27 + 1);
    goto LABEL_21;
  }

  HIBYTE(v23) = 0;
  FigCFDictionaryGetBooleanIfPresent(a3, @"ScheduledIOCreationOption_NonRealTime", &v23 + 7, a4, a5, a6, a7, a8, v22, v23, v24, cf, v26, v27[0], v27[1], v27[2], v27[3], v27[4]);
  if (v11)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"readSchedulerCreationOption_NonRealTime", *MEMORY[0x1E695E4D0]);
  }

  else
  {
    Mutable = 0;
  }

  NewClientID = FigReadSchedulerCopyForByteStream(a2, Mutable, &cf);
  if (NewClientID || (NewClientID = FigReadSchedulerGetNewClientID(cf, &v24), NewClientID))
  {
    v19 = NewClientID;
    if (Mutable)
    {
LABEL_11:
      CFRelease(Mutable);
    }
  }

  else
  {
    v14 = FigScheduledIOGetClassID();
    v19 = CMDerivedObjectCreate(a1, &kFigScheduledIOFRSVTable, v14, &v26, v15, v16, v17, v18);
    if (!v19)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage(v26);
      *DerivedStorage = FigSimpleMutexCreate();
      DerivedStorage[3] = v24;
      DerivedStorage[1] = CFRetain(a2);
      DerivedStorage[2] = CFRetain(cf);
      *a4 = v26;
      v26 = 0;
    }

    if (Mutable)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v19;
}

size_t figSchedIOFRS_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    FigReadSchedulerCancelAllClientRequests(v2, *(DerivedStorage + 24), 0);
    v3 = *(DerivedStorage + 32);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 32) = 0;
    }

    v4 = *(DerivedStorage + 16);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 16) = 0;
    }
  }

  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 8) = 0;
  }

  v6 = *DerivedStorage;

  return FigSimpleMutexDestroy(v6);
}

__CFString *figSchedIOFRS_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  Mutable = CFStringCreateMutable(0, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"FigSchedIOFRS %p(%d): BS=%@ clientID=%lld RS: %@", a1, v4, DerivedStorage[1], DerivedStorage[3], DerivedStorage[2]);
  if (DerivedStorage[4])
  {
    CFStringAppendFormat(Mutable, 0, @" PrerollBatch: %@", DerivedStorage[4]);
  }

  return Mutable;
}

uint64_t figSchedIOFRS_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v11 = 0;
  if (CFEqual(a2, @"ScheduledIO_ReadStats"))
  {
    CMBaseObject = CMByteStreamGetCMBaseObject(*(DerivedStorage + 8));
    v9 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
    if (v9)
    {
      result = v9(CMBaseObject, @"FBS_ReadStats", a3, &v11);
      v9 = v11;
    }

    else
    {
      result = 4294954514;
    }
  }

  else
  {
    v9 = 0;
    result = 4294954512;
  }

  *a4 = v9;
  return result;
}

uint64_t figSchedIOFRS_GetEOF(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  number = 0;
  *a2 = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject(*(DerivedStorage + 8));
  v5 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = v5(CMBaseObject, @"FBS_EntireLength", *MEMORY[0x1E695E480], &number);
  v7 = number;
  if (!v6)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, a2);
    v7 = number;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v6;
}

size_t figSchedIOFRS_Finish(uint64_t a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v7 = DerivedStorage;
  if (a3 == 5)
  {
    v8 = 0;
    goto LABEL_5;
  }

  if (a3 == 4)
  {
    v8 = 1;
LABEL_5:

    return figSchedIOFRS_FinishPreroll(DerivedStorage, v8);
  }

  if (a2)
  {
    if (a3 != 2)
    {
      if (a3 == 1)
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v16 = v3;
        v17 = 4294954514;
        v18 = 420;
      }

      else
      {
        if (!a3)
        {
          v10 = *(DerivedStorage + 16);

          return FigReadSchedulerExpediteRequest(v10, a2, 1);
        }

        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v16 = v3;
        v17 = 4294948015;
        v18 = 423;
      }

      goto LABEL_32;
    }

    v19 = *(DerivedStorage + 16);

    return FigReadSchedulerCancelRequest(v19, a2);
  }

  if (a3 == 2)
  {
    v20 = *(DerivedStorage + 16);
    v21 = *(v7 + 24);
    v22 = 0;
    goto LABEL_28;
  }

  if (a3 == 1)
  {
    v20 = *(DerivedStorage + 16);
    v21 = *(v7 + 24);
    v22 = 1;
LABEL_28:
    SchedulerCancelAllClientRequests = FigReadSchedulerCancelAllClientRequests(v20, v21, v22);
    v24 = *(v7 + 32);
    if (v24)
    {
      FigReadSchedulerBatchCancel(v24);
    }

    return SchedulerCancelAllClientRequests;
  }

  if (a3)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v3;
    v17 = 4294948015;
    v18 = 408;
LABEL_32:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v17, "<< FigSchedIOFRS >>", v18, v16, v14, v15);
  }

  v11 = *(DerivedStorage + 16);
  v12 = *(v7 + 24);

  return FigReadSchedulerExpediteAllClientRequests(v11, v12, 1);
}

uint64_t figSchedIOFRS_ExpediteAllClientRequests(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v2 = *(DerivedStorage + 24);
  v3 = *(DerivedStorage + 16);

  return FigReadSchedulerExpediteAllClientRequests(v3, v2, 0);
}

uint64_t figSchedIOFRS_GetAvailableLengthAtOffset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage(a1) + 8);
  v6 = *(*(CMBaseObjectGetVTable(v5) + 16) + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

size_t figSchedIOFRS_CreateBatch(const void *a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (!a3)
  {
    figSchedIOFRS_CreateBatch_cold_2(&v18);
    return v18;
  }

  if (!a1)
  {
    figSchedIOFRS_CreateBatch_cold_1(&v18);
    return v18;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  ClassID = FigScheduledIOBatchGetClassID();
  Batch = CMDerivedObjectCreate(a2, &kFigScheduledIOBatchFRSVTable, ClassID, &cf, v8, v9, v10, v11);
  v13 = cf;
  if (!Batch)
  {
    v14 = CMBaseObjectGetDerivedStorage(cf);
    *v14 = a1;
    CFRetain(a1);
    *(v14 + 16) = 0;
    Batch = FigReadSchedulerCreateBatch(*(DerivedStorage + 16), (v14 + 8));
    if (!Batch)
    {
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener(DefaultLocalCenter, cf, figSchedIOBatchFRS_completionCallback, @"readSchedulerNotification_BatchCompleted", *(v14 + 8), 0, 0);
      *a3 = cf;
      return Batch;
    }

    v13 = cf;
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return Batch;
}

void figSchedIOFRS_Callback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a6 == -17785)
  {
    v8 = 4294948013;
  }

  else
  {
    v8 = a6;
  }

  (*a2)(a2[1], a2[2], a4, a5, v8);

  free(a2);
}

uint64_t figSchedIOFRS_FinishPreroll(uint64_t a1, int a2)
{
  v9 = 0;
  v10 = 0;
  v8 = 0;
  FigSimpleMutexLock(*a1);
  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  FigSimpleMutexUnlock(*a1);
  if (!v4)
  {
    return 0;
  }

  SchedulerBatchExpedite = FigReadSchedulerBatchExpedite(v4);
  SchedulerBatchAwaitCompletion = SchedulerBatchExpedite;
  if (a2)
  {
    if (!SchedulerBatchExpedite)
    {
      v8 = v4;
      LODWORD(v9) = 0;
      FigThreadRegisterAbortAction(figSchedIOFRSWaitForCompletionAbort, &v8, &v10);
      SchedulerBatchAwaitCompletion = FigReadSchedulerBatchAwaitCompletion(v4);
      if (v10)
      {
        FigThreadUnregisterAbortAction(v10);
      }
    }
  }

  CFRelease(v4);
  return SchedulerBatchAwaitCompletion;
}

uint64_t figSchedIOFRSWaitForCompletionAbort(uint64_t a1)
{
  result = FigReadSchedulerBatchCancel(*a1);
  *(a1 + 8) = -19283;
  return result;
}

size_t figSchedIOBatchFRS_completionCallback(uint64_t a1, uint64_t a2)
{
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification(DefaultLocalCenter, @"scheduledIOBatchNotification_BatchCompleted", a2, 0);
}

void figSchedIOBatchFRS_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener(DefaultLocalCenter, a1, figSchedIOBatchFRS_completionCallback, @"readSchedulerNotification_BatchCompleted", *(DerivedStorage + 8));
  if (!*(DerivedStorage + 16))
  {
    v4 = *(DerivedStorage + 8);
    if (!v4)
    {
      goto LABEL_6;
    }

    FigReadSchedulerBatchCancel(v4);
  }

  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    CFRelease(v5);
  }

LABEL_6:
  v6 = *DerivedStorage;
  if (*DerivedStorage)
  {

    CFRelease(v6);
  }
}

__CFString *figSchedIOBatchFRS_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  Mutable = CFStringCreateMutable(0, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"FigSchedIOBatchFRS %p(%d): scheduledIO=%@, schedulerBatch=%@", a1, v4, *DerivedStorage, DerivedStorage[1]);
  return Mutable;
}

uint64_t figSchedIOBatchFRS_Cancel(uint64_t a1)
{
  if (a1)
  {
    v1 = *(CMBaseObjectGetDerivedStorage(a1) + 8);

    return FigReadSchedulerBatchCancel(v1);
  }

  else
  {
    figSchedIOBatchFRS_Cancel_cold_1(&v3);
    return v3;
  }
}

void *OUTLINED_FUNCTION_4_25()
{

  return malloc_type_calloc(1uLL, 0x18uLL, 0x80040D6874129uLL);
}

uint64_t hevcbridgeGetSPS_VUI_AspectRatioCallbackFlag(uint64_t a1, int a2, int a3)
{
  if (a2 == 109)
  {
    *(a1 + 9) = a3;
    return a3 != 1;
  }

  if (a2 == 108)
  {
    *(a1 + 8) = a3;
    return a3 != 1;
  }

  return 4294954584;
}

uint64_t hevcbridgeGetSPS_VUI_AspectRatioCallbackUnsigned(unsigned int *a1, int a2, unsigned int a3)
{
  v3 = 4294954584;
  if (a2 > 110)
  {
    if (a2 == 111)
    {
      *a1 = a3;
      return 0;
    }

    if (a2 == 112)
    {
      a1[1] = a3;
      return 1;
    }
  }

  else
  {
    if (!a2)
    {
      if (a3 != 33)
      {
        return v3;
      }

      return 0;
    }

    if (a2 == 110)
    {
      if (a3 - 1 <= 0xF)
      {
        v4 = &kHEVCSampleAspectRatioIndicators + 2 * a3;
        v5 = *v4;
        LODWORD(v4) = v4[1];
        *a1 = v5;
        a1[1] = v4;
        return 1;
      }

      if (a3 != 255)
      {
        *a1 = 0x100000001;
        return 1;
      }

      return 0;
    }
  }

  return v3;
}

uint64_t hevcbridgeGetSPS_VUI_ChromaLocationCallbackFlag(uint64_t a1, int a2, int a3)
{
  if (a2 == 122)
  {
    *(a1 + 9) = a3;
    return a3 != 1;
  }

  if (a2 == 108)
  {
    *(a1 + 8) = a3;
    return a3 != 1;
  }

  return 4294954584;
}

uint64_t hevcbridgeGetSPS_VUI_ChromaLocationCallbackUnsigned(_DWORD *a1, int a2, int a3)
{
  if (a2 == 124)
  {
    a1[1] = a3;
    return 1;
  }

  else
  {
    if (a2 == 123)
    {
      *a1 = a3;
    }

    else if (a2 || a3 != 33)
    {
      return 4294954584;
    }

    return 0;
  }
}

uint64_t hevcbridgeGetSPS_VUI_NCLCCallbackFlag(uint64_t a1, int a2, int a3)
{
  if (a2 == 118)
  {
    *(a1 + 13) = a3;
    return a3 != 1;
  }

  if (a2 == 108)
  {
    *(a1 + 12) = a3;
    return a3 != 1;
  }

  return 4294954584;
}

uint64_t hevcbridgeGetSPS_VUI_NCLCCallbackUnsigned(_DWORD *a1, int a2, int a3)
{
  result = 4294954584;
  if (a2 > 119)
  {
    if (a2 == 120)
    {
      ++a1;
LABEL_11:
      *a1 = a3;
      return 0;
    }

    if (a2 == 121)
    {
      a1[2] = a3;
      return 1;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 != 119)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (a3 == 33)
    {
      return 0;
    }
  }

  return result;
}

uint64_t hevcbridgeGetSPS_VUI_FullRangeVideoCallbackFlag(_BYTE *a1, int a2, char a3)
{
  if (a2 != 117)
  {
    return 4294954584;
  }

  *a1 = a3;
  return 1;
}

uint64_t hevcbridgeGetSPS_VUI_FullRangeVideoCallbackUnsigned(uint64_t a1, int a2, int a3)
{
  if (a3 == 33 && a2 == 0)
  {
    return 0;
  }

  else
  {
    return 4294954584;
  }
}

uint64_t hevcbridgeGetNALUnitHeaderCallbackUnsigned(_DWORD *a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (a2 == 2)
    {
      a1 += 2;
      a2 = 1;
    }

    else
    {
      if (a2 != 1)
      {
        return 4294954584;
      }

      a2 = 0;
      ++a1;
    }
  }

  *a1 = a3;
  return a2;
}

uint64_t hevcbridgeGetVPSAlphaChannelNuhLayerIdCallbackFlag(uint64_t a1, int a2, int a3)
{
  if (a2 == 19)
  {
    return a3 == 0;
  }

  else
  {
    return 4294954584;
  }
}

uint64_t hevcbridgeGetVPSAlphaChannelNuhLayerIdCallbackUnsigned(uint64_t a1, int a2, unsigned int a3)
{
  if (a2 == 28)
  {
    return 1;
  }

  if (a2 == 27)
  {
    if (a3 == 1)
    {
      *a1 = a3 >> 8;
      result = 1;
      *(a1 + 4) = 1;
      return result;
    }
  }

  else if (a2 || a3 != 32)
  {
    return 4294954584;
  }

  return 0;
}

uint64_t hevcbridgeGetSEIAlphaChannelInfoCallbackFlag(uint64_t a1, int a2, int a3)
{
  result = 4294954584;
  if (a2 == 354)
  {
    if (a3)
    {
      return 4294954584;
    }

    else
    {
      return 1;
    }
  }

  else if (a2 == 353)
  {
    if (!a3)
    {
      return 0;
    }
  }

  else if (a2 == 348 && a3 != 1)
  {
    return 0;
  }

  return result;
}

uint64_t hevcbridgeGetSEIAlphaChannelInfoCallbackUnsigned(_BYTE *a1, int a2, int a3)
{
  v3 = -12712;
  if (a2 > 350)
  {
    if (a3)
    {
      v4 = -12712;
    }

    else
    {
      v4 = 0;
    }

    if (a3 == 255)
    {
      v6 = 0;
    }

    else
    {
      v6 = -12712;
    }

    if (a2 == 352)
    {
      v3 = v6;
    }

    else
    {
      v3 = -12712;
    }

    v5 = a2 == 351;
    goto LABEL_17;
  }

  if (a2 != 349)
  {
    if (a3)
    {
      v4 = -12712;
    }

    else
    {
      v4 = 0;
    }

    v5 = a2 == 350;
LABEL_17:
    if (v5)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  if (a3 == 1)
  {
    result = 0;
    *a1 = 1;
  }

  else if (a3)
  {
    return 4294954584;
  }

  else
  {
    result = 0;
    *a1 = 0;
  }

  return result;
}

uint64_t hevcbridgeParseSEIAlphaChannelInfo(uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  result = hevcbridgeUPullFlagAlways(a1, a2, *(a2 + 68) & 1, 348, &v9 + 1);
  if (result)
  {
    v5 = 0;
  }

  else
  {
    v5 = HIBYTE(v9) == 0;
  }

  if (v5)
  {
    v8 = 0;
    result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 68) >> 1) & 1, 349, 3);
    if (!result)
    {
      v6 = *(a2 + 68);
      result = hevcbridgeUPullLong(a1, 3, &v8);
      if ((v6 & 4) != 0 && !result)
      {
        result = (a2[2])(*a2, 350, v8, 0xFFFFFFFFLL);
      }

      if (!result)
      {
        v7 = v8;
        result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 68) >> 3) & 1, 351, v8 + 9);
        if (!result)
        {
          result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 68) >> 4) & 1, 352, v7 + 9);
          if (!result)
          {
            result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 68) >> 5) & 1, 353);
            if (!result)
            {
              result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 68) >> 6) & 1, 354, &v9);
              if (!result)
              {
                if (!v9)
                {
                  return 0;
                }

                result = hevcbridgeUPullFlagIfRequested(a1, a2, *(a2 + 68) >> 7, 355);
                if (!result)
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t hevcbridgeGetSEIAmbientViewingEnvironmentCallbackUnsigned(uint64_t a1, int a2, int a3)
{
  result = 4294954584;
  if (a2 > 356)
  {
    if (a2 == 357)
    {
      *(a1 + 4) = a3;
LABEL_11:
      if (a3)
      {
        return 0;
      }

      else
      {
        return 4294954584;
      }
    }

    if (a2 == 358)
    {
      *(a1 + 6) = a3;
      return 1;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 != 356)
      {
        return result;
      }

      *a1 = a3;
      goto LABEL_11;
    }

    if (a3 == 39)
    {
      return 0;
    }
  }

  return result;
}

uint64_t hevcbridgeGetSPSProfileTierLevelCallbackFlag(uint64_t a1, int a2, char a3)
{
  if (a2 != 309)
  {
    return 4294954584;
  }

  result = 0;
  *(a1 + 8) = a3;
  return result;
}

uint64_t hevcbridgeGetSPSProfileTierLevelCallbackUnsigned(_DWORD *a1, int a2, int a3)
{
  result = 4294954584;
  if (a2 <= 309)
  {
    if (a2)
    {
      if (a2 != 308 || a3)
      {
        return result;
      }
    }

    else if (a3 != 33)
    {
      return result;
    }

    return 0;
  }

  if (a2 == 310)
  {
    *a1 = a3;
    return 0;
  }

  if (a2 == 328)
  {
    a1[1] = a3;
    return 1;
  }

  return result;
}

uint64_t hevcbridgeGetSPSChromaFormatAndBitDepthsCallbackFlag(uint64_t a1, int a2)
{
  if (a2 == 70)
  {
    return 4294954579;
  }

  else
  {
    return 4294954584;
  }
}

uint64_t hevcbridgeGetSPSChromaFormatAndBitDepthsCallbackUnsigned(_DWORD *a1, int a2, int a3)
{
  result = 4294954584;
  if (a2 > 80)
  {
    if (a2 == 81)
    {
      ++a1;
LABEL_11:
      *a1 = a3;
      return 0;
    }

    if (a2 == 82)
    {
      a1[2] = a3;
      return 1;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 != 72)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (a3 == 33)
    {
      return 0;
    }
  }

  return result;
}

uint64_t hevcbridgeGetSPSScalingListEnabledAndScalingListPresentCallbackUnsigned(uint64_t a1, int a2, int a3)
{
  if (a3 == 33 && a2 == 0)
  {
    return 0;
  }

  else
  {
    return 4294954584;
  }
}

uint64_t hevcbridgeGetSPSScalingListEnabledAndScalingListPresentCallback(_BYTE *a1, int a2, int a3)
{
  if (a2 == 94)
  {
    a1[1] = a3;
    return 1;
  }

  else if (a2 == 91)
  {
    *a1 = a3;
    return a3 == 0;
  }

  else
  {
    return 4294954584;
  }
}

uint64_t hevcbridgeGetSPSIsInterlacedCallbackFlag(_BYTE *a1, int a2, int a3)
{
  if (a2 == 126)
  {
    a1[1] = a3;
    return 1;
  }

  else if (a2 == 108)
  {
    *a1 = a3;
    return a3 == 0;
  }

  else
  {
    return 4294954584;
  }
}

uint64_t hevcbridgeGetSPSIsInterlacedCallbackUnsigned(uint64_t a1, int a2, int a3)
{
  if (a3 == 33 && a2 == 0)
  {
    return 0;
  }

  else
  {
    return 4294954584;
  }
}

uint64_t hevcbridgeGet3DLayerIDsSEICallbackUnsigned(uint64_t a1, int a2, int a3)
{
  if (a2 == 364)
  {
    *(a1 + 8) = a3;
    return 1;
  }

  else
  {
    if (a2 == 363)
    {
      *(a1 + 4) = a3;
    }

    else if (a2 || a3 != 39)
    {
      return 4294954584;
    }

    return 0;
  }
}

uint64_t hevcbridgeParseSEI3DReferenceDisplaysInformation(uint64_t a1, void *a2)
{
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v4 = *(a2 + 38);
  result = hevcbridgeUEPullLong(a1, &v22 + 1);
  if ((v4 & 1) != 0 && !result)
  {
    result = (a2[2])(*a2, 359, HIDWORD(v22), 0xFFFFFFFFLL);
  }

  if (result)
  {
    return result;
  }

  v6 = HIDWORD(v22);
  if (HIDWORD(v22) >= 0x20)
  {
    hevcbridgeParseSEI3DReferenceDisplaysInformation_cold_3(&v24);
    return v24;
  }

  result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 76) >> 1) & 1, 360, &v23);
  if (result)
  {
    return result;
  }

  v7 = v23;
  if (v23)
  {
    v8 = *(a2 + 38);
    result = hevcbridgeUEPullLong(a1, &v21);
    if ((v8 & 4) != 0 && !result)
    {
      result = (a2[2])(*a2, 361, v21, 0xFFFFFFFFLL);
    }

    if (result)
    {
      return result;
    }

    v9 = v21;
    if (v21 >= 0x20)
    {
      hevcbridgeParseSEI3DReferenceDisplaysInformation_cold_1(&v24);
      return v24;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + 38);
  result = hevcbridgeUEPullLong(a1, &v22);
  if ((v10 & 8) != 0 && !result)
  {
    result = (a2[2])(*a2, 362, v22, 0xFFFFFFFFLL);
  }

  if (!result)
  {
    v11 = 0;
    v12 = v22;
    v13 = v6 - 30;
    v14 = v6 - 31;
    while (1)
    {
      v20 = 0;
      v19 = 0;
      result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 76) >> 4) & 1, 363);
      if (result)
      {
        break;
      }

      result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 76) >> 5) & 1, 364);
      if (result)
      {
        break;
      }

      v15 = *(a2 + 38);
      result = hevcbridgeUPullLong(a1, 6, &v20);
      if ((v15 & 0x40) != 0 && !result)
      {
        result = (a2[2])(*a2, 365, v20, 0xFFFFFFFFLL);
      }

      if (result)
      {
        break;
      }

      if (v20 >= 0x3F)
      {
        hevcbridgeParseSEI3DReferenceDisplaysInformation_cold_2(&v24);
        return v24;
      }

      if (v20)
      {
        v16 = v14 + v20;
      }

      else
      {
        v16 = v13;
      }

      result = hevcbridgeUPullIfRequested(a1, a2, *(a2 + 76) >> 7, 366, v16);
      if (result)
      {
        return result;
      }

      if (v7)
      {
        v24 = 0;
        result = hevcbridgeUPullAlways(a1, a2, *(a2 + 77) & 1, 367, &v24, 6);
        if (result)
        {
          return result;
        }

        v17 = v24 ? v24 - 31 : 0;
        result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 38) >> 9) & 1, 368, v9 + v17);
        if (result)
        {
          return result;
        }
      }

      result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 38) >> 10) & 1, 369, &v19);
      if (result)
      {
        return result;
      }

      if (v19)
      {
        result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 38) >> 11) & 1, 370, 10);
        if (result)
        {
          return result;
        }
      }

      if (++v11 > v12)
      {
        v18 = (*(a2 + 38) >> 12) & 1;

        return hevcbridgeUPullFlagIfRequested(a1, a2, v18, 371);
      }
    }
  }

  return result;
}

uint64_t hevcbridgeGet3DLayerIDsVPSCallbackFlag(uint64_t a1, int a2, int a3)
{
  if (a2 == 19)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = -12712;
  }

  if (a2 == 31)
  {
    v3 = 1;
  }

  if (a2 == 34)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t hevcbridgeGet3DLayerIDsVPSCallbackUnsigned(uint64_t a1, int a2, int a3)
{
  if ((a2 - 32) < 2)
  {
    return 1;
  }

  if (a2 == 30)
  {
    if (a3 == *(a1 + 4))
    {
      v4 = (a1 + 12);
      v5 = 64;
      while (*v4 != 255)
      {
        ++v4;
        if (!--v5)
        {
          return 4294954584;
        }
      }
    }

    else
    {
      if (a3 != *(a1 + 8))
      {
        return 0;
      }

      v4 = (a1 + 76);
      v6 = 64;
      result = 4294954584;
      while (*v4 != 255)
      {
        ++v4;
        if (!--v6)
        {
          return result;
        }
      }
    }

    *v4 = BYTE2(a3);
    return 0;
  }

  if (a2 || a3 != 32)
  {
    return 4294954584;
  }

  return 0;
}

size_t hevcbridgeUEPush(uint64_t a1, int a2)
{
  if (*(a1 + 41))
  {
    hevcbridgeUEPush_cold_1(&v9);
    return v9;
  }

  else
  {
    v3 = a2 + 1;
    if ((a2 + 1) < 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      v5 = a2 + 1;
      do
      {
        v6 = v4++;
        if (v6 > 0xE)
        {
          break;
        }

        v7 = v5 > 3;
        v5 >>= 1;
      }

      while (v7);
    }

    result = hevcbridgeUPush(a1, v4 + 1, 1, 0);
    if (v4 && !result)
    {

      return hevcbridgeUPush(a1, v4, (v3 - (1 << v4)) & ((1 << v4) - 1), 0);
    }
  }

  return result;
}

uint64_t generateBufferWithStartCodeEmulationBytes(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    v4 = 0;
    LODWORD(result) = 0;
    do
    {
      if (v4 == 2)
      {
        if (*a2 > 3u)
        {
          v4 = 2;
        }

        else
        {
          v4 = 0;
          *(a3 + result) = 3;
          LODWORD(result) = result + 1;
        }
      }

      v5 = *a2++;
      *(a3 + result) = v5;
      if (v5)
      {
        v4 = 0;
      }

      else
      {
        ++v4;
      }

      result = (result + 1);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t FigHEVCBridge_sortParameterSetsByTypeThenIDThenBase(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 > v4)
  {
    return 1;
  }

  if (!*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return !*(a2 + 24);
}

uint64_t hevcbridge_getHEVCParameterSetAtIndex(CFTypeRef cf, int a2, int a3, unint64_t a4, unint64_t a5, void *a6, unint64_t a7, _DWORD *a8, uint64_t a9, uint64_t a10)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (!cf)
  {
    goto LABEL_58;
  }

  v16 = CFGetTypeID(cf);
  if (v16 != CFDataGetTypeID())
  {
    goto LABEL_58;
  }

  Length = CFDataGetLength(cf);
  BytePtr = CFDataGetBytePtr(cf);
  v19 = 22;
  if (!a2)
  {
    v19 = 5;
  }

  if (Length <= v19)
  {
    goto LABEL_58;
  }

  v20 = BytePtr;
  if (*BytePtr != 1)
  {
    goto LABEL_58;
  }

  v21 = a6;
  if (a8)
  {
    v22 = 21;
    if (!a2)
    {
      v22 = 4;
    }

    *a8 = (BytePtr[v22] & 3) + 1;
    if (!a7 && !a5 && !a6 && !a9)
    {
      return 0;
    }
  }

  v38 = BytePtr[v19];
  v37 = a7;
  if (BytePtr[v19])
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = v19 + 1;
    v43 = (a7 | a9) != 0;
    while (1)
    {
      v28 = v27 + 3;
      if (Length < v27 + 3)
      {
        goto LABEL_58;
      }

      v41 = v25;
      v42 = v26;
      v29 = &v20[v27];
      v30 = __rev16(*(v29 + 1));
      if (a3)
      {
        v31 = (*v29 & 0x3F) == a3;
      }

      else
      {
        v31 = 1;
      }

      v32 = v31;
      if (v31)
      {
        v33 = v30;
      }

      else
      {
        v33 = 0;
      }

      for (i = v33; v30; LODWORD(v30) = v30 - 1)
      {
        v34 = v28 + 2;
        if (Length < v28 + 2)
        {
          goto LABEL_58;
        }

        v35 = __rev16(*&v20[v28]);
        v28 = v35 + v34;
        if (Length < v35 + v34)
        {
          goto LABEL_58;
        }

        if (a4 == v24)
        {
          v36 = v32;
        }

        else
        {
          v36 = 0;
        }

        if (v36 == 1)
        {
          if (a5)
          {
            *a5 = &v20[v34];
          }

          if (v21)
          {
            *v21 = v35;
          }

          if (!v43)
          {
            return 0;
          }
        }

        if (a9)
        {
          (a9)(a10, v24, &v20[v34]);
          v21 = a6;
        }

        v24 += v32;
      }

      v26 = i + v42;
      v25 = v41 + 1;
      v27 = v28;
      if (v41 + 1 == v38)
      {
        goto LABEL_54;
      }
    }
  }

  v26 = 0;
LABEL_54:
  if (v37)
  {
    *v37 = v26;
  }

  result = 0;
  if (a5 | v21)
  {
    if (v26 <= a4)
    {
LABEL_58:
      hevcbridge_getHEVCParameterSetAtIndex_cold_1();
      return v45;
    }
  }

  return result;
}

uint64_t FigHEVCBridge_CopyHEVCSEIPayloadData(CFTypeRef cf, __int16 a2, CFTypeRef *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = 0;
  cfa = 0;
  v6 = 39;
  while (1)
  {
    v23 = 0;
    HEVCParameterSetAtIndex = hevcbridge_getHEVCParameterSetAtIndex(cf, 1, v6, 0, 0, 0, &v23, 0, 0, 0);
    if (HEVCParameterSetAtIndex)
    {
      break;
    }

    if (v23)
    {
      v8 = 0;
      do
      {
        v21 = 0;
        v22 = 0;
        HEVCParameterSetAtIndex = hevcbridge_getHEVCParameterSetAtIndex(cf, 1, v6, v8, &v22, &v21, 0, 0, 0, 0);
        if (HEVCParameterSetAtIndex)
        {
          goto LABEL_16;
        }

        v35 = 0;
        v33 = 0;
        v28 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        LOWORD(v24) = a2;
        v25 = &v11;
        cfa = 0;
        v27[0] = v22;
        v27[1] = v21;
        v27[2] = 0;
        v27[3] = v22 + v21;
        WORD4(v28) = 1;
        v29 = v22;
        v30 = v22;
        v31 = 0;
        v32 = 0;
        v34 = 0;
        HEVCParameterSetAtIndex = hevcbridgeAdvanceInBitstream(v27, 0);
        if (HEVCParameterSetAtIndex)
        {
          goto LABEL_16;
        }

        BYTE8(v13) |= 1u;
        BYTE12(v13) = BYTE12(v13) & 0xCB | 4;
        *&v11 = &v24;
        *&v12 = hevcbridgeParseSEITypeCallbackUnsigned;
        HEVCParameterSetAtIndex = hevcbridgeParseNALUnit(v27, &v11);
        if (HEVCParameterSetAtIndex)
        {
          goto LABEL_16;
        }

        if (cfa)
        {
          v9 = 0;
          *a3 = cfa;
          cfa = 0;
          goto LABEL_13;
        }
      }

      while (++v8 < v23);
    }

    if (++v6 == 41)
    {
      v9 = 0;
      *a3 = 0;
      goto LABEL_13;
    }
  }

LABEL_16:
  v9 = HEVCParameterSetAtIndex;
LABEL_13:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v9;
}

uint64_t hevcbridgeParseSEITypeCallbackUnsigned(unsigned __int16 *a1, int a2, int a3)
{
  if (a2 == 344)
  {
    if (*a1 == a3)
    {
      v4 = hevcbridgeParseSEIPayloadData;
    }

    else
    {
      v4 = 0;
    }

    *(*(a1 + 1) + 44) = *(*(a1 + 1) + 44) & 0xDF | (32 * (*a1 == a3));
    *(*(a1 + 1) + 32) = v4;
  }

  else if (a2 || (a3 - 41) < 0xFFFFFFFE)
  {
    return 4294954584;
  }

  return 0;
}

uint64_t hevcbridgeParseSEIForSplitterCallbackUnsigned(uint64_t a1, int a2, int a3)
{
  if ((a3 - 41) >= 0xFFFFFFFE)
  {
    v3 = 0;
  }

  else
  {
    v3 = -12712;
  }

  if (a2)
  {
    return 4294954584;
  }

  else
  {
    return v3;
  }
}

uint64_t hevcbridgeParseSEIForSplitterCallbackCFData(CFMutableArrayRef *a1, int a2, void *value)
{
  if (a2 != 342)
  {
    return 4294954584;
  }

  CFArrayAppendValue(*a1, value);
  return 0;
}

uint64_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord(const void *a1, int a2, const __CFArray *a3, const __CFArray *a4, __CFData **a5)
{
  if (!a1 || (v10 = CFGetTypeID(a1), v10 != CFDataGetTypeID()))
  {
    FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_14(&v56);
    return v56;
  }

  if (!a3 || CFArrayGetCount(a3) <= 0)
  {
    FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_13(&v56);
    return v56;
  }

  if (a4)
  {
    Count = CFArrayGetCount(a4);
    if (Count != CFArrayGetCount(a3))
    {
      FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_1(&v56);
      return v56;
    }
  }

  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  if (!MutableCopy)
  {
    FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_12(&v56);
    return v56;
  }

  v13 = MutableCopy;
  v54 = a3;
  Length = CFDataGetLength(MutableCopy);
  MutableBytePtr = CFDataGetMutableBytePtr(v13);
  v16 = MutableBytePtr;
  theArray = a4;
  v43 = a5;
  if (a2)
  {
    if (Length <= 5)
    {
      FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_3(&v56);
    }

    else
    {
      if (*MutableBytePtr == 1)
      {
        v17 = 5;
        goto LABEL_15;
      }

      FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_2(&v56);
    }

LABEL_47:
    v41 = v56;
    CFRelease(v13);
    return v41;
  }

  if (Length <= 22)
  {
    FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_11(&v56);
    goto LABEL_47;
  }

  if (*MutableBytePtr != 1)
  {
    FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_4(&v56);
    goto LABEL_47;
  }

  v17 = 22;
LABEL_15:
  v45 = v17;
  v49 = MutableBytePtr[v17];
  if (MutableBytePtr[v17])
  {
    v50 = 0;
    v18 = 0;
    v19 = v17 + 1;
    while (1)
    {
      v20 = v19 + 3;
      if (Length < v19 + 3)
      {
        break;
      }

      v44 = v18;
      range_8 = v19 + 1;
      v21 = __rev16(*&v16[v19 + 1]);
      if (v21)
      {
        v52 = v21;
        v53 = 0;
        range = v19;
        v22 = v16[v19] & 0x3F;
        v46 = v22 - 33;
        while (1)
        {
          v23 = v20 + 2;
          if (Length < v20 + 2)
          {
            FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_9(&v56);
            goto LABEL_47;
          }

          v24 = __rev16(*&v16[v20]);
          if (Length < v23 + v24)
          {
            FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_8(&v56);
            goto LABEL_47;
          }

          if (v24 <= 1)
          {
            FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_7(&v56);
            goto LABEL_47;
          }

          if (v16[v23] < 0)
          {
            FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_6(&v56);
            goto LABEL_47;
          }

          if (v22 != v16[v23] >> 1)
          {
            FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_5(&v56);
            goto LABEL_47;
          }

          v25 = v16;
          v26 = v16[v20 + 3] | (v16[v23] << 8);
          v56 = 0;
          v27 = v22;
          v28 = FigCFArrayContainsInt32(v54, (v26 >> 3) & 0x3F);
          v22 = v27;
          if (v27 != 32 && !v28)
          {
            v57.length = v24 + 2;
            v57.location = v20;
            CFDataDeleteBytes(v13, v57);
            v29 = v53 + 1;
            if (v52 == ++v53)
            {
              v58.location = range;
              v58.length = 3;
              CFDataDeleteBytes(v13, v58);
              newBytes[0] = v49 - ++v50;
              v38 = v13;
              v39.location = v45;
              v39.length = 1;
              v40 = 1;
            }

            else
            {
              *newBytes = bswap32(v52 - v29) >> 16;
              v38 = v13;
              v39.location = range_8;
              v39.length = 2;
              v40 = 2;
            }

            CFDataReplaceBytes(v38, v39, newBytes, v40);
            v16 = CFDataGetMutableBytePtr(v13);
            Length = CFDataGetLength(v13);
            v22 = v27;
            goto LABEL_39;
          }

          if (!theArray)
          {
            break;
          }

          if (CFArrayGetCount(theArray) < 1 || v46 > 1 || (FirstIndexOfInt32 = FigCFArrayGetFirstIndexOfInt32(v54, (v26 >> 3) & 0x3F), FirstIndexOfInt32 == -1))
          {
            v20 = v23 + v24;
            v22 = v27;
LABEL_38:
            v16 = v25;
            goto LABEL_39;
          }

          FigCFArrayGetInt32AtIndex(theArray, FirstIndexOfInt32, &v56, v32, v33, v34, v35, v36);
          v37 = (8 * (v56 & 0x1FFF)) | v26 & 0x7E07;
          v16 = v25;
          v25[v23] = HIBYTE(v37);
          v25[v20 + 3] = v37;
          v20 = v23 + v24;
          v22 = v27;
LABEL_39:
          if (!--v21)
          {
            goto LABEL_40;
          }
        }

        v20 = v23 + v24;
        goto LABEL_38;
      }

LABEL_40:
      v18 = v44 + 1;
      v19 = v20;
      if (v44 + 1 == v49)
      {
        goto LABEL_41;
      }
    }

    FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_10(&v56);
    goto LABEL_47;
  }

LABEL_41:
  v41 = 0;
  *v43 = v13;
  return v41;
}

uint64_t FigHEVCBridge_CreateSelectedLayerHVCCFromMuxedAlphaHVCC(const void *a1, int a2, __CFData **a3)
{
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v14 = Mutable;
    FigCFArrayAppendInt32(Mutable, a2, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      v15 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
      if (!v15)
      {
        FigHEVCBridge_CreateSelectedLayerHVCCFromMuxedAlphaHVCC_cold_1();
        return v25;
      }

      v22 = v15;
      FigCFArrayAppendInt32(v15, 0, v16, v17, v18, v19, v20, v21);
    }

    else
    {
      v22 = 0;
    }

    SelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord = FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord(a1, 0, v14, v22, a3);
    CFRelease(v14);
    if (v22)
    {
      CFRelease(v22);
    }
  }

  else
  {
    FigHEVCBridge_CreateSelectedLayerHVCCFromMuxedAlphaHVCC_cold_2(&v26);
    return v26;
  }

  return SelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription(const opaqueCMFormatDescription *a1, int a2, CMVideoFormatDescriptionRef *a3)
{
  v46[1] = *MEMORY[0x1E69E9840];
  theData = 0;
  if (!a1)
  {
    FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_14(&v44);
    return v44;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  if (MediaSubType == 1836415073)
  {
    v7 = 1752589105;
  }

  else
  {
    v7 = MediaSubType;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(a1);
  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (!Extensions)
  {
    FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_13(&v44);
    return v44;
  }

  v10 = Extensions;
  Value = CFDictionaryGetValue(Extensions, @"SampleDescriptionExtensionAtoms");
  if (!Value)
  {
    FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_12(&v44);
    return v44;
  }

  v12 = Value;
  v13 = CFDictionaryGetValue(Value, @"hvcC");
  if (!v13)
  {
    FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_11(&v44);
    return v44;
  }

  v14 = v13;
  v15 = CFGetTypeID(v13);
  if (v15 != CFDataGetTypeID())
  {
    FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_1(&v44);
    return v44;
  }

  v16 = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v10);
  if (!MutableCopy)
  {
    FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_10(&v44);
    return v44;
  }

  v18 = MutableCopy;
  v19 = CFDictionaryCreateMutableCopy(v16, 0, v12);
  if (!v19)
  {
    FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_9();
    return v44;
  }

  v20 = v19;
  CFDictionaryRemoveValue(v19, @"hvcC");
  CFDictionaryRemoveValue(v20, @"lhvC");
  if (hevcbridge_isSelectedLayerIdInConfigRecord(v14, a2))
  {
    updated = FigHEVCBridge_CreateSelectedLayerHVCCFromMuxedAlphaHVCC(v14, a2, &theData);
    v22 = 0;
    if (updated)
    {
      goto LABEL_30;
    }

LABEL_28:
    CFDictionarySetValue(v20, @"hvcC", theData);
    updated = hevcbridge_updateFormatDescriptionExtensionsFromHVCC(theData, v18);
    if (!updated)
    {
      CFDictionarySetValue(v18, @"SampleDescriptionExtensionAtoms", v20);
      CFDictionaryRemoveValue(v18, @"VerbatimSampleDescription");
      CFDictionaryRemoveValue(v18, @"VerbatimISOSampleEntry");
      CFDictionaryRemoveValue(v18, @"ContainsAlphaChannel");
      FigCFDictionarySetInt32(v18, @"Depth", 24, v28, v29, v30, v31, v32);
      CFDictionarySetValue(v18, @"IgnoreVPSExtension", *MEMORY[0x1E695E4D0]);
      updated = CMVideoFormatDescriptionCreate(v16, v7, Dimensions.width, Dimensions.height, v18, a3);
    }

    goto LABEL_30;
  }

  v44 = 0;
  v45 = 0;
  v46[0] = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v35 = 0;
  HEVCParameterSetAtIndex = hevcbridge_getHEVCParameterSetAtIndex(v14, 1, 32, 0, &v44, &v41, &v38, &v35 + 1, 0, 0);
  if (HEVCParameterSetAtIndex)
  {
LABEL_36:
    v33 = HEVCParameterSetAtIndex;
    v22 = 0;
    goto LABEL_31;
  }

  if (v38 != 1)
  {
    FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_2(&v37);
LABEL_51:
    v22 = 0;
LABEL_52:
    v33 = v37;
    goto LABEL_31;
  }

  v24 = CFDictionaryGetValue(v12, @"lhvC");
  if (!v24)
  {
    FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_8(&v37);
    goto LABEL_51;
  }

  v25 = v24;
  HEVCParameterSetAtIndex = hevcbridge_getHEVCParameterSetWithNuhLayerID(v24, 33, a2, &v45, &v42, &v39, &v35);
  if (HEVCParameterSetAtIndex)
  {
    goto LABEL_36;
  }

  if (HIDWORD(v35) != v35)
  {
    FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_3(&v37);
    goto LABEL_51;
  }

  if (v39 != 1)
  {
    FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_4(&v37);
    goto LABEL_51;
  }

  HEVCParameterSetAtIndex = hevcbridge_getHEVCParameterSetWithNuhLayerID(v25, 34, a2, v46, &v43, &v40, &v35);
  if (HEVCParameterSetAtIndex)
  {
    goto LABEL_36;
  }

  if (HIDWORD(v35) != v35)
  {
    FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_5(&v37);
    goto LABEL_51;
  }

  if (v40 != 1)
  {
    FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_6(&v37);
    goto LABEL_51;
  }

  HEVCParameterSetAtIndex = FigHEVCBridge_CreateUpdatedHVCCWithAdditionalHEVCParameterSets(HEVCParameterSetAtIndex, 0, 3uLL, &v44, &v41, HIDWORD(v35), 0, 0, &theData);
  if (HEVCParameterSetAtIndex)
  {
    goto LABEL_36;
  }

  v26 = CFDataCreateMutableCopy(v16, 0, theData);
  v22 = v26;
  if (!v26)
  {
    FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_7(&v37);
    goto LABEL_52;
  }

  updated = hevcbridge_updateConfigRecordNuhLayerID(v26, 0, 0);
  if (!updated)
  {
    v27 = theData;
    theData = v22;
    CFRetain(v22);
    if (v27)
    {
      CFRelease(v27);
    }

    goto LABEL_28;
  }

LABEL_30:
  v33 = updated;
LABEL_31:
  CFRelease(v18);
  CFRelease(v20);
  if (theData)
  {
    CFRelease(theData);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v33;
}

uint64_t hevcbridge_isSelectedLayerIdInConfigRecord(const __CFData *a1, int a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFDataGetTypeID()))
  {
    Length = CFDataGetLength(a1);
    BytePtr = CFDataGetBytePtr(a1);
    if (Length <= 22)
    {
      hevcbridge_isSelectedLayerIdInConfigRecord_cold_8();
    }

    else if (*BytePtr == 1)
    {
      if (BytePtr[22])
      {
        v7 = 0;
        v8 = 23;
        while (1)
        {
          v9 = v8 + 3;
          if (Length < v8 + 3)
          {
            hevcbridge_isSelectedLayerIdInConfigRecord_cold_7();
            return 0;
          }

          v10 = &BytePtr[v8];
          v11 = __rev16(*(v10 + 1));
          if (v11)
          {
            break;
          }

          v8 = v9;
LABEL_20:
          if (++v7 == BytePtr[22])
          {
            return 0;
          }
        }

        v12 = *v10 & 0x3F;
        while (1)
        {
          v8 = v9 + 2;
          if (Length < v9 + 2)
          {
            hevcbridge_isSelectedLayerIdInConfigRecord_cold_6();
            return 0;
          }

          v13 = &BytePtr[v9];
          v14 = __rev16(*v13);
          v15 = v8 + v14;
          if (Length < v8 + v14)
          {
            hevcbridge_isSelectedLayerIdInConfigRecord_cold_5();
            return 0;
          }

          if (v14 <= 1)
          {
            hevcbridge_isSelectedLayerIdInConfigRecord_cold_4();
            return 0;
          }

          v16 = BytePtr[v8];
          if (v16 < 0)
          {
            hevcbridge_isSelectedLayerIdInConfigRecord_cold_3();
            return 0;
          }

          if (v12 != BytePtr[v8] >> 1)
          {
            break;
          }

          if ((v12 - 39) >= 2)
          {
            v8 = v15;
            if ((((v13[3] | (v16 << 8)) >> 3) & 0x3F) == a2)
            {
              return 1;
            }
          }

          v9 = v8;
          if (!--v11)
          {
            goto LABEL_20;
          }
        }

        hevcbridge_isSelectedLayerIdInConfigRecord_cold_2();
      }
    }

    else
    {
      hevcbridge_isSelectedLayerIdInConfigRecord_cold_1();
    }
  }

  else
  {
    hevcbridge_isSelectedLayerIdInConfigRecord_cold_9();
  }

  return 0;
}

uint64_t hevcbridge_getHEVCParameterSetWithNuhLayerID(CFTypeRef cf, int a2, int a3, const UInt8 **a4, void *a5, void *a6, _DWORD *a7)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (!cf || (v14 = CFGetTypeID(cf), v14 != CFDataGetTypeID()))
  {
    hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_6(&v30);
    return v30;
  }

  Length = CFDataGetLength(cf);
  BytePtr = CFDataGetBytePtr(cf);
  if (Length <= 5)
  {
    hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_5(&v30);
    return v30;
  }

  if (*BytePtr != 1)
  {
    hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_1(&v30);
    return v30;
  }

  if (!a7 || (*a7 = (BytePtr[4] & 3) + 1, a4) || a5 || a6)
  {
    v17 = BytePtr[5];
    if (BytePtr[5])
    {
      v18 = 0;
      v19 = 0;
      v20 = 6;
      do
      {
        v21 = v20 + 3;
        if (Length < v20 + 3)
        {
          hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_4(&v30);
          return v30;
        }

        v22 = &BytePtr[v20];
        v23 = __rev16(*&BytePtr[v20 + 1]);
        if (v23)
        {
          v24 = *v22 & 0x3F;
          while (1)
          {
            v25 = v21 + 2;
            if (Length < v21 + 2)
            {
              hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_3(&v30);
              return v30;
            }

            v26 = &BytePtr[v21];
            v27 = __rev16(*&BytePtr[v21]);
            v21 = v27 + v25;
            if (Length < v27 + v25)
            {
              break;
            }

            if (v24 == a2)
            {
              v28 = &BytePtr[v25];
              if ((((v26[3] | (*v28 << 8)) >> 3) & 0x3F) == a3)
              {
                if (a4)
                {
                  *a4 = v28;
                }

                if (a5)
                {
                  *a5 = v27;
                }

                if (!a6)
                {
                  return 0;
                }

                ++v18;
              }
            }

            if (!--v23)
            {
              goto LABEL_33;
            }
          }

          hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_2(&v30);
          return v30;
        }

LABEL_33:
        ++v19;
        v20 = v21;
      }

      while (v19 != v17);
      if (!a6)
      {
        return 0;
      }

      goto LABEL_35;
    }

    v18 = 0;
    if (a6)
    {
LABEL_35:
      result = 0;
      *a6 = v18;
      return result;
    }
  }

  return 0;
}

uint64_t hevcbridge_updateConfigRecordNuhLayerID(const __CFData *a1, int a2, __int16 a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFDataGetTypeID()))
  {
    Length = CFDataGetLength(a1);
    MutableBytePtr = CFDataGetMutableBytePtr(a1);
    if (a2)
    {
      if (Length <= 5)
      {
        hevcbridge_updateConfigRecordNuhLayerID_cold_2(&v22);
        return v22;
      }

      if (*MutableBytePtr != 1)
      {
        hevcbridge_updateConfigRecordNuhLayerID_cold_1(&v22);
        return v22;
      }

      v9 = 5;
    }

    else
    {
      if (Length <= 22)
      {
        hevcbridge_updateConfigRecordNuhLayerID_cold_10(&v22);
        return v22;
      }

      if (*MutableBytePtr != 1)
      {
        hevcbridge_updateConfigRecordNuhLayerID_cold_3(&v22);
        return v22;
      }

      v9 = 22;
    }

    v10 = MutableBytePtr[v9];
    if (!MutableBytePtr[v9])
    {
      return 0;
    }

    v11 = 0;
    v12 = v9 + 1;
    while (1)
    {
      v13 = v12 + 3;
      if (Length < v12 + 3)
      {
        hevcbridge_updateConfigRecordNuhLayerID_cold_9(&v22);
        return v22;
      }

      v14 = &MutableBytePtr[v12];
      v15 = __rev16(*&MutableBytePtr[v12 + 1]);
      if (v15)
      {
        break;
      }

LABEL_21:
      ++v11;
      v12 = v13;
      if (v11 == v10)
      {
        return 0;
      }
    }

    v16 = *v14 & 0x3F;
    while (1)
    {
      v17 = v13 + 2;
      if (Length < v13 + 2)
      {
        hevcbridge_updateConfigRecordNuhLayerID_cold_8(&v22);
        return v22;
      }

      v18 = &MutableBytePtr[v13];
      v19 = __rev16(*&MutableBytePtr[v13]);
      v13 = v17 + v19;
      if (Length < v17 + v19)
      {
        hevcbridge_updateConfigRecordNuhLayerID_cold_7(&v22);
        return v22;
      }

      if (v19 <= 1)
      {
        hevcbridge_updateConfigRecordNuhLayerID_cold_6(&v22);
        return v22;
      }

      if (MutableBytePtr[v17] < 0)
      {
        hevcbridge_updateConfigRecordNuhLayerID_cold_5(&v22);
        return v22;
      }

      if (v16 != MutableBytePtr[v17] >> 1)
      {
        break;
      }

      v20 = v18[3] & 7 | (MutableBytePtr[v17] << 8) & 0x7E07 | (8 * (a3 & 0x1FFF));
      MutableBytePtr[v17] = HIBYTE(v20);
      v18[3] = v20;
      if (!--v15)
      {
        goto LABEL_21;
      }
    }

    hevcbridge_updateConfigRecordNuhLayerID_cold_4(&v22);
  }

  else
  {
    hevcbridge_updateConfigRecordNuhLayerID_cold_11(&v22);
  }

  return v22;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription(const opaqueCMFormatDescription *a1, CFArrayRef theArray, const __CFArray *a3, CMVideoFormatDescriptionRef *a4)
{
  v66[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  theData = 0;
  v54 = 0;
  if (!a1)
  {
    FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_18(&v64);
    goto LABEL_44;
  }

  if (!theArray || CFArrayGetCount(theArray) <= 0)
  {
    FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_17(&v64);
LABEL_44:
    v37 = 0;
    v48 = v64;
    goto LABEL_38;
  }

  if (a3)
  {
    Count = CFArrayGetCount(a3);
    if (Count != CFArrayGetCount(theArray))
    {
      FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_1(&v64);
      goto LABEL_44;
    }
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  Dimensions = CMVideoFormatDescriptionGetDimensions(a1);
  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (!Extensions)
  {
    FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_16(&v64);
    goto LABEL_44;
  }

  v12 = Extensions;
  Value = CFDictionaryGetValue(Extensions, @"SampleDescriptionExtensionAtoms");
  if (!Value)
  {
    FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_15(&v64);
    goto LABEL_44;
  }

  v14 = Value;
  v15 = CFDictionaryGetValue(Value, @"hvcC");
  if (!v15)
  {
    FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_14(&v64);
    goto LABEL_44;
  }

  v16 = v15;
  v17 = CFGetTypeID(v15);
  if (v17 != CFDataGetTypeID())
  {
    FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_2(&v64);
    goto LABEL_44;
  }

  v18 = CFDictionaryGetValue(v14, @"lhvC");
  if (!v18)
  {
    FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_13(&v64);
    goto LABEL_44;
  }

  v19 = v18;
  codecType = MediaSubType;
  v20 = CFGetTypeID(v18);
  if (v20 != CFDataGetTypeID())
  {
    FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_3(&v64);
    goto LABEL_44;
  }

  formatDescriptionOut = a4;
  v21 = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v12);
  if (!MutableCopy)
  {
    FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_12(&v64);
    goto LABEL_44;
  }

  v23 = MutableCopy;
  v24 = CFDictionaryCreateMutableCopy(v21, 0, v14);
  if (!v24)
  {
    FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_11();
    goto LABEL_44;
  }

  v30 = v24;
  FigCFArrayGetInt16AtIndex(theArray, 0, &v54 + 2, v25, v26, v27, v28, v29);
  FigCFArrayGetInt16AtIndex(a3, 0, &v54, v31, v32, v33, v34, v35);
  if (hevcbridge_isSelectedLayerIdInConfigRecord(v16, SHIWORD(v54)))
  {
    updated = FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord(v16, 0, theArray, a3, &theData);
    v37 = 0;
    if (updated)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v64 = 0;
  v65 = 0;
  v66[0] = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v52 = 0;
  v53 = 0;
  HEVCParameterSetAtIndex = hevcbridge_getHEVCParameterSetAtIndex(v16, 1, 32, 0, &v64, &v61, &v58, &v53, 0, 0);
  if (HEVCParameterSetAtIndex)
  {
    goto LABEL_46;
  }

  if (v58 != 1)
  {
    FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_4(&v57);
LABEL_62:
    v37 = 0;
LABEL_63:
    v48 = v57;
    goto LABEL_36;
  }

  HEVCParameterSetAtIndex = hevcbridge_getHEVCParameterSetWithNuhLayerID(v19, 33, HIWORD(v54), &v65, &v62, &v59, &v52);
  if (HEVCParameterSetAtIndex)
  {
LABEL_46:
    v48 = HEVCParameterSetAtIndex;
    v37 = 0;
    goto LABEL_36;
  }

  if (v59 != 1)
  {
    FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_5(&v57);
    goto LABEL_62;
  }

  if (v53 != v52)
  {
    FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_6(&v57);
    goto LABEL_62;
  }

  HEVCParameterSetAtIndex = hevcbridge_getHEVCParameterSetWithNuhLayerID(v19, 34, HIWORD(v54), v66, &v63, &v60, &v52);
  if (HEVCParameterSetAtIndex)
  {
    goto LABEL_46;
  }

  if (v60 != 1)
  {
    FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_7(&v57);
    goto LABEL_62;
  }

  if (v53 != v52)
  {
    FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_8(&v57);
    goto LABEL_62;
  }

  HEVCParameterSetAtIndex = FigHEVCBridge_CreateUpdatedHVCCWithAdditionalHEVCParameterSets(HEVCParameterSetAtIndex, 0, 3uLL, &v64, &v61, v53, 0, 0, &theData);
  if (HEVCParameterSetAtIndex)
  {
    goto LABEL_46;
  }

  v39 = CFDataCreateMutableCopy(v21, 0, theData);
  v37 = v39;
  if (!v39)
  {
    FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_10(&v57);
    goto LABEL_63;
  }

  updated = hevcbridge_updateConfigRecordNuhLayerID(v39, 0, v54);
  if (updated)
  {
LABEL_35:
    v48 = updated;
    goto LABEL_36;
  }

  v40 = theData;
  theData = v37;
  CFRetain(v37);
  if (v40)
  {
    CFRelease(v40);
  }

LABEL_30:
  updated = FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord(v19, 1, theArray, a3, &cf);
  if (updated)
  {
    goto LABEL_35;
  }

  v41 = cf;
  if (cf)
  {
    v42 = CFGetTypeID(cf);
    if (v42 == CFDataGetTypeID())
    {
      CFDictionarySetValue(v30, @"hvcC", theData);
      CFDictionarySetValue(v30, @"lhvC", v41);
      updated = hevcbridge_updateFormatDescriptionExtensionsFromHVCC(theData, v23);
      if (!updated)
      {
        CFDictionarySetValue(v23, @"SampleDescriptionExtensionAtoms", v30);
        CFDictionaryRemoveValue(v23, @"VerbatimSampleDescription");
        CFDictionaryRemoveValue(v23, @"VerbatimISOSampleEntry");
        CFDictionaryRemoveValue(v23, @"ContainsAlphaChannel");
        FigCFDictionarySetInt32(v23, @"Depth", 24, v43, v44, v45, v46, v47);
        updated = CMVideoFormatDescriptionCreate(v21, codecType, Dimensions.width, Dimensions.height, v23, formatDescriptionOut);
      }

      goto LABEL_35;
    }
  }

  FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_9(&v64);
  v48 = v64;
LABEL_36:
  CFRelease(v23);
  CFRelease(v30);
  if (theData)
  {
    CFRelease(theData);
  }

LABEL_38:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  return v48;
}

uint64_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerNALUnitsToBuffer(OpaqueCMBlockBuffer *a1, unsigned int a2, void *a3, uint64_t a4, size_t a5)
{
  v10 = *MEMORY[0x1E695E480];
  cf = FigCFNumberCreateUInt32(*MEMORY[0x1E695E480], a2);
  if (!cf)
  {
    FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerNALUnitsToBuffer_cold_4(&v16);
    v11 = 0;
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  v11 = CFArrayCreate(v10, &cf, 1, MEMORY[0x1E695E9C0]);
  if (!v11)
  {
    FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerNALUnitsToBuffer_cold_3(&v16);
    goto LABEL_21;
  }

  if (!a2)
  {
    v12 = 0;
    goto LABEL_10;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  cf = FigCFNumberCreateUInt32(v10, 0);
  if (!cf)
  {
    FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerNALUnitsToBuffer_cold_2(&v16);
    goto LABEL_21;
  }

  v12 = CFArrayCreate(v10, &cf, 1, MEMORY[0x1E695E9C0]);
  if (v12)
  {
LABEL_10:
    v13 = FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer(a1, v11, v12, a3, a4, a5);
    goto LABEL_11;
  }

  FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerNALUnitsToBuffer_cold_1(&v16);
LABEL_22:
  v13 = v16;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

uint64_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer(OpaqueCMBlockBuffer *a1, CFArrayRef theArray, const __CFArray *a3, void *a4, uint64_t a5, size_t a6)
{
  if (!a1)
  {
    FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_6(&v34);
    return v34;
  }

  if (!theArray || CFArrayGetCount(theArray) <= 0)
  {
    FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_5(&v34);
    return v34;
  }

  if (a3)
  {
    Count = CFArrayGetCount(a3);
    if (Count != CFArrayGetCount(theArray))
    {
      FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_1(&v34);
      return v34;
    }
  }

  v29 = a4;
  DataLength = CMBlockBufferGetDataLength(a1);
  if (DataLength)
  {
    v31 = a3;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      if (v14 + 6 > DataLength)
      {
        FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_3(&v34);
        return v34;
      }

      destination = 0;
      v32 = 0;
      result = CMBlockBufferCopyDataBytes(a1, v14, 4uLL, &destination);
      if (result)
      {
        return result;
      }

      v16 = bswap32(destination);
      if (v16 < 2 || v14 + 4 + v16 > DataLength)
      {
        break;
      }

      result = CMBlockBufferCopyDataBytes(a1, v14 + 4, 2uLL, &v32);
      if (result)
      {
        return result;
      }

      v17 = bswap32(v32);
      v18 = v17 >> 16;
      if (v17 >> 16 < 0)
      {
        break;
      }

      v19 = (v17 >> 19) & 0x3F;
      v20 = v16 + 4;
      if (FigCFArrayContainsInt32(theArray, v19))
      {
        v21 = v13 + v20;
        if (a5)
        {
          if (v21 > a6)
          {
            break;
          }

          v22 = (a5 + v13);
          result = CMBlockBufferCopyDataBytes(a1, v14, v20, v22);
          if (result)
          {
            return result;
          }

          v34 = 0;
          if (v31)
          {
            FirstIndexOfInt32 = FigCFArrayGetFirstIndexOfInt32(theArray, v19);
            if (FirstIndexOfInt32 != -1)
            {
              FigCFArrayGetInt32AtIndex(v31, FirstIndexOfInt32, &v34, v24, v25, v26, v27, v28);
              v19 = v34;
            }
          }

          v22[2] = bswap32(v18 & 0x7E07 | (8 * v19)) >> 16;
        }
      }

      else
      {
        v21 = v13;
      }

      v14 += v20;
      v13 = v21;
      if (v14 >= DataLength)
      {
        goto LABEL_26;
      }
    }

    FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_2();
    return v34;
  }

  v14 = 0;
  v21 = 0;
LABEL_26:
  if (v14 != DataLength)
  {
    FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_4(&v34);
    return v34;
  }

  result = 0;
  if (v29)
  {
    *v29 = v21;
  }

  return result;
}

size_t FigHEVCBridge_CreateAlphaInfoSEI(int a1, int a2, int a3, CFDataRef *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = 0;
  *bytes = 0;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  if (a4)
  {
    v16[0] = bytes;
    v16[1] = 9;
    *&v19 = bytes;
    hevcbridgeUPush(v16, 1, 0, 0);
    hevcbridgeUPush(v16, 6, 39, 0);
    hevcbridgeUPush(v16, 6, 0, 0);
    hevcbridgeUPush(v16, 3, 1, 0);
    hevcbridgeUPush(v16, 8, 165, 0);
    hevcbridgeUPush(v16, 8, 4, 0);
    hevcbridgeUPush(v16, 1, 0, 0);
    hevcbridgeUPush(v16, 3, a1 != 0, 0);
    hevcbridgeUPush(v16, 3, 0, 0);
    hevcbridgeUPush(v16, 9, a2, 0);
    hevcbridgeUPush(v16, 9, a3, 0);
    hevcbridgeUPush(v16, 1, 0, 0);
    hevcbridgeUPush(v16, 1, 0, 0);
    if (HIDWORD(v20))
    {
      FigHEVCBridge_CreateAlphaInfoSEI_cold_1(v16);
    }

    v24 = 0x80;
    v9 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 9);
    if (v9)
    {
      v10 = v9;
      result = 0;
      *a4 = v10;
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2D42, v4, v13, v14);
    }
  }

  else
  {
    FigHEVCBridge_CreateAlphaInfoSEI_cold_2(&v15);
    return v15;
  }

  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC(const void *a1, const void *a2, int a3, const __CFData *a4, int a5, __CFData **a6)
{
  cf = 0;
  v66 = 0;
  if (!a1 || (v11 = CFGetTypeID(a1), v11 != CFDataGetTypeID()))
  {
    FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_18(newBytes);
LABEL_84:
    v15 = *newBytes;
    goto LABEL_74;
  }

  if (!a2)
  {
    v14 = 0;
    v51 = 0;
    goto LABEL_10;
  }

  v12 = CFGetTypeID(a2);
  if (v12 != CFDataGetTypeID())
  {
    FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_1(newBytes);
    goto LABEL_84;
  }

  v13 = hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC(a2, a3, a5, &v66, &cf);
  v14 = v66;
  if (v13)
  {
    v15 = v13;
    goto LABEL_72;
  }

  if (!v66)
  {
    FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_3(newBytes);
    goto LABEL_84;
  }

  v51 = cf;
  if (!cf)
  {
    FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_2(newBytes);
    v15 = *newBytes;
    goto LABEL_73;
  }

LABEL_10:
  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  if (!MutableCopy)
  {
    FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_17(newBytes);
    v15 = *newBytes;
    goto LABEL_72;
  }

  v17 = MutableCopy;
  v50 = a6;
  v52 = v14;
  Length = CFDataGetLength(MutableCopy);
  MutableBytePtr = CFDataGetMutableBytePtr(v17);
  if (MutableBytePtr)
  {
    v20 = Length <= 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_16(newBytes);
    goto LABEL_70;
  }

  v21 = MutableBytePtr;
  v22 = *MutableBytePtr;
  if (a3)
  {
    if (Length <= 5)
    {
      FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_5(newBytes);
      goto LABEL_70;
    }

    if (v22 != 1)
    {
      FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_4(newBytes);
      goto LABEL_70;
    }

    v23 = 5;
  }

  else
  {
    if (Length <= 0x16)
    {
      FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_15(newBytes);
      goto LABEL_70;
    }

    if (v22 != 1)
    {
      FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_6(newBytes);
      goto LABEL_70;
    }

    v23 = 22;
  }

  v24 = v23 + 1;
  v53 = MutableBytePtr[v23];
  v49 = v23;
  if (!MutableBytePtr[v23])
  {
    v42 = 0;
    v44 = 1;
    v43 = 1;
    goto LABEL_59;
  }

  range_12 = 0;
  v61 = 0;
  v55 = 0;
  v25 = 0;
  do
  {
    if (Length < v24 + 3)
    {
      FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_12(newBytes);
LABEL_70:
      v15 = *newBytes;
      v14 = v52;
      goto LABEL_71;
    }

    v54 = v25;
    range = v24 + 1;
    v26 = __rev16(*&v21[v24 + 1]);
    if (v26)
    {
      v27 = 0;
      v28 = v21[v24] & 0x3F;
      if (a4)
      {
        v29 = v28 == 39;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;
      v57 = v30;
      v58 = v26;
      if (v28 == 34)
      {
        v31 = v51;
      }

      else
      {
        v31 = v52;
      }

      v24 += 3;
      while (1)
      {
        v32 = v24 + 2;
        if (Length < v24 + 2)
        {
          FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_11(newBytes);
          goto LABEL_70;
        }

        v33 = __rev16(*&v21[v24]);
        v24 = v32 + v33;
        if (Length < v32 + v33)
        {
          FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_10(newBytes);
          goto LABEL_70;
        }

        if (v33 <= 1)
        {
          FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_9(newBytes);
          goto LABEL_70;
        }

        v34 = v21[v32];
        if (v34 < 0)
        {
          FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_8(newBytes);
          goto LABEL_70;
        }

        if (v28 != v34 >> 1)
        {
          FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_7(newBytes);
          goto LABEL_70;
        }

        if (v26 == 1)
        {
          if ((v28 - 33) < 2)
          {
            if (v28 == 34)
            {
              v35 = 1;
            }

            else
            {
              v35 = v61;
            }

            v36 = range_12;
            if (v28 != 34)
            {
              v36 = 1;
            }

            range_12 = v36;
            v61 = v35;
            v37 = v31;
            if (!v31)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          }

          if (v57)
          {
            v55 = 1;
            v37 = a4;
LABEL_52:
            v38 = CFDataGetLength(v37);
            v39 = v38;
            *newBytes = bswap32(v38) >> 16;
            v68.location = v24;
            v68.length = 0;
            CFDataReplaceBytes(v17, v68, newBytes, 2);
            v40 = v24 + 2;
            BytePtr = CFDataGetBytePtr(v37);
            v69.location = v40;
            v69.length = 0;
            CFDataReplaceBytes(v17, v69, BytePtr, v39);
            v24 = v40 + v39;
            *v64 = bswap32(++v27 + v58) >> 16;
            v70.location = range;
            v70.length = 2;
            CFDataReplaceBytes(v17, v70, v64, 2);
            v21 = CFDataGetMutableBytePtr(v17);
            Length = CFDataGetLength(v17);
          }
        }

LABEL_53:
        if (!--v26)
        {
          goto LABEL_56;
        }
      }
    }

    v24 += 3;
LABEL_56:
    v25 = v54 + 1;
  }

  while (v54 + 1 != v53);
  v42 = v55 != 0;
  v43 = range_12 == 0;
  v44 = v61 == 0;
LABEL_59:
  v63 = v53;
  v14 = v52;
  if (a4 && !v42)
  {
    v63 = v53 + 1;
    v71.location = v49;
    v71.length = 1;
    CFDataReplaceBytes(v17, v71, &v63, 1);
    v62 = 39;
    v72.location = v24;
    v72.length = 0;
    CFDataReplaceBytes(v17, v72, &v62, 1);
    *newBytes = 256;
    v73.location = v24 + 1;
    v73.length = 0;
    CFDataReplaceBytes(v17, v73, newBytes, 2);
    v45 = CFDataGetLength(a4);
    v46 = v45;
    *v64 = bswap32(v45) >> 16;
    v74.location = v24 + 3;
    v74.length = 0;
    CFDataReplaceBytes(v17, v74, v64, 2);
    v47 = CFDataGetBytePtr(a4);
    v75.location = v24 + 5;
    v75.length = 0;
    CFDataReplaceBytes(v17, v75, v47, v46);
  }

  if (v43)
  {
    FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_14(newBytes);
  }

  else
  {
    if (!v44)
    {
      v15 = 0;
      *v50 = v17;
      goto LABEL_72;
    }

    FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_13(newBytes);
  }

  v15 = *newBytes;
LABEL_71:
  CFRelease(v17);
LABEL_72:
  if (v14)
  {
LABEL_73:
    CFRelease(v14);
  }

LABEL_74:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

size_t hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC(const void *a1, int a2, int a3, __CFData **a4, __CFData **a5)
{
  if (!a1 || (v11 = CFGetTypeID(a1), v11 != CFDataGetTypeID()))
  {
    hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_7(&v40);
    return v40;
  }

  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  if (!BytePtr || Length <= 0)
  {
    hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_6(&v40);
    return v40;
  }

  v14 = BytePtr;
  v15 = *BytePtr;
  v36 = a5;
  v37 = a4;
  if (a2)
  {
    if (Length <= 5)
    {
      hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_5(&v40);
    }

    else
    {
      if (v15 == 1)
      {
        v16 = 5;
        goto LABEL_12;
      }

      hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_3(&v40);
    }

    return v40;
  }

  if (Length <= 0x16)
  {
    hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_2(&v40);
    return v40;
  }

  if (v15 != 1)
  {
    hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_1(&v40);
    return v40;
  }

  v16 = 22;
LABEL_12:
  v38 = BytePtr[v16];
  if (BytePtr[v16])
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = v16 + 1;
    while (1)
    {
      v21 = v20 + 3;
      if (Length < v20 + 3)
      {
        break;
      }

      v39 = v19;
      v22 = v14 + v20;
      v23 = __rev16(*(v22 + 1));
      if (v23)
      {
        v24 = *v22 & 0x3F;
        for (i = v23; i; --i)
        {
          v26 = v21 + 2;
          if (Length < v21 + 2)
          {
            v31 = 11361;
            goto LABEL_47;
          }

          v27 = v14 + v21;
          v28 = __rev16(*(v14 + v21));
          v21 = v26 + v28;
          if (Length < v26 + v28)
          {
            v31 = 11366;
            goto LABEL_47;
          }

          if (v28 < 2)
          {
            v31 = 11367;
            goto LABEL_47;
          }

          if (((*(v14 + v26) << 8) & 0x8000) != 0)
          {
            v31 = 11376;
            goto LABEL_47;
          }

          v29 = *(v27 + 3) | (*(v14 + v26) << 8);
          if (v24 != v29 >> 9)
          {
            v31 = 11377;
            goto LABEL_47;
          }

          if (!a2 && *(v27 + 3) & 0xF8 | (*(v14 + v26) << 8) & 0x1F8)
          {
            v31 = 11379;
            goto LABEL_47;
          }

          if (v24 == 34)
          {
            if (v23 != 1)
            {
              v31 = 11392;
              goto LABEL_47;
            }

            if (v18)
            {
              v31 = 11393;
              goto LABEL_47;
            }

            v18 = hevcbridge_copyPatchedParameterSet(v14, v26, v28, v29, a3);
          }

          else if (v24 == 33)
          {
            if (v23 != 1)
            {
              v31 = 11386;
              goto LABEL_47;
            }

            if (v17)
            {
              hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_4(&v40);
              v30 = v40;
              goto LABEL_48;
            }

            v17 = hevcbridge_copyPatchedParameterSet(v14, v26, v28, v29, a3);
          }
        }
      }

      v19 = v39 + 1;
      v20 = v21;
      if (v39 + 1 == v38)
      {
        goto LABEL_36;
      }
    }

    v31 = 11351;
LABEL_47:
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v30 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", v31, v5, v33, v34);
    if (v17)
    {
LABEL_48:
      CFRelease(v17);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
LABEL_36:
    v30 = 0;
    *v36 = v18;
    *v37 = v17;
  }

  return v30;
}

uint64_t hevcbridgeCreateLHVCFromHEVCParameterSets(CFDataRef theData, uint64_t a2, uint64_t a3, __CFData **a4)
{
  v7 = *MEMORY[0x1E695E480];
  if (!theData)
  {
    Mutable = CFDataCreateMutable(v7, 0);
    if (Mutable)
    {
      v9 = Mutable;
      *newBytes = -67047423;
      v46 = 707;
      CFDataAppendBytes(Mutable, newBytes, 6);
      v34 = 0;
      v35 = 1;
      do
      {
        v36 = v35;
        HIBYTE(range.length) = (**(a2 + 8 * v34) >> 1) & 0x3F | 0x80;
        WORD2(range.length) = 256;
        WORD1(range.length) = bswap32(*(a3 + 8 * v34)) >> 16;
        CFDataAppendBytes(v9, &range.length + 7, 1);
        CFDataAppendBytes(v9, &range.length + 4, 2);
        CFDataAppendBytes(v9, &range.length + 2, 2);
        CFDataAppendBytes(v9, *(a2 + 8 * v34), *(a3 + 8 * v34));
        v35 = 0;
        v34 = 1;
      }

      while ((v36 & 1) != 0);
      goto LABEL_29;
    }

    hevcbridgeCreateLHVCFromHEVCParameterSets_cold_11(newBytes);
    return *newBytes;
  }

  MutableCopy = CFDataCreateMutableCopy(v7, 0, theData);
  if (!MutableCopy)
  {
    hevcbridgeCreateLHVCFromHEVCParameterSets_cold_10(newBytes);
    return *newBytes;
  }

  v9 = MutableCopy;
  Length = CFDataGetLength(MutableCopy);
  if (Length <= 5)
  {
    hevcbridgeCreateLHVCFromHEVCParameterSets_cold_9(newBytes);
LABEL_35:
    v37 = *newBytes;
    CFRelease(v9);
    return v37;
  }

  v11 = Length;
  MutableBytePtr = CFDataGetMutableBytePtr(v9);
  if (!MutableBytePtr)
  {
    hevcbridgeCreateLHVCFromHEVCParameterSets_cold_8(newBytes);
    goto LABEL_35;
  }

  v13 = MutableBytePtr;
  if (*MutableBytePtr != 1)
  {
    hevcbridgeCreateLHVCFromHEVCParameterSets_cold_1(newBytes);
    goto LABEL_35;
  }

  v40 = MutableBytePtr[5];
  if (MutableBytePtr[5])
  {
    v39 = a4;
    v14 = 0;
    v15 = 6;
    v16 = a3;
    v17 = v11;
    while (1)
    {
      v18 = v15 + 3;
      if (v17 < v15 + 3)
      {
        hevcbridgeCreateLHVCFromHEVCParameterSets_cold_7(newBytes);
        goto LABEL_35;
      }

      v41 = v14;
      range.location = v15 + 1;
      v19 = __rev16(*&v13[v15 + 1]);
      if (v19)
      {
        break;
      }

LABEL_24:
      v14 = v41 + 1;
      v15 = v18;
      if (v41 + 1 == v40)
      {
        a4 = v39;
        goto LABEL_29;
      }
    }

    v20 = 0;
    v21 = 0;
    v22 = v13[v15] & 0x3F;
    while (1)
    {
      v23 = v18 + 2;
      if (v17 < v18 + 2)
      {
        hevcbridgeCreateLHVCFromHEVCParameterSets_cold_6(newBytes);
        goto LABEL_35;
      }

      v24 = __rev16(*&v13[v18]);
      v25 = v23 + v24;
      if (v17 < v23 + v24)
      {
        hevcbridgeCreateLHVCFromHEVCParameterSets_cold_5(newBytes);
        goto LABEL_35;
      }

      if (v24 <= 1)
      {
        hevcbridgeCreateLHVCFromHEVCParameterSets_cold_4(newBytes);
        goto LABEL_35;
      }

      v26 = v13[v23];
      if (v26 < 0)
      {
        hevcbridgeCreateLHVCFromHEVCParameterSets_cold_3(newBytes);
        goto LABEL_35;
      }

      if (v22 != v26 >> 1)
      {
        break;
      }

      v42 = v21 + 1;
      if (v21 + 1 == v19)
      {
        v27 = 0;
        v28 = 1;
        v18 = v25;
        do
        {
          v29 = v28;
          v30 = (**(a2 + 8 * v27) >> 1) & 0x3F;
          v31 = *(v16 + 8 * v27);
          *newBytes = bswap32(v31) >> 16;
          if (v22 == v30)
          {
            v32 = v31;
            v47.location = v25;
            v47.length = 0;
            CFDataReplaceBytes(v9, v47, newBytes, 2);
            v48.location = v25 + 2;
            v48.length = 0;
            CFDataReplaceBytes(v9, v48, *(a2 + 8 * v27), v32);
            v18 += v32 + 2;
            WORD2(range.length) = bswap32(++v20 + v19) >> 16;
            v49.location = range.location;
            v49.length = 2;
            CFDataReplaceBytes(v9, v49, &range.length + 4, 2);
            v13 = CFDataGetMutableBytePtr(v9);
            v17 = CFDataGetLength(v9);
            v16 = a3;
          }

          v28 = 0;
          v27 = 1;
        }

        while ((v29 & 1) != 0);
      }

      else
      {
        v18 = v25;
      }

      v21 = v42;
      if (v42 == v19)
      {
        goto LABEL_24;
      }
    }

    hevcbridgeCreateLHVCFromHEVCParameterSets_cold_2(newBytes);
    goto LABEL_35;
  }

LABEL_29:
  v37 = 0;
  *a4 = v9;
  return v37;
}

size_t FigHEVCBridge_CreateMuxedAlphaDataBuffer(OpaqueCMBlockBuffer *a1, OpaqueCMBlockBuffer *a2, CMBlockBufferRef *a3)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v13 = Mutable;
    appended = FigCFArrayAppendInt32(Mutable, 1, v7, v8, v9, v10, v11, v12);
    if (!appended)
    {
      appended = FigHEVCBridge_CreateMultiviewMuxedAlphaDataBuffer(a1, a2, 0, v13, a3);
    }

    v15 = appended;
    CFRelease(v13);
  }

  else
  {
    FigHEVCBridge_CreateMuxedAlphaDataBuffer_cold_1(&v17);
    return v17;
  }

  return v15;
}

size_t FigHEVCBridge_CreateMultiviewMuxedAlphaDataBuffer(OpaqueCMBlockBuffer *a1, OpaqueCMBlockBuffer *a2, const void *a3, const void *a4, CMBlockBufferRef *a5)
{
  DataLength = CMBlockBufferGetDataLength(a1);
  v11 = CMBlockBufferGetDataLength(a2);
  dataPointerOut = 0;
  theBuffer = 0;
  if (a4 && (v12 = v11, (CFArrayGetCount(a4) - 3) > 0xFFFFFFFFFFFFFFFDLL))
  {
    DataPointer = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, v12 + DataLength, *MEMORY[0x1E695E480], 0, 0, v12 + DataLength, 1u, &theBuffer);
    if (DataPointer || (DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut), DataPointer) || (DataPointer = CMBlockBufferCopyDataBytes(a1, 0, DataLength, dataPointerOut), DataPointer) || a3 && (DataPointer = hevcbridge_updateNuhLayerIDs(dataPointerOut, DataLength, a3, v14, v15, v16, v17, v18), DataPointer) || (DataPointer = CMBlockBufferCopyDataBytes(a2, 0, v12, &dataPointerOut[DataLength]), DataPointer))
    {
      updated = DataPointer;
    }

    else
    {
      updated = hevcbridge_updateNuhLayerIDs(&dataPointerOut[DataLength], v12, a4, v19, v20, v21, v22, v23);
      if (!updated)
      {
        *a5 = theBuffer;
        return updated;
      }
    }
  }

  else
  {
    FigHEVCBridge_CreateMultiviewMuxedAlphaDataBuffer_cold_1();
    updated = 0;
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return updated;
}

void FigHEVCBridge_HLSfMP4ParsingInfoDestroy(void **a1)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = 0;
      do
      {
        free(a1[++v2]);
      }

      while (v2 < *a1);
    }

    free(a1);
  }
}

size_t FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData(const void *a1, const void *a2, char a3, void ***a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  if (!a1 || (v9 = CFGetTypeID(a1), v9 != CFDataGetTypeID()))
  {
    FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_7(v40);
    goto LABEL_53;
  }

  if (a2)
  {
    v10 = CFGetTypeID(a2);
    if (v10 != CFDataGetTypeID())
    {
      FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_1(v40);
      goto LABEL_53;
    }
  }

  if (!a4)
  {
    FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_6(v40);
    goto LABEL_53;
  }

  HEVCParameterSetAtIndex = hevcbridge_getHEVCParameterSetAtIndex(a1, 1, 32, 0, 0, 0, &v46, 0, 0, 0);
  if (!HEVCParameterSetAtIndex)
  {
    HEVCParameterSetAtIndex = hevcbridge_getHEVCParameterSetAtIndex(a1, 1, 33, 0, 0, 0, &v45, 0, 0, 0);
    if (!HEVCParameterSetAtIndex)
    {
      HEVCParameterSetAtIndex = hevcbridge_getHEVCParameterSetAtIndex(a1, 1, 34, 0, 0, 0, &v44, 0, 0, 0);
      if (!HEVCParameterSetAtIndex)
      {
        v12 = v46;
        if (!v46)
        {
          FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_5(v40);
          goto LABEL_53;
        }

        v13 = v45;
        if (!v45)
        {
          FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_4(v40);
          goto LABEL_53;
        }

        v14 = v44;
        if (!v44)
        {
          FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_3(v40);
          goto LABEL_53;
        }

        if (!a2)
        {
          v16 = 0;
          v15 = 0;
          goto LABEL_17;
        }

        HEVCParameterSetAtIndex = hevcbridge_getHEVCParameterSetAtIndex(a2, 0, 33, 0, 0, 0, &v43, 0, 0, 0);
        if (!HEVCParameterSetAtIndex)
        {
          HEVCParameterSetAtIndex = hevcbridge_getHEVCParameterSetAtIndex(a2, 0, 34, 0, 0, 0, &v42, 0, 0, 0);
          if (!HEVCParameterSetAtIndex)
          {
            v13 = v45;
            v12 = v46;
            v15 = v43;
            v14 = v44;
            v16 = v42;
LABEL_17:
            v17 = v13 + v12 + v14 + v15 + v16;
            if (v17 >= 0x1FFFFFFFFFFFFFFFLL)
            {
              emitter = fig_log_get_emitter("com.apple.coremedia", "");
              v21 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x30D6, v4, v19, v20);
              goto LABEL_19;
            }

            v23 = malloc_type_calloc(1uLL, 8 * v17 + 8, 0x2000F69FuLL);
            if (v23)
            {
              v22 = v23;
              v24 = v46;
              v25 = v45 + v46;
              v26 = v45 + v46 + v44;
              v27 = v26 + v43;
              if (!(v26 + v43 + v42))
              {
LABEL_42:
                v21 = 0;
                *a4 = v22;
                return v21;
              }

              v28 = 0;
              v29 = (v23 + 1);
              while (1)
              {
                v53 = 0;
                v51 = 0u;
                v52 = 0u;
                v49 = 0u;
                v50 = 0u;
                v47 = 0u;
                v48 = 0u;
                v41 = 0u;
                memset(v40, 0, sizeof(v40));
                v38 = 0;
                v39 = 0;
                v30 = v28 - v24;
                if (v28 < v24)
                {
                  v31 = hevcbridge_getHEVCParameterSetAtIndex(a1, 1, 32, v28, &v39, &v38, 0, 0, 0, 0);
                  goto LABEL_36;
                }

                v32 = v28 - v25;
                if (v28 >= v25)
                {
                  v30 = v28 - v26;
                  if (v28 < v26)
                  {
                    v33 = a1;
                    v34 = 1;
LABEL_34:
                    v35 = 34;
                    v30 = v32;
                    goto LABEL_35;
                  }

                  v32 = v28 - v27;
                  if (v28 >= v27)
                  {
                    v33 = a2;
                    v34 = 0;
                    goto LABEL_34;
                  }

                  v33 = a2;
                  v34 = 0;
                }

                else
                {
                  v33 = a1;
                  v34 = 1;
                }

                v35 = 33;
LABEL_35:
                v31 = hevcbridge_getHEVCParameterSetAtIndex(v33, v34, v35, v30, &v39, &v38, 0, 0, 0, 0);
LABEL_36:
                v21 = v31;
                if (v31)
                {
                  goto LABEL_20;
                }

                *&v47 = v39;
                *(&v47 + 1) = v38;
                *&v48 = 0;
                *(&v48 + 1) = v39 + v38;
                WORD4(v49) = 1;
                *&v50 = v39;
                *(&v50 + 1) = v39;
                v51 = 0uLL;
                *(&v52 + 1) = 0;
                LODWORD(v53) = 0;
                v36 = hevcbridgeAdvanceInBitstream(&v47, 0);
                if (v36 || (*&v41 = &v29[8 * *v22], BYTE8(v41) = a3, v36 = hevcbridgeParseNALUnit(&v47, v40), v36))
                {
                  v21 = v36;
                  goto LABEL_20;
                }

                if (*&v29[8 * *v22])
                {
                  *v22 = *v22 + 1;
                }

                ++v28;
                v24 = v46;
                v25 = v45 + v46;
                v26 = v45 + v46 + v44;
                v27 = v26 + v43;
                if (v28 >= v26 + v43 + v42)
                {
                  goto LABEL_42;
                }
              }
            }

            FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_2(v40);
LABEL_53:
            v21 = LODWORD(v40[0]);
LABEL_19:
            v22 = 0;
            if (v21)
            {
              goto LABEL_20;
            }

            goto LABEL_42;
          }
        }
      }
    }
  }

  v21 = HEVCParameterSetAtIndex;
  v22 = 0;
LABEL_20:
  FigHEVCBridge_HLSfMP4ParsingInfoDestroy(v22);
  return v21;
}