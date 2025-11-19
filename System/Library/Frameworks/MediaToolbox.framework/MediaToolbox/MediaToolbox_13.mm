uint64_t itemfig_unregisterPlayabilityMonitorNotification()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 600) && *(DerivedStorage + 608))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    *(DerivedStorage + 608) = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t itemfig_UnlikelyToKeepUp(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 1472) = 1;
  FigSimpleMutexUnlock();
  CFRetain(a2);

  return FigDeferNotificationToDispatchQueue();
}

uint64_t itemfig_BufferFull(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 1456) = 1;
  FigSimpleMutexUnlock();
  CFRetain(a2);

  return FigDeferNotificationToDispatchQueue();
}

uint64_t itemfig_StallWarning(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 1456) = 0;
  *(DerivedStorage + 1472) = 1;
  FigSimpleMutexUnlock();
  CFRetain(a2);

  return FigDeferNotificationToDispatchQueue();
}

void itemfig_DeferredBufferFull(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  playerfig_updatePlaybackStateAndBossRate(*(DerivedStorage + 8), 5, 2u);
  playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer();

  itemfig_DeferredPostNotificationOnDispatchQueue(v9, a2, a3, v10, a5);
}

void itemfig_DeferredStallWarning(uint64_t a1, const void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {

    CFRelease(a2);
  }

  else
  {
    v4 = DerivedStorage;
    v5 = *(DerivedStorage + 8);
    CMBaseObjectGetDerivedStorage();
    if (dword_1EAF16A10)
    {
      LODWORD(cf) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v4 + 2224) = CFAbsoluteTimeGetCurrent();
    CMTimebaseGetRate(*(v4 + 328));
    time.value = 0;
    if (a2)
    {
      itemfig_DeferredStallWarning_cold_1(a2, &time);
    }

    v7 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v8 = *(v7 + 1952);
    if (v8)
    {
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v9)
      {
        v9(v8, @"playerStats", 0x1F0B650D8, 1);
      }

      v10 = *(v7 + 1952);
      if (v10)
      {
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v11)
        {
          v11(v10, @"playerStats", 303, 0, 0);
        }
      }
    }

    FigSimpleMutexUnlock();
    v12 = CMBaseObjectGetDerivedStorage();
    time.value = 0;
    cf = 0;
    value = @"unknown";
    v13 = MEMORY[0x1E695E480];
    if (*(v12 + 128))
    {
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(CMBaseObject, *MEMORY[0x1E6960DF0], *v13, &time);
        if (time.value)
        {
          v16 = CFGetTypeID(time.value);
          if (v16 == CFDictionaryGetTypeID())
          {
            CFDictionaryGetValueIfPresent(time.value, @"cs-iftype", &value);
          }
        }
      }

      CMByteStreamGetCMBaseObject();
      FigCRABSGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }
    }

    else
    {
      v17 = 1;
    }

    v18 = *(v12 + 1256);
    if (v18 && (v19 = FigAssetGetCMBaseObject(v18), (v20 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0))
    {
      v20(v19, @"assetProperty_CreationOptionsDictionary", *v13, &cf);
      v21 = cf;
    }

    else
    {
      v21 = 0;
    }

    FPSupport_ReportStallToSymptomLog(v17, value, v21);
    if (cf)
    {
      CFRelease(cf);
    }

    if (time.value)
    {
      CFRelease(time.value);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (*(CMBaseObjectGetDerivedStorage() + 57))
    {
      playerfig_updatePlaybackStateAndBossRate(v5, 4, 1u);
    }

    else
    {
      playerfig_pauseForInternalReason(v5, 4u);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    ++*(v4 + 1656);
    CFRelease(a2);
  }
}

uint64_t itemfig_gatherItemPerformanceData(const void *a1, int a2, void *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v76 = 0;
  memset(v75, 0, sizeof(v75));
  v74 = 0;
  if (a3)
  {
    v7 = DerivedStorage;
    if (!*DerivedStorage)
    {
      v67 = a3;
      *a3 = 0;
      v8 = *(DerivedStorage + 352);
      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = (DerivedStorage + 1752);
      v10 = *(DerivedStorage + 1752);
      if (v10)
      {
        CFRelease(v10);
        *(v7 + 1752) = 0;
        v8 = *(v7 + 352);
      }

      v11 = CFGetAllocator(a1);
      FigPlaybackBossCopyPerformanceDictionary(v8, v11, (v7 + 1752));
      if (*v9)
      {
        v12 = v75 + 1;
        *&v75[0] = CFRetain(*v9);
        v13 = 1;
      }

      else
      {
LABEL_11:
        v13 = 0;
        v12 = v75;
      }

      v15 = *(v7 + 824);
      if (v15)
      {
        v16 = (v7 + 1760);
        v17 = *(v7 + 1760);
        if (v17)
        {
          CFRelease(v17);
          *(v7 + 1760) = 0;
          v15 = *(v7 + 824);
        }

        v18 = CFGetAllocator(a1);
        FigVideoCompositionProcessorCopyProperty(v15, @"VideoCompositionProcessor_PerformanceDictionary", v18, (v7 + 1760));
        if (*v16)
        {
          *v12 = CFRetain(*v16);
          ++v13;
        }
      }

      FigSimpleMutexLock();
      v19 = *(v7 + 648);
      FigSimpleMutexUnlock();
      v20 = MEMORY[0x1E695E480];
      if (v19)
      {
        theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
        Count = CFArrayGetCount(*(v7 + 648));
        if (Count >= 1)
        {
          v22 = Count;
          v23 = 0;
          if (a2)
          {
            v24 = 1;
          }

          else
          {
            v24 = theArray == 0;
          }

          v25 = v24;
          v68 = v25;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 648), v23);
            v27 = ValueAtIndex;
            v28 = *(v7 + 352);
            if (v28)
            {
              if (!*(ValueAtIndex + 37))
              {
                if (*(ValueAtIndex + 8))
                {
                  v43 = *ValueAtIndex;
                  v44 = CFGetAllocator(a1);
                  FigPlaybackBossCopyTrackPerformanceDictionary(v28, v43, v44);
                  if ((v68 & 1) == 0)
                  {
                    CFArrayAppendValue(theArray, v27);
                  }
                }
              }
            }

            v29 = *(v27 + 2);
            if (v29)
            {
              v30 = *(v27 + 38);
              if (v30)
              {
                CFRelease(v30);
                *(v27 + 38) = 0;
                v29 = *(v27 + 2);
              }

              v31 = CFGetAllocator(a1);
              FigBaseObject = FigRenderPipelineGetFigBaseObject(v29);
              v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v33)
              {
                v33(FigBaseObject, @"PerformanceDictionary", v31, v27 + 76);
              }
            }

            v34 = *(v27 + 31);
            if (v34)
            {
              *&v72 = 0;
              value = 0;
              v35 = *(v27 + 36);
              if (v35)
              {
                CFRelease(v35);
                *(v27 + 36) = 0;
                v34 = *(v27 + 31);
              }

              v36 = CFGetAllocator(a1);
              v37 = FigRenderPipelineGetFigBaseObject(v34);
              v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v38)
              {
                v38(v37, @"PerformanceDictionary", v36, v27 + 72);
              }

              if (*(v27 + 38))
              {
                v39 = CFGetAllocator(a1);
                MutableCopy = CFDictionaryCreateMutableCopy(v39, 0, *(v27 + 38));
                if (FigCFDictionaryGetValueIfPresent() && FigCFDictionaryGetValueIfPresent())
                {
                  ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
                  CFDictionarySetValue(MutableCopy, @"ImageQueuePerformanceArray", ConcatenationOfTwoArrays);
                  v42 = *(v27 + 38);
                  *(v27 + 38) = MutableCopy;
                  if (MutableCopy)
                  {
                    CFRetain(MutableCopy);
                  }

                  if (v42)
                  {
                    CFRelease(v42);
                  }

                  if (ConcatenationOfTwoArrays)
                  {
                    CFRelease(ConcatenationOfTwoArrays);
                  }
                }

                if (MutableCopy)
                {
                  CFRelease(MutableCopy);
                }
              }
            }

            ++v23;
          }

          while (v22 != v23);
        }

        v45 = CMBaseObjectGetDerivedStorage();
        value = 0;
        v46 = MEMORY[0x1E695F060];
        v70 = *MEMORY[0x1E695F060];
        v72 = *MEMORY[0x1E695F060];
        v47 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v47, 20, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!Mutable)
        {
          v58 = FigSignalErrorAtGM();
          v54 = theArray;
          if (!theArray)
          {
            goto LABEL_88;
          }

          goto LABEL_82;
        }

        v49 = Mutable;
        v50 = CFGetAllocator(a1);
        if (!playerfig_copyTrackPerformanceArray(a1, v50, 1986618469, &value))
        {
          v51 = value;
          if (value)
          {
            CFDictionarySetValue(v49, @"VideoTracks", value);
            CFRelease(v51);
            value = 0;
          }
        }

        v52 = CFGetAllocator(a1);
        if (!playerfig_copyTrackPerformanceArray(a1, v52, 1936684398, &value))
        {
          v53 = value;
          if (value)
          {
            CFDictionarySetValue(v49, @"AudioTracks", value);
            CFRelease(v53);
          }
        }

        if (*(v45 + 131) || *(v45 + 130))
        {
          v72 = *(v45 + 136);
        }

        else
        {
          v66 = *(v45 + 616);
          if (v66)
          {
            cf = 0;
            FigImageQueueTableCopyFigImageQueueArray(v66, &cf);
            if (FPSupport_GetMaxDisplaySizeFromImageQueues(cf, &v72))
            {
              v72 = v70;
            }

            if (cf)
            {
              CFRelease(cf);
            }
          }
        }

        if (*&v72 != *v46 || *(&v72 + 1) != v46[1])
        {
          FigCFDictionarySetCGSize();
        }

        *(v75 + v13++) = v49;
        v54 = theArray;
        v20 = MEMORY[0x1E695E480];
      }

      else
      {
        v54 = 0;
      }

      if (v13 > 0 || *(v7 + 1768) > 0 || *(v7 + 1772))
      {
        v55 = CFDictionaryCreateMutable(*v20, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetInt32();
        FigCFDictionarySetBoolean();
        *(v75 + v13++) = v55;
      }

      if (v13 <= 0)
      {
        goto LABEL_80;
      }

      v56 = 0;
        ;
      }

      if (v56 < 1)
      {
LABEL_80:
        v58 = 0;
      }

      else
      {
        CFGetAllocator(a1);
        v58 = FigCFCreateCombinedDictionary();
        if (!v58)
        {
          *v67 = v74;
          v74 = 0;
          if (!v54)
          {
            goto LABEL_88;
          }

          goto LABEL_82;
        }
      }

      if (!v54)
      {
LABEL_88:
        if (v13 >= 1)
        {
          v64 = v75;
          do
          {
            v65 = *v64++;
            CFRelease(v65);
            --v13;
          }

          while (v13);
        }

        return v58;
      }

LABEL_82:
      v59 = CFArrayGetCount(v54);
      if (v59 >= 1)
      {
        v60 = v59;
        for (j = 0; j != v60; ++j)
        {
          v62 = CFArrayGetValueAtIndex(v54, j);
          v63 = v62[37];
          if (v63)
          {
            CFRelease(v63);
            v62[37] = 0;
          }
        }
      }

      CFArrayRemoveAllValues(v54);
      CFRelease(v54);
      goto LABEL_88;
    }
  }

  return FigSignalErrorAtGM();
}

uint64_t playerfig_copyTrackPerformanceArray(uint64_t a1, const __CFAllocator *a2, int a3, CFArrayRef *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a4 = 0;
  v8 = *(DerivedStorage + 648);
  if (!v8)
  {
    goto LABEL_33;
  }

  Count = CFArrayGetCount(v8);
  if (Count < 1)
  {
    v14 = malloc_type_calloc(0, 8uLL, 0x6004044C4A2DFuLL);
    if (v14)
    {
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v10 = Count;
  v11 = 0;
  LODWORD(v12) = 0;
  do
  {
    if (*(CFArrayGetValueAtIndex(*(DerivedStorage + 648), v11) + 1) == a3)
    {
      v12 = (v12 + 1);
    }

    else
    {
      v12 = v12;
    }

    ++v11;
  }

  while (v10 != v11);
  v13 = malloc_type_calloc(v12, 8uLL, 0x6004044C4A2DFuLL);
  if (!v13)
  {
LABEL_33:

    return FigSignalErrorAtGM();
  }

  v14 = v13;
  v26 = a4;
  v15 = 0;
  for (i = 0; i != v10; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 648), i);
    if (ValueAtIndex[1] != a3)
    {
      continue;
    }

    memset(v27, 0, sizeof(v27));
    if (*(ValueAtIndex + 37))
    {
      *&v27[0] = *(ValueAtIndex + 37);
      v18 = v27 + 1;
      v19 = 1;
    }

    else
    {
      v19 = 0;
      v18 = v27;
    }

    v20 = *(ValueAtIndex + 38);
    if (v20)
    {
      *v18 = v20;
      ++v19;
    }

    v21 = *(ValueAtIndex + 36);
    if (v21)
    {
      *(v27 + v19) = v21;
    }

    else if (!v19)
    {
      continue;
    }

    if (FigCFCreateCombinedDictionary())
    {
      FigSignalErrorAtGM();
    }

    else if (v15 < v12)
    {
      v14[v15++] = 0;
    }
  }

  if (v15 >= 1)
  {
    v22 = 0;
    *v26 = CFArrayCreate(a2, v14, v15, MEMORY[0x1E695E9C0]);
    v23 = 8 * v15;
    do
    {
      v24 = v14[v22 / 8];
      if (v24)
      {
        CFRelease(v24);
      }

      v22 += 8;
    }

    while (v23 != v22);
  }

LABEL_32:
  free(v14);
  return 0;
}

uint64_t itemfig_removeBossListeners()
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListeners();
}

void itemfig_cancelPreroll()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 540);
  *(DerivedStorage + 540) = 0;
  FigSimpleMutexUnlock();
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  v3 = v2;
  if (v2)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (!v2)
    {
      return;
    }
  }

  else
  {
    playerfig_postDeferredPrerollWasCancelledNotification(v2, v1);
  }

  CFRelease(v3);
}

void itemfig_BossRateChangeFailed()
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    v0 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v0)
    {
      v1 = v0;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*DerivedStorage)
      {

        CFRelease(v1);
      }

      else
      {
        v3 = DerivedStorage;
        if (dword_1EAF16A10 >= 2)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        dispatch_async_f(v3[13], v1, playerfig_BossRateChangeFailed_setRateForInternalReason_0_f);
      }
    }
  }
}

void itemfig_BossSeekDidComplete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v12[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v8 = DerivedStorage;
    if (a5)
    {
      if (*(DerivedStorage + 544))
      {
        v9 = CFGetTypeID(a5);
        if (v9 == CFDictionaryGetTypeID() && (!FigCFDictionaryGetInt32IfPresent() || dword_1EAF16A10))
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    v11 = v8[412];
    v12[0] = 0;
    if (a2)
    {
      itemfig_BossSeekDidComplete_cold_1(v11, a2, v12);
    }
  }
}

void itemfig_ReachedEnd_ReachedEndGuts_f(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = a1[1];
    v4 = a1[2];
    itemfig_ReachedEndGuts(v3);
    if (v4)
    {
      CFRelease(v4);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  free(a1);
}

uint64_t FigPlaybackItemGetCurrentTime(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 32);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

uint64_t itemfig_handleReadyToDisplayVideoLatch(uint64_t a1, int a2, uint64_t a3)
{
  v93 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = CMBaseObjectGetDerivedStorage();
  if (!v7)
  {
    itemfig_handleReadyToDisplayVideoLatch_cold_2(v77);
    return LODWORD(v77[0]);
  }

  v9 = v8;
  v63 = a3;
  v10 = &unk_1EAF16000;
  if (dword_1EAF16A10 >= 2)
  {
    LODWORD(v66[0]) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = &unk_1EAF16000;
  }

  VideoFrame = itemfig_hasEnqueuedFirstVideoFrame(a1);
  v13 = FPSupport_ItemReadyToDisplayVideoLatch(a2, VideoFrame, (DerivedStorage + 912), (DerivedStorage + 913));
  v14 = v13;
  if (*(DerivedStorage + 912))
  {
    v15 = *(DerivedStorage + 2066) != 0;
  }

  else
  {
    v15 = 1;
  }

  if (a2 == 1)
  {
    *(DerivedStorage + 914) = 0;
LABEL_12:
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_13:
    if (*(DerivedStorage + 912))
    {
      if (!*(DerivedStorage + 913))
      {
        if (dword_1EAF16A10 >= 2)
        {
          LODWORD(v66[0]) = 0;
          v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v25 = CMBaseObjectGetDerivedStorage();
        v26 = CMBaseObjectGetDerivedStorage();
        *type = 0;
        HIDWORD(v62) = VideoFrame;
        if (FigUseVideoReceiverForCALayer())
        {
          itemfig_handleReadyToDisplayVideoLatch_cold_1(v77);
          v51 = 0;
          VideoFrame = LODWORD(v77[0]);
LABEL_57:
          FigDeferredTransactionCommit(v51, 0);
          if (*type)
          {
            CFRelease(*type);
          }

          if (VideoFrame)
          {
            goto LABEL_75;
          }

          *(DerivedStorage + 913) = 1;
          VideoFrame = HIDWORD(v62);
          if (!HIDWORD(v62))
          {
            goto LABEL_75;
          }

LABEL_61:
          if (!*(DerivedStorage + 914))
          {
            if (v10[644])
            {
              LODWORD(v66[0]) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v53 = v66[0];
              if (os_log_type_enabled(v52, type[0]))
              {
                v54 = v53;
              }

              else
              {
                v54 = v53 & 0xFFFFFFFE;
              }

              if (v54)
              {
                if (a1)
                {
                  v55 = (CMBaseObjectGetDerivedStorage() + 2096);
                }

                else
                {
                  v55 = "";
                }

                *v69 = 136315650;
                *&v69[4] = "itemfig_handleReadyToDisplayVideoLatch";
                *&v69[12] = 2048;
                *&v69[14] = a1;
                *&v69[22] = 2082;
                v70 = v55;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
            VideoFrame = 0;
            *(DerivedStorage + 914) = 1;
            goto LABEL_75;
          }

          goto LABEL_62;
        }

        v27 = objc_autoreleasePoolPush();
        FigSimpleMutexLock();
        v28 = *(v26 + 216);
        if (v28 && CFArrayGetCount(v28) > 0 || *(v25 + 904))
        {
          *v66 = *MEMORY[0x1E6960CC0];
          *v67 = *(MEMORY[0x1E6960CC0] + 16);
          v29 = v63;
          if (v63)
          {
LABEL_38:
            v64 = v29;
            itemfig_GetDuration(a1, v66);
            v31 = FigCFCopyCompactDescription();
            v32 = FigCFCopyCompactDescription();
            if (dword_1EAF16A10)
            {
              v61 = v27;
              HIDWORD(v65) = 0;
              BYTE3(v65) = 0;
              v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              HIDWORD(v60) = 0;
              os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (v31)
            {
              CFRelease(v31);
            }

            if (v32)
            {
              CFRelease(v32);
            }

            FigSimpleMutexLock();
            v41 = *(v25 + 1144);
            v42 = *(v26 + 216);
            *v77 = *MEMORY[0x1E6960C88];
            v78 = *(MEMORY[0x1E6960C88] + 16);
            FPSupport_AppendDeferredTransactionChangeForSettingCAImageQueuesOnVideoLayers(v64, v41, v42, v77);
            FigSimpleMutexUnlock();
            playerfig_updateVideoLayerSize(v7, v64);
            v48 = *(v25 + 904);
            v10 = &unk_1EAF16000;
            if (v48 && CFArrayGetCount(v48) >= 1)
            {
              v49 = *(v25 + 904);
              *v77 = *v66;
              v78 = *v67;
              FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(v64, v77, v49);
            }

            playerfig_connectLayerSynchronizerToVideoOutputs(v7, a1, v64, v43, v44, v45, v46, v47, v59, v60, v61, v62, v64, SBYTE2(v64), BYTE3(v64), SHIDWORD(v64), v65, *v66, *v67, v67[2], v67[3], *type, *v69, *&v69[16], v70, v71, v72, v73, v74, v75, v76, v77[0], v77[1], v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
            VideoFrame = v50;
            goto LABEL_56;
          }

          v30 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], type);
          if (!v30)
          {
            v29 = *type;
            goto LABEL_38;
          }

          VideoFrame = v30;
          v10 = &unk_1EAF16000;
        }

        else
        {
          VideoFrame = 0;
        }

LABEL_56:
        FigSimpleMutexUnlock();
        objc_autoreleasePoolPop(v27);
        v51 = *type;
        goto LABEL_57;
      }
    }

    else if (!*(DerivedStorage + 913))
    {
LABEL_19:
      if (dword_1EAF16A10 >= 2)
      {
        LODWORD(v66[0]) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!VideoFrame)
      {
        goto LABEL_75;
      }

      goto LABEL_61;
    }

    if (!*(DerivedStorage + 896))
    {
      if (dword_1EAF16A10 >= 2)
      {
        LODWORD(v66[0]) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v34 = VideoFrame;
      FigSimpleMutexLock();
      v40 = *(v9 + 216);
      if (v40 && CFArrayGetCount(v40) > 0 || *(DerivedStorage + 904))
      {
        playerfig_connectLayerSynchronizerToVideoOutputs(v7, a1, v63, v35, v36, v37, v38, v39, v59, v60, v61, v62, v63, SBYTE2(v63), BYTE3(v63), SHIDWORD(v63), v65, *v66, *v67, v67[2], v67[3], *type, *v69, *&v69[16], v70, v71, v72, v73, v74, v75, v76, v77[0], v77[1], v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
        VideoFrame = v57;
      }

      else
      {
        VideoFrame = 0;
      }

      FigSimpleMutexUnlock();
      if (!v34 || VideoFrame)
      {
        goto LABEL_75;
      }

      goto LABEL_61;
    }

    goto LABEL_19;
  }

  if (a2 != 3)
  {
    goto LABEL_12;
  }

  if (dword_1EAF16A10 >= 3)
  {
    HIDWORD(v62) = VideoFrame;
    v61 = v7;
    LODWORD(v66[0]) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = &unk_1EAF16000;
    VideoFrame = VideoFrame;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v14)
  {
    goto LABEL_13;
  }

LABEL_24:
  if (!v15)
  {
    playerfig_freeTransitionImageQueueAndSlot();
    FigSimpleMutexLock();
    VideoFrame = playerfig_clearVideoLayers(*(v9 + 216), 0, v63);
    if (!VideoFrame)
    {
      if (*(DerivedStorage + 904))
      {
        playerfig_connectLayerSynchronizerToVideoOutputs(v7, a1, v63, v20, v21, v22, v23, v24, v59, v60, v61, v62, v63, SBYTE2(v63), BYTE3(v63), SHIDWORD(v63), v65, *v66, *v67, v67[2], v67[3], *type, *v69, *&v69[16], v70, v71, v72, v73, v74, v75, v76, v77[0], v77[1], v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
        VideoFrame = v58;
      }

      else
      {
        VideoFrame = 0;
      }
    }

    FigSimpleMutexUnlock();
    goto LABEL_75;
  }

LABEL_62:
  VideoFrame = 0;
LABEL_75:
  CFRelease(v7);
  return VideoFrame;
}

uint64_t itemfig_matchBossRateToPlayerRateAndPlaybackState(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    value_low = FigSignalErrorAtGM();
    if (!v5)
    {
      return value_low;
    }

    goto LABEL_30;
  }

  if (!v5)
  {
    itemfig_matchBossRateToPlayerRateAndPlaybackState_cold_3(&rhs);
    return LODWORD(rhs.value);
  }

  if (*DerivedStorage)
  {
    itemfig_matchBossRateToPlayerRateAndPlaybackState_cold_1(&rhs);
LABEL_41:
    value_low = LODWORD(rhs.value);
    goto LABEL_30;
  }

  if (!*(DerivedStorage + 352))
  {
    itemfig_matchBossRateToPlayerRateAndPlaybackState_cold_2(&rhs);
    goto LABEL_41;
  }

  v7 = v6;
  if (*(DerivedStorage + 480))
  {
    LODWORD(v38.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(v7 + 52) != 4)
  {
    if (dword_1EAF16A10 >= 2)
    {
      LODWORD(v38.value) = 0;
      LOBYTE(type.value) = 0;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v25 = *(DerivedStorage + 352);
    v26 = *(DerivedStorage + 512);
    rhs = **&MEMORY[0x1E6960C70];
    time = rhs;
    v27 = 0.0;
    goto LABEL_29;
  }

  if (dword_1EAF16A10 >= 2)
  {
    LODWORD(v38.value) = 0;
    LOBYTE(type.value) = 0;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = *(DerivedStorage + 344);
  if (v11)
  {
    Rate = CMTimebaseGetRate(v11);
    if (*(v7 + 48) == Rate)
    {
      FigPlaybackBossGetTime(*(DerivedStorage + 352), &rhs);
      *a2 = rhs;
      v13 = *(DerivedStorage + 344);
      HostTimeClock = CMClockGetHostTimeClock();
      time = *a2;
      CMSyncConvertTime(&rhs, &time, v13, HostTimeClock);
      *a3 = rhs;
      memset(&v38, 0, sizeof(v38));
      v15 = CMClockGetHostTimeClock();
      CMClockGetTime(&rhs, v15);
      time = *a3;
      CMTimeSubtract(&v38, &time, &rhs);
      v16 = *(v7 + 48);
      if (CMTimebaseGetRate(*(DerivedStorage + 328)) == v16)
      {
        time = v38;
        CMTimeAbsoluteValue(&rhs, &time);
        CMTimeMake(&time, 1, 1000);
        if (CMTimeCompare(&rhs, &time) < 0)
        {
          if (dword_1EAF16A10)
          {
            LODWORD(type.value) = 0;
            v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          itemfig_updateBossDisplayRefreshInfo();
          value_low = 0;
          goto LABEL_30;
        }
      }

      if (!dword_1EAF16A10)
      {
        goto LABEL_28;
      }

      LODWORD(type.value) = 0;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      LODWORD(v38.value) = 0;
      LOBYTE(type.value) = 0;
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    }

    goto LABEL_27;
  }

  if ((*(DerivedStorage + 560) & 0x1D) == 1 && (*(DerivedStorage + 584) & 0x1D) == 1)
  {
    v18 = (DerivedStorage + 548);
    v19 = (DerivedStorage + 572);
    memset(&v38, 0, sizeof(v38));
    v20 = CMClockGetHostTimeClock();
    CMClockGetTime(&v38, v20);
    memset(&type, 0, sizeof(type));
    rhs = *(DerivedStorage + 572);
    time = v38;
    CMTimeSubtract(&type, &rhs, &time);
    rhs = type;
    time = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&rhs, &time) < 1)
    {
      if (dword_1EAF16A10)
      {
        v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v31 = MEMORY[0x1E6960C70];
      v32 = *MEMORY[0x1E6960C70];
      *v18 = *MEMORY[0x1E6960C70];
      v33 = *(v31 + 16);
      *(DerivedStorage + 564) = v33;
      *v19 = v32;
      *(DerivedStorage + 588) = v33;
      goto LABEL_28;
    }

    v21 = *v18;
    a2->epoch = *(DerivedStorage + 564);
    *&a2->value = v21;
    v22 = *v19;
    a3->epoch = *(DerivedStorage + 588);
    *&a3->value = v22;
    if (dword_1EAF16A10)
    {
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
LABEL_27:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

LABEL_28:
  itemfig_updateBossDisplayRefreshInfo();
  v25 = *(DerivedStorage + 352);
  v27 = *(v7 + 48);
  v26 = *(DerivedStorage + 512);
  rhs = *a2;
  time = *a3;
LABEL_29:
  value_low = FigPlaybackBossSetRateAndAnchorTime(v25, &rhs, &time, v26, v27);
LABEL_30:
  CFRelease(v5);
  return value_low;
}

uint64_t playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem(uint64_t a1)
{
  v115 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = MEMORY[0x1E6960C70];
  v4 = *MEMORY[0x1E6960C70];
  v105 = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 8);
  LODWORD(v106) = v5;
  FigSimpleMutexLock();
  if (!playerfig_doingGapless())
  {
    if (dword_1EAF16A10)
    {
      goto LABEL_17;
    }

    return FigSimpleMutexUnlock();
  }

  v6 = *(DerivedStorage + 528);
  if (!v6 || CFArrayGetCount(v6) <= 1)
  {
    if (dword_1EAF16A10)
    {
      goto LABEL_17;
    }

    return FigSimpleMutexUnlock();
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 1);
  v10 = CMBaseObjectGetDerivedStorage();
  if (ValueAtIndex != *(DerivedStorage + 536))
  {
    v11 = v10;
    v12 = *(v3 + 12);
    epoch = *(v3 + 16);
    v14 = *(v8 + 352);
    cf = epoch;
    flags = v12;
    if (v14)
    {
      FigPlaybackBossGetScheduledEndTime(v14, &time);
      v105 = time.value;
      flags = time.flags;
      LODWORD(v106) = time.timescale;
      epoch = time.epoch;
    }

    if ((flags & 0x1D) != 1)
    {
      if (dword_1EAF16A10)
      {
        LODWORD(v104.value) = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        goto LABEL_20;
      }

      return FigSimpleMutexUnlock();
    }

    HIDWORD(v87) = v12;
    v88 = epoch;
    HIDWORD(v89) = flags;
    *v90 = v8;
    v91 = v11;
    type.value = 0;
    v104.value = v4;
    v104.timescale = v5;
    v16 = CMBaseObjectGetDerivedStorage();
    v17 = CMBaseObjectGetDerivedStorage();
    v18 = CMBaseObjectGetDerivedStorage();
    LODWORD(lhs.value) = 0;
    *v96 = 0;
    HIDWORD(v95) = 0;
    if (!*(v16 + 224))
    {
      if (dword_1EAF16A10)
      {
        playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem_cold_3();
      }

      goto LABEL_44;
    }

    v19 = v18;
    if (*(v18 + 915))
    {
      if (dword_1EAF16A10)
      {
        playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem_cold_4();
      }

      goto LABEL_44;
    }

    v23 = *(v18 + 1152);
    if (v23 && CFArrayGetCount(v23))
    {
      if (itemfig_hasEnqueuedFirstVideoFrame(v9))
      {
        v24 = *(v17 + 352);
        v25 = cf;
        v26 = HIDWORD(v87);
        if (v24)
        {
          FigPlaybackBossGetScheduledEndTime(v24, &time);
          v104.value = time.value;
          v26 = time.flags;
          v104.timescale = time.timescale;
          v25 = time.epoch;
        }

        if ((v26 & 0x1D) == 1)
        {
          v85 = v25;
          itemfig_GetDimensions(ValueAtIndex, &lhs, &v96[4]);
          itemfig_GetDimensions(v9, v96, &v95 + 4);
          v28 = *v96;
          if (*v96 == 0.0 || *(&v95 + 1) == 0.0 || *&lhs.value != *v96 || *&v96[4] != *(&v95 + 1))
          {
            if (dword_1EAF16A10)
            {
              LODWORD(v95) = 0;
              HIBYTE(v94) = 0;
              v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v30 = v95;
              if (os_log_type_enabled(v29, HIBYTE(v94)))
              {
                v31 = v30;
              }

              else
              {
                v31 = v30 & 0xFFFFFFFE;
              }

              if (v31)
              {
                LODWORD(rhs.value) = 136316162;
                *(&rhs.value + 4) = "playerfig_scheduleVideoSlotSwitchForNextItem";
                LOWORD(rhs.flags) = 2048;
                *(&rhs.flags + 2) = *&lhs.value;
                HIWORD(rhs.epoch) = 2048;
                v98 = *&v96[4];
                *v99 = 2048;
                *&v99[2] = v28;
                *&v99[10] = 2048;
                *&v99[12] = *(&v95 + 1);
                LODWORD(v82) = 52;
                p_rhs = &rhs;
                _os_log_send_and_compose_impl();
              }

              goto LABEL_43;
            }
          }

          else
          {
            value = *MEMORY[0x1E695E480];
            theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (theDict)
            {
              v79 = itemfig_copyVideoTrackMatrix(value, v9, &type);
              value = type.value;
              if (v79 || !type.value)
              {
                LODWORD(v85) = 0;
                v32 = 0;
                if (playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem_cold_1(theDict, type.value == 0))
                {
                  goto LABEL_45;
                }
              }

              else
              {
                CFDictionarySetValue(theDict, @"CurrentVideoTrackMatrix", type.value);
                CFDictionarySetValue(theDict, @"CurrentVideoSlotArray", *(v19 + 1152));
                CFDictionarySetValue(theDict, @"CurrentHasEnqueuedFirstVideoFrame", *MEMORY[0x1E695E4D0]);
                time.value = v104.value;
                time.timescale = v104.timescale;
                time.flags = v26;
                time.epoch = v85;
                v80 = FigCFDictionarySetCMTime();
                LODWORD(v85) = v80 == 0;
                if (!v80)
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  FigDispatchAsyncPostNotification();
                  *(v19 + 915) = 1;
                }

                CFRelease(theDict);
              }

              CFRelease(value);
              v32 = v85;
LABEL_45:
              v33 = CMBaseObjectGetDerivedStorage();
              v34 = CMBaseObjectGetDerivedStorage();
              v104.value = v4;
              v104.timescale = v5;
              *&rhs.value = *v3;
              v35 = cf;
              rhs.epoch = cf;
              CMBaseObjectGetDerivedStorage();
              v36 = *(v34 + 1040);
              v37 = *(v34 + 1088);
              if (v37 && CFArrayGetCount(v37) > 0)
              {
                v38 = 1;
              }

              else
              {
                v39 = *(v34 + 856);
                if (v39)
                {
                  v38 = CFArrayGetCount(v39) > 0;
                }

                else
                {
                  v38 = 0;
                }
              }

              if (!playerfig_hasVideoTargets())
              {
                if (dword_1EAF16A10)
                {
                  LODWORD(lhs.value) = 0;
                  v96[4] = OS_LOG_TYPE_DEFAULT;
                  v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v44 = lhs.value;
                  if (os_log_type_enabled(v43, v96[4]))
                  {
                    v45 = v44;
                  }

                  else
                  {
                    v45 = v44 & 0xFFFFFFFE;
                  }

                  if (!v45)
                  {
                    goto LABEL_97;
                  }

                  LODWORD(type.value) = 136315138;
                  *(&type.value + 4) = "playerfig_scheduleVideoTargetImageQueueConfigurationSwitchForNextItem";
                  goto LABEL_79;
                }

                goto LABEL_95;
              }

              if (*(v34 + 916))
              {
                if (dword_1EAF16A10)
                {
                  LODWORD(lhs.value) = 0;
                  v96[4] = OS_LOG_TYPE_DEFAULT;
                  v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v41 = lhs.value;
                  if (os_log_type_enabled(v40, v96[4]))
                  {
                    v42 = v41;
                  }

                  else
                  {
                    v42 = v41 & 0xFFFFFFFE;
                  }

                  if (!v42)
                  {
                    goto LABEL_97;
                  }

                  LODWORD(type.value) = 136315138;
                  *(&type.value + 4) = "playerfig_scheduleVideoTargetImageQueueConfigurationSwitchForNextItem";
LABEL_79:
                  _os_log_send_and_compose_impl();
LABEL_97:
                  v65 = v91;
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v46 = 0;
                  goto LABEL_98;
                }

                goto LABEL_95;
              }

              v46 = v36 != 0 || v38;
              if ((v46 & 1) == 0)
              {
                goto LABEL_70;
              }

              v47 = CMBaseObjectGetDerivedStorage();
              time.value = 0;
              type.value = 0;
              v48 = *(v47 + 1088);
              if (v48)
              {
                if (CFArrayGetCount(v48) > 0)
                {
                  goto LABEL_70;
                }
              }

              v49 = *(v47 + 856);
              if (v49)
              {
                if (CFArrayGetCount(v49) > 0)
                {
                  goto LABEL_70;
                }
              }

              itemfig_getVideoTargetTableForVideoTrack(v9, &time);
              if (time.value)
              {
                if (!FigImageQueueTableCopyVideoTargets(time.value, &type))
                {
                  if (!type.value)
                  {
                    goto LABEL_89;
                  }

                  Count = CFArrayGetCount(type.value);
                  if (type.value)
                  {
                    CFRelease(type.value);
                    if (Count < 1)
                    {
                      goto LABEL_89;
                    }
                  }

                  else if (Count <= 0)
                  {
                    goto LABEL_89;
                  }

LABEL_70:
                  v50 = *(v33 + 352);
                  if (v50)
                  {
                    FigPlaybackBossGetScheduledEndTime(v50, &time);
                    v104.value = time.value;
                    HIDWORD(v87) = time.flags;
                    v104.timescale = time.timescale;
                    v35 = time.epoch;
                  }

                  if ((BYTE4(v87) & 0x1D) == 1)
                  {
                    v55 = *(v33 + 328);
                    HostTimeClock = CMClockGetHostTimeClock();
                    time.value = v104.value;
                    time.timescale = v104.timescale;
                    time.flags = HIDWORD(v87);
                    time.epoch = v35;
                    CMSyncConvertTime(&rhs, &time, v55, HostTimeClock);
                    if (!playerfig_scheduleVideoTargetImageQueueConfigurationTransitionForItem(a1, v9, &time, v57, v58, v59, v60, v61, p_rhs, v82, v83, value, v85, theDict, v87, v88, v89, v90[0], v90[1], v91, cf, lhs.value, *&lhs.timescale, lhs.epoch, v94, v95, *v96, rhs.value, *&rhs.timescale, rhs.epoch, *&v98, *v99, *&v99[8], *&v99[16], *&v99[24], v100, *v101, *&v101[8], *&v101[16], *&v101[24], v102, type.value, *&type.timescale, type.epoch, v104.value, *&v104.timescale, v104.epoch, v105, v106, rhs.value, *&rhs.timescale, rhs.epoch, v108, v109, v110, v111, v112, v113, v114))
                    {
                      *(v34 + 916) = 1;
LABEL_96:
                      v65 = v91;
LABEL_98:
                      if (((v32 | v46) & 1) != 0 && *(v65 + 625))
                      {
                        memset(&v104, 0, sizeof(v104));
                        FigPlaybackBossGetTime(v65[44], &v104);
                        memset(&type, 0, sizeof(type));
                        v66 = *(*v90 + 328);
                        v67 = CMClockGetHostTimeClock();
                        time.value = v105;
                        time.timescale = v106;
                        time.flags = HIDWORD(v89);
                        time.epoch = v88;
                        CMSyncConvertTime(&type, &time, v66, v67);
                        if (dword_1EAF16A10 >= 2)
                        {
                          *&v96[4] = 0;
                          v96[0] = OS_LOG_TYPE_DEFAULT;
                          v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          v69 = *&v96[4];
                          if (os_log_type_enabled(v68, v96[0]))
                          {
                            v70 = v69;
                          }

                          else
                          {
                            v70 = v69 & 0xFFFFFFFE;
                          }

                          if (v70)
                          {
                            if (a1)
                            {
                              v71 = (CMBaseObjectGetDerivedStorage() + 972);
                            }

                            else
                            {
                              *&v71 = COERCE_DOUBLE("");
                            }

                            v72 = *(DerivedStorage + 48);
                            time = v104;
                            Seconds = CMTimeGetSeconds(&time);
                            time = type;
                            v74 = CMTimeGetSeconds(&time);
                            v75 = CMClockGetHostTimeClock();
                            CMSyncGetTime(&time, v75);
                            v76 = CMTimeGetSeconds(&time);
                            FigPlaybackBossGetTime(*(*v90 + 352), &rhs);
                            lhs.value = v105;
                            lhs.timescale = v106;
                            lhs.flags = HIDWORD(v89);
                            lhs.epoch = v88;
                            CMTimeSubtract(&time, &lhs, &rhs);
                            v77 = CMTimeGetSeconds(&time);
                            Description = FigPlayerPlaybackStateGetDescription(*(DerivedStorage + 52));
                            LODWORD(rhs.value) = 136317442;
                            *(&rhs.value + 4) = "playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem";
                            LOWORD(rhs.flags) = 2048;
                            *(&rhs.flags + 2) = a1;
                            HIWORD(rhs.epoch) = 2082;
                            v98 = *&v71;
                            *v99 = 2048;
                            *&v99[2] = v72;
                            *&v99[10] = 2048;
                            *&v99[12] = Seconds;
                            *&v99[20] = 2048;
                            *&v99[22] = v74;
                            *&v99[30] = 2048;
                            v100 = *&v76;
                            *v101 = 2048;
                            *&v101[2] = v77;
                            *&v101[10] = 2048;
                            *&v101[12] = v9;
                            *&v101[20] = 2082;
                            *&v101[22] = Description;
                            _os_log_send_and_compose_impl();
                          }

                          fig_log_call_emit_and_clean_up_after_send_and_compose();
                          v65 = v91;
                        }

                        itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v9, 0);
                        time = v104;
                        rhs = type;
                        itemfig_matchBossRateToPlayerRateAndPlaybackState(v9, &time, &rhs);
                        *(v65 + 625) = 0;
                      }

                      return FigSimpleMutexUnlock();
                    }
                  }

                  else if (dword_1EAF16A10)
                  {
                    LODWORD(lhs.value) = 0;
                    v96[4] = OS_LOG_TYPE_DEFAULT;
                    v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v52 = lhs.value;
                    if (os_log_type_enabled(v51, v96[4]))
                    {
                      v53 = v52;
                    }

                    else
                    {
                      v53 = v52 & 0xFFFFFFFE;
                    }

                    if (!v53)
                    {
                      goto LABEL_97;
                    }

                    LODWORD(type.value) = 136315138;
                    *(&type.value + 4) = "playerfig_scheduleVideoTargetImageQueueConfigurationSwitchForNextItem";
                    goto LABEL_79;
                  }

LABEL_95:
                  v46 = 0;
                  goto LABEL_96;
                }

                if (type.value)
                {
                  CFRelease(type.value);
                }
              }

LABEL_89:
              if (dword_1EAF16A10)
              {
                LODWORD(lhs.value) = 0;
                v96[4] = OS_LOG_TYPE_DEFAULT;
                v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v63 = lhs.value;
                if (os_log_type_enabled(v62, v96[4]))
                {
                  v64 = v63;
                }

                else
                {
                  v64 = v63 & 0xFFFFFFFE;
                }

                if (!v64)
                {
                  goto LABEL_97;
                }

                LODWORD(type.value) = 136315138;
                *(&type.value + 4) = "playerfig_scheduleVideoTargetImageQueueConfigurationSwitchForNextItem";
                goto LABEL_79;
              }

              goto LABEL_95;
            }

            playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem_cold_2();
          }
        }

        else if (dword_1EAF16A10)
        {
          goto LABEL_35;
        }
      }

      else if (dword_1EAF16A10)
      {
LABEL_35:
        LODWORD(v95) = 0;
        HIBYTE(v94) = 0;
        v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
LABEL_43:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else if (dword_1EAF16A10)
    {
      goto LABEL_35;
    }

LABEL_44:
    v32 = 0;
    goto LABEL_45;
  }

  if (dword_1EAF16A10)
  {
LABEL_17:
    LODWORD(v104.value) = 0;
    LOBYTE(type.value) = 0;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
LABEL_20:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigSimpleMutexUnlock();
}

uint64_t itemfig_getVideoTargetTableForVideoTrack(uint64_t a1, void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 824))
  {
    v5 = *(result + 848);
LABEL_3:
    *a2 = v5;
    return result;
  }

  v6 = *(result + 1040);
  if (v6)
  {
    v7 = 0;
    result = itemfig_getTrackStorage(a1, v6, &v7);
    if (!result)
    {
      v5 = v7;
      if (v7)
      {
        v5 = *(v7 + 48);
      }

      goto LABEL_3;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

void playerfig_releaseItemWeakReference(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void itemfig_updateBossDisplayRefreshInfo()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (itemfig_useDroppableFramesMinimumInterval())
  {
    v5 = **&MEMORY[0x1E6960C70];
    v4 = v5;
    FPSupport_GetDisplayRefreshInformation(0, &v5, &v4);
    if ((v5.flags & 0x1D) == 1)
    {
      v1 = *(DerivedStorage + 352);
      v3 = v5;
      v2 = v4;
      FigPlaybackBossSetDroppableFrameMinimumIntervalAndRequestedFrameTimestampIntervalStep(v1, &v3, &v2);
    }
  }
}

BOOL fp_audioPipelineIsRunning(uint64_t a1)
{
  cf = 0;
  FigBaseObject = FigRenderPipelineGetFigBaseObject(a1);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  v2(FigBaseObject, @"IsRunning", *MEMORY[0x1E695E480], &cf);
  if (!cf)
  {
    return 0;
  }

  TypeID = CFBooleanGetTypeID();
  v4 = TypeID == CFGetTypeID(cf) && CFBooleanGetValue(cf) != 0;
  CFRelease(cf);
  return v4;
}

CFNumberRef fp_bumpTransitionNumber()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 560);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 560) = 0;
  }

  ++*(DerivedStorage + 552);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (DerivedStorage + 552));
  *(DerivedStorage + 560) = result;
  return result;
}

uint64_t playerfig_setExitTransitionIDOnItemPrecedingWorkingItem(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    v5 = *(DerivedStorage + 536);
    if (v5)
    {
      v6 = *(DerivedStorage + 528);
      if (v6)
      {
        v7.length = CFArrayGetCount(*(DerivedStorage + 528));
        v5 = *(v4 + 536);
      }

      else
      {
        v7.length = 0;
      }

      v7.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v7, v5);
      if (FirstIndexOfValue <= 0)
      {
        playerfig_setExitTransitionIDOnItemPrecedingWorkingItem_cold_1(&v12);
        return v12;
      }

      else
      {
        CFArrayGetValueAtIndex(*(v4 + 528), FirstIndexOfValue - 1);
        v9 = CMBaseObjectGetDerivedStorage();
        v10 = *(v9 + 488);
        *(v9 + 488) = a2;
        CFRetain(a2);
        if (v10)
        {
          CFRelease(v10);
        }

        return 0;
      }
    }

    else
    {
      playerfig_setExitTransitionIDOnItemPrecedingWorkingItem_cold_2(&v13);
      return v13;
    }
  }

  else
  {
    playerfig_setExitTransitionIDOnItemPrecedingWorkingItem_cold_3(&v14);
    return v14;
  }
}

uint64_t FigRenderPipelineSetPropertiesToUpdateAtTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t itemfig_copyVideoTrackMatrix(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  v6 = *(CMBaseObjectGetDerivedStorage() + 1040);
  cf = 0;
  if (!*CMBaseObjectGetDerivedStorage())
  {
    if (v6)
    {
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (!v8)
      {
        v10 = 0;
        v9 = 4294954514;
LABEL_18:
        *a3 = v10;
        return v9;
      }

      v9 = v8(a2, v6, @"Matrix", a1, &cf);
      v10 = cf;
      if (v9 != -12784 || cf != 0)
      {
        goto LABEL_18;
      }

      v12 = *(MEMORY[0x1E695EFD0] + 16);
      v13[0] = *MEMORY[0x1E695EFD0];
      v13[1] = v12;
      v13[2] = *(MEMORY[0x1E695EFD0] + 32);
      v10 = FigCreate3x3MatrixArrayFromCGAffineTransform(a1, v13);
      cf = v10;
      if (!v10)
      {
        v9 = FigSignalErrorAtGM();
        if (cf)
        {
          CFRelease(cf);
        }

        return v9;
      }
    }

    else
    {
      v10 = 0;
    }

    v9 = 0;
    goto LABEL_18;
  }

  return FigSignalErrorAtGM();
}

BOOL playerfig_hasVideoTargets()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 256);
  if (v1)
  {
    v2 = CFRetain(v1);
    FigSimpleMutexUnlock();
    if (v2)
    {
      Count = CFArrayGetCount(v2);
      CFRelease(v2);
      return Count > 0;
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  return 0;
}

void itemfig_BossBecameIdle_prepareNextItemForTransition_f(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    if (!*CMBaseObjectGetDerivedStorage())
    {
      playerfig_prepareNextItemForTransition(v3, a1);
    }

    if (a1)
    {
      CFRelease(a1);
    }

    CFRelease(v3);
  }
}

void playerfig_prepareNextItemForTransition(const void *a1, const void *a2)
{
  target[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (dword_1EAF16A10)
  {
    *v45 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*v5)
  {
    *(v5 + 544) = 0;
    v7 = CMBaseObjectGetDerivedStorage();
    if (!playerfig_doingGapless())
    {
      goto LABEL_25;
    }

    if (*(v7 + 1034))
    {
      if (dword_1EAF16A10)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    if (*(v7 + 1032))
    {
      if (dword_1EAF16A10)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v8 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*(v8 + 536))
    {
      Count = CFArrayGetCount(*(v8 + 528));
      v48.location = 0;
      v48.length = Count;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(v8 + 528), v48, *(v8 + 536));
      if (FirstIndexOfValue != -1 && FirstIndexOfValue + 1 < Count)
      {
        FigSimpleMutexUnlock();
        if (dword_1EAF16A10)
        {
          *v45 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigSimpleMutexLock();
        if (!*(DerivedStorage + 352))
        {
          goto LABEL_21;
        }

        v13 = (v5 + 536);
        if (*(v5 + 536) != a2)
        {
          *v45 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_21:
          FigSimpleMutexUnlock();
          if (cf)
          {
            CFRelease(cf);
          }

          return;
        }

        if (*(DerivedStorage + 480))
        {
LABEL_44:
          v26 = CFArrayGetCount(*(v5 + 528));
          v49.location = 0;
          v49.length = v26;
          v27 = CFArrayGetFirstIndexOfValue(*(v5 + 528), v49, a2);
          if (v27 == -1)
          {
            *v45 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          else if (v27 + 1 < v26)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 528), v27 + 1);
            *(v5 + 536) = ValueAtIndex;
            *(v5 + 544) = ValueAtIndex;
            if (ValueAtIndex)
            {
              v30 = CMBaseObjectGetDerivedStorage();
              if (*(v30 + 1600) == 0.0)
              {
                *(v30 + 1600) = CFAbsoluteTimeGetCurrent();
              }
            }

            goto LABEL_51;
          }

          *v13 = 0;
          *(v5 + 544) = 0;
LABEL_51:
          target[0] = 0;
          v31 = CMBaseObjectGetDerivedStorage();
          v32 = *MEMORY[0x1E695E480];
          v33 = itemfig_copyImageQueueGauge(a2, *MEMORY[0x1E695E480]);
          v34 = FigCFWeakReferenceHolderCopyReferencedObject();
          queue = 0;
          if (v34)
          {
            v35 = *(v31 + 1040);
            if (v35)
            {
              *v45 = 0;
              if (!itemfig_getTrackStorage(a2, v35, v45))
              {
                v36 = *v45;
                if (*v45)
                {
                  if (*(*v45 + 16) && !CMSampleBufferCreate(v32, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, target))
                  {
                    CMSetAttachment(target[0], *MEMORY[0x1E6962E00], *MEMORY[0x1E695E4D0], 1u);
                    if (v33)
                    {
                      CMSetAttachment(target[0], *MEMORY[0x1E6962E20], v33, 1u);
                    }

                    FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v36 + 16));
                    v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v38 && !v38(FigBaseObject, @"SourceSampleBufferQueue", v32, &queue) && queue)
                    {
                      CMBufferQueueEnqueue(queue, target[0]);
                    }
                  }
                }
              }

              if (target[0])
              {
                CFRelease(target[0]);
              }
            }
          }

          if (v33)
          {
            CFRelease(v33);
          }

          if (queue)
          {
            CFRelease(queue);
          }

          if (v34)
          {
            CFRelease(v34);
          }

          playerfig_prepareWorkingItem(a1, 1, 0);
          if (*v13)
          {
            *(DerivedStorage + 496) = 0;
            if (a2)
            {
              v39 = FigPlaybackItemGetFigBaseObject(a2);
              v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v40)
              {
                if (!v40(v39, @"ImageQueueGauge", v32, &cf))
                {
                  v41 = cf;
                  if (cf)
                  {
                    v42 = FigPlaybackItemGetFigBaseObject(*v13);
                    CMBaseObjectSetProperty(v42, @"PriorImageQueueGauge", v41);
                  }
                }
              }
            }
          }

          goto LABEL_21;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        if (*(v5 + 852))
        {
          if (!a2)
          {
LABEL_43:
            FigPlaybackBossGoQuiescent(*(DerivedStorage + 352));
            *(DerivedStorage + 480) = 1;
            goto LABEL_44;
          }
        }

        else
        {
          IsPlayerPerformanceTraceEnabled = FPSupport_IsPlayerPerformanceTraceEnabled();
          if (!a2 || !IsPlayerPerformanceTraceEnabled)
          {
            goto LABEL_43;
          }
        }

        if (!*DerivedStorage)
        {
          if (*(DerivedStorage + 352))
          {
            v17 = *(DerivedStorage + 648);
            if (v17)
            {
              v18 = CFArrayGetCount(v17);
              if (v18 >= 1)
              {
                v19 = v18;
                for (i = 0; i != v19; ++i)
                {
                  v21 = CFArrayGetValueAtIndex(*(DerivedStorage + 648), i);
                  v22 = v21[37];
                  if (v22)
                  {
                    CFRelease(v22);
                    v21[37] = 0;
                  }

                  if (*(v21 + 8))
                  {
                    v23 = *(DerivedStorage + 352);
                    v24 = *v21;
                    v25 = CFGetAllocator(a1);
                    FigPlaybackBossCopyTrackPerformanceDictionary(v23, v24, v25);
                  }
                }
              }
            }
          }
        }

        goto LABEL_43;
      }

      if (dword_1EAF16A10)
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    FigSimpleMutexUnlock();
    if (dword_1EAF16A10)
    {
LABEL_24:
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_25:
    *(DerivedStorage + 496) = 1;
  }
}

uint64_t itemfig_copyImageQueueGauge(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  cf = 0;
  v4 = *(CMBaseObjectGetDerivedStorage() + 1040);
  if (v4)
  {
    v9 = 0;
    itemfig_getTrackStorage(a1, v4, &v9);
    if (v9)
    {
      FigImageQueueTableCopyFigImageQueueArray(*(v9 + 48), &cf);
      if (cf)
      {
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        if (ValueAtIndex)
        {
          FigBaseObject = FigImageQueueGetFigBaseObject(ValueAtIndex);
          v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v8)
          {
            v8(FigBaseObject, @"ImageQueueGauge", a2, &v10);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  return v10;
}

void playerfig_BossRateChangeFailed_setRateForInternalReason_0_f(const void *a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    playerfig_pauseForInternalReason(a1, 2u);
    if (!a1)
    {
      return;
    }
  }

  CFRelease(a1);
}

void itemfig_DeferReachedOverlappedStartTime_f(const void **a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_10;
  }

  v2 = *a1;
  v3 = a1[1];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v5 = DerivedStorage;
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v6)
    {
      v7 = v6;
      v8 = CMBaseObjectGetDerivedStorage();
      if (*v8)
      {
LABEL_5:
        CFRelease(v7);
        goto LABEL_6;
      }

      v9 = v8;
      if (*(v8 + 816))
      {
        if (dword_1EAF16A10)
        {
          LODWORD(v20) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_5;
      }

      CFRetain(v3);
      FigSimpleMutexLock();
      if (CFArrayGetCount(*(v9 + 528)) > 1)
      {
        if (*(v9 + 536) != v3 || !*(v5 + 44))
        {
          goto LABEL_26;
        }

        if (itemfig_onlySingleAudioTrackIsEnabled())
        {
          CFArrayGetValueAtIndex(*(v9 + 528), 1);
          v11 = CMBaseObjectGetDerivedStorage();
          if (!*(v11 + 1240) || *(v11 + 1036))
          {
            *(v9 + 544) = 0;
            playerfig_transferItemToOverlappedOutroAndRemoveFromPlayQueue(v7, v3);
            if (dword_1EAF16A10)
            {
              LODWORD(v20) = 0;
              v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            ++*(v9 + 992);
            FigCFDictionarySetInt32();
            CMNotificationCenterGetDefaultLocalCenter();
            FigDispatchAsyncPostNotification();
            playerfig_postDeferredCurrentItemDidChangeNotificationWithReason();
            playerfig_prepareWorkingItem(v7, 0, 0);
            ValueAtIndex = CFArrayGetValueAtIndex(*(v9 + 528), 0);
            v16 = CMBaseObjectGetDerivedStorage();
            if (*(v9 + 584) && *(v16 + 1874))
            {
              v20 = 0;
              v19 = v16;
              itemfig_getTrackStorage(ValueAtIndex, *(v16 + 1036), &v20);
              if (v20 && *(v20 + 16))
              {
                v18 = v20;
                if (dword_1EAF16A10 >= 2)
                {
                  v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                itemfig_updateVolumeOffset(ValueAtIndex);
                itemfig_applyAudioProcessingUnitsToTrack(v19, v18);
                itemfig_applyAllAudioCurvesToTrack(v19, v18);
                itemfig_applyAdjustTargetLevel();
                itemfig_applyAdjustCompressionProfile();
              }

              *(v19 + 1874) = 0;
            }

            FigSimpleMutexUnlock();
            playerfig_updatePlaybackStateAndBossRate(v7, 7, 0);
            itemfig_metricEventPublishPlaybackEndEvent();
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            goto LABEL_27;
          }

          if (dword_1EAF16A10)
          {
            goto LABEL_25;
          }
        }

        else if (dword_1EAF16A10)
        {
LABEL_25:
          LODWORD(v20) = 0;
          v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else if (dword_1EAF16A10)
      {
        goto LABEL_25;
      }

LABEL_26:
      FigSimpleMutexUnlock();
LABEL_27:
      if (v3)
      {
        CFRelease(v3);
      }

      goto LABEL_5;
    }
  }

LABEL_6:
  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

LABEL_10:
  free(a1);
}

uint64_t itemfig_onlySingleAudioTrackIsEnabled()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = 0;
  v2 = 0;
  v3 = DerivedStorage + 368;
  do
  {
    v4 = v2;
    v5 = *(v3 + v1);
    if (!v5)
    {
      if (!v1)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    Count = CFArrayGetCount(v5);
    if (v1)
    {
      if (Count > 0)
      {
        LODWORD(v2) = 0;
        goto LABEL_12;
      }

LABEL_7:
      v2 = v4;
      goto LABEL_9;
    }

    v2 = 1;
    if (Count != 1)
    {
      goto LABEL_12;
    }

LABEL_9:
    v1 += 8;
  }

  while (v1 != 112);
  LODWORD(v4) = v2;
LABEL_11:
  LODWORD(v2) = 1;
LABEL_12:
  if (v4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void playerfig_transferItemToOverlappedOutroAndRemoveFromPlayQueue(uint64_t a1, const void *a2)
{
  v95 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  HIBYTE(v74) = 0;
  CFRetain(a2);
  v6 = *(DerivedStorage + 528);
  v102.length = CFArrayGetCount(v6);
  v102.location = 0;
  v7 = &unk_1EAF16000;
  if (!CFArrayGetFirstIndexOfValue(v6, v102, a2) && CFArrayGetCount(*(DerivedStorage + 528)) >= 2)
  {
    if (*(DerivedStorage + 568))
    {
      *(DerivedStorage + 568) = 0;
      playerfig_postDeferredPrerollWasCancelledNotification(a1, *(DerivedStorage + 576));
    }

    v13 = MEMORY[0x1E6960C70];
    v14 = *MEMORY[0x1E6960C70];
    *(v5 + 548) = *MEMORY[0x1E6960C70];
    v15 = *(v13 + 16);
    *(v5 + 564) = v15;
    *(v5 + 572) = v14;
    *(v5 + 588) = v15;
    v16 = *(v5 + 524);
    if (v16)
    {
      *(v5 + 524) = 0;
      *(v5 + 536) = 0;
      itemfig_postSeekWasCanceledNotification(a1, a2, v16, 1);
    }

    v17 = *(v5 + 1432);
    if (v17)
    {
      CFRelease(v17);
      *(v5 + 1432) = 0;
    }

    CFArrayRemoveValueAtIndex(*(DerivedStorage + 528), 0);
    *(v5 + 1) = 0;
    *(v5 + 1328) = 0;
    *(v5 + 1033) = 0;
    itemfig_configureDownloadForItem(a2, *(v5 + 1369), v18, v19, v20, v21, v22, v23, v60, v62, v64, v66, v68, v71.n128_i64[0], v71.n128_i64[1], v72, v73, v74, *v75, *&v75[8], *&v75[16], v76, v77, *(&v77 + 1), v78, v79, v80, *(&v80 + 1), v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
    v25 = CMBaseObjectGetDerivedStorage();
    if (*(v25 + 1600) == 0.0)
    {
      *(v25 + 1600) = CFAbsoluteTimeGetCurrent();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    itemfig_makePlaybackPrerequisitePropertiesReady(ValueAtIndex, &v74 + 7, v26, v27, v28, v29, v30, v31, v61, v63, v65, SWORD2(v65), SBYTE6(v65), HIBYTE(v65), v67, SWORD2(v67), SBYTE6(v67), SHIBYTE(v67), v69, SHIDWORD(v69), v71.n128_i32[0], v71.n128_i16[2], v71.n128_i64[1], v72, v73, v74, SHIDWORD(v74), *v75, *&v75[8], *&v75[16], v76, v77, *(&v77 + 1), v78, v79, v80, *(&v80 + 1), v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
    v70 = a1;
    if (HIBYTE(v74))
    {
      *(v5 + 1328) = 1;
    }

    else if (dword_1EAF16A10)
    {
      LODWORD(v74) = 0;
      HIBYTE(v73) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer();
    *(DerivedStorage + 536) = ValueAtIndex;
    itemfig_unregisterPlayabilityMonitor();
    playerfig_cleanupOverlappedOutroComponents(a1, 0);
    v33 = 0;
    *(DerivedStorage + 1016) = *(v5 + 360);
    *(v5 + 360) = 0;
    v34 = v5 + 368;
    do
    {
      *(DerivedStorage + 1024 + v33) = *(v34 + v33);
      *(v34 + v33) = 0;
      v33 += 8;
    }

    while (v33 != 112);
    if (*(v5 + 1745))
    {
      itemfig_accumulateFrameDropCountFromAllVideoPipelines(a2);
    }

    itemfig_storeItemPerformanceDataIfGathering(a2);
    v35 = *(v5 + 648);
    if (v35)
    {
      Count = CFArrayGetCount(v35);
      if (Count >= 1)
      {
        v37 = Count;
        for (i = 0; i != v37; ++i)
        {
          v39 = CFArrayGetValueAtIndex(*(v5 + 648), i);
          v40 = v39;
          v41 = v39[2];
          if (v41)
          {
            v42 = *(v39 + 1);
            v43 = v42 == 1986618469 || v42 == 1635088502;
            if (!v43 || (FigStopForwardingMediaServicesProcessDeathNotification(), (v41 = v40[2]) != 0))
            {
              CFRelease(v41);
              v40[2] = 0;
            }
          }

          v44 = v40[31];
          if (v44)
          {
            CFRelease(v44);
            v40[31] = 0;
          }

          v45 = v40[33];
          if (v45)
          {
            CFRelease(v45);
            v40[33] = 0;
          }

          v46 = v40[21];
          if (v46)
          {
            v47 = CFArrayGetCount(v46);
            if (v47 >= 1)
            {
              v48 = v47;
              for (j = 0; j != v48; ++j)
              {
                v50 = CFArrayGetValueAtIndex(v40[21], j);
                v51 = v50[6];
                if (v51)
                {
                  CFRelease(v51);
                  v50[6] = 0;
                }
              }
            }
          }
        }
      }
    }

    if (*(v5 + 1200))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    v71 = 0uLL;
    v72 = 0;
    FigPlaybackBossGetScheduledEndTime(*(v5 + 352), &v71);
    a1 = v70;
    if ((v71.n128_u8[12] & 0x1D) == 1)
    {
      *(v5 + 24) = v71;
      v52 = v72;
    }

    else
    {
      FigPlaybackBossGetTime(*(v5 + 352), &v80);
      *(v5 + 24) = v80;
      v52 = v81;
    }

    *(v5 + 40) = v52;
    v7 = &unk_1EAF16000;
    CMNotificationCenterGetDefaultLocalCenter();
    FigPlaybackBossGetTimebase(*(v5 + 352));
    FigNotificationCenterRemoveWeakListener();
    itemfig_removeBossListeners();
    *(DerivedStorage + 1000) = *(v5 + 352);
    *(v5 + 352) = 0;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    v53 = *(v5 + 328);
    HostTimeClock = CMClockGetHostTimeClock();
    CMTimebaseSetSourceClock(v53, HostTimeClock);
    itemfig_cancelPreroll();
    v55 = *(v5 + 488);
    if (v55)
    {
      CFRelease(v55);
      *(v5 + 488) = 0;
    }

    if (HIBYTE(v74))
    {
      if (*(DerivedStorage + 60) == 2)
      {
        playerfig_UpdateAudioSessionPreferredDeviceFormat();
        playerfig_UpdateAudioSessionPreferredDeviceSampleRate();
        playerfig_UpdateAudioSessionPreferredNumberOfAudioOutputChannels();
      }

      else if (dword_1EAF16A10)
      {
        LODWORD(v74) = 0;
        HIBYTE(v73) = 0;
        v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v57 = v74;
        if (os_log_type_enabled(v56, HIBYTE(v73)))
        {
          v58 = v57;
        }

        else
        {
          v58 = v57 & 0xFFFFFFFE;
        }

        if (v58)
        {
          if (v70)
          {
            v59 = (CMBaseObjectGetDerivedStorage() + 972);
          }

          else
          {
            v59 = "";
          }

          *v75 = 136315650;
          *&v75[4] = "playerfig_transferItemToOverlappedOutroAndRemoveFromPlayQueue";
          *&v75[12] = 2048;
          *&v75[14] = v70;
          *&v75[22] = 2082;
          v76 = v59;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        a1 = v70;
        v7 = &unk_1EAF16000;
      }

      itemfig_InformStakeholdersOfBestAvailableAudioContentType(a2);
    }

    playerfig_applyEQPreset();
    itemfig_vendAccessLogWhenItemStopsBeingCurrent(a2);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  CFRelease(a2);
  if (v7[644])
  {
    v8 = fp_copyPlayQueueDescription();
    if (v7[644])
    {
      LODWORD(v74) = 0;
      HIBYTE(v73) = 0;
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v74;
      if (os_log_type_enabled(v9, HIBYTE(v73)))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        if (a1)
        {
          v12 = (CMBaseObjectGetDerivedStorage() + 972);
        }

        else
        {
          v12 = "";
        }

        *v75 = 136315906;
        *&v75[4] = "playerfig_transferItemToOverlappedOutroAndRemoveFromPlayQueue";
        *&v75[12] = 2048;
        *&v75[14] = a1;
        *&v75[22] = 2082;
        v76 = v12;
        LOWORD(v77) = 2114;
        *(&v77 + 2) = v8;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void playerfig_cleanupOverlappedOutroComponents(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = *MEMORY[0x1E6960C70];
  v16 = *(MEMORY[0x1E6960C70] + 16);
  v4 = *(DerivedStorage + 1000);
  if (v4)
  {
    if (a2)
    {
      FigPlaybackBossGetScheduledEndTime(v4, &v15);
    }

    else
    {
      FigPlaybackBossGetTime(v4, &v15);
    }

    if (!*(DerivedStorage + 1008))
    {
      FigPlaybackBossSetRate(*(DerivedStorage + 1000), 0, 0.0);
    }

    v5 = *(DerivedStorage + 1016);
    if (v5)
    {
      CFSetRemoveAllValues(v5);
      v6 = *(DerivedStorage + 1016);
      if (v6)
      {
        CFRelease(v6);
        *(DerivedStorage + 1016) = 0;
      }
    }

    v7 = 0;
    v8 = DerivedStorage + 1024;
    do
    {
      v9 = *(v8 + v7);
      if (v9)
      {
        CFRelease(v9);
        *(v8 + v7) = 0;
      }

      v7 += 8;
    }

    while (v7 != 112);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    FigPlaybackBossInvalidate(*(DerivedStorage + 1000));
    v10 = *(DerivedStorage + 1000);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 1000) = 0;
    }

    *(DerivedStorage + 1008) = 0;
    *(DerivedStorage + 1012) = 0;
    v11 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *&v14.value = v15;
    v14.epoch = v16;
    v13 = CMTimeCopyAsDictionary(&v14, v11);
    FigCFDictionarySetValue();
    FigCFDictionarySetInt32();
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (v13)
    {
      CFRelease(v13);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

void playerfig_OverlappedOutroReachedEnd(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a2);
  v4 = *(DerivedStorage + 104);

  dispatch_async_f(v4, a2, playerfig_DeferOverlappedOutroReachedEnd_f);
}

void playerfig_OverlappedOutroBossBecameIdle(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    Value = CFDictionaryGetValue(a5, @"OSStatus");
    if (Value)
    {
      v9 = Value;
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v9))
      {
        valuePtr = 0;
        CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
        v11 = valuePtr;
        if (valuePtr)
        {
          *(DerivedStorage + 1009) = 1;
          *(DerivedStorage + 1012) = v11;
        }
      }
    }
  }

  CFRetain(a2);
  dispatch_async_f(*(DerivedStorage + 104), a2, playerfig_DeferOverlappedOutroBossBecameIdle_f);
}

void playerfig_DeferOverlappedOutroReachedEnd_f(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && !*DerivedStorage)
  {
    FigSimpleMutexLock();
    playerfig_cleanupOverlappedOutroComponents(a1, 1);
    FigSimpleMutexUnlock();
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  CFRelease(a1);
}

void playerfig_DeferOverlappedOutroBossBecameIdle_f(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v3 = DerivedStorage, *DerivedStorage))
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_4;
  }

  FigSimpleMutexLock();
  if (!v3[1008])
  {
    FigPlaybackBossGoQuiescent(*(v3 + 125));
    v3[1008] = 1;
  }

  if (v3[1009])
  {
    playerfig_cleanupOverlappedOutroComponents(a1, 0);
  }

  FigSimpleMutexUnlock();
  if (a1)
  {
LABEL_4:

    CFRelease(a1);
  }
}

void itemfig_deferredExternalProtectionStatusChanged(uint64_t a1, const void *a2)
{
  itemfig_ExternalProtectionStatusChangedGuts(a2);
  if (a2)
  {

    CFRelease(a2);
  }
}

void itemfig_commitAccessLogEntry(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1560) || (v3 = CFGetAllocator(a1), Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]), (*(DerivedStorage + 1560) = Mutable) != 0))
  {
    if (!itemfig_createAccessLogEntry())
    {
      CFArrayAppendValue(*(DerivedStorage + 1560), 0);
      *(DerivedStorage + 1720) = *(DerivedStorage + 1728);
      *(DerivedStorage + 1712) = 0;
      *(DerivedStorage + 1664) = *(DerivedStorage + 1672);
      *(DerivedStorage + 1680) = *(DerivedStorage + 1688);
      *(DerivedStorage + 1568) = CFAbsoluteTimeGetCurrent();
      *(DerivedStorage + 1736) = 0;
      *(DerivedStorage + 1648) = 0;
      *(DerivedStorage + 1656) = 0;
      *(DerivedStorage + 1738) = 0;
      *(DerivedStorage + 1584) = 0u;
      *(DerivedStorage + 1696) = 0u;
      *(DerivedStorage + 1600) = CFAbsoluteTimeGetCurrent();
      CFRelease(0);
    }
  }
}

void itemfig_stashTransitionImageQueuesAndSlots()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  v2 = CMBaseObjectGetDerivedStorage();
  if (v1)
  {
    v3 = v2;
    v4 = *(DerivedStorage + 1152);
    if (v4 && CFArrayGetCount(v4) >= 1)
    {
      if (*(DerivedStorage + 1872) || *(v3 + 864))
      {
        FigSimpleMutexLock();
        v5 = *(DerivedStorage + 1152);
        *(DerivedStorage + 1152) = 0;
        v6 = *(DerivedStorage + 1144);
        if (v6)
        {
          CFRelease(v6);
          *(DerivedStorage + 1144) = 0;
        }

        FigSimpleMutexUnlock();
        FPSupport_DeleteCASlotsInArray(v5);
        if (v5)
        {
          CFRelease(v5);
        }
      }

      else
      {
        FigSimpleMutexLock();
        *(v3 + 864) = *(DerivedStorage + 1144);
        *(DerivedStorage + 1144) = 0u;
        FigSimpleMutexUnlock();
      }
    }

    CFRelease(v1);
  }
}

void itemfig_clearTrackImageQueueTable(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v3 = *(a2 + 48);
  if (v3)
  {
    FigImageQueueTableCopyFigImageQueueArray(v3, &cf);
    if (cf)
    {
      itemfig_removeImageQueueListenersForObsoleteImageQueues();
      FigImageQueueTableRemoveAllValues(*(a2 + 48));
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    Count = *(a2 + 224);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 224), i);
    FigImageQueueTableCopyFigImageQueueArray(ValueAtIndex, &cf);
    if (cf)
    {
      itemfig_removeImageQueueListenersForObsoleteImageQueues();
      FigImageQueueTableRemoveAllValues(ValueAtIndex);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t playerfig_createDataChannelConfigurationAndSetIdentifiers(int a1, CFStringRef a2, CFAllocatorRef allocator, CFTypeRef *a4)
{
  cf = 0;
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CFStringCreateWithCString(allocator, (DerivedStorage + 972), 0x600u);
  FigCFDictionarySetValue();
  if (a2)
  {
    v10 = CMBaseObjectGetDerivedStorage();
    a2 = CFStringCreateWithCString(allocator, (v10 + 2096), 0x600u);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
  }

  v11 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v12 = CFStringCreateWithFormat(allocator, 0, @"C/%d", *(v11 + 288));
  if (v12)
  {
    ++*(v11 + 288);
  }

  else
  {
    playerfig_createDataChannelConfigurationAndSetIdentifiers_cold_1();
  }

  FigSimpleMutexUnlock();
  FigCFDictionarySetValue();
  v13 = FigDataChannelConfigurationCreate(allocator, Mutable, &cf);
  if (v13)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a4 = cf;
    cf = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

void itemfig_VideoCompositionProcessorErrorOccurred(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, __CFDictionary *FailedNotificationPayloadWithContentStream)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FailedNotificationPayloadWithContentStream)
  {
    v8 = CFGetTypeID(FailedNotificationPayloadWithContentStream);
    if (v8 == CFDictionaryGetTypeID() && (v9 = CFDictionaryGetValue(FailedNotificationPayloadWithContentStream, @"VideoCompositionProcessor_Result"), (v10 = v9) != 0) && (v11 = CFGetTypeID(v9), v11 == CFNumberGetTypeID()))
    {
      FailedNotificationPayloadWithContentStream = itemfig_createFailedNotificationPayloadWithContentStream(*(DerivedStorage + 128), v10);
      Value = CFDictionaryGetValue(FailedNotificationPayloadWithContentStream, @"CFError");
      valuePtr[0] = 0;
      CFNumberGetValue(v10, kCFNumberSInt32Type, valuePtr);
      itemfig_reportingAgentReportError(a2, Value, @"CoreMediaErrorDomain", @"Failed to play to end due to video composition error", valuePtr[0]);
    }

    else
    {
      FailedNotificationPayloadWithContentStream = 0;
    }
  }

  v13 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v13)
  {
    v14 = v13;
    CMBaseObjectGetDerivedStorage();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    CFRetain(v14);
    if (a2)
    {
      CFRetain(a2);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDeferNotificationToDispatchQueue();
    CFRelease(v14);
  }

  if (FailedNotificationPayloadWithContentStream)
  {
    CFRelease(FailedNotificationPayloadWithContentStream);
  }
}

uint64_t itemfig_getPlaythroughPrediction(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v2 = *(DerivedStorage + 600);
    if (v2)
    {
      v6 = 0;
      if (FigPlayabilityMonitorGetPlaythroughInfo(v2, &v6, 0, 0))
      {
        goto LABEL_10;
      }

      v3 = v6;
      if (v6 - 2 < 2)
      {
        if (*(DerivedStorage + 1456) == 1)
        {
          v3 = 3;
        }

        else
        {
          v3 = 2;
        }

        goto LABEL_12;
      }

      if (!v6)
      {
        goto LABEL_11;
      }

      if (v6 != 1)
      {
LABEL_10:
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_11:
        v3 = 0;
      }
    }

    else
    {
      v3 = *(DerivedStorage + 1306) != 0;
    }

LABEL_12:
    FigSimpleMutexUnlock();
    return v3;
  }

  return 0;
}

uint64_t playerfig_getNextPlaybackState(uint64_t a1, float a2, uint64_t a3, int a4, int a5, int a6, int a7, unsigned int a8, int a9, int *a10, _BYTE *a11, char *a12, float *a13)
{
  v45 = *MEMORY[0x1E69E9840];
  v13 = a4 == 4;
  if (!a10)
  {
    playerfig_getNextPlaybackState_cold_1(&v43);
    return v43;
  }

  v14 = a8;
  v16 = a4;
  v18 = a1;
  v19 = a11;
  v20 = ((a5 != 0) | a8) & v13;
  v39 = (a8 >> 2) & 1;
  v21 = &unk_1EAF16000;
  if (dword_1EAF16A10 >= 2)
  {
    v35 = a7;
    v22 = a4 == 4;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v14 = a8;
    v18 = a1;
    v13 = v22;
    v16 = a4;
    a7 = v35;
  }

  v24 = a12;
  if (a2 != 0.0)
  {
    if (!a6)
    {
      if (dword_1EAF16A10 >= 2)
      {
        v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v19 = a11;
        v24 = a12;
        v21 = &unk_1EAF16000;
      }

      v42 = 0;
      *v19 = 0;
      a6 = 3;
      goto LABEL_54;
    }

    if ((v14 & 2) != 0)
    {
      a6 = 4;
    }

    else if (v14)
    {
      a6 = 2;
    }

    else
    {
      a6 = 4;
      if (v16 != 4 && (v14 & 4) == 0)
      {
        a6 = dword_196E72740[a9];
        if (dword_1EAF16A10 >= 2)
        {
          v36 = a7;
          v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v14 = a8;
          v18 = a1;
          a7 = v36;
        }
      }
    }

    *a11 = 0;
    v29 = v16 == 3 || v16 == 0;
    if (a6 == 4 && (!a7 ? (v30 = v16 == 4) : (v30 = 1), !v30 || ((v14 >> 3) & 1) != 0))
    {
      v43 = *MEMORY[0x1E6960C70];
      v44 = *(MEMORY[0x1E6960C70] + 16);
      playerfig_performStartupTasksForEvents(v18, (v29 || (v14 & 8) != 0) | 4, v39, 0, &v43);
    }

    else
    {
      if ((v14 & 8) != 0 || v16 == 3 || !v16)
      {
        v43 = *MEMORY[0x1E6960C70];
        v44 = *(MEMORY[0x1E6960C70] + 16);
        playerfig_performStartupTasksForEvents(v18, 1, v39, 0, &v43);
      }

      else if (!a7)
      {
        goto LABEL_45;
      }

      if (a6 != 4)
      {
LABEL_45:
        if (v16 != 4 && a6 == 4)
        {
          v32 = 1;
        }

        else
        {
          v32 = v20;
        }

        v42 = v32;
        goto LABEL_54;
      }
    }

    LODWORD(v43) = 0;
    if (playerfig_isWaitingForAnyStartupTask(v18, &v43))
    {
      a6 = v43;
      *a11 = 1;
      v20 = v13;
    }

    else
    {
      a6 = 4;
    }

    goto LABEL_45;
  }

  if (dword_1EAF16A10 >= 2)
  {
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v19 = a11;
    v21 = &unk_1EAF16000;
  }

  *v19 = 0;
  if (a6)
  {
    a6 = 0;
    goto LABEL_45;
  }

  v42 = 0;
LABEL_54:
  if (v14 & 1 | (a6 != 4))
  {
    a2 = 0.0;
  }

  if (v21[644])
  {
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *a10 = a6;
  if (v24)
  {
    *v24 = v42;
  }

  result = 0;
  if (a13)
  {
    *a13 = a2;
  }

  return result;
}

uint64_t playerfig_enterPlaybackState(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 52) == a2)
  {
    return 0;
  }

  *(DerivedStorage + 52) = a2;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  CMNotificationCenterGetDefaultLocalCenter();
  v5 = FigDispatchAsyncPostNotification();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  playerfig_updateStartHostTimeEstimatesOfAllItems(a1);
  return v5;
}

uint64_t playerfig_setBossRateWithFade(uint64_t a1, int a2, CMTime *a3, CMTime *a4, CMTime *a5, float a6, float a7)
{
  v27 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v24, 0, sizeof(v24));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v24, HostTimeClock);
  if (dword_1EAF16A10)
  {
    v23 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a6 == 0.0)
  {
    Seconds = 0.0;
    if ((a3->flags & 0x1D) == 1)
    {
      time = *a3;
      Seconds = CMTimeGetSeconds(&time);
    }

    playerfig_applySoftwareVolume(0.0, Seconds, a1, @"SoftwareVolume1", 1);
    goto LABEL_15;
  }

  if (a7 != 0.0)
  {
LABEL_15:
    time = *a4;
    lhs = *a5;
    return playerfig_setBossRateAndAnchorTime(a1, a2, &time.value, &lhs.value, a6);
  }

  v18 = 0.0;
  if ((a3->flags & 0x1D) == 1)
  {
    time = *a3;
    v18 = CMTimeGetSeconds(&time);
  }

  playerfig_applySoftwareVolume(0.0, 0.0, a1, @"SoftwareVolume1", 1);
  v19 = 1.0;
  if (*(DerivedStorage + 813))
  {
    v19 = 0.0;
  }

  playerfig_applySoftwareVolume(v19, 0.0, a1, @"SoftwareVolume5", 1);
  time = *a4;
  lhs = *a5;
  v20 = playerfig_setBossRateAndAnchorTime(a1, a2, &time.value, &lhs.value, a6);
  if (*(DerivedStorage + 812))
  {
    playerfig_applySoftwareVolume(*(DerivedStorage + 808), 0.0, a1, @"SoftwareVolume2", 1);
  }

  playerfig_applySoftwareVolume(*(DerivedStorage + 804), v18, a1, @"SoftwareVolume1", 0);
  return v20;
}

uint64_t playerfig_performStartupTasksForEvents(uint64_t a1, int a2, uint64_t a3, int a4, __int128 *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = 0;
  while (1)
  {
    Count = *(DerivedStorage + 1144);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v7 >= Count)
    {
      return v8;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 1144), v7);
    v22 = 0;
    cf = 0;
    v11 = *(DerivedStorage + 528);
    if (v11 && CFArrayGetCount(v11) >= 1)
    {
      v12 = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
    }

    else
    {
      v12 = 0;
    }

    FigPlayerStartupTaskCopyRequiredParameters(ValueAtIndex, &cf);
    NotificationPayloadForProperties = FPSupport_CreateNotificationPayloadForProperties(a1, v12, cf);
    v14 = FigCFArrayContainsValue();
    if (a4 && v14)
    {
      FigCFDictionarySetInt32();
    }

    if (FigCFArrayContainsValue() && (*(a5 + 12) & 1) != 0)
    {
      v25 = *a5;
      v26 = *(a5 + 2);
      FigCFDictionarySetCMTime();
    }

    if (FigCFArrayContainsValue())
    {
      FigCFDictionarySetFloat32();
    }

    if (FigCFArrayContainsValue())
    {
      FigCFDictionarySetFloat32();
    }

    if (FigCFArrayContainsValue())
    {
      v25 = *MEMORY[0x1E6960C70];
      v26 = *(MEMORY[0x1E6960C70] + 16);
      itemfig_GetCurrentTime(v12, &v25);
      v23 = v25;
      v24 = v26;
      FigCFDictionarySetCMTime();
    }

    v8 = FigPlayerStartupTaskNotifyOfEvents(ValueAtIndex, a2, NotificationPayloadForProperties, &v22);
    if (v8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v22 = 1;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (NotificationPayloadForProperties)
    {
      CFRelease(NotificationPayloadForProperties);
    }

    if (v22)
    {
      if (!dword_1EAF16A10)
      {
        goto LABEL_32;
      }
    }

    else if (!dword_1EAF16A10)
    {
      goto LABEL_32;
    }

    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_32:
    ++v7;
  }
}

uint64_t playerfig_isWaitingForAnyStartupTask(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0;
  while (1)
  {
    Count = *(DerivedStorage + 1144);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v4 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 1144), v4++);
    if (!FigPlayerStartupTaskDoesAllowStartup(ValueAtIndex))
    {
      *a2 = FigPlayerStartupTaskGetWaitingState(ValueAtIndex);
      return 1;
    }
  }

  return 0;
}

uint64_t playerfig_updateStartHostTimeEstimatesOfAllItems(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 528);
  if (v3 && CFArrayGetCount(v3) >= 1)
  {
    playerfig_updateStartHostTimeEstimatesOfItemAtIndexAndFollowingItems(a1, 0);
  }

  return FigSimpleMutexUnlock();
}

const __CFArray *playerfig_isCurrentItemQuiescent()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 528);
  if (result)
  {
    if (CFArrayGetCount(result) < 1)
    {
      return 0;
    }

    else if (*(DerivedStorage + 536))
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
      return (*(CMBaseObjectGetDerivedStorage() + 480) != 0);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t playerfig_FigImageQueueSetAsyncApply(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 40);
  if (v7)
  {

    return v7(a1, v3);
  }

  return result;
}

uint64_t playerfig_setRateForReason(uint64_t a1, unsigned int a2, int a3, float a4)
{
  v42 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10)
  {
    LODWORD(v35.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v10 = MEMORY[0x1E6960C70];
  if (a4 <= 0.0 || *(DerivedStorage + 48) != 0.0 || CFArrayGetCount(*(DerivedStorage + 528)) < 1)
  {
    FigSimpleMutexUnlock();
LABEL_16:
    time = *v10;
    v37 = time;
    p_time = &time;
    v24 = &v37;
    v25 = a1;
    v26 = a4;
    v27 = a2;
    v22 = v10;
    goto LABEL_17;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
  v12 = CMBaseObjectGetDerivedStorage();
  v13 = *(v12 + 1332);
  if (*(v12 + 1336) > 0.0)
  {
    v14 = v12;
    v37 = *v10;
    Duration = itemfig_GetDuration(ValueAtIndex, &v37);
    time = v37;
    Seconds = CMTimeGetSeconds(&time);
    if (!Duration)
    {
      v17 = *(v14 + 1336);
      if (Seconds > (*(v14 + 1332) + v17))
      {
        CMTimeMakeWithSeconds(&v35, Seconds - v17 + 0.05, 1000);
        v18 = CMBaseObjectGetDerivedStorage();
        v19 = v18;
        v20 = *(v18 + 1344);
        if (v20)
        {
LABEL_10:
          v21 = *(v19 + 328);
          time = v35;
          CMTimebaseSetTimerDispatchSourceNextFireTime(v21, v20, &time, 0);
          goto LABEL_11;
        }

        v34 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v18 + 104));
        *(v19 + 1344) = v34;
        if (!v34)
        {
          FigSignalErrorAtGM();
          goto LABEL_11;
        }

        dispatch_set_context(v34, ValueAtIndex);
        dispatch_source_set_event_handler_f(*(v19 + 1344), itemfig_rampOut);
        *(v19 + 2072) = voucher_copy();
        dispatch_resume(*(v19 + 1344));
        if (!CMTimebaseAddTimerDispatchSource(*(v19 + 328), *(v19 + 1344)))
        {
          v20 = *(v19 + 1344);
          goto LABEL_10;
        }
      }
    }
  }

LABEL_11:
  FigSimpleMutexUnlock();
  if (v13 <= 0.0 || a4 == 0.0 || *(DerivedStorage + 48) != 0.0)
  {
    goto LABEL_16;
  }

  CMTimeMakeWithSeconds(&time, v13, 1000);
  v37 = *v10;
  v35 = v37;
  v22 = &time;
  p_time = &v37;
  v24 = &v35;
  v25 = a1;
  v26 = a4;
  v27 = a2;
LABEL_17:
  v28 = playerfig_setRateGuts(v25, v27, v22, p_time, v24, a3, v26);
  if (v28 && dword_1EAF16A10)
  {
    LODWORD(v35.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = v35.value;
    if (os_log_type_enabled(v29, type))
    {
      v31 = value;
    }

    else
    {
      v31 = value & 0xFFFFFFFE;
    }

    if (v31)
    {
      if (a1)
      {
        v32 = (CMBaseObjectGetDerivedStorage() + 972);
      }

      else
      {
        v32 = "";
      }

      LODWORD(v37.value) = 136315906;
      *(&v37.value + 4) = "playerfig_setRateForReason";
      LOWORD(v37.flags) = 2048;
      *(&v37.flags + 2) = a1;
      HIWORD(v37.epoch) = 2082;
      v38 = v32;
      v39 = 1024;
      LODWORD(v40) = v28;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v28;
}

const __CFArray *playerfig_clearCoordinatedPlaybackSynchronizationTimebaseForItemsAfterItem(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0;
  v5 = a2 == 0;
  while (1)
  {
    result = *(DerivedStorage + 528);
    if (result)
    {
      result = CFArrayGetCount(result);
    }

    if (v4 >= result)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), v4);
    if (v5)
    {
      itemfig_clearCoordinatedPlaybackSynchronizationTimebase();
      v5 = 1;
    }

    else
    {
      v5 = ValueAtIndex == a2;
    }

    ++v4;
  }

  return result;
}

uint64_t playerfig_repreparePlayQueue(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 536))
  {
    return 0;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  PlaybackPrerequisitePropertiesReady = itemfig_makePlaybackPrerequisitePropertiesReady(*(DerivedStorage + 536), &v20[7], v8, v9, v10, v11, v12, v13, v17, v18, type, SWORD2(type), SBYTE6(type), HIBYTE(type), *v20, *&v20[4], v20[6], 0, v21, v22, v23, v24, v25, v26[0], cf, v28, v29[0], *&v29[1], v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, vars0);
  if (v20[7])
  {
    if (*(DerivedStorage + 60) == 2)
    {
      playerfig_UpdateAudioSessionPreferredDeviceFormat();
      playerfig_UpdateAudioSessionPreferredDeviceSampleRate();
      playerfig_UpdateAudioSessionPreferredNumberOfAudioOutputChannels();
    }

    else if (dword_1EAF16A10)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    itemfig_InformStakeholdersOfBestAvailableAudioContentType(*(DerivedStorage + 536));
  }

  else if (dword_1EAF16A10)
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(v7 + 352))
  {
    return playerfig_prepareWorkingItem(a1, 0, a2);
  }

  if (dword_1EAF16A10)
  {
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return PlaybackPrerequisitePropertiesReady;
}

CFIndex playerfig_configureCacheVolatilityInPlayQueue()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFArrayGetCount(*(DerivedStorage + 528));
  v2 = result;
  v3 = MEMORY[0x1E695E4D0];
  if (*(DerivedStorage + 60) && *(DerivedStorage + 72) <= 2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  if (result >= 1)
  {
    v4 = 0;
    v5 = *v3;
    do
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 528), v4);
      result = *(CMBaseObjectGetDerivedStorage() + 128);
      if (result)
      {
        CMByteStreamGetCMBaseObject();
        FigCRABSGetClassID();
        result = CMBaseObjectIsMemberOfClass();
        if (result)
        {
          CMBaseObject = CMByteStreamGetCMBaseObject();
          VTable = CMBaseObjectGetVTable();
          v8 = *(VTable + 8);
          result = VTable + 8;
          v9 = *(v8 + 56);
          if (v9)
          {
            result = v9(CMBaseObject, @"CRABS_AllowCacheMemoryToBeVolatile", v5);
          }
        }
      }

      ++v4;
    }

    while (v2 != v4);
  }

  return result;
}

void playerfig_pauseRenderPipelines()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 528)) >= 1)
  {
    CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
    v1 = CMBaseObjectGetDerivedStorage();
    v2 = *(v1 + 352);
    if (v2)
    {
      if (*(v1 + 480))
      {
        context = 0;
        CFSetApplyFunction(*(v1 + 360), fp_setRateToZeroIfTimebaseStarter, &context);
        if (!context)
        {
          CMTimebaseSetRate(*(v1 + 328), 0.0);
        }
      }

      else
      {

        FigPlaybackBossSetRate(v2, 0, 0.0);
      }
    }
  }
}

void fp_setRateToZeroIfTimebaseStarter(uint64_t a1, _BYTE *a2)
{
  cf = 0;
  FigBaseObject = FigRenderPipelineGetFigBaseObject(a1);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(FigBaseObject, @"IsTimebaseStarter", *MEMORY[0x1E695E480], &cf);
    v6 = cf;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == *MEMORY[0x1E695E4D0])
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v7)
    {
      v11 = *MEMORY[0x1E6960C70];
      v12 = *(MEMORY[0x1E6960C70] + 16);
      v9 = v11;
      v10 = v12;
      v7(a1, &v11, &v9, 0.0, 0.0);
    }

    *a2 = 1;
    v6 = cf;
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void playerfig_deferredLatencyChanged()
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!playerfig_isCurrentItemQuiescent())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    FigSimpleMutexLock();
    v1 = *(DerivedStorage + 472);
    if (v1)
    {
      v2 = CFRetain(v1);
      FigSimpleMutexUnlock();
      if (v2)
      {
        BOOLean.value = 0;
        v3 = *(CMBaseObjectGetVTable() + 16);
        if (!v3 || (v4 = *(v3 + 8)) == 0 || (v4(v2, @"FAS_IsActive", *MEMORY[0x1E695E480], &BOOLean), !BOOLean.value) || (Value = CFBooleanGetValue(BOOLean.value), CFRelease(BOOLean.value), !Value) || (v6 = *(DerivedStorage + 528)) == 0)
        {
LABEL_18:
          CFRelease(v2);
          goto LABEL_19;
        }

        v7 = 0;
        v8 = (DerivedStorage + 528);
LABEL_13:
        if (CFArrayGetCount(v6) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*v8, 0);
          if (ValueAtIndex)
          {
            v10 = ValueAtIndex;
            v11 = *(CMBaseObjectGetDerivedStorage() + 352);
            if (v11)
            {
              FigPlaybackBossSetRate(v11, 0, 0.0);
              BOOLean = **&MEMORY[0x1E6960C70];
              v12 = BOOLean;
              itemfig_matchBossRateToPlayerRateAndPlaybackState(v10, &BOOLean, &v12);
            }
          }
        }

        if (v7)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    v6 = *(DerivedStorage + 528);
    if (!v6)
    {
LABEL_19:
      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
      return;
    }

    v2 = 0;
    v8 = (DerivedStorage + 528);
    v7 = 1;
    goto LABEL_13;
  }

  playerfig_deferredLatencyChanged_cold_1();
}

_BYTE *playerfig_RenderPipelineFailedToStart_setRateForInternalReason_0_f(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {

    return playerfig_pauseForInternalReason(a1, 3u);
  }

  return result;
}

void playerfig_deferredRenderPipelineWantsRebuild(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = playerfig_isCurrentItemQuiescent();
  if (*(DerivedStorage + 952) && CFEqual(a3, @"DeviceHasDisconnected"))
  {
    FigSimpleMutexUnlock();
LABEL_9:
    playerfig_deferredRenderPipelineWantsRebuild_cold_1();
    if (!a2)
    {
      return;
    }

    goto LABEL_5;
  }

  FigSimpleMutexUnlock();
  if (!v6)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return;
  }

LABEL_5:

  CFRelease(a2);
}

CFStringRef fp_createNextRenderPipelineIdentifierString()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = (*(DerivedStorage + 988) + 1);
  *(DerivedStorage + 988) = v1;
  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"R%s.%02d", DerivedStorage + 972, v1);
}

uint64_t itemfig_shouldEnableMainVideo()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  if (fp_doesCPEProtectorAllowsVideoOutput(*(DerivedStorage + 1200)))
  {
    FigSimpleMutexLock();
    v2 = *(DerivedStorage + 1776);
    if (v2)
    {
      v3 = CFArrayGetCount(v2) > 0;
    }

    else
    {
      v3 = 0;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexLock();
  v4 = *(v1 + 216);
  if (v4)
  {
    v5 = CFArrayGetCount(v4) > 0;
  }

  else
  {
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v6 = *(v1 + 264);
  if (v6)
  {
    v7 = CFArrayGetCount(v6) > 0;
  }

  else
  {
    v7 = 0;
  }

  FigSimpleMutexUnlock();
  if (v3 || *(DerivedStorage + 1872) == 0 && v5 || *(v1 + 224) > 0 || v7)
  {
    if (!*(v1 + 898) || !*(DerivedStorage + 2064))
    {
      return 1;
    }

    if (dword_1EAF16A10)
    {
      goto LABEL_22;
    }
  }

  else if (dword_1EAF16A10)
  {
LABEL_22:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

uint64_t itemfig_countOfEnabledVideoTracks()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 648);
  if (!v1)
  {
    return 0;
  }

  Count = CFArrayGetCount(v1);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  for (i = 0; i != v3; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 648), i);
    if (ValueAtIndex[1] == 1986618469 && *(ValueAtIndex + 8) == 1)
    {
      ++v4;
    }
  }

  return v4;
}

uint64_t itemfig_createRenderTriplesForVideoComposition(const void *a1, int a2, void *a3, int a4, uint64_t a5, __CFArray *a6, __CFArray *a7)
{
  v153 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v124 = *(DerivedStorage + 8);
  v11 = CMBaseObjectGetDerivedStorage();
  v143 = 0;
  v142 = 0;
  value = 0;
  queueOut = 0;
  v107 = *MEMORY[0x1E6960C70];
  *&v139.value = *MEMORY[0x1E6960C70];
  v106 = *(MEMORY[0x1E6960C70] + 16);
  v139.epoch = v106;
  v138[0] = 0;
  v136 = 0u;
  v137 = 0u;
  v135 = 0;
  v133 = *MEMORY[0x1E6960CC0];
  v134 = *(MEMORY[0x1E6960CC0] + 16);
  v120 = v133;
  v131 = v133;
  v119 = v134;
  v132 = v134;
  v12 = *MEMORY[0x1E695E480];
  v13 = FigActivitySchedulerCreateForNewThread(*MEMORY[0x1E695E480], 23, @"com.apple.coremedia.videoprocessor", &v143);
  if (v13)
  {
    goto LABEL_206;
  }

  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(DerivedStorage + 720));
  v121 = DerivedStorage;
  FigBaseObject = FigVideoCompositorGetFigBaseObject(*(DerivedStorage + 656));
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v16)
  {
    value_low = 4294954514;
    if (!DictionaryRepresentation)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  value_low = v16(FigBaseObject, @"RenderDimensions", DictionaryRepresentation);
  if (DictionaryRepresentation)
  {
LABEL_6:
    CFRelease(DictionaryRepresentation);
  }

LABEL_7:
  if (value_low)
  {
LABEL_207:
    v25 = 0;
LABEL_22:
    itemfig_resetRenderTriple(&v136);
    v30 = 0;
    v31 = 0;
    SInt32 = 0;
    v33 = 0;
    goto LABEL_175;
  }

  v18 = CMBaseObjectGetDerivedStorage();
  valuePtr = xmmword_196E72760;
  *v145 = 0;
  *cf = xmmword_196E72778;
  *v128 = 0;
  if (*(v18 + 688))
  {
    *v145 = 0;
    valuePtr = kFigPlayerFileLowWaterLevelDuration_Minimum;
    *v128 = 0;
    *cf = kFigPlayerFileLowWaterLevelDuration_Minimum;
  }

  v133 = valuePtr;
  v134 = *v145;
  v131 = *cf;
  v132 = *v128;
  v19 = *(DerivedStorage + 656);
  v20 = *(DerivedStorage + 716);
  v21 = *(DerivedStorage + 832);
  v22 = *(DerivedStorage + 840);
  valuePtr = *(DerivedStorage + 692);
  v110 = DerivedStorage + 692;
  *v145 = *(DerivedStorage + 708);
  *cf = v133;
  *v128 = v134;
  *time2 = v131;
  *&time2[16] = v132;
  v13 = FigVideoCompositionProcessorCreateWithImageQueueArray(v12, 0, v19, &valuePtr, v20, v21, v22, cf, time2, v143, (DerivedStorage + 824));
  if (v13 || (v13 = FigVideoCompositionProcessorSetCompositionInstructionCallback(*(DerivedStorage + 824), itemfig_copyCompositionInstructionAtTime, a1), v13))
  {
LABEL_206:
    value_low = v13;
    goto LABEL_207;
  }

  v114 = (DerivedStorage + 824);
  v23 = CFNumberCreate(v12, kCFNumberFloatType, (DerivedStorage + 736));
  value_low = FigVideoCompositionProcessorSetProperty(*(DerivedStorage + 824), @"VideoCompositionProcessor_RenderScale", v23);
  if (v23)
  {
    CFRelease(v23);
  }

  if (value_low)
  {
    goto LABEL_207;
  }

  v109 = a2;
  v24 = *(v11 + 904);
  if (v24)
  {
    v25 = CFRetain(v24);
    v26 = (DerivedStorage + 824);
  }

  else
  {
    *&valuePtr = VTNextUniquePixelBufferPoolSharingIDFromSource();
    v25 = CFNumberCreate(v12, kCFNumberSInt64Type, &valuePtr);
    v26 = (DerivedStorage + 824);
    if (!v25)
    {
      v27 = FigSignalErrorAtGM();
LABEL_216:
      value_low = v27;
      goto LABEL_22;
    }
  }

  v27 = FigVideoCompositionProcessorSetProperty(*v26, @"VideoCompositionProcessor_PixelBufferPoolSharingID", v25);
  if (v27)
  {
    goto LABEL_216;
  }

  if (*(v11 + 480))
  {
    v28 = CFNumberCreate(v12, kCFNumberSInt32Type, (v11 + 480));
    if (v28)
    {
      v29 = v28;
      value_low = FigVideoCompositionProcessorSetProperty(*v26, @"VideoCompositionProcessor_ClientPID", v28);
      CFRelease(v29);
      if (value_low)
      {
        goto LABEL_22;
      }
    }
  }

  v27 = FigVideoCompositionProcessorSetProperty(*v26, @"VideoCompositionProcessor_DestinationPixelBufferDesiredAttributes", a3);
  if (v27)
  {
    goto LABEL_216;
  }

  v34 = *(DerivedStorage + 744);
  if (v34)
  {
    v27 = FigVideoCompositionProcessorSetProperty(*v26, @"VideoCompositionProcessor_CompositionColorPrimaries", v34);
    if (v27)
    {
      goto LABEL_216;
    }
  }

  v35 = *(DerivedStorage + 752);
  if (v35)
  {
    v27 = FigVideoCompositionProcessorSetProperty(*v26, @"VideoCompositionProcessor_CompositionYCbCrMatrix", v35);
    if (v27)
    {
      goto LABEL_216;
    }
  }

  v36 = *(DerivedStorage + 760);
  if (v36)
  {
    v27 = FigVideoCompositionProcessorSetProperty(*v26, @"VideoCompositionProcessor_CompositionTransferFunction", v36);
    if (v27)
    {
      goto LABEL_216;
    }
  }

  v37 = *(DerivedStorage + 768);
  if (v37)
  {
    v27 = FigVideoCompositionProcessorSetProperty(*v26, @"VideoCompositionProcessor_HDRDisplayMetadataPolicy", v37);
    if (v27)
    {
      goto LABEL_216;
    }
  }

  v27 = FigVideoCompositionProcessorCopyProperty(*v26, @"VideoCompositionProcessor_SourcePixelBufferAttributes", v12, &v142);
  if (v27)
  {
    goto LABEL_216;
  }

  v115 = v25;
  CMNotificationCenterGetDefaultLocalCenter();
  v38 = DerivedStorage;
  value_low = FigNotificationCenterAddWeakListener();
  Count = CFArrayGetCount(*(DerivedStorage + 648));
  if (Count < 1)
  {
LABEL_168:
    v102 = *(v38 + 848);
    v25 = v115;
    if (v102)
    {
      *&valuePtr = 0;
      FigImageQueueTableCopyFigImageQueueArray(v102, &valuePtr);
      FigImageQueueArraySetProperty();
      FigImageQueueArraySetProperty();
      if (valuePtr)
      {
        CFRelease(valuePtr);
      }
    }

    if (v109)
    {
      itemfig_setTimebaseOnVideoProcessorImageQueueTables();
    }

    v33 = 0;
    SInt32 = 0;
    v31 = 0;
    v30 = 0;
LABEL_174:
    itemfig_resetRenderTriple(&v136);
    goto LABEL_175;
  }

  v39 = 0;
  v104 = *MEMORY[0x1E695E4D0];
  v113 = a1;
  allocator = v12;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v38 + 648), v39);
    v41 = ValueAtIndex;
    v42 = ValueAtIndex[1];
    if (v42 == 1986618469)
    {
      goto LABEL_38;
    }

    if (v42 == 1835365473)
    {
      break;
    }

    if (v42 != 1635088502)
    {
      goto LABEL_146;
    }

LABEL_38:
    if (!*(ValueAtIndex + 8))
    {
      goto LABEL_146;
    }

    *&valuePtr = 0;
    cf[0] = 0;
    if (v42 != 1986618469)
    {
      v47 = 0;
      goto LABEL_50;
    }

    v43 = *(v38 + 1008);
    v44 = *ValueAtIndex;
    v45 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v45 || v45(v43, v44, &valuePtr, 0))
    {
      v46 = 0;
LABEL_45:
      v47 = 0;
      goto LABEL_46;
    }

    itemfig_copyFormatDescription(valuePtr, cf);
    v46 = cf[0];
    if (!cf[0])
    {
      goto LABEL_45;
    }

    v47 = FigVideoFormatDescriptionContainsStereoMultiviewVideo();
LABEL_46:
    if (valuePtr)
    {
      CFRelease(valuePtr);
    }

    if (v46)
    {
      CFRelease(v46);
    }

LABEL_50:
    v48 = FigVideoCompositorSupportsSpatialVideoSources(*(v38 + 656));
    valuePtr = v120;
    *v145 = v119;
    *&v145[8] = v120;
    *&v145[24] = v119;
    v146 = v120;
    *v147 = v119;
    *&v147[8] = v120;
    *&v147[24] = v119;
    v49 = *(v38 + 808);
    if (v49)
    {
      Basic = FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(v49, *v41, &valuePtr);
      if (Basic)
      {
        goto LABEL_200;
      }
    }

    Basic = FigVisualContextCreateBasic(v12, 0, &value);
    if (Basic)
    {
      goto LABEL_200;
    }

    v51 = (v41 + 4);
    if (*(v41 + 2))
    {
      FigStopForwardingMediaServicesProcessDeathNotification();
      if (*v51)
      {
        CFRelease(*v51);
        *v51 = 0;
      }
    }

    Mutable = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
    v33 = Mutable;
    if (!Mutable)
    {
      itemfig_createRenderTriplesForVideoComposition_cold_5(cf);
      SInt32 = 0;
      goto LABEL_211;
    }

    CFArrayAppendValue(Mutable, value);
    v53 = !v48 || v47 == 0;
    v54 = !v53;
    v118 = (v41 + 4);
    if (v53)
    {
      SInt32 = 0;
      v31 = 0;
    }

    else
    {
      cf[0] = 0;
      *time2 = 0;
      tagCollectionsOut.value = 0;
      if (v41[1] == 1986618469 && (v55 = *(v38 + 1008), v56 = *v41, (v57 = *(*(CMBaseObjectGetVTable() + 16) + 56)) != 0) && !v57(v55, v56, cf, 0))
      {
        itemfig_copyFormatDescription(cf[0], time2);
        v58 = *time2;
        if (*time2 && FigVideoFormatDescriptionContainsStereoMultiviewVideo())
        {
          CMVideoFormatDescriptionCopyTagCollectionArray(v58, &tagCollectionsOut);
        }
      }

      else
      {
        v58 = 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (v58)
      {
        CFRelease(v58);
      }

      SInt32 = tagCollectionsOut.value;
      if (tagCollectionsOut.value)
      {
        v64 = CFArrayGetCount(tagCollectionsOut.value);
        v65 = v12;
        v66 = v64;
        v67 = CFArrayCreateMutable(v65, 0, MEMORY[0x1E695E9C0]);
        if (!v67)
        {
          goto LABEL_210;
        }

        v31 = v67;
        if (v66 >= 1)
        {
          v116 = v54;
          v68 = 0;
          while (1)
          {
            CFArrayGetValueAtIndex(SInt32, v68);
            *cf = *MEMORY[0x1E6963130];
            *time2 = 0;
            if (v68)
            {
              v69 = CFGetAllocator(v124);
              TagsWithCategory = FigVisualContextCreateBasic(v69, 0, &v135);
              if (TagsWithCategory)
              {
                goto LABEL_196;
              }

              CFArrayAppendValue(v33, v135);
              if (v135)
              {
                CFRelease(v135);
                v135 = 0;
              }
            }

            TagsWithCategory = FigTagCollectionGetTagsWithCategory();
            if (TagsWithCategory)
            {
LABEL_196:
              value_low = TagsWithCategory;
              goto LABEL_203;
            }

            FigTagGetSInt64Value();
            v71 = CFGetAllocator(v124);
            v72 = CFDictionaryCreateMutable(v71, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!v72)
            {
              break;
            }

            v73 = v72;
            FigCFDictionarySetInt64();
            CFArrayAppendValue(v31, v73);
            CFRelease(v73);
            if (v66 == ++v68)
            {
              a1 = v113;
              v12 = allocator;
              v54 = v116;
              goto LABEL_104;
            }
          }

          itemfig_createRenderTriplesForVideoComposition_cold_1(&tagCollectionsOut);
          value_low = LODWORD(tagCollectionsOut.value);
          goto LABEL_203;
        }
      }

      else
      {
        v74 = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
        if (!v74)
        {
LABEL_210:
          itemfig_createRenderTriplesForVideoComposition_cold_4(cf);
LABEL_211:
          v31 = 0;
          v30 = 0;
          goto LABEL_198;
        }

        v31 = v74;
        SInt32 = 0;
      }

      v12 = allocator;
    }

LABEL_104:
    if (*(v41 + 6))
    {
      itemfig_clearTrackImageQueueTable(a1, v41);
    }

    else
    {
      FigImageQueueTableCreateWithOptions(v12, a5, v41 + 6);
    }

    v30 = 0;
    if (!fp_createFigImageQueueArrayForVideoRenderPipeline(a1, *v41, 0, v33, 0, 0, 0, 0, 0, *(v41 + 6), 0, 0))
    {
      v30 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      if (!v30)
      {
        itemfig_createRenderTriplesForVideoComposition_cold_3(cf);
LABEL_198:
        value_low = LODWORD(cf[0]);
        goto LABEL_204;
      }

      v117 = v54;
      v75 = CFArrayGetCount(v33);
      if (v75 >= 1)
      {
        v76 = v75;
        v77 = 0;
        while (1)
        {
          v78 = FigCFArrayGetValueAtIndex();
          v79 = FigImageQueueTableCopyFigImageQueueForVisualContext(*(v41 + 6), v78);
          if (!v79)
          {
            break;
          }

          v80 = v79;
          CFArrayAppendValue(v30, v79);
          CFRelease(v80);
          if (v76 == ++v77)
          {
            goto LABEL_113;
          }
        }

        itemfig_createRenderTriplesForVideoComposition_cold_2(cf);
        goto LABEL_198;
      }

LABEL_113:
      v81 = a4;
      if (a4)
      {
        v81 = v41[1] == 1986618469;
      }

      a1 = v113;
      v38 = v121;
      if (!fp_buildVideoRenderPipelineForTrack(v124, v113, *v41, v142, 0, *(v41 + 3), v115, 0, v30, v31, v81, v118))
      {
        CFRelease(v30);
        if (v31)
        {
          CFRelease(v31);
        }

        FigStartForwardingMediaServicesProcessDeathNotification();
        v82 = FigRenderPipelineGetFigBaseObject(*v118);
        v83 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v83)
        {
          v83(v82, @"ObeyEmptyMediaMarkers", v104);
        }

        v84 = *(v121 + 2208);
        v85 = FigRenderPipelineGetFigBaseObject(*v118);
        v86 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v86)
        {
          v86(v85, @"AttachmentCollectorMetadataSourceBuffers", v84);
        }

        *cf = v120;
        *v128 = v119;
        *&v128[8] = v120;
        *&v128[24] = v119;
        v129 = v120;
        *v130 = v119;
        *&v130[8] = v120;
        *&v130[24] = v119;
        v87 = FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(*(v121 + 808), *v41, cf);
        if (v87)
        {
LABEL_213:
          value_low = v87;
          goto LABEL_202;
        }

        v88 = *v114;
        v89 = *v41;
        v90 = v41[1];
        if (v117)
        {
          v87 = FigVideoCompositionProcessorSetSourceVisualContextGroup(v88, v89, v90, v33, SInt32);
          if (v87)
          {
            goto LABEL_213;
          }
        }

        else
        {
          v149 = *&v128[16];
          v150 = v129;
          v151 = *v130;
          v152 = *&v130[16];
          *time2 = *cf;
          *&time2[16] = *v128;
          v87 = FigVideoCompositionProcessorSetSourceVisualContext(v88, v89, v90, time2, value);
          if (v87)
          {
            goto LABEL_213;
          }
        }

        CFRelease(v33);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }

        if (SInt32)
        {
          CFRelease(SInt32);
        }

        LODWORD(v136) = *v41;
        *time2 = *v110;
        *&time2[16] = *(v110 + 16);
        Basic = fp_createCommonRenderPipelineOptionsForTrack(v113, 0, time2, v136, 1986618469, 0, &v136 + 1);
        if (Basic)
        {
LABEL_200:
          value_low = Basic;
LABEL_201:
          v33 = 0;
          SInt32 = 0;
LABEL_202:
          v31 = 0;
LABEL_203:
          v30 = 0;
LABEL_204:
          v25 = v115;
          goto LABEL_174;
        }

        v98 = *v41;
        *time2 = *v110;
        *&time2[16] = *(v110 + 16);
        value_low = fp_createCommonRenderPipelineOptionsForTrack(v113, 0, time2, v98, 1986618469, 1, v138);
        if (value_low)
        {
          goto LABEL_201;
        }

        *(&v137 + 1) = CFRetain(*v118);
        CFArrayAppendValue(a6, &v136);
        itemfig_resetRenderTriple(&v136);
LABEL_146:
        v33 = 0;
        SInt32 = 0;
        v31 = 0;
        v30 = 0;
        goto LABEL_147;
      }
    }

    value_low = 0;
LABEL_147:
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    if (v33)
    {
      CFRelease(v33);
    }

    if (SInt32)
    {
      CFRelease(SInt32);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    if (v135)
    {
      CFRelease(v135);
      v135 = 0;
    }

    if (v30)
    {
      CFRelease(v30);
    }

    ++v39;
    v12 = allocator;
    if (v39 == Count)
    {
      goto LABEL_168;
    }
  }

  SInt32 = FigCFNumberCreateSInt32();
  *cf = v120;
  *v128 = v119;
  *&v128[8] = v120;
  *&v128[24] = v119;
  v129 = v120;
  *v130 = v119;
  *&v130[8] = v120;
  *&v130[24] = v119;
  v59 = *(v38 + 816);
  if (!v59 || (value_low = FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(v59, *v41, cf), !value_low))
  {
    v60 = FigCFArrayContainsValue();
    *&v145[16] = *&v128[16];
    v146 = v129;
    *v147 = *v130;
    *&v147[16] = *&v130[16];
    valuePtr = *cf;
    *v145 = *v128;
    IsZero = FigVideoCompositionTimeWindowDurationIsZero(&valuePtr);
    if (SInt32)
    {
      CFRelease(SInt32);
    }

    if (!IsZero || v60)
    {
      v62 = *(v41 + 2);
      if (v62)
      {
        CFRelease(v62);
        *(v41 + 2) = 0;
      }

      CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
      if (CMBufferQueueCreate(v12, 0, CallbacksForUnsortedSampleBuffers, &queueOut) || FigRenderPipelineCreateForBufferQueue(v12, queueOut, 0, v41 + 2))
      {
        value_low = 0;
      }

      else
      {
        FigSimpleMutexLock();
        v91 = *(v121 + 680);
        if (v91)
        {
          v92 = CFArrayGetCount(v91);
          if (v92 >= 1)
          {
            v93 = CFArrayGetValueAtIndex(*(v121 + 680), v92 - 1);
            if (v93)
            {
              v94 = CFDictionaryGetValue(v93, @"EndTime");
              if (v94)
              {
                CMTimeMakeFromDictionary(&v139, v94);
              }
            }
          }
        }

        valuePtr = *&v139.value;
        *v145 = v139.epoch;
        *time2 = v107;
        *&time2[16] = v106;
        if (!CMTimeCompare(&valuePtr, time2))
        {
          LODWORD(tagCollectionsOut.value) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v96 = tagCollectionsOut.value;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v97 = v96;
          }

          else
          {
            v97 = v96 & 0xFFFFFFFE;
          }

          if (v97)
          {
            *time2 = 136315138;
            *&time2[4] = "itemfig_createRenderTriplesForVideoComposition";
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigSimpleMutexUnlock();
        valuePtr = v120;
        *v145 = v119;
        *&v145[8] = v120;
        *&v145[24] = v119;
        v146 = v120;
        *v147 = v119;
        *&v147[8] = v120;
        *&v147[24] = v119;
        v99 = FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(*(v121 + 816), *v41, &valuePtr);
        if (v99)
        {
          value_low = v99;
LABEL_218:
          itemfig_resetRenderTriple(&v136);
LABEL_219:
          v30 = 0;
          v31 = 0;
          SInt32 = 0;
          goto LABEL_220;
        }

        v100 = *v114;
        v101 = *v41;
        v149 = *&v145[16];
        v150 = v146;
        v151 = *v147;
        v152 = *&v147[16];
        *time2 = valuePtr;
        *&time2[16] = *v145;
        tagCollectionsOut = v139;
        value_low = FigVideoCompositionProcessorSetSourceBufferQueue(v100, v101, time2, queueOut, &tagCollectionsOut);
        if (queueOut)
        {
          CFRelease(queueOut);
          queueOut = 0;
        }

        if (value_low)
        {
          goto LABEL_218;
        }

        LODWORD(v136) = *v41;
        *time2 = *v110;
        *&time2[16] = *(v110 + 16);
        value_low = fp_createCommonRenderPipelineOptionsForTrack(a1, 0, time2, v136, 1835365473, 0, v138);
        *(&v137 + 1) = CFRetain(*(v41 + 2));
        *(&v136 + 1) = CFRetain(v138[0]);
        CFArrayAppendValue(a7, &v136);
        itemfig_resetRenderTriple(&v136);
      }
    }

    v33 = 0;
    SInt32 = 0;
    v31 = 0;
    v30 = 0;
    v38 = v121;
    goto LABEL_147;
  }

  itemfig_resetRenderTriple(&v136);
  if (SInt32)
  {
    CFRelease(SInt32);
    goto LABEL_219;
  }

  v30 = 0;
  v31 = 0;
LABEL_220:
  v33 = 0;
  v25 = v115;
LABEL_175:
  if (v143)
  {
    CFRelease(v143);
  }

  if (v142)
  {
    CFRelease(v142);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (queueOut)
  {
    CFRelease(queueOut);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v135)
  {
    CFRelease(v135);
  }

  return value_low;
}

uint64_t fp_createFigImageQueueArrayForVideoRenderPipeline(uint64_t a1, uint64_t a2, int a3, const __CFArray *a4, const __CFArray *a5, CFIndex a6, CFArrayRef *a7, CFArrayRef *a8, const __CFArray *a9, uint64_t a10, char a11, void *a12)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v33 = 0;
  v34 = 0;
  fp_visualContextArrayIfVideoOutputAllowed(a4, *(DerivedStorage + 1200));
  MutableCopy = FigCFArrayCreateMutableCopy();
  if (!MutableCopy)
  {
    fp_createFigImageQueueArrayForVideoRenderPipeline_cold_1(&cf);
    return cf;
  }

  v22 = MutableCopy;
  if (a3 || FigUseVideoReceiverForCALayer())
  {
    goto LABEL_4;
  }

  Dimensions = *MEMORY[0x1E6960CF8];
  v36 = 0;
  cf = 0;
  videoDesc = 0;
  v29 = itemfig_CopyFormatReader(a1, &cf);
  if (v29)
  {
LABEL_39:
    v26 = v29;
    goto LABEL_25;
  }

  v30 = cf;
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v31)
  {
    v29 = v31(v30, a2, &v36, 0);
    if (!v29)
    {
      v26 = itemfig_copyFormatDescription(v36, &videoDesc);
      if (!v26)
      {
        Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
      }

      goto LABEL_25;
    }

    goto LABEL_39;
  }

  v26 = 4294954514;
LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (videoDesc)
  {
    CFRelease(videoDesc);
  }

  if (v26)
  {
    goto LABEL_17;
  }

  matched = fp_buildImageQueueArray(Dimensions.width, Dimensions.height, a5, a6, a7, a8);
  if (matched)
  {
    goto LABEL_37;
  }

  if (a7 && *a7 && CFArrayGetCount(*a7) >= 1)
  {
    v32 = *a7;
    v39.length = CFArrayGetCount(v32);
    v39.location = 0;
    CFArrayAppendArray(v22, v32, v39);
  }

LABEL_4:
  if (a9 && CFArrayGetCount(a9) >= 1)
  {
    v38.length = CFArrayGetCount(a9);
    v38.location = 0;
    CFArrayAppendArray(v22, a9, v38);
  }

  if (a11)
  {
    v23 = fp_imageQueueTableWillReleaseImageQueueCallback;
  }

  else
  {
    v23 = 0;
  }

  if (a11)
  {
    v24 = fp_imageQueueTableCreatedImageQueueCallback;
  }

  else
  {
    v24 = 0;
  }

  matched = FigImageQueueTableUpdateToMatchOutputsArray(a10, v22, *(DerivedStorage + 328), v24, v23, a1);
  if (!matched)
  {
    itemfig_getImageQueueFlagsAndMask(a1, &v33 + 1, &v33);
    FigImageQueueTableSetFlagsAndMask(a10, SHIDWORD(v33), v33);
    if (a12)
    {
      FigImageQueueTableCopyFigImageQueueArray(a10, &v34);
      v26 = 0;
      *a12 = v34;
      v34 = 0;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_17;
  }

LABEL_37:
  v26 = matched;
LABEL_17:
  CFRelease(v22);
  return v26;
}

uint64_t fp_buildVideoRenderPipelineForTrack(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, char a5, uint64_t a6, const void *a7, int a8, const __CFArray *a9, const __CFArray *a10, char a11, CFTypeRef *a12)
{
  v80 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = CMBaseObjectGetDerivedStorage();
  v76 = 0;
  cf = 0;
  v75 = 0;
  v20 = *(v19 + 1008);
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v21)
  {
    v29 = 0;
    NextRenderPipelineIdentifierString = 0;
    v31 = 0;
    value_low = 4294954514;
    goto LABEL_30;
  }

  v70 = a6;
  v22 = v21(v20, a3, &v76, 0);
  if (v22 || (v22 = itemfig_copyFormatDescription(v76, &v75), v22))
  {
    value_low = v22;
    v29 = 0;
    NextRenderPipelineIdentifierString = 0;
    v31 = 0;
    goto LABEL_30;
  }

  v71 = v19;
  v23 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fp_buildVideoRenderPipelineForTrack_cold_2(&v79);
    v29 = 0;
    NextRenderPipelineIdentifierString = 0;
    v31 = 0;
    value_low = LODWORD(v79.value);
LABEL_30:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_71;
  }

  v25 = Mutable;
  v26 = *(DerivedStorage + 824);
  v27 = MEMORY[0x1E695E4D0];
  if (v26 == 1)
  {
    v28 = MEMORY[0x1E695E4D0];
  }

  else
  {
    if (v26 != 2)
    {
      goto LABEL_11;
    }

    v28 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E6984200], *v28);
LABEL_11:
  v33 = *(DerivedStorage + 832);
  if (v33)
  {
    CFDictionarySetValue(v25, *MEMORY[0x1E6984208], v33);
  }

  allocator = v23;
  if (*(DerivedStorage + 897))
  {
    CFDictionarySetValue(v25, *MEMORY[0x1E69841E0], *v27);
  }

  v73 = v25;
  v72 = a2;
  v34 = CMBaseObjectGetDerivedStorage();
  v35 = CMBaseObjectGetDerivedStorage();
  ++*(v34 + 2112);
  FigGetAllocatorForMedia();
  Base26LettersFromDecimal = FigCFStringCreateBase26LettersFromDecimal();
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (Base26LettersFromDecimal)
  {
    v38 = Base26LettersFromDecimal;
  }

  else
  {
    v38 = &stru_1F0B1AFB8;
  }

  v29 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%s:%s.t%d%@", v35 + 972, v34 + 2096, a3, v38);
  if (Base26LettersFromDecimal)
  {
    CFRelease(Base26LettersFromDecimal);
  }

  FigSimpleMutexLock();
  v39 = *(DerivedStorage + 168);
  if (v39)
  {
    v40 = CFRetain(v39);
  }

  else
  {
    v40 = 0;
  }

  FigSimpleMutexUnlock();
  v68 = a5;
  v41 = v75;
  value_low = FPSupport_createVideoRenderPipeline(v25, a4, 1, a9, a10, a8, v75, *(DerivedStorage + 124), v68, v40, a7, *(DerivedStorage + 480), a11, *(DerivedStorage + 488), *(DerivedStorage + 496), v29, &cf);
  if (v40)
  {
    CFRelease(v40);
  }

  if (value_low)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    NextRenderPipelineIdentifierString = 0;
LABEL_29:
    v31 = v73;
    goto LABEL_30;
  }

  if (dword_1EAF16A10)
  {
    v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  NextRenderPipelineIdentifierString = fp_createNextRenderPipelineIdentifierString();
  if (!NextRenderPipelineIdentifierString)
  {
    value_low = 4294954510;
    goto LABEL_29;
  }

  if (a11)
  {
    v79.value = 0;
    v44 = FigGetAllocatorForMedia();
    FigSampleAttachmentCollectionRulesCopyForFilePlayback(v44, v41, &v79);
    value = v79.value;
    if (v79.value)
    {
      FigBaseObject = FigRenderPipelineGetFigBaseObject(cf);
      v47 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v47)
      {
        v47(FigBaseObject, @"SampleAttachmentCollectionRules", value);
      }

      if (v79.value)
      {
        CFRelease(v79.value);
      }
    }
  }

  if (*(DerivedStorage + 1140))
  {
    v78.value = 0;
    v48 = CFDictionaryCreateMutable(allocator, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    v49 = FigGetAllocatorForMedia();
    v50 = cf;
    FigGetDefaultLowWaterDurationForSpeedRampRenderPipelines(&v79);
    value_low = FigSpeedRampRenderPipelineCreate(v49, v50, &v79, v48, &v78);
    if (v78.value)
    {
      v51 = *(v71 + 2128);
      v52 = FigRenderPipelineGetFigBaseObject(v78.value);
      v53 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v53)
      {
        v53(v52, @"SpeedRampData", v51);
      }

      v54 = cf;
      cf = v78.value;
      if (v78.value)
      {
        CFRetain(v78.value);
      }

      if (v54)
      {
        CFRelease(v54);
      }

      if (v78.value)
      {
        CFRelease(v78.value);
      }
    }

    if (v48)
    {
      CFRelease(v48);
    }

    if (value_low)
    {
      goto LABEL_29;
    }
  }

  if (v70)
  {
    v55 = FigRenderPipelineGetFigBaseObject(cf);
    v56 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v56)
    {
      v56(v55, @"FieldMode", v70);
    }
  }

  v57 = *(DerivedStorage + 152);
  v58 = FigRenderPipelineGetFigBaseObject(cf);
  v59 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v59)
  {
    v59(v58, @"NeroVideoGravity", v57);
  }

  if (*(v71 + 285))
  {
    memset(&v79, 0, sizeof(v79));
    CMTimeMake(&v79, 1, 2);
    v78 = v79;
    v60 = CMTimeCopyAsDictionary(&v78, allocator);
    v61 = FigRenderPipelineGetFigBaseObject(cf);
    v62 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v62)
    {
      v62(v61, @"DurationAllowedForCachedVideoFrames", v60);
    }

    if (v60)
    {
      CFRelease(v60);
    }
  }

  v63 = cf;
  v64 = CMBaseObjectGetDerivedStorage();
  if (v72)
  {
    v65 = (CMBaseObjectGetDerivedStorage() + 2096);
  }

  else
  {
    v65 = "";
  }

  v66 = CFStringCreateWithCString(allocator, v65, 0x8000100u);
  if (v63 && v64)
  {
    fp_buildVideoRenderPipelineForTrack_cold_1(v64, v66, v63);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  value_low = 0;
  *a12 = cf;
  cf = 0;
  v31 = v73;
LABEL_71:
  if (v75)
  {
    CFRelease(v75);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (NextRenderPipelineIdentifierString)
  {
    CFRelease(NextRenderPipelineIdentifierString);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  return value_low;
}

BOOL fp_doesCPEProtectorAllowsVideoOutput(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  cf = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return *MEMORY[0x1E695E4D0] == 0;
  }

  v2(a1, @"AllowsVideoOutput", *MEMORY[0x1E695E480], &cf);
  v3 = *MEMORY[0x1E695E4D0] == cf;
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t itemfig_setTimebaseOnVideoProcessorImageQueueTables()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 856);
  if (v1)
  {
    Count = CFArrayGetCount(v1);
  }

  else
  {
    Count = 0;
  }

  result = *(DerivedStorage + 848);
  if (result)
  {
    result = FigImageQueueTableSetTimebase(result, *(DerivedStorage + 328));
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 856), i);
      result = FigImageQueueTableSetTimebase(ValueAtIndex, *(DerivedStorage + 328));
    }
  }

  return result;
}

uint64_t itemfig_getImageQueueFlagsAndMask(uint64_t a1, int *a2, int *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CMFormatDescriptionGetMediaSubType(0);
  if (*(DerivedStorage + 1193))
  {
    v7 = (8 * (*(DerivedStorage + 1194) != 0)) | 0x10;
  }

  else
  {
    v7 = 8 * (*(DerivedStorage + 1194) != 0);
  }

  v8 = 88;
  if (result <= 1902207794)
  {
    if (result <= 1685220712)
    {
      if (result <= 1667524656)
      {
        if (result <= 1667326823)
        {
          if (result == 1633771875 || result == 1667312947)
          {
            goto LABEL_85;
          }

          v10 = 24931;
        }

        else if (result > 1667330146)
        {
          if (result == 1667330147)
          {
            goto LABEL_85;
          }

          v10 = 30307;
        }

        else
        {
          if (result == 1667326824)
          {
            goto LABEL_85;
          }

          v10 = 25456;
        }

        v11 = v10 | 0x63610000;
        goto LABEL_84;
      }

      if (result <= 1667656802)
      {
        if (result != 1667524657 && result != 1667574579)
        {
          v11 = 1667575091;
          goto LABEL_84;
        }
      }

      else if (result > 1668047202)
      {
        if (result != 1668047203)
        {
          v11 = 1668641633;
          goto LABEL_84;
        }
      }

      else if (result != 1667656803)
      {
        v11 = 1667790435;
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (result <= 1885430578)
    {
      if (result <= 1701733237)
      {
        if (result != 1685220713 && result != 1700886115)
        {
          v11 = 1701733217;
          goto LABEL_84;
        }
      }

      else if (result > 1882599479)
      {
        if (result != 1882599480)
        {
          v11 = 1885430115;
          goto LABEL_84;
        }
      }

      else if (result != 1701733238)
      {
        v11 = 1869117027;
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (result <= 1885547314)
    {
      if ((result - 1885430579) > 0x3D || ((1 << (result - 51)) & 0x2020000000000001) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_85;
    }

    if (result <= 1886745440)
    {
      if (result != 1885547315)
      {
        v11 = 1885692723;
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (result == 1886745441)
    {
      goto LABEL_85;
    }

    v12 = 24931;
LABEL_76:
    v11 = v12 | 0x71610000;
    goto LABEL_84;
  }

  if (result <= 1902667125)
  {
    if (result > 1902324530)
    {
      if (result <= 1902405732)
      {
        if (result == 1902324531 || result == 1902403958)
        {
          goto LABEL_85;
        }

        v13 = 26673;
      }

      else
      {
        if (result > 1902469938)
        {
          if (result == 1902469939)
          {
            goto LABEL_85;
          }

          v11 = 1902537827;
          goto LABEL_84;
        }

        if (result == 1902405733)
        {
          goto LABEL_85;
        }

        v13 = 28024;
      }

      v11 = v13 | 0x71640000;
      goto LABEL_84;
    }

    if ((result - 1902207795) <= 0x3D && ((1 << (result - 51)) & 0x2020000000000001) != 0 || (result - 1902212657) <= 0x34 && ((1 << (result - 49)) & 0x14000000000001) != 0)
    {
      goto LABEL_85;
    }

    v12 = 28771;
    goto LABEL_76;
  }

  if (result > 2053202738)
  {
    if (result <= 2053319474)
    {
      if ((result - 2053202739) > 0x3D || ((1 << (result - 51)) & 0x2020000000000001) == 0)
      {
        v9 = 30307;
LABEL_79:
        v11 = v9 | 0x7A610000;
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (result <= 2053923170)
    {
      if (result != 2053319475)
      {
        v11 = 2053464883;
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (result == 2054517601)
    {
      goto LABEL_85;
    }

    v11 = 2053923171;
LABEL_84:
    if (result != v11)
    {
      goto LABEL_90;
    }

    goto LABEL_85;
  }

  if (result <= 1902998903)
  {
    if (result != 1902667126 && result != 1902671459)
    {
      v11 = 1902928227;
      goto LABEL_84;
    }
  }

  else if (result > 1903587384)
  {
    if (result != 1903587385)
    {
      v9 = 24931;
      goto LABEL_79;
    }
  }

  else if (result != 1902998904)
  {
    v11 = 1903522657;
    goto LABEL_84;
  }

LABEL_85:
  result = FPSupport_IsRunningInAppleVirtualMachine();
  if (result)
  {
    v8 = 88;
  }

  else
  {
    v8 = 92;
  }

  if (!result)
  {
    v7 |= 4u;
  }

LABEL_90:
  *a2 = v7 | 0x40;
  *a3 = v8;
  return result;
}

CFArrayRef fp_visualContextArrayIfVideoOutputAllowed(CFArrayRef theArray, uint64_t a2)
{
  v2 = theArray;
  if (theArray && CFArrayGetCount(theArray) >= 1 && !fp_doesCPEProtectorAllowsVideoOutput(a2))
  {
    return 0;
  }

  return v2;
}

uint64_t fp_buildImageQueueArray(int a1, int a2, CFArrayRef theArray, CFIndex a4, CFArrayRef *a5, CFArrayRef *a6)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    cf = 0;
    if (Count >= 1)
    {
      Mutable = 0;
      v13 = *MEMORY[0x1E695E480];
      v14 = 1;
      a4 = Count;
      goto LABEL_7;
    }
  }

  else
  {
    cf = 0;
  }

  if (a4 < 1)
  {
    v26 = 0;
    goto LABEL_49;
  }

  v13 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], a4, MEMORY[0x1E695E9C0]);
  v14 = 0;
LABEL_7:
  v31 = CFArrayCreateMutable(v13, a4, MEMORY[0x1E695E9C0]);
  if (v31)
  {
    allocator = v13;
    v15 = 0;
    if (v14)
    {
      p_valuePtr = 0;
    }

    else
    {
      p_valuePtr = &valuePtr;
    }

    do
    {
      valuePtr = 0;
      v17 = *a6;
      if (*a6)
      {
        v17 = CFArrayGetCount(v17);
      }

      if (v15 < v17)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a6, v15);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      }

      v19 = *a5;
      if (*a5)
      {
        v19 = CFArrayGetCount(v19);
      }

      if (v15 < v19)
      {
        v20 = CFArrayGetValueAtIndex(*a5, v15);
        cf = v20;
        if (v20)
        {
          CFRetain(v20);
        }
      }

      FPSupport_EnsureCAImageQueue(&cf, p_valuePtr, a1, a2);
      CFArrayAppendValue(v31, cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if ((v14 & 1) == 0)
      {
        v21 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(Mutable, v21);
        if (v21)
        {
          CFRelease(v21);
        }
      }

      ++v15;
    }

    while (a4 != v15);
    if (*a6)
    {
      if (Mutable)
      {
        v22 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
        for (i = 0; ; ++i)
        {
          v24 = *a6;
          if (*a6)
          {
            v24 = CFArrayGetCount(v24);
          }

          if (i >= v24)
          {
            break;
          }

          v25 = CFArrayGetValueAtIndex(*a6, i);
          v34.length = CFArrayGetCount(Mutable);
          v34.location = 0;
          if (!CFArrayContainsValue(Mutable, v34, v25))
          {
            CFArrayAppendValue(v22, v25);
          }
        }
      }

      else
      {
        v22 = CFRetain(*a6);
      }

      FPSupport_DeleteCASlotsInArray(v22);
    }

    else
    {
      v22 = 0;
    }

    v27 = *a5;
    *a5 = v31;
    CFRetain(v31);
    if (v27)
    {
      CFRelease(v27);
    }

    v28 = *a6;
    *a6 = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    CFRelease(v31);
    v26 = 0;
    if (Mutable)
    {
      goto LABEL_48;
    }
  }

  else
  {
    fp_buildImageQueueArray_cold_1(&valuePtr);
    v26 = valuePtr;
    if (Mutable)
    {
LABEL_48:
      CFRelease(Mutable);
    }
  }

LABEL_49:
  if (cf)
  {
    CFRelease(cf);
  }

  return v26;
}

uint64_t fp_imageQueueTableCreatedImageQueueCallback()
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterAddWeakListener();
}

uint64_t fp_imageQueueTableWillReleaseImageQueueCallback()
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

__n128 itemfig_getHighAndLowWaterLevelDurationsForVideoCompositionProcessing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = xmmword_196E72760;
  result.n128_u64[0] = 3;
  v7 = xmmword_196E72778;
  if (*(DerivedStorage + 688))
  {
    result.n128_u64[0] = kFigPlayerFileLowWaterLevelDuration_Minimum;
    v8 = kFigPlayerFileLowWaterLevelDuration_Minimum;
    v7 = kFigPlayerFileLowWaterLevelDuration_Minimum;
  }

  if (a2)
  {
    result = v8;
    *a2 = v8;
    *(a2 + 16) = 0;
  }

  if (a3)
  {
    result = v7;
    *a3 = v7;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t itemfig_copyCompositionInstructionAtTime(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 680);
  if (!v6)
  {
    FigSimpleMutexUnlock();
    goto LABEL_12;
  }

  v7 = CFRetain(v6);
  FigSimpleMutexUnlock();
  if (!v7)
  {
LABEL_12:
    *a3 = 0;
    return 0;
  }

  Count = CFArrayGetCount(v7);
  if (Count < 1)
  {
    goto LABEL_15;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
    *&v16.value = *a2;
    v16.epoch = *(a2 + 16);
    Value = CFDictionaryGetValue(ValueAtIndex, @"StartTime");
    memset(&v20, 0, sizeof(v20));
    CMTimeMakeFromDictionary(&v20, Value);
    v13 = CFDictionaryGetValue(ValueAtIndex, @"EndTime");
    memset(&v19, 0, sizeof(v19));
    CMTimeMakeFromDictionary(&v19, v13);
    if (v9 == 1)
    {
      time1 = v19;
      time2 = v16;
      if (!CMTimeCompare(&time1, &time2))
      {
        break;
      }
    }

    time1 = v16;
    time2 = v20;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      time1 = v19;
      time2 = v16;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        break;
      }
    }

    ++v10;
    if (!--v9)
    {
      goto LABEL_15;
    }
  }

  if (ValueAtIndex)
  {
    v14 = CFRetain(ValueAtIndex);
  }

  else
  {
LABEL_15:
    v14 = 0;
  }

  *a3 = v14;
  CFRelease(v7);
  return 0;
}

uint64_t fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 1.0 || a3 < 1.0)
  {
    fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_4(&v39);
    return v39;
  }

  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*&a2);
  if (!DictionaryRepresentation)
  {
    fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_3(&v39);
    return v39;
  }

  v11 = DictionaryRepresentation;
  FigBaseObject = FigRenderPipelineGetFigBaseObject(a1);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v13)
  {
    v13(FigBaseObject, @"ScreenSize", v11);
  }

  if (!a5)
  {
    CFRelease(v11);
    return 0;
  }

  v37 = 1.0;
  v38 = 1.0;
  Dimensions = itemfig_GetDimensions(a5, &v38, &v37);
  if (Dimensions)
  {
    v14 = Dimensions;
LABEL_34:
    v36 = v11;
    goto LABEL_28;
  }

  v17 = v37;
  v18 = v38;
  v19 = v38;
  v20 = v37;
  v21 = FigCFEqual();
  v40.width = v19;
  v40.height = v20;
  v22 = CGSizeCreateDictionaryRepresentation(v40);
  if (!v22)
  {
    fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_2(&v39);
    v14 = v39;
    goto LABEL_34;
  }

  v23 = v22;
  v24 = a2 / v19;
  v25 = a3 / v20;
  if (v24 >= v25)
  {
    v26 = a3 / v20;
  }

  else
  {
    v26 = a2 / v19;
  }

  if (v24 <= v25)
  {
    v24 = a3 / v20;
  }

  if (!v21)
  {
    v24 = v26;
  }

  v27 = (v18 * v24);
  v28 = (a2 - v27) * 0.5;
  v29 = (v17 * v24);
  v30 = (a3 - v29) * 0.5;
  v31 = FigRenderPipelineGetFigBaseObject(a1);
  v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v32)
  {
    v32(v31, @"OriginalVideoSize", v23);
  }

  v41.origin.x = v28;
  v41.origin.y = v30;
  v41.size.width = v27;
  v41.size.height = v29;
  v33 = CGRectCreateDictionaryRepresentation(v41);
  if (v33)
  {
    v34 = FigRenderPipelineGetFigBaseObject(a1);
    v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v35)
    {
      v35(v34, @"VideoDisplayRect", v33);
    }

    v14 = 0;
  }

  else
  {
    fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_1(&v39);
    v14 = v39;
  }

  CFRelease(v11);
  CFRelease(v23);
  if (v33)
  {
    v36 = v33;
LABEL_28:
    CFRelease(v36);
  }

  return v14;
}

uint64_t itemfig_prepareClosedCaptionRenderPipeline(uint64_t a1, const opaqueCMFormatDescription *a2)
{
  cf = 0;
  ClosedCaptionChannelStringFromFormatDescription = FigClosedCaptionCreateClosedCaptionChannelStringFromFormatDescription(*MEMORY[0x1E695E480], a2, &cf);
  v4 = cf;
  if (ClosedCaptionChannelStringFromFormatDescription)
  {
    v5 = 1;
  }

  else
  {
    v5 = cf == 0;
  }

  if (!v5)
  {
    FigBaseObject = FigRenderPipelineGetFigBaseObject(a1);
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(FigBaseObject, @"CCRPP_ClosedCaptionType", v4);
    }

    v4 = cf;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return ClosedCaptionChannelStringFromFormatDescription;
}

void playerfig_postSubtitleNotificationIfEnabled(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, const __CFDictionary *a6, uint64_t a7, int a8, int a9, uint64_t a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a8)
  {
    cf = 0;
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v19)
    {
      v19(a10, 0, &cf);
      if (cf)
      {
        v20 = CMBaseObjectGetDerivedStorage();
        if (!*(v20 + 1061))
        {
          *(v20 + 1061) = 1;
          playerfig_updateCaptionOrSubtitleHintOnVideoPipeline(a10, cf);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  if (!a6 || *(DerivedStorage + 720) | a8)
  {
    cf = 0;
    FigSubtitleSampleCreatePropertyList(a6, a8, a9, &cf, a1, a2, a3, a4);
    if (cf)
    {
      FigSimpleMutexLock();
      v21 = *(DerivedStorage + 728);
      v22 = cf;
      *(DerivedStorage + 728) = cf;
      if (v22)
      {
        CFRetain(v22);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      FigSimpleMutexUnlock();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CFRelease(cf);
    }
  }
}

void playerfig_postCaptionNotificationIfEnabled(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, const __CFDictionary *a6, uint64_t a7, int a8, int a9, uint64_t a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a8)
  {
    cf = 0;
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v19)
    {
      v19(a10, 0, &cf);
      if (cf)
      {
        v20 = CMBaseObjectGetDerivedStorage();
        if (!*(v20 + 1061))
        {
          *(v20 + 1061) = 1;
          playerfig_updateCaptionOrSubtitleHintOnVideoPipeline(a10, cf);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  if (!a6 || *(DerivedStorage + 720) | a8)
  {
    cf = 0;
    FigSubtitleSampleCreatePropertyList(a6, a8, a9, &cf, a1, a2, a3, a4);
    if (cf)
    {
      FigSimpleMutexLock();
      v21 = *(DerivedStorage + 728);
      v22 = cf;
      *(DerivedStorage + 728) = cf;
      if (v22)
      {
        CFRetain(v22);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      FigSimpleMutexUnlock();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CFRelease(cf);
    }
  }
}

void fp_interrogateRenderPipeline(uint64_t a1, _DWORD *a2)
{
  v12 = 0;
  v13 = 0;
  v4 = *MEMORY[0x1E695E480];
  FigBaseObject = FigRenderPipelineGetFigBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(FigBaseObject, @"PrefersConsumptionDrivenReads", v4, &v13);
    v7 = v13;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E695E4D0];
  if (v7 == *MEMORY[0x1E695E4D0])
  {
    *a2 |= 1u;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v9 = FigRenderPipelineGetFigBaseObject(a1);
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(v9, @"VetoFigReadCacheUsage", v4, &v12);
    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  if (v11 == v8)
  {
    *a2 |= 2u;
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t playerfig_setReadCacheEnabled()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 128);
  if (!result)
  {
    if (dword_1EAF16A10 < 3)
    {
      return result;
    }

    goto LABEL_9;
  }

  CMByteStreamGetCMBaseObject();
  FigCRABSGetClassID();
  result = CMBaseObjectIsMemberOfClass();
  if (result)
  {
    if (dword_1EAF16A10 < 3)
    {
      return result;
    }

LABEL_9:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 136) == 1)
  {
    if (dword_1EAF16A10 < 3)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (dword_1EAF16A10 >= 3)
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {
    result = v7(CMBaseObject, 0x1F0B330B8, *MEMORY[0x1E695E4D0]);
  }

  *(DerivedStorage + 136) = 1;
  return result;
}

void itemfig_deferredTimeJumped_f(const void *a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (*CMBaseObjectGetDerivedStorage())
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    playerfig_updateStartHostTimeEstimatesOfItemAndFollowingItems(v2, a1);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (!a1)
    {
      return;
    }
  }

  CFRelease(a1);
}

CFDictionaryRef itemfig_createDurationDictionary(double a1)
{
  valuePtr = a1;
  v1 = *MEMORY[0x1E695E480];
  cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  if (!cf)
  {
    return 0;
  }

  v2 = CFDictionaryCreate(v1, &kFigPlayabilityMonitorPayload_Duration, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(cf);
  return v2;
}

void itemfig_DeferredLikelyToKeepUp(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 8);
  v9 = CMBaseObjectGetDerivedStorage();
  valuePtr = 0.0;
  if (!*DerivedStorage)
  {
    if (*(DerivedStorage + 1738) && *(v9 + 48) != 0.0)
    {
      LOBYTE(a5) = 1;
    }

    else if (a5)
    {
      Value = CFDictionaryGetValue(a5, @"FPM_Duration");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
      }

      LOBYTE(a5) = 0;
    }

    if (*(DerivedStorage + 1738))
    {
      if (a5)
      {
LABEL_26:
        playerfig_updatePlaybackStateAndBossRate(v8, 6, 0);
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(a2);
        return;
      }
    }

    else
    {
      *(DerivedStorage + 1738) = 1;
      if (*(DerivedStorage + 1600) > 0.0)
      {
        *(DerivedStorage + 1608) = CFAbsoluteTimeGetCurrent() - *(DerivedStorage + 1600);
      }

      *(DerivedStorage + 1704) = valuePtr;
      if (a5)
      {
        goto LABEL_26;
      }
    }

    if (*(DerivedStorage + 128))
    {
      v11 = valuePtr;
      v30 = 0;
      v31 = 0;
      if (a2)
      {
        itemfig_DeferredLikelyToKeepUp_cold_1(a2, &v30, &v31);
      }

      v12 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (!*(v12 + 2041))
      {
        *(v12 + 2041) = 1;
        Current = CFAbsoluteTimeGetCurrent();
        *(v12 + 1992) = Current;
        v16 = *(v12 + 1984);
        if (v16 == 0.0)
        {
          v17 = 0;
        }

        else
        {
          v17 = ((Current - v16) * 1000.0);
        }

        v18 = *(v12 + 1976);
        v19 = *(v12 + 1968);
        if (v18 == 0.0)
        {
          v20 = 0;
        }

        else
        {
          v20 = ((Current - v18) * 1000.0);
        }

        v21 = *(v12 + 1952);
        if (v21)
        {
          v22 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v22)
          {
            v22(v21, @"playerStats", 0x1F0B3F4B8, (v11 * 1000.0), 0);
          }
        }

        v23 = *(v12 + 1952);
        if (v23)
        {
          v24 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v24)
          {
            v24(v23, @"playerStats", 0x1F0B3F8F8, v17, 0);
          }

          v25 = *(v12 + 1952);
          if (v25)
          {
            v26 = *(*(CMBaseObjectGetVTable() + 16) + 56);
            if (v26)
            {
              v26(v25, @"playerStats", 0x1F0B66518, ((Current - v19) * 1000.0), 0);
            }

            v27 = *(v12 + 1952);
            if (v27)
            {
              v28 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v28)
              {
                v28(v27, @"playerStats", 0x1F0B3F918, v20, 0);
              }
            }
          }
        }

        itemfig_networkActivitySubmitMetricsForInitialStartupIfAvailable();
      }

      v13 = *(v12 + 1952);
      if (v13)
      {
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v14)
        {
          v14(v13, @"playerStats", 305, 0, 0);
        }
      }

      FigSimpleMutexUnlock();
    }

    goto LABEL_26;
  }

  CFRelease(a2);
}

uint64_t FigTrackReaderGetTrackEditCount(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

const void *playerfig_preWirePixelBuffersIfNeeded(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 928);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 928) = 0;
  }

  if (a2)
  {
    *(DerivedStorage + 936) = 0;
  }

  else if (*(DerivedStorage + 936))
  {
    goto LABEL_14;
  }

  if (!FigCFDictionaryGetCGSizeIfPresent())
  {
LABEL_14:
    FigSimpleMutexUnlock();
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = MEMORY[0x1E695E9D8];
  v7 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = CFDictionaryCreateMutable(v5, 0, v6, v7);
  FigCFDictionarySetInt32();
  v10 = CFDictionaryCreate(v5, 0, 0, 0, v6, v7);
  if (!v10)
  {
    playerfig_preWirePixelBuffersIfNeeded_cold_1();
    goto LABEL_24;
  }

  CFDictionarySetValue(v9, *MEMORY[0x1E69660D8], v10);
  CFRelease(v10);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v11 = CVPixelBufferPoolCreate(v5, Mutable, v9, (DerivedStorage + 928));
  if (v11)
  {
    v10 = v11;
LABEL_24:
    FigSimpleMutexUnlock();
    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    CFRelease(v9);
    goto LABEL_19;
  }

  v12 = CFRetain(*(DerivedStorage + 928));
  FigSimpleMutexUnlock();
  if (v12)
  {
    v13 = CVPixelBufferPoolPreAllocate();
    if (v13)
    {
      v10 = v13;
    }

    else
    {
      v10 = CVPixelBufferPoolPrefetchPages();
      if (!v10 && dword_1EAF16A10)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v10 = 0;
      }
    }

    CFRelease(v12);
    if (!v9)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v10 = 0;
  if (v9)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v10;
}

void playerfig_deferredValeriaEnabled()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (RaEiDSv6c())
  {
    *(DerivedStorage + 898) = 1;
    if (CFArrayGetCount(*(DerivedStorage + 528)) >= 1)
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
      v1 = CMBaseObjectGetDerivedStorage();
      if (!*v1)
      {
        if (v1[2064])
        {
          playerfig_deferredValeriaEnabled_cold_1();
        }
      }
    }
  }
}

uint64_t playerfig_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage || !a4)
  {
    goto LABEL_2;
  }

  v9 = DerivedStorage;
  if (CFEqual(a2, @"PerformanceDictionary"))
  {
    v47 = 0;
    FigSimpleMutexLock();
    v10 = *(v9 + 67);
    if (v10)
    {
      v11 = itemfig_gatherItemPerformanceData(v10, 0, &v47);
    }

    else
    {
      v11 = 0;
    }

    FigSimpleMutexUnlock();
    *a4 = v47;
    return v11;
  }

  if (CFEqual(a2, @"GatherPerformanceHistoryArray"))
  {
    v12 = MEMORY[0x1E695E4D0];
    v13 = v9[852];
LABEL_12:
    v14 = MEMORY[0x1E695E4C0];
    goto LABEL_13;
  }

  if (CFEqual(a2, @"PerformanceHistoryArray"))
  {
    if (v9[852])
    {
      v16 = *(v9 + 107);
      if (v16)
      {
        Copy = CFArrayCreateCopy(a3, v16);
        goto LABEL_17;
      }

LABEL_118:
      v11 = 0;
      *a4 = 0;
      return v11;
    }

    goto LABEL_2;
  }

  if (CFEqual(a2, @"FigAudioSession"))
  {
    FigSimpleMutexLock();
    v17 = *(v9 + 59);
    if (v17)
    {
      v17 = CFRetain(v17);
    }

    *a4 = v17;
    goto LABEL_29;
  }

  if (CFEqual(a2, @"IsValid"))
  {
    goto LABEL_33;
  }

  if (CFEqual(a2, @"LastSentSubtitleSample"))
  {
    FigSimpleMutexLock();
    v18 = *(v9 + 91);
    if (v18)
    {
      v18 = CFRetain(v18);
    }

    *a4 = v18;
    goto LABEL_29;
  }

  if (CFEqual(a2, @"PlayerVolume"))
  {
    v19 = *MEMORY[0x1E695E480];
    v20 = (v9 + 804);
    v21 = kCFNumberFloatType;
LABEL_40:
    Copy = CFNumberCreate(v19, v21, v20);
    goto LABEL_17;
  }

  if (CFEqual(a2, @"PlayerMuted"))
  {
    v12 = MEMORY[0x1E695E4D0];
    v13 = v9[814];
    goto LABEL_12;
  }

  if (CFEqual(a2, @"EQPreset"))
  {
    v46 = *(CMBaseObjectGetDerivedStorage() + 80);
    v19 = *MEMORY[0x1E695E480];
    v20 = &v46;
    v21 = kCFNumberIntType;
    goto LABEL_40;
  }

  if (CFEqual(a2, @"NetworkCacheURL"))
  {
    Copy = *(v9 + 25);
    if (Copy)
    {
      goto LABEL_16;
    }

    return 4294954513;
  }

  if (CFEqual(a2, @"DisplayingClosedCaptions"))
  {
    v22 = MEMORY[0x1E695E4D0];
    v23 = v9[306];
    goto LABEL_50;
  }

  if (CFEqual(a2, @"DisplayClosedCaptions"))
  {
    v12 = MEMORY[0x1E695E4D0];
    v13 = v9[305];
    goto LABEL_12;
  }

  if (CFEqual(a2, @"RequiredNumberOfCAContextsForClosedCaptionLayers"))
  {
    v19 = *MEMORY[0x1E695E480];
    v20 = (v9 + 328);
    v21 = kCFNumberSInt32Type;
    goto LABEL_40;
  }

  if (CFEqual(a2, @"ClosedCaptionCAContextIDArray"))
  {
    v24 = *(v9 + 42);
    if (v24)
    {
      Count = CFArrayGetCount(v24);
      if (Count >= 1)
      {
        v26 = Count;
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        v28 = objc_autoreleasePoolPush();
        for (i = 0; i != v26; ++i)
        {
          [CFArrayGetValueAtIndex(*(v9 + 42) i)];
          FigCFArrayAppendInt32();
        }

        objc_autoreleasePoolPop(v28);
LABEL_64:
        v11 = 0;
        *a4 = Mutable;
        return v11;
      }
    }

    goto LABEL_2;
  }

  if (CFEqual(a2, @"ActionAtEnd"))
  {
    v11 = 0;
    v30 = *(v9 + 204);
    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v12 = &kFigPlayerAction_None;
      }

      else
      {
        if (v30 != 3)
        {
          return v11;
        }

        v12 = &kFigPlayerAction_StopAtEndOfQueue;
      }
    }

    else if (v30)
    {
      if (v30 != 1)
      {
        return v11;
      }

      v12 = &kFigPlayerAction_Stop;
    }

    else
    {
      v12 = &kFigPlayerAction_Advance;
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"ApplyVideoTrackMatrix"))
  {
    v12 = MEMORY[0x1E695E4D0];
    v13 = v9[823];
    goto LABEL_12;
  }

  if (CFEqual(a2, @"VideoLayerDestinationIsTVOut"))
  {
    v12 = MEMORY[0x1E695E4C0];
    v13 = v9[240];
    v14 = MEMORY[0x1E695E4D0];
LABEL_13:
    if (!v13)
    {
      v12 = v14;
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"PreventDisplaySleepDuringVideoPlayback"))
  {
    v12 = MEMORY[0x1E695E4D0];
    v13 = v9[240];
    goto LABEL_12;
  }

  if (!CFEqual(a2, @"CurrentVideoFrameRate"))
  {
    if (CFEqual(a2, @"AudioDeviceUID"))
    {
      v34 = *(v9 + 89);
      *a4 = v34;
      if (v34)
      {
        CFRetain(v34);
      }

      return 0;
    }

    if (CFEqual(a2, @"EnableHardwareAcceleratedVideoDecoder"))
    {
      v12 = MEMORY[0x1E695E4D0];
      v35 = MEMORY[0x1E695E4C0];
      v36 = *(v9 + 206) == 1;
      goto LABEL_92;
    }

    if (CFEqual(a2, @"PreferredVideoDecoderGPURegistryID"))
    {
      Copy = *(v9 + 104);
      if (!Copy)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"DisplayList"))
    {
      Copy = *(v9 + 111);
      if (!Copy)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"ExternalProtectionStatus"))
    {
      FigSimpleMutexLock();
      v37 = itemfig_copyExternalProtectionStatus(*(v9 + 67), a3, a4);
      FigSimpleMutexUnlock();
      return v37;
    }

    if (CFEqual(a2, @"DecodeMultipleAudioTracks"))
    {
      v12 = MEMORY[0x1E695E4D0];
      v13 = v9[128];
      goto LABEL_12;
    }

    if (CFEqual(a2, @"DecodeMultipleVideoTracks"))
    {
      v12 = MEMORY[0x1E695E4D0];
      v13 = v9[129];
      goto LABEL_12;
    }

    if (CFEqual(a2, @"STSLabel"))
    {
      FigSimpleMutexLock();
      v38 = *(v9 + 2);
      if (v38)
      {
        v38 = CFRetain(v38);
      }

      *a4 = v38;
      goto LABEL_29;
    }

    if (CFEqual(a2, @"MinRateForAudioPlayback"))
    {
      if (!v9[841])
      {
        goto LABEL_118;
      }

      v19 = *MEMORY[0x1E695E480];
      v20 = (v9 + 844);
      goto LABEL_117;
    }

    if (CFEqual(a2, @"MaxRateForAudioPlayback"))
    {
      if (!v9[842])
      {
        goto LABEL_118;
      }

      v19 = *MEMORY[0x1E695E480];
      v20 = (v9 + 848);
LABEL_117:
      v21 = kCFNumberFloat32Type;
      goto LABEL_40;
    }

    if (CFEqual(a2, @"MasterClock"))
    {
      Copy = *(v9 + 11);
      if (!Copy)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"SendToNero"))
    {
      v39 = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v39)
      {
        Mutable = v39;
        if (v9[130])
        {
          v40 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v40 = MEMORY[0x1E695E4C0];
        }

        CFDictionarySetValue(v39, @"Visuals", *v40);
        FigSimpleMutexLock();
        v41 = *(v9 + 21);
        if (v41)
        {
          v42 = CFRetain(v41);
          FigSimpleMutexUnlock();
          if (v42)
          {
            CFDictionarySetValue(Mutable, @"NeroTransport", v42);
            CFRelease(v42);
          }
        }

        else
        {
          FigSimpleMutexUnlock();
        }

        goto LABEL_64;
      }

LABEL_2:

      return FigSignalErrorAtGM();
    }

    if (CFEqual(a2, @"IsNeroPlaybackActive"))
    {
      v12 = MEMORY[0x1E695E4D0];
      v13 = v9[131];
      goto LABEL_12;
    }

    if (CFEqual(a2, @"ProhibitAMR"))
    {
      v12 = MEMORY[0x1E695E4D0];
      v13 = v9[896];
      goto LABEL_12;
    }

    if (CFEqual(a2, @"PlayQueueIsHungry"))
    {
      v12 = MEMORY[0x1E695E4D0];
      v13 = v9[853];
      goto LABEL_12;
    }

    if (CFEqual(a2, @"MediaSelectionCriteria"))
    {
      FigSimpleMutexLock();
      v43 = *(v9 + 96);
      if (v43)
      {
LABEL_140:
        v43 = CFRetain(v43);
      }
    }

    else
    {
      if (CFEqual(a2, @"AppliesMediaSelectionCriteriaAutomatically"))
      {
        v22 = MEMORY[0x1E695E4D0];
        v23 = v9[800];
LABEL_50:
        if (!v23)
        {
          v22 = MEMORY[0x1E695E4C0];
        }

        Copy = *v22;
        if (!*v22)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      if (CFEqual(a2, @"DefaultMediaSelectionCriteria"))
      {
        Copy = FigAutomaticMediaSelectionCopyDefaultCriteria();
        goto LABEL_17;
      }

      if (!CFEqual(a2, @"LegibleFallbackMediaSelectionCriteria"))
      {
        if (CFEqual(a2, @"AllowsLegibleFallbackMediaSelectionCriteriaForAllAudibleMediaSelections"))
        {
          v12 = MEMORY[0x1E695E4D0];
          v13 = v9[784];
          goto LABEL_12;
        }

        if (CFEqual(a2, @"DestinationPixelBufferAttributes"))
        {
          FigSimpleMutexLock();
          v44 = *(v9 + 63);
          if (v44)
          {
            v44 = CFRetain(v44);
          }

          *a4 = v44;
          goto LABEL_29;
        }

        if (CFEqual(a2, @"AllowPixelBufferPoolSharing"))
        {
          Copy = *(v9 + 113);
          if (Copy)
          {
            goto LABEL_16;
          }

          v12 = MEMORY[0x1E695E4C0];
          goto LABEL_15;
        }

        if (CFEqual(a2, @"OptionsForPreWiringPixelBuffers"))
        {
          FigSimpleMutexLock();
          v45 = *(v9 + 115);
          if (v45)
          {
            v45 = CFRetain(v45);
          }

          *a4 = v45;
          goto LABEL_29;
        }

        if (CFEqual(a2, @"PrepareItemOnDispatchQueue"))
        {
LABEL_33:
          v12 = MEMORY[0x1E695E4D0];
LABEL_15:
          Copy = *v12;
LABEL_16:
          Copy = CFRetain(Copy);
LABEL_17:
          v11 = 0;
          *a4 = Copy;
          return v11;
        }

        if (CFEqual(a2, @"MultichannelAudioStrategy"))
        {
          Copy = *(v9 + 118);
          goto LABEL_16;
        }

        if (!CFEqual(a2, @"PlaybackState"))
        {
          if (CFEqual(a2, @"AutomaticallyWaitsToMinimizeStalling"))
          {
            v12 = MEMORY[0x1E695E4C0];
            v35 = MEMORY[0x1E695E4D0];
            v36 = v9[57] == 0;
LABEL_92:
            if (!v36)
            {
              v12 = v35;
            }

            goto LABEL_15;
          }

          if (CFEqual(a2, @"CaptionPlaybackStrategy"))
          {
            if (v9[822])
            {
              v12 = &kFigPlayerCaptionRenderingStrategy_CoreTextSubtitleRenderer;
            }

            else
            {
              v12 = &kFigPlayerCaptionRenderingStrategy_CaptionDisplayService;
            }

            goto LABEL_15;
          }

          if (CFEqual(a2, @"CaptionPipelineStrategy"))
          {
            if (v9[821])
            {
              v12 = &kFigPlayerCaptionPipelineStrategy_AttributedStrings;
            }

            else
            {
              v12 = &kFigPlayerCaptionPipelineStrategy_FigCaptions;
            }

            goto LABEL_15;
          }

          if (CFEqual(a2, @"RequiresNumVideoSlots"))
          {
            v19 = *MEMORY[0x1E695E480];
            v20 = (v9 + 224);
            v21 = kCFNumberCFIndexType;
            goto LABEL_40;
          }

          if (!CFEqual(a2, @"PreferredMaximumBufferDuration"))
          {
            if (CFEqual(a2, @"ItemsToPrebuffer"))
            {
              Copy = *(v9 + 150);
              if (!Copy)
              {
                goto LABEL_17;
              }

              goto LABEL_16;
            }

            if (CFEqual(a2, @"PlayerRole"))
            {
              Copy = *(v9 + 148);
              if (!Copy)
              {
                goto LABEL_17;
              }

              goto LABEL_16;
            }

            if (CFEqual(a2, @"IgnoreAudioDeviceLatencyInStartupSync"))
            {
              v12 = MEMORY[0x1E695E4D0];
              v13 = v9[1139];
              goto LABEL_12;
            }

            if (!CFEqual(a2, @"Topology"))
            {
              return 4294954512;
            }

            return FPSupport_CreatePlayerTopology(a3, @"File", 0, a4);
          }
        }

        Copy = FigCFNumberCreateSInt32();
        goto LABEL_17;
      }

      FigSimpleMutexLock();
      v43 = *(v9 + 97);
      if (v43)
      {
        goto LABEL_140;
      }
    }

    *a4 = v43;
LABEL_29:
    FigSimpleMutexUnlock();
    return 0;
  }

  v31 = *(v9 + 74);
  if (!v31)
  {
    return 4294954513;
  }

  v32 = *MEMORY[0x1E695E480];
  FigBaseObject = FigRenderPipelineGetFigBaseObject(v31);

  return CMBaseObjectCopyProperty(FigBaseObject, @"CurrentVideoFrameRate", v32, a4);
}

uint64_t playerfig_InvalidateItem(uint64_t a1)
{
  result = FigPlaybackItemGetFigBaseObject(a1);
  if (result)
  {
    v2 = result;
    VTable = CMBaseObjectGetVTable();
    v4 = *(VTable + 8);
    result = VTable + 8;
    v5 = *(v4 + 24);
    if (v5)
    {

      return v5(v2);
    }
  }

  return result;
}

uint64_t playerfig_handleVideoTargetNotification(uint64_t a1, uint64_t a2, const void *a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    if (CFEqual(a3, @"PreferredDataChannelGroupsChanged") || CFEqual(a3, @"DataChannelSettingsChanged"))
    {
      return playerfig_rebuildRenderPipelines_disturbIfInLameDuckGapOrMainVideoStillEnabled(a2, 0, 0);
    }

    else
    {
      result = FigUseVideoReceiverForCALayer();
      if (result)
      {
        result = CFEqual(a3, @"DisplayChanged");
        if (!result)
        {
          return CFEqual(a3, @"IsBeingServicedStatusChanged");
        }
      }
    }
  }

  return result;
}

void playerfig_sendEmptyConfigurationToEachVideoTarget(int a1, CFArrayRef theArray)
{
  cf = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v5 = Count;
      v6 = playerfig_createDataChannelConfigurationAndSetIdentifiers(a1, 0, *MEMORY[0x1E695E480], &cf);
      v7 = cf;
      if (v6)
      {
        v8 = 1;
      }

      else
      {
        v8 = v5 < 1;
      }

      if (!v8)
      {
        v9 = 0;
        v10 = v5 - 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
          v12 = *(*(CMBaseObjectGetVTable() + 16) + 72);
          if (!v12)
          {
            break;
          }
        }

        while (!v12(ValueAtIndex, v7) && v10 != v9++);
      }

      if (v7)
      {

        CFRelease(v7);
      }
    }
  }
}

uint64_t playerfig_externalStartupTaskCompleted(uint64_t a1, uint64_t a2)
{
  result = *(CMBaseObjectGetDerivedStorage() + 528);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {

      return playerfig_updatePlaybackStateAndBossRate(a2, 34, 0);
    }
  }

  return result;
}

uint64_t itemfig_copyExternalProtectionStatus(uint64_t a1, CFAllocatorRef allocator, CFDictionaryRef *a3)
{
  values[20] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    values[0] = 0;
    v6 = *(DerivedStorage + 1200);
    if (v6)
    {
      v7 = DerivedStorage;
      BOOLean = 0;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        result = v8(v6, @"ExternalProtectionRequiredForPlayback", *MEMORY[0x1E695E480], &BOOLean);
        if (result)
        {
          goto LABEL_15;
        }

        if (!CFBooleanGetValue(BOOLean))
        {
          v14 = 0;
LABEL_30:
          if (BOOLean)
          {
            CFRelease(BOOLean);
          }

          goto LABEL_12;
        }

        v18 = 0;
        v10 = *(v7 + 1200);
        v11 = *(CMBaseObjectGetVTable() + 16);
        if (*v11)
        {
          v12 = v11[9];
          if (v12)
          {
            result = v12(v10, &v18);
            if (!result)
            {
              if (dword_1EAF16A10 >= 2)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v16 = v18 == 1 || v18 == 4;
              v17 = &kFigPlayerExternalProtectionStatus_NotProtected;
              if (v16)
              {
                v17 = &kFigPlayerExternalProtectionStatus_Protected;
              }

              values[0] = *v17;
              v14 = CFDictionaryCreate(allocator, &kFigPlayerExternalProtectionStatusKey_Video, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (!v14)
              {
                result = 4294954510;
                goto LABEL_22;
              }

              goto LABEL_30;
            }

LABEL_15:
            v14 = 0;
            goto LABEL_22;
          }
        }
      }

      result = 4294954514;
      goto LABEL_15;
    }
  }

  v14 = 0;
LABEL_12:
  if (v14)
  {
    result = 0;
  }

  else
  {
    v15 = CFDictionaryCreate(allocator, &kFigPlayerExternalProtectionStatusKey_Video, &kFigPlayerExternalProtectionStatus_Protected, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v15)
    {
      result = 0;
    }

    else
    {
      result = 4294954510;
    }

    if (v15)
    {
      v14 = v15;
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_22:
  *a3 = v14;
  return result;
}

uint64_t playerfig_handleSetProperty(const __CFArray *a1, uint64_t a2, const void *a3, void *a4, _BYTE *a5)
{
  v6 = a4;
  v268 = *MEMORY[0x1E69E9840];
  values = a4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a5 = 1;
  if (*DerivedStorage)
  {
LABEL_2:

    return FigSignalErrorAtGM();
  }

  v11 = DerivedStorage;
  if (CFEqual(a3, @"DestinationPixelBufferAttributes"))
  {
    if (v6)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID != CFGetTypeID(v6))
      {
        goto LABEL_2;
      }
    }

    v13 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    updated = FigCFEqual();
    v15 = *(v13 + 504);
    *(v13 + 504) = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    FigSimpleMutexUnlock();
    if (!updated)
    {
      playerfig_rebuildRenderPipelines_disturbIfInLameDuckGapOrMainVideoStillEnabled(a1, 0, 0);
      return updated;
    }

    return 0;
  }

  if (CFEqual(a3, @"ClosedCaptionLayerArray"))
  {
    if (v6)
    {
      v16 = CFArrayGetTypeID();
      if (v16 != CFGetTypeID(v6))
      {
        goto LABEL_2;
      }
    }

    v17 = CMBaseObjectGetDerivedStorage();
    if (!FigCFEqual())
    {
      v18 = *(v17 + 296);
      if (v6)
      {
        v19 = CFRetain(v6);
      }

      else
      {
        v19 = 0;
      }

      *(v17 + 296) = v19;
      FPSupport_updateClosedCaptionLayer(v17 + 304, v19);
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
      if (v18)
      {
        CFRelease(v18);
      }

      [MEMORY[0x1E6979518] commit];
    }

    return 0;
  }

  if (CFEqual(a3, @"ClosedCaptionLayerBoundsUpdate"))
  {
    v20 = CMBaseObjectGetDerivedStorage();
    HIDWORD(v243) = 0;
    v21 = *(MEMORY[0x1E695F058] + 16);
    rect.origin = *MEMORY[0x1E695F058];
    rect.size = v21;
    v241.origin = rect.origin;
    v241.size = v21;
    v22 = *(MEMORY[0x1E6962818] + 16);
    v237 = *MEMORY[0x1E6962818];
    v238 = v22;
    v23 = *(MEMORY[0x1E6962818] + 48);
    v239 = *(MEMORY[0x1E6962818] + 32);
    v240 = v23;
    if (v6 && (v24 = CFDictionaryGetTypeID(), v24 == CFGetTypeID(v6)))
    {
      Value = CFDictionaryGetValue(v6, @"ClosedCaptionLayerBoundsUpdate_LayerBounds");
      if (Value)
      {
        CGRectMakeWithDictionaryRepresentation(Value, &rect);
        v6 = values;
      }

      v26 = CFDictionaryGetValue(v6, @"ClosedCaptionLayerBoundsUpdate_LayerVideoRelativeToViewport");
      v27 = v26 == 0;
      if (v26)
      {
        CGRectMakeWithDictionaryRepresentation(v26, &v241);
      }

      v28 = CFDictionaryGetValue(values, @"ClosedCaptionLayerBoundsUpdate_LayerCaptionsAvoidanceMargins");
      v29 = v28 == 0;
      if (v28)
      {
        FigGeometryMarginsMakeFromDictionary();
      }

      v30 = CFDictionaryGetValue(values, @"ClosedCaptionLayerBoundsUpdate_LayerIndex");
      if (v30)
      {
        CFNumberGetValue(v30, kCFNumberIntType, &v243 + 4);
        updated = 0;
        v31 = HIDWORD(v243);
        if ((HIDWORD(v243) & 0x80000000) != 0)
        {
          return updated;
        }
      }

      else
      {
        updated = 0;
        v31 = 0;
      }
    }

    else
    {
      updated = FigSignalErrorAtGM();
      v31 = 0;
      v27 = 1;
      v29 = 1;
    }

    if (dword_1EAF16A10)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v31 = HIDWORD(v243);
    }

    if (v27)
    {
      v50 = 0;
    }

    else
    {
      v50 = &v241;
    }

    if (v29)
    {
      v51 = 0;
    }

    else
    {
      v51 = &v237;
    }

    FPSupport_updateClosedCaptionLayerBounds(v20 + 304, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, *(v20 + 296), v31, v50, v51);
    return updated;
  }

  if (CFEqual(a3, @"ClosedCaptionLayerSetOptions"))
  {
    v33 = CMBaseObjectGetDerivedStorage();
    LODWORD(v237) = 0;
    if (!v6 || (v34 = CFDictionaryGetTypeID(), v34 != CFGetTypeID(v6)))
    {
      updated = FigSignalErrorAtGM();
      v37 = 0;
      v40 = 0;
      v39 = 0;
      goto LABEL_55;
    }

    v35 = CFDictionaryGetValue(v6, @"ClosedCaptionLayerSetOption_LayerIndex");
    if (v35)
    {
      CFNumberGetValue(v35, kCFNumberIntType, &v237);
    }

    v36 = FigCFDictionaryGetValue();
    if (v36)
    {
      v37 = v36;
      v38 = FigCFDictionaryGetValue();
      if (v38)
      {
        updated = 0;
        v39 = v237;
        if ((v237 & 0x80000000) != 0)
        {
          return updated;
        }

        v40 = v38;
LABEL_55:
        if (dword_1EAF16A10)
        {
          LODWORD(rect.origin.x) = 0;
          LOBYTE(v241.origin.x) = 0;
          v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          x_low = LODWORD(rect.origin.x);
          if (os_log_type_enabled(v41, LOBYTE(v241.origin.x)))
          {
            v43 = x_low;
          }

          else
          {
            v43 = x_low & 0xFFFFFFFE;
          }

          if (v43)
          {
            if (a1)
            {
              v44 = (CMBaseObjectGetDerivedStorage() + 972);
            }

            else
            {
              *&v44 = COERCE_DOUBLE("");
            }

            *v245 = 136316418;
            *&v245[4] = "playerfig_handleSetProperty";
            *&v245[12] = 2048;
            *&v245[14] = a1;
            *&v245[22] = 2082;
            v246 = v44;
            LOWORD(v247) = 1024;
            *(&v247 + 2) = v237;
            HIWORD(v247) = 2112;
            v248 = v37;
            LOWORD(v249) = 2112;
            *(&v249 + 2) = v40;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v39 = v237;
        }

        FPSupport_setClosedCaptionLayerOptions(v33 + 304, *(v33 + 296), v39, v37, v40);
        return updated;
      }

      playerfig_handleSetProperty_cold_1(&keys);
    }

    else
    {
      playerfig_handleSetProperty_cold_2(&keys);
    }

    return LODWORD(keys.width);
  }

  if (CFEqual(a3, @"ClosedCaptionLayerSetSeparated"))
  {
    v45 = CMBaseObjectGetDerivedStorage();
    LODWORD(v237) = 0;
    if (v6 && (v46 = CFDictionaryGetTypeID(), v46 == CFGetTypeID(v6)))
    {
      v47 = CFDictionaryGetValue(v6, @"ClosedCaptionLayerSetSeparated_LayerIndex");
      if (v47)
      {
        CFNumberGetValue(v47, kCFNumberIntType, &v237);
      }

      v48 = FigCFDictionaryGetValue();
      if (v48)
      {
        v49 = CFBooleanGetValue(v48);
      }

      else
      {
        v49 = 0;
      }

      updated = 0;
    }

    else
    {
      updated = FigSignalErrorAtGM();
      v49 = 0;
    }

    v54 = v237;
    if ((v237 & 0x80000000) == 0)
    {
      if (dword_1EAF16A10)
      {
        LODWORD(rect.origin.x) = 0;
        LOBYTE(v241.origin.x) = 0;
        v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v56 = LODWORD(rect.origin.x);
        if (os_log_type_enabled(v55, LOBYTE(v241.origin.x)))
        {
          v57 = v56;
        }

        else
        {
          v57 = v56 & 0xFFFFFFFE;
        }

        if (v57)
        {
          if (a1)
          {
            v58 = (CMBaseObjectGetDerivedStorage() + 972);
          }

          else
          {
            *&v58 = COERCE_DOUBLE("");
          }

          *v245 = 136316162;
          *&v245[4] = "playerfig_handleSetProperty";
          *&v245[12] = 2048;
          *&v245[14] = a1;
          *&v245[22] = 2082;
          v246 = v58;
          LOWORD(v247) = 1024;
          *(&v247 + 2) = v237;
          HIWORD(v247) = 2112;
          v248 = values;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v54 = v237;
      }

      FPSupport_setClosedCaptionLayerSeparated(v45 + 304, *(v45 + 296), v54, v49);
    }

    return updated;
  }

  if (CFEqual(a3, @"VideoLayer"))
  {
    if (!v6)
    {
LABEL_120:

      return playerfig_setClientVideoLayerArray();
    }

    v71 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    updated = playerfig_setClientVideoLayerArray();
    if (!v71)
    {
      return updated;
    }

    goto LABEL_137;
  }

  if (CFEqual(a3, @"VideoLayerArray"))
  {
    if (v6)
    {
      v52 = CFArrayGetTypeID();
      if (v52 != CFGetTypeID(v6))
      {
        goto LABEL_2;
      }
    }

    goto LABEL_120;
  }

  if (CFEqual(a3, @"VideoTargetArray"))
  {
    if (v6)
    {
      v53 = CFGetTypeID(v6);
      if (v53 != CFArrayGetTypeID())
      {
        goto LABEL_2;
      }
    }

    return playerfig_setVideoTargetArray(a1, v6);
  }

  if (CFEqual(a3, @"RequiresNumVideoSlots"))
  {
    if (!FigUseVideoReceiverForCALayer())
    {
      if (!v6)
      {
        goto LABEL_2;
      }

      v59 = CFGetTypeID(v6);
      if (v59 != CFNumberGetTypeID())
      {
        goto LABEL_2;
      }

      keys.width = 0.0;
      CFNumberGetValue(v6, kCFNumberCFIndexType, &keys);
      width = keys.width;
      v61 = *(v11 + 28);
      if (*&keys.width != v61)
      {
        *(v11 + 28) = *&keys.width;
        if (playerfig_doesAnyWorkingOrLameDuckItemHaveVideo())
        {
          if (*&width >= v61 ? playerfig_gracefullyAddImageQueues(a1, 0) : playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems(a1, 0))
          {
            if (*(v11 + 28) <= 0)
            {
              playerfig_removeAllImageQueuesFromAllWorkingOrLameDuckItems();
            }

            else
            {
              playerfig_resetAlreadyPostedFirstVideoFrameEnqueuedNotificationFlagFromAllWorkingOrLameDuckItems();
            }

            playerfig_rebuildRenderPipelines_disturbIfInLameDuckGapOrMainVideoStillEnabled(a1, 0, 0);
          }
        }
      }

      return 0;
    }

    playerfig_handleSetProperty_cold_3(&keys);
    return LODWORD(keys.width);
  }

  if (CFEqual(a3, @"VideoLayerDestinationIsTVOut") || CFEqual(a3, @"PreventDisplaySleepDuringVideoPlayback"))
  {
    if (!v6)
    {
      goto LABEL_2;
    }

    v63 = CFBooleanGetTypeID();
    if (v63 != CFGetTypeID(v6))
    {
      goto LABEL_2;
    }

    v64 = CFEqual(a3, @"PreventDisplaySleepDuringVideoPlayback");
    v65 = CFBooleanGetValue(v6);
    v66 = v65 == 0;
    if (v64)
    {
      v66 = v65;
    }

    if (v11[240] != v66)
    {
      v11[240] = v66;
      v67 = *(v11 + 74);
      if (v67)
      {
        if (v66)
        {
          v68 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v68 = MEMORY[0x1E695E4C0];
        }

        v69 = *v68;
        FigBaseObject = FigRenderPipelineGetFigBaseObject(v67);
        CMBaseObjectSetProperty(FigBaseObject, @"PreventDisplaySleepDuringVideoPlayback", v69);
      }
    }

    return 0;
  }

  if (CFEqual(a3, @"ImageQueueSlotTransitionFinished"))
  {
    playerfig_freeTransitionImageQueueAndSlot();
    return 0;
  }

  if (CFEqual(a3, @"AudioPipelineEarlyDump"))
  {
    if (!v6)
    {
      goto LABEL_2;
    }

    v73 = CFGetTypeID(v6);
    if (v73 != CFNumberGetTypeID())
    {
      goto LABEL_2;
    }

    v74 = v11 + 120;
LABEL_157:
    CFNumberGetValue(v6, kCFNumberIntType, v74);
    return 0;
  }

  if (CFEqual(a3, @"VideoPipelineEarlyDump"))
  {
    if (!v6)
    {
      goto LABEL_2;
    }

    v75 = CFGetTypeID(v6);
    if (v75 != CFNumberGetTypeID())
    {
      goto LABEL_2;
    }

    v74 = v11 + 124;
    goto LABEL_157;
  }

  if (CFEqual(a3, @"NetworkCacheURL") && v6)
  {
    v76 = CFGetTypeID(v6);
    if (v76 != CFURLGetTypeID())
    {
      goto LABEL_2;
    }

    v77 = *(v11 + 25);
    if (v77)
    {
      CFRelease(v77);
    }

    updated = 0;
    *(v11 + 25) = CFRetain(v6);
    return updated;
  }

  if (CFEqual(a3, @"DisallowVideoLayerDisplayCompositing"))
  {
    if (!v6)
    {
      goto LABEL_2;
    }

    v78 = CFGetTypeID(v6);
    if (v78 != CFBooleanGetTypeID())
    {
      goto LABEL_2;
    }

    updated = 0;
    v11[241] = CFBooleanGetValue(v6);
    return updated;
  }

  if (CFEqual(a3, @"AllowGaplessTransitions"))
  {
    if (!v6)
    {
      goto LABEL_2;
    }

    v79 = CFGetTypeID(v6);
    if (v79 != CFBooleanGetTypeID())
    {
      goto LABEL_2;
    }

    updated = 0;
    v11[77] = CFBooleanGetValue(v6);
    return updated;
  }

  if (CFEqual(a3, @"PlayerVolume"))
  {
    if (!v6)
    {
      goto LABEL_2;
    }

    v80 = CFGetTypeID(v6);
    if (v80 != CFNumberGetTypeID())
    {
      goto LABEL_2;
    }

    LODWORD(v237) = 0;
    CFNumberGetValue(v6, kCFNumberFloat32Type, &v237);
    if (*&v237 == *(v11 + 201))
    {
      return 0;
    }

    v81 = *MEMORY[0x1E695E480];
    v82 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &v237);
    *&keys.width = @"AVController_Volume";
    *v245 = v82;
    v83 = CFDictionaryCreate(v81, &keys, v245, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigSimpleMutexLock();
    *(v11 + 201) = v237;
    if (*(v11 + 67))
    {
      if (playerfig_mustDisturbPlaybackWhenSettingAudioPropertyOnCurrentItem(a1, 0))
      {
        playerfig_handleSetProperty_cold_4();
        updated = 0;
LABEL_207:
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        if (v83)
        {
          CFRelease(v83);
        }

        if (!v82)
        {
          return updated;
        }

        goto LABEL_210;
      }

      updated = playerfig_applySoftwareVolume(*(v11 + 201), 0.0, a1, @"SoftwareVolume1", 0);
    }

    else
    {
      updated = 0;
    }

    FigSimpleMutexUnlock();
    goto LABEL_207;
  }

  if (CFEqual(a3, @"PlayerMuted"))
  {
    if (!v6)
    {
      goto LABEL_2;
    }

    v84 = CFGetTypeID(v6);
    if (v84 != CFBooleanGetTypeID())
    {
      goto LABEL_2;
    }

    v85 = CFBooleanGetValue(v6);
    if (v11[814] == v85)
    {
      return 0;
    }

    v86 = v85;
    FigSimpleMutexLock();
    if (*(v11 + 67))
    {
      if (playerfig_mustDisturbPlaybackWhenSettingAudioPropertyOnCurrentItem(a1, 1))
      {
        v11[814] = v86;
        FigSimpleMutexUnlock();
        keys = *MEMORY[0x1E6960C70];
        v253 = *(MEMORY[0x1E6960C70] + 16);
        *v245 = keys;
        *&v245[16] = v253;
        playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
        updated = 0;
LABEL_218:
        v71 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigPlayerParameter_CurrentMuted, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        if (!v71)
        {
          return updated;
        }

LABEL_137:
        v72 = v71;
LABEL_138:
        CFRelease(v72);
        return updated;
      }

      updated = itemfig_setMuted(*(v11 + 67), v86);
    }

    else
    {
      updated = 0;
    }

    v11[814] = v86;
    FigSimpleMutexUnlock();
    goto LABEL_218;
  }

  if (CFEqual(a3, @"EQPreset"))
  {
    if (!v6)
    {
      goto LABEL_2;
    }

    v87 = CFGetTypeID(v6);
    if (v87 != CFNumberGetTypeID())
    {
      goto LABEL_2;
    }

    LODWORD(keys.width) = 0;
    CFNumberGetValue(v6, kCFNumberIntType, &keys);
    width_low = LODWORD(keys.width);
    *(CMBaseObjectGetDerivedStorage() + 80) = width_low;
    playerfig_applyEQPreset();
    return 0;
  }

  if (CFEqual(a3, @"SetVideoLayerBoundsAutomatically"))
  {
    if (!v6)
    {
      goto LABEL_2;
    }

    v89 = CFGetTypeID(v6);
    if (v89 != CFBooleanGetTypeID())
    {
      goto LABEL_2;
    }

    updated = 0;
    v11[76] = CFBooleanGetValue(v6);
    return updated;
  }

  if (CFEqual(a3, @"PostClosedCaptionCommands"))
  {
    if (!v6)
    {
      goto LABEL_2;
    }

    v90 = CFGetTypeID(v6);
    if (v90 != CFBooleanGetTypeID())
    {
      goto LABEL_2;
    }

    updated = 0;
    v11[304] = CFBooleanGetValue(v6);
    return updated;
  }

  if (CFEqual(a3, @"DisplayClosedCaptions"))
  {
    if (!v6)
    {
      goto LABEL_2;
    }

    v91 = CFGetTypeID(v6);
    if (v91 != CFBooleanGetTypeID())
    {
      goto LABEL_2;
    }

    v92 = CFBooleanGetValue(v6);
    playerfig_setClosedCaptionsDisplayRequested(a1, v92);
    return 0;
  }

  if (CFEqual(a3, @"RequiredNumberOfCAContextsForClosedCaptionLayers"))
  {
    if (v6)
    {
      v93 = CFGetTypeID(v6);
      if (v93 == CFNumberGetTypeID())
      {
        LODWORD(keys.width) = 0;
        CFNumberGetValue(v6, kCFNumberSInt32Type, &keys);
        if (LODWORD(keys.width) != *(v11 + 82))
        {
          *(v11 + 82) = LODWORD(keys.width);
          FPSupport_updateClosedCaptionLayer((v11 + 304), *(v11 + 37));
        }
      }
    }

    return 0;
  }

  if (CFEqual(a3, @"DisplayNonForcedSubtitles"))
  {
    if (!v6)
    {
      goto LABEL_2;
    }

    v94 = CFGetTypeID(v6);
    if (v94 != CFBooleanGetTypeID())
    {
      goto LABEL_2;
    }

    v11[720] = CFBooleanGetValue(v6);
    playerfig_updateSubtitleDisplayForItem(a1, 0);
    playerfig_updateCaptionOrSubtitleHintOnVideoPipeline(a1, 0);
    return 0;
  }

  if (CFEqual(a3, @"PreferredLanguageList"))
  {
    if (v6)
    {
      v95 = CFDictionaryGetTypeID();
      if (v95 != CFGetTypeID(v6))
      {
        goto LABEL_2;
      }
    }

    playerfig_setPreferredLanguageLists(a1, v6);
    return 0;
  }

  if (CFEqual(a3, @"MediaSelectionCriteria"))
  {
    if (v6)
    {
      v96 = CFGetTypeID(v6);
      if (v96 != CFDictionaryGetTypeID())
      {
        goto LABEL_2;
      }
    }

    FigSimpleMutexLock();
    if (!FigCFEqual())
    {
      v97 = *(v11 + 96);
      if (v97)
      {
        v98 = CFRetain(v97);
        v99 = *(v11 + 96);
      }

      else
      {
        v99 = 0;
        v98 = 0;
      }

      *(v11 + 96) = v6;
      if (!v6)
      {
        goto LABEL_264;
      }

      goto LABEL_263;
    }

    goto LABEL_253;
  }

  if (CFEqual(a3, @"LegibleFallbackMediaSelectionCriteria"))
  {
    if (v6)
    {
      v100 = CFGetTypeID(v6);
      if (v100 != CFDictionaryGetTypeID())
      {
        goto LABEL_2;
      }
    }

    FigSimpleMutexLock();
    if (!FigCFEqual())
    {
      v103 = *(v11 + 97);
      if (v103)
      {
        v98 = CFRetain(v103);
        v99 = *(v11 + 97);
      }

      else
      {
        v99 = 0;
        v98 = 0;
      }

      *(v11 + 97) = v6;
      if (!v6)
      {
        goto LABEL_264;
      }

LABEL_263:
      CFRetain(v6);
LABEL_264:
      if (v99)
      {
        CFRelease(v99);
      }

      FigSimpleMutexUnlock();
      if (v98)
      {
        CFRelease(v98);
      }

      goto LABEL_268;
    }

LABEL_253:
    FigSimpleMutexUnlock();
    return 0;
  }

  if (CFEqual(a3, @"AllowsLegibleFallbackMediaSelectionCriteriaForAllAudibleMediaSelections"))
  {
    if (!v6)
    {
      goto LABEL_2;
    }

    v101 = CFBooleanGetTypeID();
    if (v101 != CFGetTypeID(v6))
    {
      goto LABEL_2;
    }

    v102 = v11[784] != 0;
    v11[784] = CFBooleanGetValue(v6);
    if (v11[800] == v102)
    {
      return 0;
    }

    goto LABEL_268;
  }

  if (CFEqual(a3, @"AppliesMediaSelectionCriteriaAutomatically"))
  {
    if (!v6)
    {
      goto LABEL_2;
    }

    v104 = CFBooleanGetTypeID();
    if (v104 != CFGetTypeID(v6))
    {
      goto LABEL_2;
    }

    v105 = v11[800];
    v106 = CFBooleanGetValue(v6);
    updated = 0;
    v11[800] = v106;
    if (v106 && !v105)
    {
      goto LABEL_268;
    }

    return updated;
  }

  if (CFEqual(a3, @"ActionAtEnd"))
  {
    if (v6)
    {
      v117 = CFGetTypeID(v6);
      if (v117 == CFStringGetTypeID())
      {
        ActionAtEndForString = FigPlaybackGetActionAtEndForString(v6);
        playerfig_setActionAtEnd(a1, ActionAtEndForString);
        return 0;
      }
    }

    playerfig_handleSetProperty_cold_5(&keys);
    return LODWORD(keys.width);
  }

  if (CFEqual(a3, @"ApplyVideoTrackMatrix"))
  {
    if (!v6)
    {
      goto LABEL_2;
    }

    v107 = CFGetTypeID(v6);
    if (v107 != CFBooleanGetTypeID())
    {
      goto LABEL_2;
    }

    v108 = CFBooleanGetValue(v6);
    if (v108 != v11[823])
    {
      v11[823] = v108;
      if (!FigUseVideoReceiverForCALayer())
      {
        FigSimpleMutexLock();
        playerfig_updateVideoLayerSize(a1, 0);
        FigSimpleMutexUnlock();
      }

      v109 = *(v11 + 67);
      if (v109)
      {
        itemfig_updateRotationOnVideoRenderPipeline(v109, 0);
        v115 = *(v11 + 67);
        if (v115)
        {
          playerfig_scheduleVideoTargetImageQueueConfigurationTransitionForItem(a1, v115, MEMORY[0x1E6960C70], v110, v111, v112, v113, v114, v233, v234, v235, v236, v237, *(&v237 + 1), v238, *(&v238 + 1), v239, SDWORD2(v239), SHIDWORD(v239), v240, *(&v240 + 1), *&v241.origin.x, *&v241.origin.y, *&v241.size.width, *&v241.size.height, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height, v243, values, *v245, *&v245[8], *&v245[16], v246, v247, v248, v249, *(&v249 + 1), v250, v251, *&keys.width, *&keys.height, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268);
        }
      }
    }

    return 0;
  }

  if (CFEqual(a3, @"TimeAccuracy"))
  {
    FigSimpleMutexLock();
    if (CFSetGetCount(*(v11 + 4)) < 1)
    {
      if (CFEqual(v6, @"Exact"))
      {
        updated = 0;
        v11[78] = 1;
        goto LABEL_315;
      }

      if (CFEqual(v6, @"Approximate"))
      {
        updated = 0;
        v11[78] = 0;
        goto LABEL_315;
      }
    }

    updated = FigSignalErrorAtGM();
LABEL_315:
    FigSimpleMutexUnlock();
    return updated;
  }

  if (CFEqual(a3, @"FigAudioSession"))
  {
    if (v6)
    {
      v116 = CFGetTypeID(v6);
      if (v116 != FigAudioSessionGetTypeID())
      {
        goto LABEL_2;
      }
    }

    FigSimpleMutexLock();
    v121 = *(v11 + 59);
    *(v11 + 59) = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    if (v121)
    {
      CFRelease(v121);
    }

    FigSimpleMutexUnlock();
    if (!*(v11 + 73))
    {
      v122 = *(v11 + 83);
      if (v122)
      {
        CFArrayGetCount(v122);
      }
    }

    keys = *MEMORY[0x1E6960C70];
    v253 = *(MEMORY[0x1E6960C70] + 16);
    *v245 = keys;
    *&v245[16] = v253;
LABEL_325:
    playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
    return 0;
  }

  if (CFEqual(a3, @"FigAudioSession2"))
  {
    return 0;
  }

  if (CFEqual(a3, @"ClientName"))
  {
    if (!v6 || (v119 = CFStringGetTypeID(), v119 == CFGetTypeID(v6)))
    {
      v120 = *(v11 + 1);
      if (v120)
      {
        CFRelease(v120);
        *(v11 + 1) = 0;
      }

      if (v6)
      {
        updated = 0;
        *(v11 + 1) = CFRetain(v6);
        return updated;
      }
    }

    return 0;
  }

  if (!CFEqual(a3, @"STSLabel"))
  {
    if (CFEqual(a3, @"AudioDeviceUID"))
    {
      if (v6)
      {
        v125 = CFStringGetTypeID();
        if (v125 != CFGetTypeID(v6))
        {
          return 0;
        }
      }

      if (FigCFEqual())
      {
        return 0;
      }

      v126 = *(v11 + 89);
      *(v11 + 89) = v6;
      if (v6)
      {
        CFRetain(v6);
      }

      if (v126)
      {
        CFRelease(v126);
      }

      keys = *MEMORY[0x1E6960C70];
      v253 = *(MEMORY[0x1E6960C70] + 16);
      *v245 = keys;
      *&v245[16] = v253;
      goto LABEL_633;
    }

    if (CFEqual(a3, @"EnableHardwareAcceleratedVideoDecoder"))
    {
      if (!v6)
      {
        updated = 0;
        *(v11 + 206) = 0;
        return updated;
      }

      v127 = CFGetTypeID(v6);
      if (v127 == CFBooleanGetTypeID())
      {
        updated = 0;
        if (*MEMORY[0x1E695E4D0] == v6)
        {
          v128 = 1;
        }

        else
        {
          v128 = 2;
        }

        *(v11 + 206) = v128;
        return updated;
      }

      return 4294954516;
    }

    if (CFEqual(a3, @"PreferredVideoDecoderGPURegistryID"))
    {
      if (!v6 || (v129 = CFNumberGetTypeID(), v129 == CFGetTypeID(v6)))
      {
        if (FigCFEqual())
        {
          return 0;
        }

        v130 = *(v11 + 104);
        *(v11 + 104) = v6;
        if (v6)
        {
          CFRetain(v6);
        }

        if (v130)
        {
          CFRelease(v130);
        }

        keys = *MEMORY[0x1E6960C70];
        v253 = *(MEMORY[0x1E6960C70] + 16);
        *v245 = keys;
        *&v245[16] = v253;
        goto LABEL_325;
      }

      return 4294954516;
    }

    if (CFEqual(a3, @"GatherPerformanceHistoryArray"))
    {
      if (!v6)
      {
        goto LABEL_2;
      }

      v131 = CFBooleanGetTypeID();
      if (v131 != CFGetTypeID(v6))
      {
        goto LABEL_2;
      }

      v132 = CFBooleanGetValue(v6);
      if (v132 != v11[852])
      {
        v11[852] = v132;
        if (!v132)
        {
          v133 = *(v11 + 107);
          if (v133)
          {
            CFRelease(v133);
            updated = 0;
            *(v11 + 107) = 0;
            return updated;
          }
        }
      }

      return 0;
    }

    if (CFEqual(a3, @"DisplayList"))
    {
      if (v6)
      {
        v134 = CFArrayGetTypeID();
        if (v134 != CFGetTypeID(v6))
        {
          updated = FigSignalErrorAtGM();
          if (updated)
          {
            return updated;
          }

          goto LABEL_387;
        }

        Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v6);
        if (!Copy)
        {
          return 4294954510;
        }

        v136 = Copy;
        v137 = *(v11 + 111);
        *(v11 + 111) = Copy;
        CFRetain(Copy);
      }

      else
      {
        v136 = 0;
        v137 = *(v11 + 111);
        *(v11 + 111) = 0;
      }

      if (v137)
      {
        CFRelease(v137);
      }

      if (v6)
      {
        CFRelease(v136);
      }

LABEL_387:
      FigSimpleMutexLock();
      if (*(v11 + 67) && (v139 = *(CMBaseObjectGetDerivedStorage() + 1200)) != 0)
      {
        updated = CMBaseObjectSetProperty(v139, @"DisplayList", *(v11 + 111));
      }

      else
      {
        updated = 0;
      }

      goto LABEL_315;
    }

    if (CFEqual(a3, @"DecodeMultipleAudioTracks"))
    {
      if (!v6)
      {
        goto LABEL_2;
      }

      v138 = CFBooleanGetTypeID();
      if (v138 != CFGetTypeID(v6))
      {
        goto LABEL_2;
      }

      v11[128] = CFBooleanGetValue(v6);
      keys = *MEMORY[0x1E6960C70];
      v253 = *(MEMORY[0x1E6960C70] + 16);
      *v245 = keys;
      *&v245[16] = v253;
      goto LABEL_325;
    }

    if (CFEqual(a3, @"DecodeMultipleVideoTracks"))
    {
      if (!v6)
      {
        goto LABEL_2;
      }

      v140 = CFBooleanGetTypeID();
      if (v140 != CFGetTypeID(v6))
      {
        goto LABEL_2;
      }

      v11[129] = CFBooleanGetValue(v6);
      keys = *MEMORY[0x1E6960C70];
      v253 = *(MEMORY[0x1E6960C70] + 16);
      *v245 = keys;
      *&v245[16] = v253;
      goto LABEL_325;
    }

    if (CFEqual(a3, @"ClientSuspended"))
    {
      if (!v6)
      {
        goto LABEL_2;
      }

      v141 = CFBooleanGetTypeID();
      if (v141 != CFGetTypeID(v6))
      {
        goto LABEL_2;
      }

      v142 = CFBooleanGetValue(v6);
      FigSimpleMutexLock();
      v143 = CMBaseObjectGetDerivedStorage();
      if (v142 != v11[65])
      {
        v11[65] = v142;
        if (dword_1EAF16A10)
        {
          LODWORD(v237) = 0;
          LOBYTE(rect.origin.x) = 0;
          v144 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v150 = *(v11 + 15);
        if (v142)
        {
          v151 = 0;
          updated = 0;
          if (v150 != 1)
          {
            goto LABEL_480;
          }

          goto LABEL_451;
        }

        if (!v150 && v11[64])
        {
          v151 = 1;
LABEL_451:
          updated = playerfig_updatePlayerActiveState(a1, v151);
LABEL_480:
          if (v143)
          {
            if (*(v143 + 128))
            {
              CMByteStreamGetCMBaseObject();
              FigCRABSGetClassID();
              if (CMBaseObjectIsMemberOfClass())
              {
                playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer();
              }
            }
          }

          goto LABEL_315;
        }
      }

      updated = 0;
      goto LABEL_480;
    }

    if (CFEqual(a3, @"MinRateForAudioPlayback"))
    {
      if (v6)
      {
        v145 = CFNumberGetTypeID();
        if (v145 != CFGetTypeID(v6))
        {
          goto LABEL_2;
        }

        LODWORD(v237) = 0;
        CFNumberGetValue(v6, kCFNumberFloat32Type, &v237);
        if (v11[841])
        {
          v146 = v237;
          if (*&v237 == *(v11 + 211))
          {
            return 0;
          }

          if (*(v11 + 12) != 0.0 && dword_1EAF16A10 >= 2)
          {
            LODWORD(rect.origin.x) = 0;
            LOBYTE(v241.origin.x) = 0;
            v147 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v148 = LODWORD(rect.origin.x);
            if (os_log_type_enabled(v147, LOBYTE(v241.origin.x)))
            {
              v149 = v148;
            }

            else
            {
              v149 = v148 & 0xFFFFFFFE;
            }

            if (v149)
            {
              v160 = *(v11 + 211);
              *v245 = 136315650;
              *&v245[4] = "playerfig_handleSetProperty";
              *&v245[12] = 2048;
              *&v245[14] = v160;
              *&v245[22] = 2048;
              *&v246 = *&v237;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v146 = v237;
          }

          v11[841] = 1;
        }

        else
        {
          if (*(v11 + 12) != 0.0 && dword_1EAF16A10 >= 2)
          {
            LODWORD(rect.origin.x) = 0;
            LOBYTE(v241.origin.x) = 0;
            v157 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v158 = LODWORD(rect.origin.x);
            if (os_log_type_enabled(v157, LOBYTE(v241.origin.x)))
            {
              v159 = v158;
            }

            else
            {
              v159 = v158 & 0xFFFFFFFE;
            }

            if (v159)
            {
              *v245 = 136315394;
              *&v245[4] = "playerfig_handleSetProperty";
              *&v245[12] = 2048;
              *&v245[14] = *&v237;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v11[841] = 1;
          v146 = v237;
        }

        *(v11 + 211) = v146;
      }

      else
      {
        if (v11[841] != 1)
        {
          return 0;
        }

        if (*(v11 + 12) != 0.0 && dword_1EAF16A10 >= 2)
        {
          playerfig_handleSetProperty_cold_6();
        }

        v11[841] = 0;
      }

      playerfig_handleSetProperty_cold_7();
      return 0;
    }

    if (CFEqual(a3, @"MaxRateForAudioPlayback"))
    {
      if (v6)
      {
        v152 = CFNumberGetTypeID();
        if (v152 != CFGetTypeID(v6))
        {
          goto LABEL_2;
        }

        LODWORD(v237) = 0;
        CFNumberGetValue(v6, kCFNumberFloat32Type, &v237);
        if (v11[842])
        {
          v153 = v237;
          if (*(v11 + 212) == *&v237)
          {
            return 0;
          }

          if (*(v11 + 12) != 0.0 && dword_1EAF16A10 >= 2)
          {
            LODWORD(rect.origin.x) = 0;
            LOBYTE(v241.origin.x) = 0;
            v154 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v155 = LODWORD(rect.origin.x);
            if (os_log_type_enabled(v154, LOBYTE(v241.origin.x)))
            {
              v156 = v155;
            }

            else
            {
              v156 = v155 & 0xFFFFFFFE;
            }

            if (v156)
            {
              v165 = *(v11 + 212);
              *v245 = 136315650;
              *&v245[4] = "playerfig_handleSetProperty";
              *&v245[12] = 2048;
              *&v245[14] = v165;
              *&v245[22] = 2048;
              *&v246 = *&v237;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v153 = v237;
          }

          v11[842] = 1;
        }

        else
        {
          if (*(v11 + 12) != 0.0 && dword_1EAF16A10 >= 2)
          {
            LODWORD(rect.origin.x) = 0;
            LOBYTE(v241.origin.x) = 0;
            v162 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v163 = LODWORD(rect.origin.x);
            if (os_log_type_enabled(v162, LOBYTE(v241.origin.x)))
            {
              v164 = v163;
            }

            else
            {
              v164 = v163 & 0xFFFFFFFE;
            }

            if (v164)
            {
              *v245 = 136315394;
              *&v245[4] = "playerfig_handleSetProperty";
              *&v245[12] = 2048;
              *&v245[14] = *&v237;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v11[842] = 1;
          v153 = v237;
        }

        *(v11 + 212) = v153;
      }

      else
      {
        if (v11[842] != 1)
        {
          return 0;
        }

        if (*(v11 + 12) != 0.0 && dword_1EAF16A10 >= 2)
        {
          playerfig_handleSetProperty_cold_8();
        }

        v11[842] = 0;
      }

      playerfig_handleSetProperty_cold_9();
      return 0;
    }

    if (!CFEqual(a3, @"MasterClock"))
    {
      if (CFEqual(a3, @"SendToNero"))
      {
        if (!v6)
        {
          goto LABEL_2;
        }

        v166 = CFDictionaryGetTypeID();
        if (v166 != CFGetTypeID(v6))
        {
          goto LABEL_2;
        }

        v167 = CFDictionaryGetValue(v6, @"Visuals");
        if (v167 && (v168 = v167, v169 = v11[130], v169 != CFBooleanGetValue(v167)))
        {
          v175 = CFBooleanGetValue(v168);
          v11[130] = v175;
          v170 = (v11[131] | v175) == 0;
        }

        else
        {
          v170 = 1;
        }

        FigSimpleMutexLock();
        if (v11[130])
        {
          v176 = CFDictionaryGetValue(v6, @"NeroTransport");
          if (v176)
          {
            v177 = *(v11 + 21);
            *(v11 + 21) = v176;
            CFRetain(v176);
            if (v177)
            {
              CFRelease(v177);
            }
          }

          else
          {
            FigSignalErrorAtGM();
          }
        }

        else
        {
          v186 = *(v11 + 21);
          if (v186)
          {
            CFRelease(v186);
            *(v11 + 21) = 0;
          }
        }

        FigSimpleMutexUnlock();
        if (!v170)
        {
          playerfig_handleSetProperty_cold_11();
        }

        return 0;
      }

      if (CFEqual(a3, @"NeroDisplaySize"))
      {
        if (!v6)
        {
          goto LABEL_2;
        }

        v171 = CFDictionaryGetTypeID();
        if (v171 != CFGetTypeID(v6))
        {
          goto LABEL_2;
        }

        keys = *MEMORY[0x1E695F060];
        if (CGSizeMakeWithDictionaryRepresentation(v6, &keys))
        {
          if (keys.width == *(v11 + 17) && keys.height == *(v11 + 18))
          {
            return 0;
          }

          *(v11 + 136) = keys;
          v172 = *(v11 + 67);
          if (!v172 || (!v11[130] || !v11[131]) && !v11[194])
          {
            return 0;
          }

          v173 = *(v11 + 76);
          if (!v173 || (updated = fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(v173, *(v11 + 17), *(v11 + 18), *(v11 + 19), v172), !updated))
          {
            v174 = *(v11 + 75);
            if (v174)
            {
              updated = fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(v174, *(v11 + 17), *(v11 + 18), *(v11 + 19), *(v11 + 67));
            }

            else
            {
              updated = 0;
            }
          }

          v183 = CMBaseObjectGetDerivedStorage();
          if (!*(v183 + 1904))
          {
            return updated;
          }

          v184 = v183;
          DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(v11 + 136));
          if (!DictionaryRepresentation)
          {
            return updated;
          }

          v71 = DictionaryRepresentation;
          FigOutOfBandTrackControllerSetProperty(*(v184 + 1904), @"NeroDisplaySize", DictionaryRepresentation);
          goto LABEL_137;
        }
      }

      else
      {
        if (CFEqual(a3, @"NeroVideoGravity"))
        {
          if (v6)
          {
            v178 = CFStringGetTypeID();
            if (v178 != CFGetTypeID(v6))
            {
              goto LABEL_2;
            }
          }

          if (!FigCFEqual())
          {
            v179 = *(v11 + 19);
            *(v11 + 19) = v6;
            if (v6)
            {
              CFRetain(v6);
            }

            if (v179)
            {
              CFRelease(v179);
            }

            if (*(v11 + 67) && (v11[130] && v11[131] || v11[194]))
            {
              v180 = *(v11 + 74);
              if (v180)
              {
                v181 = *(v11 + 19);
                v182 = FigRenderPipelineGetFigBaseObject(v180);
                updated = CMBaseObjectSetProperty(v182, @"NeroVideoGravity", v181);
              }

              else
              {
                updated = 0;
              }

              v188 = *(v11 + 76);
              if (v188)
              {
                updated = fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(v188, *(v11 + 17), *(v11 + 18), *(v11 + 19), *(v11 + 67));
              }

              if (!updated)
              {
                v189 = *(v11 + 75);
                if (v189)
                {
                  updated = fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(v189, *(v11 + 17), *(v11 + 18), *(v11 + 19), *(v11 + 67));
                }

                else
                {
                  updated = 0;
                }
              }

              v194 = *(CMBaseObjectGetDerivedStorage() + 1904);
              if (v194)
              {
                FigOutOfBandTrackControllerSetProperty(v194, @"NeroVideoGravity", *(v11 + 19));
              }

              return updated;
            }
          }

          return 0;
        }

        if (CFEqual(a3, @"ProhibitAMR"))
        {
          if (!v6)
          {
            goto LABEL_2;
          }

          v187 = CFGetTypeID(v6);
          if (v187 != CFBooleanGetTypeID())
          {
            goto LABEL_2;
          }

          updated = 0;
          v11[896] = CFBooleanGetValue(v6);
          return updated;
        }

        if (CFEqual(a3, @"AllowPixelBufferPoolSharing"))
        {
          if (!v6)
          {
            goto LABEL_2;
          }

          v190 = CFGetTypeID(v6);
          if (v190 != CFBooleanGetTypeID())
          {
            v191 = CFGetTypeID(v6);
            if (v191 != CFNumberGetTypeID())
            {
              goto LABEL_2;
            }
          }

          v192 = *(v11 + 113);
          *(v11 + 113) = v6;
          CFRetain(v6);
          if (v192)
          {
            v193 = v192;
LABEL_732:
            CFRelease(v193);
          }

          return 0;
        }

        if (CFEqual(a3, @"OptionsForPreWiringPixelBuffers"))
        {
          keys = *MEMORY[0x1E695F060];
          if (!v6 || FigCFDictionaryGetCGSizeIfPresent())
          {
            v82 = SecTaskCopyValueForEntitlement(*(v11 + 110), @"com.apple.coremedia.allow-pre-wiring-pixel-buffers", 0);
            if (v82 == *MEMORY[0x1E695E4D0])
            {
              FigSimpleMutexLock();
              v198 = *(v11 + 115);
              v199 = values;
              *(v11 + 115) = values;
              if (v199)
              {
                CFRetain(v199);
              }

              if (v198)
              {
                CFRelease(v198);
              }

              FigSimpleMutexUnlock();
              v195 = playerfig_preWirePixelBuffersIfNeeded(a1, 0);
            }

            else
            {
              v195 = FigSignalErrorAtGM();
            }

            updated = v195;
            if (!v82)
            {
              return updated;
            }

LABEL_210:
            v72 = v82;
            goto LABEL_138;
          }
        }

        else
        {
          if (CFEqual(a3, @"PrepareItemOnDispatchQueue"))
          {
            return 0;
          }

          if (CFEqual(a3, @"AllowOutOfBandTextTrackRendering"))
          {
            if (!v6)
            {
              goto LABEL_2;
            }

            v196 = CFGetTypeID(v6);
            if (v196 != CFBooleanGetTypeID())
            {
              goto LABEL_2;
            }

            v197 = CFBooleanGetValue(v6);
            if (v197 == v11[193])
            {
              return 0;
            }

            v11[193] = v197;
            keys = *MEMORY[0x1E6960C70];
            v253 = *(MEMORY[0x1E6960C70] + 16);
            *v245 = keys;
            *&v245[16] = v253;
            goto LABEL_325;
          }

          if (CFEqual(a3, @"OutOfBandTextRenderingForNeroVideo"))
          {
            if (!v6)
            {
              goto LABEL_2;
            }

            v200 = CFGetTypeID(v6);
            if (v200 != CFBooleanGetTypeID())
            {
              goto LABEL_2;
            }

            updated = 0;
            v11[194] = CFBooleanGetValue(v6);
            return updated;
          }

          if (CFEqual(a3, @"MultichannelAudioStrategy"))
          {
            if (!v6)
            {
              goto LABEL_2;
            }

            v201 = CFStringGetTypeID();
            if (v201 != CFGetTypeID(v6) || !CFEqual(v6, @"MatchMultichannelTrackPreferenceToAudioDevice") && !CFEqual(v6, @"PreferStereo") && !CFEqual(v6, @"PreferExclusivePassthrough") && !CFEqual(v6, @"PreferAC3ViaExclusivePassthrough"))
            {
              goto LABEL_2;
            }

            if (CFEqual(v6, *(v11 + 118)))
            {
              return 0;
            }

            v202 = *(v11 + 118);
            *(v11 + 118) = v6;
            CFRetain(v6);
            if (v202)
            {
              CFRelease(v202);
            }

            v203 = CFEqual(v6, @"PreferExclusivePassthrough");
            if (v203)
            {
              FPSupport_ReleasePassthroughHelper();
            }

            if (CFEqual(v6, @"PreferAC3ViaExclusivePassthrough"))
            {
              FPSupport_ReleasePassthroughHelper();
            }

            else if (!(v11[960] | v203))
            {
              goto LABEL_268;
            }

            playerfig_handleSetProperty_cold_12();
            goto LABEL_268;
          }

          if (CFEqual(a3, @"BufferedAirPlayOutput"))
          {
            if (v6)
            {
              v204 = CFGetTypeID(v6);
              if (v204 != FigBufferedAirPlayOutputGetTypeID())
              {
                goto LABEL_2;
              }
            }

            if (FigCFEqual())
            {
              return 0;
            }

            FigSimpleMutexLock();
            v205 = *(v11 + 22);
            *(v11 + 22) = v6;
            if (v6)
            {
              CFRetain(v6);
            }

            if (v205)
            {
              CFRelease(v205);
            }

            if (!*(v11 + 22))
            {
              v11[192] = 1;
              FigSimpleMutexUnlock();
              itemfig_reportingAgentReportBufferedAirPlayMode(*(v11 + 67));
              if (dword_1EAF16A10)
              {
                v206 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              return 0;
            }

            FigSimpleMutexUnlock();
            itemfig_reportingAgentReportBufferedAirPlayMode(*(v11 + 67));
            keys = *MEMORY[0x1E6960C70];
            v253 = *(MEMORY[0x1E6960C70] + 16);
            *v245 = keys;
            *&v245[16] = v253;
LABEL_633:
            playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
LABEL_268:
            playerfig_applyAutoSelectionCriteriaInternal();
            return 0;
          }

          if (CFEqual(a3, @"AutomaticallyWaitsToMinimizeStalling"))
          {
            if (!v6)
            {
              goto LABEL_2;
            }

            v207 = CFGetTypeID(v6);
            if (v207 != CFBooleanGetTypeID())
            {
              goto LABEL_2;
            }

            v208 = CFBooleanGetValue(v6);
            if (v208 != v11[57])
            {
              v11[57] = v208;
              if (*(v11 + 67))
              {
                playerfig_handleSetProperty_cold_13();
              }

              playerfig_updatePlaybackStateAndBossRate(a1, 9, 0);
            }

            return 0;
          }

          if (CFEqual(a3, @"CaptionPlaybackStrategy"))
          {
            if (!v6)
            {
              goto LABEL_2;
            }

            v209 = CFStringGetTypeID();
            if (v209 != CFGetTypeID(v6))
            {
              goto LABEL_2;
            }

            if (CFEqual(v6, @"CoreTextSubtitleRenderer"))
            {
              updated = 0;
              v11[822] = 1;
            }

            else
            {
              if (!CFEqual(v6, @"CaptionDisplayService"))
              {
                goto LABEL_2;
              }

              updated = 0;
              v11[822] = 0;
            }

            return updated;
          }

          if (CFEqual(a3, @"CaptionPipelineStrategy"))
          {
            if (!v6)
            {
              goto LABEL_2;
            }

            v210 = CFStringGetTypeID();
            if (v210 != CFGetTypeID(v6))
            {
              goto LABEL_2;
            }

            if (CFEqual(v6, @"CFAttributedStrings"))
            {
              updated = 0;
              v11[821] = 1;
            }

            else
            {
              if (!CFEqual(v6, @"FigCaptions"))
              {
                goto LABEL_2;
              }

              updated = 0;
              v11[821] = 0;
            }

            return updated;
          }

          if (CFEqual(a3, @"ResourceConservationLevelWhenPaused"))
          {
            if (v6)
            {
              v211 = CFGetTypeID(v6);
              if (v211 != CFNumberGetTypeID())
              {
                goto LABEL_2;
              }

              LODWORD(keys.width) = 0;
              CFNumberGetValue(v6, kCFNumberSInt32Type, &keys);
              v212 = LODWORD(keys.width);
            }

            else
            {
              v212 = 0;
              LODWORD(keys.width) = 0;
            }

            playerfig_setResourceConservationLevelAndUpdateWhenPaused(a1, v212);
            return 0;
          }

          if (CFEqual(a3, @"AutomaticallyResumesRenderingAfterConfigurationChange"))
          {
            if (!v6)
            {
              goto LABEL_2;
            }

            v213 = CFGetTypeID(v6);
            if (v213 != CFBooleanGetTypeID())
            {
              goto LABEL_2;
            }

            updated = 0;
            v11[58] = *MEMORY[0x1E695E4D0] == v6;
            return updated;
          }

          if (CFEqual(a3, @"AssumeItemsWaitingToPlayWhilePlayerPaused"))
          {
            if (!v6)
            {
              goto LABEL_2;
            }

            v214 = CFGetTypeID(v6);
            if (v214 != CFBooleanGetTypeID())
            {
              goto LABEL_2;
            }

            updated = 0;
            v11[59] = *MEMORY[0x1E695E4D0] == v6;
            return updated;
          }

          if (CFEqual(a3, @"SuppressAudioRendering"))
          {
            if (!v6)
            {
              goto LABEL_2;
            }

            v215 = CFGetTypeID(v6);
            if (v215 != CFBooleanGetTypeID())
            {
              goto LABEL_2;
            }

            v216 = *MEMORY[0x1E695E4D0] == v6;
            if (v11[1137] != v216)
            {
              if (dword_1EAF16A10)
              {
                v217 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v11[1137] = v216;
              playerfig_rebuildRenderPipelines_disturbIfInLameDuckGap(a1);
            }

            return 0;
          }

          if (CFEqual(a3, @"PlayerRole"))
          {
            if (v6)
            {
              v218 = CFGetTypeID(v6);
              if (v218 != CFStringGetTypeID())
              {
                goto LABEL_2;
              }

              v222 = *(v11 + 148);
              *(v11 + 148) = v6;
              CFRetain(v6);
            }

            else
            {
              v222 = *(v11 + 148);
              *(v11 + 148) = 0;
            }

            if (v222)
            {
              CFRelease(v222);
            }

            playerfig_updateResourceUsageOnGlobalResourceArbiter(a1, *(v11 + 67));
            return 0;
          }

          if (CFEqual(a3, @"IgnoreAudioDeviceLatencyInStartupSync"))
          {
            if (!v6)
            {
              goto LABEL_2;
            }

            v219 = CFGetTypeID(v6);
            if (v219 != CFBooleanGetTypeID())
            {
              goto LABEL_2;
            }

            v220 = *MEMORY[0x1E695E4D0] == v6;
            if (v11[1139] == v220)
            {
              return 0;
            }

            if (dword_1EAF16A10)
            {
              LODWORD(v237) = 0;
              LOBYTE(rect.origin.x) = 0;
              v221 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v11[1139] = v220;
            fp_setPropertyOnAllAudioRenderPipelines();
            keys = *MEMORY[0x1E6960C70];
            v253 = *(MEMORY[0x1E6960C70] + 16);
            *v245 = keys;
            *&v245[16] = v253;
            goto LABEL_325;
          }

          if (!CFEqual(a3, @"PreferredMaximumBufferDuration"))
          {
            if (!CFEqual(a3, @"ItemsToPrebuffer"))
            {
              return 4294954512;
            }

            if (!v6 || (v224 = CFGetTypeID(v6), v224 == CFArrayGetTypeID()))
            {
              v225 = 0;
              if (!v6)
              {
                goto LABEL_704;
              }

LABEL_703:
              for (i = CFArrayGetCount(v6); v225 < i; i = 0)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v6, v225);
                if (!ValueAtIndex || (v228 = CFGetTypeID(ValueAtIndex), v228 != FigPlaybackItemGetTypeID()))
                {
                  playerfig_handleSetProperty_cold_16(&keys);
                  return LODWORD(keys.width);
                }

                if (CMBaseObjectGetVTable() != &kFigPlaybackItemFigVTable_0)
                {
                  playerfig_handleSetProperty_cold_15(&keys);
                  return LODWORD(keys.width);
                }

                CMBaseObjectGetDerivedStorage();
                v229 = FigCFWeakReferenceHolderCopyReferencedObject();
                v230 = v229;
                if (v229 != a1)
                {
                  updated = FigSignalErrorAtGM();
                  if (!v230)
                  {
                    return updated;
                  }

                  v72 = v230;
                  goto LABEL_138;
                }

                if (a1)
                {
                  CFRelease(v229);
                }

                ++v225;
                if (v6)
                {
                  goto LABEL_703;
                }

LABEL_704:
                ;
              }

              FigSimpleMutexLock();
              v231 = *(v11 + 150);
              if (v231)
              {
                updated = CFRetain(v231);
                v232 = *(v11 + 150);
              }

              else
              {
                v232 = 0;
                updated = 0;
              }

              *(v11 + 150) = v6;
              if (v6)
              {
                CFRetain(v6);
              }

              if (v232)
              {
                CFRelease(v232);
              }

              playerfig_cancelItemsToPrebuffer(a1, updated, *(v11 + 150));
              playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer();
              FigSimpleMutexUnlock();
              if (updated)
              {
                v193 = updated;
                goto LABEL_732;
              }

              return updated;
            }

            playerfig_handleSetProperty_cold_14(&keys);
            return LODWORD(keys.width);
          }

          if (!v6)
          {
            goto LABEL_2;
          }

          v223 = CFGetTypeID(v6);
          if (v223 != CFNumberGetTypeID())
          {
            goto LABEL_2;
          }

          LODWORD(keys.width) = 0;
          CFNumberGetValue(v6, kCFNumberSInt32Type, &keys);
          if ((LODWORD(keys.width) & 0x80000000) == 0)
          {
            *(v11 + 298) = LODWORD(keys.width);
            playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer();
            return 0;
          }
        }
      }

      return FigSignalErrorAtGM();
    }

    if (v6)
    {
      v161 = CFGetTypeID(v6);
      if (v161 != CMClockGetTypeID())
      {
        goto LABEL_2;
      }

      updated = *(v11 + 11);
      if (updated == v6)
      {
        return 0;
      }

      *(v11 + 11) = v6;
      CFRetain(v6);
      if (!updated)
      {
        goto LABEL_494;
      }
    }

    else
    {
      updated = *(v11 + 11);
      if (!updated)
      {
        return updated;
      }

      *(v11 + 11) = 0;
    }

    CFRelease(updated);
LABEL_494:
    playerfig_handleSetProperty_cold_10();
    return 0;
  }

  if (v6)
  {
    v123 = CFStringGetTypeID();
    if (v123 != CFGetTypeID(v6))
    {
      return 0;
    }
  }

  FigSimpleMutexLock();
  v124 = *(v11 + 2);
  *(v11 + 2) = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  if (v124)
  {
    CFRelease(v124);
  }

  FigSimpleMutexUnlock();

  return fp_setPropertyOnAllAudioRenderPipelines();
}