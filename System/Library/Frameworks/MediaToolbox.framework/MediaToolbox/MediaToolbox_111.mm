void FigSharedRemote_GetCacheFileSize(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  if (v20 && (v21 = v19) != 0)
  {
    v22 = v18;
    if (qword_1ED4CA8A8 != -1)
    {
      dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
    }

    if (!dword_1ED4CA894)
    {
      fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v22);
      OUTLINED_FUNCTION_40_7();
      if (!v23 && !OUTLINED_FUNCTION_31_10())
      {
        xpc_dictionary_set_BOOL(0, "IsFigSharedMessage", 1);
        if (!FigXPCMessageSetCFString() && !FigXPCMessageSetCFString())
        {
          OUTLINED_FUNCTION_5_44();
          if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
          {
            *v21 = xpc_dictionary_get_int64(0, "UsedFileSize");
          }
        }
      }
    }
  }

  else
  {
    FigSignalErrorAtGM();
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_652();
}

void FigSharedRemote_CopyCacheProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  if (v21 && v20 && v19)
  {
    v22 = v18;
    if (qword_1ED4CA8A8 != -1)
    {
      dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
    }

    if (!dword_1ED4CA894 && fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v22) != -17508 && !OUTLINED_FUNCTION_31_10())
    {
      xpc_dictionary_set_BOOL(0, "IsFigSharedMessage", 1);
      if (!FigXPCMessageSetCFString() && !FigXPCMessageSetCFString() && !FigXPCMessageSetCFString())
      {
        OUTLINED_FUNCTION_5_44();
        if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
        {
          FigXPCMessageCopyCFObject();
        }
      }
    }
  }

  else
  {
    FigSignalErrorAtGM();
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_26_13();
  OUTLINED_FUNCTION_652();
}

void FigSharedRemote_MakeRoomInDiskCache(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  if (qword_1ED4CA8A8 != -1)
  {
    dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
  }

  if (!dword_1ED4CA894 && fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v23) != -17508 && !FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_BOOL(0, "IsFigSharedMessage", 1);
    if (!FigXPCMessageSetCFString())
    {
      xpc_dictionary_set_BOOL(0, "AllAvailable", v21 != 0);
      OUTLINED_FUNCTION_5_44();
      v24 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (v19)
      {
        if (!v24)
        {
          *v19 = xpc_dictionary_get_int64(0, "BytesMadeAvailable");
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_26_13();
  OUTLINED_FUNCTION_652();
}

void FigSharedRemote_GetRentalInfo(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_845();
  if (!v21 || (v25 = v22) == 0 || (v26 = v23) == 0 || (v27 = v24) == 0)
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM();
LABEL_17:
    v30 = 0;
    goto LABEL_13;
  }

  v28 = v21;
  v29 = v20;
  if (qword_1ED4CA8A8 != -1)
  {
    dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
  }

  if (dword_1ED4CA894 || FigXPCCreateBasicMessage())
  {
    goto LABEL_17;
  }

  xpc_dictionary_set_BOOL(0, "IsFigSharedMessage", 1);
  v30 = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x1E695E480], v29);
  if (v30)
  {
    if (!FigXPCMessageSetCFString())
    {
      OUTLINED_FUNCTION_5_44();
      if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        *v28 = xpc_dictionary_get_uint64(0, "RentalStartTime");
        *v25 = xpc_dictionary_get_uint64(0, "RentalDuration");
        *v26 = xpc_dictionary_get_uint64(0, "PlaybackStartTime");
        *v27 = xpc_dictionary_get_uint64(0, "PlaybackDuration");
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM();
  }

LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  if (v30)
  {
    CFRelease(v30);
  }

  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_843();
}

void FigSharedRemote_CopyVideoCompressorSupportedPropertyDictionary(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_845();
  if (v23)
  {
    v24 = v22;
    v25 = v21;
    v26 = v20;
    if (qword_1ED4CA8A8 != -1)
    {
      dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
    }

    if (!dword_1ED4CA894 && !FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_BOOL(0, "IsFigSharedMessage", 1);
      if (!FigXPCMessageSetCFDictionary())
      {
        xpc_dictionary_set_uint64(0, "VideoCodecType", v26);
        xpc_dictionary_set_int64(0, "Width", v25);
        xpc_dictionary_set_int64(0, "Height", v24);
        OUTLINED_FUNCTION_5_44();
        if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
        {
          FigXPCMessageCopyCFDictionary();
        }
      }
    }
  }

  else
  {
    FigSignalErrorAtGM();
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_843();
}

uint64_t remoteXPCPlayerClient_MessageHandler(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_187();
    result = FigXPCMessageGetOpCode();
    if (!result)
    {
      if (FigXPCPlaybackCoordinatorServerHandlesMessagesForObject(v2))
      {
        return FigXPCPlaybackCoordinatorClientHandleMessage(v2, v1);
      }

      else
      {
        return 4294951138;
      }
    }
  }

  return result;
}

uint64_t remoteXPCPlayer_connectVideoLayerToPlaybackItem(const void *a1, const void *a2, int a3, int a4, const __CFArray *a5, const void *a6, char *a7, int *a8, const void *a9)
{
  v14 = a9;
  v15 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v34 = 0;
  if (!a9)
  {
    v18 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf);
    if (v18)
    {
      v23 = v18;
      v20 = 0;
      goto LABEL_39;
    }

    v14 = cf;
  }

  if (a7)
  {
    *a7 = 0;
  }

  FigSimpleMutexLock();
  v19 = remoteXPCPlayer_copySyncItem(a1);
  FigSimpleMutexUnlock();
  v29 = a6;
  if (v19 == a2 || !v19)
  {
    if (!v19)
    {
      goto LABEL_11;
    }
  }

  else
  {
    remoteXPCItem_updateLayerSync(v19, 0, v14);
  }

  CFRelease(v19);
LABEL_11:
  remoteXPCItem_updateLayerSync(a2, 1, v14);
  v20 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  FigSimpleMutexLock();
  v21 = DerivedStorage[10];
  DerivedStorage[10] = v20;
  if (v20)
  {
    CFRetain(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  FigSimpleMutexUnlock();
  *(v17 + 259) = 1;
  FigReadWriteLockLockForRead();
  v22 = DerivedStorage[8];
  if (v22)
  {
    v23 = CFArrayGetCount(v22) > 0;
  }

  else
  {
    v23 = 0;
  }

  FigReadWriteLockUnlockForRead();
  if (FigUseVideoReceiverForCALayer())
  {
    v23 = 0;
    goto LABEL_39;
  }

  if (!v23)
  {
    FPSupport_AppendDeferredTransactionPostCommitChangeToReleasePlayerResourcesOnQueue(v14, a1, DerivedStorage[17]);
    goto LABEL_39;
  }

  if (a5)
  {
    v23 = 0;
LABEL_23:
    if (CFArrayGetCount(a5) >= 1)
    {
      if (a3)
      {
        remoteXPCPlayer_connectImageQueueToVideoLayerArray(a1, a2, a5, v29, v14);
        v24 = 2;
      }

      else
      {
        v24 = 3;
      }

      goto LABEL_26;
    }

    goto LABEL_33;
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject(a2);
  v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v27)
  {
    v23 = 4294954514;
    goto LABEL_33;
  }

  v23 = v27(FigBaseObject, @"VideoSlotArray", *MEMORY[0x1E695E480], &v34);
  a5 = v34;
  if (v34)
  {
    goto LABEL_23;
  }

LABEL_33:
  if (a4)
  {
    remoteXPCPlayer_connectImageQueueToVideoLayerArray(a1, a2, 0, v29, v14);
    v24 = 4;
LABEL_26:
    if (!a7)
    {
      remoteXPCItem_handleFirstFrameNotificationLatch(a2, v24, v14);
      goto LABEL_39;
    }

    v25 = 1;
    goto LABEL_36;
  }

  if (!a7)
  {
    goto LABEL_39;
  }

  v25 = 0;
  v24 = 3;
LABEL_36:
  *a7 = v25;
  if (a8)
  {
    *a8 = v24;
  }

LABEL_39:
  FigDeferredTransactionCommit(cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  objc_autoreleasePoolPop(v15);
  return v23;
}

void remoteXPCPlayer_updateAirPlayScrubbingHostVideoTarget(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, CFBooleanRef BOOLean, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_845();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  cf = 0;
  BOOLean = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = CFGetAllocator(v23);
  FigBaseObject = FigPlayerGetFigBaseObject(v23);
  v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v28 = v27 && (v27(FigBaseObject, @"IsAirPlayVideoActive", v25, &BOOLean), BOOLean) && CFBooleanGetValue(BOOLean) != 0;
  FigReadWriteLockLockForWrite();
  v29 = *(DerivedStorage + 304);
  if (v29 && ((Count = CFArrayGetCount(v29), Count > 0) ? (v31 = v28) : (v31 = 0), v31))
  {
    v32 = Count;
    v33 = CFGetAllocator(v23);
    v34 = FigPlayerGetFigBaseObject(v23);
    v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v35)
    {
      if (!v35(v34, @"AirPlayVideoScrubbingCAContextID", v33, &cf))
      {
        v36 = *(DerivedStorage + 312);
        if (!v36 || (v37 = cf, v38 = FigVideoTargetGetCMBaseObject(v36), (v39 = *(*(CMBaseObjectGetVTable() + 8) + 56)) == 0) || v39(v38, @"AirPlayVideoScrubbingContextID", v37))
        {
          remoteXPCPlayer_removeAirPlayScrubbingVideoTarget();
          v40 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 304), v40);
            v42 = cf;
            CMBaseObject = FigVideoTargetGetCMBaseObject(ValueAtIndex);
            v44 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v44)
            {
              if (!v44(CMBaseObject, @"AirPlayVideoScrubbingContextID", v42))
              {
                break;
              }
            }

            if (v32 == ++v40)
            {
              goto LABEL_19;
            }
          }

          *(DerivedStorage + 312) = CFRetain(ValueAtIndex);
        }
      }
    }
  }

  else
  {
LABEL_19:
    remoteXPCPlayer_removeAirPlayScrubbingVideoTarget();
  }

  FigReadWriteLockUnlockForWrite();
  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_843();
}

uint64_t remoteXPCPlayer_copySyncItem(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 9) || !*(DerivedStorage + 80))
  {
    return 0;
  }

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

void remoteXPCItem_updateLayerSync(uint64_t a1, int a2, CFTypeRef a3)
{
  v50 = *MEMORY[0x1E69E9840];
  cf = 0;
  v41 = 0;
  v6 = objc_autoreleasePoolPush();
  if (!a1)
  {
    a3 = 0;
    v7 = 0;
    goto LABEL_60;
  }

  v7 = remoteXPCItem_copyOwningPlayer();
  if (!v7)
  {
LABEL_59:
    a3 = 0;
    goto LABEL_60;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 9))
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM();
    goto LABEL_59;
  }

  v10 = v9;
  if (a3 || (v11 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf), a3 = cf, !v11))
  {
    if (FigUseVideoReceiverForCALayer())
    {
      FigReadWriteLockLockForRead();
      v12 = *(v10 + 304);
      if (v12)
      {
        v13 = CFRetain(v12);
        FigReadWriteLockUnlockForRead();
        if (v13)
        {
          Count = CFArrayGetCount(v13);
LABEL_15:
          v16 = 0;
          goto LABEL_16;
        }

LABEL_14:
        Count = 0;
        goto LABEL_15;
      }
    }

    else
    {
      FigReadWriteLockLockForRead();
      v15 = *(v10 + 64);
      if (v15)
      {
        v16 = CFRetain(v15);
        FigReadWriteLockUnlockForRead();
        if (v16)
        {
          Count = CFArrayGetCount(v16);
          v13 = 0;
        }

        else
        {
          v13 = 0;
          Count = 0;
        }

LABEL_16:
        FigSimpleMutexLock();
        v17 = *(DerivedStorage + 160);
        if (v17)
        {
          v18 = CFRetain(v17);
          FigSimpleMutexUnlock();
          if (v18)
          {
            v19 = CFArrayGetCount(v18);
            v39 = Count;
            v20 = a1;
            v21 = v18;
            v22 = a3;
            v23 = v7;
            v24 = a2;
            v25 = v13;
            v26 = v6;
            v27 = v16;
            v28 = v19;
            FigSimpleMutexLock();
            v29 = v28 <= 0;
            v16 = v27;
            v6 = v26;
            v13 = v25;
            a2 = v24;
            v7 = v23;
            a3 = v22;
            v30 = v21;
            a1 = v20;
            Count = v39;
            if (!v29)
            {
LABEL_25:
              v31 = (DerivedStorage + 152);
              if (*(DerivedStorage + 152) || !FigLayerSynchronizerCreate((DerivedStorage + 152)))
              {
                v32 = CFGetAllocator(v7);
                if (!FPSupport_CreateLayerSynchronizerConfiguration(v32, a2, v16, v13, v30, &v41))
                {
                  if (dword_1ED4CBDB0)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v34 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    if (OUTLINED_FUNCTION_115_1(v34))
                    {
                      v42 = 136315906;
                      v43 = "remoteXPCItem_updateLayerSync";
                      v44 = 2048;
                      v45 = v7;
                      v46 = 2048;
                      v47 = a1;
                      v48 = 2112;
                      v49 = v41;
                      OUTLINED_FUNCTION_108();
                      _os_log_send_and_compose_impl();
                    }

                    OUTLINED_FUNCTION_7();
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  if (!FigLayerSynchronizerSetConfigurationWithDeferredTransaction(*v31, v41, a3))
                  {
                    if (*v31)
                    {
                      v38 = *(DerivedStorage + 32);
                      if (v38)
                      {
                        FigLayerSynchronizerSynchronizeToTimebaseWithDeferredTransaction(*v31, v38);
                      }
                    }
                  }
                }
              }

LABEL_43:
              FigSimpleMutexUnlock();
              a3 = cf;
              goto LABEL_44;
            }

            if (!a2)
            {
LABEL_31:
              v35 = *(DerivedStorage + 152);
              if (v35)
              {
                if (dword_1ED4CBDB0)
                {
                  v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
                  if (OUTLINED_FUNCTION_115_1(v37))
                  {
                    v42 = 136315650;
                    v43 = "remoteXPCItem_updateLayerSync";
                    v44 = 2048;
                    v45 = v7;
                    v46 = 2048;
                    v47 = a1;
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_7();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v35 = *(DerivedStorage + 152);
                }

                FigLayerSynchronizerSetConfigurationWithDeferredTransaction(v35, 0, a3);
              }

              goto LABEL_43;
            }

LABEL_24:
            if (Count >= 1)
            {
              goto LABEL_25;
            }

            goto LABEL_31;
          }
        }

        else
        {
          FigSimpleMutexUnlock();
        }

        FigSimpleMutexLock();
        v30 = 0;
        if (!a2)
        {
          goto LABEL_31;
        }

        goto LABEL_24;
      }
    }

    FigReadWriteLockUnlockForRead();
    v13 = 0;
    goto LABEL_14;
  }

LABEL_60:
  v16 = 0;
  v30 = 0;
  v13 = 0;
LABEL_44:
  FigDeferredTransactionCommit(a3, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  objc_autoreleasePoolPop(v6);
}

void remoteXPCPlayer_connectImageQueueToVideoLayerArray(const void *a1, const void *a2, const __CFArray *a3, const void *a4, CFTypeRef a5)
{
  v88 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = CMBaseObjectGetDerivedStorage();
  v85 = 0;
  memset(&v84, 0, sizeof(v84));
  v83 = 0;
  if (FigUseVideoReceiverForCALayer())
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM();
    a5 = 0;
    v14 = 0;
    MutableCopy = 0;
    v12 = 0;
  }

  else
  {
    v70 = v10;
    FigReadWriteLockLockForRead();
    v11 = *(DerivedStorage + 64);
    if (v11)
    {
      v12 = CFRetain(v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(DerivedStorage + 56);
    if (v13)
    {
      v14 = CFRetain(v13);
    }

    else
    {
      v14 = 0;
    }

    allocator = *MEMORY[0x1E695E480];
    MutableCopy = FigCFArrayCreateMutableCopy();
    FigReadWriteLockUnlockForRead();
    if (a5 || (v16 = FigDeferredTransactionCreate(allocator, &v83), a5 = v83, !v16))
    {
      v79 = MutableCopy;
      theArray = v14;
      v76 = v12;
      *v71 = a5;
      v72 = a2;
      v73 = DerivedStorage;
      if (!a3)
      {
        FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(a5, v12, 0);
        v18 = 0;
        goto LABEL_69;
      }

      if (MutableCopy)
      {
        Count = CFArrayGetCount(MutableCopy);
      }

      else
      {
        Count = 0;
      }

      if (Count == CFArrayGetCount(a3))
      {
        v19 = FigCFArrayCreateMutableCopy();
        if (Count >= 1)
        {
          v20 = 0;
          v21 = MEMORY[0x1E695E738];
          do
          {
            v22 = OUTLINED_FUNCTION_513();
            ValueAtIndex = CFArrayGetValueAtIndex(v22, v23);
            if (!FigCFEqual())
            {
              if (v19)
              {
                CFArrayGetCount(v19);
              }

              v25 = OUTLINED_FUNCTION_9_2();
              FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v25, v89, ValueAtIndex);
              if (FirstIndexOfValue == -1)
              {
                v27 = OUTLINED_FUNCTION_513();
                v90.length = 1;
                CFArrayReplaceValues(v27, v90, v21, 1);
              }

              else
              {
                CFArrayRemoveValueAtIndex(v19, FirstIndexOfValue);
              }
            }

            ++v20;
          }

          while (Count != v20);
          v28 = 0;
          v12 = v76;
          do
          {
            v29 = OUTLINED_FUNCTION_513();
            CFArrayGetValueAtIndex(v29, v30);
            if (FigCFEqual())
            {
              v31 = OUTLINED_FUNCTION_9_2();
              *&t1.a = CFArrayGetValueAtIndex(v31, v32);
              v33 = OUTLINED_FUNCTION_513();
              v91.length = 1;
              CFArrayReplaceValues(v33, v91, v34, 1);
              v35 = OUTLINED_FUNCTION_9_2();
              CFArrayRemoveValueAtIndex(v35, v36);
            }

            ++v28;
          }

          while (Count != v28);
        }

        v74 = MutableCopy;
        if (v19)
        {
          CFRelease(v19);
          v74 = MutableCopy;
        }
      }

      else
      {
        v74 = a3;
      }

      if (theArray && CFArrayGetCount(theArray) >= 1)
      {
        v37 = 0;
        do
        {
          if (dword_1ED4CBDB0)
          {
            v82 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            MutableCopy = v79;
          }

          ++v37;
        }

        while (CFArrayGetCount(theArray) > v37);
      }

      a5 = *v71;
      v18 = v74;
      FPSupport_AppendDeferredTransactionChangeForSettingImageQueueSlotsOnVideoLayers(v71[0], v74, v12);
      v40 = *(v70 + 240);
      v39 = *(v70 + 248);
      if (v40 == *MEMORY[0x1E695F060] && v39 == *(MEMORY[0x1E695F060] + 8))
      {
        v44 = v72;
        v45 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        DerivedStorage = v73;
        if (v45)
        {
          v45(v72, &v85 + 4, &v85);
        }
      }

      else
      {
        *&v42 = v40;
        *&v43 = v39;
        v85 = __PAIR64__(v42, v43);
        v44 = v72;
        DerivedStorage = v73;
      }

      if (*(DerivedStorage + 169))
      {
        FPSupport_AppendDeferredTransactionChangeForSettingBoundsOnLayers(v71[0], theArray, 0.0, 0.0, *(&v85 + 1), *&v85);
      }

      *(DerivedStorage + 170) = 0;
      if (!FPSupport_ShouldApplyVideoTrackMatrix(a1, v44))
      {
        v47 = *(MEMORY[0x1E695EFD0] + 16);
        *&v84.a = *MEMORY[0x1E695EFD0];
        *&v84.c = v47;
        *&v84.tx = *(MEMORY[0x1E695EFD0] + 32);
LABEL_68:
        v53 = *MEMORY[0x1E695EFF8];
        v54 = *(MEMORY[0x1E695EFF8] + 8);
        t1 = v84;
        FPSupport_AppendDeferredTransactionChangeForSettingTransformOnLayers(v71[0], 0, &t1, v12, v53, v54);
LABEL_69:
        FigReadWriteLockLockForWrite();
        v55 = *(DerivedStorage + 72);
        *(DerivedStorage + 72) = v18;
        if (v18)
        {
          CFRetain(v18);
        }

        if (v55)
        {
          CFRelease(v55);
        }

        v56 = a5;
        FigReadWriteLockUnlockForWrite();
        if (theArray)
        {
          v57 = CFArrayGetCount(theArray);
          if (!v18)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v57 = 0;
          if (!v18)
          {
LABEL_93:
            FPSupport_AppendDeferredTransactionPostCommitChangeToReleasePlayerResourcesOnQueue(v56, a1, *(DerivedStorage + 136));
            a5 = v83;
            v14 = theArray;
            goto LABEL_94;
          }
        }

        v58 = CFArrayGetCount(v18);
        if (v57 >= 1 && v58 >= 1)
        {
          v60 = v58;
          Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          v61 = 0;
          v62 = *MEMORY[0x1E695E4D0];
          v63 = *MEMORY[0x1E695E4C0];
          do
          {
            v64 = [CFArrayGetValueAtIndex(theArray v61)];
            LODWORD(t1.a) = 0;
            if (v61 < v60)
            {
              v65 = v64;
              if (FigCFArrayGetInt32AtIndex())
              {
                v66 = CFDictionaryCreateMutable(allocator, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                FigCFDictionarySetInt32();
                if (v65)
                {
                  v67 = v62;
                }

                else
                {
                  v67 = v63;
                }

                CFDictionarySetValue(v66, @"UsedForScrubbingOnly", v67);
                CFArrayAppendValue(Mutable, v66);
                CFRelease(v66);
              }
            }

            ++v61;
          }

          while (v57 != v61);
          FigBaseObject = FigPlaybackItemGetFigBaseObject(v72);
          v69 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v69)
          {
            v69(FigBaseObject, @"VideoSlotUsage", Mutable);
          }

          v56 = *v71;
          v12 = v76;
          DerivedStorage = v73;
          MutableCopy = v79;
          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }

        goto LABEL_93;
      }

      LOBYTE(v82) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      *&v86.a = a4;
      if (a4)
      {
        CFRetain(a4);
      }

      else
      {
        v48 = FigPlaybackItemGetFigBaseObject(v44);
        v49 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v49)
        {
          RotationAngleAndFlipsFromCGAffineTransform = 0;
LABEL_62:
          CGAffineTransformMakeRotation(&t1, RotationAngleAndFlipsFromCGAffineTransform * 3.14159265 / 180.0);
          v51 = -1.0;
          if (type)
          {
            v52 = -1.0;
          }

          else
          {
            v52 = 1.0;
          }

          if (!v82)
          {
            v51 = 1.0;
          }

          CGAffineTransformMakeScale(&v86, v52, v51);
          CGAffineTransformConcat(&v84, &t1, &v86);
          goto LABEL_68;
        }

        v50 = v49(v48, @"VideoTrackMatrix", allocator, &v86);
        RotationAngleAndFlipsFromCGAffineTransform = 0;
        a4 = *&v86.a;
        if (v50 || !*&v86.a)
        {
LABEL_51:
          if (a4)
          {
            CFRelease(a4);
          }

          if (RotationAngleAndFlipsFromCGAffineTransform == 270 || RotationAngleAndFlipsFromCGAffineTransform == 90)
          {
            v85 = __PAIR64__(v85, HIDWORD(v85));
            *(DerivedStorage + 170) = 1;
          }

          goto LABEL_62;
        }
      }

      FigGetCGAffineTransformFrom3x3MatrixArray(a4, &t1);
      RotationAngleAndFlipsFromCGAffineTransform = FigGetRotationAngleAndFlipsFromCGAffineTransform(&t1.a, &v82, &type);
      a4 = *&v86.a;
      goto LABEL_51;
    }
  }

LABEL_94:
  FigDeferredTransactionCommit(a5, 0);
  if (v83)
  {
    CFRelease(v83);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

uint64_t remoteXPCItem_copyOwningPlayer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 9))
  {
    return 0;
  }

  if (!*(DerivedStorage + 24))
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM();
    return 0;
  }

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

BOOL remoteXPCItem_isSyncItem(const void *a1)
{
  v2 = remoteXPCItem_copyOwningPlayer();
  v3 = remoteXPCPlayer_copySyncItem(v2);
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v4 == a1;
}

void fpr_copyLegibleOutputChangedNotificationPayloadFromMessage()
{
  OUTLINED_FUNCTION_433();
  cf = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v2 = 0;
  v3 = 0;
  if (!FigXPCMessageCopyCFDictionary())
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!FigXPCMessageCopyCFArray())
    {
      FigSignalErrorAtGM();
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  OUTLINED_FUNCTION_424_0();
}

uint64_t fpr_copyMetadataOutputChangedNotificationPayloadFromMessage()
{
  OUTLINED_FUNCTION_180_1();
  value = 0;
  v2 = FigXPCMessageCopyCFDictionary();
  if (!v2)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    fpr_copySampleBuffersArrayFromMessage(v1, "MetadataOutputSamples", &value);
    v4 = value;
    CFDictionarySetValue(MutableCopy, @"SampleBuffers", value);
    *v0 = MutableCopy;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return v2;
}

uint64_t remoteXPCItem_HandleTimebaseSynchronizationUpdate(const void *a1, uint64_t a2)
{
  if (!a1 || (v3 = CFGetTypeID(a1), v3 != FigPlaybackItemGetTypeID()) || !a2 || (result = FigXPCMessageCopyCFData(), !result))
  {
    OUTLINED_FUNCTION_376();
    return FigSignalErrorAtGM();
  }

  return result;
}

void remoteXPCItem_TimebaseSynchronizationUpdate(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  v24 = 0u;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v21 = 0u;
  v5 = remoteXPCItem_copyOwningPlayer();
  if (v5)
  {
    CMBaseObjectGetDerivedStorage();
  }

  FigSimpleMutexLock();
  if (!v5 || *(DerivedStorage + 9))
  {
    FigSimpleMutexUnlock();
    if (!v5)
    {
      return;
    }

    goto LABEL_12;
  }

  LODWORD(v21) = *a2;
  if (v21 == 120)
  {
    v6 = *(a2 + 4);
    DWORD1(v21) = v6;
    *(&v21 + 1) = *(a2 + 8);
    v22 = *(a2 + 16);
    v7 = *(a2 + 32);
    *(v23 + 8) = *(a2 + 40);
    *&v23[2] = *(a2 + 64);
    *(&v23[3] + 1) = *(a2 + 88);
    *(&v23[2] + 8) = *(a2 + 72);
    v25 = *(a2 + 112);
    v24 = *(a2 + 96);
    v8 = *(DerivedStorage + 68) & 0x1D;
    v9 = *(a2 + 56);
    *&v23[0] = v7;
    *(&v23[1] + 1) = v9;
    if (v8 != 1 || (v14 = *(a2 + 40), *&v15 = *(a2 + 56), time2 = *(DerivedStorage + 56), (CMTimeCompare(&v14, &time2) & 0x80000000) == 0))
    {
      v10 = *(&v23[1] + 1);
      *(DerivedStorage + 56) = *(v23 + 8);
      *(DerivedStorage + 72) = v10;
      v11 = *(DerivedStorage + 32);
      if (v11)
      {
        FigTimebaseSynchronizeToMoment2(v11, *(DerivedStorage + 48), &v21);
      }

      FigSimpleMutexUnlock();
      FigSimpleMutexLock();
      isSyncItem = remoteXPCItem_isSyncItem(a1);
      FigSimpleMutexUnlock();
      FigSimpleMutexLock();
      v13 = *(DerivedStorage + 152);
      if (v13 && isSyncItem)
      {
        if (*(DerivedStorage + 259))
        {
          DWORD1(v21) |= 3u;
          *(DerivedStorage + 259) = 0;
        }

        FigSimpleMutexUnlock();
        *(&v14 + 1) = *(&v21 + 1);
        v15 = v22;
        v17 = *(v23 + 8);
        LODWORD(v14) = 72;
        DWORD1(v14) = DWORD1(v21);
        v16 = *&v23[0];
        v18 = *(&v23[1] + 1);
        v19 = *&v23[2];
        FigLayerSynchronizerSynchronizeToMomentWithDeferredTransaction(v13, &v14);
      }

      else
      {
        FigSimpleMutexUnlock();
      }

      if (!*(DerivedStorage + 9) && (BYTE4(v21) & 2) != 0)
      {
        fpr_deferPostNotificationToNotificationQueue(a1, @"TimeJumped", 0);
      }

      goto LABEL_12;
    }

    if ((v6 & 2) != 0)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }
  }

  FigSimpleMutexUnlock();
LABEL_12:
  CFRelease(v5);
}

uint64_t remoteXPCPlayer_Invalidate(uint64_t a1)
{
  cf[23] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  cf[1] = 0;
  if (*(DerivedStorage + 9))
  {
    v6 = 0;
    goto LABEL_35;
  }

  v4 = DerivedStorage;
  FigStopMonitoringMediaServicesProcessDeath();
  if (dword_1ED4CBDB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = FigXPCRemoteClientDisassociateObject();
  if (!*(v4 + 8) && !*(v4 + 288))
  {
    v6 = FigXPCCreateBasicMessage();
    if (!v6)
    {
      v6 = FigXPCRemoteClientSendAsyncMessage();
    }
  }

  FigDeferredTransactionCreate(*MEMORY[0x1E695E480], cf);
  *(v4 + 9) = 1;
  *v4 = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_11_22();
  CMNotificationCenterRemoveListener();
  FigBaseObject = FigPlayerGetFigBaseObject(a1);
  v8 = *(CMBaseObjectGetVTable() + 8);
  if (*v8 >= 2uLL)
  {
    v9 = v8[8];
    if (v9)
    {
      v9(FigBaseObject);
    }
  }

  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = CFGetAllocator(v10);
    Copy = CFSetCreateCopy(v11, *(v4 + 16));
    if (Copy)
    {
      v13 = Copy;
      CFSetApplyFunction(Copy, remoteXPCPlayer_InvalidateItem, 0);
      CFRelease(v13);
    }
  }

  v14 = *(v4 + 176);
  if (v14)
  {
    CFRelease(v14);
    *(v4 + 176) = 0;
  }

  if (*(v4 + 136))
  {
    remoteXPCPlayer_cancelAndClearNextItemTransitionTimer();
    dispatch_sync(*(v4 + 136), &__block_literal_global_24);
  }

  FigSimpleMutexLock();
  remoteXPCPlayer_removeClosedCaptionHostLayerArray();
  FigSimpleMutexUnlock();
  v15 = *(v4 + 104);
  if (v15)
  {
    FPSupport_AppendDeferredTransactionChangeToClearContentsAndRemoveFromSuperLayer(cf[0], v15);
    v16 = *(v4 + 104);
    if (v16)
    {
      CFRelease(v16);
      *(v4 + 104) = 0;
    }
  }

  if (!FigUseVideoReceiverForCALayer())
  {
    v17 = *(v4 + 64);
    if (v17)
    {
      Count = CFArrayGetCount(v17);
      if (Count > 0)
      {
        v19 = Count;
        for (i = 0; i != v19; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 64), i);
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_2_60();
          CMNotificationCenterRemoveListener();
          [ValueAtIndex notificationBarrier];
        }

        goto LABEL_28;
      }
    }

    if (*(v4 + 56))
    {
LABEL_28:
      FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(cf[0], *(v4 + 64), 1);
      FigReadWriteLockLockForWrite();
      FPSupport_AppendDeferredTransactionChangeToRelease(cf[0], *(v4 + 64));
      FPSupport_AppendDeferredTransactionChangeToRelease(cf[0], *(v4 + 56));
      *(v4 + 56) = 0;
      *(v4 + 64) = 0;
      FigReadWriteLockUnlockForWrite();
    }
  }

  FigReadWriteLockLockForWrite();
  FPSupport_AppendDeferredTransactionChangeToRelease(cf[0], *(v4 + 112));
  *(v4 + 112) = 0;
  FigReadWriteLockUnlockForWrite();
  FigSimpleMutexLock();
  if (!*(v4 + 264))
  {
    remoteXPCPlayer_removeAllSpatialTrackingLayers();
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v22 = *(v4 + 160);
  if (v22)
  {
    [v22 removeObserversOnCADisplays];
    [*(v4 + 160) removeReferenceToPlayer];

    *(v4 + 160) = 0;
  }

  FigSimpleMutexUnlock();
  FPSupport_AppendDeferredTransactionChangeToRelease(cf[0], *(v4 + 120));
  *(v4 + 120) = 0;
  FigDeferredTransactionCommit(cf[0], 0);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_35:
  FigXPCRelease();
  objc_autoreleasePoolPop(v2);
  return v6;
}

uint64_t remoteXPCPlayer_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  remoteXPCPlayer_Invalidate(a1);
  FigSimpleMutexDestroy();
  v3 = *(DerivedStorage + 256);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 256) = 0;
  }

  v4 = *(DerivedStorage + 272);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 272) = 0;
  }

  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 64) = 0;
  }

  v6 = *(DerivedStorage + 56);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 56) = 0;
  }

  v7 = *(DerivedStorage + 72);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 72) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 128) = 0;
  v8 = *(DerivedStorage + 16);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 16) = 0;
  }

  v9 = *(DerivedStorage + 24);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 24) = 0;
  }

  v10 = *(DerivedStorage + 32);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 32) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 40) = 0;
  v11 = *(DerivedStorage + 48);
  if (v11)
  {
    dispatch_release(v11);
  }

  *(DerivedStorage + 48) = 0;
  FigReadWriteLockDestroy();
  if (FigUseVideoReceiverForCALayer())
  {
    v12 = *(DerivedStorage + 304);
    if (v12)
    {
      Count = CFArrayGetCount(*(DerivedStorage + 304));
      if (Count >= 1)
      {
        v14 = Count;
        for (i = 0; i != v14; ++i)
        {
          CFArrayGetValueAtIndex(v12, i);
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListeners();
        }
      }
    }

    v16 = *(DerivedStorage + 312);
    if (v16)
    {
      CFRelease(v16);
      *(DerivedStorage + 312) = 0;
    }
  }

  v17 = *(DerivedStorage + 304);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 304) = 0;
  }

  v18 = *(DerivedStorage + 328);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 328) = 0;
  }

  v19 = *(DerivedStorage + 336);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 336) = 0;
  }

  FigReadWriteLockDestroy();
  *(DerivedStorage + 96) = 0;
  v20 = *(DerivedStorage + 80);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 80) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 88) = 0;
  v21 = *(DerivedStorage + 136);
  if (v21)
  {
    dispatch_release(v21);
  }

  *(DerivedStorage + 136) = 0;
  FigSimpleMutexDestroy();
  *(DerivedStorage + 232) = 0;
  v22 = *(DerivedStorage + 224);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 224) = 0;
  }

  v23 = *(DerivedStorage + 192);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 192) = 0;
  }

  v24 = *(DerivedStorage + 200);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 200) = 0;
  }

  v25 = *(DerivedStorage + 280);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 280) = 0;
  }

  if (*(DerivedStorage + 152))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 152) = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

void remoteXPCPlayer_SetProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, CFTypeRef a13, CFTypeRef cf, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_47_5();
  a22 = v23;
  a23 = v26;
  v28 = v27;
  cf = 0;
  a15 = 0;
  a13 = 0;
  a12 = 0;
  if (v27)
  {
    v29 = v25;
    v30 = v24;
    if (!remoteXPCPlayer_GetObjectID(v24, &a15) && !FPSupport_HandlePlayerSetPropertyAndCopyModification(v30, v28, v29, 0, remoteXPCPlayer_handleSetProperty, &a12, &cf, &a13) && !a12)
    {
      FigXPCSendStdSetPropertyMessage();
    }
  }

  else
  {
    FigSignalErrorAtGM();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a13)
  {
    CFRelease(a13);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  OUTLINED_FUNCTION_860();
}

void remoteXPCPlayer_removeClosedCaptionHostLayerArray()
{
  OUTLINED_FUNCTION_180_1();
  v1 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v3 = *(DerivedStorage + 120);
  if (v3 && CFArrayGetCount(v3) >= 1)
  {
    if (v0 || (v4 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf), v0 = cf, !v4))
    {
      FPSupport_AppendDeferredTransactionChangeForRemovingEachLayerInArrayFromItsSuperlayer(v0, *(DerivedStorage + 120), "remoteXPCPlayer_removeClosedCaptionHostLayerArray");
      CFArrayRemoveAllValues(*(DerivedStorage + 120));
      v0 = cf;
    }
  }

  else
  {
    v0 = 0;
  }

  FigDeferredTransactionCommit(v0, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v1);
}

void remoteXPCPlayer_removeAllSpatialTrackingLayers()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (qword_1ED4CA8B8 != -1)
  {
    dispatch_once(&qword_1ED4CA8B8, &__block_literal_global_27);
  }

  if (_MergedGlobals_44 && *(DerivedStorage + 272))
  {
    OUTLINED_FUNCTION_3_48();
    CFSetApplyFunction(v1, v2, 0);
    v3 = *(DerivedStorage + 272);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 272) = 0;
    }
  }
}

void remoteXPCPlayer_updateVideoTargetsBeingServicedAndDisplayList(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *value, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_845();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  value = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  v27 = *(DerivedStorage + 304);
  if (v27)
  {
    Count = CFArrayGetCount(v27);
    if (!v23)
    {
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (!v23)
    {
      goto LABEL_6;
    }
  }

  if (!FigCFArrayContainsValue())
  {
    Mutable = 0;
    goto LABEL_20;
  }

LABEL_6:
  v29 = CFGetAllocator(v25);
  Mutable = CFArrayCreateMutable(v29, Count, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 304), i);
        v33 = CFGetAllocator(v25);
        CMBaseObject = FigVideoTargetGetCMBaseObject(ValueAtIndex);
        v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v35)
        {
          v35(CMBaseObject, @"DisplayName", v33, &value);
        }

        if (value)
        {
          v37.length = CFArrayGetCount(Mutable);
          v37.location = 0;
          if (!CFArrayContainsValue(Mutable, v37, value))
          {
            CFArrayAppendValue(Mutable, value);
          }

          if (value)
          {
            CFRelease(value);
            value = 0;
          }
        }
      }
    }

    FigSimpleMutexLock();
    v36 = *(DerivedStorage + 160);
    if (v36)
    {
      [v36 setBaseDisplayList:Mutable];
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigSignalErrorAtGM();
  }

LABEL_20:
  FigReadWriteLockUnlockForRead();
  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_843();
}

uint64_t remoteXPCPlayer_reevaluatePendingVideoTargetsAndUpdateServerPlayer(const void *a1)
{
  value[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForWrite();
  v3 = *(DerivedStorage + 304);
  cf = 0;
  v4 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM();
    goto LABEL_81;
  }

  v6 = Mutable;
  v7 = CFGetAllocator(a1);
  v8 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  if (!v8)
  {
    OUTLINED_FUNCTION_49_0();
    FigSignalErrorAtGM();
    CFRelease(v6);
LABEL_81:
    v9 = 0;
    v6 = 0;
    v18 = *(DerivedStorage + 328);
    *(DerivedStorage + 328) = 0;
    v19 = 1;
    if (v18)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v9 = v8;
  v46 = DerivedStorage;
  v10 = 0;
  v47 = v8;
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_4:
  for (i = CFArrayGetCount(v3); v10 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v10);
    v13 = CFGetAllocator(a1);
    CMBaseObject = FigVideoTargetGetCMBaseObject(ValueAtIndex);
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v15(CMBaseObject, @"ReceiverLoadingState", v13, &cf);
    }

    if (FigCFEqual())
    {
      v16 = v6;
LABEL_13:
      CFArrayAppendValue(v16, ValueAtIndex);
      goto LABEL_14;
    }

    if (FigCFEqual())
    {
      v16 = v9;
      goto LABEL_13;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = v47;
LABEL_14:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    ++v10;
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_5:
    ;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  DerivedStorage = v46;
  v18 = *(v46 + 328);
  *(v46 + 328) = v6;
  CFRetain(v6);
  v19 = 0;
  if (v18)
  {
LABEL_22:
    CFRelease(v18);
  }

LABEL_23:
  v20 = *(DerivedStorage + 336);
  *(DerivedStorage + 336) = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(DerivedStorage + 320) != 0;
  if (*(DerivedStorage + 320))
  {
    v22 = v9;
  }

  else
  {
    v22 = 0;
  }

  theArray = v22;
  if (v9 && !*(DerivedStorage + 320))
  {
    Count = CFArrayGetCount(v9);
    v21 = Count > 0;
    if (Count < 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v19;
    }

    if ((v24 & 1) == 0)
    {
      v21 = CFArrayGetCount(v6) == 0;
    }

    theArray = v9;
  }

  FigReadWriteLockUnlockForWrite();
  v25 = v9;
  if (dword_1ED4CBDB0)
  {
    LODWORD(cf) = 0;
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v27 = cf;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 & 0xFFFFFFFE;
    }

    if (v28)
    {
      if (v19)
      {
        v29 = 0;
        if (v9)
        {
          goto LABEL_45;
        }

LABEL_48:
        v30 = 0;
      }

      else
      {
        v29 = CFArrayGetCount(v6);
        if (!v9)
        {
          goto LABEL_48;
        }

LABEL_45:
        v30 = CFArrayGetCount(theArray);
      }

      v51 = "remoteXPCPlayer_reevaluatePendingVideoTargetsAndUpdateServerPlayer";
      v52 = 2048;
      v31 = "false";
      v50 = 136316162;
      v53 = a1;
      if (v21)
      {
        v31 = "true";
      }

      v54 = 1024;
      *v55 = v29;
      *&v55[4] = 1024;
      *&v55[6] = v30;
      v56[0] = 2080;
      *&v56[1] = v31;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  value[0] = 0;
  if (!remoteXPCPlayer_GetObjectID(a1, value))
  {
    FigXPCSendStdSetPropertyMessage();
  }

  cf = 0;
  if (dword_1ED4CBDB0 >= 2)
  {
    v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_115_1(v33))
    {
      v50 = 136315650;
      v51 = "remoteXPCPlayer_setVideoTargetsOnServerPlayer";
      v52 = 2048;
      v53 = a1;
      v54 = 2112;
      *v55 = v6;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ObjectID = remoteXPCPlayer_GetObjectID(a1, &cf);
  if (ObjectID)
  {
    v44 = ObjectID;
    goto LABEL_71;
  }

  v35 = xpc_array_create(0, 0);
  if (!v35)
  {
    OUTLINED_FUNCTION_49_0();
    v43 = FigSignalErrorAtGM();
LABEL_70:
    v44 = v43;
    goto LABEL_71;
  }

  v36 = CFArrayGetCount(v6);
  if (v36 < 1)
  {
LABEL_68:
    v43 = FigXPCCreateBasicMessage();
    v9 = v25;
    if (!v43)
    {
      xpc_dictionary_set_value(0, "VideoTargetIDArray", v35);
      v43 = FigXPCRemoteClientSendSyncMessage();
    }

    goto LABEL_70;
  }

  v37 = v36;
  v38 = 0;
  while (1)
  {
    value[0] = 0;
    v39 = CFArrayGetValueAtIndex(v6, v38);
    if (!v39)
    {
      break;
    }

    v40 = v39;
    v41 = CFGetTypeID(v39);
    if (v41 != FigVideoTargetGetTypeID())
    {
      break;
    }

    v42 = FigVideoTargetXPCRemoteGetObjectID(v40, value);
    if (v42)
    {
      goto LABEL_77;
    }

    if (!value[0])
    {
      break;
    }

    xpc_array_set_uint64(v35, 0xFFFFFFFFFFFFFFFFLL, value[0]);
    if (v37 == ++v38)
    {
      goto LABEL_68;
    }
  }

  OUTLINED_FUNCTION_49_0();
  v42 = FigSignalErrorAtGM();
LABEL_77:
  v44 = v42;
  v9 = v25;
LABEL_71:
  FigXPCRelease();
  FigXPCRelease();
  if ((v19 & 1) == 0)
  {
    CFRelease(v6);
  }

  if (v9)
  {
    CFRelease(theArray);
  }

  return v44;
}

uint64_t remoteXPCPlayer_setClientVideoLayerArray(uint64_t a1, const __CFArray *a2)
{
  valuePtr[25] = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  valuePtr[0] = -1;
  context = v3;
  if (FigUseVideoReceiverForCALayer())
  {
    OUTLINED_FUNCTION_376();
    v6 = FigSignalErrorAtGM();
    goto LABEL_110;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf);
  if (v6)
  {
LABEL_110:
    v62 = v6;
    v51 = 0;
    v23 = 0;
    v39 = 0;
    v85 = 0;
    v12 = 0;
    v82 = 0;
    MutableCopy = 0;
    goto LABEL_84;
  }

  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 64))
  {
    v7 = OUTLINED_FUNCTION_266_0();
    MutableCopy = CFArrayCreateMutableCopy(v7, v8, v9);
  }

  else
  {
    MutableCopy = 0;
  }

  v11 = *(DerivedStorage + 56);
  if (v11)
  {
    v12 = CFRetain(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(DerivedStorage + 64);
  if (v13)
  {
    v14 = CFRetain(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(DerivedStorage + 72);
  if (v15)
  {
    v16 = CFRetain(v15);
  }

  else
  {
    v16 = 0;
  }

  FigReadWriteLockUnlockForRead();
  v85 = v16;
  v82 = v14;
  if (FigCFEqual())
  {
    v51 = 0;
    v23 = 0;
    v39 = 0;
    v62 = 0;
    goto LABEL_84;
  }

  FigSimpleMutexLock();
  v17 = remoteXPCPlayer_copySyncItem(a1);
  FigSimpleMutexUnlock();
  if (v12)
  {
    range = CFArrayGetCount(v12);
    if (v16)
    {
LABEL_18:
      Count = CFArrayGetCount(v16);
      goto LABEL_21;
    }
  }

  else
  {
    range = 0;
    if (v16)
    {
      goto LABEL_18;
    }
  }

  Count = 0;
LABEL_21:
  if (MutableCopy)
  {
    v18 = CFArrayGetCount(MutableCopy);
    valuePtr[0] = v18;
    v19 = OUTLINED_FUNCTION_266_0();
    Mutable = CFArrayCreateMutable(v19, v20, v21);
    v23 = Mutable;
    if (v18 >= 1)
    {
      v80 = v17;
      v24 = Mutable;
      v25 = v14;
      v26 = v12;
      for (i = 0; i < v18; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, i);
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_2_60();
        CMNotificationCenterRemoveListener();
        [ValueAtIndex notificationBarrier];
      }

      v12 = v26;
      v14 = v25;
      v23 = v24;
      v17 = v80;
    }
  }

  else
  {
    valuePtr[0] = 0;
    v29 = OUTLINED_FUNCTION_266_0();
    v23 = CFArrayCreateMutable(v29, v30, v31);
  }

  FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(cf, v14, 1);
  FigReadWriteLockLockForWrite();
  v32 = *(DerivedStorage + 64);
  if (v32)
  {
    CFRelease(v32);
    *(DerivedStorage + 64) = 0;
  }

  v33 = *(DerivedStorage + 56);
  if (v33)
  {
    CFRelease(v33);
    *(DerivedStorage + 56) = 0;
  }

  v34 = *(DerivedStorage + 72);
  if (v34)
  {
    CFRelease(v34);
    *(DerivedStorage + 72) = 0;
  }

  FigReadWriteLockUnlockForWrite();
  if (v17)
  {
    remoteXPCItem_handleFirstFrameNotificationLatch(v17, 4, cf);
  }

  v90 = a1;
  v35 = a2;
  if (!a2)
  {
    valuePtr[0] = 0;
LABEL_60:
    v51 = v17;
    v52 = OUTLINED_FUNCTION_266_0();
    v39 = CFArrayCreateMutable(v52, v53, v54);
    FigReadWriteLockLockForWrite();
    v55 = *(DerivedStorage + 56);
    *(DerivedStorage + 56) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v55)
    {
      CFRelease(v55);
    }

    v56 = *(DerivedStorage + 64);
    *(DerivedStorage + 64) = v39;
    if (v39)
    {
      CFRetain(v39);
    }

    if (v56)
    {
      CFRelease(v56);
    }

    FigReadWriteLockUnlockForWrite();
    v57 = 0;
    v58 = 0;
    if (v39)
    {
LABEL_69:
      CFRelease(v39);
      v58 = v57;
    }

LABEL_70:
    FigSimpleMutexLock();
    if (!*(DerivedStorage + 264))
    {
      remoteXPCPlayer_reevaluateSpatialTrackingObjectsAndUpdateLabelIfNecessary(v90);
    }

    FigSimpleMutexUnlock();
    if (v51)
    {
      remoteXPCItem_updateLayerSync(v51, v58 > 0, cf);
    }

    v59 = CFNumberCreate(v5, kCFNumberCFIndexType, valuePtr);
    FigBaseObject = FigPlayerGetFigBaseObject(v90);
    v61 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v61)
    {
      v62 = v61(FigBaseObject, @"RequiresNumVideoSlots", v59);
      if (!v59)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v62 = 4294954514;
      if (!v59)
      {
LABEL_79:
        if (!v62)
        {
          if (v51)
          {
            v79 = cf;
            OUTLINED_FUNCTION_38_8();
            v62 = remoteXPCPlayer_connectVideoLayerToPlaybackItem(v71, v72, v73, v74, v75, v76, v77, v78, v79);
            remoteXPCPlayer_updateLayerDurationsWhenItemReady(v90, v51, 1, cf);
          }

          else
          {
            v62 = 0;
          }

          remoteXPCPlayer_updateAirPlayVideoHostLayer(v90);
        }

        v39 = 0;
        goto LABEL_84;
      }
    }

    CFRelease(v59);
    goto LABEL_79;
  }

  v36 = CFArrayGetCount(a2);
  valuePtr[0] = 0;
  if (v36 < 1)
  {
    goto LABEL_60;
  }

  v37 = v36;
  v86 = v23;
  v81 = v17;
  v38 = CFArrayCreateMutable(v5, v36, MEMORY[0x1E695E9C0]);
  v39 = v38;
  v40 = 0;
  v87 = v12;
  if (v12)
  {
    v41 = range == Count;
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;
  v92 = v42;
  value = *MEMORY[0x1E695E738];
  v88 = v38;
  while (1)
  {
    v43 = CFArrayGetValueAtIndex(v35, v40);
    if (v92)
    {
      break;
    }

    if (!MutableCopy)
    {
      goto LABEL_52;
    }

LABEL_50:
    if (CFArrayGetCount(MutableCopy) < 1)
    {
      goto LABEL_52;
    }

    v46 = CFArrayGetValueAtIndex(MutableCopy, 0);
    v47 = v46;
    CFArrayRemoveValueAtIndex(MutableCopy, 0);
LABEL_55:
    CFArrayAppendValue(v39, v46);
    if (dword_1ED4CBDB0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v35 = a2;
      v39 = v88;
    }

    if (v37 == ++v40)
    {
      goto LABEL_92;
    }
  }

  v96.location = 0;
  v96.length = range;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v87, v96, v43);
  v45 = value;
  if (FirstIndexOfValue != -1)
  {
    v45 = CFArrayGetValueAtIndex(v85, FirstIndexOfValue);
  }

  CFArrayAppendValue(v86, v45);
  if (MutableCopy)
  {
    goto LABEL_50;
  }

LABEL_52:
  v48 = [FigVideoLayer alloc];
  v49 = [(FigVideoLayer *)v48 initWithDeferredTransaction:cf];
  if (v49)
  {
    v46 = v49;
    if (*(DerivedStorage + 171))
    {
      FBLSupportAppendDeferredTransactionChangeToSetAllowsDisplayCompositing(cf, v49, 0, "remoteXPCPlayer_setClientVideoLayerArray");
    }

    goto LABEL_55;
  }

  if (v37 != v40)
  {
    v62 = 4294954434;
    v51 = v81;
    v23 = v86;
    v12 = v87;
    goto LABEL_84;
  }

LABEL_92:
  v57 = CFArrayGetCount(v39);
  valuePtr[0] = v57;
  FigReadWriteLockLockForWrite();
  v64 = *(DerivedStorage + 72);
  v23 = v86;
  *(DerivedStorage + 72) = v86;
  if (v86)
  {
    CFRetain(v86);
  }

  v51 = v81;
  if (v64)
  {
    CFRelease(v64);
  }

  v65 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = a2;
  CFRetain(a2);
  if (v65)
  {
    CFRelease(v65);
  }

  v66 = *(DerivedStorage + 64);
  *(DerivedStorage + 64) = v39;
  if (v39)
  {
    CFRetain(v39);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  FigReadWriteLockUnlockForWrite();
  if (v57 >= 1)
  {
    for (j = 0; j < v57; ++j)
    {
      CFArrayGetValueAtIndex(v39, j);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_2_60();
      CMNotificationCenterAddListener();
    }
  }

  FPSupport_AppendDeferredTransactionChangeForAttachingFigVideoLayersToClientLayers();
  FPSupport_AppendDeferredTransactionChangeForSettingEdgeAntialiasingMaskOnLayers(cf, 0, v39);
  v68 = OUTLINED_FUNCTION_266_0();
  updated = remoteXPCPlayer_updateVideoLayersBeingServicedAndDisplayList(v68, v69);
  if (!updated)
  {
    v58 = v57;
    v12 = v87;
    if (v39)
    {
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  v62 = updated;
  v12 = v87;
LABEL_84:
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, MutableCopy);
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, v12);
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, v82);
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, v39);
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, v51);
  FigDeferredTransactionCommit(cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v85)
  {
    CFRelease(v85);
  }

  objc_autoreleasePoolPop(context);
  return v62;
}

void remoteXPCPlayer_setNetworkCacheURL(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_180_1();
  a11 = 0;
  cf = 0;
  a10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v20)
  {
    v25 = CFGetTypeID(v20);
    if (v25 != CFURLGetTypeID())
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM();
      goto LABEL_14;
    }

    FigSandboxRegisterDirectoryURLWithProcessAndCopyRegistration();
  }

  if (!remoteXPCPlayer_GetObjectID(v21, &a10) && !FigXPCCreateBasicMessage() && !FigXPCMessageSetCFURL() && (!cf || !FigXPCMessageSetSandboxRegistration()) && !FigXPCRemoteClientSendSyncMessage())
  {
    v26 = *(DerivedStorage + 280);
    v27 = cf;
    *(DerivedStorage + 280) = cf;
    if (v27)
    {
      CFRetain(v27);
    }

    if (v26)
    {
      CFRelease(v26);
    }
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_860();
}

uint64_t remoteXPCPlayer_setMasterClock()
{
  OUTLINED_FUNCTION_180_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  xdict = 0;
  v13 = 0;
  cf = 0;
  value = 0;
  if (*(DerivedStorage + 176) == v0)
  {
    v8 = 0;
    goto LABEL_24;
  }

  v3 = DerivedStorage;
  ObjectID = remoteXPCPlayer_GetObjectID(v1, &v13);
  if (ObjectID)
  {
    goto LABEL_26;
  }

  if (!v0)
  {
    v6 = *(v3 + 176);
    if (v6)
    {
      CFRelease(v6);
      v5 = 0;
      *(v3 + 176) = 0;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_16;
  }

  if (CMClockGetHostTimeClock() == v0)
  {
    v5 = 1;
LABEL_13:
    v7 = *(v3 + 176);
    *(v3 + 176) = v0;
    CFRetain(v0);
    if (v7)
    {
      CFRelease(v7);
    }

LABEL_16:
    OUTLINED_FUNCTION_2_22();
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      xpc_dictionary_set_int64(xdict, "MasterClockType", v5);
      if (value)
      {
        xpc_dictionary_set_uint64(xdict, "MasterClockObjectID", value);
      }

      ObjectID = FigXPCMessageSetCFObject();
      if (!ObjectID)
      {
        v8 = FigXPCRemoteClientSendSyncMessage();
        if (!v8)
        {
          *(v3 + 184) = 1;
        }

        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

  if (!CMClockIsAudioSessionClock())
  {
    ObjectID = FigAudioDeviceClockXPCRemoteGetObjectID();
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_243();
      ObjectID = FigSignalErrorAtGM();
    }

    goto LABEL_26;
  }

  ObjectID = FigAudioSessionClockCopyClockConfiguration(v0, &cf);
  if (!ObjectID)
  {
    v5 = 3;
    goto LABEL_13;
  }

LABEL_26:
  v8 = ObjectID;
LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_24:
  FigXPCRelease();
  return v8;
}

void remoteXPCPlayer_reevaluateSpatialTrackingObjectsAndUpdateLabelIfNecessary(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (qword_1ED4CA8B8 != -1)
  {
    dispatch_once(&qword_1ED4CA8B8, &__block_literal_global_27);
  }

  if (!_MergedGlobals_44)
  {
    goto LABEL_31;
  }

  if (!*(DerivedStorage + 264))
  {
    v3 = *(DerivedStorage + 272);
    *(DerivedStorage + 272) = 0;
    if (FigUseVideoReceiverForCALayer())
    {
      FigReadWriteLockLockForRead();
      v4 = *(DerivedStorage + 304);
      if (v4 && CFArrayGetCount(v4))
      {
LABEL_11:
        CFGetAllocator(a1);
        v6 = FigCFSetCreateFromArray();
        goto LABEL_13;
      }
    }

    else
    {
      FigReadWriteLockLockForRead();
      v5 = *(DerivedStorage + 56);
      if (v5 && CFArrayGetCount(v5))
      {
        goto LABEL_11;
      }
    }

    v6 = 0;
LABEL_13:
    FigReadWriteLockUnlockForRead();
    Count = FigCFSetGetCount();
    v8 = *(DerivedStorage + 256);
    if (Count < 1)
    {
      if (v8)
      {
        CFRelease(v8);
        LOBYTE(v9) = 0;
        *(DerivedStorage + 256) = 0;
        if (!v3)
        {
          goto LABEL_25;
        }
      }

      else
      {
        LOBYTE(v9) = 0;
        if (!v3)
        {
          goto LABEL_25;
        }
      }

LABEL_23:
      Difference = FigCFSetCreateDifference();
      if (Difference)
      {
        v13 = Difference;
        OUTLINED_FUNCTION_3_48();
        CFSetApplyFunction(v14, v15, 0);
        CFRelease(v13);
      }

LABEL_25:
      *(DerivedStorage + 272) = v6;
      if ((v9 & 1) == 0)
      {
        FigXPCSendStdSetPropertyMessage();
      }

      if (v3)
      {
        OUTLINED_FUNCTION_424_0();

        CFRelease(v16);
        return;
      }

LABEL_31:
      OUTLINED_FUNCTION_424_0();
      return;
    }

    if (v8 || (_os_feature_enabled_impl() & 1) != 0)
    {
      LOBYTE(v9) = 1;
      goto LABEL_17;
    }

    v18 = CMBaseObjectGetDerivedStorage();
    if (qword_1ED4CA8B8 != -1)
    {
      dispatch_once(&qword_1ED4CA8B8, &__block_literal_global_27);
    }

    if (_MergedGlobals_44)
    {
      v19 = getpid();
      v20 = FigAtomicIncrement32();
      v21 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"com.apple.coremedia.STS.%s.%d-%d", v18 + 208, v19, v20);
      v9 = v21;
      v22 = *(v18 + 256);
      *(v18 + 256) = v21;
      if (v21)
      {
        CFRetain(v21);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      *(v18 + 264) = 0;
      if (!v9)
      {
LABEL_17:
        OUTLINED_FUNCTION_3_48();
        CFSetApplyFunction(v6, v10, v11);
        if (!v3)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      CFRelease(v9);
    }

    LOBYTE(v9) = 0;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_424_0();

  FigSignalErrorAtGM();
}

uint64_t remoteXPCPlayer_updateClosedCaptionHostLayerArray(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v36 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v35 = 0;
  FigBaseObject = FigPlayerGetFigBaseObject(a1);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v10 = 0;
LABEL_12:
    Mutable = 0;
    v16 = 4294954514;
    goto LABEL_13;
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = v5(FigBaseObject, @"DisplayingClosedCaptions", *MEMORY[0x1E695E480], &v35);
  if (v7 || (v7 = FigDeferredTransactionCreate(v6, &cf), v7))
  {
    v16 = v7;
    v10 = 0;
    goto LABEL_56;
  }

  v8 = cf;
  if (v35 != *MEMORY[0x1E695E4D0])
  {
    remoteXPCPlayer_removeClosedCaptionHostLayerArray();
    v10 = 0;
LABEL_43:
    Mutable = 0;
LABEL_54:
    v16 = 0;
    goto LABEL_13;
  }

  FigReadWriteLockLockForRead();
  v9 = *(DerivedStorage + 112);
  if (!v9)
  {
    FigReadWriteLockUnlockForRead();
    v10 = 0;
LABEL_42:
    remoteXPCPlayer_removeClosedCaptionHostLayerArray();
    goto LABEL_43;
  }

  v10 = CFRetain(v9);
  FigReadWriteLockUnlockForRead();
  if (!v10)
  {
    goto LABEL_42;
  }

  Count = CFArrayGetCount(v10);
  if (Count < 1)
  {
    goto LABEL_42;
  }

  v12 = Count;
  SInt32 = FigCFNumberCreateSInt32();
  v14 = FigPlayerGetFigBaseObject(a1);
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v15)
  {
    v16 = 4294954514;
    if (!SInt32)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v16 = v15(v14, 0x1F0B29DD8, SInt32);
  if (SInt32)
  {
LABEL_25:
    CFRelease(SInt32);
  }

LABEL_26:
  if (v16)
  {
LABEL_56:
    Mutable = 0;
    goto LABEL_13;
  }

  v19 = FigPlayerGetFigBaseObject(a1);
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v20)
  {
    goto LABEL_12;
  }

  v16 = v20(v19, 0x1F0B29DF8, 0, &v36);
  Mutable = 0;
  if (!v16 && v36)
  {
    if (v12 != CFArrayGetCount(v36))
    {
      Mutable = 0;
      v16 = 4294954436;
      goto LABEL_13;
    }

    v21 = *(DerivedStorage + 120);
    if (v21)
    {
      v21 = CFArrayGetCount(v21);
    }

    if (v21 <= v12)
    {
      if (v21 < v12)
      {
        while (1)
        {
          v27 = *(DerivedStorage + 120);
          if (v27)
          {
            v27 = CFArrayGetCount(v27);
          }

          if (v27 >= v12)
          {
            break;
          }

          CFArrayAppendValue(*(DerivedStorage + 120), +[FigBaseCALayerHost layer]);
        }
      }

      Mutable = 0;
    }

    else
    {
      v22 = OUTLINED_FUNCTION_9_2();
      Mutable = CFArrayCreateMutable(v22, v23, v24);
      while (1)
      {
        v25 = *(DerivedStorage + 120);
        if (v25)
        {
          v25 = CFArrayGetCount(v25);
        }

        if (v25 <= v12)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 120), 0);
        CFArrayAppendValue(Mutable, ValueAtIndex);
        CFArrayRemoveValueAtIndex(*(DerivedStorage + 120), 0);
      }

      FPSupport_AppendDeferredTransactionChangeForRemovingEachLayerInArrayFromItsSuperlayer(v8, Mutable, "remoteXPCPlayer_updateClosedCaptionHostLayerArray");
    }

    CFRetain(v10);
    if (a1)
    {
      CFRetain(a1);
    }

    OUTLINED_FUNCTION_2_49();
    v29 = 3221225472;
    v30 = __remoteXPCPlayer_updateClosedCaptionHostLayerArray_block_invoke;
    v31 = &__block_descriptor_48_e5_v8__0l;
    v32 = v10;
    v33 = a1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    FPSupport_AppendDeferredTransactionChangeForUpdatingHostLayersInLayers(v8, v36, *(DerivedStorage + 120), v10, "remoteXPCPlayer_updateClosedCaptionHostLayerArray");
    goto LABEL_54;
  }

LABEL_13:
  FigDeferredTransactionCommit(cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  objc_autoreleasePoolPop(v2);
  return v16;
}

uint64_t remoteXPCItem_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFDateRef *a4)
{
  v33 = 0;
  if (!a1 || !a2 || !a4)
  {
    OUTLINED_FUNCTION_374();
    v11 = FigSignalErrorAtGM();
    v8 = 0;
    goto LABEL_31;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = remoteXPCItem_copyOwningPlayer();
  ObjectID = remoteXPCItem_GetObjectID(a1, &v33);
  if (ObjectID)
  {
    goto LABEL_46;
  }

  if (CFEqual(@"Timebase", a2))
  {
    v10 = DerivedStorage[5];
    if (!v10)
    {
LABEL_8:
      v11 = 0;
      *a4 = v10;
      goto LABEL_31;
    }

LABEL_7:
    v10 = CFRetain(v10);
    goto LABEL_8;
  }

  if (CFEqual(a2, @"SynchronizedLayers"))
  {
    FigSimpleMutexLock();
    v12 = DerivedStorage[20];
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    *a4 = v12;
    FigSimpleMutexUnlock();
    goto LABEL_13;
  }

  if (!CFEqual(a2, @"CPEProtector"))
  {
    if (CFEqual(a2, @"ImageQueueGauge"))
    {
      v24 = a1;
      v25 = 1231647079;
    }

    else
    {
      if (!CFEqual(a2, @"PriorImageQueueGauge"))
      {
        if (CFEqual(a2, @"VisualContextArray"))
        {
          OUTLINED_FUNCTION_2_49();
          v28 = 3221225472;
          v29 = __remoteXPCItem_CopyProperty_block_invoke;
          v30 = &__block_descriptor_48_e5_v8__0l;
          v31 = a4;
          v32 = DerivedStorage;
          dispatch_sync(v22, &block);
LABEL_13:
          v11 = 0;
          goto LABEL_31;
        }

        if (CFEqual(a2, @"VideoCompositor"))
        {
          v10 = DerivedStorage[26];
          if (v10)
          {
            goto LABEL_7;
          }
        }

        else if (CFEqual(a2, @"currentDate") || CFEqual(a2, @"currentDateAndTime"))
        {
          if (remoteXPCItem_copyCurrentDateProperty(a1, v33, a2, a4))
          {
            goto LABEL_13;
          }
        }

        else if (CFEqual(a2, @"MetricEventTimeline"))
        {
          remoteXPCItem_copyMetricEventTimeline(a1, a4);
          goto LABEL_13;
        }

        ObjectID = FigXPCSendStdCopyPropertyMessage();
LABEL_46:
        v11 = ObjectID;
        goto LABEL_31;
      }

      v24 = a1;
      v25 = 1232103783;
    }

    remoteXPCItem_copyImageQueueGauge(v24, v25, a4, v17, v18, v19, v20, v21, v26, block, v28, v29, v30, v31, v32, v33, xdict, v35, cf, v37);
    goto LABEL_46;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  v37 = 0;
  v35 = 0;
  cf = 0;
  xdict = 0;
  if (*(v13 + 9))
  {
    OUTLINED_FUNCTION_374();
    v14 = FigSignalErrorAtGM();
    goto LABEL_50;
  }

  v14 = remoteXPCItem_GetObjectID(a1, &v37);
  if (v14)
  {
    goto LABEL_50;
  }

  v14 = FigXPCCreateBasicMessage();
  if (v14)
  {
    goto LABEL_50;
  }

  v14 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v14)
  {
    goto LABEL_50;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
    v16 = 0;
    goto LABEL_27;
  }

  v14 = FigCPEProtectorXPCRemoteRetainCopiedCPEProtector(uint64, &cf);
  if (v14)
  {
LABEL_50:
    v11 = v14;
    goto LABEL_28;
  }

  v16 = cf;
LABEL_27:
  v11 = 0;
  *a4 = v16;
  cf = 0;
LABEL_28:
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_51_7();
LABEL_31:
  FigXPCRelease();
  FigXPCRelease();
  if (v8)
  {
    CFRelease(v8);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v11;
}

void remoteXPCItem_copyImageQueueGauge(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t xdict, uint64_t a10, CFTypeRef cf, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  a12 = 0;
  if (!v23 || *(DerivedStorage + 9))
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

  else if (!remoteXPCItem_GetObjectID(v25, &a12) && !FigXPCCreateBasicMessage())
  {
    OUTLINED_FUNCTION_5_44();
    if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
    {
      uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
      if (!uint64)
      {
        v28 = 0;
        goto LABEL_10;
      }

      if (!FigImageQueueGaugeXPCRemoteRetainCopiedImageQueueGauge(uint64, &cf))
      {
        v28 = cf;
LABEL_10:
        *v23 = v28;
        cf = 0;
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_860();
}

uint64_t remoteXPCItem_copyMetricEventTimeline(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  if (!a2 || *(DerivedStorage + 9))
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

  else if (!remoteXPCItem_GetObjectID(a1, &v6))
  {
    OUTLINED_FUNCTION_2_22();
    if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFString())
    {
      OUTLINED_FUNCTION_10_23();
      if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        if (xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]))
        {
          FigMetricEventTimelineCreateRemoteWithObjectID();
        }
      }
    }
  }

  FigXPCRelease();
  return FigXPCRelease();
}

__CFArray *remoteXPCItem_copyTagCollectionArrayAsDataArray(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_187();
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v6 = Count;
      Mutable = CFArrayCreateMutable(v3, Count, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        FigSignalErrorAtGM();
        return Mutable;
      }

      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v8);
        v10 = CMTagCollectionCopyAsData(ValueAtIndex, v3);
        if (!v10)
        {
          break;
        }

        v11 = v10;
        CFArrayAppendValue(Mutable, v10);
        CFRelease(v11);
        if (v6 == ++v8)
        {
          return Mutable;
        }
      }

      CFRelease(Mutable);
    }
  }

  return 0;
}

uint64_t remoteXPCItem_GetDimensions(uint64_t a1, float *a2, float *a3)
{
  v12 = 0;
  ObjectID = remoteXPCItem_GetObjectID(a1, &v12);
  if (ObjectID || (OUTLINED_FUNCTION_2_22(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (OUTLINED_FUNCTION_10_23(), ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(), ObjectID))
  {
    v9 = ObjectID;
  }

  else
  {
    v6 = xpc_dictionary_get_double(0, "Width");
    v7 = xpc_dictionary_get_double(0, "Height");
    if (a2)
    {
      v8 = v6;
      *a2 = v8;
    }

    v9 = 0;
    if (a3)
    {
      v10 = v7;
      *a3 = v10;
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13();
  return v9;
}

uint64_t remoteXPCItem_GetDuration(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  ObjectID = remoteXPCItem_GetObjectID(a1, &v8);
  if (ObjectID || (OUTLINED_FUNCTION_16_14(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (ObjectID = OUTLINED_FUNCTION_25_13(), ObjectID))
  {
    CMTime = ObjectID;
  }

  else if (a2)
  {
    CMTime = FigXPCMessageGetCMTime();
    if (!CMTime)
    {
      *a2 = v6;
      *(a2 + 16) = v7;
    }
  }

  else
  {
    CMTime = 0;
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  return CMTime;
}

uint64_t remoteXPCItem_SetCurrentTime(const void *a1, uint64_t a2, unsigned int a3)
{
  OUTLINED_FUNCTION_7_26();
  ObjectID = remoteXPCItem_GetObjectID(v5, v6);
  if (ObjectID || (OUTLINED_FUNCTION_16_14(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (ObjectID = OUTLINED_FUNCTION_6_39(), ObjectID))
  {
    v8 = ObjectID;
  }

  else
  {
    xpc_dictionary_set_uint64(xdict, "TimeFlags", a3);
    v8 = OUTLINED_FUNCTION_25_13();
    if (!v8)
    {
      remoteXPCItem_HandleTimebaseSynchronizationUpdate(a1, v10);
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  return v8;
}

void remoteXPCItem_CopyTrackProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, uint64_t a12, xpc_object_t xdict, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_45_6();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  a11 = 0;
  v34 = remoteXPCItem_copyOwningPlayer();
  if (!v29 || !v27)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM();
    goto LABEL_16;
  }

  if (remoteXPCItem_GetObjectID(v33, &a11))
  {
    goto LABEL_16;
  }

  if (!CFEqual(@"FormatDescriptionArray", v29))
  {
    OUTLINED_FUNCTION_10_23();
    if (!FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_uint64(0, "TrackID", v31);
      if (!FigXPCMessageSetCFString())
      {
        OUTLINED_FUNCTION_5_44();
        if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
        {
          FigXPCMessageCopyCFObject();
        }
      }
    }

LABEL_16:
    if (!v34)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_26();
  if (!remoteXPCItem_GetObjectID(v33, v35))
  {
    OUTLINED_FUNCTION_16_14();
    if (!FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_uint64(xdict, "TrackID", v31);
      if (!OUTLINED_FUNCTION_25_13())
      {
        FigXPCMessageCopyFormatDescriptionArray();
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v34)
  {
LABEL_10:
    CFRelease(v34);
  }

LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_44_9();
}

uint64_t remoteXPCItem_MakeReadyForInspection(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v6 = 0;
  if (remoteXPCItem_GetObjectID(a1, &v6) || (OUTLINED_FUNCTION_2_22(), FigXPCCreateBasicMessage()) || FigXPCMessageSetCFArray())
  {
    OUTLINED_FUNCTION_37_8();
  }

  else
  {
    OUTLINED_FUNCTION_10_23();
    v3 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (a3 && !v3)
    {
      *a3 = xpc_dictionary_get_BOOL(0, "AlreadyReady");
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_30_10();
  return v3;
}

void remoteXPCItem_CopyCommonMetadata(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFDataRef theData, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v22;
  a12 = 0;
  if (!v23 || !remoteXPCItem_GetObjectID(v21, &a12) && (OUTLINED_FUNCTION_2_22(), !FigXPCCreateBasicMessage()) && !FigXPCMessageSetCFArray() && (OUTLINED_FUNCTION_10_23(), !FigXPCRemoteClientSendSyncMessageCreatingReply()) && !FigXPCMessageCopyCFData())
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM();
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_26_13();
  OUTLINED_FUNCTION_860();
}

void remoteXPCItem_CopyChapterImageData(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, uint64_t a10, xpc_object_t xdict, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v25;
  a12 = 0;
  if (v23)
  {
    v26 = v24;
    v27 = v23;
    v28 = v22;
    if (!remoteXPCItem_GetObjectID(v21, &a12))
    {
      OUTLINED_FUNCTION_2_22();
      if (!FigXPCCreateBasicMessage())
      {
        xpc_dictionary_set_int64(0, "ChapterImageID", v28);
        xpc_dictionary_set_BOOL(0, "WantChapterImageFormatDesc", v26 != 0);
        OUTLINED_FUNCTION_10_23();
        if (!FigXPCRemoteClientSendSyncMessageCreatingReply() && !FigXPCMessageCopyCFData() && (!v26 || !FigXPCMessageCopyFormatDescription()))
        {
          *v27 = 0;
        }
      }
    }
  }

  else
  {
    FigSignalErrorAtGM();
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_860();
}

uint64_t remoteXPCItem_GetNextThumbnailTime(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  if (!a4)
  {
    ObjectID = FigSignalErrorAtGM();
LABEL_9:
    CMTime = ObjectID;
    goto LABEL_7;
  }

  ObjectID = remoteXPCItem_GetObjectID(a1, &v8);
  if (ObjectID)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_14();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_9;
  }

  ObjectID = OUTLINED_FUNCTION_6_39();
  if (ObjectID)
  {
    goto LABEL_9;
  }

  xpc_dictionary_set_uint64(0, "ThumbnailFlags", a3);
  CMTime = OUTLINED_FUNCTION_25_13();
  if (!CMTime)
  {
    CMTime = FigXPCMessageGetCMTime();
  }

LABEL_7:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  return CMTime;
}

void remoteXPCItem_SetCurrentTimeWithRange(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, xpc_object_t xdict, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_45_6();
  v24 = v23;
  v26 = v25;
  OUTLINED_FUNCTION_7_26();
  if (!remoteXPCItem_GetObjectID(v27, v28))
  {
    OUTLINED_FUNCTION_16_14();
    if (!FigXPCCreateBasicMessage() && !OUTLINED_FUNCTION_20_9())
    {
      xpc_dictionary_set_uint64(xdict, "TimeFlags", v24);
      if (!OUTLINED_FUNCTION_6_39() && !OUTLINED_FUNCTION_20_9() && !OUTLINED_FUNCTION_25_13())
      {
        remoteXPCItem_HandleTimebaseSynchronizationUpdate(v26, a11);
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_44_9();
}

uint64_t remoteXPCItem_SetTrackProperty(uint64_t a1, int a2, const void *a3, CFNumberRef a4)
{
  v19[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = remoteXPCItem_copyOwningPlayer();
  if (!a3)
  {
    OUTLINED_FUNCTION_374();
    goto LABEL_38;
  }

  ObjectID = remoteXPCItem_GetObjectID(a1, v19);
  if (ObjectID)
  {
    goto LABEL_39;
  }

  if (CFEqual(@"AudioProcessingTap", a3))
  {
    valuePtr = 0;
    if (!a4 || (v11 = CFGetTypeID(a4), v11 == MTAudioProcessingTapGetTypeID()))
    {
      FigSimpleMutexLock();
      v12 = *(DerivedStorage + 200);
      *(DerivedStorage + 200) = a4;
      if (a4)
      {
        CFRetain(a4);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      FigSimpleMutexUnlock();
      if (!a4)
      {
        goto LABEL_13;
      }

      ObjectID = MTAudioProcessingTapXPCRemoteGetObjectID(a4, &valuePtr);
      if (!ObjectID)
      {
        a4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
LABEL_13:
        v13 = a4;
        goto LABEL_14;
      }

LABEL_39:
      v15 = ObjectID;
      v13 = 0;
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_374();
LABEL_38:
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_39;
  }

  if (!CFEqual(@"ExtractionIDArray", a3))
  {
    v13 = 0;
LABEL_14:
    OUTLINED_FUNCTION_10_23();
    v14 = FigXPCCreateBasicMessage();
    if (!v14)
    {
      xpc_dictionary_set_uint64(0, "TrackID", a2);
      v14 = FigXPCMessageSetCFString();
      if (!v14)
      {
        v14 = FigXPCMessageSetCFObject();
        if (!v14)
        {
          v14 = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }

    v15 = v14;
    goto LABEL_19;
  }

  v17 = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  memset(&v19[1], 0, 32);
  if (*(v17 + 192))
  {
    v15 = 0;
  }

  else
  {
    updated = remoteXPCPlayer_GetObjectID(v9, &valuePtr);
    if (!updated)
    {
      updated = FigXPCCreateBasicMessage();
      if (!updated)
      {
        updated = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!updated)
        {
          updated = FigXPCCreateBasicMessage();
          if (!updated)
          {
            FigRemote_ShouldConnectToMediaparserdForFileParsing();
            FigRemote_ShouldConnectToMediaplaybackd();
            updated = FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2();
            if (!updated)
            {
              updated = OUTLINED_FUNCTION_25_13();
            }
          }
        }
      }
    }

    v15 = updated;
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  v13 = 0;
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_19:
  OUTLINED_FUNCTION_51_7();
  if (v9)
  {
    CFRelease(v9);
  }

  FigXPCRelease();
  if (v13)
  {
    CFRelease(v13);
  }

  return v15;
}

uint64_t remoteXPCItem_CopyFormatReader(uint64_t a1, void *a2)
{
  v18 = 0;
  v19 = 0;
  v16 = 0;
  xdict = 0;
  if (!a2)
  {
    ObjectID = FigSignalErrorAtGM();
LABEL_9:
    v2 = ObjectID;
    goto LABEL_7;
  }

  ObjectID = remoteXPCItem_GetObjectID(a1, &v19);
  if (ObjectID)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_22();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_10_23();
  ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_9;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "FormatReaderObjectID");
  v6 = FigFormatReaderXPCRemoteRetainCopiedFormatReader(uint64, 0, &v16);
  v14 = OUTLINED_FUNCTION_41_8(v6, v7, v8, v9, v10, v11, v12, v13, v16);
  if (v2)
  {
    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    *a2 = v14;
    v16 = 0;
  }

LABEL_7:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  return v2;
}

uint64_t remoteXPCItem_SeekToDateWithID(uint64_t a1, uint64_t a2, int a3)
{
  v33 = 0;
  if (!a2)
  {
    FigSignalErrorAtGM();
    goto LABEL_7;
  }

  if (remoteXPCItem_GetObjectID(a1, &v33))
  {
LABEL_7:
    OUTLINED_FUNCTION_37_8();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_5_44();
  v5 = FigXPCCreateBasicMessage();
  OUTLINED_FUNCTION_18_12(v5, v6, v7, v8, v9, v10, v11, v12, 0);
  if (!v3)
  {
    v13 = FigXPCMessageSetCFDate();
    v21 = OUTLINED_FUNCTION_18_12(v13, v14, v15, v16, v17, v18, v19, v20, v31);
    xpc_dictionary_set_int64(v21, "SeekID", a3);
    v22 = FigXPCRemoteClientSendSyncMessage();
    OUTLINED_FUNCTION_18_12(v22, v23, v24, v25, v26, v27, v28, v29, v32);
  }

LABEL_5:
  FigXPCRelease();
  OUTLINED_FUNCTION_30_10();
  return v3;
}

void remoteXPCItem_SetCurrentTimeWithRangeAndID(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, xpc_object_t xdict, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_45_6();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  OUTLINED_FUNCTION_7_26();
  if (!remoteXPCItem_GetObjectID(v29, v30))
  {
    OUTLINED_FUNCTION_16_14();
    if (!FigXPCCreateBasicMessage() && !OUTLINED_FUNCTION_20_9())
    {
      xpc_dictionary_set_uint64(xdict, "TimeFlags", v26);
      if (!OUTLINED_FUNCTION_20_9() && !OUTLINED_FUNCTION_20_9())
      {
        xpc_dictionary_set_int64(xdict, "SeekID", v24);
        if (!OUTLINED_FUNCTION_25_13())
        {
          remoteXPCItem_HandleTimebaseSynchronizationUpdate(v28, a11);
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_26_13();
  OUTLINED_FUNCTION_44_9();
}

uint64_t remoteXPCItem_CopyAsset(uint64_t a1, void *a2)
{
  v18 = 0;
  v19 = 0;
  v16 = 0;
  xdict = 0;
  if (!a2)
  {
    ObjectID = FigSignalErrorAtGM();
LABEL_9:
    v2 = ObjectID;
    goto LABEL_7;
  }

  ObjectID = remoteXPCItem_GetObjectID(a1, &v19);
  if (ObjectID)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_22();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_10_23();
  ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_9;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "AssetObjectID");
  v6 = FigAssetXPCRemoteRetainCopiedAsset(uint64, &v16);
  v14 = OUTLINED_FUNCTION_41_8(v6, v7, v8, v9, v10, v11, v12, v13, v16);
  if (v2)
  {
    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    *a2 = v14;
    v16 = 0;
  }

LABEL_7:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  return v2;
}

void remoteXPCItem_ExtractAndRetainNextSampleBuffer(uint64_t a1, int a2, int a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  v9 = 0;
  CMBaseObjectGetDerivedStorage();
  v8 = remoteXPCItem_copyOwningPlayer();
  if (*(CMBaseObjectGetDerivedStorage() + 9))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
  }

  else if (!remoteXPCItem_GetObjectID(a1, &v9))
  {
    OUTLINED_FUNCTION_2_22();
    if (!FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_uint64(0, "TrackID", a2);
      xpc_dictionary_set_uint64(0, "ExtractionID", a3);
      OUTLINED_FUNCTION_10_23();
      if (!FigXPCRemoteClientSendSyncMessageCreatingReply() && !FigXPCMessageCopyCMSampleBuffer())
      {
        *a4 = 0;
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_26_13();
  if (v8)
  {
    CFRelease(v8);
  }

  OUTLINED_FUNCTION_424_0();
}

uint64_t remoteXPCItem_SetCurrentTimeWithOptions(const void *a1)
{
  OUTLINED_FUNCTION_7_26();
  ObjectID = remoteXPCItem_GetObjectID(v2, v3);
  if (ObjectID || (OUTLINED_FUNCTION_16_14(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (ObjectID = OUTLINED_FUNCTION_6_39(), ObjectID) || (ObjectID = FigXPCMessageSetCFDictionary(), ObjectID))
  {
    v5 = ObjectID;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_25_13();
    if (!v5)
    {
      remoteXPCItem_HandleTimebaseSynchronizationUpdate(a1, v7);
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  return v5;
}

void remoteXPCPlayer_AddToPlayQueue(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFDataRef theData, xpc_object_t a10, xpc_object_t xdict, uint64_t a12, uint64_t value, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_45_6();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  a14 = 0;
  a12 = 0;
  if (!v29)
  {
    goto LABEL_18;
  }

  v34 = DerivedStorage;
  if (!remoteXPCPlayer_GetObjectID(v31, &a14) && !remoteXPCItem_GetObjectID(v29, &value))
  {
    v35 = remoteXPCItem_copyOwningPlayer();
    v36 = v35;
    if (v35)
    {
      CFRelease(v35);
    }

    if (v36 != v31)
    {
      goto LABEL_18;
    }

    if (v27)
    {
      if (remoteXPCItem_GetObjectID(v27, &a12))
      {
        goto LABEL_17;
      }

      v37 = remoteXPCItem_copyOwningPlayer();
      v38 = v37;
      if (v37)
      {
        CFRelease(v37);
      }

      if (v38 != v31)
      {
        goto LABEL_18;
      }
    }

    if (!FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_uint64(0, "ItemObjectID", value);
      xpc_dictionary_set_uint64(0, "AfterItemObjectID", a12);
      OUTLINED_FUNCTION_10_23();
      if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        FigSimpleMutexLock();
        CFSetAddValue(*(v34 + 32), v29);
        FigSimpleMutexUnlock();
        if (xpc_dictionary_get_BOOL(0, "AddedItemIsNowCurrent") && !FigXPCMessageCopyCFData())
        {
LABEL_18:
          OUTLINED_FUNCTION_243();
          FigSignalErrorAtGM();
        }
      }
    }
  }

LABEL_17:
  FigDeferredTransactionCommit(0, 0);
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_51_7();
  objc_autoreleasePoolPop(v32);
  OUTLINED_FUNCTION_44_9();
}

void remoteXPCPlayer_RemoveFromPlayQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_180_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  a11 = 0;
  a12 = 0;
  if (!v20)
  {
    goto LABEL_34;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 9))
  {
    goto LABEL_30;
  }

  v25 = remoteXPCItem_copyOwningPlayer();
  v26 = v25;
  if (v25)
  {
    CFRelease(v25);
  }

  if (v26 != v21)
  {
LABEL_30:
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
    goto LABEL_28;
  }

  if (!remoteXPCItem_GetObjectID(v20, &a11))
  {
LABEL_34:
    if (!remoteXPCPlayer_GetObjectID(v21, &a12) && !FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_uint64(0, "ItemObjectID", a11);
      if (!FigXPCRemoteClientSendSyncMessage())
      {
        FigSimpleMutexLock();
        v27 = *(DerivedStorage + 32);
        if (v20)
        {
          CFSetRemoveValue(v27, v20);
        }

        else
        {
          CFSetRemoveAllValues(v27);
        }

        FigSimpleMutexUnlock();
        FigSimpleMutexLock();
        v28 = remoteXPCPlayer_copySyncItem(v21);
        v29 = v28;
        if (v20)
        {
          v30 = v28 == v20;
        }

        else
        {
          v30 = 1;
        }

        v31 = v30;
        if (v30)
        {
          v32 = *(DerivedStorage + 80);
          if (v32)
          {
            CFRelease(v32);
            *(DerivedStorage + 80) = 0;
          }
        }

        FigSimpleMutexUnlock();
        v33 = v31 ^ 1;
        if (!v29)
        {
          v33 = 1;
        }

        if ((v33 & 1) == 0)
        {
          remoteXPCItem_updateLayerSync(v29, 0, 0);
          goto LABEL_27;
        }

        if (v29)
        {
LABEL_27:
          CFRelease(v29);
        }
      }
    }
  }

LABEL_28:
  FigXPCRelease();
  OUTLINED_FUNCTION_26_13();
  OUTLINED_FUNCTION_860();
}

void remoteXPCPlayer_CopyPlayQueueItem(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t xdict, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v23;
  a11 = 0;
  a12 = 0;
  if (!v24)
  {
    goto LABEL_14;
  }

  v25 = v22;
  v26 = v21;
  if (remoteXPCPlayer_GetObjectID(v21, &a12))
  {
    goto LABEL_8;
  }

  if (v25)
  {
    v27 = remoteXPCItem_copyOwningPlayer();
    v28 = v27;
    if (v27)
    {
      CFRelease(v27);
    }

    if (v28 == v26)
    {
      if (remoteXPCItem_GetObjectID(v25, &a11))
      {
        goto LABEL_8;
      }

      goto LABEL_4;
    }

LABEL_14:
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM();
    goto LABEL_8;
  }

LABEL_4:
  if (!FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_uint64(0, "AfterItemObjectID", a11);
    OUTLINED_FUNCTION_5_44();
    if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
    {
      if (xpc_dictionary_get_uint64(0, "ItemObjectID"))
      {
        FigXPCRemoteClientLookupAndRetainAssociatedObject();
      }
    }
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_860();
}

uint64_t remoteXPCPlayer_SetRate(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  v5 = *(DerivedStorage + 188);
  ObjectID = remoteXPCPlayer_GetObjectID(a1, &v10);
  if (ObjectID || (OUTLINED_FUNCTION_5_44(), ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v7 = ObjectID;
  }

  else
  {
    xpc_dictionary_set_double(0, "Rate", a2);
    v7 = OUTLINED_FUNCTION_50_5();
    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = a2;
    }

    *(DerivedStorage + 188) = v8;
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  return v7;
}

uint64_t remoteXPCPlayer_SetRateWithFade(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  ObjectID = remoteXPCPlayer_GetObjectID(a1, &v8);
  if (ObjectID || (OUTLINED_FUNCTION_16_14(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (xpc_dictionary_set_double(0, "Rate", a2), ObjectID = OUTLINED_FUNCTION_20_9(), ObjectID))
  {
    v6 = ObjectID;
  }

  else
  {
    v6 = FigXPCRemoteClientSendSyncMessage();
    if (!v6)
    {
      *(DerivedStorage + 188) = a2;
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_22_13();
  return v6;
}

uint64_t remoteXPCPlayer_StartPreroll(float a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_21_12();
  ObjectID = remoteXPCPlayer_GetObjectID(v6, v7);
  if (ObjectID)
  {
    v3 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v9 = FigXPCCreateBasicMessage();
    v17 = OUTLINED_FUNCTION_41_8(v9, v10, v11, v12, v13, v14, v15, v16, xdict);
    if (!v3)
    {
      xpc_dictionary_set_double(v17, "Rate", a1);
      xpc_dictionary_set_int64(xdicta, "PrerollID", a3);
      v18 = OUTLINED_FUNCTION_50_5();
      OUTLINED_FUNCTION_41_8(v18, v19, v20, v21, v22, v23, v24, v25, xdicta);
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  return v3;
}

uint64_t remoteXPCPlayer_StepByCount(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_21_12();
  if (remoteXPCPlayer_GetObjectID(v4, v5))
  {
    OUTLINED_FUNCTION_37_8();
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v6 = FigXPCCreateBasicMessage();
    v14 = OUTLINED_FUNCTION_18_12(v6, v7, v8, v9, v10, v11, v12, v13, v24);
    if (!v2)
    {
      xpc_dictionary_set_int64(v14, "StepCount", a2);
      v15 = OUTLINED_FUNCTION_50_5();
      OUTLINED_FUNCTION_18_12(v15, v16, v17, v18, v19, v20, v21, v22, v25);
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_30_10();
  return v2;
}

uint64_t remoteXPCPlayer_SetRateAndAnchorTime(uint64_t a1, float a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  ObjectID = remoteXPCPlayer_GetObjectID(a1, &v12);
  if (ObjectID || (OUTLINED_FUNCTION_16_14(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (xpc_dictionary_set_double(0, "Rate", a2), ObjectID = OUTLINED_FUNCTION_20_9(), ObjectID) || (ObjectID = OUTLINED_FUNCTION_20_9(), ObjectID))
  {
    v10 = ObjectID;
  }

  else
  {
    xpc_dictionary_set_uint64(0, "Flags", a5);
    v10 = FigXPCRemoteClientSendSyncMessage();
    if (!v10)
    {
      *(DerivedStorage + 188) = a2;
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_26_13();
  return v10;
}

uint64_t remoteXPCPlayer_CreatePlaybackItemFromAsset(uint64_t a1, const void *a2, unsigned int a3, uint64_t a4, void *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = 0;
  if (!a2 || !a5)
  {
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_28;
  }

  ObjectID = remoteXPCPlayer_GetObjectID(a1, &v26);
  if (ObjectID)
  {
LABEL_28:
    started = ObjectID;
    goto LABEL_22;
  }

  v9 = *MEMORY[0x1E695E480];
  theString = 0;
  cf = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *__str = 0u;
  FigPlaybackItemGetClassID();
  OnlyTimebase = CMDerivedObjectCreate();
  if (OnlyTimebase)
  {
    goto LABEL_26;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = (DerivedStorage + 260);
  *(DerivedStorage + 260) = 0;
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(theString, v12, 10, 0x600u);
  }

  HostTimeClock = CMClockGetHostTimeClock();
  OnlyTimebase = CMTimebaseCreateWithSourceClock(v9, HostTimeClock, (DerivedStorage + 48));
  if (OnlyTimebase || (OnlyTimebase = CMTimebaseCreateWithSourceTimebase(v9, *(DerivedStorage + 48), (DerivedStorage + 32)), OnlyTimebase) || (OnlyTimebase = CMTimebaseCreateReadOnlyTimebase(), OnlyTimebase))
  {
LABEL_26:
    started = OnlyTimebase;
  }

  else
  {
    v14 = FigReentrantMutexCreate();
    *(DerivedStorage + 16) = v14;
    if (v14)
    {
      v15 = FigReentrantMutexCreate();
      *(DerivedStorage + 144) = v15;
      if (v15)
      {
        v16 = FigSimpleMutexCreate();
        *(DerivedStorage + 168) = v16;
        if (v16)
        {
          v17 = FigSimpleMutexCreate();
          *(DerivedStorage + 136) = v17;
          if (v17)
          {
            snprintf(__str, 0x50uLL, "com.apple.coremedia.visualContextSyncQueue.%s", v12);
            *(DerivedStorage + 184) = dispatch_queue_create(__str, 0);
            v18 = cf;
            goto LABEL_15;
          }
        }
      }
    }

    started = FigSignalErrorAtGM();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (started)
  {
    goto LABEL_22;
  }

  v18 = 0;
LABEL_15:
  v19 = FigXPCCreateBasicMessage();
  if (v19 || (v19 = FigAssetXPCRemoteGetObjectID(a2, &v25), v19) || (xpc_dictionary_set_uint64(0, "AssetObjectID", v25), xpc_dictionary_set_uint64(0, "ItemCreateFlags", a3), v19 = FigXPCMessageSetCFDictionary(), v19) || (OUTLINED_FUNCTION_2_22(), v19 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v19) || (uint64 = xpc_dictionary_get_uint64(0, "ItemObjectID"), v21 = CMBaseObjectGetDerivedStorage(), v22 = CMBaseObjectGetDerivedStorage(), *v21 = uint64, v19 = FigXPCRemoteClientAssociateObject(), v19))
  {
    started = v19;
  }

  else
  {
    v21[3] = FigCFWeakReferenceHolderCreateWithReferencedObject();
    CFSetAddValue(*(v22 + 16), v18);
    started = FigStartMonitoringMediaServicesProcessDeath();
    if (!started)
    {
      *a5 = v18;
      goto LABEL_22;
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_22:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return started;
}

uint64_t remoteXPCPlayer_SetRateWithOptions(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_21_12();
  ObjectID = remoteXPCPlayer_GetObjectID(a1, v5);
  if (ObjectID || (OUTLINED_FUNCTION_5_44(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (xpc_dictionary_set_double(xdict, "Rate", a2), ObjectID = FigXPCMessageSetCFDictionary(), ObjectID))
  {
    v7 = ObjectID;
  }

  else
  {
    v7 = FigXPCRemoteClientSendSyncMessage();
    if (!v7)
    {
      *(DerivedStorage + 188) = a2;
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_22_13();
  return v7;
}

uint64_t remoteXPCPlayer_SetProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17 = 0;
  memset(cf, 0, sizeof(cf));
  v15 = 0;
  v14 = 0;
  if (!a2)
  {
    v12 = FigSignalErrorAtGM();
LABEL_11:
    v9 = v12;
    if (v12)
    {
LABEL_14:
      v11 = 0;
      goto LABEL_15;
    }

LABEL_12:
    ObjectID = FPSupport_CopyCombinedSetPropertiesErrDictionary(v14, 0, a3);
LABEL_13:
    v9 = ObjectID;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_433();
  ObjectID = remoteXPCPlayer_GetObjectID(v6, &v17);
  if (ObjectID)
  {
    goto LABEL_13;
  }

  ObjectID = FPSupport_HandlePlayerSetPropertiesAndCopyModification(v4, v3, 0, remoteXPCPlayer_handleSetProperty, &v15, cf, &v14);
  if (ObjectID)
  {
    goto LABEL_13;
  }

  if (v15)
  {
    goto LABEL_12;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  ObjectID = FigXPCMessageSetCFDictionary();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (!v8)
  {
    v12 = FigXPCMessageCopyCFDictionary();
    goto LABEL_11;
  }

  v9 = v8;
  v10 = FigCFDictionaryCopyArrayOfKeys();
  v11 = FigCFCopyCompactDescription();
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_15:
  FigXPCRemoteClientKillServerOnTimeout();
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v11)
  {
    CFRelease(v11);
  }

  return v9;
}

uint64_t remoteXPCPlayer_BeginInterruption()
{
  OUTLINED_FUNCTION_21_12();
  ObjectID = remoteXPCPlayer_GetObjectID(v0, v1);
  if (ObjectID)
  {
    v4 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v3 = FigXPCCreateBasicMessage();
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_30_10();
  return v4;
}

uint64_t remoteXPCPlayer_EndInterruption()
{
  OUTLINED_FUNCTION_21_12();
  ObjectID = remoteXPCPlayer_GetObjectID(v0, v1);
  if (ObjectID)
  {
    v4 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v3 = FigXPCCreateBasicMessage();
    if (v3 || (v3 = FigXPCMessageSetCFString(), v3))
    {
      v4 = v3;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_30_10();
  return v4;
}

uint64_t remoteXPCPlayer_SetConnectionActive(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_21_12();
  if (remoteXPCPlayer_GetObjectID(v4, v5))
  {
    OUTLINED_FUNCTION_37_8();
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v6 = FigXPCCreateBasicMessage();
    v14 = OUTLINED_FUNCTION_18_12(v6, v7, v8, v9, v10, v11, v12, v13, v24);
    if (!v2)
    {
      xpc_dictionary_set_BOOL(v14, "Active", a2 != 0);
      v15 = OUTLINED_FUNCTION_50_5();
      OUTLINED_FUNCTION_18_12(v15, v16, v17, v18, v19, v20, v21, v22, v25);
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_30_10();
  return v2;
}

uint64_t remoteXPCPlayer_clearVideoLayer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void remoteXPCPlayer_updateAirPlayVideoHostLayer_cold_2(uint64_t *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v8 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], a1);
  v9 = *a1;
  if (!v8)
  {
    FPSupport_AppendDeferredTransactionChangeToClearContentsAndRemoveFromSuperLayer(v9, *a2);
    if (*a2)
    {
      CFRelease(*a2);
      *a2 = 0;
    }

    FigDeferredTransactionCommit(*a1, 0);
    v9 = *a1;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  *a4 = a3;
}

uint64_t remoteXPCPlayer_CopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_CopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_CopyProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_CopyProperty_cold_5(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  if (*(a1 + 264))
  {
    v4 = *(a1 + 256);
    if (v4)
    {
      v4 = CFRetain(v4);
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;

  return FigSimpleMutexUnlock();
}

uint64_t remoteXPCPlayer_CopyProperty_cold_6(uint64_t *a1)
{
  result = FigCFNumberCreateSInt32();
  *a1 = result;
  return result;
}

CFTypeRef remoteXPCPlayer_CopyProperty_cold_7(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695E4D0];
  if (!*(a1 + 171))
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  result = CFRetain(*v3);
  *a2 = result;
  return result;
}

CFTypeRef remoteXPCPlayer_CopyProperty_cold_8(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695E4D0];
  if (!*(a1 + 168))
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  result = CFRetain(*v3);
  *a2 = result;
  return result;
}

uint64_t remoteXPCPlayer_updateVideoLayersBeingServicedAndDisplayList_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_GetObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_GetObjectID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_GetObjectID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_handleSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_handleSetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_handleSetProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void remoteXPCPlayer_handleSetProperty_cold_5(uint64_t a1, const void *a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_38_8();
  *a3 = remoteXPCPlayer_connectVideoLayerToPlaybackItem(v5, v6, v7, v8, v9, v10, 0, 0, 0);

  CFRelease(a2);
}

uint64_t remoteXPCPlayer_handleSetProperty_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_handleSetProperty_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_handleSetProperty_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_handleSetProperty_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_handleSetProperty_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_handleSetProperty_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_handleSetProperty_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_handleSetProperty_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_handleSetProperty_cold_15(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_handleSetProperty_cold_16(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_handleSetProperty_cold_17(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCItem_Invalidate_cold_1(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  if (remoteXPCItem_isSyncItem(a2))
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 80) = 0;
    }
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v5 = *(a1 + 32);
  if (v5)
  {
    CFSetRemoveValue(v5, a2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t remoteXPCItem_SetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCItem_SetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCItem_GetObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCItem_GetObjectID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCItem_GetObjectID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCItem_GetCurrentTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCItem_handleSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCItem_handleSetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCItem_handleSetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCItem_handleSetProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCItem_handleSetProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void remoteXPCItem_handleSetProperty_cold_6(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_180_1();
  *a3 = FigSignalErrorAtGM();
  CFRelease(v4);
  CFRelease(v3);
}

uint64_t remoteXPCItem_handleSetProperty_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCItem_handleSetProperty_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCItem_handleSetProperty_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCItem_handleSetProperty_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCItem_handleSetProperty_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCItem_SetProperties_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCItem_SetProperties_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_GetRate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_CopyDisplayedCVPixelBuffer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlayer_CopyDisplayedCVPixelBuffer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figremote_CreateCGImageParametersDictonary(CGImage *a1, const __CFAllocator *a2, CFDictionaryRef *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v44 = 0;
  v45 = 0;
  keys[0] = @"CGImageWidth";
  Width = CGImageGetWidth(a1);
  v51 = Width;
  v7 = *MEMORY[0x1E695E480];
  values[0] = OUTLINED_FUNCTION_2_61(Width, v8, &v51);
  keys[1] = @"CGImageHeight";
  Height = CGImageGetHeight(a1);
  v50 = Height;
  values[1] = OUTLINED_FUNCTION_2_61(Height, v10, &v50);
  keys[2] = @"CGImageBitsPerComponent";
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  v49 = BitsPerComponent;
  values[2] = OUTLINED_FUNCTION_2_61(BitsPerComponent, v12, &v49);
  keys[3] = @"CGImageBitsPerPixel";
  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  v48 = BitsPerPixel;
  values[3] = OUTLINED_FUNCTION_2_61(BitsPerPixel, v14, &v48);
  keys[4] = @"CGImageBytesPerRow";
  BytesPerRow = CGImageGetBytesPerRow(a1);
  v47 = BytesPerRow;
  values[4] = OUTLINED_FUNCTION_2_61(BytesPerRow, v16, &v47);
  ColorSpace = CGImageGetColorSpace(a1);
  Type = CGColorSpaceGetType();
  v46 = Type;
  keys[5] = @"CGImageColorSpaceType";
  values[5] = OUTLINED_FUNCTION_2_61(Type, v19, &v46);
  if (v46 == 1)
  {
    cf = 0;
    v20 = 6;
  }

  else
  {
    v21 = CGColorSpaceCopyPropertyList(ColorSpace);
    v22 = MEMORY[0x19A8D2A70](v21, a2, &v45);
    if (v22)
    {
      v39 = v22;
      LODWORD(v25) = 6;
      if (!v21)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    cf = v21;
    *&v58 = @"CGImageColorSpacePList";
    *&v53 = v45;
    v20 = 7;
  }

  keys[v20] = @"CGImageBitmapInfo";
  BitmapInfo = CGImageGetBitmapInfo(a1);
  HIDWORD(v44) = BitmapInfo;
  values[v20] = OUTLINED_FUNCTION_2_61(BitmapInfo, v24, &v44 + 4);
  LODWORD(v25) = v20 + 1;
  Decode = CGImageGetDecode(a1);
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace);
  if (Decode)
  {
    v28 = NumberOfComponents;
    if (NumberOfComponents)
    {
      Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        goto LABEL_24;
      }

      v30 = Mutable;
      v31 = 2 * v28;
      if (2 * v28)
      {
        while (1)
        {
          v32 = CFNumberCreate(v7, kCFNumberCGFloatType, Decode);
          if (!v32)
          {
            break;
          }

          v33 = v32;
          CFArrayAppendValue(v30, v32);
          CFRelease(v33);
          ++Decode;
          if (!--v31)
          {
            goto LABEL_11;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_6_3();
        goto LABEL_24;
      }

LABEL_11:
      keys[v25] = @"CGImageDecodeArray";
      values[v25] = v30;
      LODWORD(v25) = v20 + 2;
    }
  }

  keys[v25] = @"CGImageShouldInterpolate";
  ShouldInterpolate = CGImageGetShouldInterpolate(a1);
  v35 = MEMORY[0x1E695E4D0];
  if (!ShouldInterpolate)
  {
    v35 = MEMORY[0x1E695E4C0];
  }

  values[v25] = CFRetain(*v35);
  keys[(v25 + 1)] = @"CGImageRenderingIntent";
  RenderingIntent = CGImageGetRenderingIntent(a1);
  LODWORD(v44) = RenderingIntent;
  values[(v25 + 1)] = OUTLINED_FUNCTION_2_61(RenderingIntent, v37, &v44);
  v25 = (v25 + 2);
  v38 = CFDictionaryCreate(a2, keys, values, v25, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v38)
  {
    v39 = 0;
    *a3 = v38;
    goto LABEL_16;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_6_3();
LABEL_24:
  v39 = FigSignalErrorAtGM();
LABEL_16:
  v21 = cf;
  if (cf)
  {
LABEL_17:
    CFRelease(v21);
  }

LABEL_18:
  v40 = 0;
  do
  {
    v41 = values[v40];
    if (v41)
    {
      CFRelease(v41);
    }

    ++v40;
  }

  while (v25 != v40);
  return v39;
}

uint64_t FigRemote_SetSerializedAuth(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v4 = MEMORY[0x19A8D2B00](a2, a3, *MEMORY[0x1E695E480], &cf);
  if (v4)
  {
    return v4;
  }

  v5 = cf;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v6)
  {
    v7 = v6(a1, v5);
  }

  else
  {
    v7 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t FigRemote_CreateCommonMetadataFromBinaryPListData(uint64_t a1, uint64_t a2, const __CFAllocator *a3, CFMutableDictionaryRef *a4)
{
  cf = 0;
  if (!a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
LABEL_10:
    v6 = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  v6 = MEMORY[0x19A8D2B00](a1, a2, a3, &cf);
  if (!v6)
  {
    if (!cf)
    {
      v9 = 0;
      goto LABEL_8;
    }

    v7 = CFGetTypeID(cf);
    if (v7 == CFDictionaryGetTypeID())
    {
      Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v9 = Mutable;
        CFDictionaryApplyFunction(cf, figremote_convertMetadataLocalePropertyFromCFStringToCFLocale, Mutable);
LABEL_8:
        v10 = 0;
        *a4 = v9;
        goto LABEL_12;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    goto LABEL_10;
  }

LABEL_11:
  v10 = v6;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreateSerializedDataForCGImage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreateSerializedDataForCGImage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreateSerializedDataForCGImage_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreateSerializedDataForCGImage_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreateSerializedDataForCGImage_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreateSerializedDataForCGImage_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreateSerializedDataForCGImage_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreateCGImageFromSerializedDataInBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreateCGImageFromSerializedDataInBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreateCGImageFromSerializedDataInBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreateCGImageFromSerializedDataInBlockBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_SetSerializedCookies_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_SetSerializedCookies_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_SetSerializedCookies_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreateCommonMetadataBinaryPListData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLPCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLP_CopyChildNodeArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLP_GetNodeType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t streamPlaylistParserServer_replyingMessageHandler()
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t streamPlaylistParserServer_noReplyMessageHandler()
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    return 4294951138;
  }

  return result;
}

uint64_t __FigStreamPlaylistParserStartServer_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *(*(*a1 + 8) + 24) = result;
  return result;
}

void FigMutableMovieRemoteCreateEmpty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t xdict, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  if (!v20)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
    goto LABEL_18;
  }

  v21 = v19;
  v22 = v18;
  if (!remoteXPCMutableMovieClient_EnsureClientEstablished() && !OUTLINED_FUNCTION_28_11() && !FigXPCMessageSetCFString())
  {
    if (v21)
    {
      v23 = *MEMORY[0x1E695E480];
      if (v22)
      {
        Count = CFDictionaryGetCount(v22);
        MutableCopy = CFDictionaryCreateMutableCopy(v23, Count + 4, v22);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v26 = MutableCopy;
      if (MutableCopy)
      {
        v27 = OUTLINED_FUNCTION_308();
        setOptionsDictionaryEntryForMoviePropertyFromFormatReader(v27, v28, v29);
        v30 = OUTLINED_FUNCTION_308();
        setOptionsDictionaryEntryForMoviePropertyFromFormatReader(v30, v31, v32);
        v33 = OUTLINED_FUNCTION_308();
        setOptionsDictionaryEntryForMoviePropertyFromFormatReader(v33, v34, v35);
        v36 = OUTLINED_FUNCTION_308();
        setOptionsDictionaryEntryForMoviePropertyFromFormatReader(v36, v37, v38);
      }

      if (FigXPCMessageSetCFDictionary())
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (FigXPCMessageSetCFDictionary())
      {
        goto LABEL_18;
      }

      v26 = 0;
    }

    if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
    {
      xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
      remoteXPCMutableMovie_CreateInternal();
    }

LABEL_16:
    if (v26)
    {
      CFRelease(v26);
    }
  }

LABEL_18:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_652();
}

void remoteXPCMutableMovie_CreateInternal()
{
  OUTLINED_FUNCTION_653();
  v1 = v0;
  v3 = v2;
  v4 = *MEMORY[0x1E695E480];
  FigMutableMovieGetClassID();
  if (!CMDerivedObjectCreate())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = v3;
    Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    DerivedStorage[3] = Mutable;
    if (Mutable && (v7 = CFSetCreateMutable(v4, 0, MEMORY[0x1E695E9F8]), (DerivedStorage[4] = v7) != 0))
    {
      FigXPCRemoteClientAssociateObject();
      FigStartMonitoringMediaServicesProcessDeath();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM();
    }
  }

  *v1 = 0;
  OUTLINED_FUNCTION_652();
}

uint64_t FigMutableMovieRemoteCreateFromFormatReader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = 0;
  xdict = 0;
  value = 0;
  if (!a2 || !a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM();
LABEL_13:
    OUTLINED_FUNCTION_16_15();
    goto LABEL_11;
  }

  if (OUTLINED_FUNCTION_18_13())
  {
    goto LABEL_13;
  }

  if (OUTLINED_FUNCTION_28_11())
  {
    goto LABEL_13;
  }

  if (FigFormatReaderXPCRemoteGetObjectID(v6, &value))
  {
    goto LABEL_13;
  }

  xpc_dictionary_set_uint64(xdict, "FormatReader", value);
  if (FigXPCMessageSetCFString() || v5 && FigXPCMessageSetCFDictionary())
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_2_22();
  v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  v16 = OUTLINED_FUNCTION_21_13(v8, v9, v10, v11, v12, v13, v14, v15, v26, value, v29);
  if (!v7)
  {
    xpc_dictionary_get_uint64(v16, *MEMORY[0x1E69615A0]);
    remoteXPCMutableMovie_CreateInternal();
    OUTLINED_FUNCTION_21_13(v17, v18, v19, v20, v21, v22, v23, v24, v27, value, v29);
  }

LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  return v7;
}

uint64_t FigMutableMovieRemoteCreateWithURL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  xdict = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  cf = 0;
  if (!a2 || !a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v8 = FigSignalErrorAtGM();
    goto LABEL_25;
  }

  v8 = OUTLINED_FUNCTION_18_13();
  if (v8)
  {
LABEL_25:
    v10 = v8;
    goto LABEL_17;
  }

  if (FigRemote_ShouldConnectToMediaparserdForFileParsing())
  {
    v8 = OUTLINED_FUNCTION_28_11();
    if (v8)
    {
      goto LABEL_25;
    }

    v8 = remoteXPCMutableMovie_CreateByteStreamForURLAndSetObjectIDToXPCMessage(v6, 0, v17, &cf);
    if (v8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v8 = FigXPCCreateBasicMessage();
    if (v8)
    {
      goto LABEL_25;
    }

    v8 = FigXPCMessageSetCFURL();
    if (v8)
    {
      goto LABEL_25;
    }

    v8 = remoteXPCMutableMovie_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(v6, v17, 0x196EFB1E5, &v14);
    if (v8)
    {
      goto LABEL_25;
    }
  }

  v8 = FigXPCMessageSetCFString();
  if (v8)
  {
    goto LABEL_25;
  }

  if (v5)
  {
    v8 = FigXPCMessageSetCFDictionary();
    if (v8)
    {
      goto LABEL_25;
    }
  }

  v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v8)
  {
    goto LABEL_25;
  }

  xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  remoteXPCMutableMovie_CreateInternal();
  v10 = v9;
  if (!v9)
  {
    v11 = v15;
    remoteXPCMutableMovie_storeSandboxRegistration(v15, v14);
    *a5 = v11;
    v15 = 0;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  return v10;
}

void FigMutableMovieRemoteCreateFromData(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t xdict, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  if (!v20 || !v19)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM();
LABEL_13:
    OUTLINED_FUNCTION_16_15();
    goto LABEL_11;
  }

  if (OUTLINED_FUNCTION_18_13() || OUTLINED_FUNCTION_28_11() || FigXPCMessageSetCFObject() || FigXPCMessageSetCFString() || v18 && FigXPCMessageSetCFDictionary())
  {
    goto LABEL_13;
  }

  if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
  {
    xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
    remoteXPCMutableMovie_CreateInternal();
  }

LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_652();
}

uint64_t remoteXPCMutableMovie_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7[0] = 0;
  v7[1] = 0;
  if (*(DerivedStorage + 8))
  {
    v5 = 0;
  }

  else
  {
    v3 = DerivedStorage;
    ObjectID = remoteXPCMutableMovie_GetObjectID(a1, v7);
    if (ObjectID || (*(v3 + 8) = 1, FigStopMonitoringMediaServicesProcessDeath(), FigXPCRemoteClientDisassociateObject(), !*(v3 + 9)) && ((OUTLINED_FUNCTION_26_14(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (ObjectID = FigXPCRemoteClientSendSyncMessage(), ObjectID)))
    {
      v5 = ObjectID;
    }

    else
    {
      v5 = 0;
      *v3 = 0;
    }
  }

  FigXPCRelease();
  return v5;
}

void remoteXPCMutableMovie_Finalize(uint64_t a1)
{
  remoteXPCMutableMovie_Invalidate(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[2];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[2] = 0;
  }

  v3 = DerivedStorage[3];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[3] = 0;
  }

  v4 = DerivedStorage[4];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[4] = 0;
  }

  v5 = DerivedStorage[5];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[5] = 0;
  }
}

uint64_t remoteXPCMutableMovie_CopyProperty(uint64_t a1, const void *a2)
{
  v6 = 0;
  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v6);
  if (ObjectID)
  {
    v4 = ObjectID;
  }

  else
  {
    v4 = FigXPCSendStdCopyPropertyMessage();
    if (!v4)
    {
      CFEqual(a2, @"Metadata");
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

void remoteXPCMutableMovie_SetProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  cf = 0;
  a10 = 0;
  if (!remoteXPCMutableMovie_GetObjectID(v24, &a10))
  {
    if (CFEqual(v23, @"Metadata"))
    {
      MetadataBinaryPListData = FigRemote_CreateMetadataBinaryPListData(v21, *MEMORY[0x1E695E480], &cf);
      v26 = cf;
      if (MetadataBinaryPListData)
      {
        if (!cf)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if (CFEqual(v23, @"DefaultMediaDataStorageURL"))
    {
      if (v21)
      {
        v27 = CFGetTypeID(v21);
        if (v27 != CFURLGetTypeID())
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_5();
          FigSignalErrorAtGM();
          goto LABEL_6;
        }
      }

      if (FigRemote_ShouldConnectToMediaparserdForFileParsing())
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v29 = *(DerivedStorage + 16);
        *(DerivedStorage + 16) = v21;
        if (v21)
        {
          CFRetain(v21);
        }

        if (v29)
        {
          CFRelease(v29);
        }
      }
    }

    FigXPCSendStdSetPropertyMessage();
    v26 = cf;
    if (cf)
    {
LABEL_5:
      CFRelease(v26);
    }
  }

LABEL_6:
  FigXPCRemoteClientKillServerOnTimeout();
  OUTLINED_FUNCTION_652();
}

uint64_t remoteXPCMutableMovie_CopyFormatReader(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  xdict = 0;
  v11 = 0;
  if (a4)
  {
    ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v11);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_12_20();
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        xpc_dictionary_set_BOOL(xdict, "MakeImmutableSnapshot", a2 != 0);
        if (!a3 || (ObjectID = FigXPCMessageSetCFDictionary(), !ObjectID))
        {
          OUTLINED_FUNCTION_2_22();
          ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
          if (!ObjectID)
          {
            uint64 = xpc_dictionary_get_uint64(v12, "FormatReader");
            if (!uint64)
            {
              v9 = 0;
              goto LABEL_11;
            }

            ObjectID = FigFormatReaderXPCRemoteRetainCopiedFormatReader(uint64, 0, a4);
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    ObjectID = FigSignalErrorAtGM();
  }

  v9 = ObjectID;
LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  return v9;
}

uint64_t remoteXPCMutableMovie_WriteHeader(uint64_t a1, uint64_t a2, const __CFURL *a3, uint64_t a4, int a5)
{
  v18 = 0;
  xdict = 0;
  cf = 0;
  v17 = 0;
  if (a3)
  {
    ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v18);
    if (ObjectID)
    {
      v14 = ObjectID;
      goto LABEL_24;
    }

    if (FigRemote_ShouldConnectToMediaparserdForFileParsing())
    {
      v10 = FigXPCCreateBasicMessage();
      if (v10)
      {
        goto LABEL_28;
      }

      DoesFileExist = FigFileDoesFileExist();
      v12 = a5 ? 34 : 2;
      v13 = DoesFileExist ? v12 : 18;
      v10 = remoteXPCMutableMovie_CreateByteStreamForURLAndSetObjectIDToXPCMessage(a3, v13, xdict, &cf);
      if (v10)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v10 = FigXPCCreateBasicMessage();
      if (v10)
      {
        goto LABEL_28;
      }

      v10 = remoteXPCMutableMovie_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(a3, xdict, 0x196EFB1E5, &v17);
      if (v10)
      {
        goto LABEL_28;
      }

      v10 = FigXPCMessageSetCFURL();
      if (v10)
      {
        goto LABEL_28;
      }

      xpc_dictionary_set_BOOL(xdict, "TruncateDestURL", a5 != 0);
    }

    v10 = FigXPCMessageSetCFString();
    if (!v10)
    {
      if (!a4 || (v10 = FigXPCMessageSetCFDictionary(), !v10))
      {
        v14 = FigXPCRemoteClientSendSyncMessage();
        if (!v14)
        {
          remoteXPCMutableMovie_storeSandboxRegistration(a1, v17);
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v10 = FigSignalErrorAtGM();
  }

LABEL_28:
  v14 = v10;
LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_24:
  if (v17)
  {
    CFRelease(v17);
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v14;
}

uint64_t remoteXPCMutableMovie_CopyHeaderData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  memset(v10, 0, sizeof(v10));
  if (!a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    ObjectID = FigSignalErrorAtGM();
LABEL_12:
    v8 = ObjectID;
    goto LABEL_10;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, v10);
  if (ObjectID)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_20();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_12;
  }

  ObjectID = FigXPCMessageSetCFString();
  if (ObjectID)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    ObjectID = FigXPCMessageSetCFDictionary();
    if (ObjectID)
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_2_22();
  ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_12;
  }

  v8 = FigXPCMessageCopyCFData();
  if (!v8)
  {
    *a5 = 0;
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  return v8;
}

uint64_t remoteXPCMutableMovie_AddTrack(uint64_t a1, unsigned int a2, const __CFDictionary *a3, uint64_t a4, _DWORD *a5)
{
  v36 = 0;
  xdict = 0;
  v35 = 0;
  if (!a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v35);
  if (ObjectID)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_12_20();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_19;
  }

  xpc_dictionary_set_int64(xdict, "MediaType", a2);
  if (!a4)
  {
    ObjectID = FigXPCMessageSetCFDictionary();
    if (!ObjectID)
    {
      v13 = 0;
      goto LABEL_13;
    }

LABEL_19:
    v33 = ObjectID;
    goto LABEL_17;
  }

  v10 = *MEMORY[0x1E695E480];
  if (a3)
  {
    Count = CFDictionaryGetCount(a3);
    MutableCopy = CFDictionaryCreateMutableCopy(v10, Count + 6, a3);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v13 = MutableCopy;
  if (MutableCopy)
  {
    v14 = OUTLINED_FUNCTION_308();
    setOptionsDictionaryEntryForTrackPropertyFromTrackReader(v14, v15, v16);
    v17 = OUTLINED_FUNCTION_308();
    setOptionsDictionaryEntryForTrackPropertyFromTrackReader(v17, v18, v19);
    v20 = OUTLINED_FUNCTION_308();
    setOptionsDictionaryEntryForTrackPropertyFromTrackReader(v20, v21, v22);
    v23 = OUTLINED_FUNCTION_308();
    setOptionsDictionaryEntryForTrackPropertyFromTrackReader(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_308();
    setOptionsDictionaryEntryForTrackPropertyFromTrackReader(v26, v27, v28);
    v29 = OUTLINED_FUNCTION_308();
    setOptionsDictionaryEntryForTrackPropertyFromTrackReader(v29, v30, v31);
  }

  v32 = FigXPCMessageSetCFDictionary();
  if (v32)
  {
    v33 = v32;
    if (!v13)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_13:
  OUTLINED_FUNCTION_2_22();
  v33 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (!v33)
  {
    *a5 = xpc_dictionary_get_int64(v36, "TrackID");
  }

  if (v13)
  {
LABEL_16:
    CFRelease(v13);
  }

LABEL_17:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v33;
}

uint64_t remoteXPCMutableMovie_DeleteTrack(uint64_t a1, int a2)
{
  v6 = 0;
  xdict = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_7;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v6);
  if (ObjectID)
  {
LABEL_7:
    v4 = ObjectID;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_26_14();
  v4 = FigXPCCreateBasicMessage();
  if (!v4)
  {
    xpc_dictionary_set_int64(xdict, "TrackID", a2);
    v4 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_5:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t remoteXPCMutableMovie_CopyTrackProperty(uint64_t a1, int a2, const void *a3, uint64_t a4, void *a5)
{
  v11[1] = 0;
  xdict = 0;
  v11[0] = 0;
  if (!a2 || !a3 || !a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    ObjectID = FigSignalErrorAtGM();
LABEL_17:
    v9 = ObjectID;
    goto LABEL_13;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, v11);
  if (ObjectID)
  {
    goto LABEL_17;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_17;
  }

  xpc_dictionary_set_int64(xdict, "TrackID", a2);
  ObjectID = FigXPCMessageSetCFString();
  if (ObjectID)
  {
    goto LABEL_17;
  }

  ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_17;
  }

  if (!CFEqual(a3, @"FormatDescriptionArray"))
  {
    if (CFEqual(a3, @"Metadata"))
    {
      v9 = 0;
      goto LABEL_13;
    }

    v9 = FigXPCMessageCopyCFObject();
    if (v9)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v9 = FigXPCMessageCopyFormatDescriptionArray();
  if (!v9)
  {
LABEL_10:
    *a5 = 0;
  }

LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v9;
}

uint64_t remoteXPCMutableMovie_SetTrackProperty(uint64_t a1, int a2, const void *a3, const __CFArray *a4)
{
  v15 = 0;
  xdict = 0;
  cf = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    goto LABEL_27;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v15);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      ObjectID = FigXPCMessageSetCFString();
      if (!ObjectID)
      {
        if (CFEqual(a3, @"FormatDescriptionArray"))
        {
          ObjectID = FigXPCMessageSetFormatDescriptionArray();
          if (ObjectID)
          {
            goto LABEL_21;
          }

LABEL_20:
          ObjectID = FigXPCRemoteClientSendSyncMessage();
          goto LABEL_21;
        }

        if (CFEqual(a3, @"Metadata"))
        {
          ObjectID = FigRemote_CreateMetadataBinaryPListData(a4, *MEMORY[0x1E695E480], &cf);
          if (ObjectID)
          {
            goto LABEL_21;
          }

LABEL_19:
          ObjectID = FigXPCMessageSetCFObject();
          if (ObjectID)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        if (!CFEqual(a3, @"MediaDataStorageURL"))
        {
          goto LABEL_19;
        }

        if (!a4 || (v8 = CFGetTypeID(a4), v8 == CFURLGetTypeID()))
        {
          if (!FigRemote_ShouldConnectToMediaparserdForFileParsing())
          {
            goto LABEL_19;
          }

          DerivedStorage = CMBaseObjectGetDerivedStorage();
          SInt32 = FigCFNumberCreateSInt32();
          v11 = *(DerivedStorage + 24);
          if (a4)
          {
            CFDictionarySetValue(v11, SInt32, a4);
            if (!SInt32)
            {
              goto LABEL_19;
            }
          }

          else
          {
            CFDictionaryRemoveValue(v11, SInt32);
            if (!SInt32)
            {
              goto LABEL_19;
            }
          }

          CFRelease(SInt32);
          goto LABEL_19;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
LABEL_27:
        ObjectID = FigSignalErrorAtGM();
      }
    }
  }

LABEL_21:
  v12 = ObjectID;
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v12;
}

uint64_t remoteXPCMutableMovie_AppendSampleBuffer(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = 0;
  v23 = 0;
  FormatDescription = 0;
  aSurface = 0;
  v18[1] = 0;
  xdict = 0;
  cf = 0;
  v18[0] = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_25;
  }

  if (!a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v14 = FigSignalErrorAtGM();
    goto LABEL_27;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, v18);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || FigRemote_ShouldConnectToMediaparserdForFileParsing() && (ObjectID = remoteXPCMutableMovie_CreateByteStreamForTrackMediaDataStorageURLAndSetObjectIDInXPCMessageIfNecessary(a1, a2, xdict, &cf), ObjectID) || (xpc_dictionary_set_int64(xdict, "TrackID", a2), FormatDescription = CMSampleBufferGetFormatDescription(a3), ObjectID = FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBuffer(), ObjectID) || (ObjectID = FigXPCMessageSetAndConsumeVMData(), ObjectID))
  {
LABEL_25:
    v15 = ObjectID;
    goto LABEL_21;
  }

  if (aSurface)
  {
    XPCObject = IOSurfaceCreateXPCObject(aSurface);
    xpc_dictionary_set_value(xdict, "IOSurface", XPCObject);
    if (!a4)
    {
      goto LABEL_14;
    }

LABEL_13:
    v14 = FigXPCMessageSetCFDictionary();
    if (!v14)
    {
      goto LABEL_14;
    }

LABEL_27:
    v15 = v14;
    goto LABEL_21;
  }

  if (a4)
  {
    goto LABEL_13;
  }

LABEL_14:
  v14 = FigXPCMessageSetFormatDescription();
  if (v14)
  {
    goto LABEL_27;
  }

  v14 = FigXPCRemoteClientSendSyncMessageWithNoTimeoutCreatingReply();
  if (v14)
  {
    goto LABEL_27;
  }

  if (a5)
  {
    FigXPCMessageGetCMTime();
  }

  if (a6)
  {
    FigXPCMessageGetCMTime();
  }

  v15 = 0;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v15;
}

uint64_t remoteXPCMutableMovie_AppendMediaData(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, int64_t a5, uint64_t a6, uint64_t *a7)
{
  v19 = 0;
  xdict = 0;
  cf = 0;
  v18 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    ObjectID = FigSignalErrorAtGM();
LABEL_17:
    v15 = ObjectID;
    goto LABEL_13;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v18);
  if (ObjectID)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_12_20();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_17;
  }

  if (FigRemote_ShouldConnectToMediaparserdForFileParsing())
  {
    ObjectID = remoteXPCMutableMovie_CreateByteStreamForTrackMediaDataStorageURLAndSetObjectIDInXPCMessageIfNecessary(a1, a2, xdict, &cf);
    if (ObjectID)
    {
      goto LABEL_17;
    }
  }

  xpc_dictionary_set_int64(xdict, "TrackID", a2);
  xpc_dictionary_set_int64(xdict, "DataOffset", a4);
  xpc_dictionary_set_int64(xdict, "DataLength", a5);
  ObjectID = FigXPCMessageSetBlockBuffer();
  if (ObjectID)
  {
    goto LABEL_17;
  }

  if (a6)
  {
    ObjectID = FigXPCMessageSetCFDictionary();
    if (ObjectID)
    {
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_2_22();
  v14 = FigXPCRemoteClientSendSyncMessageWithNoTimeoutCreatingReply();
  v15 = v14;
  if (a7 && !v14)
  {
    *a7 = xpc_dictionary_get_uint64(v19, "DataOffset");
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v15;
}

uint64_t remoteXPCMutableMovie_AppendSampleReferences(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17[1] = 0;
  xdict = 0;
  v17[0] = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    ObjectID = FigSignalErrorAtGM();
LABEL_13:
    v15 = ObjectID;
    goto LABEL_11;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, v17);
  if (ObjectID)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_12_20();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  xpc_dictionary_set_uint64(xdict, "DataOffset", a11);
  if (a12)
  {
    ObjectID = FigXPCMessageSetCFDictionary();
    if (ObjectID)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_2_22();
  ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  v15 = a14;
  if (a13)
  {
    FigXPCMessageGetCMTime();
  }

  if (a14)
  {
    FigXPCMessageGetCMTime();
    v15 = 0;
  }

LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v15;
}

uint64_t remoteXPCMutableMovie_AppendSampleReferencesFromSampleCursor(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v11 = FigSignalErrorAtGM();
LABEL_14:
    v12 = v11;
    goto LABEL_12;
  }

  if (a7)
  {
    v11 = FigXPCMessageSetCFDictionary();
    if (v11)
    {
      goto LABEL_14;
    }
  }

  v11 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v11)
  {
    goto LABEL_14;
  }

  if (a8)
  {
    *a8 = xpc_dictionary_get_uint64(0, "NumSamplesAppended");
  }

  if (a9)
  {
    FigXPCMessageGetCMTime();
  }

  if (a10)
  {
    FigXPCMessageGetCMTime();
  }

  v12 = 0;
LABEL_12:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  return v12;
}

uint64_t remoteXPCMutableMovie_CanTrackAcceptFormatDescription(uint64_t a1, int a2, uint64_t a3)
{
  v16 = 0;
  xdict = 0;
  v15 = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM();
LABEL_10:
    v3 = 0;
    goto LABEL_8;
  }

  v3 = a3;
  if (!a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM();
    goto LABEL_8;
  }

  if (remoteXPCMutableMovie_GetObjectID(a1, &v15))
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_20();
  if (FigXPCCreateBasicMessage())
  {
    goto LABEL_10;
  }

  xpc_dictionary_set_int64(xdict, "TrackID", a2);
  if (FigXPCMessageSetFormatDescription())
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_22();
  if (FigXPCRemoteClientSendSyncMessageCreatingReply())
  {
    goto LABEL_10;
  }

  v5 = xpc_dictionary_get_BOOL(v16, "CanTrackAcceptFormatDescription");
  OUTLINED_FUNCTION_21_13(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16);
LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t remoteXPCMutableMovie_GetTrackCompatibleWithTrackReader(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v18 = 0;
  xdict = 0;
  value = 0;
  v17 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM();
LABEL_10:
    OUTLINED_FUNCTION_16_15();
    goto LABEL_8;
  }

  if (remoteXPCMutableMovie_GetObjectID(a1, &v17))
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_20();
  if (FigXPCCreateBasicMessage() || FigTrackReaderXPCRemoteGetObjectID(a2, &value))
  {
    goto LABEL_10;
  }

  xpc_dictionary_set_uint64(xdict, "TrackReader", value);
  OUTLINED_FUNCTION_2_22();
  v6 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  v14 = OUTLINED_FUNCTION_21_13(v6, v7, v8, v9, v10, v11, v12, v13, value, v17, v18);
  if (!v3)
  {
    *a3 = xpc_dictionary_get_int64(v14, "TrackID");
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  return v3;
}

uint64_t remoteXPCMutableMovie_InsertMediaIntoTrack(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  xdict = 0;
  if (!a2 || (*(a4 + 12) & 1) == 0 || (*(a4 + 36) & 1) == 0 || *(a4 + 40) || (*(a4 + 24) & 0x8000000000000000) != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    ObjectID = FigSignalErrorAtGM();
LABEL_6:
    v5 = ObjectID;
    goto LABEL_7;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v9);
  if (ObjectID)
  {
    goto LABEL_6;
  }

  v8 = FigXPCCreateBasicMessage();
  if (v8 || (xpc_dictionary_set_int64(xdict, "TrackID", a2), OUTLINED_FUNCTION_10_24(), v8 = FigXPCMessageSetCMTimeRange(), v8) || (OUTLINED_FUNCTION_1_68(), v8 = FigXPCMessageSetCMTimeRange(), v8))
  {
    v5 = v8;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_29_10();
  }

LABEL_7:
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  return v5;
}

uint64_t remoteXPCMutableMovie_InsertEmptyTrackSegment(uint64_t a1, int a2, void *a3)
{
  v4 = v3;
  v21 = 0;
  v22 = 0;
  if (!a2 || a3[2] || (OUTLINED_FUNCTION_132(), !v6) || a3[5] || (OUTLINED_FUNCTION_132(), !v6) || (a3[3] & 0x8000000000000000) != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
LABEL_19:
    OUTLINED_FUNCTION_24_11();
    goto LABEL_14;
  }

  v9 = v8;
  v10 = v7;
  OUTLINED_FUNCTION_7_27();
  if (!OUTLINED_FUNCTION_3_50(MEMORY[0x1E6960CC0], v13, v14, v15, v16, v17, v18, v19, v20))
  {
    OUTLINED_FUNCTION_23_16();
    goto LABEL_14;
  }

  if (remoteXPCMutableMovie_GetObjectID(v10, &v21))
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_14_19();
  v11 = FigXPCCreateBasicMessage();
  if (v11 || (xpc_dictionary_set_int64(v22, "TrackID", v9), OUTLINED_FUNCTION_1_68(), v11 = FigXPCMessageSetCMTimeRange(), v11))
  {
    v4 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_25_14();
  }

LABEL_14:
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13();
  return v4;
}

uint64_t remoteXPCMutableMovie_InsertEmptySegment(uint64_t a1, void *a2)
{
  v18[0] = 0;
  v18[1] = 0;
  if (a2[2] || (OUTLINED_FUNCTION_132(), !v3) || a2[5] || (OUTLINED_FUNCTION_132(), !v3) || (a2[3] & 0x8000000000000000) != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    ObjectID = FigSignalErrorAtGM();
LABEL_18:
    v8 = ObjectID;
    goto LABEL_13;
  }

  v5 = v4;
  OUTLINED_FUNCTION_7_27();
  if (!OUTLINED_FUNCTION_3_50(MEMORY[0x1E6960CC0], v10, v11, v12, v13, v14, v15, v16, v17))
  {
    v8 = 0;
    goto LABEL_13;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(v5, v18);
  if (ObjectID)
  {
    goto LABEL_18;
  }

  v7 = FigXPCCreateBasicMessage();
  if (v7 || (OUTLINED_FUNCTION_1_68(), v7 = FigXPCMessageSetCMTimeRange(), v7))
  {
    v8 = v7;
  }

  else
  {
    v8 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_13:
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  return v8;
}

uint64_t remoteXPCMutableMovie_DeleteTrackSegment(uint64_t a1, int a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  if (!a2 || (*(a3 + 12) & 1) == 0 || (*(a3 + 36) & 1) == 0 || *(a3 + 40) || (*(a3 + 24) & 0x8000000000000000) != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
LABEL_6:
    OUTLINED_FUNCTION_24_11();
    goto LABEL_7;
  }

  v3 = a1;
  OUTLINED_FUNCTION_7_27();
  if (!OUTLINED_FUNCTION_3_50(MEMORY[0x1E6960CC0], v7, v8, v9, v10, v11, v12, v13, v14))
  {
    OUTLINED_FUNCTION_23_16();
    goto LABEL_7;
  }

  if (remoteXPCMutableMovie_GetObjectID(v3, &v15))
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_14_19();
  v6 = FigXPCCreateBasicMessage();
  if (v6 || (xpc_dictionary_set_int64(v16, "TrackID", a2), OUTLINED_FUNCTION_1_68(), v6 = FigXPCMessageSetCMTimeRange(), v6))
  {
    v3 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_25_14();
  }

LABEL_7:
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13();
  return v3;
}

uint64_t remoteXPCMutableMovie_DeleteSegment(uint64_t a1, uint64_t a2)
{
  v15[0] = 0;
  v15[1] = 0;
  if ((*(a2 + 12) & 1) == 0 || (*(a2 + 36) & 1) == 0 || *(a2 + 40) || (*(a2 + 24) & 0x8000000000000000) != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    ObjectID = FigSignalErrorAtGM();
LABEL_5:
    v3 = ObjectID;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_7_27();
  if (!OUTLINED_FUNCTION_3_50(MEMORY[0x1E6960CC0], v7, v8, v9, v10, v11, v12, v13, v14))
  {
    v3 = 0;
    goto LABEL_6;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, v15);
  if (ObjectID)
  {
    goto LABEL_5;
  }

  v6 = FigXPCCreateBasicMessage();
  if (v6 || (OUTLINED_FUNCTION_1_68(), v6 = FigXPCMessageSetCMTimeRange(), v6))
  {
    v3 = v6;
  }

  else
  {
    v3 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_6:
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  return v3;
}

uint64_t remoteXPCMutableMovie_ScaleTrackSegment(uint64_t a1, int a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  if (!a2 || (*(a3 + 12) & 1) == 0 || (*(a3 + 36) & 1) == 0 || *(a3 + 40) || (*(a3 + 24) & 0x8000000000000000) != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM();
LABEL_6:
    OUTLINED_FUNCTION_24_11();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_17_12();
  if (!OUTLINED_FUNCTION_3_50(MEMORY[0x1E6960CC0], v7, v8, v9, v10, v11, v12, v13, v14))
  {
    OUTLINED_FUNCTION_23_16();
    goto LABEL_7;
  }

  if (remoteXPCMutableMovie_GetObjectID(v3, &v15))
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_14_19();
  v6 = FigXPCCreateBasicMessage();
  if (v6 || (xpc_dictionary_set_int64(v16, "TrackID", a2), OUTLINED_FUNCTION_10_24(), v6 = FigXPCMessageSetCMTimeRange(), v6) || (v6 = OUTLINED_FUNCTION_15_17(), v6))
  {
    v3 = v6;
  }

  else
  {
    FigXPCRemoteClientSendSyncMessage();
    OUTLINED_FUNCTION_25_14();
  }

LABEL_7:
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13();
  return v3;
}

uint64_t remoteXPCMutableMovie_ScaleSegment(uint64_t a1, uint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  if ((*(a2 + 12) & 1) == 0 || (*(a2 + 36) & 1) == 0 || *(a2 + 40) || (*(a2 + 24) & 0x8000000000000000) != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
LABEL_5:
    OUTLINED_FUNCTION_24_11();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_17_12();
  if (!OUTLINED_FUNCTION_3_50(MEMORY[0x1E6960CC0], v5, v6, v7, v8, v9, v10, v11, v12))
  {
    OUTLINED_FUNCTION_23_16();
    goto LABEL_6;
  }

  if (remoteXPCMutableMovie_GetObjectID(v2, v13))
  {
    goto LABEL_5;
  }

  v4 = FigXPCCreateBasicMessage();
  if (v4 || (OUTLINED_FUNCTION_10_24(), v4 = FigXPCMessageSetCMTimeRange(), v4) || (v4 = OUTLINED_FUNCTION_15_17(), v4))
  {
    v2 = v4;
  }

  else
  {
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_25_14();
  }

LABEL_6:
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13();
  return v2;
}

uint64_t remoteXPCMutableMovie_InsertSegmentFromTrackReader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v18 = 0;
  xdict = 0;
  v16 = 0;
  value = 0;
  cf = 0;
  if (!a4 || (*(a5 + 12) & 1) == 0 || (*(a5 + 36) & 1) == 0 || *(a5 + 40) || (*(a5 + 24) & 0x8000000000000000) != 0 || *(a6 + 16))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    ObjectID = FigSignalErrorAtGM();
  }

  else
  {
    ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v18);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        if (!FigRemote_ShouldConnectToMediaparserdForFileParsing() || (ObjectID = remoteXPCMutableMovie_CreateByteStreamForTrackMediaDataStorageURLAndSetObjectIDInXPCMessageIfNecessary(a1, a2, xdict, &cf), !ObjectID))
        {
          ObjectID = FigFormatReaderXPCRemoteGetObjectID(a3, &value);
          if (!ObjectID)
          {
            xpc_dictionary_set_uint64(xdict, "FormatReader", value);
            ObjectID = FigTrackReaderXPCRemoteGetObjectID(a4, &v16);
            if (!ObjectID)
            {
              xpc_dictionary_set_uint64(xdict, "TrackReader", v16);
              xpc_dictionary_set_int64(xdict, "TrackID", a2);
              OUTLINED_FUNCTION_10_24();
              ObjectID = FigXPCMessageSetCMTimeRange();
              if (!ObjectID)
              {
                ObjectID = FigXPCMessageSetCMTime();
                if (!ObjectID)
                {
                  xpc_dictionary_set_uint64(xdict, "Flags", a7);
                  if (a7)
                  {
                    ObjectID = FigXPCRemoteClientSendSyncMessageWithNoTimeoutCreatingReply();
                  }

                  else
                  {
                    ObjectID = FigXPCRemoteClientSendSyncMessage();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v8 = ObjectID;
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v8;
}

uint64_t remoteXPCMutableMovie_InsertSegmentFromFormatReader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v7 = v6;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  if (!a2 || (*(a3 + 12) & 1) == 0 || (*(a3 + 36) & 1) == 0 || *(a3 + 40) || (*(a3 + 24) & 0x8000000000000000) != 0 || *(a4 + 16))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    ObjectID = FigSignalErrorAtGM();
LABEL_6:
    v5 = ObjectID;
    goto LABEL_7;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v37);
  if (ObjectID)
  {
    goto LABEL_6;
  }

  ObjectID = FigFormatReaderXPCRemoteGetObjectID(a2, &v36);
  if (ObjectID)
  {
    goto LABEL_6;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_6;
  }

  if (FigRemote_ShouldConnectToMediaparserdForFileParsing())
  {
    v14 = v38;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    cf[0] = 0;
    value = 0;
    v16 = xpc_array_create(0, 0);
    if (v16)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v18 = *(DerivedStorage + 16);
        if (!v18 || CFSetContainsValue(*(DerivedStorage + 32), v18))
        {
LABEL_25:
          xdict = v14;
          Count = CFDictionaryGetCount(*(DerivedStorage + 24));
          if (Count)
          {
            v22 = Count;
            if ((Count - 0x2000000000000000) < 0xE000000000000001 || (v24 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL)) == 0)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_11();
              FigSignalErrorAtGM();
              OUTLINED_FUNCTION_19_15();
              v23 = 0;
              goto LABEL_45;
            }

            v23 = v24;
            v31 = a5;
            v25 = Mutable;
            v26 = v16;
            CFDictionaryGetKeysAndValues(*(DerivedStorage + 24), 0, v24);
            v27 = 0;
            while (1)
            {
              if (!CFSetContainsValue(*(DerivedStorage + 32), v23[v27]))
              {
                if (FigFileDoesFileExist())
                {
                  v28 = 2;
                }

                else
                {
                  v28 = 18;
                }

                if (remoteXPCMutableMovie_CreateByteStreamForURLAndGetObjectID(v23[v27], v28, cf, &value))
                {
                  OUTLINED_FUNCTION_19_15();
                  Mutable = v25;
                  a5 = v31;
                  goto LABEL_45;
                }

                xpc_array_set_uint64(v26, 0xFFFFFFFFFFFFFFFFLL, value);
                v7 = cf[0];
                CFArrayAppendValue(v25, cf[0]);
                if (v7)
                {
                  CFRelease(v7);
                  cf[0] = 0;
                }

                CFSetAddValue(*(DerivedStorage + 32), v23[v27]);
              }

              if (v22 == ++v27)
              {
                v16 = v26;
                Mutable = v25;
                a5 = v31;
                goto LABEL_42;
              }
            }
          }

          v23 = 0;
LABEL_42:
          if (xpc_array_get_count(v16))
          {
            xpc_dictionary_set_value(xdict, "ByteStreamArray", v16);
          }

          v5 = 0;
          v7 = Mutable;
          Mutable = 0;
LABEL_45:
          free(v23);
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          FigXPCRelease();
          if (v5)
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }

        if (FigFileDoesFileExist())
        {
          v19 = 2;
        }

        else
        {
          v19 = 18;
        }

        if (!remoteXPCMutableMovie_CreateByteStreamForURLAndGetObjectID(*(DerivedStorage + 16), v19, cf, &value))
        {
          xpc_array_set_uint64(v16, 0xFFFFFFFFFFFFFFFFLL, value);
          v20 = cf[0];
          CFArrayAppendValue(Mutable, cf[0]);
          if (v20)
          {
            CFRelease(v20);
            cf[0] = 0;
          }

          CFSetAddValue(*(DerivedStorage + 32), *(DerivedStorage + 16));
          goto LABEL_25;
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
        FigSignalErrorAtGM();
      }

      OUTLINED_FUNCTION_19_15();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      FigSignalErrorAtGM();
      OUTLINED_FUNCTION_19_15();
      Mutable = 0;
    }

    v23 = 0;
    goto LABEL_45;
  }

  v7 = 0;
LABEL_50:
  xpc_dictionary_set_uint64(v38, "FormatReader", v36);
  v29 = *(a3 + 16);
  *cf = *a3;
  v34 = v29;
  v35 = *(a3 + 32);
  v30 = FigXPCMessageSetCMTimeRange();
  if (!v30)
  {
    *cf = *a4;
    *&v34 = *(a4 + 16);
    v30 = FigXPCMessageSetCMTime();
    if (!v30)
    {
      xpc_dictionary_set_uint64(v38, "Flags", a5);
      if (a5)
      {
        v30 = FigXPCRemoteClientSendSyncMessageWithNoTimeoutCreatingReply();
      }

      else
      {
        v30 = FigXPCRemoteClientSendSyncMessage();
      }
    }
  }

  v5 = v30;
LABEL_56:
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_7:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t remoteXPCMutableMovie_storeSandboxRegistration_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t remoteXPCMutableMovie_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCMutableMovie_GetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCMutableMovie_GetObjectID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CMTime *fgGetDurationFromBlockBuffer@<X0>(CMTime *result@<X0>, CMTime *a2@<X8>)
{
  v3 = MEMORY[0x1E6960C70];
  *&a2->value = *MEMORY[0x1E6960C70];
  a2->epoch = *(v3 + 16);
  valuePtr = 0.0;
  if (result)
  {
    result = CMGetAttachment(result, @"FBPAKey_ApproximateDuration", 0);
    if (result)
    {
      v4 = result;
      v5 = CFGetTypeID(result);
      result = CFNumberGetTypeID();
      if (v5 == result)
      {
        if (CFNumberGetValue(v4, kCFNumberDoubleType, &valuePtr))
        {
          return CMTimeMakeWithSeconds(a2, valuePtr, 90000);
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          return FigSignalErrorAtGM();
        }
      }
    }
  }

  return result;
}

uint64_t fgCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFStringRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_1_69();
  if (v8)
  {
    v10 = 4294954511;
  }

  else if (CFEqual(a2, @"FMFD_Type"))
  {
    v9 = CFStringCreateWithCString(a3, "GAP", 0x8000100u);
    v10 = 0;
    *a4 = v9;
  }

  else
  {
    v10 = 4294954512;
  }

  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t fgCopyCurrentFormatDescriptionForTrack(uint64_t a1, int a2, uint64_t *a3)
{
  FigManifoldGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_1_69();
  if (v6)
  {
    v9 = 4294951251;
  }

  else
  {
    v7 = *(DerivedStorage + 13) != 0;
    while (1)
    {
      v8 = v7;
      if (*(DerivedStorage + 96 + 4 * v7) == a2)
      {
        break;
      }

      v7 = 1;
      if (v8)
      {
        v9 = 4294951254;
        goto LABEL_9;
      }
    }

    if (*(DerivedStorage + 8 * v7 + 104))
    {
      v9 = 0;
      *a3 = FigFormatDescriptionRetain();
    }

    else
    {
      fig_log_get_emitter();
      v9 = FigSignalErrorAtGM();
    }
  }

LABEL_9:
  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t fgInstallCallbacksForTrack(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  FigManifoldGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a3 && *(DerivedStorage + 8))
  {
    v10 = 4294951251;
  }

  else
  {
    v8 = *(DerivedStorage + 13) != 0;
    while (1)
    {
      v9 = v8;
      if (*(DerivedStorage + 96 + 4 * v8) == a2)
      {
        break;
      }

      v8 = 1;
      if (v9)
      {
        v10 = 4294951254;
        goto LABEL_11;
      }
    }

    v11 = (DerivedStorage + 24 * v8 + 32);
    if (a3)
    {
      *v11 = *a3;
      *(DerivedStorage + 24 * v8 + 40) = a3[1];
      *(DerivedStorage + 24 * v8 + 48) = a3[2];
    }

    else
    {
      *v11 = 0;
      *(DerivedStorage + 24 * v8 + 40) = 0;
      *(DerivedStorage + 24 * v8 + 48) = 0;
    }

    v10 = 0;
    *(DerivedStorage + 8 * v8 + 80) = a4;
  }

LABEL_11:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t FigManifoldCreateForGap_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fgManifoldInjectData(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fgNoteStreamEnd(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSCCFormatReaderCreateFromStream(const void *a1, const void *a2, uint64_t a3, void *a4, void *a5)
{
  if (!a1 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    v21 = FigSignalErrorAtGM();
    goto LABEL_21;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigFormatReaderGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v21 = v9;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM();
    goto LABEL_21;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v52, 0, sizeof(v52));
  CMTimeMake(&v52, 1001, 30000);
  *value = 0u;
  v51 = 0u;
  if (_MergedGlobals_46 != -1)
  {
    dispatch_once_f(&_MergedGlobals_46, 0, sccInfoRegisterType);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    v21 = FigSignalErrorAtGM();
    goto LABEL_69;
  }

  v12 = Instance;
  if (a2)
  {
    v13 = CFRetain(a2);
  }

  else
  {
    v13 = 0;
  }

  *(v12 + 16) = v13;
  *(v12 + 24) = CFRetain(a1);
  *(v12 + 65) = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v15)
  {
    v15(CMBaseObject, 0x1F0B330B8, *MEMORY[0x1E695E4D0]);
  }

  value[0] = 0;
  value[1] = sccInfoCaptionDataInfoCallback;
  *&v51 = sccInfoEndOfFileCallback;
  *(&v51 + 1) = 0;
  v16 = FigSCCParserCreate(a1, value, v12, 1, a2, (v12 + 56));
  if (v16 || (v49 = v52, v17 = *(v12 + 56), v53 = v52, v16 = FigSCCParserSetFrameDuration(v17, &v53.value), v16))
  {
LABEL_68:
    v21 = v16;
    CFRelease(v12);
LABEL_69:
    if (v21)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  *(v12 + 32) = v49;
  Mutable = CFArrayCreateMutable(a2, 0, 0);
  *(v12 + 80) = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    v16 = FigSignalErrorAtGM();
    goto LABEL_68;
  }

  *DerivedStorage = v12;
LABEL_16:
  v19 = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
  DerivedStorage[1] = v19;
  if (v19)
  {
    v20 = *DerivedStorage;
    if (*(*DerivedStorage + 64))
    {
LABEL_18:
      v21 = 0;
      *a4 = 0;
      goto LABEL_21;
    }

    v22 = FigSCCParserParse(*(v20 + 7));
    v21 = 4294954450;
    switch(v22)
    {
      case 0xFFFFBF48:
      case 0xFFFFBF4B:
      case 0xFFFFBF4C:
      case 0xFFFFBF4D:
        v21 = 4294954448;
        goto LABEL_21;
      case 0xFFFFBF49:
      case 0xFFFFBF4A:
        goto LABEL_66;
      case 0xFFFFBF4E:
        v21 = 4294954447;
        goto LABEL_21;
      case 0xFFFFBF4F:
        v21 = 4294954516;
        goto LABEL_21;
      case 0xFFFFBF50:
        goto LABEL_21;
      default:
        if (v22)
        {
          goto LABEL_66;
        }

        v24 = *(v20 + 10);
        if (!v24)
        {
          goto LABEL_52;
        }

        Count = CFArrayGetCount(v24);
        v53.value = 0;
        v46 = Count;
        if (Count < 1)
        {
          goto LABEL_52;
        }

        v26 = 0;
        v48 = *MEMORY[0x1E695E4C0];
        break;
    }

    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v20 + 10), v26);
      v28 = *ValueAtIndex;
      value[0] = 0;
      value[1] = 0;
      v29 = ValueAtIndex[7];
      v30 = v29 ? CFArrayGetCount(v29) : 0;
      value[0] = sccInfoCaptionCoverterOutputCallback;
      value[1] = ValueAtIndex;
      v31 = FigCLCPCaptionGroupConverterFromSampleBufferCreate(value, v28, &v53);
      if (v31)
      {
        break;
      }

      v32 = FigCaptionGroupConverterFromSampleBufferGetCMBaseObject(v53.value);
      v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v33)
      {
        goto LABEL_47;
      }

      v47 = v26;
      v31 = v33(v32, 0x1F0B206B8, v48);
      if (v31)
      {
        break;
      }

      if (v30 >= 1)
      {
        v34 = 0;
        while (1)
        {
          v35 = CFArrayGetValueAtIndex(ValueAtIndex[7], v34);
          v36 = v53.value;
          v37 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v37)
          {
            break;
          }

          v31 = v37(v36, v35);
          if (v31)
          {
            goto LABEL_48;
          }

          if (v30 == ++v34)
          {
            goto LABEL_39;
          }
        }

LABEL_47:
        v21 = 4294954514;
        goto LABEL_49;
      }

LABEL_39:
      v38 = v53.value;
      v39 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v39)
      {
        goto LABEL_47;
      }

      v31 = v39(v38);
      if (v31)
      {
        break;
      }

      if (v53.value)
      {
        CFRelease(v53.value);
        v53.value = 0;
      }

      v26 = v47 + 1;
      if (v47 + 1 == v46)
      {
        v21 = 0;
        goto LABEL_49;
      }
    }

LABEL_48:
    v21 = v31;
LABEL_49:
    if (v53.value)
    {
      CFRelease(v53.value);
    }

    if (!v21)
    {
LABEL_52:
      v40 = *(v20 + 10);
      if (v40)
      {
        v41 = CFArrayGetCount(v40);
        if (v41 >= 1)
        {
          v42 = v41;
          for (i = 0; i != v42; ++i)
          {
            value[0] = 0;
            FigTrackReaderGetClassID();
            if (CMDerivedObjectCreate())
            {
              fig_log_get_emitter();
              FigSignalErrorAtGM();
            }

            else
            {
              v44 = CMBaseObjectGetDerivedStorage();
              *v44 = CFRetain(v20);
              v44[1] = i;
              v45 = value[0];
              if (value[0])
              {
                CFArrayAppendValue(DerivedStorage[1], value[0]);
                CFRelease(v45);
              }
            }
          }
        }
      }

      *(v20 + 64) = 1;
      goto LABEL_18;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    v22 = FigSignalErrorAtGM();
LABEL_66:
    v21 = v22;
  }

LABEL_21:
  if (a5)
  {
    *a5 = 0;
  }

  return v21;
}

uint64_t sccInfoCaptionDataInfoCallback(_DWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v53 = 0;
  v42 = *MEMORY[0x1E6960C70];
  v51 = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v52 = v5;
  v50 = 0;
  v49 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  Frame = FigSCCParserCaptionDataInfoGetFrame(a1, 0, &v53);
  if (Frame)
  {
    return Frame;
  }

  DTS = FigSCCParserCaptionDataInfoGetDTS(a1, &v51);
  if (DTS)
  {
    goto LABEL_64;
  }

  DTS = FigSCCParserCaptionDataInfoGetChannel(a1, &v50 + 1, &v50, &v49);
  if (DTS)
  {
    goto LABEL_64;
  }

  if (v50 != 1668314222 || ((v49 - 1) | (HIDWORD(v50) - 1)) > 1)
  {
    v9 = 0;
    goto LABEL_54;
  }

  v10 = v49 + 2 * HIDWORD(v50) - 2;
  v11 = *(a2 + 80);
  if (!v11)
  {
    goto LABEL_17;
  }

  Count = CFArrayGetCount(v11);
  if (Count < 1)
  {
LABEL_15:
    v16 = *(a2 + 80);
    if (v16)
    {
      v17 = CFArrayGetCount(v16) + 1;
      goto LABEL_18;
    }

LABEL_17:
    v17 = 1;
LABEL_18:
    v18 = MEMORY[0x19A8CC720](v4, 72, 0x106004041A80DD0, 0);
    v19 = v18;
    if (!v18)
    {
      goto LABEL_71;
    }

    *(v18 + 64) = 0;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 0u;
    *v18 = 0u;
    *(v18 + 16) = 0u;
    if (v4)
    {
      v20 = CFRetain(v4);
    }

    else
    {
      v20 = 0;
    }

    v21 = 0;
    *v19 = v20;
    v19[2] = v17;
    v19[3] = v10;
    values[0].value = 0;
    cf.duration.value = 0;
    formatDescriptionOut.value = 0;
    if (v10 != 1)
    {
      keys = @"cccc";
      Mutable = CFDataCreateMutable(v4, 8);
      values[0].value = Mutable;
      if (!Mutable || (v23 = Mutable, *bytes = 942683748, CFDataAppendBytes(Mutable, bytes, 4), *v54 = bswap32(v10), CFDataAppendBytes(v23, v54, 4), (cf.duration.value = CFDictionaryCreate(v4, &keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) == 0) || (v24 = CFDictionaryCreate(v4, MEMORY[0x1E69600A0], &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) == 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        v9 = FigSignalErrorAtGM();
        goto LABEL_31;
      }

      v21 = v24;
    }

    v9 = CMFormatDescriptionCreate(v4, 0x636C6370u, 0x63363038u, v21, &formatDescriptionOut);
    if (!v9)
    {
      *(v19 + 2) = formatDescriptionOut.value;
    }

    if (v21)
    {
      CFRelease(v21);
    }

LABEL_31:
    if (cf.duration.value)
    {
      CFRelease(cf.duration.value);
    }

    if (values[0].value)
    {
      CFRelease(values[0].value);
    }

    if (v9)
    {
      sccInfoTrackRelease(v19);
      goto LABEL_54;
    }

    v25 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
    *(v19 + 7) = v25;
    if (v25)
    {
      v26 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
      *(v19 + 8) = v26;
      if (v26)
      {
        sccInfoTrackRelease(0);
LABEL_39:
        CFArrayAppendValue(*(a2 + 80), v19);
        goto LABEL_40;
      }
    }

LABEL_71:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v9 = FigSignalErrorAtGM();
    sccInfoTrackRelease(v19);
    if (v9)
    {
      goto LABEL_54;
    }

    v19 = 0;
    goto LABEL_39;
  }

  v13 = Count;
  v14 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 80), v14);
    if (ValueAtIndex[3] == v10)
    {
      break;
    }

    if (v13 == ++v14)
    {
      goto LABEL_15;
    }
  }

  v19 = ValueAtIndex;
LABEL_40:
  DTS = FigSCCParserCaptionDataInfoGetCaptionData(a1, &v48);
  if (DTS)
  {
    goto LABEL_64;
  }

  v27 = *(v19 + 7);
  if (!v27 || !CFArrayGetCount(v27))
  {
    OUTLINED_FUNCTION_2_63();
    v41 = *MEMORY[0x1E6960CC0];
    *&cf.duration.value = *MEMORY[0x1E6960CC0];
    v28 = *(MEMORY[0x1E6960CC0] + 16);
    cf.duration.epoch = v28;
    if (CMTimeCompare(values, &cf.duration))
    {
      OUTLINED_FUNCTION_2_63();
      *&values[1].value = v41;
      values[1].epoch = v28;
      *&values[2].value = v42;
      values[2].epoch = v5;
      memcpy(&cf, values, sizeof(cf));
      DTS = sccInfoEmptyMediaSampleBufferCreate(&cf, v4, &v46);
      if (DTS)
      {
        goto LABEL_64;
      }

      CFArrayAppendValue(*(v19 + 7), v46);
    }
  }

  v29 = (v19 + 12);
  v30 = *(v19 + 6);
  if (v30)
  {
    *&cf.duration.value = v51;
    cf.duration.epoch = v52;
    v40 = *v30;
    formatDescriptionOut.epoch = *(v30 + 16);
    *&formatDescriptionOut.value = v40;
    CMTimeSubtract(values, &cf.duration, &formatDescriptionOut);
    *(v30 + 24) = values[0];
    DTS = sccInfoSampleBufferCreate(v30, *(v19 + 2), v4, &v47);
    if (!DTS)
    {
      CFArrayAppendValue(*(v19 + 7), v47);
      goto LABEL_45;
    }

LABEL_64:
    v9 = DTS;
    goto LABEL_54;
  }

LABEL_45:
  v31 = v53;
  v32 = v48;
  OUTLINED_FUNCTION_2_63();
  BytePtr = CFDataGetBytePtr(v32);
  Length = CFDataGetLength(v32);
  formatDescriptionOut.value = 0;
  keys = 0;
  if (v10 - 1 >= 2)
  {
    v35 = 1667527730;
  }

  else
  {
    v35 = 1667522932;
  }

  v36 = MEMORY[0x19A8CC720](v4, 64, 0x1020040BABC55ACLL, 0);
  v37 = v36;
  cf.duration.value = v36;
  if (v36)
  {
    v36[2] = 0u;
    v36[3] = 0u;
    *v36 = 0u;
    v36[1] = 0u;
    v38 = CMBlockBufferCreateWithMemoryBlock(v4, 0, Length + 8, v4, 0, 0, Length + 8, 1u, &formatDescriptionOut);
    if (v38 || (keys = _byteswap_uint64(__PAIR64__(Length + 8, v35)), v38 = CMBlockBufferReplaceDataBytes(&keys, formatDescriptionOut.value, 0, 8uLL), v38) || (v38 = CMBlockBufferReplaceDataBytes(BytePtr, formatDescriptionOut.value, 8uLL, Length), v38))
    {
      v9 = v38;
      sccInfoSCCSampleReleaseAndClear(v4, &cf);
      goto LABEL_54;
    }

    *v37 = values[0];
    *(v37 + 12) = v31;
    *(v37 + 7) = formatDescriptionOut.value;
    cf.duration.value = 0;
    sccInfoSCCSampleReleaseAndClear(v4, &cf);
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v9 = FigSignalErrorAtGM();
    sccInfoSCCSampleReleaseAndClear(v4, &cf);
    if (v9)
    {
      goto LABEL_54;
    }
  }

  sccInfoSCCSampleReleaseAndClear(v4, v29);
  v9 = 0;
  *v29 = v37;
LABEL_54:
  if (v46)
  {
    CFRelease(v46);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  return v9;
}

uint64_t sccInfoEmptyMediaSampleBufferCreate(CMSampleTimingInfo *sampleTimingArray, CFAllocatorRef allocator, void *a3)
{
  v6 = 0;
  v4 = CMSampleBufferCreate(allocator, 0, 1u, 0, 0, 0, 0, 1, sampleTimingArray, 0, 0, &v6);
  if (!v4)
  {
    CMSetAttachment(v6, *MEMORY[0x1E69604B0], *MEMORY[0x1E695E4D0], 1u);
    *a3 = v6;
  }

  return v4;
}

uint64_t sccInfoSampleBufferCreate(__int128 *a1, const opaqueCMFormatDescription *a2, const __CFAllocator *a3, void *a4)
{
  sampleSizeArray = CMBlockBufferGetDataLength(*(a1 + 7));
  v10 = 0;
  *&sampleTimingArray.duration.value = *(a1 + 24);
  sampleTimingArray.duration.epoch = *(a1 + 5);
  v8 = *a1;
  sampleTimingArray.presentationTimeStamp.epoch = *(a1 + 2);
  *&sampleTimingArray.presentationTimeStamp.value = v8;
  sampleTimingArray.decodeTimeStamp = **&MEMORY[0x1E6960C70];
  result = CMSampleBufferCreate(a3, *(a1 + 7), 1u, 0, 0, a2, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &v10);
  if (!result)
  {
    *a4 = v10;
  }

  return result;
}

uint64_t sccInfoCaptionCoverterOutputCallback(uint64_t a1, uint64_t a2, const __CFAllocator **a3)
{
  v5 = *a3;
  v16 = 0;
  v17 = 0;
  OUTLINED_FUNCTION_3_51();
  *&time2.duration.value = *(a2 + 24);
  time2.duration.epoch = *(a2 + 40);
  v6 = FigSampleBufferCreateForCaptionGroup();
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v7 = a3[8];
    if (v7 && CFArrayGetCount(v7) || (OUTLINED_FUNCTION_3_51(), v13 = *MEMORY[0x1E6960CC0], *&time2.duration.value = *MEMORY[0x1E6960CC0], v8 = *(MEMORY[0x1E6960CC0] + 16), time2.duration.epoch = v8, !CMTimeCompare(time1, &time2.duration)))
    {
      v9 = 0;
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_3_51();
    *&time1[1].value = v13;
    time1[1].epoch = v8;
    time1[2] = **&MEMORY[0x1E6960C70];
    memcpy(&time2, time1, sizeof(time2));
    v12 = sccInfoEmptyMediaSampleBufferCreate(&time2, v5, &v16);
    if (!v12)
    {
      v9 = v16;
      CFArrayAppendValue(a3[8], v16);
LABEL_6:
      CFArrayAppendValue(a3[8], v17);
      v10 = 0;
      if (!v9)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v10 = v12;
    v9 = v16;
    if (v16)
    {
LABEL_7:
      CFRelease(v9);
    }
  }

LABEL_8:
  if (v17)
  {
    CFRelease(v17);
  }

  return v10;
}

uint64_t sccCursorService_CreateCursorAtPresentationTimeStamp(uint64_t a1, CMTime *a2, void *a3, char *a4, char *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *DerivedStorage;
  v10 = *(DerivedStorage + 8);
  v12 = *(DerivedStorage + 16);
  v18 = 0;
  v13 = sccCursorCreate(v11, v10, v12, *(v11 + 16), &v18);
  if (!v13)
  {
    v14 = v18;
    v15 = CMBaseObjectGetDerivedStorage();
    v17 = *a2;
    sccCursorMoveToDTS(v15, &v17, a4, a5);
    *a3 = v14;
  }

  return v13;
}

uint64_t sccCursorService_CreateCursorAtFirstSampleInDecodeOrder(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *DerivedStorage;
  v4 = *(DerivedStorage + 8);
  v6 = *(DerivedStorage + 16);
  v10 = 0;
  v7 = sccCursorCreate(v5, v4, v6, *(v5 + 16), &v10);
  if (!v7)
  {
    v8 = v10;
    *(CMBaseObjectGetDerivedStorage() + 24) = 0;
    *a2 = v8;
  }

  return v7;
}

uint64_t sccCursorService_CreateCursorAtLastSampleInDecodeOrder(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  v5 = *(DerivedStorage + 8);
  v6 = *(DerivedStorage + 16);
  ValueAtIndex = CFArrayGetValueAtIndex(*(*DerivedStorage + 80), v5);
  v8 = 64;
  if (!v6)
  {
    v8 = 56;
  }

  v9 = *&ValueAtIndex[v8];
  if (v9)
  {
    v10 = CFArrayGetCount(v9) - 1;
  }

  else
  {
    v10 = -1;
  }

  v14 = 0;
  v11 = sccCursorCreate(v4, v5, v6, *(v4 + 16), &v14);
  if (!v11)
  {
    v12 = v14;
    *(CMBaseObjectGetDerivedStorage() + 24) = v10;
    *a2 = v12;
  }

  return v11;
}

uint64_t sccFormatReader_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatReader_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccInfoCopyFigMatrixAsArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccInfoCopyFigMatrixAsArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccInfoMalformedDataCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t sccInfoMalformedDataCallback_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t sccInfoMalformedDataCallback_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t sccInfoMalformedDataCallback_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t sccTrackReader_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccTrackReader_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccCursorServiceCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sccCursorCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sccCursorCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccCursor_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccCursor_Copy_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sccCursor_CreateSampleBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccCursor_CreateSampleBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccCursor_CreateSampleBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVTTMetadataCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTMetadata_GetNodeType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTMetadata_copyNodeDocumentSerialization_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTMetadata_copyNodeDocumentSerialization_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTextContainerCreateWithCFData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_67();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTextContainerCreateWithCFData_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_67();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void figTextContainerCreateWithCFStringOrDataPtr_internal_cold_1(const void *a1, _DWORD *a2)
{
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t figTextContainerCreateWithCFStringOrDataPtr_internal_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_67();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTextContainerGetLength_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTextContainerGetCharacterAtIndex_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTextContainerGetCharacterAtIndex_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTextContainerGetCharactersForRange_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTextContainerGetCharactersForRange_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTextContainerGetCharactersForRange_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckcb_invalidate()
{
  v50 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v42 = 0;
  v43 = 0;
  FigSimpleMutexLock();
  if (!*(CMBaseObjectGetDerivedStorage() + 8))
  {
    if (dword_1EAF16FE0)
    {
      v1 = OUTLINED_FUNCTION_1_70();
      v9 = OUTLINED_FUNCTION_180_0(v1, v2, v3, v4, v5, v6, v7, v8, v38, v39, v40, v41, SBYTE2(v41), BYTE3(v41), SHIDWORD(v41));
      if (OUTLINED_FUNCTION_124_0(v9))
      {
        v10 = *(DerivedStorage + 56);
        v44 = 136315650;
        v45 = "ckcb_invalidate";
        v46 = 2114;
        v47 = v10;
        v48 = 2082;
        v49 = "ckcb_invalidate";
        LODWORD(v39) = 32;
        v38 = &v44;
        OUTLINED_FUNCTION_4_49();
        OUTLINED_FUNCTION_6_40();
      }

      OUTLINED_FUNCTION_0_68();
    }

    *(DerivedStorage + 8) = 1;
    v11 = *(DerivedStorage + 16);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v12)
    {
      v12(v11, &v43);
    }

    if (dword_1EAF16FE0)
    {
      v13 = OUTLINED_FUNCTION_1_70();
      v21 = OUTLINED_FUNCTION_180_0(v13, v14, v15, v16, v17, v18, v19, v20, v38, v39, v40, v41, SBYTE2(v41), BYTE3(v41), SHIDWORD(v41));
      if (OUTLINED_FUNCTION_124_0(v21))
      {
        OUTLINED_FUNCTION_2_64();
        OUTLINED_FUNCTION_4_49();
        OUTLINED_FUNCTION_6_40();
      }

      OUTLINED_FUNCTION_0_68();
    }

    v22 = *(DerivedStorage + 32);
    if (v22)
    {
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 136);
      if (v23)
      {
        v23(v22, &v42);
      }

      if (dword_1EAF16FE0)
      {
        v24 = OUTLINED_FUNCTION_1_70();
        v32 = OUTLINED_FUNCTION_180_0(v24, v25, v26, v27, v28, v29, v30, v31, v38, v39, v40, v41, SBYTE2(v41), BYTE3(v41), SHIDWORD(v41));
        if (OUTLINED_FUNCTION_124_0(v32))
        {
          OUTLINED_FUNCTION_2_64();
          OUTLINED_FUNCTION_4_49();
          OUTLINED_FUNCTION_6_40();
        }

        OUTLINED_FUNCTION_0_68();
      }
    }

    v33 = *(DerivedStorage + 16);
    if (v33)
    {
      CFRelease(v33);
    }

    v34 = *(DerivedStorage + 32);
    if (v34)
    {
      CFRelease(v34);
    }

    v35 = *(DerivedStorage + 24);
    if (v35)
    {
      CFRelease(v35);
    }

    v36 = *(DerivedStorage + 40);
    if (v36)
    {
      CFRelease(v36);
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t ckcb_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ckcb_invalidate();
  if (dword_1EAF16FE0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v9 = OUTLINED_FUNCTION_180_0(os_log_and_send_and_compose_flags_and_os_log_type, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, *v15, v15[2], OS_LOG_TYPE_DEFAULT, 0);
    if (OUTLINED_FUNCTION_124_0(v9))
    {
      OUTLINED_FUNCTION_4_49();
      OUTLINED_FUNCTION_6_40();
    }

    OUTLINED_FUNCTION_0_68();
  }

  v10 = *(DerivedStorage + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  return FigSimpleMutexDestroy();
}

uint64_t ckcb_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    v8 = FigSignalErrorAtGM();
    goto LABEL_7;
  }

  v6 = *(DerivedStorage + 16);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7(v6, a2, a3);
  if (v8)
  {
LABEL_7:
    v9 = v8;
    goto LABEL_9;
  }

  v9 = *(DerivedStorage + 32);
  if (v9)
  {
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      v8 = v10(v9, a2, a3);
      goto LABEL_7;
    }

LABEL_8:
    v9 = 4294954514;
  }

LABEL_9:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t FigContentKeyCompoundBossCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyCompoundBossCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyCompoundBossCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyCompoundBossCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckcb_processRequest_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL ckcb_processRequest_cold_2(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t ckcb_processRequest_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckcb_processRequest_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckcb_destroyGroup_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckcb_setClientManagedBoss_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckcb_setClientManagedBoss_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckcb_copyAuthorizationToken_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckcb_copyAuthorizationToken_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckcb_copyAuthorizationToken_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckcb_associateChildBossRequestIDWithRequestWithBossMutex_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSCodePointTokenCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSCodePointTokenCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSNumberTokenCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSNumberTokenCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSNumberTokenCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void figCSSNumericTokenCreate_internal_cold_1(const void *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_27();
  *a2 = FigSignalErrorAtGM();
  CFRelease(a1);
}

uint64_t figCSSNumericTokenCreate_internal_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figCSSNumericTokenCreate_internal_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figCSSNumericTokenCreate_internal_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figCSSNumericTokenCreate_internal_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figCSSNumericTokenCreate_internal_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figCSSNumericTokenCreate_internal_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStringValueTokenCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStringValueTokenCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStringValueTokenCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSHashTokenCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSHashTokenCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSHashTokenCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSHashTokenCreate_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSHashTokenCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSTokenCreateSerializationString_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSTokenCreateSerializationString_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSTokenCreateSerializationString_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererPaintOnCaptionCreate(void *a1)
{
  *a1 = 0;
  v7 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererPaintOnCaptionGetClassID_sRegisterFigCaptionRendererPaintOnCaptionBaseTypeOnce, RegisterFigCaptionRendererPaintOnCaptionBaseType);
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    v3 = v7;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = 0;
    FigCaptionRendererCaptionCreate(&v6);
    *DerivedStorage = v6;
    *a1 = v3;
  }

  return v2;
}

uint64_t FigCaptionRendererPaintOnCaptionSetCurrentTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PostProcessPurchasedItemInternal(const __CFDictionary *a1, const __CFString *a2, void *a3, uint64_t a4, void (*a5)(uint64_t, float), uint64_t a6)
{
  __s1[4] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  Value = CFDictionaryGetValue(a1, @"sinfs");
  v12 = Value;
  v454 = a5;
  v465 = a4;
  if (!Value)
  {
    v464 = 0;
    v457 = 0;
    v458 = 0;
    v459 = 0;
    v460 = 0;
    v466 = 0;
LABEL_254:
    v494 = -1;
    v495 = -1;
    LODWORD(v471) = 0;
    LODWORD(v469) = 0;
    v493 = -1;
    __pattern4 = 0;
    v491 = -1;
    v490 = 0;
    v489 = -1;
    v488 = 0;
    v487 = -1;
    ByteStreamSize = 4294967246;
    v486 = 0;
    if (!a4)
    {
      goto LABEL_394;
    }

    if (!v12)
    {
      goto LABEL_394;
    }

    v496 = 0;
    ByteStreamSize = GetByteStreamSize(a4, &v496);
    if (ByteStreamSize)
    {
      goto LABEL_394;
    }

    v265 = v496;
    if (v496 < 1)
    {
      ByteStreamSize = 4294967246;
      goto LABEL_394;
    }

    v467 = v12;
    LODWORD(v442) = 0;
    v266 = 0;
    v267 = v464;
    v437 = v464;
    v447 = a6;
    while (1)
    {
      if (v265 <= 0)
      {
LABEL_381:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_69();
        ByteStreamSize = FigSignalErrorAtGM();
        goto LABEL_393;
      }

      LODWORD(valuePtr[0]) = 0;
      OUTLINED_FUNCTION_10_25();
      OUTLINED_FUNCTION_22_15();
      ReadMovieBytes(v268, v269, v270, v271);
      v272 = valuePtr[0];
      v273 = bswap32(valuePtr[0]);
      if (LODWORD(valuePtr[0]) == 0x1000000)
      {
        if (v265 <= 0xF)
        {
          goto LABEL_381;
        }
      }

      else if (v265 < v273 || v273 <= 7)
      {
        goto LABEL_381;
      }

      LODWORD(valuePtr[0]) = 0;
      v274 = OUTLINED_FUNCTION_10_25();
      ReadMovieBytes(v274, v275, 4u, v276);
      v277 = valuePtr[0];
      v278 = v266 + 8;
      if (v272 == 0x1000000)
      {
        *&valuePtr[0] = 0;
        v279 = OUTLINED_FUNCTION_10_25();
        ReadMovieBytes(v279, v280, 8u, v281);
        v273 = bswap64(*&valuePtr[0]);
        if (v273 > v265 || v273 <= 0xF)
        {
          goto LABEL_381;
        }

        v278 = v266 + 16;
      }

      v282 = 1937011555;
      if (v277 == 1987014509)
      {
        v485 = -1;
        v484 = 0;
        v483 = -1;
        v482 = 0;
        *&size[1] = -1;
        size[0] = 0;
        v480 = -1;
        v479 = 0;
        v478 = -1;
        v477 = 0;
        v475 = 0;
        v476 = -1;
        OUTLINED_FUNCTION_18_14();
        v283 = v273 - 8;
        if (v273 != 8)
        {
          break;
        }
      }

      v410 = -8;
      if (v272 == 0x1000000)
      {
        v410 = -16;
      }

LABEL_380:
      v266 = v278 + v273 + v410;
      v265 -= v273;
      if (!v265)
      {
        goto LABEL_381;
      }
    }

    v462 = 0;
    v456 = v278;
    v284 = v278;
LABEL_272:
    if (!FindAtomOffsetOfType(a4, 1953653099, v284, v283, &v485, &v484))
    {
      goto LABEL_374;
    }

    if (!FindAtomOffsetOfType(a4, 1953196132, v485, v484, &v476, &v475 + 1))
    {
      goto LABEL_318;
    }

    if (!FindAtomOffsetOfType(a4, 1835297121, v485, v484, &v483, &v482))
    {
      goto LABEL_318;
    }

    v285 = OUTLINED_FUNCTION_13_15();
    if (!FindAtomOffsetOfType(v285, v286 | 0x6D690000u, v287, v288, v289, v290))
    {
      goto LABEL_318;
    }

    if (!FindAtomOffsetOfType(a4, 1937007212, *&size[1], size[0], &v478, &v477))
    {
      goto LABEL_318;
    }

    v291 = OUTLINED_FUNCTION_10_25();
    ReadMovieBytes(v291, v292, 0x54u, v293);
    HIDWORD(valuePtr[0]) = bswap32(HIDWORD(valuePtr[0]));
    if (!FindAtomOffsetOfType(a4, 1751411826, v483, v482, &v480, &v479) || v479 < 0xC)
    {
      goto LABEL_318;
    }

    OUTLINED_FUNCTION_14_20();
    FindAtomOffsetOfType(a4, 1937011555, v294, v295, &v495, &v471);
    OUTLINED_FUNCTION_14_20();
    FindAtomOffsetOfType(a4, v282 + 23, v296, v297, &v491, &v490);
    if (v491 == -1)
    {
      OUTLINED_FUNCTION_14_20();
      FindAtomOffsetOfType(a4, v282 + 1743, v298, v299, &v491, &v490);
    }

    OUTLINED_FUNCTION_14_20();
    FindAtomOffsetOfType(a4, 1937007471, v300, v301, &v494, &v469);
    OUTLINED_FUNCTION_14_20();
    FindAtomOffsetOfType(a4, 1668232756, v302, v303, &v493, &__pattern4);
    OUTLINED_FUNCTION_14_20();
    if (!FindAtomOffsetOfType(a4, v282 + 1, v304, v305, &v487, &v486))
    {
LABEL_318:
      v494 = -1;
      v495 = -1;
      v493 = -1;
      v491 = -1;
      v489 = -1;
      v476 = -1;
      goto LABEL_319;
    }

    LODWORD(__s1[0]) = 0;
    v306 = OUTLINED_FUNCTION_2_65();
    ReadMovieBytes(v306, v307, v308, v309);
    v487 += 8;
    v486 -= 8;
    LODWORD(__len) = bswap32(__s1[0]);
    if (__len == 1936684398)
    {
      LOWORD(__s1[0]) = 0;
      v324 = OUTLINED_FUNCTION_4_50();
      ReadMovieBytes(v324, v325, 2u, v326);
      OUTLINED_FUNCTION_20_10();
      if (v99 != v100)
      {
        if (v327 == 256)
        {
          a4 = v465;
          if (IsSoundDescriptionISOv1(v465, v487, v486))
          {
            a6 = 36;
          }

          else
          {
            a6 = 52;
          }
        }

        else
        {
          a6 = 36;
          a4 = v465;
        }
      }

      else
      {
        LODWORD(__s1[0]) = 0;
        v328 = OUTLINED_FUNCTION_2_65();
        ReadMovieBytes(v328, v329, v330, v331);
        a6 = bswap32(__s1[0]);
      }

      v282 = v486 - a6;
      v337 = OUTLINED_FUNCTION_13_15();
      if (!FindAtomOffsetOfType(v337, v338 | 0x73690000u, v339, v282, v340, v341))
      {
        v351 = OUTLINED_FUNCTION_13_15();
        FindAtomOffsetOfType(v351, v352 | 0x70690000, v353, v282, v354, v355);
        OUTLINED_FUNCTION_16_16();
        if (!v356)
        {
          goto LABEL_318;
        }

        goto LABEL_286;
      }

      OUTLINED_FUNCTION_16_16();
    }

    else
    {
      v310 = OUTLINED_FUNCTION_6_41();
      v315 = v314 | 0x73690000;
      if (v317 == v316)
      {
        if (!FindImageDescriptionExtensionOffset(v310, v311, v315, v312, v313))
        {
          v318 = OUTLINED_FUNCTION_6_41();
          if (!FindImageDescriptionExtensionOffset(v318, v320, v319 | 0x70690000u, v321, v322))
          {
            goto LABEL_318;
          }

LABEL_286:
          v323 = 0;
          goto LABEL_300;
        }
      }

      else if (!FindSampleDescriptionExtensionOffset(v310, v311, v315, v312, v313))
      {
        v332 = OUTLINED_FUNCTION_6_41();
        if (!FindSampleDescriptionExtensionOffset(v332, v334, v333 | 0x70690000u, v335, v336))
        {
          goto LABEL_318;
        }

        goto LABEL_286;
      }

      v323 = 1;
    }

LABEL_300:
    if (v495 == -1)
    {
      goto LABEL_319;
    }

    v342 = (v494 & v493) == 0xFFFFFFFFFFFFFFFFLL || v491 == -1;
    v441 = v489;
    if (v342 || v489 == -1)
    {
      goto LABEL_319;
    }

    LODWORD(v438) = v323;
    if (!v464)
    {
      goto LABEL_327;
    }

    v344 = v467;
    v345 = v459;
    if (v466)
    {
      v346 = v466;
      v344 = v467;
      v347 = v437;
      v345 = v459;
      while (1)
      {
        v349 = *v346++;
        v348 = v349;
        if (HIDWORD(valuePtr[0]) == v349 || v348 == 0)
        {
          break;
        }

        ++v345;
        ++v344;
        if (!--v347)
        {
          goto LABEL_326;
        }
      }
    }

    if (!*v344)
    {
LABEL_326:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_69();
      v359 = FigSignalErrorAtGM();
      if (!v359)
      {
LABEL_327:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_69();
        v359 = FigSignalErrorAtGM();
LABEL_328:
        v360 = v442;
        if (!v359)
        {
          goto LABEL_359;
        }
      }

LABEL_430:
      v12 = v467;
      ByteStreamSize = v359;
      goto LABEL_394;
    }

    v433 = bswap32(**v344);
    if (v433 <= 7)
    {
      goto LABEL_327;
    }

    v463 = *v345;
    v427 = *v344;
    if (*v345)
    {
      v358 = bswap32(**v345);
      if (v358 <= 0x17)
      {
        goto LABEL_327;
      }

      v435 = v358;
    }

    else
    {
      v435 = 0;
    }

    LODWORD(v428) = 0;
    v430 = v489 - 8;
    v361 = v489 + v488;
    v445 = v487 + v486;
    v449 = v445 - 8;
    v451 = v488 + 8;
    while (1)
    {
      if (v361 > v449)
      {
        goto LABEL_348;
      }

      LODWORD(__s1[0]) = 0;
      OUTLINED_FUNCTION_4_50();
      OUTLINED_FUNCTION_22_15();
      MovieBytes = ReadMovieBytes(v362, v363, v364, v365);
      v373 = bswap32(__s1[0]);
      if ((v445 - v361) < v373)
      {
        goto LABEL_327;
      }

      v374 = a6;
      v375 = v373;
      if (v373 <= 7)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_69();
        v359 = FigSignalErrorAtGM();
        a6 = v374;
        a4 = v465;
        goto LABEL_328;
      }

      LODWORD(__s1[0]) = 0;
      v376 = OUTLINED_FUNCTION_17_13(MovieBytes, v361 + 4, v367, v368, v369, v370, v371, v372, v415, v416, v418, v420, v421, v423, theString, v427, v428, v430, v431, v433, v435, v437, v438, v441, v442, v445, v447, v449, v451, __len, v454, v456, v457, v458, v459, v460, v463, v464, v465);
      v379 = ReadMovieBytes(v376, v377, 4u, v378);
      if (!v463 || LODWORD(__s1[0]) != 1145656661)
      {
        break;
      }

      v387 = v361 + 8;
      if (v375 <= 0x17)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_69();
        LODWORD(v428) = FigSignalErrorAtGM();
        v390 = 4;
        goto LABEL_342;
      }

      v388 = OUTLINED_FUNCTION_17_13(v379, v380, v381, v382, v383, v384, v385, v386, v415, v416, v418, v420, v421, v423, theString, v427, v428, v430, v431, v433, v435, v437, v438, v441, v442, v445, v447, v449, v451, __len, v454, v456, v457, v458, v459, v460, v463, v464, v465);
      ReadMovieBytes(v388, v361 + 8, 0x10u, v389);
      if (!memcmp(__s1, v463 + 2, 0x10uLL))
      {
        goto LABEL_341;
      }

      v390 = 10;
LABEL_342:
      a6 = v374;
      v361 = v387;
      a4 = v465;
      if (v390)
      {
        if (v390 == 10)
        {
          goto LABEL_348;
        }

LABEL_358:
        v360 = v442;
        v359 = v428;
        if (v428)
        {
          goto LABEL_430;
        }

LABEL_359:
        v404 = v360 + 1;
        if (v454)
        {
          v454(a6, v404 / v267);
        }

        LODWORD(v442) = v404;
        if (v438)
        {
          v282 = 1937011555;
          if (__len == 1986618469)
          {
            v405 = 1768780388;
LABEL_367:
            LODWORD(__s1[0]) = v405;
            v406 = OUTLINED_FUNCTION_2_65();
            WriteMovieBytes(v406, v407, v408, v409);
          }

          else if (__len == 1936684398)
          {
            v405 = 1936552548;
            goto LABEL_367;
          }

          v462 = 1;
        }

        else
        {
          v462 = 1;
          v282 = 1937011555;
        }

LABEL_319:
        v357 = v284 - v485;
        v284 = v485 + v484;
        v283 = v283 - v484 + v357;
        if (!v283)
        {
LABEL_374:
          v410 = -8;
          if (v272 == 0x1000000)
          {
            v410 = -16;
          }

          if (!v462)
          {
            v278 = v456;
            goto LABEL_380;
          }

          ByteStreamSize = 0;
LABEL_393:
          v12 = v467;
          goto LABEL_394;
        }

        goto LABEL_272;
      }
    }

    if (LODWORD(__s1[0]) != 1701147238)
    {
      a4 = v465;
LABEL_348:
      v391 = v451;
      if (v435 + v433 > v451)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_69();
        v359 = FigSignalErrorAtGM();
        a6 = v447;
        goto LABEL_328;
      }

      LODWORD(__s1[0]) = bswap32(v451);
      v392 = OUTLINED_FUNCTION_4_50();
      WriteMovieBytes(v392, v430, 4u, v393);
      v452 = v451 - v433;
      v394 = v391 - v433 - v435;
      WriteMovieBytes(a4, v441 - 4, v433 - 4, (v427 + 1));
      if (v463)
      {
        WriteMovieBytes(a4, v433 - 4 + v441 - 4, v435, v463);
        if (v394 < 8)
        {
          LODWORD(__s1[0]) = bswap32(v452);
          v399 = OUTLINED_FUNCTION_4_50();
          v400 = v433 - 4 + v441 - 4;
        }

        else
        {
LABEL_354:
          LODWORD(__s1[0]) = bswap32(v394);
          OUTLINED_FUNCTION_4_50();
          OUTLINED_FUNCTION_22_15();
          WriteMovieBytes(v395, v396, v397, v398);
          LODWORD(__s1[0]) = 1701147238;
          v399 = OUTLINED_FUNCTION_4_50();
        }

        WriteMovieBytes(v399, v400, 4u, v401);
      }

      else
      {
        if (v394 > 7)
        {
          goto LABEL_354;
        }

        LODWORD(v433) = v433 + v394;
      }

      a6 = v447;
      LODWORD(__s1[0]) = bswap32(v433);
      v402 = OUTLINED_FUNCTION_4_50();
      WriteMovieBytes(v402, v430, 4u, v403);
      goto LABEL_358;
    }

LABEL_341:
    v390 = 0;
    v451 += v375;
    v387 = v361 + v375;
    goto LABEL_342;
  }

  Count = CFArrayGetCount(Value);
  if (!Count)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_45();
  v15 = malloc_type_calloc(Count, 4uLL, v14);
  if (!v15)
  {
    return 4294967188;
  }

  v466 = v15;
  v467 = malloc_type_calloc(Count, 8uLL, 0x10040436913F5uLL);
  if (!v467)
  {
    v457 = 0;
    v458 = 0;
    v459 = 0;
    v460 = 0;
    v12 = 0;
    ByteStreamSize = 4294967188;
    v413 = v466;
    goto LABEL_395;
  }

  OUTLINED_FUNCTION_5_45();
  v460 = malloc_type_calloc(v16, v17, v18);
  if (!v460)
  {
    v457 = 0;
    v458 = 0;
    v459 = 0;
    v460 = 0;
LABEL_428:
    ByteStreamSize = 4294967188;
    goto LABEL_429;
  }

  v459 = malloc_type_calloc(Count, 8uLL, 0x10040436913F5uLL);
  if (!v459)
  {
    v457 = 0;
    v458 = 0;
    v459 = 0;
    goto LABEL_428;
  }

  v458 = malloc_type_calloc(1uLL, 8 * Count, 0x10040436913F5uLL);
  if (!v458)
  {
    v457 = 0;
    v458 = 0;
    goto LABEL_428;
  }

  OUTLINED_FUNCTION_5_45();
  v22 = malloc_type_calloc(v19, v20, v21);
  if (!v22)
  {
    v457 = 0;
    goto LABEL_428;
  }

  v461 = Count;
  v464 = Count;
  theString = a2;
  v428 = a3;
  v446 = a6;
  v457 = v22;
  v23 = 0;
  v24 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v12, v23);
    if (!ValueAtIndex)
    {
      ByteStreamSize = 4294966618;
      goto LABEL_393;
    }

    v26 = ValueAtIndex;
    if (Count == 1 || (LODWORD(valuePtr[0]) = 0, (v27 = CFDictionaryGetValue(ValueAtIndex, @"id")) == 0))
    {
      LODWORD(v28) = 0;
    }

    else
    {
      CFNumberGetValue(v27, kCFNumberSInt32Type, valuePtr);
      LODWORD(v28) = valuePtr[0];
    }

    v29 = CFDictionaryGetValue(v26, @"sinf");
    v30 = v29;
    if (v29)
    {
      v467[v23] = CFDataGetBytePtr(v29);
      v460[v23] = CFDataGetLength(v30);
    }

    v31 = CFDictionaryGetValue(v26, @"sinf2");
    if (v31)
    {
      v459[v23] = CFDataGetBytePtr(v31);
    }

    v32 = CFDictionaryGetValue(v26, @"pinf");
    v33 = v32;
    if (v32 && !v467[v23])
    {
      v467[v23] = CFDataGetBytePtr(v32);
      v460[v23] = CFDataGetLength(v33);
    }

    v34 = CFDictionaryGetValue(v26, @"dpInfo");
    if (v34)
    {
      v35 = v34;
      v458[v23] = CFDataGetBytePtr(v34);
      v457[v23] = CFDataGetLength(v35);
      v24 = 1;
    }

    v466[v23] = v28;
    if (!(v30 | v33))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_69();
      ByteStreamSize = FigSignalErrorAtGM();
LABEL_429:
      v413 = v466;
      v12 = v467;
      goto LABEL_395;
    }

    ++v23;
  }

  while (Count != v23);
  v12 = v467;
  if (!v24)
  {
    a6 = v446;
    goto LABEL_254;
  }

  v493 = -1;
  v490 = 0;
  v491 = -1;
  v488 = 0;
  v489 = -1;
  v486 = 0;
  v487 = -1;
  v484 = 0;
  v485 = -1;
  v482 = 0;
  v483 = -1;
  size[0] = 0;
  v36 = CFPreferencesCopyAppValue(@"UseChunkedDecrypt", @"com.apple.coremedia");
  v37 = v428;
  if (v36)
  {
    v38 = v36;
    v39 = CFGetTypeID(v36);
    if (v39 == CFBooleanGetTypeID())
    {
      CFBooleanGetValue(v38);
    }

    CFRelease(v38);
  }

  if (!a4)
  {
    goto LABEL_382;
  }

  v494 = 0;
  ByteStreamSize = GetByteStreamSize(a4, &v494);
  if (ByteStreamSize)
  {
    goto LABEL_394;
  }

  v41 = v494;
  if (v494 < 1)
  {
LABEL_382:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_69();
LABEL_383:
    ByteStreamSize = FigSignalErrorAtGM();
    if (!ByteStreamSize)
    {
      goto LABEL_384;
    }

    goto LABEL_394;
  }

  v42 = 0;
  v43 = 0;
  HIDWORD(v420) = 0;
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_21_14();
  v44 = v464;
  while (1)
  {
    if (v41 <= 0)
    {
LABEL_40:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_69();
      goto LABEL_383;
    }

    LODWORD(valuePtr[0]) = 0;
    v45 = OUTLINED_FUNCTION_10_25();
    ReadMovieBytes(v45, v42, 4u, v46);
    v47 = bswap32(valuePtr[0]);
    LODWORD(v444) = valuePtr[0];
    if (LODWORD(valuePtr[0]) == 0x1000000)
    {
      if (v41 <= 0xF)
      {
        goto LABEL_40;
      }
    }

    else if (v41 < v47 || v47 <= 7)
    {
      goto LABEL_40;
    }

    LODWORD(valuePtr[0]) = 0;
    v48 = OUTLINED_FUNCTION_10_25();
    ReadMovieBytes(v48, v49, 4u, v50);
    v51 = v42;
    v52 = valuePtr[0];
    v440 = v51;
    OUTLINED_FUNCTION_7_28();
    if (v123)
    {
      *&valuePtr[0] = 0;
      v54 = OUTLINED_FUNCTION_10_25();
      ReadMovieBytes(v54, v55, 8u, v56);
      v57 = bswap64(*&valuePtr[0]);
      if (v57 > v41 || v57 <= 0xF)
      {
        goto LABEL_40;
      }

      v53 = v440 + 16;
    }

    if (v52 == v28)
    {
      break;
    }

    OUTLINED_FUNCTION_7_28();
    v256 = -8;
    if (v123)
    {
      v256 = -16;
    }

LABEL_249:
    v42 = v255 + v254 + v256;
    v41 -= v255;
    if (!v41)
    {
      if (v43)
      {
        goto LABEL_384;
      }

      ByteStreamSize = 4294954764;
      goto LABEL_394;
    }
  }

  v432 = v53;
  v58 = &v478;
  *&size[1] = -1;
  v479 = 0;
  v480 = -1;
  v477 = 0;
  v478 = -1;
  v475 = 0;
  v476 = -1;
  v472 = 0;
  v471 = -1;
  v470 = 0;
  v469 = -1;
  v468 = 0;
  OUTLINED_FUNCTION_18_14();
  LODWORD(__s1[0]) = v28 - 5;
  v59 = OUTLINED_FUNCTION_2_65();
  v61 = v60;
  WriteMovieBytes(v59, v62, v63, v64);
  memset(valuePtr, 0, sizeof(valuePtr));
  LODWORD(v475) = 0;
  v429 = v61;
  v65 = v61 - 8;
  if (v61 == 8)
  {
    LODWORD(__s1[0]) = v28;
    v261 = OUTLINED_FUNCTION_2_65();
    WriteMovieBytes(v261, v262, v263, v264);
    OUTLINED_FUNCTION_7_28();
    v256 = -8;
    if (v123)
    {
      v256 = -16;
    }

LABEL_248:
    v43 = 1;
    v255 = v429;
    v254 = v432;
    goto LABEL_249;
  }

  v66 = 0;
  v67 = v432;
  do
  {
    v455 = v67;
    LODWORD(v464) = v65;
    if (!FindAtomOffsetOfType(a4, 1953653099, v67, v65, &size[1], &v479))
    {
      break;
    }

    if (!FindAtomOffsetOfType(a4, 1953196132, v58[4], v479, &v469, &v468))
    {
      goto LABEL_72;
    }

    if (!FindAtomOffsetOfType(a4, 1835297121, v58[4], v479, &v480, &v477))
    {
      goto LABEL_72;
    }

    v68 = OUTLINED_FUNCTION_13_15();
    if (!FindAtomOffsetOfType(v68, v69 | 0x6D690000u, v70, v71, v72, v73))
    {
      goto LABEL_72;
    }

    if (!FindAtomOffsetOfType(a4, 1937007212, *v58, HIDWORD(v475), &v471, &v470))
    {
      goto LABEL_72;
    }

    v74 = OUTLINED_FUNCTION_10_25();
    ReadMovieBytes(v74, v75, 0x54u, v76);
    HIDWORD(valuePtr[0]) = bswap32(HIDWORD(valuePtr[0]));
    if (!FindAtomOffsetOfType(a4, 1751411826, v58[2], v477, &v476, &v472) || v472 < 0xC)
    {
      goto LABEL_72;
    }

    OUTLINED_FUNCTION_12_21();
    FindAtomOffsetOfType(a4, 1937011555, v77, v78, &v493, &v490);
    OUTLINED_FUNCTION_12_21();
    FindAtomOffsetOfType(a4, v30 + 23, v79, v80, &v487, &v484);
    v443 = v58[10];
    if (v443 == -1)
    {
      OUTLINED_FUNCTION_12_21();
      FindAtomOffsetOfType(a4, v30 + 1743, v81, v82, &v487, &v484);
    }

    OUTLINED_FUNCTION_12_21();
    FindAtomOffsetOfType(a4, ByteStreamSize + 259, v83, v84, &v491, &v488);
    OUTLINED_FUNCTION_12_21();
    FindAtomOffsetOfType(a4, 1668232756, v85, v86, &v489, &v486);
    OUTLINED_FUNCTION_12_21();
    if (!FindAtomOffsetOfType(a4, v30 + 1, v87, v88, &v483, size))
    {
LABEL_72:
      v58[16] = -1;
      v58[14] = -1;
      v58[12] = -1;
      v58[10] = -1;
      v58[8] = -1;
      v469 = -1;
      goto LABEL_73;
    }

    LODWORD(__s1[0]) = 0;
    v89 = OUTLINED_FUNCTION_2_65();
    ReadMovieBytes(v89, v90, v91, v92);
    LODWORD(v422) = __s1[0];
    v93 = bswap32(__s1[0]);
    v94 = v58[6] + 8;
    v58[6] = v94;
    size[0] -= 8;
    switch(v93)
    {
      case 0x636C6370u:
        LODWORD(__s1[0]) = 0;
        v105 = OUTLINED_FUNCTION_2_65();
        ReadMovieBytes(v105, v106, v107, v108);
        if (LODWORD(__s1[0]) != 942683760)
        {
          goto LABEL_72;
        }

        v109 = OUTLINED_FUNCTION_13_15();
        if (!FindAtomOffsetOfType(v109, v110 | 0x73690000u, v111, v112, v113, v114))
        {
          v58[8] = 0;
          v482 = 0;
        }

        break;
      case 0x736F756Eu:
        LOWORD(__s1[0]) = 0;
        v95 = OUTLINED_FUNCTION_4_50();
        ReadMovieBytes(v95, v96, 2u, v97);
        OUTLINED_FUNCTION_20_10();
        if (v99 != v100)
        {
          if (v98 == 256)
          {
            IsSoundDescriptionISOv1(a4, v58[6], size[0]);
          }
        }

        else
        {
          LODWORD(__s1[0]) = 0;
          v101 = OUTLINED_FUNCTION_2_65();
          ReadMovieBytes(v101, v102, v103, v104);
        }

        v116 = OUTLINED_FUNCTION_13_15();
        if (!FindAtomOffsetOfType(v116, v117 | 0x73690000u, v118, v119, v120, v121))
        {
          goto LABEL_72;
        }

        break;
      case 0x76696465u:
        if (!FindImageDescriptionExtensionOffset(a4, v94, 1936289382, &v485, &v482))
        {
          goto LABEL_72;
        }

        break;
      default:
        if (!FindSampleDescriptionExtensionOffset(a4, v94, 1936289382, &v485, &v482))
        {
          goto LABEL_72;
        }

        break;
    }

    ByteStreamSize = v58[16];
    if (ByteStreamSize != -1)
    {
      v28 = v58[14];
      v122 = v58[12];
      v30 = v58[10];
      v123 = (v28 & v122) == 0xFFFFFFFFFFFFFFFFLL || v30 == -1;
      if (!v123 && v58[8] != -1)
      {
        v125 = 0;
        v126 = v466;
        v127 = v461;
        do
        {
          v129 = *v126++;
          v128 = v129;
          if (HIDWORD(valuePtr[0]) == v129 || v128 == 0)
          {
            v132 = v125 >> 32;
            goto LABEL_97;
          }

          v125 += 0x100000000;
          --v127;
        }

        while (v127);
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_69();
        v131 = FigSignalErrorAtGM();
        if (v131)
        {
          goto LABEL_433;
        }

        ByteStreamSize = v58[16];
        v28 = v58[14];
        v122 = v58[12];
        v132 = -1;
        v30 = v58[10];
LABEL_97:
        v417 = v132;
        v419 = v41;
        v450 = v58[17];
        __pattern4 = 0;
        v495 = 0;
        v496 = 0;
        v473 = 0;
        GetDefaultFairPlayContextID(0);
        NOAHabXy();
        v134 = FAIRPLAY_CALL_LOG(v133);
        if (v134 == -42032)
        {
          GetDefaultFairPlayContextID(1);
          NOAHabXy();
          v134 = FAIRPLAY_CALL_LOG(v135);
        }

        v136 = v134;
        if (!v134)
        {
          if (v443 == -1)
          {
            LODWORD(__s1[0]) = 0;
            v142 = OUTLINED_FUNCTION_2_65();
            ReadMovieBytes(v142, v143, v144, v145);
            v141 = bswap32(__s1[0]);
            if (v141 > 0xFF || (v141 != 16 ? (v146 = v141 == 8) : (v146 = 1), !v146))
            {
              v136 = 4294966630;
              goto LABEL_169;
            }

            LODWORD(__len) = 0;
          }

          else
          {
            LODWORD(__s1[0]) = 0;
            v137 = OUTLINED_FUNCTION_2_65();
            ReadMovieBytes(v137, v138, v139, v140);
            v141 = 0;
            LODWORD(__len) = bswap32(__s1[0]);
            __pattern4 = __len;
          }

          LODWORD(__s1[0]) = 0;
          v147 = OUTLINED_FUNCTION_2_65();
          ReadMovieBytes(v147, v148, v149, v150);
          v151 = __s1[0];
          v152 = v28 + 8;
          if (v28 == -1)
          {
            v152 = -1;
          }

          v439 = v152;
          v153 = v122 == -1 ? -1 : v122 + 8;
          LODWORD(__s1[0]) = 0;
          v154 = OUTLINED_FUNCTION_2_65();
          ReadMovieBytes(v154, v155, v156, v157);
          LODWORD(v28) = __s1[0];
          v158 = FigThreadRegisterAbortAction();
          if (!v158 || (v136 = v158, v158 == -17561))
          {
            v136 = 0;
            if (v151)
            {
              if (!v473)
              {
                LODWORD(v159) = 0;
                v160 = bswap32(v151);
                v436 = v30 + 12;
                v161 = bswap32(v28);
                v28 = ByteStreamSize + 8;
                v162 = v141 >> 3;
                v163 = v161;
                LODWORD(v426) = v162;
                if (v443 == -1)
                {
                  v164 = v162;
                }

                else
                {
                  v164 = 4;
                }

                LODWORD(v434) = v164;
                v165 = v160;
                v166 = HIDWORD(v420);
                LODWORD(v30) = 1;
                LODWORD(v448) = v160;
                while (1)
                {
                  if (v163 && (LODWORD(__s1[0]) = 0, v167 = OUTLINED_FUNCTION_4_50(), ReadMovieBytes(v167, v28, 4u, v168), LODWORD(__s1[0]) = 0, v169 = OUTLINED_FUNCTION_2_65(), ReadMovieBytes(v169, v170, v171, v172), LODWORD(v159) = bswap32(__s1[0]), v28 += 12, --v163, v163))
                  {
                    LODWORD(__s1[0]) = 0;
                    v173 = OUTLINED_FUNCTION_4_50();
                    ReadMovieBytes(v173, v28, 4u, v174);
                    v175 = bswap32(__s1[0]);
                    LODWORD(ByteStreamSize) = __len;
                  }

                  else
                  {
                    LODWORD(ByteStreamSize) = __len;
                    v163 = 0;
                    v175 = v30 + 1;
                  }

                  v176 = v473;
                  if (v30 < v175 && !v473)
                  {
                    break;
                  }

LABEL_164:
                  v136 = 0;
                  if (!v160 || v176)
                  {
                    goto LABEL_169;
                  }
                }

                HIDWORD(v422) = v163;
                v424 = v28;
                v30 = v30;
                v177 = v175;
                while (2)
                {
                  if (v159 >= v160)
                  {
                    v159 = v160;
                  }

                  else
                  {
                    v159 = v159;
                  }

                  OUTLINED_FUNCTION_5_45();
                  v181 = malloc_type_calloc(v178, v179, v180);
                  v28 = v181;
                  v182 = 4 * v159;
                  if (ByteStreamSize)
                  {
                    memset_pattern4(v181, &__pattern4, 4 * v159);
                    ByteStreamSize = (v159 * ByteStreamSize);
                    goto LABEL_151;
                  }

                  v183 = ReadMovieBytes(v465, v436 + (v448 - v160) * v434, v159 * v434, v181);
                  if (v443 != -1)
                  {
                    if (v159)
                    {
                      ByteStreamSize = 0;
                      v190 = v28 - 4;
                      do
                      {
                        v191 = bswap32(*(v190 + v182));
                        *(v190 + v182) = v191;
                        ByteStreamSize += v191;
                        v182 -= 4;
                      }

                      while (v182);
                      goto LABEL_151;
                    }

LABEL_150:
                    ByteStreamSize = 0;
                    goto LABEL_151;
                  }

                  if (v426 == 2)
                  {
                    v194 = (v159 - 1);
                    if (v159 - 1 < 0)
                    {
                      goto LABEL_150;
                    }

                    ByteStreamSize = 0;
                    do
                    {
                      v195 = bswap32(*(v28 + 2 * v194)) >> 16;
                      *(v28 + 4 * v194) = v195;
                      ByteStreamSize += v195;
                      v214 = v194-- <= 0;
                    }

                    while (!v214);
                  }

                  else
                  {
                    if (v426 != 1)
                    {
                      goto LABEL_150;
                    }

                    v192 = (v159 - 1);
                    if (v159 - 1 < 0)
                    {
                      goto LABEL_150;
                    }

                    ByteStreamSize = 0;
                    do
                    {
                      v193 = *(v28 + v192);
                      *(v28 + 4 * v192) = v193;
                      ByteStreamSize += v193;
                      --v192;
                    }

                    while (v192 != -1);
                  }

LABEL_151:
                  if (v153 == -1)
                  {
                    LODWORD(__s1[0]) = 0;
                    v200 = OUTLINED_FUNCTION_17_13(v183, ((4 * v30 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + v439, v184, v185, v186, v187, v188, v189, v415, v417, v419, v420, v422, v424, theString, v426, v428, v429, v431, v432, v434, v436, v439, v440, v443, v444, v446, v448, v450, __len, v454, v455, v457, v458, v459, v460, v461, v464, v465);
                    ReadMovieBytes(v200, v201, 4u, v202);
                    v199 = bswap32(__s1[0]);
                  }

                  else
                  {
                    __s1[0] = 0;
                    v196 = OUTLINED_FUNCTION_17_13(v183, ((8 * v30 + 0x7FFFFFFF8) & 0x7FFFFFFF8) + v153, v184, v185, v186, v187, v188, v189, v415, v417, v419, v420, v422, v424, theString, v426, v428, v429, v431, v432, v434, v436, v439, v440, v443, v444, v446, v448, v450, __len, v454, v455, v457, v458, v459, v460, v461, v464, v465);
                    ReadMovieBytes(v196, v197, 8u, v198);
                    v199 = bswap64(__s1[0]);
                  }

                  if (v199 + ByteStreamSize > v450)
                  {
                    v136 = 4294966630;
                    a4 = v465;
                    break;
                  }

                  v203 = malloc_type_malloc(ByteStreamSize, 0xE340FF8AuLL);
                  if (*(*(CMBaseObjectGetVTable() + 16) + 8))
                  {
                    OUTLINED_FUNCTION_19_16();
                    v204();
                  }

                  __s1[1] = v28;
                  __s1[0] = v159;
                  __s1[2] = v203;
                  __s1[3] = ByteStreamSize;
                  T40gmCiYgO7uIqkoes4oO6isuYo();
                  if (*(*(CMBaseObjectGetVTable() + 16) + 16))
                  {
                    OUTLINED_FUNCTION_19_16();
                    v205();
                  }

                  free(v203);
                  free(v28);
                  v160 -= v159;
                  if (v454)
                  {
                    v454(v446, (((v448 - v160) / v165) + v166) / v44);
                  }

                  ++v30;
                  v176 = v473;
                  LODWORD(ByteStreamSize) = __len;
                  if (v30 >= v177 || v473)
                  {
                    a4 = v465;
                    v28 = v424;
                    v163 = HIDWORD(v422);
                    goto LABEL_164;
                  }

                  continue;
                }
              }
            }
          }
        }

LABEL_169:
        v58 = &v478;
        if (v495)
        {
          FigThreadUnregisterAbortAction();
        }

        v12 = v467;
        v37 = v428;
        OUTLINED_FUNCTION_8_20();
        OUTLINED_FUNCTION_21_14();
        if (v206)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_69();
          v136 = FigSignalErrorAtGM();
        }

        v41 = v419;
        if (v496)
        {
          v207 = Hz73b(v496);
          FAIRPLAY_CALL_LOG(v207);
        }

        if (v136)
        {
          goto LABEL_414;
        }

        if (v482)
        {
          v30 = v467[v417];
          v208 = v482 + 8;
          if (v30)
          {
            v209 = bswap32(*v30);
            if (v209 > v460[v417] || v209 <= 7)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_69();
              v244 = FigSignalErrorAtGM();
LABEL_435:
              v136 = v244;
              goto LABEL_414;
            }

            v210 = 0;
            v211 = v209 - 8;
            if (v211)
            {
              v212 = (v30 + 8);
              while (1)
              {
                v213 = bswap32(*v212);
                v214 = v213 >= 8 && v211 > v213;
                if (!v214)
                {
                  break;
                }

                if (v212[1] == 1701147238)
                {
                  v215 = 0;
                }

                else
                {
                  v215 = v213;
                }

                v210 += v215;
                v212 = (v212 + v213);
                v211 -= v213;
                if (!v211)
                {
                  goto LABEL_191;
                }
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_69();
              FigSignalErrorAtGM();
            }

LABEL_191:
            v216 = v210 + 8;
            if (v210 + 8 > v208)
            {
              v217 = v483 + size[0];
              v218 = v485 + v482;
              if (v218 + 8 <= v217)
              {
                LODWORD(__s1[0]) = 0;
                v219 = OUTLINED_FUNCTION_2_65();
                ReadMovieBytes(v219, v220, v221, v222);
                if (LODWORD(__s1[0]) == 1701147238)
                {
                  LODWORD(__s1[0]) = 0;
                  OUTLINED_FUNCTION_4_50();
                  OUTLINED_FUNCTION_22_15();
                  ReadMovieBytes(v223, v224, v225, v226);
                  v227 = bswap32(__s1[0]);
                  if (v218 + v227 > v217)
                  {
                    LODWORD(v227) = 0;
                  }

                  v208 += v227;
                }
              }
            }

            v214 = v216 > v208;
            LODWORD(ByteStreamSize) = 1937007212;
            if (v214)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_69();
              v131 = FigSignalErrorAtGM();
LABEL_433:
              v136 = v131;
              v12 = v467;
LABEL_414:
              ByteStreamSize = v136;
              if (!v136)
              {
                goto LABEL_384;
              }

              goto LABEL_394;
            }
          }

          v228 = v208;
          OUTLINED_FUNCTION_9_5();
          v231 = malloc_type_malloc(v229, v230);
          if (v231)
          {
            v232 = v231;
            v58 = &v478;
            ReadMovieBytes(a4, v485 - 8, v482 + 8, v231);
            v233 = bswap32(*v232) - 8;
            if (v233)
            {
              v234 = v232 + 2;
              while (*v234)
              {
                if (v234[1] == 1634562662)
                {
                  v238 = bswap32(v234[2]);
                  if (v238)
                  {
                    v239 = v238 == 1061109567;
                  }

                  else
                  {
                    v239 = 1;
                  }

                  if (v239)
                  {
                    v236 = 0;
                  }

                  else
                  {
                    v236 = v238;
                  }

                  goto LABEL_215;
                }

                v235 = bswap32(*v234);
                v234 = (v234 + v235);
                v233 -= v235;
                if (!v233)
                {
                  break;
                }
              }
            }

            v236 = 0;
LABEL_215:
            if (v30)
            {
              v241 = *v30;
              v240 = *(v30 + 4);
              OUTLINED_FUNCTION_9_5();
              ByteStreamSize = malloc_type_malloc(v242, v243);
              if (!ByteStreamSize)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_69();
                v244 = FigSignalErrorAtGM();
                if (v244)
                {
                  v12 = v467;
                  goto LABEL_435;
                }
              }

              v245 = bswap32(v241);
              *ByteStreamSize = bswap32(v228) | (v240 << 32);
              v58 = (ByteStreamSize + 8);
              v246 = v228 - 8;
              LODWORD(v41) = v245 - 8;
              __len = v228;
              if (v245 == 8)
              {
                if (v246 > 7)
                {
                  v58 = &v478;
                  v41 = v419;
                  OUTLINED_FUNCTION_11_23();
                  goto LABEL_228;
                }

                bzero((ByteStreamSize + 8), (v228 - 8));
                v58 = &v478;
                v41 = v419;
                OUTLINED_FUNCTION_11_23();
              }

              else
              {
                v247 = 0;
                v28 = v30 + 8;
                OUTLINED_FUNCTION_11_23();
                do
                {
                  v37 = bswap32(*v28);
                  v248 = v58;
                  if (*(v28 + 4) != 1701147238)
                  {
                    memmove(v58, v28, v37);
                    v249 = bswap32(*v58);
                    v248 = (v58 + v249);
                    v246 -= v249;
                    v247 = v58;
                    v58 = (v58 + v249);
                  }

                  v28 += v37;
                  v41 = (v41 - v37);
                }

                while (v41);
                if (v246 <= 7)
                {
                  bzero(v248, v246);
                  OUTLINED_FUNCTION_15_18();
                  if (v247)
                  {
                    *v247 = bswap32(bswap32(*v247) + v246);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_15_18();
LABEL_228:
                  *v250 = bswap32(v246) | 0x6565726600000000;
                  v252 = v251 - 8;
                  if (v252)
                  {
                    bzero(v250 + 1, v252);
                  }
                }
              }

              LODWORD(v228) = __len;
              memmove(v232, ByteStreamSize, __len);
              if (ByteStreamSize)
              {
                free(ByteStreamSize);
              }
            }

            else
            {
              v232[1] = 1701147238;
              bzero(v232 + 2, v482);
              OUTLINED_FUNCTION_11_23();
            }

            v237 = v465;
            WriteMovieBytes(v465, v58[8] - 8, v228, v232);
            OUTLINED_FUNCTION_21_14();
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_69();
            v131 = FigSignalErrorAtGM();
            v58 = &v478;
            if (v131)
            {
              goto LABEL_433;
            }

            v236 = 0;
            v232 = 0;
            v237 = v465;
            OUTLINED_FUNCTION_11_23();
          }
        }

        else
        {
          if (v422 != 942683760)
          {
            v136 = 4294966630;
            goto LABEL_414;
          }

          v232 = 0;
          v237 = a4;
          v236 = 1664495672;
        }

        ++HIDWORD(v420);
        v253 = v58[6];
        LODWORD(__s1[0]) = bswap32(v236);
        WriteMovieBytes(v237, v253 + 4, 4u, __s1);
        a4 = v237;
        if (v232)
        {
          free(v232);
        }

        v66 = 1;
        v12 = v467;
        goto LABEL_73;
      }

      v12 = v467;
      OUTLINED_FUNCTION_8_20();
    }

    OUTLINED_FUNCTION_21_14();
LABEL_73:
    v115 = v58[4];
    v67 = v115 + v479;
    v65 = v464 - v479 + v455 - v115;
  }

  while (v65);
  LODWORD(__s1[0]) = v28;
  v257 = OUTLINED_FUNCTION_2_65();
  WriteMovieBytes(v257, v258, v259, v260);
  OUTLINED_FUNCTION_7_28();
  v256 = -8;
  if (v123)
  {
    v256 = -16;
  }

  if (!v66)
  {
    goto LABEL_248;
  }

LABEL_384:
  if (v37 && (Length = CFStringGetLength(theString), v412 = CFStringGetLength(@".m4p"), Length >= v412) && (v498.length = v412, v498.location = Length - v412, CFStringCompareWithOptions(theString, @".m4p", v498, 1uLL) == kCFCompareEqualTo))
  {
    ByteStreamSize = 0;
    *v37 = @"m4a";
  }

  else
  {
    ByteStreamSize = 0;
  }

LABEL_394:
  v413 = v466;
  if (v466)
  {
LABEL_395:
    free(v413);
  }

  if (v12)
  {
    free(v12);
  }

  if (v460)
  {
    free(v460);
  }

  if (v459)
  {
    free(v459);
  }

  if (v458)
  {
    free(v458);
  }

  if (v457)
  {
    free(v457);
  }

  return ByteStreamSize;
}