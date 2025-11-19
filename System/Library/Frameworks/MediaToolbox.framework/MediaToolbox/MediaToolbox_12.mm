uint64_t fpfs_setClientVideoLayerArray(const void *a1, const __CFArray *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 80);
  cf[0] = 0;
  *(DerivedStorage + 456) = 1;
  if (FigCFEqual())
  {
    v7 = 0;
    v8 = 0;
    Mutable = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_3;
  }

  v47 = v6;
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  v16 = *(DerivedStorage + 384);
  if (v16)
  {
    v17 = CFArrayGetCount(v16);
  }

  else
  {
    v17 = 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v19 = FigGetAllocatorForMedia();
    v8 = CFArrayCreateMutable(v19, 0, MEMORY[0x1E695E9C0]);
    if (v8)
    {
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          v22 = *(DerivedStorage + 384);
          if (!v22 || (v84.location = 0, v84.length = v17, v23 = CFArrayContainsValue(v22, v84, ValueAtIndex), v24 = Mutable, !v23))
          {
            v24 = v8;
          }

          CFArrayAppendValue(v24, ValueAtIndex);
        }
      }

      v85.length = CFArrayGetCount(v8);
      v85.location = 0;
      CFArrayAppendArray(Mutable, v8, v85);
      fpfs_ensureTransaction(a1, cf);
      v7 = CFRetain(a1);
      fpfs_disassociatePlayerVideoLayer(a1, 1);
      *v48 = *(DerivedStorage + 392);
      *&v49 = *(DerivedStorage + 384);
      *(DerivedStorage + 392) = 0;
      v25 = CFRetain(Mutable);
      *(DerivedStorage + 384) = v25;
      if (v25 && CFArrayGetCount(v25) >= 1)
      {
        *v46 = v4;
        v33 = FigGetAllocatorForMedia();
        v10 = CFArrayCreateMutable(v33, Count, MEMORY[0x1E695E9C0]);
        if (Count >= 1)
        {
          v34 = Count;
          while (1)
          {
            v35 = [[FigVideoLayer alloc] initWithDeferredTransaction:*(DerivedStorage + 880)];
            if (!v35)
            {
              break;
            }

            v36 = v35;
            if (*(DerivedStorage + 400))
            {
              FBLSupportAppendDeferredTransactionChangeToSetAllowsDisplayCompositing(*(DerivedStorage + 880), v35, 0, "fpfs_setClientVideoLayerArray");
            }

            CFArrayAppendValue(v10, v36);
            if (!--v34)
            {
              goto LABEL_34;
            }
          }

          v13 = 4294954434;
          v4 = *v46;
          goto LABEL_50;
        }

LABEL_34:
        FPSupport_AppendDeferredTransactionChangeToRelease(*(DerivedStorage + 880), *(DerivedStorage + 392));
        if (v10)
        {
          *(DerivedStorage + 392) = CFRetain(v10);
          CFRelease(v10);
        }

        else
        {
          *(DerivedStorage + 392) = 0;
        }

        v4 = *v46;
        v37 = FigCFCopyCompactDescription();
        v38 = FigCFCopyCompactDescription();
        v39 = v38;
        if (dword_1EAF169F0)
        {
          v45 = v38;
          *v46 = v37;
          HIDWORD(v49) = 0;
          BYTE11(v49) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v39 = v45;
        }

        if (v37)
        {
          CFRelease(v37);
        }

        if (v39)
        {
          CFRelease(v39);
        }

        FPSupport_AppendDeferredTransactionChangeForAttachingFigVideoLayersToClientLayers();
      }

      if (*(DerivedStorage + 80))
      {
        fpfsi_removeLayerSync();
      }

      if (Count == v17 || (v57 = 0, TypeID = CAImageQueueGetTypeID(), v56 = Count - v17, v40 = fpfs_PlayQueueCallForEachItem(a1, fpfsi_handleVideoOutputsChanged, &TypeID), !v40))
      {
        v10 = v47;
        v12 = *v48;
        if (v47)
        {
          fpfsi_assignCAImageQueuesToLayers(v47, v26, v27, v28, v29, v30, v31, v32, v42, v43, os_log_and_send_and_compose_flags_and_os_log_type, v45, v46[0], v46[1], HIBYTE(v46[1]), *&v46[2], v47, v48[0], v48[1], v49, cf[0], cf[1], cf[2], v51, v52, v53[0], v53[1], v54, TypeID, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, vars0);
          v13 = v41;
          if (!v41)
          {
            fpfsi_ensureLayerSyncForItem(v10);
          }

          v10 = 0;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_53;
      }

      v13 = v40;
      v10 = 0;
LABEL_50:
      v12 = *v48;
LABEL_53:
      v11 = v49;
      goto LABEL_3;
    }

    fpfs_setClientVideoLayerArray_cold_1(&TypeID);
    v7 = 0;
  }

  else
  {
    fpfs_setClientVideoLayerArray_cold_2(&TypeID);
    v7 = 0;
    v8 = 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = TypeID;
LABEL_3:
  FPSupport_AppendDeferredTransactionChangeToRelease(*(DerivedStorage + 880), v11);
  FPSupport_AppendDeferredTransactionChangeToRelease(*(DerivedStorage + 880), v12);
  FPSupport_AppendDeferredTransactionChangeToRelease(*(DerivedStorage + 880), v10);
  fpfs_commitTransaction(a1, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v4);
  return v13;
}

uint64_t fpfs_setVolume(const void *a1, const __CFNumber *a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Next = fpfs_getNext(DerivedStorage, 0);
  valuePtr = 0.0;
  if (a2 && (v6 = Next, v7 = CFGetTypeID(a2), v7 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(a2, kCFNumberFloat32Type, &valuePtr);
    if (valuePtr == *(DerivedStorage + 104))
    {
      return 0;
    }

    else
    {
      values = a2;
      keys[0] = @"AVController_Volume";
      AllocatorForMedia = FigGetAllocatorForMedia();
      v9 = CFDictionaryCreate(AllocatorForMedia, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(DerivedStorage + 104) = valuePtr;
      if (v6 && (v10 = *(CMBaseObjectGetDerivedStorage() + 1024)) != 0)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = *(v10 + 112);
          if (v13)
          {
            if (*(v10 + 48) == 1936684398 && v13 != v11)
            {
              v12 = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
              v11 = *(v10 + 112);
            }
          }

          v10 = *(v10 + 24);
        }

        while (v10);
      }

      else
      {
        v12 = 0;
      }

      fpfs_EnqueueNotification(a1, @"VolumeDidChange", a1, v9);
      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  else
  {
    fpfs_setVolume_cold_1(keys);
    return LODWORD(keys[0]);
  }

  return v12;
}

uint64_t fpfs_setEQPreset(uint64_t a1, int a2)
{
  *(CMBaseObjectGetDerivedStorage() + 172) = a2;

  return fpfs_applyEQPreset(a1, 0, 0);
}

void fpfs_setCachedRouteInfo()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v13 = 0;
  cf = 0;
  v2 = *(DerivedStorage + 536);
  if (!v2)
  {
    *(DerivedStorage + 568) = 0;
    goto LABEL_14;
  }

  if (FigAudioCodecTypeIsDecodable())
  {
    v3 = *(v1 + 536);
    AllocatorForMedia = FigGetAllocatorForMedia();
    if (v3)
    {
      v5 = AllocatorForMedia;
      v6 = *(CMBaseObjectGetVTable() + 16);
      if (v6)
      {
        v7 = *(v6 + 48);
        if (v7)
        {
          if (!v7(v3, *MEMORY[0x1E69B0108], v5, &cf))
          {
            *(v1 + 568) = cf == *MEMORY[0x1E695E4D0];
          }
        }
      }
    }
  }

  v8 = *(v1 + 536);
  v9 = FigGetAllocatorForMedia();
  if (v8)
  {
    v10 = v9;
    v11 = *(CMBaseObjectGetVTable() + 16);
    if (v11)
    {
      v12 = *(v11 + 48);
      if (v12)
      {
        if (!v12(v8, *MEMORY[0x1E69AFC28], v10, &v13))
        {
          LOBYTE(v2) = v13 == *MEMORY[0x1E695E4D0];
LABEL_14:
          *(v1 + 569) = v2;
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }
}

uint64_t fpfs_updatePlayerActiveState(void *a1, int a2)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 32) != a2)
  {
    v7 = DerivedStorage;
    v8 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    ++*(v8 + 8);
    if ((a2 - 1) <= 1)
    {
      v9 = *(v7 + 32);
      *(v7 + 32) = a2;
      *(v7 + 40) = FigGetUpTimeNanoseconds();
      updated = fpfsi_UpdateResourceSpecifierOnResourceArbiter(*(v7 + 80));
      if (updated)
      {
        goto LABEL_27;
      }

      if (v9 == 1)
      {
        if (*(v7 + 536))
        {
          v14 = *(v7 + 80);
          if (v14)
          {
            v15 = *(v7 + 544);
            if (v15)
            {
              if (!*(v7 + 504))
              {
                fpfsi_setAudioSessionPreferredAudioHardwareFormat(a1, v14, v15);
                if (FigCFEqual())
                {
                  if (*(v7 + 560))
                  {
                    v16 = *(v7 + 552);
                    if (v16)
                    {
                      updated = FigAudioSessionSetMXSessionProperty(*(v7 + 536), *MEMORY[0x1E69B0260], v16);
                      if (!updated)
                      {
                        if (dword_1EAF169F0)
                        {
                          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                          fig_log_call_emit_and_clean_up_after_send_and_compose();
                        }

                        v5 = 0;
                        *(v7 + 560) = 0;
                        goto LABEL_22;
                      }

                      goto LABEL_27;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else if (!v9)
      {
        updated = fpfs_UpdatePlayerOverrideForAllItems();
        if (!updated)
        {
          if (!*(v7 + 80))
          {
            fpfs_PullNextItem(a1);
          }

          goto LABEL_21;
        }

LABEL_27:
        v5 = updated;
        goto LABEL_22;
      }

LABEL_21:
      v5 = 0;
      goto LABEL_22;
    }

    cf[0] = 0;
    AllocatorForMedia = FigGetAllocatorForMedia();
    FPSupport_CreateSetRateOptions(AllocatorForMedia, 26, cf);
    v12 = cf[0];
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v13)
    {
      v13(a1, v12, 0.0);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    *(v7 + 32) = 0;
    updated = fpfsi_UpdateResourceSpecifierOnResourceArbiter(*(v7 + 80));
    if (!updated)
    {
      v5 = fpfs_UpdatePlayerOverrideForAllItems();
      fpfs_releaseTransitionImageQueuesAndSlots();
      fpfs_sendEmptyConfigurationToEachVideoTarget();
      fpfs_ResetAudioHardwareFormat(a1);
LABEL_22:
      fpfs_UnlockAndPostNotificationsWithCaller(a1);
      return v5;
    }

    goto LABEL_27;
  }

  return 0;
}

const __CFArray *fpfs_DoAnyItemsHaveFairPlayEncryptedContent()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = fpfs_getNext(DerivedStorage, 0);
  if (result)
  {
    v2 = result;
    v3 = *MEMORY[0x1E695E4C0];
    v4 = *MEMORY[0x1E695E4D0];
    do
    {
      v12 = v3;
      if (DerivedStorage)
      {
        v5 = CMBaseObjectGetDerivedStorage();
        v6 = v3;
        if (!FigRetainProxyIsInvalidated())
        {
          v7 = *(v5 + 912);
          v6 = v3;
          if (v7)
          {
            AllocatorForMedia = FigGetAllocatorForMedia();
            FigBytePumpGetFigBaseObject(v7);
            v10 = v9;
            v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            v6 = v3;
            if (v11)
            {
              v11(v10, 0x1F0B1F918, AllocatorForMedia, &v12);
              v6 = v12;
            }
          }
        }
      }

      else
      {
        fpfs_DoAnyItemsHaveFairPlayEncryptedContent_cold_1();
        v6 = v3;
      }

      result = fpfs_getNext(DerivedStorage, v2);
      if (v6 == v4)
      {
        break;
      }

      v2 = result;
    }

    while (result);
  }

  return result;
}

uint64_t fpfsi_updateDisplayListOnCryptors()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 1024);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  while (1)
  {
    v4 = *(v2 + 400);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = *(v3 + 728);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v6)
    {
      return 4294954514;
    }

    result = v6(v4, @"DisplayList", v5);
    if ((result + 12785) >= 2 && result != 0)
    {
      return result;
    }

LABEL_10:
    v2 = *(v2 + 24);
    if (!v2)
    {
      return 0;
    }
  }
}

void fpfs_handlePlayerAudibleRateRangeChangeIfNecessary(const void *a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Next = fpfs_getNext(DerivedStorage, 0);
  v8 = Next;
  v9 = *(DerivedStorage + 776);
  v10 = *(DerivedStorage + 784);
  if (((v9 ^ a2) & 0xFF00) != 0)
  {
    goto LABEL_23;
  }

  v11 = *&a3 != *&v10;
  if (*(&a2 + 1) != *(&v9 + 1))
  {
    v11 = 1;
  }

  if (v9 != a2 || v11)
  {
LABEL_23:
    if (Next)
    {
      CMBaseObjectGetDerivedStorage();
      v13 = *(DerivedStorage + 108);
      if (v13 <= 2.0 && v13 >= 0.0)
      {
        v14 = *(CMBaseObjectGetDerivedStorage() + 1024);
        if (v14)
        {
          while (*(v14 + 48) != 1936684398 || !*(v14 + 112))
          {
            v14 = *(v14 + 24);
            if (!v14)
            {
              return;
            }
          }

          v21 = 0;
          v20 = 0;
          v19 = 0;
          v18 = 0;
          v17 = 0;
          v16 = 0;
          fpfsi_DetermineRateSnapping(v8, &v20);
          v15 = fpfs_ConfigureRatePlan(a2, a3, v20, v21, &v18, *(DerivedStorage + 108), *(DerivedStorage + 108));
          if (v15 != fpfs_ConfigureRatePlan(v9, v10, v20, v21, &v16, *(DerivedStorage + 108), *(DerivedStorage + 108)) || *(&v18 + 1) != *(&v16 + 1) || *&v18 != *&v16 || v19 != v17)
          {
            fpfs_stopResetDisturbReprepareAndResume(a1, *(DerivedStorage + 80), 0);
          }
        }
      }
    }
  }
}

uint64_t fpfs_setMultiAudioChannelStrategy(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 792);
  *(DerivedStorage + 792) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (CFEqual(a2, @"PreferExclusivePassthrough") || CFEqual(a2, @"PreferAC3ViaExclusivePassthrough"))
  {
    FPSupport_ReleasePassthroughHelper();
  }

  v7 = 0;
  return fpfs_PlayQueueCallForEachItem(a1, fpfs_handleAvailableAudioFormatChange_Apply, &v7);
}

uint64_t fpfsi_setMutedApply()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 522))
  {
    return 0;
  }

  v2 = *(DerivedStorage + 1024);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  result = 0;
  do
  {
    v4 = *(v2 + 112);
    if (v4)
    {
      if (*(v2 + 48) == 1936684398 && v4 != v3)
      {
        result = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
        v3 = *(v2 + 112);
      }
    }

    v2 = *(v2 + 24);
  }

  while (v2);
  return result;
}

uint64_t fpfsi_EnsureVideoModeForPIPPlayer(uint64_t a1, _DWORD *a2)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *a2 == 2;
  if (CelestialShouldLimitHDRConcurrentPlayback() && (v6 = fpfsi_SwitchBetweenHDRAndSDR(a1, v5), v6))
  {
    v7 = v6;
  }

  else
  {
    if (!CelestialShouldLimit4kConcurrentPlayback())
    {
      return 0;
    }

    v7 = fpfsi_SwitchBetween4kAndHD();
    if (!v7)
    {
      return v7;
    }
  }

  fpfs_StopPlayingItemWithOSStatus(DerivedStorage, a1, v7);
  return v7;
}

void fpfs_traceVideoTargetEvent(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  theString = 0;
  v8 = 0;
  *buffer = 1280070990;
  CMBaseObject = FigVideoTargetGetCMBaseObject(a2);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    if (!v3(CMBaseObject, 0x1F0B32A78, *MEMORY[0x1E695E480], &theString) && theString != 0)
    {
      CFStringGetCString(theString, buffer, 10, 0x600u);
    }
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    strncpy(__dst, buffer, 8uLL);
    kdebug_trace();
  }

  if (theString)
  {
    CFRelease(theString);
  }
}

uint64_t fpfs_AddToPlayQueue(void *a1, const void *a2, const void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a1)
    {
      v9 = (CMBaseObjectGetDerivedStorage() + 888);
    }

    else
    {
      v9 = "";
    }

    strncpy(__dst, v9, 8uLL);
    if (a2)
    {
      v10 = (CMBaseObjectGetDerivedStorage() + 3096);
    }

    else
    {
      v10 = "";
    }

    strncpy(__dst, v10, 8uLL);
    if (a3)
    {
      v11 = (CMBaseObjectGetDerivedStorage() + 3096);
    }

    else
    {
      v11 = "";
    }

    strncpy(__dst, v11, 8uLL);
    kdebug_trace();
  }

  v12 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v12 + 8);
  if (*(DerivedStorage + 52))
  {
    fpfs_AddToPlayQueue_cold_1(__dst);
LABEL_94:
    v49 = __dst[0];
    goto LABEL_76;
  }

  if (!fpfs_CheckItem(a1, a2))
  {
    fpfs_AddToPlayQueue_cold_6(__dst);
    goto LABEL_94;
  }

  if (a3 && !fpfs_CheckItem(a1, a3))
  {
    fpfs_AddToPlayQueue_cold_2(__dst);
    goto LABEL_94;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  if (!CFArrayGetCount(*(DerivedStorage + 72)) && !*(DerivedStorage + 80))
  {
    *(v13 + 3296) = 1;
    *(DerivedStorage + 704) = @"ReasonAddToPlayQueue";
  }

  v14 = *(DerivedStorage + 812);
  v15 = *(v13 + 2412);
  if (v14 >= v15)
  {
    v16 = *(v13 + 2412);
  }

  else
  {
    v16 = *(DerivedStorage + 812);
  }

  if (!v15)
  {
    v16 = *(DerivedStorage + 812);
  }

  if (v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = *(v13 + 2412);
  }

  *(v13 + 2408) = v17;
  v18 = *(DerivedStorage + 816);
  v19 = *(v13 + 2260);
  if (v18 >= v19)
  {
    v20 = *(v13 + 2260);
  }

  else
  {
    v20 = *(DerivedStorage + 816);
  }

  if (!v19)
  {
    v19 = 50;
    v20 = *(DerivedStorage + 816);
  }

  if (v18)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  *(v13 + 2256) = v21;
  v22 = *(DerivedStorage + 820);
  v23 = *(v13 + 2304);
  if (v22 < 0)
  {
    v22 = *(v13 + 2304);
    if (v23 < 0)
    {
      v22 = *(v13 + 2300);
    }
  }

  else if ((v23 & 0x80000000) == 0 && v22 >= *(v13 + 2296))
  {
    v22 = *(v13 + 2296);
  }

  *(v13 + 2296) = v22;
  if (!a3)
  {
    if (!*(v13 + 463))
    {
      CFArrayAppendValue(*(DerivedStorage + 72), a2);
      goto LABEL_54;
    }

    goto LABEL_90;
  }

  v24 = CMBaseObjectGetDerivedStorage();
  if (*(v13 + 463))
  {
LABEL_90:
    fpfs_AddToPlayQueue_cold_5(__dst);
    goto LABEL_94;
  }

  if (!*(v24 + 463))
  {
    fpfs_AddToPlayQueue_cold_4(__dst);
    goto LABEL_94;
  }

  if (*(DerivedStorage + 80) == a3)
  {
    v25 = 0;
  }

  else
  {
    v26 = *(DerivedStorage + 72);
    v56.length = CFArrayGetCount(v26);
    v56.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v26, v56, a3);
    if (FirstIndexOfValue == -1)
    {
      fpfs_AddToPlayQueue_cold_3(__dst);
      goto LABEL_94;
    }

    v25 = FirstIndexOfValue + 1;
    if (FirstIndexOfValue + 1 < CFArrayGetCount(*(DerivedStorage + 72)))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 72), v25);
      fpfs_CancelGaplessAttemptGuts(a1, ValueAtIndex, 1);
    }
  }

  CFArrayInsertValueAtIndex(*(DerivedStorage + 72), v25, a2);
LABEL_54:
  Current = CFAbsoluteTimeGetCurrent();
  v30 = *(v13 + 2568);
  if (v30)
  {
    v31 = Current;
    v32 = *(v13 + 2040);
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v33)
    {
      v33(v30, @"playerStats", 0x1F0B66538, ((v31 - v32) * 1000.0), 0);
    }
  }

  v34 = *(v13 + 2568);
  if (v34)
  {
    v35 = *(v13 + 3296);
    v36 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v36)
    {
      v36(v34, @"playerStats", 0x1F0B67458, v35, 0);
    }
  }

  if (*(v13 + 2072))
  {
    if (!*(v13 + 2096))
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v38 = *(v13 + 2568);
      if (v38)
      {
        v39 = UpTimeNanoseconds;
        v40 = *(v13 + 2072);
        v41 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v41)
        {
          v41(v38, 0x1F0B64678, 0x1F0B675F8, (v39 - v40) / 0xF4240uLL, 1);
        }
      }
    }
  }

  *(v13 + 463) = 1;
  *(v13 + 469) = 0;
  *(v13 + 530) = 0;
  CFArrayRemoveAllValues(*(v13 + 1920));
  v42 = *(v13 + 1904);
  if (v42)
  {
    CFRelease(v42);
    *(v13 + 1904) = 0;
  }

  v43 = *(v13 + 1912);
  if (v43)
  {
    CFRelease(v43);
    *(v13 + 1912) = 0;
  }

  fpfs_AdvanceToNextItemIfNecessary();
  v44 = *(DerivedStorage + 80);
  if (v44)
  {
    fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd(v44);
  }

  else
  {
    fpfs_PullNextItem(a1);
  }

  FVTCount = FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(DerivedStorage + 376));
  v46 = *(v13 + 2568);
  if (v46)
  {
    v47 = FVTCount;
    v48 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v48)
    {
      v48(v46, @"playerStats", 0x1F0B650F8, v47, 0);
    }
  }

  fpfs_PostPlayQueueNotificationIfHungry(a1);
  v49 = 0;
LABEL_76:
  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  if (*v8 == 1)
  {
    if (a1)
    {
      v50 = (CMBaseObjectGetDerivedStorage() + 888);
    }

    else
    {
      v50 = "";
    }

    strncpy(__dst, v50, 8uLL);
    if (a2)
    {
      v51 = (CMBaseObjectGetDerivedStorage() + 3096);
    }

    else
    {
      v51 = "";
    }

    strncpy(__dst, v51, 8uLL);
    if (a3)
    {
      v52 = (CMBaseObjectGetDerivedStorage() + 3096);
    }

    else
    {
      v52 = "";
    }

    strncpy(__dst, v52, 8uLL);
    kdebug_trace();
  }

  return v49;
}

uint64_t fpfs_CopyPlayQueueItem(const void *a1, const void *a2, const __CFArray **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v7 + 8);
  if (!a3)
  {
    fpfs_CopyPlayQueueItem_cold_4(&v12);
    v10 = v12;
    goto LABEL_10;
  }

  if (*(DerivedStorage + 52))
  {
    fpfs_CopyPlayQueueItem_cold_1(&v12);
  }

  else
  {
    if (!a2)
    {
LABEL_6:
      Next = fpfs_getNext(DerivedStorage, a2);
      v9 = Next;
      if (Next)
      {
        CFRetain(Next);
      }

      v10 = 0;
      goto LABEL_9;
    }

    if (fpfs_CheckItem(a1, a2))
    {
      if (*(CMBaseObjectGetDerivedStorage() + 463))
      {
        goto LABEL_6;
      }

      fpfs_CopyPlayQueueItem_cold_2(&v12);
    }

    else
    {
      fpfs_CopyPlayQueueItem_cold_3(&v12);
    }
  }

  v9 = 0;
  v10 = v12;
LABEL_9:
  *a3 = v9;
LABEL_10:
  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  return v10;
}

void fpfs_SetRate()
{
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  fpfs_SetRateWithOptionsGuts();
}

uint64_t fpfs_GetRate(const void *a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v5 + 8);
  *a2 = *(DerivedStorage + 108);
  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  return 0;
}

uint64_t fpfs_SetRateWithFade()
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetCMTime();
  fpfs_SetRateWithOptionsGuts();
  v3 = v2;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

uint64_t fpfs_StartPreroll(const void *a1, int a2, float a3)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(DerivedStorage + 52) && a3 != 0.0)
  {
    v10 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    ++*(v10 + 8);
    Next = fpfs_getNext(DerivedStorage, 0);
    if (Next)
    {
      v12 = Next;
      v13 = CMBaseObjectGetDerivedStorage();
      if (*(v13 + 840) != 0.0)
      {
        fpfs_StartPreroll_cold_1(v16);
        v8 = v16[0];
        goto LABEL_15;
      }

      v14 = v13;
      if (!*(v13 + 464))
      {
        fpfs_enqueuePrerollWasCancelledNotificationIfNeeded(v12);
        v8 = 0;
        *(v14 + 2224) = a2;
LABEL_15:
        fpfs_UnlockAndPostNotificationsWithCaller(a1);
        return v8;
      }

      *(v13 + 2224) = a2;
      fpfs_enqueuePrerollDidCompleteNotificationIfNeeded();
    }

    else if (dword_1EAF169F0 >= 2)
    {
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = 0;
    goto LABEL_15;
  }

  return FigSignalErrorAtGM();
}

uint64_t fpfs_ReevaluateRouteConfiguration(const void *a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v30 = 0;
  if (!a1)
  {
    fpfs_ReevaluateRouteConfiguration_cold_1(cf);
    return LODWORD(cf[0]);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v3 + 8);
  v4 = *(DerivedStorage + 80);
  v5 = FigCFCopyCompactDescription();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v5)
  {
    CFRelease(v5);
  }

  fpfs_setCachedRouteInfo();
  v7 = *(DerivedStorage + 504);
  if (!v7)
  {
LABEL_10:
    if (v4)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  CMBaseObject = FigBufferedAirPlayOutputGetCMBaseObject(v7);
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    goto LABEL_37;
  }

  v11 = v10(CMBaseObject, @"IsActiveConfigurationInvalid", AllocatorForMedia, &v30);
  if (v11)
  {
    goto LABEL_42;
  }

  if (v30 != *MEMORY[0x1E695E4D0])
  {
    goto LABEL_10;
  }

  if (dword_1EAF169F0)
  {
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v27 = *(DerivedStorage + 504);
  v28 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v28)
  {
LABEL_37:
    v25 = 4294954514;
    goto LABEL_38;
  }

  v11 = v28(v27);
  if (!v11)
  {
    fpfs_stopResetDisturbReprepareAndResume(a1, v4, 0);
    if (v4)
    {
LABEL_11:
      v12 = CMBaseObjectGetDerivedStorage();
      LOBYTE(cf[0]) = 0;
      v11 = fpfs_PlayQueueCallForEachItem(a1, fpfs_handleAvailableAudioFormatChange_Apply, cf);
      if (!v11)
      {
        v13 = CMBaseObjectGetDerivedStorage();
        cf[0] = 0;
        v14 = *(v13 + 1024);
        if (v14)
        {
          v15 = 0;
          v16 = *MEMORY[0x1E695E4D0];
          do
          {
            if (*(v14 + 48) == 1936684398)
            {
              v17 = *(v14 + 112);
              if (v17)
              {
                v18 = *(v17 + 32);
                if (v18)
                {
                  v19 = FigGetAllocatorForMedia();
                  FigBaseObject = FigRenderPipelineGetFigBaseObject(v18);
                  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v21)
                  {
                    v21(FigBaseObject, @"IsPausedForConfigurationChange", v19, cf);
                  }

                  if (cf[0] == v16)
                  {
                    v15 = 1;
                  }

                  if (cf[0])
                  {
                    CFRelease(cf[0]);
                    cf[0] = 0;
                  }
                }
              }
            }

            v14 = *(v14 + 24);
          }

          while (v14);
          if (v15)
          {
            for (i = (CMBaseObjectGetDerivedStorage() + 1024); ; i = (v23 + 24))
            {
              v23 = *i;
              if (*(v23 + 48) == 1936684398)
              {
                v24 = *(v23 + 112);
                if (v24)
                {
                  break;
                }
              }
            }

            fpfsi_restartAudioRendering(a1, v4, v12, *(v24 + 32));
          }
        }

        goto LABEL_30;
      }

      goto LABEL_42;
    }

LABEL_30:
    v25 = 0;
    goto LABEL_38;
  }

LABEL_42:
  v25 = v11;
LABEL_38:
  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  if (v30)
  {
    CFRelease(v30);
  }

  return v25;
}

uint64_t fpfs_AddExternalStartupTask(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v5 + 8);
  if (*(DerivedStorage + 52))
  {
    fpfs_AddExternalStartupTask_cold_1(&v8);
    v6 = v8;
  }

  else
  {
    CFArrayAppendValue(*(DerivedStorage + 944), a2);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    v6 = 0;
  }

  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  return v6;
}

uint64_t fpfs_TransferOwnershipOfPlaybackItemFromPlayer(const void *a1, const void *a2, const void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    fpfs_TransferOwnershipOfPlaybackItemFromPlayer_cold_4(v23);
    return v23[0];
  }

  if (!a1)
  {
    fpfs_TransferOwnershipOfPlaybackItemFromPlayer_cold_3(v23);
    return v23[0];
  }

  if (!a2)
  {
    fpfs_TransferOwnershipOfPlaybackItemFromPlayer_cold_2(v23);
    return v23[0];
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v9 + 8);
  if (*DerivedStorage != a3)
  {
    fpfs_TransferOwnershipOfPlaybackItemFromPlayer_cold_1(v23);
    v21 = v23[0];
LABEL_32:
    fpfs_UnlockAndPostNotificationsWithCaller(a3);
    return v21;
  }

  if (a3 != a1)
  {
    FigStopForwardingMediaServicesProcessDeathNotification();
  }

  if (*(DerivedStorage + 463))
  {
    fpfs_RemoveFromPlayQueueGuts(a3, a2, 1);
  }

  if (*DerivedStorage == a1)
  {
    v21 = 0;
    goto LABEL_32;
  }

  CFSetRemoveValue(*(v7 + 64), a2);
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(*(v7 + 976), FirstIndexOfValue);
  }

  v11 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v11 + 8);
  if (a3 != a1)
  {
    FigStartForwardingMediaServicesProcessDeathNotification();
  }

  FigSimpleMutexLock();
  *DerivedStorage = a1;
  FigSimpleMutexUnlock();
  fpfs_UnlockWithCaller();
  v12 = CMBaseObjectGetDerivedStorage();
  v13 = v12;
  v14 = *(DerivedStorage + 2568);
  if (v14)
  {
    v15 = *(v12 + 160);
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v16)
    {
      v16(v14, @"playerStats", 0x1F0B65898, v15, 0);
    }

    v17 = *(v13 + 504) != 0;
    v18 = *(DerivedStorage + 2568);
    if (v18)
    {
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v19)
      {
        v19(v18, @"playerStats", 0x1F0B66618, v17, 0);
      }
    }
  }

  fpfsi_UpdateHighWaterSecs();
  v20 = *(DerivedStorage + 1872);
  if (v20)
  {
    FigLegibleOutputManagerSetCaptionPipelineStrategy(v20, *(v13 + 460) == 0);
    FigLegibleOutputManagerSetCaptionRenderingStrategy(*(DerivedStorage + 1872), *(v13 + 461) == 0);
    FigLegibleOutputManagerSetNonForcedEnabledForMediaType(*(DerivedStorage + 1872), 1668047728, *(v13 + 210));
  }

  CFSetAddValue(*(v13 + 64), a2);
  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  return 0;
}

uint64_t fpfs_CopyDisplayedCVPixelBuffer(const void *a1, uint64_t a2, void *a3)
{
  values = 0;
  if (!a1)
  {
    fpfs_CopyDisplayedCVPixelBuffer_cold_3(&v15);
    return v15;
  }

  if (!a3)
  {
    fpfs_CopyDisplayedCVPixelBuffer_cold_2(&v15);
    return v15;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 8);
  if (!*(CMBaseObjectGetDerivedStorage() + 80) || (v6 = CMBaseObjectGetDerivedStorage()) == 0)
  {
    fpfs_CopyDisplayedCVPixelBuffer_cold_1();
    return v15;
  }

  v7 = v6;
  if ((FigCFDictionaryGetValueIfPresent() || FigCFDictionaryGetValueIfPresent()) && FigCFArrayGetFirstIndexOfValue() != -1)
  {
    values = FigCFArrayGetValueAtIndex();
    if (values)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v9 = CFArrayCreate(AllocatorForMedia, &values, 1, MEMORY[0x1E695E9C0]);
LABEL_12:
      v11 = v9;
      goto LABEL_14;
    }
  }

  v10 = *(v7 + 664);
  if (v10)
  {
    v9 = CFRetain(v10);
    goto LABEL_12;
  }

  v11 = 0;
LABEL_14:
  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  v12 = FPSupport_CopyCurrentlyDisplayedPixelBufferFromCAImageQueueArray(v11, *MEMORY[0x1E695E480], a3);
  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

uint64_t fpfs_SetConnectionActive(void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    v6 = 2;
  }

  else
  {
    v6 = *(DerivedStorage + 48) && !*(DerivedStorage + 51);
  }

  updated = fpfs_updatePlayerActiveState(a1, v6);
  if (dword_1EAF169F0)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return updated;
}

__n128 OUTLINED_FUNCTION_5@<Q0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __n128 *a45)
{
  STACK[0x370] = a1;
  result = *a45;
  v45[7] = *a45;
  STACK[0x280] = a45[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_6(uint64_t a1@<X8>)
{
  *(v2 + 32) = 2048;
  *(v2 + 34) = v1;
  *(v2 + 42) = 2082;
  *(v2 + 44) = a1;
}

__n128 OUTLINED_FUNCTION_8@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  v1[7] = *a1;
  STACK[0x280] = a1[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_13()
{
  STACK[0x320] = *(v2 - 208);
  LODWORD(STACK[0x328]) = *(v2 - 200);
  LODWORD(STACK[0x32C]) = v1;
  STACK[0x330] = v0;
}

__n128 OUTLINED_FUNCTION_18()
{
  v2 = v0[1];
  *&STACK[0x200] = *v0;
  *&STACK[0x210] = v2;
  *&STACK[0x220] = v0[2];
  return v1[2];
}

double OUTLINED_FUNCTION_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, double a34)
{
  *(v26 + 32) = a29;
  *(v26 + 48) = a30;
  return a34;
}

uint64_t OUTLINED_FUNCTION_24()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_42()
{
  result = v0[3];
  v0[14] = result;
  v0[15].n128_u64[0] = v0[4].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_43()
{
  result = v1[9];
  *v0 = result;
  STACK[0x370] = v1[10].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_48()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_53()
{
  result = *v0;
  STACK[0x200] = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_55()
{
  result = *&STACK[0x258];
  *v0 = *&STACK[0x258];
  return result;
}

__n128 OUTLINED_FUNCTION_58()
{
  result = *v1;
  v0[6] = *v1;
  v0[7].n128_u64[0] = v1[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_61()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

__n128 OUTLINED_FUNCTION_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, __n128 a42, unint64_t a43)
{
  result = a42;
  *&STACK[0x320] = a42;
  STACK[0x330] = a43;
  return result;
}

__n128 OUTLINED_FUNCTION_74()
{
  result = *v0;
  v1[7] = *v0;
  return result;
}

__n128 OUTLINED_FUNCTION_75()
{
  result = v1[13];
  v0[6] = result;
  v0[7].n128_u64[0] = v1[14].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_76(uint64_t a1@<X8>)
{
  *(v2 + 116) = a1;
  *(v2 + 124) = 2048;
  *(v2 + 126) = v1;
  *(v2 + 134) = 2082;
}

void OUTLINED_FUNCTION_83(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  LOWORD(STACK[0x21A]) = v17;
  *(a1 + 44) = a16;
  LOWORD(STACK[0x224]) = 1024;
  *(a1 + 54) = v18;
  LOWORD(STACK[0x22A]) = v16;
  *(a1 + 60) = v19;
  LOWORD(STACK[0x234]) = v16;
}

void *OUTLINED_FUNCTION_88()
{

  return malloc_type_calloc(1uLL, 0x90uLL, 0x1060040EF867D01uLL);
}

void OUTLINED_FUNCTION_92(__int16 a1@<W8>)
{
  *(v1 + 164) = a1;
  *(v1 + 166) = v3;
  *(v1 + 174) = a1;
  *(v1 + 176) = v2;
  *(v1 + 184) = a1;
}

__n128 OUTLINED_FUNCTION_93()
{
  result = v0[5];
  v0[14] = result;
  v0[15].n128_u64[0] = v0[6].n128_u64[0];
  return result;
}

BOOL OUTLINED_FUNCTION_95(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_log_type_t type, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{

  return os_log_type_enabled(a1, type);
}

__n128 OUTLINED_FUNCTION_96()
{
  result = *&STACK[0x270];
  *&STACK[0x2F0] = *&STACK[0x270];
  STACK[0x300] = STACK[0x280];
  return result;
}

uint64_t OUTLINED_FUNCTION_102()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_112@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 OUTLINED_FUNCTION_119()
{
  *&STACK[0x330] = 0u;
  *&STACK[0x340] = 0u;
  *&STACK[0x320] = 0u;
  result = *(v0 - 160);
  *&STACK[0x2F0] = result;
  STACK[0x300] = *(v0 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_122()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_123(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *&STACK[0x320] = *&STACK[0x270];
  STACK[0x330] = STACK[0x280];

  return CMTimeCompare(&time1, &STACK[0x320]);
}

uint64_t OUTLINED_FUNCTION_124()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_126()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_128()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_129(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int valuePtr)
{
  valuePtr = 0;

  return CFNumberGetValue(v29, kCFNumberSInt32Type, &valuePtr);
}

BOOL OUTLINED_FUNCTION_130(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

__n128 OUTLINED_FUNCTION_135(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __n128 a45, unint64_t a46)
{
  result = a45;
  *&STACK[0x300] = a45;
  STACK[0x310] = a46;
  return result;
}

__n128 OUTLINED_FUNCTION_136()
{
  v0 = *&STACK[0x330];
  *&STACK[0x2F0] = *&STACK[0x320];
  *&STACK[0x300] = v0;
  result = *&STACK[0x340];
  *&STACK[0x310] = *&STACK[0x340];
  return result;
}

void OUTLINED_FUNCTION_142()
{
  STACK[0x298] = 0;
  STACK[0x290] = 0;
  STACK[0x2A0] = 0;
}

__n128 OUTLINED_FUNCTION_149(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __n128 a45, unint64_t a46)
{
  result = a45;
  *&STACK[0x3C0] = a45;
  STACK[0x3D0] = a46;
  return result;
}

__n128 OUTLINED_FUNCTION_152()
{
  result = *v0;
  *&STACK[0x270] = *v0;
  STACK[0x280] = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_155()
{
  result = v1[13];
  *v0 = result;
  STACK[0x370] = v1[14].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_156(uint64_t result)
{
  v1[2] = result;
  *v1 = 1;
  return result;
}

__n128 OUTLINED_FUNCTION_157()
{
  result = *v0;
  *(v0 + 32) = *v0;
  *(v0 + 48) = *(v0 + 16);
  return result;
}

__n128 OUTLINED_FUNCTION_159(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, __n128 a41, unint64_t a42)
{
  result = a41;
  *&STACK[0x200] = a41;
  STACK[0x210] = a42;
  return result;
}

void OUTLINED_FUNCTION_160(__int16 a1@<W8>)
{
  *(v3 + 32) = a1;
  *(v3 + 34) = v2;
  *(v3 + 42) = v1;
}

__n128 OUTLINED_FUNCTION_161()
{
  result = *v1;
  *v0 = *v1;
  STACK[0x370] = STACK[0x210];
  return result;
}

__n128 OUTLINED_FUNCTION_162()
{
  result = *v1;
  v0[14] = *v1;
  v0[15].n128_u64[0] = v1[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_174()
{

  return FigNotificationCenterAddWeakListener();
}

uint64_t OUTLINED_FUNCTION_190()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_192()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_195@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, CMTime *time2, uint64_t a11, CMTime *time1, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 time2a, __int128 time2_16, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 a30)
{
  time1_16 = a1;
  time2a = a30;
  *&time2_16 = *(v30 + 16);

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_206@<X0>(unint64_t a1@<X8>)
{
  STACK[0x210] = a1;

  return CMTimeCompare((v1 - 256), &STACK[0x200]);
}

uint64_t OUTLINED_FUNCTION_212()
{
  LODWORD(STACK[0x270]) = 0;
  LOBYTE(STACK[0x258]) = 0;
  return *(v0 + 2536);
}

void OUTLINED_FUNCTION_215()
{
  *(v1 + 96) = *(v1 + 248);
  *(v1 + 104) = *(v1 + 256);
  *(v1 + 108) = v0;
  *(v1 + 112) = v2;
}

void OUTLINED_FUNCTION_219()
{
  STACK[0x328] = 0;
  STACK[0x320] = 0;
  STACK[0x330] = 0;
}

__n128 OUTLINED_FUNCTION_220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, __n128 a42, unint64_t a43)
{
  result = a42;
  *&STACK[0x3C0] = a42;
  STACK[0x3D0] = a43;
  return result;
}

void OUTLINED_FUNCTION_222(__int16 a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 118) = 2082;
  *(v10 + 120) = a10;
  *(v10 + 128) = a1;
}

void OUTLINED_FUNCTION_226(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24)
{
  LOWORD(STACK[0x206]) = 2082;
  STACK[0x208] = a24;
  LOWORD(STACK[0x210]) = v24;
}

BOOL OUTLINED_FUNCTION_229(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, os_log_type_t type, uint64_t a35, uint64_t a36, int a37)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_237@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x200] = a1;

  return CMTimeCompare(&STACK[0x270], &time2);
}

uint64_t OUTLINED_FUNCTION_238@<X0>(unint64_t a1@<X8>)
{
  STACK[0x3D0] = a1;

  return CMTimeCompare(&STACK[0x320], &STACK[0x3C0]);
}

float OUTLINED_FUNCTION_250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14)
{
  *(v14 - 80) = a13;
  *(v14 - 64) = a14;
  return v15;
}

BOOL OUTLINED_FUNCTION_254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35)
{
  STACK[0x320] = *(v38 - 192);
  LODWORD(STACK[0x328]) = *(v38 - 184);
  LODWORD(STACK[0x32C]) = v35;
  STACK[0x330] = v36;
  STACK[0x3C0] = *(v38 - 232);
  LODWORD(STACK[0x3C8]) = *(v38 - 224);
  LODWORD(STACK[0x3CC]) = v37;
  STACK[0x3D0] = a35;

  return fpfs_TimeIsAtOrAfter(a22, &STACK[0x320], &STACK[0x3C0]);
}

uint64_t OUTLINED_FUNCTION_255@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, __int128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, CMTime *time2, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, __int128 time2a, CMTime *time1)
{
  STACK[0x210] = a1;
  time2a = a11;
  time1 = v53;

  return CMTimeCompare(&STACK[0x200], &time2a);
}

uint64_t OUTLINED_FUNCTION_256()
{
  LODWORD(STACK[0x300]) = 0;
  LOBYTE(STACK[0x2E0]) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_257()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_268@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a9, uint64_t time1a)
{
  time2_16 = a1;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_271(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  a13 = 0;

  return fpfs_PlayQueueCallForEachItem(v13, fpfs_handleAvailableAudioFormatChange_Apply, &a13);
}

__n128 OUTLINED_FUNCTION_276()
{
  *&STACK[0x320] = *v0;
  STACK[0x330] = *(v1 - 200);
  result = *(v1 - 192);
  *&STACK[0x2F0] = result;
  STACK[0x300] = *(v1 - 176);
  return result;
}

void OUTLINED_FUNCTION_280(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 36) = a1;
  *(v5 + 44) = 2048;
  *(v5 + 46) = v6;
  *(v5 + 54) = 2082;
  *(v5 + 56) = a5;
  *(v5 + 64) = 2048;
  *(v5 + 66) = v7;
  *(v5 + 74) = 2082;
}

uint64_t OUTLINED_FUNCTION_299(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19)
{
  a18 = *v21;
  a19 = *(v21 + 2);
  a13 = *v20;
  a14 = *(v20 + 2);

  return fpfs_setRateInternal(v19, 0, &a18, &a13);
}

void *OUTLINED_FUNCTION_300@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  return fpfs_CheckPrebufferedLevels(a2, a1, 1, -1, 0);
}

BOOL OUTLINED_FUNCTION_304(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_306(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, os_log_type_t type, uint64_t a18, uint64_t a19, uint64_t a20, int a21)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_311(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_313(opaqueCMBufferQueue *a1)
{

  return CMBufferQueueCallForEachBuffer(a1, fpfs_CountNonDroppableUntil, &STACK[0x320]);
}

uint64_t OUTLINED_FUNCTION_314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, uint64_t a26)
{
  *(v26 - 256) = a25;
  *(v26 - 240) = a26;

  return fpfs_setRateOnPrimaryAndAuxRenderPipelines();
}

__n128 OUTLINED_FUNCTION_317()
{
  result = *v0;
  v1[7] = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_339()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_341@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x200] = a1;

  return CMTimeCompare(&time1, &STACK[0x270]);
}

__n128 OUTLINED_FUNCTION_343@<Q0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *v2 = a2;
  STACK[0x370] = STACK[0x2A0];
  result = a1[74];
  v3[7] = result;
  STACK[0x280] = a1[75].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __n128 a29, unint64_t a30)
{
  result = a29;
  v30[2] = a29;
  v30[3].n128_u64[0] = a30;
  return result;
}

__n128 OUTLINED_FUNCTION_346()
{
  result = v0[13];
  v1[8] = result;
  v1[9].n128_u64[0] = v0[14].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_352()
{
  result = *v0;
  *v1 = *v0;
  return result;
}

void OUTLINED_FUNCTION_357(__int16 a1@<W8>)
{
  *(v3 + 144) = a1;
  *(v3 + 146) = v2;
  *(v3 + 154) = v1;
}

__n128 OUTLINED_FUNCTION_360()
{
  result = v0[5];
  v0[14] = result;
  v0[15].n128_u64[0] = v0[6].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_363()
{
  result = *&STACK[0x320];
  *&STACK[0x300] = *&STACK[0x320];
  STACK[0x310] = STACK[0x330];
  return result;
}

CFNumberRef OUTLINED_FUNCTION_364(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, double valuePtr)
{
  valuePtr = *v10 * *(v10 + 24) * 8.0;

  return CFNumberCreate(v11, kCFNumberDoubleType, &valuePtr);
}

__n128 OUTLINED_FUNCTION_365(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, __n128 a41, unint64_t a42)
{
  result = a41;
  v42[6] = a41;
  v42[7].n128_u64[0] = a42;
  return result;
}

__n128 OUTLINED_FUNCTION_367()
{
  result = *v0;
  *&STACK[0x200] = *v0;
  STACK[0x210] = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_371()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_380(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 + 34) = v3;
  *(v2 + 44) = a1;
  *(v2 + 54) = a2;
}

__n128 OUTLINED_FUNCTION_390@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 OUTLINED_FUNCTION_391@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 64) = *a1;
  *(v1 - 48) = a1[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_395(__int16 a1@<W8>, double a2@<D0>)
{
  *(v3 + 44) = v2;
  *(v3 + 52) = a1;
  *(v3 + 54) = v4;
  *(v3 + 62) = a1;
  *(v3 + 64) = v5;
  *(v3 + 72) = a1;
  *(v3 + 74) = a2;
  *(v3 + 82) = a1;
}

uint64_t OUTLINED_FUNCTION_414()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_417()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_418()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_419@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CMTime *time2, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, CMTime *time1, uint64_t time2_8, uint64_t time2_16, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t time1a)
{
  time2_16 = a1;

  return CMTimeCompare(&time1a, &time1);
}

uint64_t OUTLINED_FUNCTION_420()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

void OUTLINED_FUNCTION_431()
{
  STACK[0x290] = v2;
  LODWORD(STACK[0x298]) = v1;
  *(v0 + 12) = *(v3 - 192);
  *(v0 + 20) = *(v3 - 184);
}

uint64_t OUTLINED_FUNCTION_448()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_449()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

void OUTLINED_FUNCTION_450(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, __int16 a15, char a16, os_log_type_t a17, unsigned int a18, int a19, int a20, int a21, __int16 a22, uint64_t a23, uint64_t a24, __int16 a25, uint64_t a26, __int16 a27, uint64_t a28, __int16 a29, uint64_t a30, __int16 a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(a6, &a11, &a12, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

Float64 OUTLINED_FUNCTION_451@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, CMTime *time, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t timea)
{
  *(v54 + 240) = a1;

  return CMTimeGetSeconds(&timea);
}

void OUTLINED_FUNCTION_452(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a71 = *(v71 + 1352);
  STACK[0x200] = *(v71 + 1368);

  FPSTimelineConverterL3TimeToL2(&a71, &STACK[0x270]);
}

uint64_t OUTLINED_FUNCTION_453()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_454()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

CFIndex OUTLINED_FUNCTION_455(CFIndex range)
{
  v4.length = range;
  v4.location = 0;

  return CFArrayGetFirstIndexOfValue(v2, v4, v1);
}

uint64_t OUTLINED_FUNCTION_456()
{

  return _os_log_send_and_compose_impl();
}

BOOL OUTLINED_FUNCTION_461(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, os_log_type_t type, uint64_t a22, uint64_t a23, uint64_t a24, int a25)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_462()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_464(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_465(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_466(NSObject *a1)
{
  v2 = STACK[0x258];

  return os_log_type_enabled(a1, v2);
}

uint64_t OUTLINED_FUNCTION_467()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_469(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a25, unint64_t a26)
{
  v29 = *(v26 + 1608);
  a25 = *v27;
  a26 = v27[1].n128_u64[0];

  return FigSpeedRampTimerScheduleForL2Time(v29, &a25, 1u);
}

uint64_t OUTLINED_FUNCTION_470()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CFNumberRef OUTLINED_FUNCTION_472(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char valuePtr)
{

  return CFNumberCreate(v11, kCFNumberDoubleType, &valuePtr);
}

CMTime *OUTLINED_FUNCTION_476(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return CMTimeSubtract(&a71, &STACK[0x320], &STACK[0x2F0]);
}

__n128 OUTLINED_FUNCTION_477(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a21)
{
  result = a21;
  *(v21 + 112) = a21;
  *(v21 + 128) = a20;
  *(v21 + 136) = a21;
  *(v21 + 152) = a20;
  return result;
}

__n128 OUTLINED_FUNCTION_478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, uint64_t a30)
{
  *(v30 + 96) = a29;
  *(v30 + 112) = a30;
  return *(v31 + 232);
}

double OUTLINED_FUNCTION_479(double a1)
{
  result = *(v1 + 1968) + a1 - *(v1 + 1952);
  *(v1 + 1968) = result;
  *(v1 + 1952) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_487()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_495()
{
  result = *&STACK[0x320];
  *v0 = *&STACK[0x320];
  *(v0 + 16) = STACK[0x330];
  return result;
}

uint64_t OUTLINED_FUNCTION_497()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_509()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_510()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_524()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

__n128 OUTLINED_FUNCTION_525(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, __n128 a40)
{
  result = a40;
  v40[7] = a40;
  return result;
}

__n128 OUTLINED_FUNCTION_527(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __n128 a45)
{
  result = a45;
  *&STACK[0x320] = a45;
  return result;
}

Float64 OUTLINED_FUNCTION_528@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, CMTime *time, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeGetSeconds(&timea);
}

void OUTLINED_FUNCTION_530()
{

  fpfs_CheckPrebufferedLevels();
}

Float64 OUTLINED_FUNCTION_532@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, CMTime *time, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_551()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_552()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

Float64 OUTLINED_FUNCTION_553(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, CMTime *time, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t timea)
{
  *(v35 + 96) = *v36;
  *(v35 + 112) = *(v36 + 16);

  return CMTimeGetSeconds(&timea);
}

CMTime *OUTLINED_FUNCTION_554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CMTimeRange *range, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 rangea, __int128 range_16, __int128 range_32)
{
  v27 = v25[1];
  rangea = *v25;
  range_16 = v27;
  range_32 = v25[2];

  return CMTimeRangeGetEnd(&range, &rangea);
}

uint64_t OUTLINED_FUNCTION_555()
{
  *(v0 + 24) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_556()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

Float64 OUTLINED_FUNCTION_557(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, CMTime *time, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t timea)
{
  *(v51 + 96) = a31;
  *(v51 + 112) = a32;

  return CMTimeGetSeconds(&timea);
}

Float64 OUTLINED_FUNCTION_558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __int128 a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, CMTime *time, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t timea)
{
  *(v51 + 96) = a28;
  *(v51 + 112) = a29;

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_559()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_560()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_561()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_562()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_563()
{

  return FigGetCFStringForOSTypeValue();
}

__n128 OUTLINED_FUNCTION_567()
{
  result = *v0;
  *v1 = *v0;
  v1[1].n128_u64[0] = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_571()
{
  result = v0[4];
  *&STACK[0x290] = result;
  STACK[0x2A0] = STACK[0x250];
  return result;
}

__n128 OUTLINED_FUNCTION_583()
{
  result = *&STACK[0x290];
  *v0 = *&STACK[0x290];
  return result;
}

double OUTLINED_FUNCTION_585()
{
  *(v0 - 176) = 0;
  result = 0.0;
  *(v0 - 208) = 0u;
  *(v0 - 192) = 0u;
  *(v0 - 240) = 0u;
  *(v0 - 224) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_605(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, __int128 a62)
{
  *&STACK[0x200] = a17;
  STACK[0x210] = a18;
  return a62;
}

void OUTLINED_FUNCTION_630()
{
  v3 = *v0;
  *(v1 + 224) = *(v0 + 2);
  *(v1 + 208) = v3;

  fpfs_AccumulateTrackDurationToBufferedAirPlayRenderedSampleRange(v1);
}

Float64 OUTLINED_FUNCTION_631(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, CMTime *time, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 timea, uint64_t time_16)
{
  timea = *(v36 + 232);
  time_16 = *(v36 + 248);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_632()
{
  v3 = *(v0 + 88);

  return CMBufferQueueEnqueue(v3, v1);
}

uint64_t OUTLINED_FUNCTION_633()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_634()
{
  *(v0 - 160) = *&STACK[0x2F0];
  *(v0 - 144) = STACK[0x300];

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_635()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_636@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a7, uint64_t time1a)
{
  time2_16 = a1;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_637()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_638()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_639()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_640()
{

  return CMBaseObjectGetVTable();
}

CMTime *OUTLINED_FUNCTION_641(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTime *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return CMTimeMakeWithSeconds(&a19, 30.0, 1);
}

uint64_t OUTLINED_FUNCTION_642()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_643()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_644(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, __int16 a15, char a16, os_log_type_t a17, unsigned int a18, int a19, int a20, int a21, __int16 a22, uint64_t a23, uint64_t a24, __int16 a25, uint64_t a26, __int16 a27, uint64_t a28, __int16 a29, uint64_t a30, __int16 a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v63 - 24) = 0;
  *&a13 = 0;

  fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(a2, v63 - 24, &a13, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t OUTLINED_FUNCTION_645()
{

  return CMBaseObjectGetDerivedStorage();
}

__n128 OUTLINED_FUNCTION_656()
{
  result = *v0;
  *(v1 - 96) = *v0;
  *(v1 - 80) = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_657()
{
  result = *v0;
  v1[13] = *v0;
  v1[14].n128_u64[0] = STACK[0x2A0];
  return result;
}

__n128 OUTLINED_FUNCTION_661(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19, unint64_t a20)
{
  result = a19;
  v20[5] = a19;
  v20[6].n128_u64[0] = a20;
  return result;
}

__n128 OUTLINED_FUNCTION_669()
{
  result = *(v0 + 232);
  *&STACK[0x270] = result;
  STACK[0x280] = *(v0 + 248);
  return result;
}

__n128 OUTLINED_FUNCTION_670()
{
  result = *(v1 - 160);
  *(v0 + 172) = result;
  *(v0 + 188) = *(v1 - 144);
  return result;
}

__n128 OUTLINED_FUNCTION_671()
{
  result = *(v0 - 160);
  *&STACK[0x270] = result;
  STACK[0x280] = *(v0 - 144);
  return result;
}

__n128 OUTLINED_FUNCTION_672()
{
  result = *(v1 - 160);
  *v0 = result;
  v0[1].n128_u64[0] = *(v1 - 144);
  return result;
}

void OUTLINED_FUNCTION_680()
{
  v2 = v0 + v1;
  *(v2 + 3082) = *(v0 + v1 + 3085);
  *(v2 + 3085) = 0;
}

void OUTLINED_FUNCTION_691(__int16 a1@<W8>)
{
  *(v4 + 24) = v2;
  *(v4 + 32) = a1;
  *(v4 + 34) = v3;
  *(v4 + 42) = v1;
}

__n128 OUTLINED_FUNCTION_692(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __n128 a29)
{
  result = a29;
  *v29 = a29;
  return result;
}

__n128 OUTLINED_FUNCTION_695(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __n128 a33, unint64_t a34)
{
  result = a33;
  v34[13] = a33;
  v34[14].n128_u64[0] = a34;
  return result;
}

__n128 OUTLINED_FUNCTION_697(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a25, unint64_t a26)
{
  result = a25;
  v26[8] = a25;
  v26[9].n128_u64[0] = a26;
  return result;
}

__n128 OUTLINED_FUNCTION_698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a25, unint64_t a26)
{
  result = a25;
  v26[14] = a25;
  v26[15].n128_u64[0] = a26;
  return result;
}

void OUTLINED_FUNCTION_707()
{
  *(v1 + 112) = *(v1 + 248);
  *(v1 + 120) = *(v1 + 256);
  *(v1 + 124) = v0;
}

__n128 OUTLINED_FUNCTION_708()
{
  result = v0[9];
  *v0 = result;
  STACK[0x370] = *(v1 - 160);
  return result;
}

__n128 OUTLINED_FUNCTION_709(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __n128 a30, unint64_t a31)
{
  result = a30;
  v31[14] = a30;
  v31[15].n128_u64[0] = a31;
  return result;
}

__n128 OUTLINED_FUNCTION_719(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, __n128 a55, unint64_t a56)
{
  result = a55;
  *&STACK[0x3C0] = a55;
  STACK[0x3D0] = a56;
  return result;
}

__n128 OUTLINED_FUNCTION_720()
{
  result = *(v0 + 24);
  *&STACK[0x3C0] = result;
  STACK[0x3D0] = *(v0 + 40);
  return result;
}

void OUTLINED_FUNCTION_721(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v19 + 24) = a1;
  *(v19 + 48) = 0;
  *(v19 + 56) = 0;
  *(v19 + 40) = a19;
}

__n128 OUTLINED_FUNCTION_733(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __n128 a11)
{
  *v11 = a9;
  v11[1] = a10;
  result = a11;
  v11[2] = a11;
  return result;
}

__n128 OUTLINED_FUNCTION_736()
{
  v1 = *(v0 + 16);
  *&STACK[0x200] = *v0;
  *&STACK[0x210] = v1;
  result = *(v0 + 32);
  *&STACK[0x220] = result;
  return result;
}

void OUTLINED_FUNCTION_737()
{
  STACK[0x278] = 0;
  STACK[0x270] = 0;
  STACK[0x280] = 0;
}

__n128 OUTLINED_FUNCTION_739()
{
  result = v1[2];
  *v0 = result;
  STACK[0x370] = STACK[0x230];
  return result;
}

__n128 OUTLINED_FUNCTION_743(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, __n128 a34, unint64_t a35)
{
  result = a34;
  v35[6] = a34;
  v35[7].n128_u64[0] = a35;
  return result;
}

__n128 OUTLINED_FUNCTION_753(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, __n128 a53, uint64_t a54)
{
  result = a53;
  v54[13] = a53;
  *(v55 - 240) = a54;
  return result;
}

__n128 OUTLINED_FUNCTION_754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __n128 a18, unint64_t a19)
{
  result = a18;
  *v19 = a18;
  v19[1].n128_u64[0] = a19;
  return result;
}

__n128 OUTLINED_FUNCTION_760()
{
  result = *v1;
  v0[13] = *v1;
  *(v2 - 240) = v1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_769(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, uint64_t a14)
{
  result = a13;
  *(v14 + 16) = a14;
  return result;
}

__n128 OUTLINED_FUNCTION_788()
{
  result = *(v1 + 24);
  v0[6] = result;
  v0[7].n128_u64[0] = *(v1 + 40);
  return result;
}

__n128 OUTLINED_FUNCTION_789()
{
  result = *(v0 + 24);
  *(v0 + 112) = result;
  *(v0 + 128) = *(v0 + 40);
  return result;
}

__n128 OUTLINED_FUNCTION_790()
{
  result = v0[8];
  v0[1].n128_u64[0] = v0[9].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_800@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_801@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *&STACK[0x320] = *a1;
  STACK[0x330] = a1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_803(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10)
{
  result = a9;
  *(v10 - 96) = a9;
  *(v10 - 80) = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{

  return fpfsi_TrimFromAllTracks(v53, &a53, v54, v55);
}

uint64_t OUTLINED_FUNCTION_815(uint64_t a1, NSObject *a2, const void *a3)
{

  return fpfsi_CreateTimebaseTimer(v4, a2, a3, v3, 0, v5);
}

uint64_t OUTLINED_FUNCTION_816()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_817(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_818(NSObject *a1)
{
  v2 = STACK[0x2F0];

  return os_log_type_enabled(a1, v2);
}

BOOL OUTLINED_FUNCTION_819(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_820(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_821(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_822(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_823()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_824()
{
  v4 = *(v0 + 16);
  v5 = *(v0 + 56);

  return fpfs_createLegibleOutputRenderChainsAndAttachToPrimary(v1, v4, v5, v2);
}

CMTime *OUTLINED_FUNCTION_825@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x330] = a1;

  return CMTimeAdd(&STACK[0x270], &STACK[0x320], &rhs);
}

BOOL OUTLINED_FUNCTION_826(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, os_log_type_t type, int a19, int a20)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_827()
{

  return fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
}

BOOL OUTLINED_FUNCTION_828(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, os_log_type_t type, int a19, int a20)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_829(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_830(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_832()
{

  return fpfs_GetItemBufferedDuration(v0);
}

BOOL OUTLINED_FUNCTION_833(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_834(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, os_log_type_t type, int a23)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_835(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_836()
{

  return FigCFArrayAppendInt32();
}

uint64_t OUTLINED_FUNCTION_837@<X0>(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *v2 = a2;
  STACK[0x2A0] = a1;

  return CMSampleBufferSetOutputPresentationTimeStamp(v3, &STACK[0x290]);
}

void OUTLINED_FUNCTION_838()
{
  v1[16] = 0;
  v1[17] = 0;
  v1[18] = 0;

  fpfs_GetTime(v0, (v2 - 144));
}

BOOL OUTLINED_FUNCTION_839(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, os_log_type_t type, uint64_t a35, uint64_t a36, int a37)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_840(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_841(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, os_log_type_t type, int a23)
{

  return os_log_type_enabled(a1, type);
}

double OUTLINED_FUNCTION_842@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  *(v11 - 96) = a1;

  return fpfsi_PrepareTrackForReplay(v10, (v11 - 112), va);
}

BOOL OUTLINED_FUNCTION_844(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, os_log_type_t type, int a25)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_846(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_log_type_t type, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_847(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, CMTime *time2, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a54, CMTime *time1, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_849()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, CMTime *time2, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, CMTime *time1, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_851()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_852(uint64_t a1, uint64_t a2)
{

  return fpfs_SetRateWithFadeInternal(a1, a2, a2, a2);
}

Float64 OUTLINED_FUNCTION_853@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, CMTime *time, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t timea)
{
  *(v58 + 224) = a1;

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_854()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_855()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

BOOL OUTLINED_FUNCTION_856(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CGSize size, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, CGSize sizea)
{

  return CGSizeMakeWithDictionaryRepresentation(v30, &sizea);
}

char *OUTLINED_FUNCTION_857(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char __dst)
{

  return strncpy(&__dst, a2, 8uLL);
}

CFNumberRef OUTLINED_FUNCTION_858(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberSInt32Type, a3);
}

uint64_t OUTLINED_FUNCTION_859()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t FigPlayerFileCreateWithOptions(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  __str = 0u;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FPSupport_CheckPlayerPerformanceTrace();
  FigPlayerGetClassID();
  v4 = CMDerivedObjectCreate();
  FigSignalErrorAtGM();
  *a3 = 0;
  if (dword_1EAF16A10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    strncpy(__dst, 0x3CC, 8uLL);
    kdebug_trace();
  }

  return v4;
}

uint64_t playerfig_autoSelectionCriteriaChanged()
{
  CMBaseObjectGetDerivedStorage();

  return FigDeferNotificationToDispatchQueue();
}

uint64_t playerfig_ValeriaEnabled()
{
  CMBaseObjectGetDerivedStorage();

  return FigDeferNotificationToDispatchQueue();
}

void playerfig_applyAutoSelectionCriteriaInternal()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    if (DerivedStorage[800])
    {
      FigSimpleMutexLock();
      v2 = *(v1 + 66);
      if (v2 && CFArrayGetCount(v2) && (ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 66), 0)) != 0)
      {
        v4 = ValueAtIndex;
        CFRetain(ValueAtIndex);
        FigSimpleMutexUnlock();
        itemfig_updateSelectedMediaArrayInternal(v4);

        CFRelease(v4);
      }

      else
      {

        FigSimpleMutexUnlock();
      }
    }
  }
}

uint64_t itemfig_applySelectedMediaArray(uint64_t a1, const __CFArray *a2, _BYTE *a3, _BYTE *a4, char *a5)
{
  v224[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 1840);
  v196 = DerivedStorage;
  if (!v8)
  {
    v197 = 0;
    v189 = 0;
    HasAnySourceTracksInArray = 0;
    LOBYTE(v198) = 0;
    v190 = 0;
    v13 = 0;
LABEL_360:
    v168 = a5;
    v167 = a4;
    v169 = a3;
    goto LABEL_323;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    itemfig_applySelectedMediaArray_cold_6(v224);
    LOBYTE(v8) = 0;
    v197 = 0;
LABEL_359:
    v189 = 0;
    HasAnySourceTracksInArray = 0;
    LOBYTE(v198) = 0;
    v190 = 0;
    v13 = LODWORD(v224[0]);
    goto LABEL_360;
  }

  v197 = Mutable;
  v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v10)
  {
    itemfig_applySelectedMediaArray_cold_5(v224);
    LOBYTE(v8) = 0;
    goto LABEL_359;
  }

  v190 = v10;
  Count = CFArrayGetCount(a2);
  if (Count < 1)
  {
    v195 = 0;
    v189 = 0;
    LOBYTE(v198) = 0;
    v13 = 0;
    goto LABEL_319;
  }

  v12 = Count;
  v13 = 0;
  v14 = 0;
  v198 = 0;
  v189 = 0;
  v195 = 0;
  v185 = @"MediaSelectionGroupOptions";
  v184 = @"MediaSelectionOptionsAudioCompositionPresetIndex";
  cf2 = @"PreferExclusivePassthrough";
  v181 = @"PreferAC3ViaExclusivePassthrough";
  v182 = @"MediaSelectionOptionsAudioCompositionPresetIndexesForFallbackIDs";
  v188 = @"MediaSelectionOptionsDisplaysNonForcedSubtitles";
  v204 = a2;
  v203 = Count;
  v209 = a1;
LABEL_6:
  v210 = 0;
  valuePtr = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(a2, v14);
  if (!ValueAtIndex || (v16 = ValueAtIndex, v17 = CFGetTypeID(ValueAtIndex), v17 != CFDictionaryGetTypeID()))
  {
    itemfig_applySelectedMediaArray_cold_3(v224);
    v13 = LODWORD(v224[0]);
    goto LABEL_331;
  }

  Value = CFDictionaryGetValue(v16, @"MediaSelectionOptionsPersistentID");
  if (Value)
  {
    v19 = Value;
    v20 = CFGetTypeID(Value);
    if (v20 != CFNumberGetTypeID())
    {
LABEL_10:
      v13 = FigSignalErrorAtGM();
      goto LABEL_33;
    }

    CFNumberGetValue(v19, kCFNumberSInt32Type, &valuePtr);
    TrackStorage = itemfig_getTrackStorage(a1, valuePtr, &v210);
    if (TrackStorage)
    {
      goto LABEL_350;
    }

    v208 = v14;
    if (*(v210 + 4) == 1668047728)
    {
      SecondaryForcedSubtitlesSelectedMediaDictionary = FigAutomaticMediaSelectionCreateSecondaryForcedSubtitlesSelectedMediaDictionary(a2, *(v196 + 1856));
      if (SecondaryForcedSubtitlesSelectedMediaDictionary)
      {
        v39 = SecondaryForcedSubtitlesSelectedMediaDictionary;
        v40 = CFDictionaryGetValue(SecondaryForcedSubtitlesSelectedMediaDictionary, @"MediaSelectionOptionsPersistentID");
        if (v40)
        {
          v41 = v40;
          v42 = CFGetTypeID(v40);
          if (v42 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v41, kCFNumberSInt32Type, &valuePtr + 4);
          }
        }

        CFRelease(v39);
      }

      v205 = 0;
      v13 = 0;
      v199 = 1;
      v201 = 0;
      goto LABEL_17;
    }

    v205 = 0;
    v199 = 0;
    v13 = 0;
  }

  else
  {
    v21 = CFDictionaryGetValue(v16, @"MediaSelectionOptionsUniqueOutOfBandID");
    if (v21)
    {
      v205 = v21;
      v22 = CFGetTypeID(v21);
      if (v22 != CFNumberGetTypeID())
      {
        goto LABEL_10;
      }

      v208 = v14;
    }

    else
    {
      v208 = v14;
      v205 = 0;
    }

    v199 = 0;
  }

  v201 = 1;
LABEL_17:
  v23 = CFDictionaryGetValue(v16, @"MediaSelectionGroupID");
  v24 = CFDictionaryGetValue(v16, @"MediaSelectionGroupMediaType");
  v25 = CMBaseObjectGetDerivedStorage();
  v26 = *(v25 + 1840);
  if (!v26)
  {
    goto LABEL_26;
  }

  v27 = CFGetTypeID(v26);
  if (v27 != CFArrayGetTypeID())
  {
    goto LABEL_26;
  }

  v28 = CFArrayGetCount(*(v25 + 1840));
  if (v28 < 1)
  {
    goto LABEL_26;
  }

  v29 = v28;
  v30 = 0;
  while (1)
  {
    v31 = CFArrayGetValueAtIndex(*(v25 + 1840), v30);
    if (v31)
    {
      v32 = v31;
      v33 = CFGetTypeID(v31);
      if (v33 == CFDictionaryGetTypeID())
      {
        CFDictionaryGetValue(v32, @"MediaSelectionGroupID");
        CFDictionaryGetValue(v32, @"MediaSelectionGroupMediaType");
        if (FigCFEqual())
        {
          if (FigCFEqual())
          {
            break;
          }
        }
      }
    }

    if (v29 == ++v30)
    {
      goto LABEL_26;
    }
  }

  v43 = CFGetTypeID(v32);
  if (v43 != CFDictionaryGetTypeID())
  {
LABEL_26:
    LODWORD(v217) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v35 = v217;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
    {
      v36 = v35;
    }

    else
    {
      v36 = v35 & 0xFFFFFFFE;
    }

    if (v36)
    {
      *v219 = 136315650;
      *&v219[4] = "itemfig_applySelectedMediaArray";
      v220 = 2114;
      v221 = v23;
      v222 = 2114;
      v223 = v24;
      LODWORD(v176) = 32;
      v175 = v219;
      _os_log_send_and_compose_impl();
    }

    a2 = v204;
    v12 = v203;
    v14 = v208;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a1 = v209;
    goto LABEL_33;
  }

  v44 = CFDictionaryGetValue(v32, v185);
  if (!v44 || (v45 = v44, v46 = CFGetTypeID(v44), v46 != CFArrayGetTypeID()))
  {
    itemfig_applySelectedMediaArray_cold_4(v224);
    v13 = LODWORD(v224[0]);
    goto LABEL_353;
  }

  v47 = CFArrayGetCount(v45);
  LODWORD(v224[0]) = 1061109567;
  if (!v47 || (FigCFArrayGetValueAtIndex(), FigCFDictionaryGetStringValue(), FigCFStringGetOSTypeValue(), LODWORD(v224[0]) != 1936684398))
  {
    v186 = CFArrayGetCount(v45);
    if (v186 < 1)
    {
      a1 = v209;
LABEL_169:
      a2 = v204;
      v12 = v203;
      v14 = v208;
      goto LABEL_33;
    }

    theArray = v45;
    HIDWORD(v179) = 0;
    LODWORD(cf) = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    while (1)
    {
      LODWORD(v217) = 0;
      v224[0] = 0;
      v59 = CFArrayGetValueAtIndex(theArray, v58);
      v60 = CFDictionaryGetValue(v59, @"MediaSelectionOptionsFallbackIDs");
      if (v60)
      {
        v61 = CFArrayGetCount(v60);
      }

      else
      {
        v61 = 0;
      }

      *type = 1061109567;
      if (!v59 || (v62 = CFGetTypeID(v59), v62 != CFDictionaryGetTypeID()))
      {
        itemfig_applySelectedMediaArray_cold_1(v219);
LABEL_352:
        v13 = *v219;
        goto LABEL_353;
      }

      CFDictionaryGetValue(v59, @"MediaSelectionOptionsMediaType");
      FigCFStringGetOSTypeValue();
      v63 = CFDictionaryGetValue(v59, @"MediaSelectionOptionsPersistentID");
      if (v63)
      {
        v64 = v63;
        v65 = CFGetTypeID(v63);
        if (v65 != CFNumberGetTypeID())
        {
          itemfig_applySelectedMediaArray_cold_2(v219);
          goto LABEL_352;
        }

        CFNumberGetValue(v64, kCFNumberSInt32Type, &v217);
        v66 = FigCFEqual();
        v67 = v66;
        if (*type == 1935832172)
        {
          if (v66)
          {
            v74 = 1;
          }

          else
          {
            v74 = v217 == HIDWORD(valuePtr);
          }

          v67 = v74;
        }

        else if (*type == 1668047728)
        {
          if (v66)
          {
            LODWORD(cf) = 1;
            v67 = 1;
          }

          else
          {
            if (v201)
            {
              v67 = v217 == *(v196 + 1048);
            }

            else
            {
              v67 = 0;
            }

            LODWORD(cf) = 1;
          }
        }

        v76 = CFDictionaryGetValue(v59, v188);
        if (v76)
        {
          v57 = 1;
        }

        if (v67)
        {
          if (v76)
          {
            if (v217 != HIDWORD(valuePtr))
            {
              v77 = CFDictionaryGetValue(v16, v188);
              if (v77)
              {
                v78 = v77;
                v79 = CFGetTypeID(v77);
                if (v79 == CFBooleanGetTypeID())
                {
                  HIDWORD(v179) = CFBooleanGetValue(v78);
                }
              }
            }
          }
        }

        HIDWORD(v187) = v57;
        if (*type == 1952807028)
        {
          v80 = 1;
        }

        else
        {
          v80 = v56;
        }

        v81 = v217;
        if (v67 && v61)
        {
          *v219 = 0;
          if (FigCFArrayGetInt32AtIndex())
          {
            v81 = *v219;
          }

          else
          {
            v81 = v81;
          }
        }

        v82 = v67;
        if (v61 >= 1)
        {
          for (i = 0; v61 != i; ++i)
          {
            *v219 = 0;
            FigCFArrayGetInt32AtIndex();
            if (*v219 != v81)
            {
              v84 = itemfig_getTrackStorage(v209, *v219, v224);
              if (v84)
              {
                goto LABEL_348;
              }

              v85 = v224[0];
              if (*(v224[0] + 8))
              {
                FigCFArrayAppendInt32();
                itemfig_setTrackEnabled(v209, v85, 0);
                updated = itemfig_updateDefaultTrackID(v209, *v219, v215);
                if (updated)
                {
                  v13 = updated;
                  goto LABEL_333;
                }

                v198 = 1;
              }
            }
          }
        }

        v84 = itemfig_getTrackStorage(v209, v81, v224);
        if (v84)
        {
LABEL_348:
          v13 = v84;
LABEL_353:
          v168 = a5;
          v167 = a4;
          v169 = a3;
          goto LABEL_354;
        }

        v87 = v224[0];
        if (*(v224[0] + 8) == v82)
        {
          v13 = 0;
          v56 = v80;
        }

        else
        {
          FigCFArrayAppendInt32();
          itemfig_setTrackEnabled(v209, v87, v82);
          v13 = itemfig_updateDefaultTrackID(v209, v81, v219);
          if (v13)
          {
LABEL_333:
            v168 = a5;
            v167 = a4;
            v169 = a3;
            HasAnySourceTracksInArray = 0;
            LOBYTE(v198) = 1;
            v170 = v197;
            goto LABEL_334;
          }

          v56 = v80;
          v198 = 1;
        }

        v57 = HIDWORD(v187);
      }

      else
      {
        v68 = CFDictionaryGetValue(v59, @"MediaSelectionOptionsUniqueOutOfBandID");
        if (!v68)
        {
          goto LABEL_119;
        }

        v69 = CFGetTypeID(v68);
        if (v69 != CFNumberGetTypeID())
        {
          goto LABEL_119;
        }

        if (!FigCFEqual())
        {
          if (v205)
          {
            goto LABEL_119;
          }

          v75 = *(v196 + 1896);
          if (!v75)
          {
            goto LABEL_119;
          }

          CFRelease(v75);
          *(v196 + 1896) = 0;
          goto LABEL_126;
        }

        v70 = v196;
        v71 = *(v196 + 1896);
        if (!v71)
        {
          goto LABEL_125;
        }

        CFDictionaryGetValue(v71, @"MediaSelectionOptionsUniqueOutOfBandID");
        v72 = FigCFEqual();
        v73 = *(v196 + 1896);
        if (!v72)
        {
          v70 = v196;
          if (v73)
          {
            CFRelease(v73);
          }

LABEL_125:
          *(v70 + 1896) = v59;
          CFRetain(v59);
LABEL_126:
          v198 = 1;
          goto LABEL_119;
        }

        v70 = v196;
        if (!v73)
        {
          goto LABEL_125;
        }
      }

LABEL_119:
      if (++v58 == v186)
      {
        if (v57)
        {
          *(v196 + 1062) = HIDWORD(valuePtr) != 0;
          itemfig_setDisplayNonForcedSubtitlesEnabled(v209, BYTE4(v179));
        }

        if (v198 && v56)
        {
          playerfig_resetSubtitleRenderPipeline();
        }

        if (cf)
        {
          a2 = v204;
          v12 = v203;
          v14 = v208;
          if (v189)
          {
            v189 = 1;
            a1 = v209;
            v88 = v196;
          }

          else
          {
            v88 = v196;
            v189 = *(v196 + 1052) != v199;
            a1 = v209;
          }

          *(v88 + 1052) = v199;
        }

        else
        {
          a1 = v209;
          a2 = v204;
          v12 = v203;
          v14 = v208;
        }

LABEL_33:
        if (++v14 == v12)
        {
LABEL_319:
          v165 = *(v196 + 824);
          if (v165)
          {
            HasAnySourceTracksInArray = FigVideoCompositionProcessorHasAnySourceTracksInArray(v165, v197);
          }

          else
          {
            HasAnySourceTracksInArray = 0;
          }

          v168 = a5;
          v167 = a4;
          v169 = a3;
          LOBYTE(v8) = v195;
          goto LABEL_323;
        }

        goto LABEL_6;
      }
    }
  }

  v48 = -1;
  FigCFDictionaryGetCFIndexIfPresent();
  SInt32 = FigCFNumberGetSInt32();
  v207 = CFArrayGetCount(v45);
  v50 = CFArrayGetCount(v45);
  a1 = v209;
  if (v50 < 1)
  {
    v55 = 0;
    goto LABEL_140;
  }

  v51 = v50;
  v52 = 0;
  while (1)
  {
    v53 = FigCFArrayGetValueAtIndex();
    v213 = 0;
    v212 = -1;
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetCFIndexIfPresent();
    v54 = v213 == SInt32 && v212 == -1;
    if (v54)
    {
      break;
    }

    if (v51 == ++v52)
    {
      v55 = 0;
      v48 = -1;
      goto LABEL_140;
    }
  }

  ArrayValue = FigCFDictionaryGetArrayValue();
  if (ArrayValue && CFArrayGetCount(ArrayValue) >= 1)
  {
    CMBaseObjectGetDerivedStorage();
    v104 = CFDictionaryGetValue(v53, @"MediaSelectionOptionsFallbackIDs");
    if (v104)
    {
      v105 = CFArrayGetCount(v104);
    }

    else
    {
      v105 = 0;
    }

    *type = -1;
    LODWORD(v224[0]) = 0;
    v106 = v209;
    v206 = 0;
    if (itemfig_getMaximumNumberOfSpatializedOutputChannels(v209, v224))
    {
      v107 = 1;
    }

    else
    {
      v107 = SLODWORD(v224[0]) < 3;
    }

    v108 = v107;
    v109 = v105 - 1;
    if (v105 >= 1)
    {
      v110 = 0;
      v111 = 1;
      do
      {
        while (1)
        {
          LODWORD(v224[0]) = 0;
          FigCFArrayGetInt32AtIndex();
          if (!itemfig_isTrackAC3(v209, LODWORD(v224[0])))
          {
            break;
          }

          if (!itemfig_canTrackPassthrough(v209, LODWORD(v224[0])))
          {
            goto LABEL_192;
          }

          v111 = 0;
          v54 = v109 == v110++;
          if (v54)
          {
            goto LABEL_193;
          }
        }

        ++v110;
      }

      while (v105 != v110);
      if (v111)
      {
LABEL_192:
        v206 = 0;
        goto LABEL_194;
      }

LABEL_193:
      v206 = itemfig_isAC3PassthroughSupported() != 0;
LABEL_194:
      v112 = 0;
      v113 = 1;
      do
      {
        while (1)
        {
          LODWORD(v224[0]) = 0;
          FigCFArrayGetInt32AtIndex();
          v114 = LODWORD(v224[0]);
          if (!itemfig_isTrackEnhancedAC3(v209, LODWORD(v224[0])) || itemfig_isTrackAtmos(v209, v114))
          {
            break;
          }

          if (!itemfig_canTrackPassthrough(v209, LODWORD(v224[0])))
          {
            goto LABEL_205;
          }

          v113 = 0;
          v54 = v109 == v112++;
          if (v54)
          {
            goto LABEL_204;
          }
        }

        ++v112;
      }

      while (v105 != v112);
      if (v113)
      {
        goto LABEL_205;
      }

LABEL_204:
      itemfig_isEC3PassthroughSupported();
LABEL_205:
      v115 = 0;
      v116 = 1;
      do
      {
        while (1)
        {
          LODWORD(v224[0]) = 0;
          FigCFArrayGetInt32AtIndex();
          if (!itemfig_isTrackAtmos(v209, LODWORD(v224[0])))
          {
            break;
          }

          if (!itemfig_canTrackPassthrough(v209, LODWORD(v224[0])))
          {
            goto LABEL_214;
          }

          v116 = 0;
          v54 = v109 == v115++;
          if (v54)
          {
            goto LABEL_215;
          }
        }

        ++v115;
      }

      while (v105 != v115);
      if (v116)
      {
LABEL_214:
        v106 = v209;
        goto LABEL_216;
      }

LABEL_215:
      v106 = v209;
      itemfig_isEC3PassthroughSupported();
    }

LABEL_216:
    isAtmosSupported = itemfig_isAtmosSupported(v106);
    v118 = FigCFWeakReferenceHolderCopyReferencedObject();
    v119 = CMBaseObjectGetDerivedStorage();
    if (!v118)
    {
      v213 = 0;
      v212 = -1;
      a1 = v209;
      goto LABEL_139;
    }

    v120 = v119;
    if (CFEqual(*(v119 + 944), cf2))
    {
      v121 = v206;
      if (isAtmosSupported)
      {
        v121 = 1;
      }
    }

    else
    {
      v121 = CFEqual(*(v120 + 944), v181) != 0 && v206;
    }

    v122 = 100000;
    if (!isAtmosSupported || v121)
    {
      if ((v108 | v121))
      {
        if (v206)
        {
          v124 = 10000;
        }

        else
        {
          v124 = 100000;
        }

        if (v206)
        {
          v125 = 100000;
        }

        else
        {
          v125 = 10;
        }

        LODWORD(v179) = v125;
        if (v206)
        {
          v126 = 10;
        }

        else
        {
          v126 = 100;
        }

        HIDWORD(v179) = v126;
        if (v206)
        {
          v123 = 1000;
        }

        else
        {
          v123 = 10000;
        }

        if (v206)
        {
          v122 = 100;
        }

        else
        {
          v122 = 1000;
        }
      }

      else
      {
        v122 = 10000;
        v179 = 0x3E800000064;
        v124 = 10;
        v123 = 100000;
      }
    }

    else
    {
      v123 = 10000;
      v179 = 0x3E800000064;
      v124 = 10;
    }

    cf = v118;
    if (v124 <= v123)
    {
      v127 = v123;
    }

    else
    {
      v127 = v124;
    }

    HIDWORD(v178) = v127;
    if (v105 < 1)
    {
      v129 = 0;
LABEL_310:
      if (FigCFDictionaryGetArrayValue())
      {
        FigCFArrayGetCFIndexAtIndex();
        v13 = 0;
        v164 = *type;
      }

      else
      {
        v13 = 0;
        v164 = -1;
      }

      a1 = v209;
LABEL_314:
      v213 = v129;
      v212 = v164;
      CFRelease(cf);
      if (v13)
      {
        goto LABEL_331;
      }

      goto LABEL_139;
    }

    v177 = __PAIR64__(v124, v123);
    LODWORD(v178) = v122;
    v128 = 0;
    v129 = 0;
    LODWORD(v186) = -1;
    v202 = -1;
    while (1)
    {
      v214 = 0;
      FigCFArrayGetInt32AtIndex();
      v130 = itemfig_getTrackStorage(v209, v214, v215);
      if (v130)
      {
        v13 = v130;
        v164 = -1;
        a1 = v209;
        goto LABEL_314;
      }

      TrackAudioChannelCount = itemfig_getTrackAudioChannelCount(v209, v214, 0);
      isTrackAC3 = itemfig_isTrackAC3(v209, v214);
      isTrackEnhancedAC3 = itemfig_isTrackEnhancedAC3(v209, v214);
      HIDWORD(v187) = itemfig_isTrackAtmos(v209, v214);
      v133 = v214;
      v134 = CMBaseObjectGetDerivedStorage();
      v224[0] = 0;
      LODWORD(v217) = 0;
      v135 = *(v134 + 1008);
      v136 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v136)
      {
        v137 = v136(v135, v133, v224, &v217);
        v138 = v224[0];
        if (v137)
        {
          v139 = 0;
        }

        else
        {
          v139 = v217 == 1936684398;
        }

        if (v139)
        {
          *v219 = 0;
          if (!itemfig_copyFormatDescription(v224[0], v219))
          {
            v140 = *v219;
            if (*v219)
            {
              CMFormatDescriptionGetMediaSubType(*v219);
              CFRelease(v140);
            }
          }

          v138 = v224[0];
        }

        if (v138)
        {
          CFRelease(v138);
        }
      }

      v141 = v214;
      v142 = CMBaseObjectGetDerivedStorage();
      v224[0] = 0;
      v218 = 0;
      v143 = *(v142 + 1008);
      v144 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v144)
      {
        v145 = 0;
        goto LABEL_261;
      }

      v158 = v144(v143, v141, v224, &v218);
      v159 = v224[0];
      if (!v158 && v218 == 1936684398)
      {
        break;
      }

      v145 = 0;
      if (v224[0])
      {
        goto LABEL_305;
      }

LABEL_261:
      if (itemfig_isTrackDecodable(v209, v214) || isTrackAC3 != 0 && v206)
      {
        v146 = HIDWORD(v177);
        v147 = v178;
        if (TrackAudioChannelCount > 2)
        {
          v146 = 0;
        }

        if (!BYTE4(v187))
        {
          v147 = 0;
        }

        v148 = TrackAudioChannelCount > 2 && (isTrackEnhancedAC3 | isTrackAC3 | BYTE4(v187)) == 0;
        v149 = v177;
        if (!v148)
        {
          v149 = 0;
        }

        v151 = HIDWORD(v178);
        v150 = v179;
        if (!isTrackAC3)
        {
          v150 = 0;
        }

        v152 = v150 + v146;
        v153 = HIDWORD(v179);
        if (!isTrackEnhancedAC3)
        {
          v153 = 0;
        }

        if (!v145)
        {
          v151 = 0;
        }

        v154 = v152 + v153 + v147 + v149 + v151;
        v155 = v186;
        v156 = v154 <= v186;
        if (v154 > v186)
        {
          v155 = v154;
        }

        LODWORD(v186) = v155;
        if (!v156)
        {
          v129 = v214;
        }

        v157 = v202;
        if (!v156)
        {
          v157 = v128;
        }

        v202 = v157;
      }

      if (v105 == ++v128)
      {
        goto LABEL_310;
      }
    }

    *v219 = 0;
    if (itemfig_copyFormatDescription(v224[0], v219))
    {
      v145 = 0;
    }

    else
    {
      v161 = *v219;
      if (*v219)
      {
        v162 = FigAudioFormatDescriptionGetCinematicAudioEffectEligibility() != 0;
        CFRelease(v161);
      }

      else
      {
        v162 = 0;
      }

      v217 = 0;
      v163 = itemfig_getTrackStorage(v209, v141, &v217);
      v145 = 0;
      if (v162 && !v163 && v217)
      {
        v145 = v217[161] || v217[162] || v217[160];
      }
    }

    v159 = v224[0];
    if (!v224[0])
    {
      goto LABEL_261;
    }

LABEL_305:
    CFRelease(v159);
    goto LABEL_261;
  }

LABEL_139:
  v55 = v213;
  v48 = v212;
LABEL_140:
  if (v207 < 1)
  {
    v195 = 0;
    v13 = 0;
    goto LABEL_169;
  }

  v90 = 0;
  v91 = 0;
  v92 = 0;
  while (1)
  {
    FigCFArrayGetValueAtIndex();
    v93 = FigCFDictionaryGetArrayValue();
    if (!v93)
    {
      v219[0] = 0;
      LOBYTE(v217) = 0;
      goto LABEL_157;
    }

    v94 = CFArrayGetCount(v93);
    v219[0] = 0;
    LOBYTE(v217) = 0;
    if (v94 >= 1)
    {
      break;
    }

LABEL_157:
    LODWORD(v224[0]) = 0;
    FigCFDictionaryGetInt32IfPresent();
    if (LODWORD(v224[0]) == v55)
    {
      v102 = v48;
    }

    else
    {
      v102 = -1;
    }

    itemfig_enableAudioTrackAndSetCompositionPresetIndexForEnabledTrack(a1, LODWORD(v224[0]) == v55, v224[0], v102, v219, &v217, v100, v101, v175, v176, SWORD2(v176), SBYTE6(v176), SHIBYTE(v176), v177, v178, v179, cf, v181, v182, cf2, v184, v185, v186, v187, v188);
    if (TrackStorage)
    {
      goto LABEL_350;
    }

    if (v219[0])
    {
      v90 = 1;
    }

    if (v217)
    {
      v92 = 1;
    }

LABEL_154:
    if (++v91 == v207)
    {
      v13 = 0;
      v103 = v198;
      if (v90)
      {
        v103 = 1;
      }

      v198 = v103;
      v195 = v92;
      a2 = v204;
      v12 = v203;
      v14 = v208;
      goto LABEL_33;
    }
  }

  v95 = v94;
  v96 = 0;
  while (1)
  {
    LODWORD(v224[0]) = 0;
    FigCFArrayGetInt32AtIndex();
    v99 = LODWORD(v224[0]) == v55 ? v48 : -1;
    itemfig_enableAudioTrackAndSetCompositionPresetIndexForEnabledTrack(a1, LODWORD(v224[0]) == v55, v224[0], v99, v219, &v217, v97, v98, v175, v176, SWORD2(v176), SBYTE6(v176), SHIBYTE(v176), v177, v178, v179, cf, v181, v182, cf2, v184, v185, v186, v187, v188);
    if (TrackStorage)
    {
      break;
    }

    if (v219[0])
    {
      v90 = 1;
    }

    if (v217)
    {
      v92 = 1;
    }

    if (v95 == ++v96)
    {
      goto LABEL_154;
    }
  }

LABEL_350:
  v13 = TrackStorage;
LABEL_331:
  v168 = a5;
  v167 = a4;
  v169 = a3;
LABEL_354:
  LOBYTE(v8) = v195;
  HasAnySourceTracksInArray = 0;
LABEL_323:
  if (v198)
  {
    v195 = v8;
    v170 = v197;
  }

  else
  {
    v170 = v197;
    if (!v189 && !v8)
    {
      LOBYTE(v198) = 0;
      v171 = 0;
      if (!v169)
      {
        goto LABEL_338;
      }

LABEL_337:
      *v169 = v198;
      goto LABEL_338;
    }

    v195 = v8;
  }

LABEL_334:
  if (*(v196 + 1242))
  {
    v174 = v170;
    itemfig_postSelectedMediaOptionsDidChangeNotification();
    v170 = v174;
    v169 = a3;
    v168 = a5;
    v167 = a4;
  }

  else
  {
    *(v196 + 1241) = 1;
  }

  v171 = v195;
  if (v169)
  {
    goto LABEL_337;
  }

LABEL_338:
  if (v168)
  {
    *v168 = v171;
  }

  if (v167)
  {
    *v167 = HasAnySourceTracksInArray;
  }

  if (v190)
  {
    v172 = v170;
    CFRelease(v190);
    v170 = v172;
  }

  if (v170)
  {
    CFRelease(v170);
  }

  return v13;
}

void playerfig_updateClosedCaptionsDisplayForItem(int a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 305);
  FigSimpleMutexLock();
  if (CFArrayGetCount(*(DerivedStorage + 528)) < 1)
  {
    ValueAtIndex = 0;
    goto LABEL_6;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
  if (!ValueAtIndex)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  v8 = v7;
  if (v5)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v7 + 1052) != 0;
  }

  if (*(v7 + 1328))
  {
    CFRetain(ValueAtIndex);
    v9 = 0;
    goto LABEL_11;
  }

  ValueAtIndex = 0;
LABEL_7:
  v9 = 1;
LABEL_11:
  FigSimpleMutexUnlock();
  if (a2 && ValueAtIndex != a2)
  {
    goto LABEL_30;
  }

  if (v5 && ValueAtIndex)
  {
    if (*(v8 + 1060))
    {
      v5 = 0;
    }

    goto LABEL_18;
  }

  if (ValueAtIndex)
  {
LABEL_18:
    v10 = *(CMBaseObjectGetDerivedStorage() + 1792);
    if (v10)
    {
      FigLegibleOutputManagerSetNonForcedEnabledForMediaType(v10, 1668047728, v5);
    }
  }

  v11 = *(DerivedStorage + 600);
  if (v11)
  {
    if (v5)
    {
      v12 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v12 = MEMORY[0x1E695E4C0];
    }

    FigBaseObject = FigRenderPipelineGetFigBaseObject(v11);
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v14)
    {
      v14(FigBaseObject, @"DisplayClosedCaptions", *v12);
    }

    if (v5 && *(DerivedStorage + 608))
    {
      playerfig_resetSubtitleRenderPipeline();
    }
  }

  if (v5 != *(DerivedStorage + 306))
  {
    *(DerivedStorage + 306) = v5;
    FPSupport_updateClosedCaptionLayer(DerivedStorage + 304, *(DerivedStorage + 296));
    NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(a1, a2, v15, v16, v17, v18, v19, v20, @"DisplayingClosedCaptions", 0);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (NotificationPayloadForProperties)
    {
      CFRelease(NotificationPayloadForProperties);
    }
  }

LABEL_30:
  if ((v9 & 1) == 0)
  {

    CFRelease(ValueAtIndex);
  }
}

void playerfig_updateSubtitleDisplayForItem(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFArrayGetCount(*(DerivedStorage + 528)) < 1)
  {
    ValueAtIndex = 0;
    goto LABEL_6;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
  if (!ValueAtIndex)
  {
LABEL_6:
    v5 = 0;
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  if (!*(v5 + 1328))
  {
    ValueAtIndex = 0;
    goto LABEL_7;
  }

  CFRetain(ValueAtIndex);
  v6 = 0;
LABEL_8:
  FigSimpleMutexUnlock();
  if (a2 && ValueAtIndex != a2)
  {
    goto LABEL_20;
  }

  if (!v5)
  {
    goto LABEL_20;
  }

  v7 = *(DerivedStorage + 608);
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = (*(DerivedStorage + 720) && *(v5 + 1060) ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
  v9 = *v8;
  FigBaseObject = FigRenderPipelineGetFigBaseObject(v7);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v11)
  {
    v11(FigBaseObject, @"DisplayNonForcedSubtitles", v9);
  }

  v12 = *(v5 + 1864);
  if (!v12 || !CFArrayGetCount(v12))
  {
    playerfig_resetSubtitleRenderPipeline();
    if (v6)
    {
      return;
    }
  }

  else
  {
LABEL_20:
    if (v6)
    {
      return;
    }
  }

  CFRelease(ValueAtIndex);
}

void playerfig_updateCaptionOrSubtitleHintOnVideoPipeline(uint64_t a1, const void *a2)
{
  cf = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (*(DerivedStorage + 306))
  {
    v6 = *(DerivedStorage + 600) != 0;
  }

  else
  {
    v6 = 0;
  }

  if (!a2)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v9 || (v9(a1, 0, &cf), !cf))
    {
      v8 = 0;
      goto LABEL_15;
    }
  }

  v7 = CMBaseObjectGetDerivedStorage();
  if (*(v5 + 720) && *(v7 + 1060))
  {
    v8 = 1;
    if (a2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = *(v7 + 1061) != 0;
    if (a2)
    {
      goto LABEL_15;
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_15:
  v10 = v6 || v8;
  if (*(v5 + 744) != v10)
  {
    v11 = *(v5 + 592);
    if (v11)
    {
      *(v5 + 744) = v10;
      if (v6 || v8)
      {
        v12 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v12 = MEMORY[0x1E695E4C0];
      }

      FigBaseObject = FigRenderPipelineGetFigBaseObject(v11);
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v14)
      {
        v14(FigBaseObject, @"CAImageQueueCaptionsMayAppearHint", *v12);
      }
    }
  }
}

uint64_t itemfig_assureBasicsReadyUsingAsset(void *a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 1240))
  {
    return 0;
  }

  return itemfig_setBasicInspectables(a1);
}

uint64_t itemfig_setBasicInspectables(void *a1)
{
  v128 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v123 = 0;
  if (*DerivedStorage)
  {
    itemfig_setBasicInspectables_cold_1();
    v3 = 0;
LABEL_162:
    v5 = 0;
    v4 = 1;
    goto LABEL_6;
  }

  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v3)
  {
    itemfig_setBasicInspectables_cold_4();
    goto LABEL_162;
  }

  if (*CMBaseObjectGetDerivedStorage())
  {
    itemfig_setBasicInspectables_cold_2();
    goto LABEL_162;
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 1240))
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_6;
  }

  v121 = 0;
  CoalescedClientAndAutomaticSelectedMediaArray = itemfig_setFormatReader(a1);
  if (CoalescedClientAndAutomaticSelectedMediaArray)
  {
    goto LABEL_163;
  }

  v8 = *(DerivedStorage + 1256);
  v9 = CFGetAllocator(a1);
  CMBaseObject = FigAssetGetCMBaseObject(v8);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    goto LABEL_99;
  }

  CoalescedClientAndAutomaticSelectedMediaArray = v11(CMBaseObject, @"assetProperty_ContentByteStream", v9, DerivedStorage + 128);
  if (CoalescedClientAndAutomaticSelectedMediaArray)
  {
LABEL_163:
    v5 = CoalescedClientAndAutomaticSelectedMediaArray;
    goto LABEL_164;
  }

  if (*(DerivedStorage + 128))
  {
    v65 = CMByteStreamGetCMBaseObject();
    v66 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v66)
    {
      v66(v65, @"CRABS_PlaybackSessionID", 0, &cf);
      v91 = *(DerivedStorage + 2232);
      if (v91)
      {
        v92 = cf;
        if (cf)
        {
          v93 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v93)
          {
            v93(v91, *MEMORY[0x1E69629F0], v92);
          }

          v94 = *(DerivedStorage + 2232);
          v95 = CMByteStreamGetCMBaseObject();
          v96 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v96)
          {
            v96(v95, *MEMORY[0x1E6960DE8], v94);
          }
        }
      }
    }

    CMByteStreamGetCMBaseObject();
    FigCRABSGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      values[0] = 0;
      if (*(DerivedStorage + 1))
      {
        v74 = *(DerivedStorage + 1432);
        if (v74)
        {
          CFRelease(v74);
          *(DerivedStorage + 1432) = 0;
        }

        v75 = CMByteStreamGetCMBaseObject();
        v76 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v76)
        {
          v76(v75, @"CRABS_InteractivePlaybackAssertion", 0, DerivedStorage + 1432);
        }
      }

      if (*(DerivedStorage + 1744))
      {
        *number = 0;
        v77 = CMByteStreamGetCMBaseObject();
        v78 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v78)
        {
          v78(v77, @"CRABS_ReadAheadStartTime", 0, number);
        }

        if (*number)
        {
          valuePtr = 0.0;
          CFNumberGetValue(*number, kCFNumberDoubleType, &valuePtr);
          CFRelease(*number);
          v79 = *(DerivedStorage + 1600);
          if (v79 >= valuePtr)
          {
            v79 = valuePtr;
          }

          *(DerivedStorage + 1600) = v79;
        }
      }

      *(DerivedStorage + 1745) = 1;
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      v80 = CMByteStreamGetCMBaseObject();
      v81 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v81)
      {
        if (!v81(v80, @"CRABS_ConnectionState", 0, values))
        {
          v82 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigCachedReadAheadByteStreamParameter_ConnectionState, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
          itemfig_ConnectionStateChanged(DefaultLocalCenter, a1, v84, *(DerivedStorage + 128), v82);
          if (v82)
          {
            CFRelease(v82);
          }
        }
      }

      if (values[0])
      {
        CFRelease(values[0]);
      }

      if (!*(DerivedStorage + 2056))
      {
        v85 = CMByteStreamGetCMBaseObject();
        v86 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v86)
        {
          v86(v85, @"CRABS_ClientNetworkActivity", 0, DerivedStorage + 2056);
        }
      }

      v87 = CFGetAllocator(a1);
      v88 = CMByteStreamGetCMBaseObject();
      v89 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v89)
      {
        v89(v88, @"CRABS_NetworkUrgencyMonitor", v87, DerivedStorage + 632);
      }
    }

    else
    {
      *(DerivedStorage + 1370) = 1;
    }

    itemfig_reportingAgentSetup(a1, v67, v68, v69, v70, v71, v72, v73, v113, v114, v115, v116, v117, v118, v119, *&valuePtr, v121, cf, v123, v124, *number, *&number[8], *&number[16], v126);
  }

  v12 = *(DerivedStorage + 1256);
  v13 = CFGetAllocator(a1);
  v14 = FigAssetGetCMBaseObject(v12);
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    v5 = v15(v14, @"assetProperty_Tracks", v13, &v121);
  }

  else
  {
    v5 = 4294954514;
  }

  if (v121)
  {
    CFRelease(v121);
    v121 = 0;
  }

  if (v5)
  {
    goto LABEL_164;
  }

  v16 = CMBaseObjectGetDerivedStorage();
  v17 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v17)
  {
    itemfig_setBasicInspectables_cold_3();
    goto LABEL_87;
  }

  v18 = v17;
  v19 = CMBaseObjectGetDerivedStorage();
  if (*v19)
  {
    LODWORD(valuePtr) = 0;
    HIBYTE(v124) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v111 = LODWORD(valuePtr);
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, HIBYTE(v124)))
    {
      v112 = v111;
    }

    else
    {
      v112 = v111 & 0xFFFFFFFE;
    }

    if (v112)
    {
      *number = 136315138;
      *&number[4] = "itemfig_establishTrackIDs";
      LODWORD(v114) = 12;
      v113 = number;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    CFRelease(v18);
LABEL_87:
    v55 = *(DerivedStorage + 1256);
    v56 = CFGetAllocator(a1);
    v57 = FigAssetGetCMBaseObject(v55);
    v58 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v58)
    {
      CoalescedClientAndAutomaticSelectedMediaArray = v58(v57, @"MediaSelectionArray", v56, DerivedStorage + 1840);
      if (!CoalescedClientAndAutomaticSelectedMediaArray)
      {
        FigAutomaticMediaSelectionGetMediaSelectionGroupsForMajorIntrinsicCharacteristics(*(DerivedStorage + 1840), 0, (DerivedStorage + 1848), (DerivedStorage + 1856));
        itemfig_checkForShortAudioTrack();
        v59 = CMBaseObjectGetDerivedStorage();
        v60 = FigCFWeakReferenceHolderCopyReferencedObject();
        v61 = CMBaseObjectGetDerivedStorage();
        if (v60)
        {
          if (!*v61 && !*(v59 + 1442) && FPSupport_HasTrackOfType(*(v59 + 1008), 1986618469))
          {
            *(v59 + 1441) = 1;
            if (dword_1EAF16A10)
            {
              LODWORD(valuePtr) = 0;
              HIBYTE(v124) = 0;
              v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v63 = LODWORD(valuePtr);
              if (os_log_type_enabled(v62, HIBYTE(v124)))
              {
                v64 = v63;
              }

              else
              {
                v64 = v63 & 0xFFFFFFFE;
              }

              if (v64)
              {
                if (a1)
                {
                  v90 = (CMBaseObjectGetDerivedStorage() + 2096);
                }

                else
                {
                  v90 = "";
                }

                *number = 136315650;
                *&number[4] = "itemfig_establishStereoAudioSpatializationPreferenceForAsset";
                *&number[12] = 2048;
                *&number[14] = a1;
                *&number[22] = 2082;
                v126 = v90;
                LODWORD(v114) = 32;
                v113 = number;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            CMNotificationCenterGetDefaultLocalCenter();
            FigDispatchAsyncPostNotification();
          }

          CFRelease(v60);
        }

        *(DerivedStorage + 1240) = 1;
        *(DerivedStorage + 1624) = CFAbsoluteTimeGetCurrent();
        if (*(DerivedStorage + 1429))
        {
          if (*(DerivedStorage + 128))
          {
            CMByteStreamGetCMBaseObject();
            FigCRABSGetClassID();
            if (CMBaseObjectIsMemberOfClass())
            {
              v97 = (*(DerivedStorage + 1428) ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
              v98 = CMByteStreamGetCMBaseObject();
              v99 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v99)
              {
                v99(v98, @"CRABS_ReadAheadAllowBackfill", *v97);
              }
            }
          }
        }

        v100 = CMBaseObjectGetDerivedStorage();
        v101 = FigCFWeakReferenceHolderCopyReferencedObject();
        v102 = *(v100 + 1312);
        if (v102)
        {
          CFDictionaryApplyFunction(v102, itemfig_transferPendingTrackProperties, a1);
          v103 = *(v100 + 1312);
          if (v103)
          {
            CFRelease(v103);
            *(v100 + 1312) = 0;
          }
        }

        if (v101)
        {
          CFRelease(v101);
        }

        CoalescedClientAndAutomaticSelectedMediaArray = itemfig_createCoalescedClientAndAutomaticSelectedMediaArray();
        if (!CoalescedClientAndAutomaticSelectedMediaArray)
        {
          if (v123)
          {
            itemfig_applySelectedMediaArray(a1, v123, 0, 0, 0);
          }

          FigSimpleMutexUnlock();
          FigSimpleMutexLock();
          playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer();
          if (!*(DerivedStorage + 1))
          {
            itemfig_configureDownloadForItem(a1, *(DerivedStorage + 1369), v104, v105, v106, v107, v108, v109, v113, v114, v115, v116, v117, v118, v119, *&valuePtr, v121, cf, v123, v124, *number, *&number[8], *&number[16], v126, values[0], values[1], values[2], values[3], values[4], values[5], values[6], values[7], values[8], values[9], values[10], values[11], values[12], values[13], values[14], values[15], v128, v129, v130, v131);
          }

          FigSimpleMutexUnlock();
          goto LABEL_162;
        }
      }

      goto LABEL_163;
    }

LABEL_99:
    v4 = 0;
    v5 = 4294954514;
    goto LABEL_6;
  }

  v20 = v19;
  FigSimpleMutexLock();
  v21 = *(v20 + 95);
  if (v21)
  {
    v22 = CFRetain(v21);
  }

  else
  {
    v22 = 0;
  }

  FigSimpleMutexUnlock();
  v117 = (v16 + 1024);
  v23 = FPSupport_BuildAlternateTrackGroups(*(v16 + 1008), (v16 + 1024));
  if (v23)
  {
    v5 = v23;
    if (v22)
    {
      goto LABEL_85;
    }

    goto LABEL_86;
  }

  v118 = v22;
  v24 = *(v20 + 206);
  if (v24 == 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = 4 * (v24 == 2);
  }

  if (v20[897])
  {
    v26 = v25 | 2;
  }

  else
  {
    v26 = v25;
  }

  FPSupport_GetDefaultTrackIDForMediaType(*(v16 + 1008), 1986618469, v16 + 1040, v26);
  itemfig_updateHasEnabledVideo();
  itemfig_updateListenersForVideoTrack(a1, *(v16 + 1040));
  v27 = *(v16 + 1048);
  if (v27 || (FPSupport_GetDefaultTrackIDForMediaType(*(v16 + 1008), 1668047728, v16 + 1048, 0), v27 = *(v16 + 1048), v27))
  {
    itemfig_hintTrackIfPreload(a1, v27);
  }

  v28 = (v16 + 1036);
  v29 = *(v16 + 1036);
  if (v29)
  {
    v30 = *(v16 + 1008);
    LODWORD(values[0]) = 0;
    v31 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v31 || (v31(v30, v29, 0, values), LODWORD(values[0]) != 1936684398))
    {
      LODWORD(valuePtr) = 0;
      HIBYTE(v124) = 0;
      v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v33 = LODWORD(valuePtr);
      if (os_log_type_enabled(v32, HIBYTE(v124)))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        v35 = *v28;
        *number = 136315394;
        *&number[4] = "itemfig_establishTrackIDs";
        *&number[12] = 1024;
        *&number[14] = v35;
        LODWORD(v114) = 18;
        v113 = number;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v28 = 0;
    }
  }

  v119 = v18;
  v36 = (v16 + 1056);
  v37 = *(v16 + 1056);
  if (v37)
  {
    v38 = *(v16 + 1008);
    LODWORD(values[0]) = 0;
    v39 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v39 || (v39(v38, v37, 0, values), LODWORD(values[0]) != 1935832172) && LODWORD(values[0]) != 1952807028)
    {
      LODWORD(valuePtr) = 0;
      HIBYTE(v124) = 0;
      v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v41 = LODWORD(valuePtr);
      if (os_log_type_enabled(v40, HIBYTE(v124)))
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 & 0xFFFFFFFE;
      }

      if (v42)
      {
        v43 = *v36;
        *number = 136315394;
        *&number[4] = "itemfig_establishTrackIDs";
        *&number[12] = 1024;
        *&number[14] = v43;
        LODWORD(v114) = 18;
        v113 = number;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v36 = 0;
    }
  }

  v44 = (v16 + 1080);
  v45 = *(v16 + 1080);
  if (v45)
  {
    v46 = *(v16 + 1008);
    LODWORD(values[0]) = 0;
    v47 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v47 || (v47(v46, v45, 0, values), LODWORD(values[0]) != 1751216244))
    {
      v116 = (v16 + 1036);
      LODWORD(valuePtr) = 0;
      HIBYTE(v124) = 0;
      v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v49 = LODWORD(valuePtr);
      if (os_log_type_enabled(v48, HIBYTE(v124)))
      {
        v50 = v49;
      }

      else
      {
        v50 = v49 & 0xFFFFFFFE;
      }

      if (v50)
      {
        v51 = *v44;
        *number = 136315394;
        *&number[4] = "itemfig_establishTrackIDs";
        *&number[12] = 1024;
        *&number[14] = v51;
        LODWORD(v114) = 18;
        v113 = number;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v44 = 0;
      v28 = (v16 + 1036);
    }
  }

  v22 = v118;
  if (!*v28)
  {
    FPSupport_GetDefaultTrackIDForMediaType(*(v16 + 1008), 1936684398, v28, 0);
    if (!*(v16 + 1036))
    {
      FPSupport_GetFirstEnabledTrackIDForMediaType(*(v16 + 1008), 1936684398, v28);
    }

    v52 = FPSupport_ChooseTrackIDsUsingPreferredLanguageLists(*v117, v118, @"Audio", v28);
    if (v52)
    {
      goto LABEL_173;
    }
  }

  if (!*v36)
  {
    FPSupport_GetDefaultTrackIDForMediaType(*(v16 + 1008), 1935832172, v16 + 1056, 0);
    if (!*(v16 + 1056))
    {
      FPSupport_GetDefaultTrackIDForMediaType(*(v16 + 1008), 1952807028, v16 + 1056, 0);
    }

    v52 = FPSupport_ChooseTrackIDsUsingPreferredLanguageLists(*v117, v118, @"Subtitle", (v16 + 1056));
    if (!v52)
    {
      v53 = *v36;
      if (v53)
      {
        itemfig_hintTrackIfPreload(a1, v53);
      }

      goto LABEL_78;
    }

LABEL_173:
    v5 = v52;
LABEL_80:
    v18 = v119;
    if (!v118)
    {
      goto LABEL_86;
    }

LABEL_85:
    CFRelease(v22);
    goto LABEL_86;
  }

LABEL_78:
  if (*v44)
  {
    v5 = 0;
    goto LABEL_80;
  }

  FPSupport_GetDefaultTrackIDForMediaType(*(v16 + 1008), 1751216244, v16 + 1080, 0);
  v54 = *(v16 + 1080);
  v18 = v119;
  if (v54)
  {
    itemfig_hintTrackIfPreload(a1, v54);
  }

  v5 = 0;
  if (v118)
  {
    goto LABEL_85;
  }

LABEL_86:
  CFRelease(v18);
  if (!v5)
  {
    goto LABEL_87;
  }

LABEL_164:
  v4 = 0;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v123)
  {
    CFRelease(v123);
  }

  if ((v4 & 1) == 0)
  {
    FigSimpleMutexUnlock();
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

void playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer()
{
  v76 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFArrayGetCount(*(DerivedStorage + 528)) < 1)
  {
    Mutable = 0;
  }

  else
  {
    v1 = CMBaseObjectGetDerivedStorage();
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    Count = CFArrayGetCount(*(v1 + 528));
    v4 = Count;
    if (*(v1 + 60))
    {
      v5 = *(v1 + 72) < 1;
    }

    else
    {
      v5 = 0;
    }

    if (Count >= 1)
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 528), v6);
        v8 = CMBaseObjectGetDerivedStorage();
        if (v5)
        {
          v15 = itemfig_configureDownloadForItem(ValueAtIndex, *(v8 + 1368), v9, v10, v11, v12, v13, v14, v43, v44, v45, v46, v47, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
          if (v15)
          {
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          v5 = v15 ^ 1;
        }

        else
        {
          itemfig_configureDownloadForItem(ValueAtIndex, 0, v9, v10, v11, v12, v13, v14, v43, v44, v45, v46, v47, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
          v5 = 0;
        }

        ++v6;
      }

      while (v4 != v6);
    }
  }

  v16 = *(DerivedStorage + 1200);
  if (!v16 || CFArrayGetCount(v16) < 1)
  {
    goto LABEL_49;
  }

  v17 = CMBaseObjectGetDerivedStorage();
  if (playerfig_getMaxSlotsForPrebuffering_sDidCheckDefaultsWrite == 1)
  {
    CFPreferenceBooleanWithDefault = playerfig_getMaxSlotsForPrebuffering_sMaxSlotsForPrebuffering;
    if (Mutable)
    {
LABEL_18:
      v20 = CFArrayGetCount(Mutable);
      goto LABEL_21;
    }
  }

  else
  {
    CFPreferenceBooleanWithDefault = FigGetCFPreferenceBooleanWithDefault();
    playerfig_getMaxSlotsForPrebuffering_sMaxSlotsForPrebuffering = CFPreferenceBooleanWithDefault;
    playerfig_getMaxSlotsForPrebuffering_sDidCheckDefaultsWrite = 1;
    if (Mutable)
    {
      goto LABEL_18;
    }
  }

  v20 = 0;
LABEL_21:
  v21 = CFPreferenceBooleanWithDefault - v20;
  v22 = *(v17 + 1200);
  if (v22)
  {
    v23 = CFArrayGetCount(v22);
  }

  else
  {
    v23 = 0;
  }

  if (dword_1EAF16A10)
  {
    HIDWORD(v51) = 0;
    BYTE3(v51) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v23 >= 1)
  {
    v25 = 0;
    *&v18 = 136316418;
    v48 = v18;
    do
    {
      v26 = CFArrayGetValueAtIndex(*(v17 + 1200), v25);
      v27 = CMBaseObjectGetDerivedStorage();
      if (!FigCFArrayContainsValue())
      {
        if (v21 <= 0)
        {
          v42 = *(v27 + 1376);
LABEL_42:
          if (v42)
          {
            itemfig_configureDownloadForItem(v26, 0, v28, v29, v30, v31, v32, v33, v43, v44, v45, v46, v48, *(&v48 + 1), v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
          }

          goto LABEL_44;
        }

        PlayableDurationAtCurrentTime = itemfig_getPlayableDurationAtCurrentTime(v26);
        v35 = CMBaseObjectGetDerivedStorage();
        v36 = CMBaseObjectGetDerivedStorage();
        v37 = *(v35 + 1192);
        v38 = *(v36 + 1424);
        if (v37 >= v38)
        {
          v39 = *(v36 + 1424);
        }

        else
        {
          v39 = *(v35 + 1192);
        }

        if (!v38)
        {
          v39 = *(v35 + 1192);
        }

        if (v37)
        {
          v40 = v39;
        }

        else
        {
          v40 = *(v36 + 1424);
        }

        v41 = v40;
        v42 = *(v27 + 1376);
        if (PlayableDurationAtCurrentTime > v41)
        {
          goto LABEL_42;
        }

        if (v42)
        {
          --v21;
        }

        else if (itemfig_configureDownloadForItem(v26, 1, v28, v29, v30, v31, v32, v33, v43, v44, v45, v46, v48, *(&v48 + 1), v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79))
        {
          --v21;
          if (dword_1EAF16A10)
          {
            HIDWORD(v51) = 0;
            BYTE3(v51) = 0;
            v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            HIDWORD(v45) = 0;
            os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }

LABEL_44:
      ++v25;
    }

    while (v23 != v25);
  }

LABEL_49:
  FigSimpleMutexUnlock();
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void itemfig_DeferredPostNotificationOnDispatchQueue(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  CFRelease(a2);
  if (a5)
  {

    CFRelease(a5);
  }
}

void itemfig_hintTrackIfPreload(uint64_t a1, uint64_t a2)
{
  v23[22] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23[0] = 0;
  v21 = 0;
  cf = 0;
  if (*(DerivedStorage + 128))
  {
    if (*(DerivedStorage + 1008))
    {
      CMByteStreamGetCMBaseObject();
      FigCRABSGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        v20 = 0;
        valuePtr = 0;
        v4 = *(DerivedStorage + 1008);
        v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v5)
        {
          if (!v5(v4, a2, v23, &v20))
          {
            FigBaseObject = FigTrackReaderGetFigBaseObject(v23[0]);
            v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v7)
            {
              if (!v7(FigBaseObject, @"TrackQTLoadSettings", *MEMORY[0x1E695E480], &cf) && cf != 0)
              {
                TypeID = CFDictionaryGetTypeID();
                if (TypeID == CFGetTypeID(cf))
                {
                  Value = CFDictionaryGetValue(cf, @"PreloadFlags");
                  if (Value)
                  {
                    v11 = Value;
                    v12 = CFNumberGetTypeID();
                    if (v12 == CFGetTypeID(v11) && CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr) && (valuePtr & 3) != 0)
                    {
                      v16 = 0;
                      v17 = 0;
                      v14 = 0;
                      v15 = 0;
                      if (!FigTrackReaderCopySampleCursorService(v23[0], &v22) && !FigSampleCursorServiceCreateCursorAtFirstSampleInDecodeOrder(v22, &v21) && !FigSampleCursorCopySampleLocation(v21, &v16, 0) && (itemfig_hintTrackIfPreload_cold_1(&v21, &v22, &v15, &v14) & 1) == 0)
                      {
                        if ((v15 - v16 + v14) > 0x80000)
                        {
                          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                          fig_log_call_emit_and_clean_up_after_send_and_compose();
                        }

                        else
                        {
                          v17 = v15 - v16 + v14;
                          FigCRABSHintActiveRanges(*(DerivedStorage + 128), 1, &v16);
                        }
                      }

                      if (v21)
                      {
                        CFRelease(v21);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        if (v22)
        {
          CFRelease(v22);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v23[0])
        {
          CFRelease(v23[0]);
        }
      }
    }
  }
}

uint64_t FigFormatReaderCopyTrackByID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 56);
  if (v11)
  {

    return v11(a1, a2, a3, a4);
  }

  return result;
}

uint64_t itemfig_getVideoMatrixRotationAngleAndFlips(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v10 = 0;
  FigBaseObject = FigPlaybackItemGetFigBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    return 0;
  }

  v6(FigBaseObject, @"VideoTrackMatrix", *MEMORY[0x1E695E480], &v10);
  if (!v10)
  {
    return 0;
  }

  FigGetCGAffineTransformFrom3x3MatrixArray(v10, v9);
  RotationAngleAndFlipsFromCGAffineTransform = FigGetRotationAngleAndFlipsFromCGAffineTransform(v9, a2, a3);
  CFRelease(v10);
  return RotationAngleAndFlipsFromCGAffineTransform;
}

uint64_t FigTrackReaderCopySampleCursorService(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigSampleCursorServiceCreateCursorAtFirstSampleInDecodeOrder(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigSampleCursorCopySampleLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3, 0, 0);
}

uint64_t FigSampleCursorServiceCreateCursorAtLastSampleInDecodeOrder(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

void itemfig_transferPendingTrackProperties(unsigned int a1, CFDictionaryRef theDict, uint64_t a3)
{
  v3[0] = a3;
  v3[1] = a1;
  CFDictionaryApplyFunction(theDict, itemfig_transferPendingTrackProperty, v3);
}

uint64_t fp_isValidAudioCurves(const void *a1)
{
  if (!a1)
  {
    return 1;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"AudioCurve_Volume");
  v20 = **&MEMORY[0x1E6960C80];
  if (Value)
  {
    v4 = Value;
    v5 = CFArrayGetTypeID();
    if (v5 != CFGetTypeID(v4))
    {
      return 0;
    }

    Count = CFArrayGetCount(v4);
    if (0xAAAAAAAAAAAAAAABLL * Count + 0x2AAAAAAAAAAAAAAALL > 0x5555555555555554)
    {
      return 0;
    }

    v8 = Count;
    if (Count >= 1)
    {
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v9);
        memset(&v19, 0, sizeof(v19));
        CMTimeMakeFromDictionary(&v19, ValueAtIndex);
        v11 = CFArrayGetValueAtIndex(v4, v9 + 1);
        v12 = v9 + 2;
        v13 = CFArrayGetValueAtIndex(v4, v12);
        if ((v19.flags & 0x1D) != 1)
        {
          break;
        }

        v14 = v13;
        time1 = v20;
        v17 = v19;
        if (CMTimeCompare(&time1, &v17) > 0)
        {
          break;
        }

        v20 = v19;
        v15 = CFNumberGetTypeID();
        if (v15 != CFGetTypeID(v11))
        {
          break;
        }

        if (!v14)
        {
          break;
        }

        v16 = CFGetTypeID(v14);
        if (v16 != CFStringGetTypeID())
        {
          break;
        }

        v9 = v12 + 1;
        if (v9 >= v8)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 1;
}

uint64_t itemfig_setTrackEnabled(uint64_t a1, uint64_t a2, char a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(a2 + 8) = a3;
  result = *(DerivedStorage + 352);
  if (result)
  {
    v7 = *a2;

    return FigPlaybackBossSetTrackEnableForStepping(result, v7, a3);
  }

  return result;
}

void itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 496) = 0;
  *(DerivedStorage + 1034) = 0;
  v4 = *(DerivedStorage + 512);
  if (v4)
  {
    CFRelease(v4);
  }

  ++*(DerivedStorage + 520);
  *(DerivedStorage + 512) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (DerivedStorage + 520));
  v5 = *(DerivedStorage + 540);
  *(DerivedStorage + 540) = a2;
  FigSimpleMutexUnlock();
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  v7 = v6;
  if (v6 && v5)
  {
    playerfig_postDeferredPrerollWasCancelledNotification(v6, v5);
  }

  else if (!v6)
  {
    return;
  }

  CFRelease(v7);
}

void playerfig_dispatchAsyncAutoSelectionCriteriaChangedForItem(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  v4 = *(DerivedStorage + 104);

  dispatch_async_f(v4, a2, itemfig_autoSelectionCriteriaChangedForItemAsync);
}

uint64_t itemfig_createUpdatedExtractionTable(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const __CFArray **a5)
{
  v6 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFArrayCreateMutableCopy();
  v8 = FigCFArrayCreateMutableCopy();
  v9 = v8;
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      v11 = Count;
      v12 = 0;
      do
      {
        CFArrayGetValueAtIndex(v9, v12);
        SInt32 = FigCFNumberCreateSInt32();
        if (MutableCopy)
        {
          v14.length = CFArrayGetCount(MutableCopy);
        }

        else
        {
          v14.length = 0;
        }

        v14.location = 0;
        CountOfValue = CFArrayGetCountOfValue(MutableCopy, v14, SInt32);
        if (CountOfValue == 1)
        {
          v31.length = CFArrayGetCount(MutableCopy);
          v31.location = 0;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(MutableCopy, v31, SInt32);
          if (FirstIndexOfValue == -1)
          {
            itemfig_createUpdatedExtractionTable_cold_1(&time);
            value_low = LODWORD(time.value);
            goto LABEL_31;
          }

          CFArrayRemoveValueAtIndex(MutableCopy, FirstIndexOfValue);
          ++v12;
          if (!SInt32)
          {
            continue;
          }
        }

        else
        {
          if (CountOfValue)
          {
            value_low = FigSignalErrorAtGM();
            goto LABEL_31;
          }

          CFArrayRemoveValueAtIndex(v9, v12);
          --v11;
          if (!SInt32)
          {
            continue;
          }
        }

        CFRelease(SInt32);
      }

      while (v12 < v11);
    }
  }

  v28 = a5;
  if (!MutableCopy || (v17 = CFArrayGetCount(MutableCopy), v17 < 1))
  {
LABEL_30:
    SInt32 = 0;
    value_low = 0;
    *v28 = v9;
    v9 = 0;
    goto LABEL_31;
  }

  v18 = v17;
  v19 = 0;
  v20 = MEMORY[0x1E6960C70];
  while (1)
  {
    FigCFArrayGetInt32AtIndex();
    if (_MergedGlobals_226 != -1)
    {
      itemfig_createUpdatedExtractionTable_cold_2();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      break;
    }

    if (itemfig_createUpdatedExtractionTable_cold_3())
    {
      value_low = LODWORD(time.value);
      goto LABEL_40;
    }

LABEL_26:
    if (v18 == ++v19)
    {
      goto LABEL_30;
    }
  }

  v22 = Instance;
  *(Instance + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v22 + 24) = a2;
  *(v22 + 28) = 0;
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v24 = CMBufferQueueCreate(v6, 0, CallbacksForUnsortedSampleBuffers, (v22 + 32));
  if (!v24)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v24 = FigNotificationCenterAddWeakListener();
    if (!v24)
    {
      v25 = *(v22 + 32);
      time = *v20;
      v24 = CMBufferQueueInstallTrigger(v25, trackExtraction_dataBecameReady, v22, 7, &time, (v22 + 40));
      if (!v24)
      {
        CFArrayAppendValue(v9, v22);
        CFRelease(v22);
        goto LABEL_26;
      }
    }
  }

  value_low = v24;
  CFRelease(v22);
LABEL_40:
  SInt32 = 0;
LABEL_31:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  return value_low;
}

void playerfig_postDeferredPrerollWasCancelledNotification(uint64_t a1, int a2)
{
  valuePtr = a2;
  CMBaseObjectGetDerivedStorage();
  v2 = *MEMORY[0x1E695E480];
  cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v3 = CFDictionaryCreate(v2, &kFigPlayerParameter_PrerollID, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t itemfig_copyCombinedLoudnessInfoDictionary(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  v20 = 0;
  v21 = 0;
  if (a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    TrackStorage = itemfig_getTrackStorage(a1, a2, &v20);
    v8 = v20;
    v9 = *MEMORY[0x1E695E480];
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v11 = MutableCopy;
      if (!CFDictionaryContainsKey(MutableCopy, @"precalculated sc adjustment"))
      {
        v12 = *(DerivedStorage + 1488);
        if (v12 != 0.0)
        {
          __exp10((v12 / 20.0));
          FigCFDictionarySetFloat32();
        }
      }

      if (!CFDictionaryContainsKey(v11, @"media kind"))
      {
        v13 = *(DerivedStorage + 1496);
        if (v13)
        {
          CFDictionarySetValue(v11, @"media kind", v13);
        }
      }

      if (v8)
      {
        cf = 0;
        v14 = *(DerivedStorage + 1256);
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v15)
        {
          v15(v14, a2, &cf);
          if (cf)
          {
            CMBaseObject = FigAssetTrackGetCMBaseObject(cf);
            v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v17)
            {
              v17(CMBaseObject, @"LoudnessInfo", v9, &v21);
            }

            CFRelease(cf);
          }
        }
      }

      if (FigCFDictionaryGetCount() >= 1)
      {
        FigCFDictionaryAddEntriesToDictionaryWithRecursion();
      }

      if (CFDictionaryGetCount(v11) < 1)
      {
        CFRelease(v11);
      }

      else
      {
        *a3 = v11;
      }
    }

    else
    {
      TrackStorage = FigSignalErrorAtGM();
    }
  }

  else
  {
    itemfig_copyCombinedLoudnessInfoDictionary_cold_1(&cf);
    TrackStorage = cf;
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return TrackStorage;
}

void trackExtraction_ResetOutput()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    CFRelease(v1);
  }
}

void trackExtraction_dataBecameReady()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    CFRelease(v1);
  }
}

uint64_t trackExtraction_RegisterCFType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double trackExtraction_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void trackExtraction_Finalize(uint64_t a1)
{
  if (*(a1 + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v2 = *(a1 + 40);
    if (v2)
    {
      CMBufferQueueRemoveTrigger(*(a1 + 32), v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 32) = 0;
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 16) = 0;
  }
}

__CFString *trackExtraction_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"FigFigPlaybackItemTrackExtraction %p trackID %d extractionID %d bufferQueue %@ renderPipeline %@", a1, *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 48));
  return Mutable;
}

Float64 itemfig_getPlayableDurationAtCurrentTime(uint64_t a1)
{
  v2 = *MEMORY[0x1E6960CC0];
  v9.epoch = *(MEMORY[0x1E6960CC0] + 16);
  v3 = *(MEMORY[0x1E6960CA8] + 16);
  *&v8.start.value = *MEMORY[0x1E6960CA8];
  *&v8.start.epoch = v3;
  *&v8.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
  *&v9.value = v2;
  itemfig_getNonNegativeCurrentTime(a1, &v9);
  range.start = v9;
  itemfig_getPlayableRangeAtTime(a1, &range.start, &v8);
  range = v8;
  time = v9;
  if (!CMTimeRangeContainsTime(&range, &time))
  {
    return 0.0;
  }

  memset(&time, 0, sizeof(time));
  range = v8;
  CMTimeRangeGetEnd(&lhs, &range);
  range.start = v9;
  CMTimeSubtract(&time, &lhs, &range.start);
  range.start = time;
  return CMTimeGetSeconds(&range.start);
}

uint64_t itemfig_getCombinedPreferredMaximumBufferDuration()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 1192);
  v3 = *(v1 + 1424);
  if (v2 >= v3)
  {
    v4 = *(v1 + 1424);
  }

  else
  {
    v4 = *(DerivedStorage + 1192);
  }

  if (!v3)
  {
    v4 = *(DerivedStorage + 1192);
  }

  if (v2)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

double itemfig_getNonNegativeCurrentTime(uint64_t a1, CMTime *a2)
{
  v8 = **&MEMORY[0x1E6960C70];
  itemfig_GetCurrentTime(a1, &v8);
  v3 = MEMORY[0x1E6960CC0];
  if ((v8.flags & 0x1D) != 1 || (time1 = v8, v6 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &v6) < 0))
  {
    v4 = *v3;
    v8 = *v3;
  }

  if (a2)
  {
    *&v4 = v8.value;
    *a2 = v8;
  }

  return *&v4;
}

double itemfig_getPlayableRangeAtTime(uint64_t a1, CMTime *a2, _OWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v16.value = *MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  v16.epoch = v7;
  v11 = *&v16.value;
  *&v15.value = *&v16.value;
  v15.epoch = v7;
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 600);
  if (v8)
  {
    FigPlayabilityMonitorGetPlayableRange(v8, &v16, &v15);
  }

  else if (*(DerivedStorage + 352))
  {
    itemfig_getDurationIfReady(a1, &v15);
  }

  FigSimpleMutexUnlock();
  time1.start = v15;
  *&time2.value = v11;
  time2.epoch = v7;
  if (!CMTimeCompare(&time1.start, &time2) || (time1.start = v16, time2 = *a2, CMTimeCompare(&time1.start, &time2) > 0) || (time2 = v16, rhs = v15, CMTimeAdd(&time1.start, &time2, &rhs), time2 = *a2, CMTimeCompare(&time2, &time1.start) >= 1))
  {
    v16 = *a2;
    result = *&v11;
    *&v15.value = v11;
    v15.epoch = v7;
  }

  if (a3)
  {
    time2 = v16;
    rhs = v15;
    CMTimeRangeMake(&time1, &time2, &rhs);
    v10 = *&time1.start.epoch;
    *a3 = *&time1.start.value;
    a3[1] = v10;
    result = *&time1.duration.timescale;
    a3[2] = *&time1.duration.timescale;
  }

  return result;
}

uint64_t itemfig_HintStreamForTimeRange(uint64_t a1, __int128 *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = xmmword_196E72730;
  v5 = MEMORY[0x1E6960C70];
  v22 = 0;
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if ((*(a2 + 12) & 1) == 0 || (*(a2 + 36) & 1) == 0 || *(a2 + 5) || (*(a2 + 3) & 0x8000000000000000) != 0)
  {
    itemfig_HintStreamForTimeRange_cold_1();
    return 0;
  }

  v6 = DerivedStorage;
  v20 = *a2;
  v21 = *(a2 + 2);
  *&time1[0].start.value = *(a2 + 24);
  time1[0].start.epoch = *(a2 + 5);
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1[0].start, &time2))
  {
    v7 = a2[1];
    *&time1[0].start.value = *a2;
    *&time1[0].start.epoch = v7;
    *&time1[0].duration.timescale = a2[2];
    CMTimeRangeGetEnd(&time2, time1);
    v8 = 0;
    v9 = 0;
    value = time2.value;
    flags = time2.flags;
    timescale = time2.timescale;
    epoch = time2.epoch;
  }

  else
  {
    flags = *(v5 + 12);
    epoch = *(v5 + 16);
    v8 = 1;
    *(&v23 + 1) = 1;
    v9 = 2;
  }

  result = *(v6 + 128);
  if (result)
  {
    CMByteStreamGetCMBaseObject();
    FigCRABSGetClassID();
    result = CMBaseObjectIsMemberOfClass();
    if (result)
    {
      v13 = *(v6 + 1036);
      if (v13)
      {
        *&time1[0].start.value = v20;
        time1[0].start.epoch = v21;
        if (itemfig_getTrackHintLocationForTime(a1, v13, time1, &v22))
        {
          v14 = v22;
          *&v23 = v22;
        }

        else
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if ((flags & 0x1D) == 1)
        {
          v18 = *(v6 + 1036);
          time1[0].start.value = value;
          time1[0].start.timescale = timescale;
          time1[0].start.flags = flags;
          time1[0].start.epoch = epoch;
          if (itemfig_getTrackHintLocationForTime(a1, v18, time1, &v22))
          {
            if (v22 > v14)
            {
              *(&v23 + 1) = v22 - v14;
              v8 = v22 - v14;
            }
          }
        }
      }

      else
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v15 = *(v6 + 1040);
      if (v15)
      {
        *&time1[0].start.value = v20;
        time1[0].start.epoch = v21;
        if (itemfig_getTrackHintLocationForTime(a1, v15, time1, &v22) && v14 > v22)
        {
          *&v23 = v22;
          v14 = v22;
        }

        if ((flags & 0x1D) == 1)
        {
          v17 = *(v6 + 1040);
          time1[0].start.value = value;
          time1[0].start.timescale = timescale;
          time1[0].start.flags = flags;
          time1[0].start.epoch = epoch;
          if (itemfig_getTrackHintLocationForTime(a1, v17, time1, &v22))
          {
            if (v8 + v14 < v22)
            {
              v8 = v22 - v14;
              *(&v23 + 1) = v22 - v14;
            }
          }
        }
      }

      result = 0;
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v8)
        {
          if (dword_1EAF16A10)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (!FigCRABSHintActiveRanges(*(v6 + 128), v9, &v23))
          {
            return 1;
          }

          v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          return 0;
        }
      }
    }
  }

  return result;
}

void playerfig_resetSubtitleRenderPipeline()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0x7FFFFFFF;
  target = 0;
  if (*(DerivedStorage + 608))
  {
    v1 = DerivedStorage;
    values = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (values)
    {
      v2 = *MEMORY[0x1E695E480];
      v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E6960580], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v3)
      {
        v4 = CMSampleBufferCreate(v2, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &target);
        v5 = target;
        if (!v4)
        {
          CMSetAttachment(target, *MEMORY[0x1E6960518], values, 1u);
          cf = 0;
          FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v1 + 608));
          v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v7)
          {
            if (!v7(FigBaseObject, @"SourceSampleBufferQueue", v2, &cf) && cf != 0)
            {
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
              CMBufferQueueEnqueue(cf, target);
              CFRelease(cf);
            }
          }

          v5 = target;
        }

        if (v5)
        {
          CFRelease(v5);
          target = 0;
        }
      }

      else
      {
        FigSignalErrorAtGM();
      }
    }

    else
    {
      FigSignalErrorAtGM();
      v3 = 0;
    }

    if (values)
    {
      CFRelease(values);
      values = 0;
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }
}

void itemfig_isEC3PassthroughSupported()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t itemfig_isTrackAC3(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v13 = 0;
  v3 = *(CMBaseObjectGetDerivedStorage() + 1008);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = v4(v3, a2, &cf, &v13);
  v6 = cf;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v13 == 1936684398;
  }

  if (!v7)
  {
    v8 = 0;
    if (!cf)
    {
      return v8;
    }

    goto LABEL_20;
  }

  desc = 0;
  if (itemfig_copyFormatDescription(cf, &desc))
  {
LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  v8 = desc;
  if (!desc)
  {
    goto LABEL_19;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  CFRelease(v8);
  v8 = 1;
  if (MediaSubType > 1885430578)
  {
    if (MediaSubType != 1885430579 && MediaSubType != 1902207795)
    {
      v10 = 2053202739;
LABEL_17:
      if (MediaSubType == v10)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if (MediaSubType != 1633889587 && MediaSubType != 1667312947)
  {
    v10 = 1667326771;
    goto LABEL_17;
  }

LABEL_19:
  v6 = cf;
  if (cf)
  {
LABEL_20:
    CFRelease(v6);
  }

  return v8;
}

uint64_t itemfig_isTrackEnhancedAC3(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v13 = 0;
  v3 = *(CMBaseObjectGetDerivedStorage() + 1008);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = v4(v3, a2, &cf, &v13);
  v6 = cf;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v13 == 1936684398;
  }

  if (!v7)
  {
    v8 = 0;
    if (!cf)
    {
      return v8;
    }

    goto LABEL_19;
  }

  desc = 0;
  if (itemfig_copyFormatDescription(cf, &desc))
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v8 = desc;
  if (!desc)
  {
    goto LABEL_18;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  CFRelease(v8);
  v8 = 1;
  if (MediaSubType <= 1885692722)
  {
    if (MediaSubType == 1667575091)
    {
      goto LABEL_18;
    }

    v10 = 1700998451;
LABEL_16:
    if (MediaSubType == v10)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (MediaSubType != 1885692723 && MediaSubType != 1902469939)
  {
    v10 = 2053464883;
    goto LABEL_16;
  }

LABEL_18:
  v6 = cf;
  if (cf)
  {
LABEL_19:
    CFRelease(v6);
  }

  return v8;
}

uint64_t itemfig_isTrackAtmos(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v18 = 0;
  v3 = *(CMBaseObjectGetDerivedStorage() + 1008);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = v4(v3, a2, &cf, &v18);
  v6 = cf;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v18 == 1936684398;
  }

  if (!v7)
  {
    v10 = 0;
    if (!cf)
    {
      return v10;
    }

    goto LABEL_39;
  }

  desc = 0;
  if (itemfig_copyFormatDescription(cf, &desc))
  {
    v10 = 0;
    goto LABEL_38;
  }

  v8 = desc;
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  v10 = 1;
  if (MediaSubType <= 1885692722)
  {
    if (MediaSubType > 1700997938)
    {
      if (MediaSubType == 1700997939)
      {
        goto LABEL_36;
      }

      if (MediaSubType != 1700998451)
      {
        v11 = 1885547315;
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    if (MediaSubType == 1667574579)
    {
      goto LABEL_36;
    }

    v12 = 1667575091;
LABEL_20:
    if (MediaSubType != v12)
    {
LABEL_35:
      v10 = 0;
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if (MediaSubType > 1902469938)
  {
    if (MediaSubType == 2053464883)
    {
      goto LABEL_26;
    }

    if (MediaSubType == 2053319475)
    {
      goto LABEL_36;
    }

    v12 = 1902469939;
    goto LABEL_20;
  }

  if (MediaSubType != 1885692723)
  {
    v11 = 1902324531;
LABEL_24:
    if (MediaSubType == v11)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_26:
  sizeOut = 0;
  FormatList = CMAudioFormatDescriptionGetFormatList(v8, &sizeOut);
  v10 = 0;
  if (FormatList && sizeOut >= 0x30)
  {
    mFormatID = FormatList->mASBD.mFormatID;
    v10 = 1;
    if (mFormatID <= 1885547314)
    {
      if (mFormatID == 1667574579)
      {
        goto LABEL_36;
      }

      v15 = 1700997939;
LABEL_34:
      if (mFormatID == v15)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (mFormatID != 1885547315 && mFormatID != 1902324531)
    {
      v15 = 2053319475;
      goto LABEL_34;
    }
  }

LABEL_36:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_38:
  v6 = cf;
  if (cf)
  {
LABEL_39:
    CFRelease(v6);
  }

  return v10;
}

uint64_t itemfig_getMaximumNumberOfSpatializedOutputChannels(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = 2;
  CMBaseObjectGetDerivedStorage();
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    playerfig_getDeviceMaximumNumberOfPhysicalOutputChannels();
    v7 = v6;
    if (!v6)
    {
      itemfig_getMaximumNumberOfSpatializedOutputChannels_cold_1(a1, &v9, a2, &v10);
    }

    CFRelease(v5);
  }

  else
  {
    itemfig_getMaximumNumberOfSpatializedOutputChannels_cold_2(&v11);
    return v11;
  }

  return v7;
}

uint64_t FigAudioSessionCopyMXSessionProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(CMBaseObjectGetVTable() + 16);
  if (!v8)
  {
    return 4294948075;
  }

  v9 = *(v8 + 48);
  if (!v9)
  {
    return 4294948071;
  }

  return v9(a1, a2, a3, a4);
}

uint64_t itemfig_canTrackPassthrough(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v12 = 0;
  v3 = *(CMBaseObjectGetDerivedStorage() + 1008);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = v4(v3, a2, &cf, &v12);
  v6 = cf;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v12 == 1936684398;
  }

  if (!v7)
  {
    IsPassthroughSupported = 0;
    if (!cf)
    {
      return IsPassthroughSupported;
    }

    goto LABEL_13;
  }

  v11 = 0;
  if (itemfig_copyFormatDescription(cf, &v11) || (v8 = v11) == 0)
  {
    IsPassthroughSupported = 0;
  }

  else
  {
    IsPassthroughSupported = FigAudioQueueRenderPipelineIsPassthroughSupported(v11);
    CFRelease(v8);
  }

  v6 = cf;
  if (cf)
  {
LABEL_13:
    CFRelease(v6);
  }

  return IsPassthroughSupported;
}

uint64_t playerfig_isMATAtmosEnabled()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 472);
  if (!v1)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v2 = CFRetain(v1);
  FigSimpleMutexUnlock();
  if (!v2)
  {
    return 0;
  }

  cf = 0;
  v3 = *(CMBaseObjectGetVTable() + 16);
  if (v3 && (v4 = *(v3 + 48)) != 0)
  {
    if (v4(v2, *MEMORY[0x1E69B0108], *MEMORY[0x1E695E480], &cf))
    {
      v5 = 0;
    }

    else
    {
      v5 = cf == *MEMORY[0x1E695E4D0];
    }

    v6 = v5;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v2);
  return v6;
}

uint64_t fp_bufferedAirPlayActiveAndSupportsAtmos(uint64_t a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = 0;
  }

  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 176);
  if (v4)
  {
    CFRetain(*(DerivedStorage + 176));
    FigSimpleMutexUnlock();
    v9 = 0;
    if (a2)
    {
      CMBaseObject = FigBufferedAirPlayOutputGetCMBaseObject(v4);
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        v6(CMBaseObject, @"AtmosIsSupported", *MEMORY[0x1E695E480], &v9);
        v7 = v9;
      }

      else
      {
        v7 = 0;
      }

      if (v7 == *MEMORY[0x1E695E4D0])
      {
        *a2 = 1;
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    CFRelease(v4);
    return 1;
  }

  else
  {
    FigSimpleMutexUnlock();
    return 0;
  }
}

uint64_t itemfig_getTrackAudioChannelCount(uint64_t a1, uint64_t a2, int a3)
{
  cf = 0;
  v14 = 0;
  v5 = *(CMBaseObjectGetDerivedStorage() + 1008);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    return 2;
  }

  v7 = v6(v5, a2, &cf, &v14);
  v8 = cf;
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v14 == 1936684398;
  }

  if (!v9)
  {
    CodecOutputChannelCount = 2;
    if (!cf)
    {
      return CodecOutputChannelCount;
    }

    goto LABEL_17;
  }

  v13 = 0;
  if (itemfig_copyFormatDescription(cf, &v13) || (v10 = v13) == 0)
  {
    CodecOutputChannelCount = 2;
  }

  else
  {
    if (a3 && FigAudioFormatDescriptionRequiresImmersiveRendering())
    {
      CodecOutputChannelCount = 0x7FFFFFFFLL;
    }

    else
    {
      CodecOutputChannelCount = FigAudioFormatDescriptionGetCodecOutputChannelCount();
    }

    CFRelease(v10);
  }

  v8 = cf;
  if (cf)
  {
LABEL_17:
    CFRelease(v8);
  }

  return CodecOutputChannelCount;
}

uint64_t itemfig_applyAudioSceneCompositionPresetToTrack(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (!v1)
  {
    return 0;
  }

  result = *(a1 + 16);
  if (result)
  {
    FigBaseObject = FigRenderPipelineGetFigBaseObject(result);
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v4)
    {

      return v4(FigBaseObject, @"SceneCompositionPreset", v1);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

double itemfig_accumulateFrameDropCountFromAllVideoPipelines(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemfig_getFrameDropCountFromAllVideoPipelines(a1, DerivedStorage + 216);
  DerivedStorage[214] += DerivedStorage[216] - DerivedStorage[215];
  result = 0.0;
  *(DerivedStorage + 215) = 0u;
  return result;
}

void itemfig_updateAccessLogEntry(float a1)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 352);
  if (v3)
  {
    if (a1 != 0.0 && *(DerivedStorage + 1737) == 0)
    {
      memset(&v7, 0, sizeof(v7));
      FigPlaybackBossGetTime(v3, &v7);
      Seconds = 0.0;
      if (v7.flags)
      {
        v6 = v7;
        Seconds = CMTimeGetSeconds(&v6);
      }

      *(DerivedStorage + 1576) = Seconds;
      *(DerivedStorage + 1737) = 1;
    }

    if (a1 == 0.0)
    {
      if (!*(DerivedStorage + 1736))
      {
        return;
      }
    }

    else
    {
      *(DerivedStorage + 1736) = 1;
    }

    if (*(DerivedStorage + 1592) != 0.0)
    {
      *(DerivedStorage + 1584) = *(DerivedStorage + 1584) + (CFAbsoluteTimeGetCurrent() - *(DerivedStorage + 1592)) * fabsf(*(DerivedStorage + 1648));
      *(DerivedStorage + 1592) = 0;
    }

    if (a1 != 0.0)
    {
      *(DerivedStorage + 1592) = CFAbsoluteTimeGetCurrent();
    }

    *(DerivedStorage + 1648) = a1;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }
}

CMTime *itemfig_reportingAgentReportPlayStartMovieTime()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v2, 0, sizeof(v2));
  result = CMTimebaseGetTime(&v2, *(DerivedStorage + 328));
  if (v2.flags)
  {
    return itemfig_reportingAgentReportPlayStartMovieTime_cold_1(DerivedStorage);
  }

  return result;
}

uint64_t itemfig_setEndTimeOnBoss()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 140);
  v5 = *(DerivedStorage + 156);
  result = *(DerivedStorage + 352);
  if (result)
  {
    if (*(DerivedStorage + 2128))
    {
      CFDataGetLength(*(DerivedStorage + 2128));
      CFDataGetBytePtr(*(DerivedStorage + 2128));
      v2 = v4;
      v3 = v5;
      CMSpeedRampMapTimeFromTargetToSource();
      result = *(DerivedStorage + 352);
    }

    v2 = v4;
    v3 = v5;
    return FigPlaybackBossSetEndTime(result, &v2);
  }

  return result;
}

uint64_t itemfig_unregisterAndDestroyPlayabilityMonitorNotification()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemfig_unregisterPlayabilityMonitorNotification();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 600);
  if (v1)
  {
    FigPlayabilityMonitorDestroy(v1);
    *(DerivedStorage + 600) = 0;
  }

  return FigSimpleMutexUnlock();
}

void itemfig_registerPlayabilityMonitorNotification(const void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 600) || *(DerivedStorage + 608))
  {

    FigSimpleMutexUnlock();
    return;
  }

  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  v14 = 0;
  v13 = 0;
  FigNotificationCenterAddWeakListener();
  FigNotificationCenterAddWeakListener();
  FigNotificationCenterAddWeakListener();
  FigNotificationCenterAddWeakListener();
  FigNotificationCenterAddWeakListener();
  *(DerivedStorage + 608) = 1;
  PlaythroughInfo = FigPlayabilityMonitorGetPlaythroughInfo(*(DerivedStorage + 600), &v14, &v13, 0);
  FigSimpleMutexUnlock();
  if (PlaythroughInfo)
  {
    return;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      if (dword_1EAF16A10)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      itemfig_UnlikelyToKeepUp(DefaultLocalCenter, a1);
      goto LABEL_24;
    }

    if (v14 == 3)
    {
      if (dword_1EAF16A10)
      {
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      itemfig_StallWarning(DefaultLocalCenter, a1);
      goto LABEL_24;
    }
  }

  else
  {
    if (!v14)
    {
      goto LABEL_24;
    }

    if (v14 == 1)
    {
      PlayableDurationAtCurrentTime = itemfig_getPlayableDurationAtCurrentTime(a1);
      DurationDictionary = itemfig_createDurationDictionary(PlayableDurationAtCurrentTime);
      if (dword_1EAF16A10)
      {
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      itemfig_LikelyToKeepUp(DefaultLocalCenter, a1);
      if (DurationDictionary)
      {
        CFRelease(DurationDictionary);
      }

      goto LABEL_24;
    }
  }

  v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_24:
  if (v13)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    itemfig_PlayableRangeChanged(DefaultLocalCenter, a1, 0x1F0B21338, 0, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    if (dword_1EAF16A10)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    itemfig_BufferFull(DefaultLocalCenter, a1);
  }
}

uint64_t itemfig_handleOutOfBandTrackPlaybackFailed()
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

void itemfig_handleOutOfBandTrackSubtitleChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v12 = 0;
  if (a5)
  {
    if (!*DerivedStorage)
    {
      v7 = CMBaseObjectGetDerivedStorage();
      if (!*v7)
      {
        v8 = v7;
        FigSubtitleSampleCreateFromPropertyList(a5, &cf, &v12, 0, 0);
        v9 = cf;
        if (v8[720])
        {
          v10 = 0;
        }

        else
        {
          v10 = v12 == 0;
        }

        v11 = !v10 || cf == 0;
        if (!v11 || (CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterPostNotification(), (v9 = cf) != 0))
        {
          CFRelease(v9);
        }
      }
    }
  }
}

uint64_t itemfig_buildOutOfBandTrackControllerOptions(uint64_t a1, __CFDictionary **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    itemfig_buildOutOfBandTrackControllerOptions_cold_2(&number);
    return number;
  }

  v4 = DerivedStorage;
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    itemfig_buildOutOfBandTrackControllerOptions_cold_1(&number);
    return number;
  }

  v7 = Mutable;
  v8 = *(v4 + 112);
  if (v8)
  {
    CFDictionarySetValue(Mutable, @"ReferenceSecurityPolicyFlagBaseURL", v8);
  }

  v9 = CMBaseObjectGetDerivedStorage();
  number = 0;
  CMBaseObject = FigAssetGetCMBaseObject(*(v9 + 1256));
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11(CMBaseObject, @"assetProperty_CreationFlags", v5, &number);
  v13 = number;
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = number == 0;
  }

  if (v14)
  {
    v15 = 0;
    if (number)
    {
LABEL_14:
      CFRelease(v13);
    }
  }

  else
  {
    v17 = 0;
    CFNumberGetValue(number, kCFNumberSInt64Type, &v17);
    v15 = (v17 >> 1) & 0x1E;
    v13 = number;
    if (number)
    {
      goto LABEL_14;
    }
  }

  if (v15)
  {
    FigCFDictionarySetInt32();
  }

LABEL_17:
  if (a2)
  {
    result = 0;
    *a2 = v7;
  }

  else
  {
    CFRelease(v7);
    return 0;
  }

  return result;
}

uint64_t itemfig_synchronizeOOBSController(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    if (a2)
    {
      result = *(result + 1904);
      if (result)
      {
        if ((*(a2 + 4) & 3) != 0)
        {
          v4 = *(a2 + 8);
          v7 = *(a2 + 16);
          v8 = *(a2 + 32);
          v5 = *(a2 + 40);
          v6 = *(a2 + 56);
          return FigOutOfBandTrackControllerSetRateAndAnchorTime(result, &v7, &v5, v4);
        }
      }
    }
  }

  return result;
}

uint64_t itemfig_setMuted(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = *(DerivedStorage + 352);
  if (!v6)
  {
    v7 = 0;
    if (!v5)
    {
      return v7;
    }

LABEL_5:
    playerfig_updateResourceUsageOnGlobalResourceArbiter(v5, a1);
    CFRelease(v5);
    return v7;
  }

  v7 = FigPlaybackBossSetMuted(v6, a2);
  if (v5)
  {
    goto LABEL_5;
  }

  return v7;
}

uint64_t playerfig_removeAudioRenderPipelineListeners(uint64_t a1, uint64_t a2)
{
  if (a2)
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
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

void itemfig_updateVolumeOffset(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && *(DerivedStorage + 1240))
  {
    v3 = *(DerivedStorage + 1036);
    if (v3)
    {
      itemfig_updateVolumeOffset_cold_1(a1, v3, DerivedStorage);
    }
  }
}

uint64_t itemfig_applyAdjustTargetLevel()
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    return itemfig_applyAdjustTargetLevel_cold_1();
  }

  return result;
}

uint64_t itemfig_applyAdjustCompressionProfile()
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    return itemfig_applyAdjustCompressionProfile_cold_1();
  }

  return result;
}

uint64_t playerfig_determineAudioProcessingTapRoles(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  *a3 = 0;
  *a4 = 0;
  v5 = *(result + 88);
  if (v5)
  {
    goto LABEL_2;
  }

  v7 = *(a2 + 1480);
  if (v7)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v9)
    {
      result = v9(v7);
      if (result)
      {
        v5 = *(a2 + 1480);
LABEL_2:
        *a3 = v5;
        return result;
      }
    }

    result = _os_feature_enabled_impl();
    if (result)
    {
      *a4 = *(a2 + 1480);
    }
  }

  return result;
}

void itemfig_resetRenderTriple(uint64_t a1)
{
  *a1 = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }
}

uint64_t itemfig_reuseExistingRenderPipeline(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v4 = result;
      v5 = 0;
      while (1)
      {
        result = CFArrayGetValueAtIndex(v3, v5);
        if (*result == *a2)
        {
          v6 = result;
          if (*(result + 16) == *(a2 + 16))
          {
            result = FigCFEqual();
            if (result)
            {
              v7 = *(v6 + 24);
              if (v7)
              {
                break;
              }
            }
          }
        }

        if (v4 == ++v5)
        {
          return result;
        }
      }

      v8 = *(v6 + 32);
      *(a2 + 24) = v7;
      *(a2 + 32) = v8;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
    }
  }

  return result;
}

BOOL playerfig_UpdateAudioSessionPreferredDeviceFormat()
{
  v36 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 472);
  if (!v1)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v2 = CFRetain(v1);
  FigSimpleMutexUnlock();
  if (!v2)
  {
    return 0;
  }

  v3 = *(CMBaseObjectGetVTable() + 16);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v3 + 48);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *MEMORY[0x1E69B01E8];
  if (v4(v2, *MEMORY[0x1E69B01E8], *MEMORY[0x1E695E480], &cf))
  {
    goto LABEL_9;
  }

  if (CFArrayGetCount(*(DerivedStorage + 528)) >= 1 && *(DerivedStorage + 60) == 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
    v14 = CMBaseObjectGetDerivedStorage();
    if (!itemfig_assureBasicsReadyForInspection(ValueAtIndex))
    {
      v15 = *(v14 + 1036);
      if (v15)
      {
        isTrackAC3 = itemfig_isTrackAC3(ValueAtIndex, v15);
        isTrackAtmos = itemfig_isTrackAtmos(ValueAtIndex, *(v14 + 1036));
        isTrackDecodable = itemfig_isTrackDecodable(ValueAtIndex, *(v14 + 1036));
        isAC3PassthroughSupported = itemfig_isAC3PassthroughSupported();
        v35[0] = 0;
        MaximumNumberOfSpatializedOutputChannels = itemfig_getMaximumNumberOfSpatializedOutputChannels(ValueAtIndex, v35);
        v20 = v35[0];
        isMATAtmosEnabled = playerfig_isMATAtmosEnabled();
        canTrackPassthrough = itemfig_canTrackPassthrough(ValueAtIndex, *(v14 + 1036));
        v23 = !isTrackDecodable;
        if (MaximumNumberOfSpatializedOutputChannels)
        {
          v24 = 1;
        }

        else
        {
          v24 = v20 < 3;
        }

        if (v24)
        {
          v23 = 1;
        }

        if (!isTrackAC3)
        {
          v23 = 0;
        }

        if (!canTrackPassthrough)
        {
          v23 = 0;
        }

        v26 = !v23 || isAC3PassthroughSupported == 0;
        v25 = MEMORY[0x1E69AF7F8];
        if (!v26)
        {
          v25 = MEMORY[0x1E69AF7F0];
        }

        if (isMATAtmosEnabled)
        {
          v26 = isTrackAtmos == 0;
        }

        else
        {
          v26 = 1;
        }

        if (!v26 && isTrackDecodable)
        {
          v25 = MEMORY[0x1E69AF800];
        }

        v33 = *v25;
        if (dword_1EAF16A10 >= 2)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v29 = *(CMBaseObjectGetVTable() + 16);
        if (v29)
        {
          v30 = *(v29 + 56);
          if (v30)
          {
            if (!v30(v2, v5, v33))
            {
              v12 = FigCFEqual();
              goto LABEL_20;
            }
          }
        }

        v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v6 = *MEMORY[0x1E69AF7F8];
  if (FigCFEqual())
  {
    goto LABEL_9;
  }

  if (dword_1EAF16A10 >= 2)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = *(CMBaseObjectGetVTable() + 16);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = *(v10 + 56);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v11(v2, v5, v6);
LABEL_20:
  v7 = v12 == 0;
LABEL_10:
  CFRelease(v2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t playerfig_UpdateAudioSessionPreferredDeviceSampleRate()
{
  sizeOut[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v19 = 0;
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 472);
  if (!v1)
  {
    FigSimpleMutexUnlock();
    goto LABEL_11;
  }

  v2 = CFRetain(v1);
  FigSimpleMutexUnlock();
  if (!v2)
  {
LABEL_11:
    v3 = 0;
    goto LABEL_12;
  }

  if (CFArrayGetCount(*(DerivedStorage + 528)) < 1)
  {
    goto LABEL_4;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
  v7 = CMBaseObjectGetDerivedStorage();
  if (itemfig_assureBasicsReadyForInspection(ValueAtIndex))
  {
    goto LABEL_4;
  }

  v3 = *(v7 + 1036);
  if (!v3)
  {
    goto LABEL_5;
  }

  v8 = *(v7 + 1008);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v9 || v9(v8, v3, &cf, 0) || itemfig_copyFormatDescription(cf, &v19))
  {
LABEL_4:
    v3 = 0;
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v10 = v19;
  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(v19);
  if (!RichestDecodableFormat)
  {
    if (itemfig_isTrackAC3(ValueAtIndex, *(v7 + 1036)))
    {
      sizeOut[0] = 0;
      FormatList = CMAudioFormatDescriptionGetFormatList(v10, sizeOut);
      if (FormatList && sizeOut[0])
      {
        RichestDecodableFormat = FormatList;
        goto LABEL_25;
      }

      playerfig_UpdateAudioSessionPreferredDeviceSampleRate_cold_1();
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_4;
  }

LABEL_25:
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, RichestDecodableFormat);
  if (*(DerivedStorage + 1136))
  {
    if (dword_1EAF16A10 < 2)
    {
LABEL_36:
      v3 = 0;
      goto LABEL_6;
    }

LABEL_35:
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_36;
  }

  if (dword_1EAF16A10 >= 2)
  {
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = *(CMBaseObjectGetVTable() + 16);
  if (!v15)
  {
    goto LABEL_35;
  }

  v16 = *(v15 + 56);
  if (!v16 || v16(v2, *MEMORY[0x1E69B0210], v4))
  {
    goto LABEL_35;
  }

  v3 = 1;
LABEL_6:
  CFRelease(v2);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

LABEL_12:
  if (v19)
  {
    CFRelease(v19);
  }

  return v3;
}

uint64_t playerfig_UpdateAudioSessionPreferredNumberOfAudioOutputChannels()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 472);
  if (v1)
  {
    v2 = CFRetain(v1);
    FigSimpleMutexUnlock();
    if (v2)
    {
      if (CFArrayGetCount(*(DerivedStorage + 528)) >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
        v5 = CMBaseObjectGetDerivedStorage();
        if (!itemfig_assureBasicsReadyForInspection(ValueAtIndex))
        {
          v6 = *(v5 + 1036);
          if (v6)
          {
            itemfig_getTrackAudioChannelCount(ValueAtIndex, v6, 1);
            playerfig_getDeviceMaximumNumberOfPhysicalOutputChannels();
            if (!v7 && dword_1EAF16A10 >= 2)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }

      CFRelease(v2);
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t itemfig_renderTripleCopy(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 40, 0x1060040B0787B42, 0);
  *v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *(v3 + 8) = v4;
  *(v3 + 16) = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *(v3 + 24) = v5;
  v6 = *(a2 + 32);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  *(v3 + 32) = v6;
  return v3;
}

void itemfig_renderTripleRelease(CFAllocatorRef allocator, void *ptr)
{
  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = ptr[4];
  if (v6)
  {
    CFRelease(v6);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

__CFString *itemfig_renderTripleCopyDescription(unsigned int *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = FigCFCopyCompactDescription();
  v4 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"<RenderTriple: %p trackID: %d extractionID: %d renderPipeline: %@ options: %@>", a1, *a1, a1[4], v3, v4);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

uint64_t itemfig_renderTripleEqual(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[4] != a2[4])
  {
    return 0;
  }

  result = FigCFEqual();
  if (result)
  {
    result = FigCFEqual();
    if (result)
    {
      return FigCFEqual() != 0;
    }
  }

  return result;
}

void playerfig_AudioDecoderError(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*DerivedStorage)
    {
      if (*(DerivedStorage + 536))
      {
        if (!*(DerivedStorage + 592) || a5 && (v8 = CFGetTypeID(a5), v8 == CFDictionaryGetTypeID()) && (v9 = CFDictionaryGetValue(a5, @"OSStatus")) != 0 && (v10 = v9, v11 = CFGetTypeID(v9), v11 == CFNumberGetTypeID()) && (valuePtr = 0, CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr), (valuePtr + 41999) >= 0xFFFFFC18))
        {
          Value = FigCFDictionaryGetValue();
          playerfig_TryFailingCurrentItemForRenderPipelineError(a2, Value);
        }
      }
    }
  }
}

uint64_t playerfig_latencyChanged()
{
  CMBaseObjectGetDerivedStorage();

  return FigDeferNotificationToDispatchQueue();
}

uint64_t playerfig_renderPipelineWantsRebuildToIncreaseFidelity(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  return FigDeferNotificationToDispatchQueue();
}

uint64_t playerfig_renderPipelineDeviceHasDisconnected(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  return FigDeferNotificationToDispatchQueue();
}

uint64_t playerfig_TryFailingCurrentItemForRenderPipelineError(const void *a1, const __CFNumber *a2)
{
  FailedNotificationPayloadWithContentStream = a2;
  v15 = *MEMORY[0x1E69E9840];
  values = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigSimpleMutexTryLock();
  if (!result)
  {
    return result;
  }

  if (CFArrayGetCount(*(DerivedStorage + 528)) <= 0)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
  CFRetain(ValueAtIndex);
  FigSimpleMutexUnlock();
  if (!ValueAtIndex)
  {
    return 0;
  }

  v7 = MEMORY[0x1E695E480];
  if (FailedNotificationPayloadWithContentStream)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(FailedNotificationPayloadWithContentStream))
    {
      v9 = CMBaseObjectGetDerivedStorage();
      if (*v9)
      {
        FailedNotificationPayloadWithContentStream = CFDictionaryCreate(*v7, &kFigPlaybackItemParameter_Result, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      else
      {
        v11 = v9;
        valuePtr[0] = 0;
        CFNumberGetValue(FailedNotificationPayloadWithContentStream, kCFNumberSInt32Type, valuePtr);
        FailedNotificationPayloadWithContentStream = itemfig_createFailedNotificationPayloadWithContentStream(v11[16], FailedNotificationPayloadWithContentStream);
        Value = CFDictionaryGetValue(FailedNotificationPayloadWithContentStream, @"CFError");
        itemfig_reportingAgentReportError(ValueAtIndex, Value, @"CoreMediaErrorDomain", @"Failed to play to end due to render pipeline error", valuePtr[0]);
      }
    }

    else
    {
      FailedNotificationPayloadWithContentStream = 0;
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (a1)
  {
    CFRetain(a1);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  dispatch_get_global_queue(0, 0);
  FigDeferNotificationToDispatchQueue();
  if (FailedNotificationPayloadWithContentStream)
  {
    CFRelease(FailedNotificationPayloadWithContentStream);
  }

  return 1;
}

void itemfig_reportingAgentReportError(uint64_t a1, __CFError *a2, CFErrorDomain a3, CFStringRef a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v11 = DerivedStorage;
    if (a2)
    {
      v12 = CFErrorCopyDescription(a2);
      Domain = CFErrorGetDomain(a2);
    }

    else
    {
      v12 = 0;
      Domain = 0;
    }

    v22 = 0;
    if (a1)
    {
      itemfig_reportingAgentReportError_cold_1(a1, &v22, a2);
    }

    FigSimpleMutexLock();
    v14 = *(v11 + 1952);
    if (Domain)
    {
      a3 = Domain;
    }

    if (v14)
    {
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v15)
      {
        v15(v14, @"playerStats", 0x1F0B65A98, a3, 0);
      }
    }

    v16 = *(v11 + 1952);
    if (v12)
    {
      a4 = v12;
    }

    if (v16)
    {
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v17)
      {
        v17(v16, @"playerStats", 0x1F0B65A78, a4, 0);
      }

      v18 = *(v11 + 1952);
      if (v18)
      {
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v19)
        {
          v19(v18, @"playerStats", 0x1F0B65A58, a5, 0);
        }

        v20 = *(v11 + 1952);
        if (v20)
        {
          v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v21)
          {
            v21(v20, @"playerStats", 307, 0, 0);
          }
        }
      }
    }

    FigSimpleMutexUnlock();
    if (v12)
    {
      CFRelease(v12);
    }
  }
}

void itemfig_playbackFailed(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  if (!*DerivedStorage)
  {
    v5 = CMBaseObjectGetDerivedStorage();
    if (!*v5)
    {
      v6 = v5;
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      v7 = *(v6 + 204);
      Count = CFArrayGetCount(v6[66]);
      if (FigPlaybackGetEffectiveActionAtEnd(v7, Count))
      {
        v9 = *(v6 + 204);
        v10 = CFArrayGetCount(v6[66]);
        if (FigPlaybackGetEffectiveActionAtEnd(v9, v10) == 1)
        {
          playerfig_pauseForInternalReason(v4, 3u);
        }
      }

      else
      {
        itemfig_removeFromPlayQueueIfAdvanceAtEnd(a2);
      }
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (a2)
  {

    CFRelease(a2);
  }
}

void itemfig_removeFromPlayQueueIfAdvanceAtEnd(const void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  v4 = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10)
  {
    v8 = 0;
    v7[1] = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v3)
  {
    v6 = *DerivedStorage == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7[0] = 0;
    FigSimpleMutexLock();
    if (DerivedStorage[1] && !*(v4 + 816))
    {
      playerfig_gracefullyRemoveItemFromPlayQueue(v3, a1, 0, 0, 1, v7);
    }

    FigSimpleMutexUnlock();
    if (v7[0])
    {
      v11 = *MEMORY[0x1E6960C70];
      v12 = *(MEMORY[0x1E6960C70] + 16);
      v9 = v11;
      v10 = v12;
      playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
      playerfig_postDeferredCurrentItemDidChangeNotificationWithReason();
    }

    playerfig_updatePlaybackStateAndBossRate(v3, 7, 0);
    goto LABEL_14;
  }

  if (v3)
  {
LABEL_14:
    CFRelease(v3);
  }
}

uint64_t playerfig_pauseForInternalReason(uint64_t a1, unsigned int a2)
{
  valuePtr = 0.0;
  v4 = *MEMORY[0x1E695E480];
  cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  if (cf)
  {
    v5 = CFDictionaryCreate(v4, &kFigPlayerParameter_Remote_NewRate, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v5)
    {
      v6 = v5;
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CFRelease(v6);
    }

    CFRelease(cf);
  }

  return playerfig_setRateForReason(a1, a2, 0, valuePtr);
}

uint64_t playerfig_updatePlaybackStateAndBossRate(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  v13 = 0;
  v12 = 0.0;
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 57))
  {
    a3 |= 2u;
  }

  v7 = 0.0;
  if (*(DerivedStorage + 52) == 4)
  {
    v7 = *(DerivedStorage + 48);
  }

  PlaythroughPrediction = itemfig_getPlaythroughPrediction(*(DerivedStorage + 536));
  if (playerfig_getNextPlaybackState(a1, *(DerivedStorage + 48), a2, *(DerivedStorage + 52), 0, *(DerivedStorage + 536) != 0, *(DerivedStorage + 56), a3, PlaythroughPrediction, &v14, (DerivedStorage + 56), &v13, &v12))
  {
    return FigSimpleMutexUnlock();
  }

  if (playerfig_enterPlaybackState(a1, v14))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = FigSimpleMutexUnlock();
  if (v13)
  {
    result = playerfig_setBossRateWithFade(a1, a2, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v12, v7);
    if (result)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

void itemfig_postSeekWasCanceledNotification(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  values = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    itemfig_postSeekWasCanceledNotification_cold_1();
  }

  else
  {
    v5 = *MEMORY[0x1E695E480];
    values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (values)
    {
      v6 = CFDictionaryCreate(v5, &kFigPlaybackItemParameter_SeekID, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v6)
      {
        v7 = v6;
        CMNotificationCenterGetDefaultLocalCenter();
        if (a4)
        {
          FigDispatchAsyncPostNotification();
        }

        else
        {
          CMNotificationCenterPostNotification();
        }

        if (dword_1EAF16A10)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CFRelease(v7);
      }

      else
      {
        itemfig_postSeekWasCanceledNotification_cold_2();
      }
    }

    else
    {
      itemfig_postSeekWasCanceledNotification_cold_3();
    }
  }

  if (values)
  {
    CFRelease(values);
  }
}

void itemfig_removeAllImageQueues(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    v5 = *(DerivedStorage + 1144);
    if (*(CMBaseObjectGetDerivedStorage() + 224) < 1)
    {
      FigSimpleMutexLock();
      v6 = *(DerivedStorage + 1152);
      if (v6)
      {
        *(DerivedStorage + 1152) = 0;
      }

      v7 = *(DerivedStorage + 1144);
      if (v7)
      {
        CFRelease(v7);
        *(DerivedStorage + 1144) = 0;
      }

      FigSimpleMutexUnlock();
      if (v6)
      {
        FPSupport_DeleteCASlotsInArray(v6);
        CFRelease(v6);
      }
    }

    else
    {
      itemfig_stashTransitionImageQueuesAndSlots();
    }

    itemfig_clearAllImageQueueTables(a1);
    itemfig_handleReadyToDisplayVideoLatch(a1, 1, 0);
    if (v5)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }

    CFRelease(v4);
  }
}

uint64_t playerfig_freeTransitionImageQueueAndSlot()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 872);
  if (v1)
  {
    FPSupport_DeleteCASlotsInArray(v1);
    v2 = *(DerivedStorage + 872);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 872) = 0;
    }
  }

  v3 = *(DerivedStorage + 864);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 864) = 0;
  }

  return FigSimpleMutexUnlock();
}

void itemfig_clearAllImageQueueTables(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 648);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 648), i);
          itemfig_clearTrackImageQueueTable(a1, ValueAtIndex);
        }
      }
    }
  }
}

uint64_t playerfig_clearVideoLayers(const __CFArray *a1, char a2, uint64_t a3)
{
  cf = 0;
  if (!FigUseVideoReceiverForCALayer())
  {
    v6 = objc_autoreleasePoolPush();
    if (a1 && CFArrayGetCount(a1) >= 1)
    {
      if (!a3)
      {
        v7 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf);
        if (v7)
        {
          v8 = v7;
          goto LABEL_9;
        }

        LODWORD(a3) = cf;
      }

      FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(a3, a1, a2);
    }

    v8 = 0;
LABEL_9:
    objc_autoreleasePoolPop(v6);
    v9 = cf;
    goto LABEL_10;
  }

  playerfig_clearVideoLayers_cold_1(&v12);
  v9 = 0;
  v8 = v12;
LABEL_10:
  FigDeferredTransactionCommit(v9, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

void playeritemfig_releaseVideoCompositionObjects()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 832);
  if (v1)
  {
    Count = CFArrayGetCount(v1);
  }

  else
  {
    Count = 0;
  }

  v3 = *(DerivedStorage + 352);
  if (v3)
  {
    FigPlaybackBossSetVideoCompositionProcessor(v3, 0);
  }

  itemfig_removeImageQueueListenersForObsoleteImageQueues();
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 832), i);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v6)
      {
        v6(ValueAtIndex, 0, 0);
      }
    }
  }

  if (*(DerivedStorage + 824))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    FigVideoCompositionProcessorInvalidate(*(DerivedStorage + 824));
    v7 = *(DerivedStorage + 824);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 824) = 0;
    }
  }

  v8 = *(DerivedStorage + 832);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 832) = 0;
  }

  v9 = *(DerivedStorage + 840);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 840) = 0;
  }

  v10 = *(DerivedStorage + 864);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 864) = 0;
  }

  v11 = *(DerivedStorage + 856);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 856) = 0;
  }

  v12 = *(DerivedStorage + 872);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 872) = 0;
  }

  FigImageQueueTableRemoveAllValues(*(DerivedStorage + 848));
  v13 = *(DerivedStorage + 848);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 848) = 0;
  }
}

void itemfig_ExternalProtectionStatusChangedGuts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  v10 = v3;
  if (*DerivedStorage)
  {
    v11 = 1;
  }

  else
  {
    v11 = v3 == 0;
  }

  if (v11)
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    itemfig_ExternalProtectionStatusChangedGuts_cold_1(v3, a1, v4, v5, v6, v7, v8, v9);
  }

  CFRelease(v10);
}

void itemfig_clearCoordinatedPlaybackSynchronizationTimebase()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 344))
  {
    v1 = DerivedStorage;
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (dword_1EAF16A10)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v2)
    {
      CFRelease(v2);
    }

    v4 = *(v1 + 344);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 344) = 0;
    }
  }
}

void itemfig_releaseAIMEDataAndAllAIMEDataChannelResources()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFDictionaryGetCount())
  {
    v1 = FigCFDictionaryCopyArrayOfValues();
    if (v1)
    {
      v2 = v1;
      if (CFArrayGetCount(v1) >= 1)
      {
        v3 = 0;
        do
        {
          CFArrayGetValueAtIndex(v2, v3);
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListener();
          ++v3;
        }

        while (v3 < CFArrayGetCount(v2));
      }

      CFRelease(v2);
    }
  }

  FigCFDictionaryRemoveAllValues();
  v4 = *(DerivedStorage + 1120);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 1120) = 0;
  }
}

__CFString *fp_copyPlayQueueDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  Count = CFArrayGetCount(*(DerivedStorage + 528));
  if (Count >= 1)
  {
    v4 = Count;
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), v5);
      v7 = CMBaseObjectGetDerivedStorage();
      v8 = v7;
      if (*(v7 + 488))
      {
        v9 = CFStringCreateWithFormat(v1, 0, @", gapless transition %@", *(v7 + 488));
      }

      else
      {
        if (ValueAtIndex == *(DerivedStorage + 536) || !*(v7 + 480))
        {
          v10 = &stru_1F0B1AFB8;
        }

        else
        {
          v10 = @", no gapless transition";
        }

        v9 = CFRetain(v10);
      }

      v11 = v9;
      if (ValueAtIndex)
      {
        v12 = (CMBaseObjectGetDerivedStorage() + 2096);
      }

      else
      {
        v12 = "";
      }

      ++v5;
      v13 = " ";
      if (v5 >= v4)
      {
        v13 = "";
      }

      CFStringAppendFormat(Mutable, 0, @"item %p %s (boss %p%@)%s", ValueAtIndex, v12, *(v8 + 352), v11, v13);
      if (v11)
      {
        CFRelease(v11);
      }
    }

    while (v4 != v5);
  }

  return Mutable;
}

uint64_t itemfig_unregisterPlayabilityMonitor()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemfig_unregisterPlayabilityMonitorNotification();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 600);
  if (v1)
  {
    FigPlayabilityMonitorSetRenderPipelines(v1, 0, 0);
    FigPlayabilityMonitorSetPlaybackTimebase(*(DerivedStorage + 600), 0);
  }

  return FigSimpleMutexUnlock();
}

void itemfig_storeItemPerformanceDataIfGathering(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  IsPlayerPerformanceTraceEnabled = FPSupport_IsPlayerPerformanceTraceEnabled();
  if (v2)
  {
    if (*DerivedStorage)
    {
      itemfig_storeItemPerformanceDataIfGathering_cold_1();
    }

    else
    {
      v5 = IsPlayerPerformanceTraceEnabled;
      if (*(DerivedStorage + 852) | IsPlayerPerformanceTraceEnabled)
      {
        if (!*(DerivedStorage + 852) || *(DerivedStorage + 856) || (v6 = CFGetAllocator(v2), Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]), (*(DerivedStorage + 856) = Mutable) != 0))
        {
          v8 = itemfig_gatherItemPerformanceData(a1, 1, &value);
          v9 = value;
          if (!v8 && value)
          {
            if (*(DerivedStorage + 852))
            {
              CFArrayAppendValue(*(DerivedStorage + 856), value);
              v9 = value;
            }

            if (v5)
            {
              FPSupport_TracePlayerPerformanceDictionary("File", v9);
              v9 = value;
            }
          }

          if (v9)
          {
            CFRelease(v9);
          }
        }

        else
        {
          FigSignalErrorAtGM();
        }
      }
    }

    CFRelease(v2);
  }

  else
  {
    itemfig_storeItemPerformanceDataIfGathering_cold_2();
  }
}

uint64_t itemfig_updateStartHostTimeEstimate(const void *a1, const void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = CMBaseObjectGetDerivedStorage();
  if (!v5)
  {
    itemfig_updateStartHostTimeEstimate_cold_2(&time1);
    return LODWORD(time1.value);
  }

  v7 = v6;
  v8 = MEMORY[0x1E6960C70];
  v9 = *MEMORY[0x1E6960C70];
  v57 = *MEMORY[0x1E6960C70];
  v10 = *(MEMORY[0x1E6960C70] + 8);
  v58 = v10;
  v11 = *(v6 + 528);
  if (v11 && CFArrayGetCount(v11) >= 1 && CFArrayGetValueAtIndex(*(v7 + 528), 0) == a1)
  {
    if (*(v7 + 52) || *(v7 + 59))
    {
      v57 = v9;
      v58 = v10;
      v15 = *(v8 + 3);
      v16 = *(v8 + 2);
      goto LABEL_43;
    }

LABEL_42:
    v57 = *MEMORY[0x1E6960C88];
    v15 = *(MEMORY[0x1E6960C88] + 12);
    v58 = *(MEMORY[0x1E6960C88] + 8);
    v16 = *(MEMORY[0x1E6960C88] + 16);
LABEL_43:
    time1.value = v57;
    time1.timescale = v58;
    time1.flags = v15;
    time1.epoch = v16;
    time2 = *(DerivedStorage + 212);
    if (CMTimeCompare(&time1, &time2))
    {
      if ((v15 & 0x1D) != 1 || (*(DerivedStorage + 224) & 0x1D) != 1 || (time1.value = v57, time1.timescale = v58, time1.flags = v15, time1.epoch = v16, v52 = *(DerivedStorage + 212), CMTimeSubtract(&time2, &time1, &v52), CMTimeAbsoluteValue(&time1, &time2), CMTimeMake(&time2, 1, 2), (CMTimeCompare(&time1, &time2) & 0x80000000) == 0))
      {
        *(DerivedStorage + 212) = v57;
        *(DerivedStorage + 220) = v58;
        *(DerivedStorage + 224) = v15;
        *(DerivedStorage + 228) = v16;
        v39 = *(DerivedStorage + 632);
        if (v39)
        {
          time1.value = v57;
          time1.timescale = v58;
          time1.flags = v15;
          time1.epoch = v16;
          FigNetworkUrgencyMonitorSetEstimatedStartTime(v39);
        }
      }
    }

    value_low = 0;
    goto LABEL_50;
  }

  if (!*(DerivedStorage + 1))
  {
    goto LABEL_42;
  }

  if (a2)
  {
    v12 = CMBaseObjectGetDerivedStorage();
    v13 = FigCFWeakReferenceHolderCopyReferencedObject();
    v14 = CMBaseObjectGetDerivedStorage();
    v55 = *MEMORY[0x1E6960C88];
    v15 = *(MEMORY[0x1E6960C88] + 12);
    v56 = *(MEMORY[0x1E6960C88] + 8);
    v16 = *(MEMORY[0x1E6960C88] + 16);
    v17 = *v8;
    *&v49.value = *v8;
    v18 = *(v8 + 2);
    v49.epoch = v18;
    if (!v13)
    {
LABEL_38:
      v57 = v55;
      v58 = v56;
      goto LABEL_43;
    }

    v19 = v14;
    v45 = v17;
    cf = v13;
    v20 = *(v14 + 816);
    Count = CFArrayGetCount(*(v14 + 528));
    if (FigPlaybackGetEffectiveActionAtEnd(v20, Count) || (v22 = *(v19 + 48), v22 == 0.0))
    {
LABEL_37:
      CFRelease(cf);
      goto LABEL_38;
    }

    value = *(v12 + 188);
    v23 = *(v12 + 200);
    timescale = *(v12 + 196);
    epoch = *(v12 + 204);
    if (v22 <= 0.0)
    {
      if (v22 < 0.0)
      {
        v25 = *(v12 + 176);
        if ((v25 & 0x1D) == 1)
        {
          if ((v23 & 0x1D) != 1 || (time1 = *(v12 + 164), time2.value = *(v12 + 188), time2.timescale = *(v12 + 196), time2.flags = v23, time2.epoch = epoch, v26 = CMTimeCompare(&time1, &time2), v25 = *(v12 + 176), v26 >= 1))
          {
            value = *(v12 + 164);
            timescale = *(v12 + 172);
            epoch = *(v12 + 180);
            v23 = v25;
          }
        }

        if ((v25 & 0x1D) != 1)
        {
          v27 = MEMORY[0x1E6960CC0];
          if ((v23 & 0x1D) != 1 || (time1 = **&MEMORY[0x1E6960CC0], time2.value = value, time2.timescale = timescale, time2.flags = v23, time2.epoch = epoch, CMTimeCompare(&time1, &time2) >= 1))
          {
            value = *v27;
            v23 = *(v27 + 12);
            timescale = *(v27 + 8);
            epoch = *(v27 + 16);
          }
        }
      }

      goto LABEL_20;
    }

    itemfig_getDurationIfReady(a2, &v49);
    v42 = *(v12 + 152);
    if ((v42 & 0x1D) == 1)
    {
      if ((v23 & 0x1D) != 1 || (time1 = *(v12 + 140), time2.value = value, time2.timescale = timescale, time2.flags = v23, time2.epoch = epoch, v43 = CMTimeCompare(&time1, &time2), v42 = *(v12 + 152), v43 < 0))
      {
        value = *(v12 + 140);
        timescale = *(v12 + 148);
        epoch = *(v12 + 156);
        v23 = v42;
      }
    }

    if ((v42 & 0x1D) == 1)
    {
      goto LABEL_20;
    }

    flags = v49.flags;
    if ((v49.flags & 0x1D) != 1)
    {
      goto LABEL_20;
    }

    if ((v23 & 0x1D) == 1)
    {
      time1 = v49;
      time2.value = value;
      time2.timescale = timescale;
      time2.flags = v23;
      time2.epoch = epoch;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      flags = v49.flags;
    }

    value = v49.value;
    timescale = v49.timescale;
    epoch = v49.epoch;
    v23 = flags;
LABEL_20:
    if ((v23 & 0x1D) == 1)
    {
      v28 = epoch;
      v29 = CMBaseObjectGetDerivedStorage();
      v30 = FigCFWeakReferenceHolderCopyReferencedObject();
      v31 = CMBaseObjectGetDerivedStorage();
      *&v48.value = *MEMORY[0x1E6960C88];
      v48.epoch = v16;
      if (v30)
      {
        v32 = v31;
        time1 = *(v29 + 212);
        *&time2.value = v45;
        time2.epoch = v18;
        *&v52.value = v45;
        v52.epoch = v18;
        v33 = *(v31 + 48);
        if (v33 != 0.0 && *(v31 + 52) == 4)
        {
          v34 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v34)
          {
            v34(a2, &time2);
          }

          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = v23;
          lhs.epoch = v28;
          rhs = time2;
          CMTimeSubtract(&v52, &lhs, &rhs);
          v35 = *(v29 + 352);
          if (v35)
          {
            Rate = FigPlaybackBossGetRate(v35);
            if (Rate != 0.0)
            {
              v33 = Rate;
            }
          }

          rhs = v52;
          CMTimeMultiplyByFloat64(&lhs, &rhs, 1.0 / v33);
          v52 = lhs;
          v46 = *MEMORY[0x1E6960CC0];
          *&rhs.value = *MEMORY[0x1E6960CC0];
          v37 = *(MEMORY[0x1E6960CC0] + 16);
          rhs.epoch = v37;
          if (CMTimeCompare(&lhs, &rhs) < 0)
          {
            *&v52.value = v46;
            v52.epoch = v37;
          }

          if (CFArrayGetCount(*(v32 + 528)) >= 1 && CFArrayGetValueAtIndex(*(v32 + 528), 0) == a2)
          {
            HostTimeClock = CMClockGetHostTimeClock();
            CMClockGetTime(&time1, HostTimeClock);
          }

          lhs = time1;
          rhs = v52;
          CMTimeAdd(&v48, &lhs, &rhs);
        }

        CFRelease(v30);
      }

      v55 = v48.value;
      v15 = v48.flags;
      v56 = v48.timescale;
      v16 = v48.epoch;
    }

    goto LABEL_37;
  }

  itemfig_updateStartHostTimeEstimate_cold_1(&time1);
  value_low = LODWORD(time1.value);
LABEL_50:
  CFRelease(v5);
  return value_low;
}