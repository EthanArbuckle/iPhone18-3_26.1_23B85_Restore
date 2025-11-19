uint64_t FigMPEG2VideoFrameEmit(uint64_t a1, uint64_t a2)
{
  memset(&v37, 0, sizeof(v37));
  memset(&v36, 0, sizeof(v36));
  v4 = *(a1 + 8);
  v5 = *(v4 + 100);
  if (v5)
  {
    if (!*(a2 + 49))
    {
      fig_log_get_emitter();
      appended = FigSignalErrorAtGM();
LABEL_22:
      v22 = appended;
      goto LABEL_33;
    }

    if (v5 != 1)
    {
      if (*(a1 + 658))
      {
        v6 = *(a2 + 32);
      }

      else
      {
        v6 = *(a2 + 32);
        if ((v6 & 0x100000000) != 0 && !*(*a1 + 64) && 0x200000000 - v6 < *(v4 + 160))
        {
          *(a1 + 712) -= 0x200000000;
          v6 -= 0x200000000;
          *(a2 + 24) -= 0x200000000;
          *(a2 + 32) = v6;
        }
      }

      *(a1 + 658) = 1;
      *(a1 + 688) = v6;
      v7 = *(a2 + 24);
      *(a1 + 696) = v7;
      OUTLINED_FUNCTION_3_67(v7, &v37);
      v8 = *(a2 + 32);
      if (*(a2 + 24) == v8)
      {
        OUTLINED_FUNCTION_2_91();
      }

      else
      {
        OUTLINED_FUNCTION_3_67(v8, &v36);
      }

      v9 = *(a1 + 696);
      if (*(a1 + 704) < v9)
      {
        *(a1 + 704) = v9;
      }

      goto LABEL_20;
    }

    goto LABEL_7;
  }

  if (*(a2 + 49))
  {
LABEL_7:
    OUTLINED_FUNCTION_3_67(*(a2 + 24), &v37);
    if (*(a2 + 50))
    {
      OUTLINED_FUNCTION_3_67(*(a2 + 32), &v36);
    }

    else
    {
      OUTLINED_FUNCTION_2_91();
    }

    goto LABEL_20;
  }

  v36 = **&MEMORY[0x1E6960C70];
  v37 = v36;
LABEL_20:
  v10 = *(a1 + 84);
  if (v10)
  {
    v11 = **(a1 + 8);
    v12 = *(a1 + 60);
    v13 = *(a1 + 104);
    v14 = *(a2 + 56);
    v15 = *(a2 + 80);
    v16 = *(a2 + 40);
    v17 = *(a2 + 88);
    v18 = *(a2 + 104);
    v19 = *(a2 + 112);
    v20 = *(a2 + 120);
    v35 = v37;
    v34 = v36;
    appended = v10(v11, v12, v13, v14, &v35, &v34, v15, v16, v17, v18, v19, v20);
    if (appended)
    {
      goto LABEL_22;
    }
  }

  v23 = *(a2 + 64);
  if (v23)
  {
    v24 = 0;
    do
    {
      v25 = v23[2];
      if (v24)
      {
        DataLength = CMBlockBufferGetDataLength(v23[2]);
        appended = CMBlockBufferAppendBufferReference(v24, v25, 0, DataLength, 0);
        if (appended)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v24 = v23[2];
      }

      v23 = *v23;
    }

    while (v23);
    if (v24)
    {
      v27 = *(a1 + 72);
      v28 = *(v27 + 84);
      v29 = **(a1 + 8);
      v30 = *(v27 + 60);
      v31 = *(v27 + 104);
      v32 = *(a2 + 40);
      v35 = v37;
      v34 = v36;
      appended = v28(v29, v30, v31, v24, &v35, &v34, 0, v32, 0, 0, 0, 0);
      if (appended)
      {
        goto LABEL_22;
      }
    }
  }

  v22 = 0;
LABEL_33:
  if (*(a2 + 145))
  {
    FrameQueueEntryDestroy(a2);
  }

  return v22;
}

uint64_t FigMPEG2VideoFrameEnqueue(uint64_t a1, uint64_t a2)
{
  Retainable = FrameQueueEntryMakeRetainable(a1, a2);
  if (!Retainable)
  {
    return 12;
  }

  v4 = *(a1 + 792);
  *Retainable = 0;
  Retainable[1] = v4;
  *v4 = Retainable;
  *(a1 + 792) = Retainable;
  LODWORD(v4) = *(a1 + 812) + 1;
  *(a1 + 812) = v4;
  if (v4 < 0x41)
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigMPEG2VideoCombineFields(uint64_t a1, uint64_t a2, uint64_t a3)
{
  valuePtr = CMBlockBufferGetDataLength(*(a2 + 56));
  PesFrameHeaderAppendList((a2 + 88), (a3 + 88), valuePtr);
  appended = CMBlockBufferAppendBufferReference(*(a2 + 56), *(a3 + 56), 0, 0, 0);
  if (!appended)
  {
    v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CMSetAttachment(*(a2 + 56), @"ByteOffsetToSecondField", v6, 1u);
      CFRelease(v7);
    }

    if (!*(a2 + 64))
    {
      for (i = *(a3 + 64); i; i = *(a3 + 64))
      {
        v9 = *i;
        v10 = i[1];
        v11 = (*i + 8);
        if (!*i)
        {
          v11 = (a3 + 72);
        }

        *v11 = v10;
        *v10 = v9;
        v12 = *(a2 + 72);
        *i = 0;
        i[1] = v12;
        *v12 = i;
        *(a2 + 72) = i;
      }
    }

    v13 = *(a2 + 80);
    v14 = *(a3 + 80);
    if (v13 != v14)
    {
      v15 = v14 | v13;
      if ((v15 & 8) != 0)
      {
        v16 = -1557;
      }

      else
      {
        v16 = -1553;
      }

      v17 = v16 & v15;
      if ((v15 & 0x10) != 0)
      {
        v18 = v15 & 0xFFFFF9F3;
      }

      else
      {
        v18 = v17;
      }

      *(a2 + 80) = v18 | *(a2 + 80) & 0x600;
    }

    v19 = *(a2 + 148);
    if (v19)
    {
      *(a3 + 148) = v19;
    }
  }

  return appended;
}

void playerairplay_checkIfAirPlayVideoSessionNeedsToStop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v4 = *(v3 + 16);
  FigSimpleMutexUnlock();
  v5 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v6 = *(v5 + 20);
  FigSimpleMutexUnlock();
  if (!*DerivedStorage)
  {
    if (!(v4 | v6))
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_54_11();
      if (!(!v8 & v7))
      {
        if (dword_1EAF172E8)
        {
          v9 = OUTLINED_FUNCTION_19_27();
          OUTLINED_FUNCTION_311(v9, v10, v11, v12, v13, v14, v15, v16, v22, v23, v24, v25, SBYTE2(v25), BYTE3(v25), SHIDWORD(v25));
          OUTLINED_FUNCTION_40();
          if (v5)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_139();
            OUTLINED_FUNCTION_53_10();
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_12_17();
            OUTLINED_FUNCTION_612();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_414();
        }

        v17 = OUTLINED_FUNCTION_312();
        playerairplay_savePlaybackInfoAndStopAPV(v17);
      }
    }

    OUTLINED_FUNCTION_496();
    dispatch_source_set_timer(v18, v19, v20, v21);
  }
}

void playerairplay_reflectSubPlayerNotification(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = OUTLINED_FUNCTION_645();
  if (*v5)
  {
    return;
  }

  if (!v5[50])
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_55_11();
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (CFEqual(a3, @"SubtitleChanged") || CFEqual(a3, @"IsNeroPlaybackActiveDidChange"))
  {
LABEL_8:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

LABEL_9:
  if (CFEqual(a3, @"RateDidChange") || CFEqual(a3, @"CurrentItemDidChange"))
  {

    playerairplay_updateRoutingRegistry(v3);
  }
}

void playerairplay_autoMediaSelectionCriteriaChanged(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    OUTLINED_FUNCTION_100_3();
    if (!v3)
    {
      CFRetain(a2);

      FigDeferNotificationToDispatchQueue();
    }
  }
}

void playerairplay_hijackedByOtherPlayer(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const __CFDictionary *a5)
{
  v8 = OUTLINED_FUNCTION_645();
  Value = CFDictionaryGetValue(a5, @"HijackingPlayer");
  v10 = Value != a4 || Value == v5;
  if (!v10 && !*v8)
  {
    v11 = Value;
    v12 = pap_copyInterstitialPlayer();
    v13 = pap_copyPrimaryPlayer();
    if (v12)
    {
      v14 = v12 == a4;
    }

    else
    {
      v14 = 0;
    }

    v15 = !v14;
    if (v12)
    {
      CFRelease(v12);
    }

    if (v13)
    {
      CFRelease(v13);
      v16 = v13 == a4;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15;
    }

    if (v17 == 1)
    {
      if (v5)
      {
        CFRetain(v5);
      }

      OUTLINED_FUNCTION_2_49();
      v20 = 3221225472;
      v21 = __playerairplay_hijackedByOtherPlayer_block_invoke;
      v22 = &__block_descriptor_56_e5_v8__0l;
      v23 = v8;
      v24 = v5;
      v25 = v11;
      dispatch_async(v18, block);
    }
  }
}

uint64_t playerairplay_Invalidate(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF172E8)
  {
    v54 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v55 = 136315650;
      v56 = "playerairplay_Invalidate";
      v57 = 2048;
      v58 = a1;
      OUTLINED_FUNCTION_83_3();
      OUTLINED_FUNCTION_378();
      OUTLINED_FUNCTION_12_17();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  if (!*DerivedStorage && *(DerivedStorage + 112))
  {
    *DerivedStorage = 1;
    if (*(DerivedStorage + 480))
    {
      FigSimpleMutexLock();
      for (i = *(DerivedStorage + 472); i; i = *(DerivedStorage + 472))
      {
        if (CFArrayGetCount(i) < 1)
        {
          break;
        }

        CFArrayGetValueAtIndex(*(DerivedStorage + 472), 0);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CFArrayRemoveValueAtIndex(*(DerivedStorage + 472), 0);
      }

      FigSimpleMutexUnlock();
    }

    notify_cancel(*(DerivedStorage + 400));
    CMNotificationCenterGetDefaultLocalCenter();
    FigGetNotifyingObjectForSelectionCriteriaChanged();
    OUTLINED_FUNCTION_171();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigGetNotifyingObjectForSelectionCriteriaChanged();
    CMNotificationCenterBarrier();
    if (*(DerivedStorage + 8))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      FigBaseObject = FigPlayerGetFigBaseObject(*(DerivedStorage + 8));
      v7 = *(CMBaseObjectGetVTable() + 8);
      if (*v7 >= 2uLL)
      {
        v8 = v7[8];
        if (v8)
        {
          v8(FigBaseObject);
        }
      }
    }

    if (*(DerivedStorage + 296))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListeners();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v9 = *(DerivedStorage + 112);
    if (v9)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __playerairplay_Invalidate_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_sync(v9, block);
    }

    v10 = *(DerivedStorage + 160);
    if (v10)
    {
      dispatch_sync(v10, &__block_literal_global_27_0);
    }

    v11 = *(DerivedStorage + 120);
    if (v11)
    {
      dispatch_source_cancel(v11);
    }

    v12 = *(DerivedStorage + 88);
    if (v12)
    {
      dispatch_sync(v12, &__block_literal_global_29_0);
    }

    v13 = *(DerivedStorage + 96);
    if (v13)
    {
      dispatch_sync(v13, &__block_literal_global_31_0);
    }

    v14 = *(DerivedStorage + 104);
    if (v14)
    {
      dispatch_sync(v14, &__block_literal_global_33_0);
    }

    v15 = *(DerivedStorage + 112);
    if (v15)
    {
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __playerairplay_Invalidate_block_invoke_6;
      v51[3] = &__block_descriptor_40_e5_v8__0l;
      v51[4] = a1;
      dispatch_sync(v15, v51);
    }

    if (*(DerivedStorage + 52))
    {
      v16 = *(DerivedStorage + 208);
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v17)
      {
        v17(v16);
      }
    }

    v18 = *(DerivedStorage + 296);
    if (v18)
    {
      CFRelease(v18);
      *(DerivedStorage + 296) = 0;
    }

    *(DerivedStorage + 304) = 0;
    if (*(DerivedStorage + 458))
    {
      Shared = FigShareAndAirPlayHelperGetShared();
      if (Shared)
      {
        v20 = Shared;
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v21)
        {
          v21(v20, 0, a1);
        }
      }

      *(DerivedStorage + 458) = 0;
    }

    if (*(DerivedStorage + 112))
    {
      OUTLINED_FUNCTION_25_1();
      v47 = 3221225472;
      v48 = __playerairplay_Invalidate_block_invoke_7;
      v49 = &__block_descriptor_40_e5_v8__0l;
      v50 = a1;
      dispatch_sync(v22, v46);
    }

    FigSimpleMutexLock();
    v23 = *(DerivedStorage + 16);
    if (v23)
    {
      v24 = CFGetAllocator(v23);
      Copy = CFDictionaryCreateCopy(v24, *(DerivedStorage + 16));
      if (Copy)
      {
        v26 = Copy;
        CFDictionaryApplyFunction(Copy, playerairplay_InvalidateItem, 0);
        CFRelease(v26);
      }
    }

    FigSimpleMutexUnlock();
    v27 = *(DerivedStorage + 8);
    if (v27)
    {
      v28 = FigPlayerGetFigBaseObject(v27);
      if (v28)
      {
        v29 = v28;
        v30 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v30)
        {
          v30(v29);
        }
      }
    }

    FigBytePumpGetFigBaseObject(*(DerivedStorage + 208));
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v31 = OUTLINED_FUNCTION_152_2();
      v32(v31);
    }

    v33 = CMBaseObjectGetDerivedStorage();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_89_3();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_89_3();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_89_3();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_89_3();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_89_3();
    FigBytePumpGetFigBaseObject(*(v33 + 208));
    if (v34)
    {
      v35 = v34;
      v36 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v36)
      {
        v36(v35);
      }
    }

    v37 = *(DerivedStorage + 376);
    if (v37)
    {
      if (qword_1ED4CAC88 != -1)
      {
        dispatch_once(&qword_1ED4CAC88, &__block_literal_global_167);
      }

      v38 = qword_1ED4CAC80;
      FigSimpleMutexLock();
      CFDictionaryRemoveValue(v38, v37);
      FigSimpleMutexUnlock();
      CFRelease(*(DerivedStorage + 376));
    }

    v39 = *(DerivedStorage + 392);
    if (v39)
    {
      CFRelease(v39);
      *(DerivedStorage + 392) = 0;
    }

    playerairplay_cleanUpScrubLayerAndContext();
    v40 = *(DerivedStorage + 160);
    if (v40)
    {
      dispatch_sync(v40, &__block_literal_global_35);
    }

    v41 = *(DerivedStorage + 88);
    if (v41)
    {
      dispatch_sync(v41, &__block_literal_global_37);
    }

    v42 = *(DerivedStorage + 96);
    if (v42)
    {
      dispatch_sync(v42, &__block_literal_global_39);
    }

    v43 = *(DerivedStorage + 112);
    if (v43)
    {
      dispatch_sync(v43, &__block_literal_global_41);
    }

    v44 = *(DerivedStorage + 104);
    if (v44)
    {
      dispatch_sync(v44, &__block_literal_global_43);
    }

    playqueue_clearPlayQueue(*(DerivedStorage + 40));
  }

  return 0;
}

uint64_t playerairplay_Finalize()
{
  CMBaseObjectGetDerivedStorage();
  v1 = OUTLINED_FUNCTION_199();
  playerairplay_Invalidate(v1);
  v2 = v0[20];
  if (v2)
  {
    dispatch_release(v2);
    v0[20] = 0;
  }

  if (v0[21])
  {
    FigSimpleMutexDestroy();
    v0[21] = 0;
  }

  v3 = v0[15];
  if (v3)
  {
    dispatch_release(v3);
    v0[15] = 0;
  }

  v4 = v0[11];
  if (v4)
  {
    dispatch_release(v4);
    v0[11] = 0;
  }

  v5 = v0[12];
  if (v5)
  {
    dispatch_release(v5);
    v0[12] = 0;
  }

  v6 = v0[14];
  if (v6)
  {
    dispatch_release(v6);
    v0[14] = 0;
  }

  v7 = v0[13];
  if (v7)
  {
    dispatch_release(v7);
    v0[13] = 0;
  }

  v8 = v0[1];
  if (v8)
  {
    CFRelease(v8);
    v0[1] = 0;
  }

  v9 = v0[26];
  if (v9)
  {
    CFRelease(v9);
    v0[26] = 0;
  }

  v10 = v0[16];
  if (v10)
  {
    CFRelease(v10);
    v0[16] = 0;
  }

  v11 = v0[56];
  if (v11)
  {
    CFRelease(v11);
    v0[56] = 0;
  }

  v12 = v0[46];
  if (v12)
  {
    CFRelease(v12);
    v0[46] = 0;
  }

  v13 = v0[45];
  if (v13)
  {
    CFRelease(v13);
    v0[45] = 0;
  }

  v14 = v0[48];
  if (v14)
  {
    CFRelease(v14);
    v0[48] = 0;
  }

  v15 = v0[53];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = v0[52];
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = v0[54];
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = v0[55];
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = v0[29];
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = v0[5];
  if (v20)
  {
    if (*v20)
    {
      CFRelease(*v20);
    }

    FigSimpleMutexDestroy();
    free(v20);
  }

  FigSimpleMutexDestroy();
  v0[3] = 0;
  v21 = v0[2];
  if (v21)
  {
    CFRelease(v21);
    v0[2] = 0;
  }

  v22 = v0[4];
  if (v22)
  {
    CFRelease(v22);
    v0[4] = 0;
  }

  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  v23 = v0[59];
  if (v23)
  {
    CFRelease(v23);
    v0[59] = 0;
  }

  v24 = v0[36];
  if (v24)
  {
    CFRelease(v24);
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

uint64_t playerairplay_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_139_1();
  v5 = OUTLINED_FUNCTION_502();
  v11 = FPSupport_HandlePlayerSetPropertyAndCopyModification(v5, v6, a3, 0, v7, v8, v9, v10);
  if (!v11)
  {
    v12 = *(DerivedStorage + 8);
    if (v12)
    {
      FigBaseObject = FigPlayerGetFigBaseObject(v12);
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v14)
      {
        return 4294954514;
      }

      return v14(FigBaseObject, 0, 0);
    }

    else
    {
      return FigSignalErrorAtGM();
    }
  }

  return v11;
}

void playerairplay_externalStartupTaskCompleted()
{
  v1 = OUTLINED_FUNCTION_645();
  v10 = 0;
  if (!*v1)
  {
    v2 = v1;
    if (FigCFDictionaryGetInt32IfPresent())
    {
      if (v0)
      {
        CFRetain(v0);
      }

      OUTLINED_FUNCTION_2_49();
      v5 = 3221225472;
      v6 = __playerairplay_externalStartupTaskCompleted_block_invoke;
      v7 = &__block_descriptor_48_e5_v8__0l;
      v8 = v2;
      v9 = v0;
      dispatch_async(v3, block);
    }
  }
}

uint64_t playerairplay_removeFigAudioSessionNotificationHandlers()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 392))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_65_7();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

void __playerairplay_externalStartupTaskCompleted_block_invoke()
{
  OUTLINED_FUNCTION_56_9();
  if (!v1)
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v3 = v3 || v2 == 10;
    if (!v3)
    {
      playerairplay_setRateAirPlay(*(v0 + 40), 0, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], 0);
    }
  }

  v4 = *(v0 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

void playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2 | a3)
  {
    OUTLINED_FUNCTION_261();
    FigSimpleMutexLock();
    if (v4)
    {
      CurrentClientPlayQueueItemIndexInternal = playqueue_getCurrentClientPlayQueueItemIndexInternal(v3);
      if (CurrentClientPlayQueueItemIndexInternal != -1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*v3, CurrentClientPlayQueueItemIndexInternal);
        if (ValueAtIndex)
        {
          ValueAtIndex = CFRetain(ValueAtIndex);
        }

        *v4 = ValueAtIndex;
      }
    }

    if (a3)
    {
      Count = CFArrayGetCount(*v3);
      if (Count >= 1)
      {
        v9 = Count;
        v10 = 0;
        while (1)
        {
          v11 = CFArrayGetValueAtIndex(*v3, v10);
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          if (!DerivedStorage[72] && DerivedStorage[701] && DerivedStorage[707] != 2)
          {
            break;
          }

          if (v9 == ++v10)
          {
            goto LABEL_14;
          }
        }

        if (v11)
        {
          v13 = CFRetain(v11);
        }

        else
        {
          v13 = 0;
        }

        *a3 = v13;
      }
    }

LABEL_14:

    FigSimpleMutexUnlock();
  }
}

const __CFArray *playerairplay_notifyStartupTasksOfEvents(uint64_t a1, const void *a2, int a3, int a4, uint64_t a5, _BYTE *a6, float a7)
{
  v46 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v39 = 0;
  *a6 = 1;
  if (!a2)
  {
    return 0;
  }

  v15 = DerivedStorage;
  CMBaseObjectGetDerivedStorage();
  if (a7 == 0.0 || ((OUTLINED_FUNCTION_44_13(), !v17) ? (v17 = v16 == 10) : (v17 = 1), v17))
  {
    Copy = 0;
  }

  else
  {
    FigSimpleMutexLock();
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(v15 + 472));
    FigSimpleMutexUnlock();
    if (Copy)
    {
      Count = CFArrayGetCount(Copy);
      if (Count < 1)
      {
LABEL_38:
        v21 = Copy;
        NotificationPayloadForProperties = 0;
        Copy = 0;
      }

      else
      {
        v33 = a6;
        v20 = 0;
        v37 = a4;
        v35 = Copy;
        v36 = a5;
        v34 = a2;
        while (1)
        {
          v21 = Copy;
          ValueAtIndex = CFArrayGetValueAtIndex(Copy, v20);
          v23 = FigPlayerStartupTaskCopyRequiredParameters(ValueAtIndex, &cf);
          if (v23)
          {
            Copy = v23;
            NotificationPayloadForProperties = 0;
            goto LABEL_39;
          }

          v24 = OUTLINED_FUNCTION_618();
          NotificationPayloadForProperties = FPSupport_CreateNotificationPayloadForProperties(v24, v25, v26);
          if (FigCFArrayContainsValue())
          {
            OUTLINED_FUNCTION_614();
            FigCFDictionarySetFloat32();
          }

          if (FigCFArrayContainsValue())
          {
            OUTLINED_FUNCTION_614();
            FigCFDictionarySetValue();
          }

          v28 = FigCFArrayContainsValue();
          if (a4 && v28)
          {
            FigCFDictionarySetInt32();
          }

          if (FigCFArrayContainsValue() && (*(a5 + 12) & 1) != 0)
          {
            v45 = *a5;
            FigCFDictionarySetCMTime();
          }

          if (FigCFArrayContainsValue())
          {
            v45 = **&MEMORY[0x1E6960C70];
            itemairplay_GetCurrentTime(a2, &v45);
            v41 = v45;
            OUTLINED_FUNCTION_614();
            FigCFDictionarySetCMTime();
          }

          v29 = FigPlayerStartupTaskNotifyOfEvents(ValueAtIndex, a3, NotificationPayloadForProperties, &v39);
          if (v29)
          {
            break;
          }

          if (dword_1EAF172E8)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            Copy = v35;
            a5 = v36;
            a4 = v37;
            a2 = v34;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (NotificationPayloadForProperties)
          {
            CFRelease(NotificationPayloadForProperties);
          }

          if (!v39)
          {
            *v33 = 0;
          }

          if (Count == ++v20)
          {
            goto LABEL_38;
          }
        }

        Copy = v29;
        v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7_22();
        if (a5)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          LODWORD(v41.value) = 136315906;
          OUTLINED_FUNCTION_157_1();
          HIWORD(v41.epoch) = 2082;
          v42 = v32;
          v43 = 1024;
          LODWORD(v44) = Copy;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_524();
      }

LABEL_39:
      CFRelease(v21);
      if (NotificationPayloadForProperties)
      {
        CFRelease(NotificationPayloadForProperties);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return Copy;
}

void playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    if (a1)
    {
      CFRetain(a1);
    }

    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_1_44();
    v5[2] = __playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = v3;
    v5[5] = a1;
    dispatch_async(v4, v5);
  }
}

uint64_t playerairplay_deferMediaControlPlaylistForInterstitials()
{
  if (*(CMBaseObjectGetDerivedStorage() + 241))
  {
    return 0;
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_54_11();
  if (!v1 & v0)
  {
    return 0;
  }

  if (!*(CMBaseObjectGetDerivedStorage() + 360))
  {
    if (*(CMBaseObjectGetDerivedStorage() + 368))
    {
      v2 = pap_copyPrimaryPlayer();
      if (v2)
      {
        v5 = v2;
        v3 = playerairplay_interstitialEventActive() ^ 1;
        CFRelease(v5);
        return v3;
      }
    }

    return 0;
  }

  return playerairplay_interstitialEventActive();
}

void pap_playbackSessionSetRate(const void *a1, int a2, float a3, uint64_t a4, uint64_t a5, const void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v11 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (*(DerivedStorage + 280))
      {
        v12 = malloc_type_calloc(1uLL, 0x28uLL, 0x10600408834611BuLL);
        *v12 = a1;
        CFRetain(a1);
        v13 = *(v11 + 280);
        *(v12 + 1) = v13;
        if (v13)
        {
          CFRetain(v13);
        }

        v12[4] = a3;
        *(v12 + 3) = a6;
        if (a6)
        {
          CFRetain(a6);
        }

        v14 = *(v11 + 60);
        *(v11 + 60) = v14 + 1;
        *(v12 + 8) = v14;
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (pap_shouldUseInterstitialQueuing())
        {
          CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961BD8], *MEMORY[0x1E695E4D0]);
        }

        if (a2)
        {
          OUTLINED_FUNCTION_315();
          FigCFDictionarySetCMTime();
          FigCFDictionarySetCMTime();
        }

        v16 = *(v11 + 280);
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (v17)
        {
          v17(v16, Mutable, pap_playbackSessionSetRateCompletion, v12, a3);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }
  }
}

void itemairplay_postItemNotification()
{
  OUTLINED_FUNCTION_375_0();
  v3 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v5 = DerivedStorage;
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    v7 = CMBaseObjectGetDerivedStorage();
    if (v7)
    {
      v8 = v7;
      if (!*v7)
      {
        if (v3)
        {
          CFRetain(v3);
        }

        if (v1)
        {
          CFRetain(v1);
        }

        if (v0)
        {
          CFRetain(v0);
        }

        if (v6)
        {
          CFRetain(v6);
        }

        OUTLINED_FUNCTION_0_52();
        OUTLINED_FUNCTION_1_44();
        v10[2] = __itemairplay_postItemNotification_block_invoke;
        v10[3] = &__block_descriptor_80_e5_v8__0l;
        v10[4] = v5;
        v10[5] = v8;
        v10[6] = v1;
        v10[7] = v3;
        v10[8] = v0;
        v10[9] = v6;
        dispatch_async(v9, v10);
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }
}

void playerairplay_postPlayerNotification()
{
  OUTLINED_FUNCTION_375_0();
  v3 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v5 = DerivedStorage;
    if (v3)
    {
      CFRetain(v3);
    }

    if (v1)
    {
      CFRetain(v1);
    }

    if (v0)
    {
      CFRetain(v0);
    }

    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_1_44();
    v7[2] = __playerairplay_postPlayerNotification_block_invoke;
    v7[3] = &__block_descriptor_64_e5_v8__0l;
    v7[4] = v5;
    v7[5] = v1;
    v7[6] = v3;
    v7[7] = v0;
    dispatch_async(v6, v7);
  }
}

void playerairplay_checkAndUpdatePlayQueueItems(uint64_t a1)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    OUTLINED_FUNCTION_199();
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_54_11();
    if (!(!v4 & v3))
    {
      cf = 0;
      playerairplay_synchronizePlayQueueItems(a1);
      playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v1 + 40), 0, &cf);
      if (cf)
      {
        if (!playerairplay_deferMediaControlPlaylistForInterstitials())
        {
          if (*(v1 + 248))
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            v6 = OUTLINED_FUNCTION_146_2(DerivedStorage);
            PlayQueueSnapshot = playqueue_createPlayQueueSnapshot(v6, v7);
            if (PlayQueueSnapshot)
            {
              v9 = PlayQueueSnapshot;
              Count = CFArrayGetCount(PlayQueueSnapshot);
              if (Count >= 1)
              {
                v11 = Count;
                for (i = 0; i != v11; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
                  itemairplay_applyCachedPropertiesOnMediaControlItem(ValueAtIndex);
                }
              }

              CFRelease(v9);
            }
          }

          else
          {
            if (!cf)
            {
              return;
            }

            itemairplay_applyCachedPropertiesOnMediaControlItem(cf);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }
}

void playerairplay_synchronizePlayQueueItems(uint64_t a1)
{
  v386 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_199();
  HIDWORD(v365) = playerairplay_deferMediaControlPlaylistForInterstitials();
  v369 = v1;
  PlayQueueSnapshot = playqueue_createPlayQueueSnapshot(*(v1 + 40), 0);
  if (PlayQueueSnapshot)
  {
    v4 = PlayQueueSnapshot;
    v368 = a1;
    Count = CFArrayGetCount(PlayQueueSnapshot);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v9 = 0;
      v10 = &kFigPlaybackItemNotification_ReadyForPlayback;
      *&v6 = 136316162;
      v366 = v6;
      *&v6 = 136316674;
      *v349 = v6;
      v11 = &off_196E72000;
      v351 = 0x1F0B34F18;
      *(&v350 + 1) = 0x1F0B34F38;
      v340 = @"com.apple.coremedia.assettype.streaming";
      *&v6 = 136317442;
      *v363 = v6;
      cf2 = @"com.apple.coremedia.assettype.file";
      v359 = @"assetProperty_ContentByteStream";
      v357 = @"assetProperty_Tracks";
      v358 = @"assetProperty_FormatReader";
      v361 = @"MediaSelectionArray";
      allocator = *MEMORY[0x1E695E480];
      v339 = @"ReadyForInspection";
      v353 = @"Duration";
      v354 = @"FailedToBecomeReadyForInspection";
      v347 = @"CanPlayFastReverse";
      v348 = @"CanPlayFastForward";
      v345 = @"SupportsFrameStepping";
      v346 = @"CanPlayReverse";
      v343 = @"CurrentDimensions";
      v344 = @"CurrentDuration";
      v341 = @"ReadyForPlayback";
      v342 = @"DisplayNonForcedSubtitles";
      v355 = @"FailedToBecomeReadyForPlayback";
      v356 = @"ItemWasRemovedFromPlayQueue";
      v352 = @"ItemStoppedBeingCurrent";
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v9);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        FigReadWriteLockLockForRead();
        if (*(DerivedStorage + 72))
        {
          ValueAtIndex = v8;
          goto LABEL_70;
        }

        os_log_and_send_and_compose_flags_and_os_log_type = *(DerivedStorage + 707);
        if (os_log_and_send_and_compose_flags_and_os_log_type == 2)
        {
          if (dword_1EAF172E8)
          {
            OUTLINED_FUNCTION_45_11();
            v15 = OUTLINED_FUNCTION_39_13();
            OUTLINED_FUNCTION_33_15(v15, v16, v17, v18, v19, v20, v21, v22, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366, *(&v366 + 1), v367, v368, v369, v370, BYTE4(v370), *v371, *&v371[8], *&v371[16], v372, *v373, *&v373[8], *&v373[16], *&v373[24], v374, v375, *(&v375 + 1), v376, *v377);
            OUTLINED_FUNCTION_23_25();
            if (v11)
            {
              if (v368)
              {
                v23 = CMBaseObjectGetDerivedStorage();
                if (ValueAtIndex)
                {
                  goto LABEL_11;
                }
              }

              else if (ValueAtIndex)
              {
LABEL_11:
                v23 = CMBaseObjectGetDerivedStorage();
              }

              OUTLINED_FUNCTION_58_5(v23, v24, v25, v26, v27, v28, v29, v30, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366);
              OUTLINED_FUNCTION_6_60();
              *&v371[14] = v368;
              *&v371[22] = v96;
              OUTLINED_FUNCTION_0_101();
              OUTLINED_FUNCTION_25();
              OUTLINED_FUNCTION_160_1();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_52_10();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_635();
          }

          itemairplay_doCleanupAtEndOfPlayback();
          v97 = OUTLINED_FUNCTION_144_0();
          itemairplay_cleanupItemForAirPlay(v97, v98);
LABEL_53:
          v99 = *(v369 + 40);
          v100 = ValueAtIndex;
          v101 = 1;
          goto LABEL_68;
        }

        if (!*(DerivedStorage + 700))
        {
          if (*(DerivedStorage + 701))
          {
            if (dword_1EAF172E8)
            {
              OUTLINED_FUNCTION_45_11();
              OUTLINED_FUNCTION_39_13();
              OUTLINED_FUNCTION_48_11();
              cf = v168;
              os_log_type_enabled(v168, v10);
              OUTLINED_FUNCTION_23_25();
              if (v11)
              {
                if (v368)
                {
                  v169 = CMBaseObjectGetDerivedStorage();
                }

                if (ValueAtIndex)
                {
                  v169 = CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_58_5(v169, v170, v171, v172, v173, v174, v175, v176, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366);
                OUTLINED_FUNCTION_47_9();
                *&v371[12] = 2048;
                *&v371[14] = v368;
                *&v371[22] = 2048;
                OUTLINED_FUNCTION_0_101();
                OUTLINED_FUNCTION_25();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_52_10();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_635();
            }

            if (!v8)
            {
              v242 = *(CMBaseObjectGetDerivedStorage() + 216);
              v243 = (v242 & 0xFFFFFFFE) == 0xE || v242 == 12;
              if (v243 && dword_1EAF172E8)
              {
                OUTLINED_FUNCTION_45_11();
                OUTLINED_FUNCTION_39_13();
                OUTLINED_FUNCTION_48_11();
                os_log_type_enabled(v244, v10);
                OUTLINED_FUNCTION_23_25();
                if (v11)
                {
                  if (v368)
                  {
                    v245 = CMBaseObjectGetDerivedStorage();
                  }

                  if (ValueAtIndex)
                  {
                    v245 = CMBaseObjectGetDerivedStorage();
                  }

                  OUTLINED_FUNCTION_58_5(v245, v246, v247, v248, v249, v250, v251, v252, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366);
                  OUTLINED_FUNCTION_47_9();
                  *&v371[12] = 2048;
                  *&v371[14] = v368;
                  *&v371[22] = 2048;
                  OUTLINED_FUNCTION_0_101();
                  OUTLINED_FUNCTION_25();
                  _os_log_send_and_compose_impl();
                  OUTLINED_FUNCTION_52_10();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_635();
              }
            }

            if (os_log_and_send_and_compose_flags_and_os_log_type == 1)
            {
              *(DerivedStorage + 707) = 2;
              itemairplay_doCleanupAtEndOfPlayback();
              v258 = OUTLINED_FUNCTION_144_0();
              itemairplay_cleanupItemForAirPlay(v258, v259);
              playerairplay_removeQueuedItemUUIDStringOnAirPlayController(v368, *(DerivedStorage + 80));
              v268 = OUTLINED_FUNCTION_37_15(v260, v261, v262, v263, v264, v265, v266, v267, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366, *(&v366 + 1), v367, v368, v369);
              playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(v268, v269, v270, 1);
              itemairplay_postItemNotification();
            }

            else
            {
              itemairplay_doCleanupAtEndOfPlayback();
              v271 = OUTLINED_FUNCTION_144_0();
              itemairplay_cleanupItemForAirPlay(v271, v272);
              playerairplay_removeQueuedItemUUIDStringOnAirPlayController(v368, *(DerivedStorage + 80));
              v281 = OUTLINED_FUNCTION_37_15(v273, v274, v275, v276, v277, v278, v279, v280, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366, *(&v366 + 1), v367, v368, v369);
              playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(v281, v282, v283, 1);
            }

            itemairplay_postItemNotification();
            goto LABEL_69;
          }

          if (dword_1EAF172E8)
          {
            OUTLINED_FUNCTION_45_11();
            v41 = OUTLINED_FUNCTION_39_13();
            OUTLINED_FUNCTION_33_15(v41, v42, v43, v44, v45, v46, v47, v48, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366, *(&v366 + 1), v367, v368, v369, v370, BYTE4(v370), *v371, *&v371[8], *&v371[16], v372, *v373, *&v373[8], *&v373[16], *&v373[24], v374, v375, *(&v375 + 1), v376, *v377);
            OUTLINED_FUNCTION_23_25();
            if (v11)
            {
              if (v368)
              {
                v49 = CMBaseObjectGetDerivedStorage();
                if (ValueAtIndex)
                {
                  goto LABEL_26;
                }
              }

              else if (ValueAtIndex)
              {
LABEL_26:
                v49 = CMBaseObjectGetDerivedStorage();
              }

              OUTLINED_FUNCTION_58_5(v49, v50, v51, v52, v53, v54, v55, v56, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366);
              OUTLINED_FUNCTION_6_60();
              *&v371[14] = v368;
              *&v371[22] = v120;
              OUTLINED_FUNCTION_0_101();
              OUTLINED_FUNCTION_25();
              OUTLINED_FUNCTION_160_1();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_52_10();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_635();
          }

          itemairplay_doCleanupAtEndOfPlayback();
          v121 = OUTLINED_FUNCTION_505();
          itemairplay_cleanupItemForAirPlay(v121, v122);
          goto LABEL_67;
        }

        v11 = CMBaseObjectGetDerivedStorage();
        if (*(DerivedStorage + 701))
        {
          if (HIDWORD(v365))
          {
            *v377 = *MEMORY[0x1E6960C70];
            *&v377[16] = *(MEMORY[0x1E6960C70] + 16);
            if (dword_1EAF172E8)
            {
              HIDWORD(v370) = 0;
              BYTE3(v370) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              LOBYTE(v10) = 0;
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_425();
              if (v60)
              {
                v40 = v39;
              }

              else
              {
                v40 = 0;
              }

              if (v40)
              {
                if (v368)
                {
                  v31 = CMBaseObjectGetDerivedStorage();
                }

                if (ValueAtIndex)
                {
                  v31 = CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_58_5(v31, v32, v33, v34, v35, v36, v37, v38, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366);
                OUTLINED_FUNCTION_47_9();
                *&v371[12] = 2048;
                *&v371[14] = v368;
                *&v371[22] = 2048;
                OUTLINED_FUNCTION_0_101();
                OUTLINED_FUNCTION_27();
                OUTLINED_FUNCTION_160_1();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_635();
            }

            CMTimebaseSetRate(*(DerivedStorage + 568), 0.0);
            v225 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v225)
            {
              v225(ValueAtIndex, v377);
            }

            values = *v377;
            v384 = *&v377[16];
            itemairplay_setRememberedTimeAndDefaultFlag(ValueAtIndex, &values);
            v226 = OUTLINED_FUNCTION_505();
            itemairplay_controlPlaybackActivityTimer(v226, v227);
            playerairplay_removeQueuedItemUUIDStringOnAirPlayController(v368, *(DerivedStorage + 80));
            v236 = OUTLINED_FUNCTION_37_15(v228, v229, v230, v231, v232, v233, v234, v235, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366, *(&v366 + 1), v367, v368, v369);
            playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(v236, v237, v238, 1);
          }
        }

        else
        {
          v57 = *(DerivedStorage + 704);
          v58 = v57 > 5;
          v59 = (1 << v57) & 0x23;
          v60 = v58 || v59 == 0;
          if (v60)
          {
            CMBaseObjectGetDerivedStorage();
            v102 = OUTLINED_FUNCTION_119_2();
            v109 = 0;
            LOBYTE(v10) = 1;
            switch(*(os_log_and_send_and_compose_flags_and_os_log_type + 703))
            {
              case 0:
                cf = v102;
                if (dword_1EAF172E8)
                {
                  OUTLINED_FUNCTION_45_11();
                  OUTLINED_FUNCTION_39_13();
                  OUTLINED_FUNCTION_48_11();
                  v338 = v110;
                  os_log_type_enabled(v110, OS_LOG_TYPE_INFO);
                  OUTLINED_FUNCTION_425();
                  if (v60)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = v118;
                  }

                  else
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = 0;
                  }

                  if (os_log_and_send_and_compose_flags_and_os_log_type)
                  {
                    v119 = cf;
                    if (cf)
                    {
                      v119 = CMBaseObjectGetDerivedStorage();
                    }

                    if (ValueAtIndex)
                    {
                      v119 = CMBaseObjectGetDerivedStorage();
                    }

                    OUTLINED_FUNCTION_58_5(v119, v111, v112, v113, v114, v115, v116, v117, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366);
                    OUTLINED_FUNCTION_6_60();
                    *&v371[14] = cf;
                    *&v371[22] = v285;
                    OUTLINED_FUNCTION_0_101();
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl();
                    OUTLINED_FUNCTION_52_10();
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_635();
                }

                CMBaseObjectGetDerivedStorage();
                OUTLINED_FUNCTION_180_2();
                if (MEMORY[0x49])
                {
                  FigReadWriteLockUnlockForRead();
                }

                else
                {
                  v338 = FigCFWeakReferenceHolderCopyReferencedObject();
                  v286 = CMBaseObjectGetDerivedStorage();
                  if (!v286 || *v286 || itemairplay_assureItemForAirPlay())
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = 0;
                    v287 = v338;
                  }

                  else
                  {
                    LOBYTE(values) = 0;
                    v371[0] = 0;
                    v377[0] = 0;
                    FigCFDictionaryGetBooleanIfPresent();
                    FigCFDictionaryGetBooleanIfPresent();
                    v287 = v338;
                    if (v371[0] || *(CMBaseObjectGetDerivedStorage() + 368) || v377[0] && MEMORY[0x19] == v340 || (v288 = OUTLINED_FUNCTION_144_0(), (CPEProtectorIfAvailable = itemairplay_createCPEProtectorIfAvailable(v288, v289, v290)) == 0))
                    {
                      MEMORY[0x2C0] = 1;
                      playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v338);
                      os_log_and_send_and_compose_flags_and_os_log_type = 0;
                    }

                    else
                    {
                      os_log_and_send_and_compose_flags_and_os_log_type = CPEProtectorIfAvailable;
                      MEMORY[0x2C0] = 2;
                      if (!playerairplay_performQueuedItemVodkaExchange(v338, ValueAtIndex, CPEProtectorIfAvailable, values) && MEMORY[0x2C0] == 2)
                      {
                        itemairplay_controlPlaybackActivityTimer(ValueAtIndex, 3);
                      }
                    }
                  }

                  if (v287)
                  {
                    CFRelease(v287);
                  }

                  FigReadWriteLockUnlockForRead();
                  if (os_log_and_send_and_compose_flags_and_os_log_type)
                  {
                    CFRelease(os_log_and_send_and_compose_flags_and_os_log_type);
                  }
                }

                LOBYTE(v10) = 1;
                goto LABEL_299;
              case 1:
              case 3:
                goto LABEL_300;
              case 2:
                cf = v102;
                v187 = CMBaseObjectGetDerivedStorage();
                if (v187)
                {
                  v188 = 1000000000 * *(v187 + 404);
                }

                else
                {
                  v188 = 45000000000;
                }

                if (FigGetUpTimeNanoseconds() - *(os_log_and_send_and_compose_flags_and_os_log_type + 736) < v188)
                {
                  goto LABEL_299;
                }

                if (!dword_1EAF172E8)
                {
                  goto LABEL_298;
                }

                OUTLINED_FUNCTION_45_11();
                OUTLINED_FUNCTION_39_13();
                OUTLINED_FUNCTION_48_11();
                v338 = v256;
                os_log_type_enabled(v256, OS_LOG_TYPE_INFO);
                OUTLINED_FUNCTION_425();
                if (v60)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = v257;
                }

                else
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = v188;
                }

                if (!os_log_and_send_and_compose_flags_and_os_log_type)
                {
                  goto LABEL_297;
                }

                v186 = cf;
                if (cf)
                {
                  v186 = CMBaseObjectGetDerivedStorage();
                }

                if (ValueAtIndex)
                {
LABEL_295:
                  v186 = CMBaseObjectGetDerivedStorage();
                }

LABEL_296:
                OUTLINED_FUNCTION_58_5(v186, v178, v179, v180, v181, v182, v183, v184, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366);
                OUTLINED_FUNCTION_6_60();
                *&v371[14] = cf;
                *&v371[22] = v298;
                OUTLINED_FUNCTION_0_101();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_52_10();
LABEL_297:
                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_635();
LABEL_298:
                itemairplay_doCleanupAtEndOfPlayback();
                v299 = OUTLINED_FUNCTION_505();
                itemairplay_cleanupItemForAirPlay(v299, v300);
                LOBYTE(v10) = 0;
                goto LABEL_299;
              case 4:
                cf = v102;
                if (!dword_1EAF172E8)
                {
                  goto LABEL_298;
                }

                OUTLINED_FUNCTION_45_11();
                OUTLINED_FUNCTION_39_13();
                OUTLINED_FUNCTION_48_11();
                v338 = v177;
                os_log_type_enabled(v177, OS_LOG_TYPE_INFO);
                OUTLINED_FUNCTION_425();
                if (v60)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = v185;
                }

                else
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = 0;
                }

                if (!os_log_and_send_and_compose_flags_and_os_log_type)
                {
                  goto LABEL_297;
                }

                v186 = cf;
                if (cf)
                {
                  v186 = CMBaseObjectGetDerivedStorage();
                }

                if (!ValueAtIndex)
                {
                  goto LABEL_296;
                }

                goto LABEL_295;
              default:
                if (dword_1EAF172E8)
                {
                  cf = v102;
                  OUTLINED_FUNCTION_45_11();
                  v189 = OUTLINED_FUNCTION_39_13();
                  v190 = *v377;
                  v338 = v189;
                  HIDWORD(v337) = BYTE4(v370);
                  os_log_type_enabled(v189, BYTE4(v370));
                  OUTLINED_FUNCTION_425();
                  if (v60)
                  {
                    LODWORD(v10) = v191;
                  }

                  else
                  {
                    LODWORD(v10) = v190;
                  }

                  if (v10)
                  {
                    if (cf)
                    {
                      v192 = (CMBaseObjectGetDerivedStorage() + 459);
                    }

                    else
                    {
                      v192 = "";
                    }

                    if (ValueAtIndex)
                    {
                      v292 = (CMBaseObjectGetDerivedStorage() + 820);
                    }

                    else
                    {
                      v292 = "";
                    }

                    v293 = *(os_log_and_send_and_compose_flags_and_os_log_type + 703);
                    v294 = *(os_log_and_send_and_compose_flags_and_os_log_type + 704);
                    *v371 = v349[0];
                    *&v371[4] = "itemairplay_serviceVodkaExchange";
                    *&v371[12] = 2048;
                    *&v371[14] = cf;
                    *&v371[22] = 2048;
                    v372 = ValueAtIndex;
                    *v373 = 2082;
                    *&v373[2] = v192;
                    *&v373[10] = 2082;
                    *&v373[12] = v292;
                    *&v373[20] = 1024;
                    *&v373[22] = v293;
                    *&v373[26] = 1024;
                    *&v373[28] = v294;
                    OUTLINED_FUNCTION_5_65();
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl();
                    OUTLINED_FUNCTION_52_10();
                  }

                  OUTLINED_FUNCTION_129_3();
                  OUTLINED_FUNCTION_635();
LABEL_299:
                  v109 = 1;
                  v102 = cf;
                }

                else
                {
                  LOBYTE(v10) = 1;
                  v109 = 1;
                }

LABEL_300:
                if (v102)
                {
                  CFRelease(v102);
                }

                if (v109)
                {
                  if (v10)
                  {
                    break;
                  }

                  goto LABEL_53;
                }

                if (HIDWORD(v365))
                {
                  if (dword_1EAF172E8)
                  {
                    OUTLINED_FUNCTION_45_11();
                    v301 = OUTLINED_FUNCTION_39_13();
                    OUTLINED_FUNCTION_33_15(v301, v302, v303, v304, v305, v306, v307, v308, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366, *(&v366 + 1), v367, v368, v369, v370, BYTE4(v370), *v371, *&v371[8], *&v371[16], v372, *v373, *&v373[8], *&v373[16], *&v373[24], v374, v375, *(&v375 + 1), v376, *v377);
                    OUTLINED_FUNCTION_425();
                    if (v60)
                    {
                      v317 = v316;
                    }

                    else
                    {
                      v317 = v109;
                    }

                    if (v317)
                    {
                      v318 = v368;
                      if (v368)
                      {
                        v318 = CMBaseObjectGetDerivedStorage();
                      }

                      if (ValueAtIndex)
                      {
                        v318 = CMBaseObjectGetDerivedStorage();
                      }

                      OUTLINED_FUNCTION_58_5(v318, v309, v310, v311, v312, v313, v314, v315, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366);
                      OUTLINED_FUNCTION_47_9();
                      *&v371[12] = 2048;
                      *&v371[14] = v368;
                      *&v371[22] = 2048;
                      OUTLINED_FUNCTION_0_101();
                      OUTLINED_FUNCTION_27();
                      OUTLINED_FUNCTION_160_1();
                      _os_log_send_and_compose_impl();
                      OUTLINED_FUNCTION_52_10();
                    }

                    OUTLINED_FUNCTION_7();
                    OUTLINED_FUNCTION_635();
                  }

                  break;
                }

                if (v11 && !*(v11 + 701) && (!v8 || *(v11 + 700)))
                {
                  if (dword_1EAF172E8)
                  {
                    OUTLINED_FUNCTION_45_11();
                    OUTLINED_FUNCTION_39_13();
                    OUTLINED_FUNCTION_48_11();
                    cf = v322;
                    os_log_type_enabled(v322, v10);
                    OUTLINED_FUNCTION_425();
                    if (v60)
                    {
                      os_log_and_send_and_compose_flags_and_os_log_type = v323;
                    }

                    else
                    {
                      os_log_and_send_and_compose_flags_and_os_log_type = v109;
                    }

                    if (os_log_and_send_and_compose_flags_and_os_log_type)
                    {
                      if (v368)
                      {
                        v324 = (CMBaseObjectGetDerivedStorage() + 459);
                      }

                      else
                      {
                        v324 = "";
                      }

                      v338 = v324;
                      if (ValueAtIndex)
                      {
                        v331 = (CMBaseObjectGetDerivedStorage() + 820);
                      }

                      else
                      {
                        v331 = "";
                      }

                      if (v8)
                      {
                        CMBaseObjectGetDerivedStorage();
                      }

                      *v371 = v349[0];
                      OUTLINED_FUNCTION_4_74();
                      *&v373[2] = v338;
                      *&v373[10] = v332;
                      *&v373[12] = v331;
                      *&v373[20] = v333;
                      *&v373[22] = v8;
                      *&v373[30] = v332;
                      v374 = v334;
                      OUTLINED_FUNCTION_5_65();
                      OUTLINED_FUNCTION_108();
                      _os_log_send_and_compose_impl();
                      OUTLINED_FUNCTION_52_10();
                    }

                    OUTLINED_FUNCTION_7();
                    OUTLINED_FUNCTION_635();
                  }

                  goto LABEL_33;
                }

                if (dword_1EAF172E8)
                {
                  OUTLINED_FUNCTION_45_11();
                  OUTLINED_FUNCTION_39_13();
                  OUTLINED_FUNCTION_48_11();
                  cf = v319;
                  os_log_type_enabled(v319, v10);
                  OUTLINED_FUNCTION_425();
                  if (v60)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = v320;
                  }

                  else
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = v109;
                  }

                  if (os_log_and_send_and_compose_flags_and_os_log_type)
                  {
                    if (v368)
                    {
                      v321 = (CMBaseObjectGetDerivedStorage() + 459);
                    }

                    else
                    {
                      v321 = "";
                    }

                    v338 = v321;
                    if (ValueAtIndex)
                    {
                      v325 = (CMBaseObjectGetDerivedStorage() + 820);
                    }

                    else
                    {
                      v325 = "";
                    }

                    if (v8)
                    {
                      CMBaseObjectGetDerivedStorage();
                    }

                    *v371 = v349[0];
                    OUTLINED_FUNCTION_4_74();
                    *&v373[2] = v338;
                    *&v373[10] = v326;
                    *&v373[12] = v325;
                    *&v373[20] = v327;
                    *&v373[22] = v8;
                    *&v373[30] = v326;
                    v374 = v328;
                    OUTLINED_FUNCTION_5_65();
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl();
                    OUTLINED_FUNCTION_52_10();
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_635();
                }

                if (!v8 && *(v369 + 216) == 14)
                {
                  playerairplay_playItemOnMediaControl(v368, ValueAtIndex, v103, v104, v105, v106, v107, v108, v335, v336, v337, v338, SBYTE2(v338), BYTE3(v338), HIDWORD(v338), v339, v340, v341, v342, SWORD1(v342), SWORD2(v342), v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366, *(&v366 + 1), v367, v368, v369, v370, *v371, *&v371[8], *&v371[16], v372, *v373, *&v373[8]);
                }

                else if (*(v369 + 248) || !v11 || FigCFEqual())
                {
                  itemairplay_insertItemOnMediaControl(ValueAtIndex, v8);
                }

                else
                {
                  *(DerivedStorage + 702) = 1;
                }

                v329 = OUTLINED_FUNCTION_505();
                itemairplay_controlPlaybackActivityTimer(v329, v330);
                break;
            }
          }
        }

        if (v11)
        {
LABEL_33:
          if (*(v11 + 707) != 1)
          {
            goto LABEL_70;
          }
        }

        if (*(DerivedStorage + 709) && *(DerivedStorage + 710) && *(DerivedStorage + 728))
        {
          v61 = *(DerivedStorage + 704);
          if (v61 == 4)
          {
            v62 = v368;
            goto LABEL_150;
          }

          v62 = v368;
          if (dword_1EAF172E8)
          {
            OUTLINED_FUNCTION_45_11();
            v131 = OUTLINED_FUNCTION_39_13();
            OUTLINED_FUNCTION_33_15(v131, v132, v133, v134, v135, v136, v137, v138, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366, *(&v366 + 1), v367, v368, v369, v370, BYTE4(v370), *v371, *&v371[8], *&v371[16], v372, *v373, *&v373[8], *&v373[16], *&v373[24], v374, v375, *(&v375 + 1), v376, *v377);
            OUTLINED_FUNCTION_23_25();
            if (v11)
            {
              if (v62)
              {
                v139 = CMBaseObjectGetDerivedStorage();
                if (ValueAtIndex)
                {
                  goto LABEL_76;
                }
              }

              else if (ValueAtIndex)
              {
LABEL_76:
                v139 = CMBaseObjectGetDerivedStorage();
              }

              OUTLINED_FUNCTION_58_5(v139, v140, v141, v142, v143, v144, v145, v146, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366);
              OUTLINED_FUNCTION_6_60();
              *&v371[14] = v62;
              *&v371[22] = v193;
              OUTLINED_FUNCTION_0_101();
              OUTLINED_FUNCTION_25();
              OUTLINED_FUNCTION_160_1();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_52_10();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_635();
          }

          v61 = 4;
          *(DerivedStorage + 704) = 4;
          goto LABEL_150;
        }

        v61 = *(DerivedStorage + 704);
        if (v61 != 2)
        {
          v62 = v368;
          if (!*(DerivedStorage + 704))
          {
            *(DerivedStorage + 704) = 1;
            if (dword_1EAF172E8)
            {
              OUTLINED_FUNCTION_45_11();
              v63 = OUTLINED_FUNCTION_39_13();
              OUTLINED_FUNCTION_33_15(v63, v64, v65, v66, v67, v68, v69, v70, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366, *(&v366 + 1), v367, v368, v369, v370, BYTE4(v370), *v371, *&v371[8], *&v371[16], v372, *v373, *&v373[8], *&v373[16], *&v373[24], v374, v375, *(&v375 + 1), v376, *v377);
              OUTLINED_FUNCTION_23_25();
              if (v11)
              {
                if (v62)
                {
                  v71 = CMBaseObjectGetDerivedStorage();
                }

                if (ValueAtIndex)
                {
                  v71 = CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_58_5(v71, v72, v73, v74, v75, v76, v77, v78, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366);
                OUTLINED_FUNCTION_6_60();
                *&v371[14] = v62;
                *&v371[22] = v284;
                OUTLINED_FUNCTION_0_101();
                OUTLINED_FUNCTION_25();
                OUTLINED_FUNCTION_160_1();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_52_10();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_635();
            }

            itemairplay_startAssetTypeLoadAsync(ValueAtIndex);
            goto LABEL_70;
          }

LABEL_150:
          if (!*(DerivedStorage + 705) && v61 == 4 && *(DerivedStorage + 706))
          {
            *v371 = v348;
            *&v371[8] = v347;
            *&v371[16] = v346;
            v372 = v345;
            *v373 = v344;
            *&v373[8] = v343;
            *&v373[16] = v342;
            v10 = CFArrayCreate(allocator, v371, 7, MEMORY[0x1E695E9C0]);
            if (dword_1EAF172E8)
            {
              HIDWORD(v370) = 0;
              BYTE3(v370) = 0;
              v239 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              LODWORD(v11) = 0;
              os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_425();
              if (v60)
              {
                v241 = v240;
              }

              else
              {
                v241 = 0;
              }

              if (v241)
              {
                v295 = "";
                if (v368)
                {
                  v295 = (CMBaseObjectGetDerivedStorage() + 459);
                }

                v296 = "";
                if (ValueAtIndex)
                {
                  v296 = (CMBaseObjectGetDerivedStorage() + 820);
                }

                *v377 = v366;
                *&v377[4] = "playerairplay_synchronizePlayQueueItems";
                *&v377[12] = 2048;
                *&v377[14] = v368;
                *&v377[22] = 2048;
                v378 = ValueAtIndex;
                v379 = 2082;
                v380 = v295;
                v381 = 2082;
                v382 = v296;
                LODWORD(v336) = 52;
                v335 = v377;
                OUTLINED_FUNCTION_27();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_635();
              v62 = v368;
            }

            NotificationPayloadForProperties = FPSupport_CreateNotificationPayloadForProperties(v62, ValueAtIndex, v10);
            itemairplay_postItemNotification();
            *(DerivedStorage + 705) = 1;
            if (NotificationPayloadForProperties)
            {
              CFRelease(NotificationPayloadForProperties);
            }

            if (!v10)
            {
              goto LABEL_70;
            }

            goto LABEL_292;
          }

          if (v61 != 5)
          {
            if (*(DerivedStorage + 706) || !dword_1EAF172E8)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_45_11();
            v194 = OUTLINED_FUNCTION_39_13();
            OUTLINED_FUNCTION_33_15(v194, v195, v196, v197, v198, v199, v200, v201, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366, *(&v366 + 1), v367, v368, v369, v370, BYTE4(v370), *v371, *&v371[8], *&v371[16], v372, *v373, *&v373[8], *&v373[16], *&v373[24], v374, v375, *(&v375 + 1), v376, *v377);
            OUTLINED_FUNCTION_23_25();
            if (v11)
            {
              if (v368)
              {
                v202 = (CMBaseObjectGetDerivedStorage() + 459);
                if (ValueAtIndex)
                {
                  goto LABEL_159;
                }

LABEL_162:
                v203 = "";
              }

              else
              {
                v202 = "";
                if (!ValueAtIndex)
                {
                  goto LABEL_162;
                }

LABEL_159:
                v203 = (CMBaseObjectGetDerivedStorage() + 820);
              }

              v204 = *(DerivedStorage + 703);
              v205 = *(DerivedStorage + 704);
              v206 = *(DerivedStorage + 728);
              v207 = *(DerivedStorage + 709);
              v208 = *(DerivedStorage + 710);
              *v371 = v363[0];
              *&v371[4] = "playerairplay_synchronizePlayQueueItems";
              *&v371[12] = 2048;
              *&v371[14] = v368;
              *&v371[22] = 2048;
              v372 = ValueAtIndex;
              *v373 = 2082;
              *&v373[2] = v202;
              *&v373[10] = 2082;
              *&v373[12] = v203;
              *&v373[20] = 1024;
              *&v373[22] = v204;
              *&v373[26] = 1024;
              *&v373[28] = v205;
              LOWORD(v374) = 1024;
              *(&v374 + 2) = v206;
              HIWORD(v374) = 1024;
              LODWORD(v375) = v207;
              WORD2(v375) = 1024;
              *(&v375 + 6) = v208;
              OUTLINED_FUNCTION_5_65();
              OUTLINED_FUNCTION_25();
              OUTLINED_FUNCTION_160_1();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_52_10();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_635();
            goto LABEL_70;
          }

          if (dword_1EAF172E8)
          {
            OUTLINED_FUNCTION_45_11();
            v209 = OUTLINED_FUNCTION_39_13();
            OUTLINED_FUNCTION_33_15(v209, v210, v211, v212, v213, v214, v215, v216, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366, *(&v366 + 1), v367, v368, v369, v370, BYTE4(v370), *v371, *&v371[8], *&v371[16], v372, *v373, *&v373[8], *&v373[16], *&v373[24], v374, v375, *(&v375 + 1), v376, *v377);
            OUTLINED_FUNCTION_23_25();
            if (v11)
            {
              if (v62)
              {
                v217 = CMBaseObjectGetDerivedStorage();
              }

              if (ValueAtIndex)
              {
                v217 = CMBaseObjectGetDerivedStorage();
              }

              OUTLINED_FUNCTION_58_5(v217, v218, v219, v220, v221, v222, v223, v224, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366);
              OUTLINED_FUNCTION_6_60();
              *&v371[14] = v62;
              *&v371[22] = v253;
              OUTLINED_FUNCTION_0_101();
              OUTLINED_FUNCTION_25();
              OUTLINED_FUNCTION_160_1();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_52_10();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_635();
          }

          if (*(DerivedStorage + 701))
          {
            itemairplay_removeQueuedItemOnAirPlayController(ValueAtIndex);
          }

          else
          {
            itemairplay_doCleanupAtEndOfPlayback();
            v254 = OUTLINED_FUNCTION_505();
            itemairplay_cleanupItemForAirPlay(v254, v255);
          }

          itemairplay_postItemNotification();
          v123 = *(DerivedStorage + 680);
          if (v123)
          {
            CFRelease(v123);
            *(DerivedStorage + 680) = 0;
          }

LABEL_67:
          v99 = OUTLINED_FUNCTION_37_15(v123, v124, v125, v126, v127, v128, v129, v130, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366, *(&v366 + 1), v367, v368, v369);
LABEL_68:
          playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(v99, v100, v101, 1);
LABEL_69:
          ValueAtIndex = 0;
          goto LABEL_70;
        }

        v79 = v368;
        if (dword_1EAF172E8)
        {
          break;
        }

LABEL_81:
        v11 = CMBaseObjectGetDerivedStorage();
        v10 = FigCFWeakReferenceHolderCopyReferencedObject();
        CMBaseObjectGetDerivedStorage();
        if (!*(v11 + 2))
        {
          *(v11 + 704) = 4;
          v150 = 1;
          v151 = 182;
          goto LABEL_110;
        }

        v371[0] = 0;
        CMBaseObjectGetDerivedStorage();
        v148 = OUTLINED_FUNCTION_119_2();
        CMBaseObjectGetDerivedStorage();
        cf = v10;
        if (CFEqual(*(os_log_and_send_and_compose_flags_and_os_log_type + 24), cf2))
        {
          v149 = _MergedGlobals_65;
          if (!_MergedGlobals_65)
          {
            *&values = v359;
            *(&values + 1) = v358;
            v384 = v357;
            v385 = v361;
            v149 = CFArrayCreate(allocator, &values, 4, MEMORY[0x1E695E9C0]);
            _MergedGlobals_65 = v149;
          }
        }

        else
        {
          v149 = qword_1ED4CAC60;
          if (!qword_1ED4CAC60)
          {
            *&values = v353;
            *(&values + 1) = v361;
            v149 = CFArrayCreate(allocator, &values, 2, MEMORY[0x1E695E9C0]);
            qword_1ED4CAC60 = v149;
          }
        }

        v152 = *(os_log_and_send_and_compose_flags_and_os_log_type + 16);
        v153 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v153 && !v153(v152, v149, v371, os_log_and_send_and_compose_flags_and_os_log_type + 672))
        {
          if (!v371[0])
          {
            LODWORD(v149) = 1;
            v10 = cf;
            if (!v148)
            {
              goto LABEL_93;
            }

LABEL_92:
            CFRelease(v148);
            goto LABEL_93;
          }

          itemairplay_postItemNotification();
          v154 = 1;
          LODWORD(v149) = 1;
        }

        else
        {
          OUTLINED_FUNCTION_77_5();
        }

        v10 = cf;
        *(os_log_and_send_and_compose_flags_and_os_log_type + 728) = v154;
        if (v148)
        {
          goto LABEL_92;
        }

LABEL_93:
        if (!v149)
        {
          goto LABEL_111;
        }

        LOBYTE(values) = 0;
        CMBaseObjectGetDerivedStorage();
        v155 = OUTLINED_FUNCTION_119_2();
        CMBaseObjectGetDerivedStorage();
        if (*(os_log_and_send_and_compose_flags_and_os_log_type + 709) || !*(os_log_and_send_and_compose_flags_and_os_log_type + 648) || *(os_log_and_send_and_compose_flags_and_os_log_type + 664))
        {
          goto LABEL_95;
        }

        FigSimpleMutexLock();
        Copy = CFArrayCreateCopy(allocator, *(os_log_and_send_and_compose_flags_and_os_log_type + 648));
        FigSimpleMutexUnlock();
        v338 = Copy;
        if (!Copy)
        {
          goto LABEL_251;
        }

        Copy = *(os_log_and_send_and_compose_flags_and_os_log_type + 16);
        v161 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v161)
        {
          v162 = v161(Copy, v338, &values, os_log_and_send_and_compose_flags_and_os_log_type + 664);
          v163 = v338;
          LODWORD(Copy) = v162 == 0;
        }

        else
        {
          LODWORD(Copy) = 0;
          v163 = v338;
        }

        CFRelease(v163);
        if (Copy)
        {
          if (values)
          {
LABEL_95:
            v156 = 1;
            LODWORD(Copy) = 1;
            goto LABEL_96;
          }
        }

        if ((Copy & 1) == 0)
        {
LABEL_251:
          OUTLINED_FUNCTION_77_5();
LABEL_96:
          *(os_log_and_send_and_compose_flags_and_os_log_type + 709) = v156;
          if (!v155)
          {
            goto LABEL_98;
          }

LABEL_97:
          CFRelease(v155);
          goto LABEL_98;
        }

        LODWORD(Copy) = 1;
        if (v155)
        {
          goto LABEL_97;
        }

LABEL_98:
        if (!Copy)
        {
          goto LABEL_111;
        }

        LOBYTE(values) = 0;
        CMBaseObjectGetDerivedStorage();
        v158 = OUTLINED_FUNCTION_119_2();
        CMBaseObjectGetDerivedStorage();
        if (*(os_log_and_send_and_compose_flags_and_os_log_type + 710) || !*(os_log_and_send_and_compose_flags_and_os_log_type + 656) || *(os_log_and_send_and_compose_flags_and_os_log_type + 668))
        {
LABEL_100:
          v159 = 1;
          LODWORD(v160) = 1;
          goto LABEL_101;
        }

        FigSimpleMutexLock();
        v160 = CFArrayCreateCopy(allocator, *(os_log_and_send_and_compose_flags_and_os_log_type + 656));
        FigSimpleMutexUnlock();
        v338 = v160;
        if (v160)
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 80))
          {
            v164 = OUTLINED_FUNCTION_312();
            v166 = v165(v164);
            v167 = v160;
            LODWORD(v160) = v166 == 0;
          }

          else
          {
            LODWORD(v160) = 0;
            v167 = v338;
          }

          CFRelease(v167);
          if (v160 && values)
          {
            goto LABEL_100;
          }

          if (v160)
          {
            LODWORD(v160) = 1;
            if (!v158)
            {
              goto LABEL_103;
            }

LABEL_102:
            CFRelease(v158);
            goto LABEL_103;
          }
        }

        OUTLINED_FUNCTION_77_5();
LABEL_101:
        *(os_log_and_send_and_compose_flags_and_os_log_type + 710) = v159;
        if (v158)
        {
          goto LABEL_102;
        }

LABEL_103:
        if (!v160)
        {
          goto LABEL_111;
        }

        if (*(v11 + 709) && *(v11 + 710) && *(v11 + 728))
        {
          v150 = 4;
        }

        else
        {
          v150 = 3;
        }

        v151 = 176;
LABEL_110:
        LOBYTE(v11[v151]) = v150;
LABEL_111:
        if (v10)
        {
          playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v10);
LABEL_292:
          CFRelease(v10);
        }

LABEL_70:
        FigReadWriteLockUnlockForRead();
        ++v9;
        v8 = ValueAtIndex;
        if (v7 == v9)
        {
          goto LABEL_365;
        }
      }

      OUTLINED_FUNCTION_45_11();
      v80 = OUTLINED_FUNCTION_39_13();
      OUTLINED_FUNCTION_33_15(v80, v81, v82, v83, v84, v85, v86, v87, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366, *(&v366 + 1), v367, v368, v369, v370, BYTE4(v370), *v371, *&v371[8], *&v371[16], v372, *v373, *&v373[8], *&v373[16], *&v373[24], v374, v375, *(&v375 + 1), v376, *v377);
      OUTLINED_FUNCTION_23_25();
      if (!v11)
      {
LABEL_80:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_635();
        goto LABEL_81;
      }

      if (v79)
      {
        v88 = CMBaseObjectGetDerivedStorage();
        if (!ValueAtIndex)
        {
LABEL_79:
          OUTLINED_FUNCTION_58_5(v88, v89, v90, v91, v92, v93, v94, v95, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349[0], v349[1], v350, *(&v350 + 1), v351, v352, v353, v354, v355, v356, v357, v358, v359, cf, v361, allocator, v363[0], v363[1], cf2, v365, v366);
          OUTLINED_FUNCTION_6_60();
          *&v371[14] = v79;
          *&v371[22] = v147;
          OUTLINED_FUNCTION_0_101();
          OUTLINED_FUNCTION_25();
          OUTLINED_FUNCTION_160_1();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_52_10();
          goto LABEL_80;
        }
      }

      else if (!ValueAtIndex)
      {
        goto LABEL_79;
      }

      v88 = CMBaseObjectGetDerivedStorage();
      goto LABEL_79;
    }

LABEL_365:
    CFRelease(v4);
  }
}

void itemairplay_applyCachedPropertiesOnMediaControlItem(void *a1)
{
  if (CMBaseObjectGetDerivedStorage())
  {
    v3 = OUTLINED_FUNCTION_119_2();
    CMBaseObjectGetDerivedStorage();
    if (v3)
    {
      CFRelease(v3);
    }

    if (*(v1 + 700))
    {
      if (*(v1 + 701))
      {
        FigSimpleMutexLock();
        Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(v1 + 336));
        CFDictionaryRemoveAllValues(*(v1 + 336));
        FigSimpleMutexUnlock();
        if (Copy)
        {
          if (CFDictionaryGetCount(Copy) >= 1)
          {
            CFDictionaryApplyFunction(Copy, pap_applyCachedPropertiesOnMediaControl, a1);
          }

          CFRelease(Copy);
        }
      }
    }
  }
}

void playerairplay_removeQueuedItemUUIDStringOnAirPlayController(uint64_t a1, const void *a2)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = Mutable;
    if (a1 && !*DerivedStorage && *(DerivedStorage + 280))
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961D40], a2);
      if (pap_shouldUseInterstitialQueuing())
      {
        CFDictionaryAddValue(v6, *MEMORY[0x1E6961BD8], *MEMORY[0x1E695E4D0]);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        OUTLINED_FUNCTION_177();
        OUTLINED_FUNCTION_496();
        v7();
      }
    }

    if (v6)
    {

      CFRelease(v6);
    }
  }
}

void playerairplay_playItemOnMediaControl(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, char a5, os_log_type_t type, int a7, CFTypeRef cf, void *values, int a10, uint64_t a11, __int16 a12, char a13, os_log_type_t typea, unsigned int a15, CFTypeRef cfa, void *valuesa, uint64_t a18, __int16 a19, __int16 a20, __int16 a21, uint64_t a22, const char *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, CMTime *time, uint64_t a29, __int128 timea, uint64_t time_16, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  OUTLINED_FUNCTION_416();
  a57 = v58;
  a58 = v59;
  v61 = v60;
  v63 = v62;
  a45 = *MEMORY[0x1E69E9840];
  valuesa = v62;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cfa = 0;
  if (DerivedStorage)
  {
    v65 = DerivedStorage;
    if (!*DerivedStorage)
    {
      v66 = CMBaseObjectGetDerivedStorage();
      if (v66)
      {
        v67 = v66;
        FigReadWriteLockLockForRead();
        if (!*(v67 + 72) && !*(v67 + 701))
        {
          if (v65[35])
          {
            v68 = OUTLINED_FUNCTION_203();
            v70 = itemairplay_copyPlayParams(v68, v69, 0);
            if (v70)
            {
              v71 = v70;
              v72 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
              *v72 = v63;
              if (v63)
              {
                CFRetain(v63);
              }

              v72[1] = v61;
              if (v61)
              {
                CFRetain(v61);
              }

              playqueue_addItemToMediaControlPlaylist(v65[5]);
              if (dword_1EAF172E8)
              {
                OUTLINED_FUNCTION_147();
                v73 = OUTLINED_FUNCTION_126();
                if (os_log_type_enabled(v73, typea))
                {
                  v74 = a15;
                }

                else
                {
                  v74 = a15 & 0xFFFFFFFE;
                }

                if (v74)
                {
                  if (v63)
                  {
                    v75 = (CMBaseObjectGetDerivedStorage() + 459);
                  }

                  else
                  {
                    v75 = "";
                  }

                  v90 = v71;
                  if (v61)
                  {
                    v76 = (CMBaseObjectGetDerivedStorage() + 820);
                  }

                  else
                  {
                    v76 = "";
                  }

                  v77 = CMBaseObjectGetDerivedStorage();
                  pap_getDescriptionForAirPlayState(*(v77 + 216));
                  LODWORD(a18) = 136316674;
                  *(&a18 + 4) = "playerairplay_playItemOnMediaControl";
                  a21 = 2048;
                  *(&a19 + 3) = v63;
                  HIWORD(a22) = 2048;
                  a23 = v61;
                  LOWORD(a24) = 2082;
                  *(&a24 + 2) = v75;
                  WORD1(a25) = 2082;
                  *(&a25 + 4) = v76;
                  OUTLINED_FUNCTION_114_2();
                  time = "StartingPlayCalled";
                  OUTLINED_FUNCTION_32();
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl();
                  v71 = v90;
                }

                OUTLINED_FUNCTION_149_1();
                OUTLINED_FUNCTION_7();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              pap_setAirPlayState(v63, 15);
              CMBaseObjectGetDerivedStorage();
              LOBYTE(timea) = 0;
              FigCFDictionaryGetBooleanIfPresent();
              if (timea)
              {
                v78 = v65[26];
                v79 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v79)
                {
                  v79(v78, 1);
                }
              }

              v80 = *MEMORY[0x1E695E480];
              FigBytePumpGetFigBaseObject(v65[26]);
              v82 = v81;
              v83 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v83)
              {
                v83(v82, 0x1F0B34E38, v80, &cfa);
                if (cfa)
                {
                  if (dword_1EAF172E8)
                  {
                    OUTLINED_FUNCTION_147();
                    v91 = OUTLINED_FUNCTION_126();
                    if (os_log_type_enabled(v91, typea))
                    {
                      v84 = a15;
                    }

                    else
                    {
                      v84 = a15 & 0xFFFFFFFE;
                    }

                    if (v84)
                    {
                      if (v63)
                      {
                        v85 = (CMBaseObjectGetDerivedStorage() + 459);
                      }

                      else
                      {
                        v85 = "";
                      }

                      LODWORD(a18) = 136315906;
                      *(&a18 + 4) = "playerairplay_playItemOnMediaControl";
                      a21 = 2048;
                      *(&a19 + 3) = v63;
                      HIWORD(a22) = 2082;
                      a23 = v85;
                      LOWORD(a24) = 2048;
                      *(&a24 + 2) = cfa;
                      OUTLINED_FUNCTION_32();
                      OUTLINED_FUNCTION_108();
                      _os_log_send_and_compose_impl();
                    }

                    OUTLINED_FUNCTION_7();
                    OUTLINED_FUNCTION_417();
                  }

                  FigEndpointStreamSuspend();
                }
              }

              v86 = CFDictionaryCreate(v80, &kFigPlayerAirPlayNotificationPayloadKey_HijackingPlayer, &valuesa, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              playerairplay_postPlayerNotification();
              if (v86)
              {
                CFRelease(v86);
              }

              if (*(*(CMBaseObjectGetVTable() + 16) + 24))
              {
                v87 = OUTLINED_FUNCTION_151_1();
                v88(v87);
              }

              FigCAStatsReportingSubmitData();
              playerairplay_postPlayerNotification();
              v89 = *(v67 + 568);
              timea = *(v67 + 160);
              time_16 = *(v67 + 176);
              CMTimebaseSetTime(v89, &timea);
              OUTLINED_FUNCTION_270();
              itemairplay_postItemNotification();
              CFRelease(v71);
              if (cfa)
              {
                CFRelease(cfa);
              }
            }
          }
        }

        FigReadWriteLockUnlockForRead();
      }
    }
  }

  OUTLINED_FUNCTION_372();
}

uint64_t itemairplay_removeQueuedItemOnAirPlayController(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!CMBaseObjectGetDerivedStorage() || (OUTLINED_FUNCTION_100_3(), v5))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
    if (v4)
    {
LABEL_7:
      CFRelease(v4);
    }
  }

  else
  {
    FigReadWriteLockLockForRead();
    if (!*(DerivedStorage + 72) && !*v1)
    {
      itemairplay_doCleanupAtEndOfPlayback();
      itemairplay_cleanupItemForAirPlay(a1, 1);
      playerairplay_removeQueuedItemUUIDStringOnAirPlayController(v4, *(DerivedStorage + 80));
    }

    if (v4)
    {
      goto LABEL_7;
    }
  }

  return FigReadWriteLockUnlockForRead();
}

uint64_t itemairplay_unsubscribeFromURLProcessor(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a1 && *(result + 808))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_68_7();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_67_9();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_66_7();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

void itemairplay_sendUnhandledURLResponse()
{
  OUTLINED_FUNCTION_135_2();
  v3 = OUTLINED_FUNCTION_119_2();
  if (CMBaseObjectGetDerivedStorage())
  {
    OUTLINED_FUNCTION_100_3();
    if (!v4)
    {
      FigReadWriteLockLockForRead();
      if (!*(v0 + 72))
      {
        if (v1)
        {
          CFRetain(v1);
        }

        if (v3)
        {
          CFRetain(v3);
        }

        if (v2)
        {
          CFRetain(v2);
        }

        OUTLINED_FUNCTION_0_52();
        OUTLINED_FUNCTION_1_44();
        v6[2] = __itemairplay_sendUnhandledURLResponse_block_invoke;
        v6[3] = &__block_descriptor_64_e5_v8__0l;
        v6[4] = v2;
        v6[5] = v0;
        v6[6] = v3;
        v6[7] = v1;
        dispatch_async(v5, v6);
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  if (v3)
  {
    CFRelease(v3);
  }
}

void itemairplay_handleStreamingKeyRequest()
{
  OUTLINED_FUNCTION_135_2();
  v3 = OUTLINED_FUNCTION_119_2();
  if (CMBaseObjectGetDerivedStorage())
  {
    OUTLINED_FUNCTION_100_3();
    if (!v4)
    {
      FigReadWriteLockLockForRead();
      if (!*(v0 + 72))
      {
        if (v1)
        {
          CFRetain(v1);
        }

        if (v3)
        {
          CFRetain(v3);
        }

        if (v2)
        {
          CFRetain(v2);
        }

        OUTLINED_FUNCTION_0_52();
        OUTLINED_FUNCTION_1_44();
        v6[2] = __itemairplay_handleStreamingKeyRequest_block_invoke;
        v6[3] = &__block_descriptor_64_e5_v8__0l;
        v6[4] = v0;
        v6[5] = v2;
        v6[6] = v3;
        v6[7] = v1;
        dispatch_async(v5, v6);
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  if (v3)
  {
    CFRelease(v3);
  }
}

void itemairplay_handleURLProcessorFailed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && !*DerivedStorage)
  {
    if (a5)
    {
      CFRetain(a5);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_1_44();
    v10[2] = __itemairplay_handleURLProcessorFailed_block_invoke;
    v10[3] = &__block_descriptor_48_e5_v8__0l;
    v10[4] = a5;
    v10[5] = a2;
    dispatch_async(v9, v10);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t pap_playbackSessionGetBooleanProperty()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v0 || *DerivedStorage || !*(DerivedStorage + 280))
  {
    return 0;
  }

  FigEndpointPlaybackSessionGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v2 = OUTLINED_FUNCTION_177();
    v3(v2);
  }

  return FigCFEqual();
}

void itemairplay_postFailNotificationWithError(uint64_t a1, int a2, char a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ErrorPayload = iapc_createErrorPayload(a2, a3);
  if (DerivedStorage)
  {
    if (dword_1EAF172E8)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_149_1();
      v9 = OUTLINED_FUNCTION_126();
      OUTLINED_FUNCTION_130(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, SBYTE2(v20), BYTE3(v20), SHIDWORD(v20));
      OUTLINED_FUNCTION_28();
      if (v3)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_139();
        OUTLINED_FUNCTION_53_10();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_61_5();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_417();
    }

    OUTLINED_FUNCTION_236();
    itemairplay_postItemNotification();
  }

  if (ErrorPayload)
  {
    CFRelease(ErrorPayload);
  }
}

void pap_playbackSessionPerformRemoteAction(uint64_t a1, uint64_t a2, __CFDictionary *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    OUTLINED_FUNCTION_100_3();
    if (!v6)
    {
      if (*(v3 + 280))
      {
        if (pap_shouldUseInterstitialQueuing())
        {
          CFDictionaryAddValue(a3, *MEMORY[0x1E6961BD8], *MEMORY[0x1E695E4D0]);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 112))
        {
          v7 = OUTLINED_FUNCTION_502();

          v8(v7);
        }
      }
    }
  }
}

void __itemairplay_handleStreamingKeyRequest_block_invoke(void *a1)
{
  FigReadWriteLockLockForRead();
  if (*(a1[4] + 72))
  {
    CopyRemovingKeys = 0;
    v3 = 0;
  }

  else
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 32);
    v3 = Mutable;
    if (Mutable && (CFDataSetLength(Mutable, 32), (MutableBytePtr = CFDataGetMutableBytePtr(v3)) != 0))
    {
      v5 = MutableBytePtr;
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetInt64IfPresent();
      v5[24] = 0;
      *(v5 + 2) = 0;
      v6 = a1[6];
      *v5 = v6;
      if (v6)
      {
        CFRetain(v6);
      }

      v7 = a1[7];
      *(v5 + 1) = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      CFRetain(v3);
      CopyRemovingKeys = FigCFDictionaryCreateCopyRemovingKeys();
      pap_playbackSessionPerformRemoteAction(a1[6], *MEMORY[0x1E6961A18], CopyRemovingKeys);
    }

    else
    {
      CopyRemovingKeys = 0;
    }
  }

  OUTLINED_FUNCTION_137_1();
  if (v3)
  {
    CFRelease(v3);
  }

  if (CopyRemovingKeys)
  {
    CFRelease(CopyRemovingKeys);
  }

  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[5];
  if (v11)
  {
    CFRelease(v11);
  }
}

void pap_playbackSessionRequestForStreamingKeyCompletion()
{
  OUTLINED_FUNCTION_471();
  v3 = v2;
  MutableBytePtr = CFDataGetMutableBytePtr(v4);
  if (MutableBytePtr)
  {
    v6 = MutableBytePtr;
    CMBaseObjectGetDerivedStorage();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (v1)
    {
      CFRetain(v1);
    }

    OUTLINED_FUNCTION_2_49();
    v10 = 3221225472;
    v11 = __pap_playbackSessionRequestForStreamingKeyCompletion_block_invoke;
    v12 = &__block_descriptor_68_e5_v8__0l;
    v17 = v3;
    v13 = v1;
    v14 = v6;
    v15 = DerivedStorage;
    v16 = v0;
    dispatch_async(v8, block);
  }
}

void __itemairplay_handleURLProcessorFailed_block_invoke(uint64_t a1)
{
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  itemairplay_postFailNotificationWithError(*(a1 + 40), 0, 0);
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

uint64_t itemairplay_assureItemForAirPlay()
{
  CMBaseObjectGetDerivedStorage();
  v1 = OUTLINED_FUNCTION_119_2();
  if (*(v0 + 72))
  {
    goto LABEL_2;
  }

  if (!*(v0 + 568))
  {
    v4 = *MEMORY[0x1E695E480];
    HostTimeClock = CMClockGetHostTimeClock();
    v2 = CMTimebaseCreateWithSourceClock(v4, HostTimeClock, (v0 + 568));
    if (v2)
    {
LABEL_3:
      v3 = v2;
      if (!v1)
      {
        return v3;
      }

      goto LABEL_13;
    }
  }

  if (!*(v0 + 592))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage || *DerivedStorage)
    {
LABEL_2:
      OUTLINED_FUNCTION_243();
      v2 = FigSignalErrorAtGM();
      goto LABEL_3;
    }

    v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(DerivedStorage + 88));
    *(v0 + 592) = v7;
    if (!v7)
    {
      v3 = 4294954434;
      if (!v1)
      {
        return v3;
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_496();
    dispatch_source_set_timer(v8, v9, v10, v11);
    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_1_44();
    DispatchSourceBlock = FigDispatchCreateDispatchSourceBlock();
    dispatch_source_set_event_handler(*(v0 + 592), DispatchSourceBlock);
    _Block_release(DispatchSourceBlock);
    dispatch_resume(*(v0 + 592));
  }

  v3 = 0;
  if (v1)
  {
LABEL_13:
    CFRelease(v1);
  }

  return v3;
}

uint64_t itemairplay_createCPEProtectorIfAvailable(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemairplay_getiTunesStoreContentType();
  valuePtr = 0;
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  v7 = CMBaseObjectGetDerivedStorage();
  if (!v7 || *v7)
  {
    goto LABEL_20;
  }

  if (pap_playbackSessionGetBooleanProperty())
  {
    v8 = 0;
    Value = *MEMORY[0x1E695E870];
LABEL_8:
    v10 = itemairplay_copyiTunesStoreContentInfo();
    v11 = v10;
    if (v10)
    {
      Value = CFDictionaryGetValue(v10, @"assetOption_iTunesStoreContentID");
      if (!Value)
      {
LABEL_10:
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_25;
      }
    }

    else if (!Value)
    {
      goto LABEL_10;
    }

    CFRetain(Value);
    if (!v11)
    {
LABEL_11:
      if (!Value)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_25:
    CFRelease(v11);
    if (!Value)
    {
      goto LABEL_13;
    }

LABEL_12:
    CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
    goto LABEL_13;
  }

  v8 = itemairplay_copyiTunesStoreAlternateContentID();
  Value = *MEMORY[0x1E695E870];
  OUTLINED_FUNCTION_104_0();
  if (FigCFEqual())
  {
    goto LABEL_8;
  }

  if (!v8)
  {
    Value = 0;
    goto LABEL_13;
  }

  Value = CFRetain(v8);
  if (Value)
  {
    goto LABEL_12;
  }

LABEL_13:
  *a3 = 0;
  isLocalFileURL = pap_isLocalFileURL(*(DerivedStorage + 88), 0);
  FigCFDictionaryGetBooleanIfPresent();
  if (isLocalFileURL)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject(a1);
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(FigBaseObject, @"CPEProtector", *MEMORY[0x1E695E480], &v17);
    }
  }

  if (Value)
  {
    CFRelease(Value);
  }

  if (v8)
  {
    CFRelease(v8);
  }

LABEL_20:
  if (v6)
  {
    CFRelease(v6);
  }

  return v17;
}

uint64_t itemairplay_requestAirPlayPlaybackInfo(const void *a1, uint64_t a2, char a3, char a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_71_4(DerivedStorage);
  FigReadWriteLockLockForRead();
  if (!*(v4 + 72))
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v10)
    {
      v11 = v10;
      if (!playerairplay_deferMediaControlPlaylistForInterstitials())
      {
        v12 = CMBaseObjectGetDerivedStorage();
        if (!*v12 && !*(v4 + 72))
        {
          v13 = v12;
          CFRetain(v11);
          if (a1)
          {
            CFRetain(a1);
          }

          OUTLINED_FUNCTION_0_52();
          OUTLINED_FUNCTION_1_44();
          v16[2] = __itemairplay_requestAirPlayPlaybackInfo_block_invoke;
          v16[3] = &__block_descriptor_74_e5_v8__0l;
          v16[4] = a2;
          v16[5] = v13;
          v16[6] = v4;
          v16[7] = v11;
          v16[8] = a1;
          v17 = a3;
          v18 = a4;
          dispatch_async(v14, v16);
        }
      }

      CFRelease(v11);
    }
  }

  return FigReadWriteLockUnlockForRead();
}

void __itemairplay_requestAirPlayPlaybackInfo_block_invoke(uint64_t a1)
{
  if (!**(a1 + 40) && !*(*(a1 + 48) + 72))
  {
    v2 = *(a1 + 32);
    if (!v2)
    {
      v2 = OUTLINED_FUNCTION_62_8();
      v3 = *(a1 + 56);
      *v2 = v3;
      if (v3)
      {
        CFRetain(v3);
      }

      v4 = *(a1 + 64);
      v2[1] = v4;
      if (v4)
      {
        CFRetain(v4);
      }
    }

    *(v2 + 29) = *(a1 + 72);
    *(v2 + 30) = *(a1 + 73);
    if (*(a1 + 72))
    {
      v5 = *(a1 + 48);
      *(v5 + 252) = *(v5 + 160);
      *(v5 + 268) = *(v5 + 176);
    }

    v6 = *(a1 + 56);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (v6 && (v8 = *(DerivedStorage + 280)) != 0 && !*DerivedStorage)
    {
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v9)
      {
        v9(v8, pap_playbackSessionGetPlaybackInfoCompletion, v2);
      }
    }

    else
    {
      pap_playbackSessionFreeSeekCompletionContext(v2);
    }
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 64);
  if (v11)
  {

    CFRelease(v11);
  }
}

uint64_t itemairplay_getPlaybackInfoCompletionHandler(uint64_t a1, const void *a2, const __CFDictionary *a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  HIDWORD(v398) = a6;
  v512 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_71_4(DerivedStorage);
  FigReadWriteLockLockForRead();
  if (*(v8 + 72))
  {
    return FigReadWriteLockUnlockForRead();
  }

  if (!CMBaseObjectGetDerivedStorage())
  {
    return FigReadWriteLockUnlockForRead();
  }

  OUTLINED_FUNCTION_100_3();
  if (v18)
  {
    return FigReadWriteLockUnlockForRead();
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(a3, @"item");
  if (!Value)
  {
    Value = a3;
  }

  v20 = CFDictionaryGetValue(Value, *MEMORY[0x1E6961D40]);
  if (v20)
  {
    v21 = CFEqual(v20, *(v8 + 80)) != 0;
    if (a4)
    {
LABEL_15:
      if (a4 == -6722)
      {
        playerairplay_shutdownAirPlayVideoPlaybackDueToServer(a2);
      }

      return FigReadWriteLockUnlockForRead();
    }
  }

  else
  {
    v21 = 1;
    if (a4)
    {
      goto LABEL_15;
    }
  }

  if (!v21)
  {
    goto LABEL_15;
  }

  *&v369[28] = a7;
  HIWORD(v478) = 0;
  LODWORD(v478) = 0;
  Rate = CMTimebaseGetRate(*(v8 + 568));
  *(&v471 + 1) = Rate;
  v505 = *(v8 + 160);
  HIDWORD(v354) = *(v8 + 172);
  v506 = *(v8 + 168);
  *&v354 = *(v8 + 176);
  *v445 = *MEMORY[0x1E6960C70];
  epoch = *(MEMORY[0x1E6960C70] + 16);
  *&v445[16] = epoch;
  *v369 = *MEMORY[0x1E6960C70];
  *v419 = *MEMORY[0x1E6960C70];
  *&v419[16] = epoch;
  HIBYTE(v412) = 0;
  v24 = CFGetTypeID(a3);
  if (v24 != CFDictionaryGetTypeID())
  {
    return FigReadWriteLockUnlockForRead();
  }

  FigCFDictionaryGetValue();
  FigCFDictionaryGetBooleanIfPresent();
  *&v369[16] = epoch;
  LODWORD(v390) = a5;
  v340 = a8;
  if (FigCFEqual())
  {
    if (dword_1EAF172E8)
    {
      LODWORD(values.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMTimebaseSetRate(*(v8 + 568), 0.0);
  }

  else
  {
    FigCFDictionaryGetFloat32IfPresent();
  }

  pap_FigCFDictionaryGetBooleanIfPresent(a3);
  if (*(v9 + 456))
  {
    *&time1.value = *v369;
    time1.epoch = epoch;
    rhs.value = *MEMORY[0x1E6960C70];
    flags = *(MEMORY[0x1E6960C70] + 12);
    rhs.timescale = *(MEMORY[0x1E6960C70] + 8);
    FigSimpleMutexLock();
    v28 = *(v8 + 576);
    if (v28)
    {
      v29 = CFRetain(v28);
      FigSimpleMutexUnlock();
      if (v29)
      {
        CMTimebaseGetTime(&time, v29);
        rhs.value = time.value;
        flags = time.flags;
        rhs.timescale = time.timescale;
        epoch = time.epoch;
        CFRelease(v29);
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    FigCFDictionaryGetCMTimeIfPresent();
    if ((time1.flags & 0x1D) == 1)
    {
      time = time1;
      CMTimeGetSeconds(&time);
    }

    if ((flags & 0x1D) == 1)
    {
      time.value = rhs.value;
      time.timescale = rhs.timescale;
      time.flags = flags;
      time.epoch = epoch;
      CMTimeGetSeconds(&time);
      if ((time1.flags & 0x1D) == 1)
      {
        OUTLINED_FUNCTION_27_17(v30, v31, v32, v33, v34, v35, v36, v37, v299, v306, v313, v320, v327, *(&v327 + 1), a8, v347, v354, *(&v354 + 1), *v369, *&v369[8], *&v369[16], *&v369[24], v390, v398, at, v412, *v419, *&v419[8], *&v419[16], v438, *v445, *&v445[8], *&v445[16], v464, v471, v478, type.value, *&type.timescale, type.epoch, v486, rhs.value, __SPAIR64__(flags, rhs.timescale), epoch, cf, v489, v490, v491, *(&v491 + 1), v492, v493, time.value, *&time.timescale, time.epoch, v495, v496, v497, v498, v499, v500, v501, v502, v503, *&time1.value);
        v46 = OUTLINED_FUNCTION_150_2(v38, v39, v40, v41, v42, v43, v44, v45, v300, v307, v314, v321, v328, keya, v341, v348, v355, v362, v370, v375, v380, v385, v391, v399, atc, v413, v420, v426, v432, v439, v446, v452, v458, v465, v472, v479, type.value, *&type.timescale, type.epoch, v486, values.value);
        CMTimeSubtract(v48, v46, v47);
        CMTimeGetSeconds(&time);
      }
    }

    epoch = *&v369[16];
  }

  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  v49 = CMBaseObjectGetDerivedStorage();
  v57 = *(v49 + 360);
  if (v57)
  {
    LODWORD(v57) = *(v8 + 144);
    if (v57)
    {
      LODWORD(v57) = *(v9 + 241) == 0;
    }
  }

  if (!(*&v369[28] | a5) && Rate == 0.0 && (v58 = *(&v471 + 1), ((*(&v471 + 1) == Rate) & ~v57) != 0))
  {
    LODWORD(v347) = 0;
  }

  else
  {
    if (a5)
    {
      v59 = *(v8 + 264);
      if (v59)
      {
        v505 = *(v8 + 252);
        v506 = *(v8 + 260);
        *&v354 = *(v8 + 268);
        *(v8 + 268) = epoch;
        *(v8 + 252) = *v369;
        HIDWORD(v354) = v59;
      }
    }

    if (dword_1EAF172E8)
    {
      v49 = CMBaseObjectGetDerivedStorage();
      if (dword_1EAF172E8)
      {
        v60 = *(v49 + 216);
        if (v60)
        {
          if (v60 != 10)
          {
            LODWORD(values.value) = 0;
            LOBYTE(type.value) = 0;
            v347 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            DWORD2(v327) = 0;
            os_log_type_enabled(v347, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            v49 = OUTLINED_FUNCTION_414();
          }
        }
      }
    }

    if (v445[12])
    {
      LODWORD(v347) = *(v8 + 132) & 1;
      if (v347)
      {
        if (*(v8 + 157))
        {
          v49 = CMBaseObjectGetDerivedStorage();
          if (*(v49 + 360))
          {
            time1 = *(v8 + 120);
            v61 = OUTLINED_FUNCTION_145_1();
            v49 = itemairplay_airplaySetCurrentTime(v61, v62, 245, v63, v64);
            *(v8 + 157) = 0;
          }
        }
      }

      OUTLINED_FUNCTION_40_12(v49, v50, v51, v52, v53, v54, v55, v56, v299, v306, v313, v320, v327, *(&v327 + 1), v340, v347, v354, *(&v354 + 1), *v369, *&v369[8], *&v369[16], *&v369[24], v390, v398, at, v412, *v419);
      time = **&MEMORY[0x1E6960CC0];
      if (CMTimeCompare(&time1, &time) || CFEqual(*(v8 + 24), @"com.apple.coremedia.assettype.streaming") | a5)
      {
        values = *v445;
        v65 = CMBaseObjectGetDerivedStorage();
        v66 = CMTimebaseCopySource(*(v65 + 568));
        CMTimebaseGetRate(*(v65 + 568));
        CMSyncGetTime(&time1, v66);
        time = *v445;
        CMTimebaseSetRateAndAnchorTimeWithFlags();
        time1 = *v445;
        v67 = OUTLINED_FUNCTION_145_1();
        itemairplay_setRememberedTimeAndDefaultFlag(v67, v68);
        if (v66)
        {
          CFRelease(v66);
        }

        v69 = *(v8 + 148);
        if (v69 && v69 == *(v8 + 144))
        {
          *(v8 + 156) = 1;
        }
      }
    }

    else
    {
      LODWORD(v347) = 0;
    }

    v58 = *(&v471 + 1);
  }

  v70 = HIDWORD(v398) != 1 || v58 == Rate;
  if (!v70 && v58 != 0.0 && *(v9 + 56) == 0.0)
  {
    time1 = *v445;
    v71 = OUTLINED_FUNCTION_171();
    playerairplay_notifyStartupTasksOfEvents(v71, v72, 5, 0, v73, v74, v75);
    time1.value = 0;
    FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 39, &time1);
    playerairplay_updatePlayerRateToMatch(a2, time1.value, *(&v471 + 1));
    if (time1.value)
    {
      CFRelease(time1.value);
    }

    v58 = *(&v471 + 1);
  }

  if (v58 != Rate)
  {
    v76 = OUTLINED_FUNCTION_171();
    v79 = playerairplay_ignoreRemoteRateUpdate(v78, v76, v77);
    if ((*(&v471 + 1) != 0.0 || !*(v9 + 241) || (*(v8 + 524) & 1) == 0) && !v79)
    {
      if (HIDWORD(v398) == 1 || Rate != 0.0 || (CMBaseObjectGetDerivedStorage(), LOBYTE(time1.value) = 0, FigCFDictionaryGetBooleanIfPresent(), !LOBYTE(time1.value)) || !*(v9 + 456))
      {
        time1.value = 0;
        FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 39, &time1);
        CFDictionaryAddValue(time1.value, @"PauseAffectsCoordinatedPlayback", *MEMORY[0x1E695E4D0]);
        playerairplay_updatePlayerRateToMatch(a2, time1.value, *(&v471 + 1));
        if (time1.value)
        {
          CFRelease(time1.value);
        }
      }
    }

    if (*(&v471 + 1) != 0.0 && !*(v9 + 241))
    {
      OUTLINED_FUNCTION_171();
      if (pap_hasAirPlayReachedTimeToPausePlayback())
      {
        *(v9 + 64) = 0;
        v80 = OUTLINED_FUNCTION_171();
        pap_handleAirPlayReachedTimeToPausePlayback(v80, v81);
      }
    }
  }

  ata = 0;
  if (FigCFDictionaryGetDoubleIfPresent() && (v82 = CFDateCreate(*MEMORY[0x1E695E480], 0.0)) != 0)
  {
    v86 = 0;
    v85 = v82;
  }

  else
  {
    v82 = CFDictionaryGetValue(a3, *MEMORY[0x1E6961D80]);
    if (!v82)
    {
      v83 = CFDictionaryGetValue(a3, *MEMORY[0x1E6961D90]);
      if (v83)
      {
        v84 = *(v8 + 192);
        *(v8 + 192) = v83;
        CFRetain(v83);
        if (v84)
        {
          CFRelease(v84);
        }

        *(v8 + 224) = 1;
      }

      goto LABEL_101;
    }

    v85 = 0;
    v86 = 1;
  }

  v87 = *(v8 + 192);
  *(v8 + 192) = v82;
  CFRetain(v82);
  if (v87)
  {
    CFRelease(v87);
  }

  *(v8 + 224) = 0;
  *(v8 + 200) = *v369;
  *(v8 + 216) = epoch;
  FigCFDictionaryGetCMTimeIfPresent();
  if (!*(v9 + 248))
  {
    time = *(v8 + 200);
    CMTimeConvertScale(&time1, &time, 1, kCMTimeRoundingMethod_RoundTowardZero);
    *(v8 + 200) = time1;
  }

  if ((v86 & 1) == 0)
  {
    CFRelease(v85);
  }

LABEL_101:
  if (v419[12])
  {
    time1 = *(v8 + 228);
    time = *v419;
    v88 = CMTimeCompare(&time1, &time);
    if (v88)
    {
      v96 = *MEMORY[0x1E695E480];
      OUTLINED_FUNCTION_40_12(v88, v89, v90, v91, v92, v93, v94, v95, v299, v306, v313, v320, v327, *(&v327 + 1), v340, v347, v354, *(&v354 + 1), *v369, *&v369[8], *&v369[16], *&v369[24], v390, v398, 0, v412, *v419);
      values.value = CMTimeCopyAsDictionary(&time1, v96);
      if (values.value)
      {
        v97 = CFDictionaryCreate(v96, &kFigPlaybackItemParameter_CurrentDuration, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      else
      {
        v97 = 0;
      }

      *(v8 + 228) = *v419;
      *(v8 + 244) = *&v419[16];
      if (dword_1EAF172E8)
      {
        LODWORD(type.value) = 0;
        LOBYTE(rhs.value) = 0;
        v98 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v98, rhs.value);
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      itemairplay_postItemNotification();
      if (values.value)
      {
        CFRelease(values.value);
      }

      if (v97)
      {
        CFRelease(v97);
      }
    }
  }

  pap_FigCFDictionaryGetBooleanIfPresent(a3);
  if (v99)
  {
    if (*(v8 + 601) != HIBYTE(v478))
    {
      *(v8 + 601) = HIBYTE(v478);
      if (HIBYTE(v478))
      {
        OUTLINED_FUNCTION_340_1();
        itemairplay_postItemNotification();
      }
    }
  }

  pap_FigCFDictionaryGetBooleanIfPresent(a3);
  if (v100)
  {
    if (*(v8 + 602) != HIBYTE(v478))
    {
      *(v8 + 602) = HIBYTE(v478);
      if (HIBYTE(v478))
      {
        OUTLINED_FUNCTION_340_1();
        itemairplay_postItemNotification();
      }
    }
  }

  pap_FigCFDictionaryGetBooleanIfPresent(a3);
  if (v101)
  {
    v152 = OUTLINED_FUNCTION_171();
    playerairplay_mediaControlHandlePlaybackLikelyToKeepUp(v152, v153, v154, v155, v156, v157, v158, v159, v299, v306, v313, v320, SWORD1(v320), SWORD2(v320), SBYTE6(v320), HIBYTE(v320), v327, v340, v347, v354, *v369, *&v369[8], *&v369[16], v390, v398, ata, v412, *v419, *&v419[8], *&v419[16], v438, *v445, *&v445[8], *&v445[16], v464, v471, v478, type.value, *&type.timescale, type.epoch, v486, values.value, *&values.timescale, values.epoch, cf, v489, v490, v491, *(&v491 + 1), v492, v493);
  }

  v102 = CFDictionaryGetValue(a3, *MEMORY[0x1E6961DA0]);
  if (v102 && itemairplay_isRangeArraysDifferent())
  {
    v160 = *MEMORY[0x1E695E480];
    v161 = OUTLINED_FUNCTION_173_0();
    Mutable = CFDictionaryCreateMutable(v161, v162, v163, v164);
    v510 = 0;
    v166 = *(v8 + 608);
    *(v8 + 608) = v102;
    CFRetain(v102);
    if (v166)
    {
      CFRelease(v166);
    }

    itemairplay_convertTimeRangesToTimeIntervals(v160, v102, 1, &v510);
    FigCFDictionarySetValue();
    itemairplay_postItemNotification();
    if (*(v8 + 500))
    {
      v320 = Mutable;
      v492 = *(v8 + 504);
      v491 = *(v8 + 488);
      Count = CFArrayGetCount(v102);
      if (Count >= 1)
      {
        v168 = Count;
        v169 = 0;
        v327 = *MEMORY[0x1E6961F00];
        while (1)
        {
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v102, v169);
            if (ValueAtIndex)
            {
              break;
            }

            if (++v169 >= v168)
            {
              goto LABEL_253;
            }
          }

          v171 = ValueAtIndex;
          v172 = CFDictionaryGetValue(ValueAtIndex, *(&v327 + 1));
          v173 = CFDictionaryGetValue(v171, v327);
          if (!v172)
          {
            break;
          }

          v174 = v173;
          if (!v173)
          {
            break;
          }

          memset(&time1, 0, sizeof(time1));
          CMTimeMakeFromDictionary(&time1, v172);
          memset(&time, 0, sizeof(time));
          v175 = CMTimeMakeFromDictionary(&time, v174);
          OUTLINED_FUNCTION_27_17(v175, v176, v177, v178, v179, v180, v181, v182, v299, v306, v313, v320, v327, *(&v327 + 1), v340, v347, v354, *(&v354 + 1), *v369, *&v369[8], *&v369[16], *&v369[24], v390, v398, ata, v412, *v419, *&v419[8], *&v419[16], v438, *v445, *&v445[8], *&v445[16], v464, v471, v478, type.value, *&type.timescale, type.epoch, v486, 0, 0, 0, cf, v489, v490, v491, *(&v491 + 1), v492, v493, time.value, *&time.timescale, time.epoch, v495, v496, v497, v498, v499, v500, v501, v502, v503, *&time1.value);
          rhs = time;
          v183 = CMTimeAdd(&values, &type, &rhs);
          OUTLINED_FUNCTION_166_1(v183, v184, v185, v186, v187, v188, v189, v190, v302, v309, v316, v323, v330, keyb, v343, v350, v357, v364, v371, v376, v381, v386, v394, v400, atd, v415, v422, v428, v434, v441, v448, v454, v460, v467, v474, v481, type.value, *&type.timescale, type.epoch, v486, values.value, *&values.timescale, values.epoch, cf, v489, v490, v491);
          rhs = time1;
          v191 = CMTimeCompare(&type, &rhs);
          if ((v191 & 0x80000000) != 0)
          {
            v199 = 1;
          }

          else
          {
            OUTLINED_FUNCTION_166_1(v191, v192, v193, v194, v195, v196, v197, v198, v299, v306, v313, v320, v327, *(&v327 + 1), v340, v347, v354, *(&v354 + 1), *v369, *&v369[8], *&v369[16], *&v369[24], v390, v398, ata, v412, *v419, *&v419[8], *&v419[16], v438, *v445, *&v445[8], *&v445[16], v464, v471, v478, type.value, *&type.timescale, type.epoch, v486, values.value, *&values.timescale, values.epoch, cf, v489, v490, v491);
            rhs = values;
            v199 = CMTimeCompare(&type, &rhs) > 0;
          }

          if (++v169 >= v168 || !v199)
          {
            Mutable = v320;
            if (!v199)
            {
              OUTLINED_FUNCTION_340_1();
              itemairplay_postItemNotification();
            }

            goto LABEL_254;
          }
        }
      }

LABEL_253:
      Mutable = v320;
    }

LABEL_254:
    if (v510)
    {
      CFRelease(v510);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v103 = CFDictionaryGetValue(a3, *MEMORY[0x1E6961DD8]);
  if (v103)
  {
    v200 = v103;
    if (itemairplay_isRangeArraysDifferent())
    {
      v201 = *MEMORY[0x1E695E480];
      v202 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      time1.value = 0;
      v203 = *(v8 + 616);
      *(v8 + 616) = v200;
      CFRetain(v200);
      if (v203)
      {
        CFRelease(v203);
      }

      itemairplay_convertTimeRangesToTimeIntervals(v201, v200, 0, &time1);
      FigCFDictionarySetValue();
      itemairplay_postItemNotification();
      if (time1.value)
      {
        CFRelease(time1.value);
      }

      if (v202)
      {
        CFRelease(v202);
      }
    }
  }

  Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
  if (Int32IfPresent)
  {
    v204 = OUTLINED_FUNCTION_171();
    Int32IfPresent = playerairplay_mediaControlHandleStallCountChanged(v204, v205, v206);
  }

  v112 = *(v8 + 148);
  v113 = v390;
  if (v112 && v112 == *(v8 + 144) && *(v8 + 156))
  {
    if (v102)
    {
      Int32IfPresent = CFArrayGetCount(v102);
      v114 = Int32IfPresent > 0;
    }

    else
    {
      v114 = 0;
    }

    if (HIDWORD(v398) == 2 || v114 || BYTE6(v478)) && (v445[12])
    {
      OUTLINED_FUNCTION_80_5(Int32IfPresent, v105, v106, *(v8 + 148), v108, v109, v110, v111, v299, v306, v313, v320, v327, *(&v327 + 1), v340, v347, v354, *(&v354 + 1), *v369, *&v369[8], *&v369[16], *&v369[24], v390, v398, ata, v412, *v419, *&v419[8], *&v419[16], v438, *v445);
      Int32IfPresent = itemairplay_setPositionCompletionHandler(a1, 0, 1);
      *(v8 + 144) = 0;
      *(v8 + 156) = 0;
    }
  }

  if (*(v8 + 524))
  {
    if (*&v369[28] && (v445[12] & 1) != 0)
    {
      OUTLINED_FUNCTION_80_5(Int32IfPresent, v105, v106, v107, v108, v109, v110, v111, v299, v306, v313, v320, v327, *(&v327 + 1), v340, v347, v354, *(&v354 + 1), *v369, *&v369[8], *&v369[16], *&v369[24], v390, v398, ata, v412, *v419, *&v419[8], *&v419[16], v438, *v445);
      v115 = OUTLINED_FUNCTION_145_1();
      pap_updateAirPlayReachedTimeToPausePlayback(v115, v116);
    }

    else
    {
      if (*(v9 + 241))
      {
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_171();
      if (!pap_hasAirPlayReachedTimeToPausePlayback())
      {
        goto LABEL_146;
      }
    }

    if (!*(v9 + 64))
    {
      v117 = OUTLINED_FUNCTION_171();
      pap_handleAirPlayReachedTimeToPausePlayback(v117, v118);
    }
  }

LABEL_146:
  if ((v445[12] & 1) == 0)
  {
    return FigReadWriteLockUnlockForRead();
  }

  v119 = v113 ? v347 : 0;
  v120 = *(&v471 + 1);
  v489 = v505;
  LODWORD(v490) = v506;
  v121 = CMBaseObjectGetDerivedStorage();
  v122 = CMBaseObjectGetDerivedStorage();
  v123 = *MEMORY[0x1E6960C70];
  v510 = *MEMORY[0x1E6960C70];
  v124 = *(MEMORY[0x1E6960C70] + 8);
  timescale = v124;
  v125 = *(v122 + 56);
  v126 = v125 <= 0.0 ? 1.5 : v125 * 1.5;
  if (*(v122 + 241))
  {
    return FigReadWriteLockUnlockForRead();
  }

  v127 = v122;
  HIDWORD(v398) = *(MEMORY[0x1E6960C70] + 12);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v129 = *(v121 + 280);
  time = *(v121 + 160);
  values.value = v505;
  OUTLINED_FUNCTION_125_3();
  CMTimeSubtract(&time1, &time, &values);
  Seconds = CMTimeGetSeconds(&time1);
  *&v369[28] = v119;
  if (Seconds <= 1.0)
  {
    v131 = 1;
  }

  else if (v390)
  {
    v131 = 0;
  }

  else
  {
    v131 = Seconds <= v126 * ((UpTimeNanoseconds - v129) / 1000000000.0);
  }

  v132 = CMBaseObjectGetDerivedStorage();
  if (!*(v132 + 360))
  {
    time1.value = 0;
    if (!*(CMBaseObjectGetDerivedStorage() + 368))
    {
LABEL_164:
      v140 = *&v369[16];
      goto LABEL_165;
    }

    v393 = a1;
    v142 = pap_copyPrimaryPlayer();
    if (v142)
    {
      v143 = UpTimeNanoseconds;
      v144 = CMBaseObjectGetDerivedStorage();
      playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v144 + 40), &time1, 0);
      if (!time1.value)
      {
        v148 = 0;
        v141 = HIDWORD(v398);
LABEL_179:
        CFRelease(v142);
LABEL_180:
        if (v148 && (playerairplay_isInterstitialEventIDRestrictedForSkip(a2, v148), v290 = v289, CFRelease(v148), v290))
        {
          v140 = *&v369[16];
          if ((*&v369[28] | v131) & 1) == 0 && (BYTE12(v354) & 1) != 0 && (*(v121 + 172))
          {
            v291 = OUTLINED_FUNCTION_91_3(v291, v292, v293, v294, v295, v296, v297, v298, v299, v306, v313, v320, v327, *(&v327 + 1), v340, v347, v354, *(&v354 + 1), *v369, *&v369[8], *&v369[16], *&v369[24], v393, v398, ata, v412, *v419, *&v419[8], *&v419[16], v438, *v445, *&v445[8], *&v445[16], v464, v471, v478, type.value, *&type.timescale, type.epoch, v486, values.value, *&values.timescale, values.epoch, cf, v489, v490, v491, *(&v491 + 1), v492, v493, *&time.value, time.epoch, v495, v496, v497, v498, v499, v500, v501, v502, v503, v489, __SPAIR64__(HIDWORD(v354), v490));
            if ((v291 & 0x80000000) != 0)
            {
              OUTLINED_FUNCTION_162_0(v291, v292, v293, v294, v295, v296, v297, v298, v299, v306, v313, v320, v327, *(&v327 + 1), v340, v347, v354, *(&v354 + 1), *v369, *&v369[8], *&v369[16], *&v369[24], v393, v398, ata, v412, *v419, *&v419[8], *&v419[16], v438, *v445, *&v445[8], *&v445[16], v464, v471, v478, type.value, *&type.timescale, type.epoch, v486, values.value, *&values.timescale, values.epoch, cf, v489, v490);
              v140 = v354;
              v141 = HIDWORD(v354);
            }
          }

          if (v120 != Rate && *(v127 + 56) > 1.0)
          {
            time1.value = 0;
            OUTLINED_FUNCTION_162_0(v291, v292, v293, v294, v295, v296, v297, v298, v299, v306, v313, v320, v327, *(&v327 + 1), v340, v347, v354, *(&v354 + 1), *v369, *&v369[8], *&v369[16], *&v369[24], v393, v398, ata, v412, *v419, *&v419[8], *&v419[16], v438, *v445, *&v445[8], *&v445[16], v464, v471, v478, type.value, *&type.timescale, type.epoch, v486, values.value, *&values.timescale, values.epoch, cf, v489, v490);
            *(v127 + 56) = 1065353216;
            FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 40, &time1);
            playerairplay_postPlayerRateDidChangeNotification(a2, time1.value);
            playerairplay_setRateAirPlay(a2, 0, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], time1.value);
            if (time1.value)
            {
              CFRelease(time1.value);
            }

            v140 = v361;
            v141 = v368;
          }
        }

        else
        {
          v140 = *&v369[16];
        }

        goto LABEL_182;
      }

      v145 = CMBaseObjectGetDerivedStorage();
      v146 = *(v145 + 752);
      if (v146)
      {
        v147 = v145;
        v148 = 0;
        if (!CFEqual(*(v145 + 752), &stru_1F0B1AFB8))
        {
          v70 = *MEMORY[0x1E695E738] == v146;
          UpTimeNanoseconds = v143;
          if (!v70)
          {
            v148 = *(v147 + 752);
            if (v148)
            {
              CFRetain(*(v147 + 752));
            }
          }

LABEL_176:
          if (time1.value)
          {
            CFRelease(time1.value);
          }

          v141 = HIDWORD(v398);
          if (!v142)
          {
            goto LABEL_180;
          }

          goto LABEL_179;
        }
      }

      else
      {
        v148 = 0;
      }

      UpTimeNanoseconds = v143;
      goto LABEL_176;
    }

    v148 = 0;
    goto LABEL_176;
  }

  if ((*&v369[28] | v131))
  {
    goto LABEL_164;
  }

  if ((BYTE12(v354) & 1) == 0)
  {
    goto LABEL_164;
  }

  if ((*(v121 + 172) & 1) == 0)
  {
    goto LABEL_164;
  }

  if ((OUTLINED_FUNCTION_91_3(v132, v133, v134, v135, v136, v137, v138, v139, v299, v306, v313, v320, v327, *(&v327 + 1), v340, v347, v354, *(&v354 + 1), *v369, *&v369[8], *&v369[16], *&v369[24], v390, v398, ata, v412, *v419, *&v419[8], *&v419[16], v438, *v445, *&v445[8], *&v445[16], v464, v471, v478, type.value, *&type.timescale, type.epoch, v486, values.value, *&values.timescale, values.epoch, cf, v489, v490, v491, *(&v491 + 1), v492, v493, *&time.value, time.epoch, v495, v496, v497, v498, v499, v500, v501, v502, v503, v505, __SPAIR64__(HIDWORD(v354), v506)) & 0x80000000) == 0)
  {
    goto LABEL_164;
  }

  v509 = v506;
  rhs = *(v121 + 160);
  v508 = v505;
  v207 = *(v121 + 776);
  if (!v207)
  {
    goto LABEL_164;
  }

  v208 = CFArrayGetCount(v207);
  time1 = *v369;
  *&v491 = v123;
  v140 = *&v369[16];
  DWORD2(v491) = v124;
  if (v208 >= 1)
  {
    v209 = v208;
    v210 = 0;
    v211 = 0;
    v212 = HIDWORD(v398);
    v213 = *&v369[16];
    do
    {
      v214 = CFArrayGetValueAtIndex(*(v121 + 776), v211);
      cf = 0;
      v215 = FigPlayerInterstitialEventCreateFromDictionary(0, v214, &cf);
      if (!v215)
      {
        Restrictions = FigPlayerInterstitialEventGetRestrictions(cf);
        v224 = cf;
        if (Restrictions)
        {
          memset(&time, 0, sizeof(time));
          itemairplay_getInterstitialEventTimeForItem(v121, cf, &time);
          values.value = v508;
          OUTLINED_FUNCTION_125_3();
          v233 = OUTLINED_FUNCTION_150_2(v225, v226, v227, v228, v229, v230, v231, v232, v301, v308, v315, v322, v329, key, v342, v349, v356, v363, *v369, *&v369[8], *&v369[16], *&v369[24], v392, v398, atb, v414, v421, v427, v433, v440, v447, v453, v459, v466, v473, v480, time.value, *&time.timescale, time.epoch, v486, values.value);
          v235 = CMTimeCompare(v233, v234);
          if (v235 <= 0 && (OUTLINED_FUNCTION_167_2(v235, v236, v237, v238, v239, v240, v241, v242, v301, v308, v315, v322, v329, key, v342, v349, v356, v363, *v369, *&v369[8], *&v369[16], *&v369[24], v392, v398, atb, v414, v421, v427, v433, v440, v447, v453, v459, v466, v473, v480, type.value, *&type.timescale, type.epoch, v486, values.value, *&values.timescale, values.epoch, cf, v489, v490, v491, *(&v491 + 1), v492, v493, *&time.value), v251 = OUTLINED_FUNCTION_150_2(v243, v244, v245, v246, v247, v248, v249, v250, v303, v310, v317, v324, v331, keyc, v344, v351, v358, v365, v372, v377, v382, v387, v395, v401, ate, v416, v423, v429, v435, v442, v449, v455, v461, v468, v475, v482, rhs.value, *&rhs.timescale, rhs.epoch, v486, values.value), v253 = CMTimeCompare(v251, v252), (v253 & 0x80000000) != 0) && (OUTLINED_FUNCTION_167_2(v253, v254, v255, v256, v257, v258, v259, v260, v301, v308, v315, v322, v329, key, v342, v349, v356, v363, *v369, *&v369[8], *&v369[16], *&v369[24], v392, v398, atb, v414, v421, v427, v433, v440, v447, v453, v459, v466, v473, v480, type.value, *&type.timescale, type.epoch, v486, values.value, *&values.timescale, values.epoch, cf, v489, v490, v491, *(&v491 + 1), v492, v493, *&time.value), OUTLINED_FUNCTION_27_17(v263, v264, v265, v266, v267, v268, v269, v270, v304, v311, v318, v325, v332, keyd, v345, v352, v359, v366, v373, v378, v383, v388, v396, v402, atf, v417, v424, v430, v436, v443, v450, v456, v462, v469, v476, v483, type.value, *&type.timescale, type.epoch, v486, values.value, *&values.timescale, values.epoch, cf, v489, v490, v491, *(&v491 + 1), v492, v493, time.value, *&time.timescale, time.epoch, v495, v496, v497, v498, v499, v500, v501, v502, v503, *&time1.value), v279 = OUTLINED_FUNCTION_150_2(v271, v272, v273, v274, v275, v276, v277, v278, v305, v312, v319, v326, v333, keye, v346, v353, v360, v367, v374, v379, v384, v389, v397, v403, atg, v418, v425, v431, v437, v444, v451, v457, v463, v470, v477, v484, type.value, *&type.timescale, type.epoch, v486, values.value), CMTimeCompare(v279, v280)))
          {
            v261 = cf;
            if (cf)
            {
              CFRetain(cf);
            }

            if (v210)
            {
              CFRelease(v210);
            }

            time1 = time;
          }

          else
          {
            v261 = v210;
          }

          v224 = cf;
          v210 = v261;
        }

        v262 = FigPlayerInterstitialEventCopyIdentifier(v224);
        if (FigCFEqual())
        {
          itemairplay_getInterstitialEventTimeForItem(v121, cf, &time);
          *&v491 = time.value;
          v212 = time.flags;
          DWORD2(v491) = time.timescale;
          v213 = time.epoch;
        }

        v215 = cf;
        if (cf)
        {
          CFRelease(cf);
        }

        if (v262)
        {
          CFRelease(v262);
        }

        v140 = *&v369[16];
      }

      ++v211;
    }

    while (v209 != v211);
    if (v210)
    {
      if ((v212 & 1) == 0 || (OUTLINED_FUNCTION_27_17(v215, v216, v217, v218, v219, v220, v221, v222, v301, v308, v315, v322, v329, key, v342, v349, v356, v363, *v369, *&v369[8], *&v369[16], *&v369[24], v392, v398, atb, v414, v421, v427, v433, v440, v447, v453, v459, v466, v473, v480, type.value, *&type.timescale, type.epoch, v486, values.value, *&values.timescale, values.epoch, cf, v489, v490, v491, *(&v491 + 1), v492, v493, v491, __SPAIR64__(v212, DWORD2(v491)), v213, v495, v496, v497, v498, v499, v500, v501, v502, v503, *&time1.value), CMTimeSubtract(&values, &time, &type), CMTimeAbsoluteValue(&time, &values), CMTimeMake(&values, 1, 1000), (CMTimeCompare(&time, &values) & 0x80000000) == 0))
      {
        memset(&time1, 0, sizeof(time1));
        itemairplay_getInterstitialEventTimeForItem(v121, v210, &time1);
        v281 = CMTimeMake(&values, 2, 1);
        OUTLINED_FUNCTION_27_17(v281, v282, v283, v284, v285, v286, v287, v288, v301, v308, v315, v322, v329, key, v342, v349, v356, v363, *v369, *&v369[8], *&v369[16], *&v369[24], v392, v398, atb, v414, v421, v427, v433, v440, v447, v453, v459, v466, v473, v480, type.value, *&type.timescale, type.epoch, v486, values.value, *&values.timescale, values.epoch, cf, v489, v490, v491, *(&v491 + 1), v492, v493, time.value, *&time.timescale, time.epoch, v495, v496, v497, v498, v499, v500, v501, v502, v503, *&time1.value);
        CMTimeSubtract(&time, &type, &values);
        v510 = time.value;
        v141 = time.flags;
        timescale = time.timescale;
        v140 = time.epoch;
        CFRelease(v210);
        goto LABEL_182;
      }

      CFRelease(v210);
    }
  }

LABEL_165:
  v141 = HIDWORD(v398);
LABEL_182:
  if (v141)
  {
    time1.value = v510;
    time1.timescale = timescale;
    time1.flags = v141;
    time1.epoch = v140;
    v149 = OUTLINED_FUNCTION_145_1();
    itemairplay_airplaySetCurrentTime(v149, v150, 240, 0, 0);
  }

  if (Seconds >= 0.0)
  {
    v151 = UpTimeNanoseconds;
  }

  else
  {
    v151 = 0;
  }

  *(v121 + 280) = v151;
  return FigReadWriteLockUnlockForRead();
}

void pap_FigCFDictionaryGetBooleanIfPresent(uint64_t a1)
{
  value = 0;
  if (a1)
  {
    OUTLINED_FUNCTION_375_0();
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFDictionaryGetTypeID() && v2 && v1)
    {
      if (CFDictionaryGetValueIfPresent(v4, v2, &value))
      {
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(value))
        {
          *v1 = CFBooleanGetValue(value);
        }

        else
        {
          v7 = CFNumberGetTypeID();
          if (v7 == CFGetTypeID(value) && !CFNumberIsFloatType(value))
          {
            v8 = 0;
            CFNumberGetValue(value, kCFNumberSInt64Type, &v8);
            *v1 = v8 != 0;
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM();
    }
  }

  OUTLINED_FUNCTION_652();
}

void playerairplay_updatePlayerRateToMatch(const void *a1, uint64_t a2, float a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v8 = DerivedStorage;
    v9 = *(DerivedStorage + 56);
    if (v9 == a3)
    {
      Mutable = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetFloat32();
      OUTLINED_FUNCTION_236();
      playerairplay_postPlayerNotification();
      if (*(v8 + 200) && a3 != 0.0)
      {
        if (dword_1EAF172E8)
        {
          OUTLINED_FUNCTION_147();
          OUTLINED_FUNCTION_149_1();
          v13 = OUTLINED_FUNCTION_126();
          OUTLINED_FUNCTION_130(v13, v14, v15, v16, v17, v18, v19, v20, v28, v29, v30, v31, SBYTE2(v31), BYTE3(v31), SHIDWORD(v31));
          OUTLINED_FUNCTION_28();
          if (v3)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_139();
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_25();
            OUTLINED_FUNCTION_61_5();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417();
        }

        FigBytePumpGetFigBaseObject(*(v8 + 208));
        v26 = v25;
        v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v27)
        {
          v27(v26, 0x1F0B34DB8, *MEMORY[0x1E695E4D0]);
        }
      }

      *(v8 + 56) = a3;
      playerairplay_postPlayerRateDidChangeNotification(a1, a2);
      if (a3 != 0.0)
      {
        pap_clearLayerContents(a1);
      }
    }

    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v12 = v12 || v11 == 10;
    if (!v12)
    {
      cf[0] = 0;
      playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v8 + 40), 0, cf);
      if (v9 != a3)
      {
        playerairplay_inferPlaybackStateFromAirPlayPlayer(a1, cf[0] != 0);
      }

      v21 = cf[0];
      if (cf[0])
      {
        v22 = CMBaseObjectGetDerivedStorage();
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_180_2();
        if (!*(v21 + 72))
        {
          v23 = *(v21 + 71);
          if (v23)
          {
            v24 = 0.0;
            if (*(v22 + 84) == 4)
            {
              v24 = *(v22 + 56);
            }

            CMTimebaseSetRate(v23, v24);
          }
        }

        FigReadWriteLockUnlockForRead();
        itemairplay_NotifyReachedTimeToPauseBufferingIfFF();
        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

void playerairplay_mediaControlHandlePlaybackLikelyToKeepUp(uint64_t a1, uint64_t a2, CFTypeRef cf, int a4, __int16 a5, char a6, os_log_type_t type, CMTime *time, uint64_t a9, __int16 a10, CFTypeRef cfa, __int16 a12, __int16 a13, __int16 a14, char a15, os_log_type_t typea, __int128 timea, CMTime *time_16, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  OUTLINED_FUNCTION_415();
  a50 = v53;
  a51 = v54;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  a39 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v62 = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (!*(v62 + 72) && *(v62 + 603) != v56)
  {
    *(v62 + 603) = v56;
    if (v56)
    {
      OUTLINED_FUNCTION_270();
      itemairplay_postItemNotification();
      if (dword_1EAF172E8)
      {
        LODWORD(cfa) = 0;
        typea = OS_LOG_TYPE_DEFAULT;
        OUTLINED_FUNCTION_149_1();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, typea);
        OUTLINED_FUNCTION_28();
        if (v52)
        {
          if (v60)
          {
            v66 = (CMBaseObjectGetDerivedStorage() + 459);
          }

          else
          {
            v66 = "";
          }

          if (v58)
          {
            CMBaseObjectGetDerivedStorage();
          }

          LODWORD(timea) = 136316162;
          OUTLINED_FUNCTION_139();
          OUTLINED_FUNCTION_124_3();
          *(&a20 + 2) = v66;
          WORD5(a20) = v69;
          *(&a20 + 12) = v70;
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_25();
          OUTLINED_FUNCTION_61_5();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417();
      }

      if (*(DerivedStorage + 356))
      {
        cfa = 0;
        FigSimpleMutexLock();
        v71 = 0;
        v72 = *(v62 + 576);
        if (v72)
        {
          v71 = CFRetain(v72);
        }

        FigSimpleMutexUnlock();
        FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 20, &cfa);
        *(DerivedStorage + 356) = 0;
        if (v71 && *(DerivedStorage + 456))
        {
          Rate = CMTimebaseGetRate(v71);
          *(DerivedStorage + 56) = Rate;
          CMTimebaseGetTime(&a23, v71);
          *(DerivedStorage + 332) = a23;
          *(DerivedStorage + 348) = a24;
          HostTimeClock = CMClockGetHostTimeClock();
          timea = *(DerivedStorage + 332);
          time_16 = *(DerivedStorage + 348);
          CMSyncConvertTime(&a23, &timea, v71, HostTimeClock);
          *(DerivedStorage + 308) = a23;
          *(DerivedStorage + 324) = a24;
        }

        playerairplay_postPlayerRateDidChangeNotification(v60, cfa);
        OUTLINED_FUNCTION_169(DerivedStorage + 332);
        timea = *v75;
        time_16 = *(v75 + 16);
        playerairplay_setRateAirPlay(v60, 1, &a23, &timea, v76);
        if (cfa)
        {
          CFRelease(cfa);
        }

        if (v71)
        {
          CFRelease(v71);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_270();
      itemairplay_postItemNotification();
      if (dword_1EAF172E8)
      {
        LODWORD(cfa) = 0;
        typea = OS_LOG_TYPE_DEFAULT;
        v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v63, typea);
        OUTLINED_FUNCTION_46();
        if (v51)
        {
          if (v60)
          {
            v64 = (CMBaseObjectGetDerivedStorage() + 459);
          }

          else
          {
            v64 = "";
          }

          if (v58)
          {
            CMBaseObjectGetDerivedStorage();
          }

          LODWORD(timea) = 136316162;
          OUTLINED_FUNCTION_139();
          OUTLINED_FUNCTION_124_3();
          *(&a20 + 2) = v64;
          WORD5(a20) = v67;
          *(&a20 + 12) = v68;
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_10_3();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0();
      }
    }

    itemairplay_controlPlaybackActivityTimer(v58, 2);
  }

  FigReadWriteLockUnlockForRead();
  OUTLINED_FUNCTION_355();
}

uint64_t itemairplay_isRangeArraysDifferent()
{
  OUTLINED_FUNCTION_187();
  if (!v2)
  {
    Count = 0;
    if (v0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  Count = CFArrayGetCount(v1);
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = CFArrayGetCount(v0);
LABEL_6:
  if (v1 == v0)
  {
    return 0;
  }

  result = 1;
  if (!v1 || !v0 || Count != v4)
  {
    return result;
  }

  if (Count < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = *MEMORY[0x1E6961F08];
  v8 = *MEMORY[0x1E6961F00];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, v6);
    if (Count == v6)
    {
      break;
    }

    v10 = ValueAtIndex;
    v11 = OUTLINED_FUNCTION_627();
    v13 = CFArrayGetValueAtIndex(v11, v12);
    result = 1;
    if (!v10)
    {
      return result;
    }

    if (!v13)
    {
      return result;
    }

    Value = CFDictionaryGetValue(v10, v7);
    v15 = CFDictionaryGetValue(v13, v7);
    result = 1;
    if (!Value || !v15)
    {
      return result;
    }

    CMTimeMakeFromDictionary(&time1, Value);
    CMTimeMakeFromDictionary(&v20, v15);
    if (CMTimeCompare(&time1, &v20))
    {
      break;
    }

    v16 = CFDictionaryGetValue(v10, v8);
    v17 = OUTLINED_FUNCTION_614();
    v19 = CFDictionaryGetValue(v17, v18);
    result = 1;
    if (!v16 || !v19)
    {
      return result;
    }

    CMTimeMakeFromDictionary(&time1, v16);
    CMTimeMakeFromDictionary(&v20, v19);
    if (CMTimeCompare(&time1, &v20))
    {
      break;
    }

    if (Count == ++v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t playerairplay_mediaControlHandleStallCountChanged(uint64_t a1, uint64_t a2, int a3)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_71_4(DerivedStorage);
  FigReadWriteLockLockForRead();
  if (!*(v3 + 72) && *(v3 + 624) < a3)
  {
    *(v3 + 624) = a3;
    OUTLINED_FUNCTION_340_1();
    itemairplay_postItemNotification();
    if (dword_1EAF172E8)
    {
      OUTLINED_FUNCTION_147();
      v10 = OUTLINED_FUNCTION_126();
      OUTLINED_FUNCTION_304(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, SBYTE2(v21), BYTE3(v21), SHIDWORD(v21));
      OUTLINED_FUNCTION_46();
      if (v4)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        if (a2)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_139();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_10_3();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0();
    }
  }

  return FigReadWriteLockUnlockForRead();
}

void playerairplay_shutdownAirPlayVideoPlaybackDueToServer(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  if (!*DerivedStorage)
  {
    v4 = DerivedStorage;
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v6 = v6 || v5 == 10;
    if (!v6)
    {
      cf[0] = 0;
      FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 27, cf);
      playerairplay_updatePlayerRateToMatch(a1, cf[0], 0.0);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_54_11();
      if (!(!v6 & v7))
      {
        playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v4 + 5), 0, &v16);
        CMBaseObjectGetDerivedStorage();
        if (v16)
        {
          OUTLINED_FUNCTION_180_2();
          if (!*(v1 + 72))
          {
            OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
            v8 = v16;
            v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v9)
            {
              v9(v8, cf);
            }

            v12 = *cf;
            v13 = v15;
            itemairplay_setRememberedTimeAndDefaultFlag(v16, &v12);
            itemairplay_controlPlaybackActivityTimer(v16, 0);
            CMTimebaseSetRate(*(v1 + 568), 0.0);
          }

          FigReadWriteLockUnlockForRead();
        }

        playerairplay_removeAndCleanupQueuedItemsOnAirPlayController();
        pap_invalidateEndpointPlaybackSession(a1);
      }

      playerairplay_resetAirPlayVideoState(a1);
      playerairplay_updateAirPlayVideoIsActiveProperty();
      OUTLINED_FUNCTION_340_1();
      playerairplay_postPlayerNotification();
      if (v4[52])
      {
        v10 = *(v4 + 26);
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v11)
        {
          v11(v10);
        }
      }
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }
}

void itemairplay_sendSeekToTimeNotification()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetValueFromKeyInDict();
  FigCFDictionarySetValueFromKeyInDict();
  OUTLINED_FUNCTION_315();
  FigCFDictionarySetCMTime();
  OUTLINED_FUNCTION_521();
  itemairplay_postItemNotification();
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

BOOL pap_isLocalFileURL(const __CFURL *a1, BOOL *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = CFURLCopyScheme(a1);
  v4 = v3;
  if (!v3 || (v5 = 1, CFStringCompare(v3, @"file", 1uLL)))
  {
    IsPersistentURL = FigIsPersistentURL();
    v5 = IsPersistentURL != 0;
    v7 = IsPersistentURL != 0;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  if (a2)
  {
LABEL_5:
    *a2 = v7;
  }

LABEL_6:
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

void playerairplay_postPlayerRateDidChangeNotification(uint64_t a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetFloat32();
  if (a2)
  {
    OUTLINED_FUNCTION_515();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_515();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_515();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_515();
    FigCFDictionarySetValueFromKeyInDict();
  }

  OUTLINED_FUNCTION_236();
  playerairplay_postPlayerNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void playerairplay_isInterstitialEventIDRestrictedForSkip(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_369();
    if (!CFEqual(v2, &stru_1F0B1AFB8) && *MEMORY[0x1E695E738] != v2)
    {
      if (*(CMBaseObjectGetDerivedStorage() + 368))
      {
        v3 = pap_copyPrimaryPlayer();
        if (v3)
        {
          v4 = v3;
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          v15 = 0;
          if (!CFEqual(v2, &stru_1F0B1AFB8))
          {
            playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(DerivedStorage + 40), &v15, 0);
            if (v15)
            {
              v6 = CMBaseObjectGetDerivedStorage();
              v7 = *(v6 + 776);
              if (v7 && (Count = CFArrayGetCount(v7), Count >= 1))
              {
                v9 = Count;
                v10 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 776), v10);
                  cf = 0;
                  v12 = 0;
                  if (!FigPlayerInterstitialEventCreateFromDictionary(0, ValueAtIndex, &cf))
                  {
                    v12 = FigPlayerInterstitialEventCopyIdentifier(cf);
                    if (FigCFEqual())
                    {
                      break;
                    }
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  if (v12)
                  {
                    CFRelease(v12);
                  }

                  if (v9 == ++v10)
                  {
                    goto LABEL_18;
                  }
                }

                v13 = cf;
                if (v12)
                {
                  CFRelease(v12);
                }
              }

              else
              {
LABEL_18:
                v13 = 0;
              }

              if (v15)
              {
                CFRelease(v15);
              }

              if (v13)
              {
                FigPlayerInterstitialEventGetRestrictions(v13);
                CFRelease(v13);
              }
            }
          }

          CFRelease(v4);
        }
      }
    }
  }

  OUTLINED_FUNCTION_652();
}

void playerairplay_updateShareAndAirPlayEchoMitigation(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    if (DerivedStorage[456])
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_55_11();
      v5 = !v4 || (*(CMBaseObjectGetDerivedStorage() + 296) != 0);
    }

    else
    {
      v5 = 0;
    }

    if (v3[458] != v5)
    {
      Shared = FigShareAndAirPlayHelperGetShared();
      if (Shared)
      {
        v7 = Shared;
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v8)
        {
          v8(v7, v5, a1);
        }

        v3[458] = v5;
      }
    }
  }
}

void pap_playbackSessionSetProxiedProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *Mutable)
{
  OUTLINED_FUNCTION_471();
  v6 = v5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (Mutable)
  {
    Mutable = CFRetain(Mutable);
  }

  if (v6 && !*DerivedStorage && *(DerivedStorage + 280))
  {
    if (pap_shouldUseInterstitialQueuing())
    {
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961BD8], *MEMORY[0x1E695E4D0]);
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 96))
    {
      v8 = OUTLINED_FUNCTION_104_0();
      v9(v8);
    }
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void __itemairplay_insertItemOnMediaControl_block_invoke()
{
  OUTLINED_FUNCTION_70_6();
  FigReadWriteLockLockForRead();
  OUTLINED_FUNCTION_121_1();
  if (!v2 && !**(v0 + 40))
  {
    FigAirPlayMediaSelectionSetProperty(*(v1 + 352), @"ClientSelectedMediaArray", *(v0 + 48));
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v4 = v4 || v3 == 10;
    if (!v4)
    {
      itemairplay_prepareAndCacheSelectedMediaArray();
    }
  }

  OUTLINED_FUNCTION_137_1();
  v5 = *(v0 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(v0 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(v0 + 64);
  if (v7)
  {

    CFRelease(v7);
  }
}

void itemairplay_prepareAndCacheSelectedMediaArray()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (DerivedStorage)
  {
    OUTLINED_FUNCTION_71_4(DerivedStorage);
    FigReadWriteLockLockForRead();
    if (!*(v0 + 72))
    {
      v2 = *(v0 + 352);
      if (v2)
      {
        if (!FigAirPlayMediaSelectionCopyProperty(v2, @"SelectedMediaArrayWithAutomaticMediaSelection", *MEMORY[0x1E695E480], &value) && value)
        {
          FigSimpleMutexLock();
          CFDictionarySetValue(*(v0 + 336), *MEMORY[0x1E6961EC8], value);
          FigSimpleMutexUnlock();
        }
      }
    }

    FigReadWriteLockUnlockForRead();
    if (value)
    {
      CFRelease(value);
    }
  }
}

void playerairplay_startAirPlayWithItem(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, unsigned __int8 a14, os_log_type_t type, unsigned int a16, void *value, __int128 a18, int a19, __int16 a20, __int16 a21, uint64_t a22, __int128 a23, __int128 a24, const char *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  OUTLINED_FUNCTION_416();
  a55 = v58;
  a56 = v59;
  v61 = v60;
  v63 = v62;
  a43 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v61)
  {
    v65 = DerivedStorage;
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_55_11();
    if (v66)
    {
      v67 = CMBaseObjectGetDerivedStorage();
      if (v67)
      {
        OUTLINED_FUNCTION_71_4(v67);
        FigReadWriteLockLockForRead();
        if (v56[72])
        {
LABEL_66:
          FigReadWriteLockUnlockForRead();
          goto LABEL_67;
        }

        v56[712] = 0;
        if (v56[704] <= 1u)
        {
          if (dword_1EAF172E8 >= 4)
          {
            v117 = OUTLINED_FUNCTION_60_8();
            os_log_type_enabled(v117, a16);
            OUTLINED_FUNCTION_46();
            if (v57)
            {
              if (v63)
              {
                CMBaseObjectGetDerivedStorage();
              }

              CMBaseObjectGetDerivedStorage();
              LODWORD(a18) = 136316162;
              OUTLINED_FUNCTION_21_20();
              *(&a23 + 12) = v123;
              OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_10_3();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_238_0();
          }

          goto LABEL_66;
        }

        value = 0;
        v68 = CMBaseObjectGetDerivedStorage();
        if (*(v68 + 280))
        {
LABEL_63:
          BooleanProperty = pap_playbackSessionGetBooleanProperty();
          if (*(v65 + 56) != 0.0 || !*(v65 + 51) || BooleanProperty)
          {
            if (itemairplay_assureItemForAirPlay())
            {
              if (dword_1EAF172E8)
              {
                v104 = OUTLINED_FUNCTION_60_8();
                v105 = value;
                if (os_log_type_enabled(v104, a16))
                {
                  v106 = v105;
                }

                else
                {
                  v106 = v105 & 0xFFFFFFFE;
                }

                if (v106)
                {
                  if (v63)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  v107 = CMBaseObjectGetDerivedStorage() + 820;
                  v108 = CMBaseObjectGetDerivedStorage();
                  pap_getDescriptionForAirPlayState(*(v108 + 216));
                  LODWORD(a18) = 136316674;
                  OUTLINED_FUNCTION_21_20();
                  *(&a23 + 12) = v107;
                  OUTLINED_FUNCTION_114_2();
                  a25 = "Selected_APV";
                  OUTLINED_FUNCTION_32();
                  OUTLINED_FUNCTION_10_3();
                }

                OUTLINED_FUNCTION_7();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              pap_setAirPlayState(v63, 11);
            }

            else
            {
              if (dword_1EAF172E8)
              {
                v109 = OUTLINED_FUNCTION_60_8();
                v110 = value;
                if (os_log_type_enabled(v109, a16))
                {
                  v111 = v110;
                }

                else
                {
                  v111 = v110 & 0xFFFFFFFE;
                }

                if (v111)
                {
                  if (v63)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  v112 = CMBaseObjectGetDerivedStorage() + 820;
                  v113 = CMBaseObjectGetDerivedStorage();
                  pap_getDescriptionForAirPlayState(*(v113 + 216));
                  LODWORD(a18) = 136316674;
                  OUTLINED_FUNCTION_21_20();
                  *(&a23 + 12) = v112;
                  OUTLINED_FUNCTION_114_2();
                  a25 = "Starting";
                  OUTLINED_FUNCTION_32();
                  OUTLINED_FUNCTION_25();
                  OUTLINED_FUNCTION_61_5();
                }

                OUTLINED_FUNCTION_7();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              pap_setAirPlayState(v63, 14);
              playerairplay_updateAirPlayVideoIsActiveProperty();
              a14 = 0;
              FigCFDictionaryGetBooleanIfPresent();
              FigCFDictionaryGetBooleanIfPresent();
              v114 = itemairplay_createCPEProtectorIfAvailable(v61, 1, &a14);
              if (v114)
              {
                v115 = v114;
                v116 = playerairplay_performAirPlayVodkaExchange(v63, v61, v114, a14);
                CFRelease(v115);
                if (v116)
                {
                  playerairplay_resetAirPlayVideoState(v63);
                  playerairplay_updateAirPlayVideoIsActiveProperty();
                }
              }

              else
              {
                v56[703] = 1;
              }

              playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v63);
            }
          }

          goto LABEL_66;
        }

        v69 = v68;
        if (*(CMBaseObjectGetDerivedStorage() + 368))
        {
          v70 = pap_copyPrimaryPlayer();
          v71 = CMBaseObjectGetDerivedStorage();
          if (!v70)
          {
            v118 = v65;
            if (dword_1EAF172E8)
            {
              a16 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v88 = &dword_1EAF17000;
              v119 = OUTLINED_FUNCTION_94_2();
              v120 = a16;
              if (os_log_type_enabled(v119, type))
              {
                v121 = v120;
              }

              else
              {
                v121 = v120 & 0xFFFFFFFE;
              }

              if (v121)
              {
                if (v63)
                {
                  v122 = (CMBaseObjectGetDerivedStorage() + 459);
                }

                else
                {
                  v122 = "";
                }

                LODWORD(a18) = 136315906;
                *(&a18 + 4) = "pap_ensureEndpointPlaybackSession";
                WORD6(a18) = 2048;
                *(&a18 + 14) = v63;
                a21 = 2082;
                a22 = v122;
                LOWORD(a23) = 2048;
                *(&a23 + 2) = 0;
                OUTLINED_FUNCTION_32();
                OUTLINED_FUNCTION_8_34();
                OUTLINED_FUNCTION_61_5();
              }

              OUTLINED_FUNCTION_129_3();
              OUTLINED_FUNCTION_238_0();
              v70 = 0;
            }

            else
            {
              v70 = 0;
              LODWORD(v88) = 1;
            }

            v65 = v118;
LABEL_58:
            if (value)
            {
              CFRelease(value);
            }

            if (v70)
            {
              CFRelease(v70);
            }

            if (!v88)
            {
              goto LABEL_66;
            }

            goto LABEL_63;
          }

          v72 = v71;
          v73 = *(v71 + 280);
          if (v73)
          {
            v74 = CFRetain(v73);
          }

          else
          {
            v74 = 0;
          }

          value = v74;
          if (dword_1EAF172E8)
          {
            v124 = v65;
            a16 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v82 = OUTLINED_FUNCTION_94_2();
            v83 = a16;
            if (os_log_type_enabled(v82, type))
            {
              v84 = v83;
            }

            else
            {
              v84 = v83 & 0xFFFFFFFE;
            }

            if (v84)
            {
              if (v63)
              {
                v85 = (CMBaseObjectGetDerivedStorage() + 459);
              }

              else
              {
                v85 = "";
              }

              v86 = *(v69 + 416);
              v87 = *(v69 + 424);
              LODWORD(a18) = 136316418;
              *(&a18 + 4) = "pap_ensureEndpointPlaybackSession";
              WORD6(a18) = 2048;
              *(&a18 + 14) = v63;
              a21 = 2082;
              a22 = v85;
              LOWORD(a23) = 2048;
              *(&a23 + 2) = v74;
              WORD5(a23) = 2114;
              *(&a23 + 12) = v86;
              WORD2(a24) = 2114;
              *(&a24 + 6) = v87;
              OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_8_34();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v65 = v124;
          }

          if (!v74)
          {
            LODWORD(v88) = 1;
            goto LABEL_58;
          }

          CFBagAddValue(*(v72 + 288), v74);
          v89 = 0;
LABEL_51:
          *(v69 + 280) = v74;
          value = 0;
          *(v69 + 248) = pap_playbackSessionGetBooleanProperty();
          OUTLINED_FUNCTION_64_8();
          CFDictionaryApplyFunction(v101, v102, v63);
          pap_playbackSessionSetProperty();
          if (*(v69 + 456))
          {
            playerairplay_createAndResumeVideoSyncTimer();
          }

          LODWORD(v88) = 1;
          if (!v89)
          {
            goto LABEL_58;
          }

LABEL_57:
          CFRelease(v89);
          goto LABEL_58;
        }

        v75 = *(v69 + 256);
        v76 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (!v76 || v76(v75, &value))
        {
          goto LABEL_55;
        }

        if (dword_1EAF172E8)
        {
          v77 = v65;
          a16 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v78 = OUTLINED_FUNCTION_94_2();
          v79 = a16;
          if (os_log_type_enabled(v78, type))
          {
            v80 = v79;
          }

          else
          {
            v80 = v79 & 0xFFFFFFFE;
          }

          if (v80)
          {
            if (v63)
            {
              v81 = (CMBaseObjectGetDerivedStorage() + 459);
            }

            else
            {
              v81 = "";
            }

            v90 = *(v69 + 416);
            v91 = *(v69 + 424);
            LODWORD(a18) = 136316418;
            *(&a18 + 4) = "pap_ensureEndpointPlaybackSession";
            WORD6(a18) = 2048;
            *(&a18 + 14) = v63;
            a21 = 2082;
            a22 = v81;
            LOWORD(a23) = 2048;
            *(&a23 + 2) = value;
            WORD5(a23) = 2114;
            *(&a23 + 12) = v90;
            WORD2(a24) = 2114;
            *(&a24 + 6) = v91;
            OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_27();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v65 = v77;
        }

        v92 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        if (!v92)
        {
LABEL_55:
          LODWORD(v88) = 0;
          v70 = 0;
          goto LABEL_58;
        }

        v89 = v92;
        if (!*(*(CMBaseObjectGetVTable() + 16) + 120))
        {
          LODWORD(v88) = 0;
          v70 = 0;
          goto LABEL_57;
        }

        v125 = v65;
        v93 = OUTLINED_FUNCTION_152_2();
        if (v94(v93))
        {
          LODWORD(v88) = 0;
          v70 = 0;
        }

        else
        {
          v95 = *(v69 + 432);
          if (v95)
          {
            CMBaseObject = FigEndpointPlaybackSessionGetCMBaseObject();
            v97 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v97)
            {
              v97(CMBaseObject, *MEMORY[0x1E6961DF8], v95);
            }
          }

          v98 = *(v69 + 424);
          if (v98)
          {
            v99 = FigEndpointPlaybackSessionGetCMBaseObject();
            v100 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v100)
            {
              v100(v99, *MEMORY[0x1E6961DF0], v98);
            }
          }

          if (value)
          {
            CFBagAddValue(*(v69 + 288), value);
            v70 = 0;
            v74 = value;
            v65 = v125;
            if (!value)
            {
              LODWORD(v88) = 1;
              goto LABEL_57;
            }

            goto LABEL_51;
          }

          v70 = 0;
          LODWORD(v88) = 1;
        }

        v65 = v125;
        goto LABEL_57;
      }
    }
  }

LABEL_67:
  OUTLINED_FUNCTION_372();
}

void pap_handlePlaybackSessionEvent(CFTypeRef cf, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v45 = *MEMORY[0x1E69E9840];
  if (!a2 || !a4)
  {
    goto LABEL_31;
  }

  if (cf)
  {
    CFRetain(cf);
  }

  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v8)
  {
    v6 = 0;
    goto LABEL_31;
  }

  v9 = v8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 360))
  {
    goto LABEL_21;
  }

  if (*(DerivedStorage + 241))
  {
    if (CFDictionaryGetValue(a2, *MEMORY[0x1E6961AA0]) == *MEMORY[0x1E695E4D0])
    {
      goto LABEL_9;
    }

LABEL_21:
    v6 = v9;
LABEL_27:
    v22 = CMBaseObjectGetDerivedStorage();
    if (!*v22)
    {
      v23 = v22;
      CFRetain(v6);
      CFRetain(a2);
      if (cf)
      {
        CFRetain(cf);
      }

      v24 = *(v23 + 14);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __pap_handlePlaybackSessionEvent_block_invoke;
      block[3] = &__block_descriptor_56_e5_v8__0l;
      block[4] = v6;
      block[5] = cf;
      block[6] = a2;
      dispatch_async(v24, block);
    }

    goto LABEL_31;
  }

  v14 = *MEMORY[0x1E6961D40];
  v15 = OUTLINED_FUNCTION_618();
  Value = CFDictionaryGetValue(v15, v16);
  if (Value || (v18 = CFDictionaryGetValue(a2, *MEMORY[0x1E6961C18])) != 0 && (Value = CFDictionaryGetValue(v18, v14)) != 0)
  {
    v25 = playqueue_copyItemForUUID(*(DerivedStorage + 40), Value);
    if (v25)
    {
      CFRelease(v25);
      goto LABEL_21;
    }
  }

  v19 = pap_copyInterstitialPlayer();
  v4 = MEMORY[0x1E6961AA8];
  if (!v19 || (v20 = v19, v21 = *(CMBaseObjectGetDerivedStorage() + 216) - 18, CFRelease(v20), v21 <= 0xFFFFFFFD))
  {
    OUTLINED_FUNCTION_109_2();
    if (!FigCFEqual())
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_181_1();
    if (!FigCFEqual())
    {
      goto LABEL_21;
    }
  }

  if (!playerairplay_interstitialEventActive())
  {
    OUTLINED_FUNCTION_109_2();
    if (!FigCFEqual())
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_181_1();
    if (!FigCFEqual())
    {
      goto LABEL_21;
    }

    v26 = pap_copyInterstitialPlayer();
    v27 = CMBaseObjectGetDerivedStorage();
    if (!v26)
    {
      goto LABEL_21;
    }

    v28 = v27;
    if (playqueue_getNumItemsInClientPlayQueue(*(DerivedStorage + 40)) && !playqueue_getNumItemsInClientPlayQueue(*(v28 + 40)))
    {
      cfa = 0;
      playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(DerivedStorage + 40), &cfa, 0);
      if (cfa)
      {
        v30 = CMBaseObjectGetDerivedStorage();
        memset(v44, 0, 24);
        pap_expectedEndTime(v44);
        memset(&v36, 0, sizeof(v36));
        CMTimebaseGetTime(&v36, *(v30 + 568));
        if (v44[0].flags)
        {
          CMTimeMake(&type, 5, 1);
          lhs = v44[0];
          CMTimeSubtract(&time2, &lhs, &type);
          type = v36;
          v29 = CMTimeCompare(&type, &time2) < 1;
        }

        else
        {
          v29 = 0;
        }

        CFRelease(cfa);
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }

    CFRelease(v26);
    if (!v29)
    {
      goto LABEL_21;
    }
  }

LABEL_9:
  v6 = pap_copyInterstitialPlayer();
  if (dword_1EAF172E8)
  {
    LODWORD(time2.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value);
    OUTLINED_FUNCTION_28();
    if (v4)
    {
      v12 = CMBaseObjectGetDerivedStorage() + 459;
      if (v6)
      {
        v13 = (CMBaseObjectGetDerivedStorage() + 459);
      }

      else
      {
        v13 = "";
      }

      LODWORD(v36.value) = 136316418;
      *(&v36.value + 4) = "pap_handlePlaybackSessionEvent";
      LOWORD(v36.flags) = 2048;
      *(&v36.flags + 2) = v9;
      HIWORD(v36.epoch) = 2082;
      v37 = v12;
      v38 = 2048;
      v39 = a2;
      v40 = 2048;
      v41 = v6;
      v42 = 2082;
      v43 = v13;
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_61_5();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417();
  }

  CFRelease(v9);
  if (v6)
  {
    goto LABEL_27;
  }

LABEL_31:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t pap_playbackSessionSetProperty()
{
  OUTLINED_FUNCTION_471();
  v1 = v0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v1)
  {
    if (*DerivedStorage)
    {
      return 0;
    }

    else
    {
      result = *(DerivedStorage + 280);
      if (result)
      {
        FigEndpointPlaybackSessionGetCMBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v4 = OUTLINED_FUNCTION_171();

          return v5(v4);
        }

        else
        {
          return 4294954514;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM();
  }

  return result;
}

const void *playqueue_copyItemForUUID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_261();
  FigSimpleMutexLock();
  Count = CFArrayGetCount(*v2);
  if (Count < 1)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v4 = Count;
  v5 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*v2, v5 - 1);
    CMBaseObjectGetDerivedStorage();
    v7 = FigCFEqual();
    if (v5 >= v4)
    {
      break;
    }

    ++v5;
  }

  while (!v7);
  if (!ValueAtIndex || !v7)
  {
    v8 = v7;
    FigSimpleMutexUnlock();
    if (v8)
    {
      return ValueAtIndex;
    }

    return 0;
  }

  CFRetain(ValueAtIndex);
  FigSimpleMutexUnlock();
  return ValueAtIndex;
}

uint64_t playerairplay_interstitialEventActive()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(DerivedStorage + 40), &cf, 0);
  if (!cf)
  {
    return 0;
  }

  v1 = CMBaseObjectGetDerivedStorage();
  v2 = *(v1 + 752);
  if (v2)
  {
    if (CFEqual(*(v1 + 752), &stru_1F0B1AFB8))
    {
      v2 = 0;
    }

    else
    {
      v2 = *MEMORY[0x1E695E738] != v2;
    }
  }

  CFRelease(cf);
  return v2;
}

void playerairplay_clearCoordinatedPlaybackSynchronizationTimebaseForItemsAfterItem(uint64_t a1, char *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_146_2(DerivedStorage);
  PlayQueueSnapshot = playqueue_createPlayQueueSnapshot(v4, v5);
  if (!PlayQueueSnapshot)
  {
    return;
  }

  v7 = PlayQueueSnapshot;
  Count = CFArrayGetCount(PlayQueueSnapshot);
  if (!a2)
  {
    goto LABEL_5;
  }

  CFArrayGetCount(v7);
  v9 = OUTLINED_FUNCTION_312();
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v9, v12, a2);
  if (FirstIndexOfValue != -1)
  {
    a2 = (FirstIndexOfValue + 1);
LABEL_5:
    if (a2 < Count)
    {
      do
      {
        CFArrayGetValueAtIndex(v7, a2);
        itemairplay_clearCoordinatedPlaybackSynchronizationTimebase();
        ++a2;
      }

      while (Count != a2);
    }
  }

  CFRelease(v7);
}

void playerairplay_notifyStartupTasksOfSeek(float a1, uint64_t a2, uint64_t a3, int a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v8 = v8 || v7 == 10;
    if (!v8)
    {
      OUTLINED_FUNCTION_315();
      v9 = OUTLINED_FUNCTION_171();
      playerairplay_notifyStartupTasksOfEvents(v9, v10, 2, a4, v11, v12, a1);
    }
  }
}

void pap_playbackSessionGetProxiedProperty(uint64_t a1, uint64_t a2, void *Mutable, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (Mutable)
  {
    Mutable = CFRetain(Mutable);
  }

  if (a1 && !*DerivedStorage && *(DerivedStorage + 280))
  {
    if (pap_shouldUseInterstitialQueuing())
    {
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961BD8], *MEMORY[0x1E695E4D0]);
    }

    v11 = *(DerivedStorage + 280);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v12)
    {
      v12(v11, a2, Mutable, a4, a5);
    }
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t itemairplay_postTaggedRangeMetadataChangedNotificationIfNeeded(uint64_t a1, void *a2)
{
  values = a2;
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    OUTLINED_FUNCTION_71_4(result);
    FigReadWriteLockLockForRead();
    if (!*(v2 + 72) && *(v2 + 792) >= 1)
    {
      v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigPlaybackItemParameter_CurrentTaggedRangeMetadataArray, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      OUTLINED_FUNCTION_515();
      itemairplay_postItemNotification();
      if (v5)
      {
        CFRelease(v5);
      }
    }

    return FigReadWriteLockUnlockForRead();
  }

  return result;
}

uint64_t playerairplay_createItemDidChangeNotificationPayload(uint64_t result)
{
  values = 0;
  if (result)
  {
    if (!FigCFDictionaryGetValueIfPresent())
    {
      FigCFDictionaryGetValueIfPresent();
    }

    return 0;
  }

  return result;
}

void pap_stopAirPlayVideoPlayback(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14, CFTypeRef cf, __int128 a16, uint64_t a17, const char *a18, __int128 a19, uint64_t a20, uint64_t a21, __int128 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  OUTLINED_FUNCTION_415();
  a49 = v51;
  a50 = v52;
  v54 = v53;
  a38 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v56 = *(CMBaseObjectGetDerivedStorage() + 368);
  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(DerivedStorage + 40), 0, &cf);
  v57 = CMBaseObjectGetDerivedStorage();
  if (v57)
  {
    v58 = v57;
    OUTLINED_FUNCTION_169(MEMORY[0x1E6960C70]);
    FigReadWriteLockLockForRead();
    if (!*(v58 + 72))
    {
      itemairplay_controlPlaybackActivityTimer(cf, 0);
    }

    v59 = cf;
    v60 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v60)
    {
      v60(v59, &a22);
    }

    a16 = a22;
    a17 = a23;
    itemairplay_setRememberedTimeAndDefaultFlag(cf, &a16);
    v61 = *(v58 + 48);
    if (v61)
    {
      CFRelease(v61);
      *(v58 + 48) = 0;
    }

    if (*(v58 + 56))
    {
      FigAssetDownloadCoordinatorUnmarkAssetForInteractivity(*(v58 + 16));
      *(v58 + 56) = 0;
    }

    FigReadWriteLockUnlockForRead();
  }

  if (dword_1EAF172E8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_46();
    if (v50)
    {
      if (v54)
      {
        v63 = (CMBaseObjectGetDerivedStorage() + 459);
      }

      else
      {
        v63 = "";
      }

      v64 = CMBaseObjectGetDerivedStorage();
      pap_getDescriptionForAirPlayState(*(v64 + 216));
      LODWORD(a16) = 136316162;
      *(&a16 + 4) = "pap_stopAirPlayVideoPlayback";
      OUTLINED_FUNCTION_49_6();
      a18 = v63;
      LOWORD(a19) = v65;
      *(&a19 + 2) = v66;
      WORD5(a19) = v65;
      *(&a19 + 12) = "Stopping";
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_10_3();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  pap_setAirPlayState(v54, 17);
  if (!v56)
  {
    v67 = *(DerivedStorage + 280);
    if (v67)
    {
      if (!*(CMBaseObjectGetDerivedStorage() + 368))
      {
        v68 = dispatch_semaphore_create(0);
        if (v68)
        {
          v69 = v68;
          v70 = malloc_type_calloc(1uLL, 0x18uLL, 0xA0040E93CF5C4uLL);
          if (v70)
          {
            v71 = v70;
            *v70 = v54;
            if (v54)
            {
              CFRetain(v54);
            }

            v71[1] = v67;
            CFRetain(v67);
            v71[2] = v69;
            dispatch_retain(v69);
            v72 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v72)
            {
              v72(v67, pap_playbackSessionStopCompletion, v71);
            }

            v73 = dispatch_time(0, 100000000);
            dispatch_semaphore_wait(v69, v73);
          }

          else
          {
            OUTLINED_FUNCTION_239();
            FigSignalErrorAtGM();
          }

          dispatch_release(v69);
        }

        else
        {
          OUTLINED_FUNCTION_239();
          FigSignalErrorAtGM();
        }
      }
    }
  }

  PlayQueueSnapshot = playqueue_createPlayQueueSnapshot(*(DerivedStorage + 40), 0);
  v75 = PlayQueueSnapshot;
  if (PlayQueueSnapshot && CFArrayGetCount(PlayQueueSnapshot) >= 1)
  {
    v76 = 0;
    do
    {
      v77 = OUTLINED_FUNCTION_178();
      ValueAtIndex = CFArrayGetValueAtIndex(v77, v78);
      CMBaseObjectGetDerivedStorage();
      FigReadWriteLockLockForRead();
      itemairplay_doCleanupAtEndOfPlayback();
      itemairplay_cleanupItemForAirPlay(ValueAtIndex, 1);
      playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(*(DerivedStorage + 40), ValueAtIndex, 0, 1);
      FigReadWriteLockUnlockForRead();
      ++v76;
    }

    while (v76 < CFArrayGetCount(v75));
  }

  playerairplay_resetAirPlayVideoState(v54);
  playerairplay_updateAirPlayVideoIsActiveProperty();
  if (*(DerivedStorage + 280))
  {
    pap_invalidateEndpointPlaybackSession(v54);
  }

  OUTLINED_FUNCTION_270();
  playerairplay_postPlayerNotification();
  playerairplay_cleanUpScrubLayerAndContext();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  OUTLINED_FUNCTION_355();
}

uint64_t playerairplay_setAndCacheAudioMode(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v5 = @"AudioMode_MoviePlayback";
  }

  else
  {
    v5 = @"AudioMode_Default";
    if (FigCFEqual())
    {
      v5 = @"AudioMode_SpokenAudio";
    }
  }

  v6 = *(DerivedStorage + 296);
  if (!v6 || (CMBaseObject = FigBufferedAirPlayOutputGetCMBaseObject(v6), VTable = CMBaseObjectGetVTable(), v10 = *(VTable + 8), result = VTable + 8, (v11 = *(v10 + 56)) != 0) && (result = v11(CMBaseObject, @"AudioMode", v5), !result))
  {
    result = pap_playbackSessionSetProperty();
    if (a3)
    {
      if (!result)
      {
        CMBaseObjectGetDerivedStorage();

        return FigCFDictionarySetValue();
      }
    }
  }

  return result;
}

void pap_videoSyncTimerEventHandler()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = *MEMORY[0x1E6960C70];
    *&time.value = *MEMORY[0x1E6960C70];
    v3 = *(MEMORY[0x1E6960C70] + 16);
    time.epoch = v3;
    cf = 0;
    playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(DerivedStorage + 40), 0, &cf);
    v4 = CMBaseObjectGetDerivedStorage();
    if (cf)
    {
      v5 = CMBaseObjectGetDerivedStorage();
      *&lhs.value = v9;
      lhs.epoch = v3;
      FigSimpleMutexLock();
      v6 = *(v5 + 576);
      if (v6)
      {
        CMTimebaseGetTime(&lhs, v6);
      }

      FigSimpleMutexUnlock();
      CMTimebaseGetTime(&rhs, *(v4 + 568));
      CMTimeSubtract(&time, &lhs, &rhs);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    lhs = time;
    CMTimeAbsoluteValue(&rhs, &lhs);
    lhs.value = rhs.value;
    lhs.timescale = rhs.timescale;
    if (rhs.flags)
    {
      v7 = *MEMORY[0x1E695E480];
      time.value = lhs.value;
      time.timescale = lhs.timescale;
      time.flags = rhs.flags;
      time.epoch = rhs.epoch;
      v8 = CMTimeCopyAsDictionary(&time, v7);
      OUTLINED_FUNCTION_236();
      pap_playbackSessionSetProperty();
      if (v8)
      {
        CFRelease(v8);
      }
    }

    CFRelease(v1);
  }
}

uint64_t pap_applyCachedPropertiesOnMediaControl(uint64_t result, const void *a2, const void *a3)
{
  v125 = 0;
  if (result)
  {
    if (a2)
    {
      v6 = result;
      result = CMBaseObjectGetDerivedStorage();
      if (result)
      {
        OUTLINED_FUNCTION_71_4(result);
        FigReadWriteLockLockForRead();
        if (*(v3 + 72))
        {
          return FigReadWriteLockUnlockForRead();
        }

        v7 = FigCFWeakReferenceHolderCopyReferencedObject();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (!DerivedStorage)
        {
          goto LABEL_50;
        }

        v9 = DerivedStorage;
        if (*DerivedStorage)
        {
          goto LABEL_50;
        }

        v10 = *MEMORY[0x1E6961EC8];
        if (CFEqual(v6, *MEMORY[0x1E6961EC8]))
        {
          CMBaseObjectGetDerivedStorage();
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          FigCFDictionarySetValue();
          pap_playbackSessionSetProxiedProperty(v7, v10, a2, Mutable);
          if (a3)
          {
            CFRetain(a3);
          }

          CFRetain(a2);
          v52 = *(v9 + 13);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __pap_applyCachedPropertiesOnMediaControl_block_invoke;
          block[3] = &__block_descriptor_56_e5_v8__0l;
          block[4] = v3;
          block[5] = a2;
          block[6] = a3;
          dispatch_async(v52, block);
          if (!v7)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        }

        if (CFEqual(v6, *MEMORY[0x1E6961E60]))
        {
          Mutable = CFDictionaryGetValue(a2, @"Date");
          if (!Mutable)
          {
            goto LABEL_51;
          }

          Value = CFDictionaryGetValue(a2, @"SeekID");
          valuePtr = 0.0;
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
          }

          if (v9[456] || FigGetCFPreferenceBooleanWithDefault())
          {
            v120 = **&MEMORY[0x1E6960C70];
            itemairplay_copyCurrentDateAndTime(a3, &v125);
            v13 = v125;
            if (v125)
            {
              FigDateTimeMakeFromDictionary(v125, &rhs);
              v22 = OUTLINED_FUNCTION_158_2(v14, v15, v16, v17, v18, v19, v20, v21, v114.value, *&v114.timescale, v114.epoch, v115, *&rhs.value);
              if (BYTE1(v118))
              {
                if (v118)
                {
                  v23 = v117;
                  v24 = MEMORY[0x19A8CCD90](Mutable, v22);
                  CMTimeMakeWithSeconds(&rhs, v24 - v23, 1000);
                  OUTLINED_FUNCTION_103_2(v25, v26, v27, v28, v29, v30, v31, v32, *&v114.value, *&v114.timescale, *&v114.epoch, *&v115, *&rhs.value, *&rhs.timescale, *&rhs.epoch, v117, *&v118, *&v119, *&v120.value, *&v120.timescale, *&v120.epoch, v121, *&v122.value);
                  CMTimeAdd(v34, v33, &rhs);
                  v35 = CFDateCreate(*MEMORY[0x1E695E480], v23);
                  OUTLINED_FUNCTION_154_1(v35, v36, v37, LODWORD(valuePtr) != 0, LODWORD(valuePtr), v38, v39, v40, v114.value, *&v114.timescale, v114.epoch, v115, rhs.value, *&rhs.timescale, rhs.epoch, *&v117, v118, v119, *&v120.value);
                  v41 = OUTLINED_FUNCTION_266();
                  pap_playbackSessionSeekToTime(v41, v42, v43, v44, v45, 0);
                  if (v35)
                  {
                    CFRelease(v35);
                  }
                }
              }

LABEL_19:
              CFRelease(v13);
            }

LABEL_50:
            Mutable = 0;
LABEL_51:
            if (!v7)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          }

          v53 = valuePtr;
          v54 = CMBaseObjectGetDerivedStorage();
          v55 = CMBaseObjectGetDerivedStorage();
          v56 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v13 = v56;
          if (v7 && !*v55 && *(v55 + 280))
          {
            CFDictionaryAddValue(v56, *MEMORY[0x1E6961D40], *(v54 + 80));
            if (pap_shouldUseInterstitialQueuing())
            {
              CFDictionaryAddValue(v13, *MEMORY[0x1E6961BD8], *MEMORY[0x1E695E4D0]);
            }

            FigCFDictionarySetInt32();
            v57 = OUTLINED_FUNCTION_62_8();
            *v57 = v7;
            CFRetain(v7);
            v58 = *(v55 + 280);
            *(v57 + 2) = v58;
            if (v58)
            {
              CFRetain(v58);
            }

            *(v57 + 1) = a3;
            if (a3)
            {
              CFRetain(a3);
            }

            v57[6] = v53;
            v59 = MEMORY[0x1E6960C70];
            *(v57 + 28) = LODWORD(v53) != 0;
            *(v57 + 2) = *v59;
            *(v57 + 6) = *(v59 + 16);
            v60 = *(v55 + 280);
            if (*(*(CMBaseObjectGetVTable() + 16) + 72))
            {
              OUTLINED_FUNCTION_63_6();
              v61(v60, Mutable, v13);
            }
          }

LABEL_41:
          if (!v13)
          {
            goto LABEL_50;
          }

          goto LABEL_19;
        }

        if (CFEqual(v6, *MEMORY[0x1E6961E70]))
        {
          v46 = OUTLINED_FUNCTION_188();
          CFDictionaryApplyFunction(v46, v47, v48);
          goto LABEL_50;
        }

        if (CFEqual(v6, @"SetPosition"))
        {
          v49 = CFDictionaryGetValue(a2, @"Time");
          if (v49)
          {
            LODWORD(v120.value) = 0;
            CMTimeMakeFromDictionary(&rhs, v49);
            v50 = CFDictionaryGetValue(a2, @"SendSeekNotification");
            if (v50)
            {
              v77 = CFBooleanGetValue(v50);
              v51 = v77;
              if (v77)
              {
                v78 = CFDictionaryGetValue(a2, @"SeekID");
                if (v78)
                {
                  CFNumberGetValue(v78, kCFNumberSInt32Type, &v120);
                }
              }
            }

            else
            {
              v51 = 0;
            }

            v79 = FigCFDictionaryGetValue();
            OUTLINED_FUNCTION_158_2(v79, v80, v81, v82, LODWORD(v120.value), v79, v83, v84, v114.value, *&v114.timescale, v114.epoch, v115, *&rhs.value);
            v85 = OUTLINED_FUNCTION_266();
            pap_playbackSessionSeekToTime(v85, v86, v87, v51, v88, v89);
            if (*(v3 + 157))
            {
              itemairplay_requestAirPlayPlaybackInfo(a3, 0, 1, 0);
            }
          }

          goto LABEL_50;
        }

        if (CFEqual(v6, @"SetRate"))
        {
          valuePtr = 0.0;
          *&v122.value = OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
          v122.epoch = v72;
          FigCFDictionaryGetFloat32IfPresent();
          LODWORD(v73) = FigCFDictionaryGetCMTimeIfPresent();
          FigCFDictionaryGetCMTimeIfPresent();
          v74 = CFDictionaryGetValue(a2, @"SetRateOptions");
          if (!v73 && v9[456] && valuePtr != 0.0)
          {
            FigSimpleMutexLock();
            v75 = *(v3 + 576);
            if (v75)
            {
              v73 = CFRetain(v75);
              FigSimpleMutexUnlock();
              if (v73)
              {
                itemairplay_GetCurrentTime(a3, &v122);
                CMClockGetHostTimeClock();
                OUTLINED_FUNCTION_103_2(v90, v91, v92, v93, v94, v95, v96, v97, *&v114.value, *&v114.timescale, *&v114.epoch, *&v115, *&rhs.value, *&rhs.timescale, *&rhs.epoch, v117, *&v118, *&v119, *&v120.value, *&v120.timescale, *&v120.epoch, v121, *&v122.value);
                v101 = CMSyncConvertTime(v100, v98, v73, v99);
                OUTLINED_FUNCTION_154_1(v101, v102, v103, v104, v105, v106, v107, v108, v114.value, *&v114.timescale, v114.epoch, v115, rhs.value, *&rhs.timescale, rhs.epoch, *&v117, v118, v119, *&v120.value);
                CFRelease(v73);
                LODWORD(v73) = 1;
              }
            }

            else
            {
              FigSimpleMutexUnlock();
              LODWORD(v73) = 0;
            }
          }

          v120 = v122;
          v114 = rhs;
          pap_playbackSessionSetRate(v7, v73, valuePtr, &v120, &v114, v74);
          goto LABEL_50;
        }

        if (CFEqual(v6, @"PlaybackRestrictions"))
        {
          v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (v3 + 688));
          CMBaseObjectGetDerivedStorage();
          ProxiedPropertyParamsWithItemUUID = itemairplay_createProxiedPropertyParamsWithItemUUID();
          pap_playbackSessionSetProxiedProperty(v7, *MEMORY[0x1E6961C78], v13, ProxiedPropertyParamsWithItemUUID);
          if (ProxiedPropertyParamsWithItemUUID)
          {
            CFRelease(ProxiedPropertyParamsWithItemUUID);
          }

          goto LABEL_41;
        }

        if (CFEqual(v6, @"SetEndTime"))
        {
          rhs = *(v3 + 440);
          v62 = OUTLINED_FUNCTION_266();
          v66 = 1;
          v67 = 0;
LABEL_49:
          playerairplay_setPlaybackEndTimes(v62, v63, v64, v66, v65, v67);
          goto LABEL_50;
        }

        if (CFEqual(v6, @"ReverseEndTime"))
        {
          rhs = *(v3 + 464);
          v62 = OUTLINED_FUNCTION_266();
          v66 = 0;
          v67 = 1;
          goto LABEL_49;
        }

        if (CFEqual(v6, @"TextMarkupArray"))
        {
          v109 = OUTLINED_FUNCTION_178();
          itemairplay_setItemTextMarkupArray(v109, v110);
          goto LABEL_50;
        }

        if (!CFEqual(v6, *MEMORY[0x1E6961E90]) && !CFEqual(v6, *MEMORY[0x1E6961E50]) && !CFEqual(v6, *MEMORY[0x1E6961E80]))
        {
          if (CFEqual(v6, *MEMORY[0x1E6961EE8]) || CFEqual(v6, *MEMORY[0x1E6961EF0]))
          {
            v111 = CMBaseObjectGetDerivedStorage();
            if (!*(v111 + 240) || !*(v111 + 241))
            {
              goto LABEL_50;
            }

            memset(&rhs, 0, sizeof(rhs));
            CMTimeMakeFromDictionary(&rhs, a2);
LABEL_63:
            CMBaseObjectGetDerivedStorage();
            itemairplay_createProxiedPropertyParamsWithItemUUID();
            v69 = OUTLINED_FUNCTION_618();
            Mutable = v70;
            pap_playbackSessionSetProxiedProperty(v69, v71, a2, v70);
            if (!v7)
            {
LABEL_53:
              if (Mutable)
              {
                CFRelease(Mutable);
              }

              return FigReadWriteLockUnlockForRead();
            }

LABEL_52:
            CFRelease(v7);
            goto LABEL_53;
          }

          if (!CFEqual(v6, *MEMORY[0x1E6961ED0]))
          {
            if (CFEqual(v6, *MEMORY[0x1E6961E68]))
            {
              v112 = OUTLINED_FUNCTION_618();
              pap_playbackSessionSetProxiedProperty(v112, v113, a2, 0);
              goto LABEL_50;
            }

            if (CFEqual(v6, *MEMORY[0x1E6961E58]))
            {
              playerairplay_setInterstitialEventSkippableStateOnAirPlayController();
              goto LABEL_50;
            }

            if (!CFEqual(v6, *MEMORY[0x1E6961EA0]))
            {
              goto LABEL_50;
            }

            goto LABEL_63;
          }
        }

        v68 = CMBaseObjectGetDerivedStorage();
        if (!*(v68 + 240) || !*(v68 + 241))
        {
          goto LABEL_50;
        }

        goto LABEL_63;
      }
    }
  }

  return result;
}

void __pap_applyCachedPropertiesOnMediaControl_block_invoke()
{
  OUTLINED_FUNCTION_70_6();
  FigReadWriteLockLockForRead();
  OUTLINED_FUNCTION_121_1();
  if (!v2)
  {
    v3 = *(v1 + 352);
    if (v3)
    {
      FigAirPlayMediaSelectionSetProperty(v3, @"LastKnownSelectedMediaArray", *(v0 + 40));
    }
  }

  FigReadWriteLockUnlockForRead();
  v4 = *(v0 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(v0 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void pap_playbackSessionSeekToTime(const void *a1, char *a2, __int128 *a3, char a4, int a5, const void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a1 && !*v13 && *(v13 + 280))
  {
    itemairplay_clearCoordinatedPlaybackSynchronizationTimebase();
    playerairplay_clearCoordinatedPlaybackSynchronizationTimebaseForItemsAfterItem(a1, a2);
    v15 = *(v13 + 56);
    v23 = *a3;
    v24 = *(a3 + 2);
    playerairplay_notifyStartupTasksOfSeek(v15, a1, a2, a5);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961D40], *(DerivedStorage + 80));
    if (pap_shouldUseInterstitialQueuing())
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961BD8], *MEMORY[0x1E695E4D0]);
    }

    FigCFDictionarySetInt32();
    OUTLINED_FUNCTION_521();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_521();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_521();
    FigCFDictionarySetValueFromKeyInDict();
    v16 = OUTLINED_FUNCTION_62_8();
    *v16 = a1;
    CFRetain(a1);
    v17 = *(v13 + 280);
    v16[2] = v17;
    if (v17)
    {
      CFRetain(v17);
    }

    v16[1] = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    *(v16 + 6) = a5;
    *(v16 + 28) = a4;
    v16[7] = a6;
    if (a6)
    {
      CFRetain(a6);
    }

    v18 = *a3;
    v16[6] = *(a3 + 2);
    *(v16 + 2) = v18;
    v19 = *(v13 + 280);
    v21 = *a3;
    v22 = *(a3 + 2);
    if (*(*(CMBaseObjectGetVTable() + 16) + 64))
    {
      v23 = v21;
      v24 = v22;
      OUTLINED_FUNCTION_63_6();
      v20(v19, &v23, Mutable);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void pap_applyEnabledTrackPropertyOnMediaControl(const __CFString *a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (a2)
    {
      CFStringGetIntValue(a1);
      CMBaseObjectGetDerivedStorage();
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetValue();
      FigCFDictionarySetInt32();
      v6 = OUTLINED_FUNCTION_236();
      pap_playbackSessionSetProxiedProperty(v6, v7, v8, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t itemairplay_setItemTextMarkupArray(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_71_4(DerivedStorage);
  FigReadWriteLockLockForRead();
  if (*(v2 + 72))
  {
    goto LABEL_8;
  }

  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = CMBaseObjectGetDerivedStorage();
  if (v6 && !*v6)
  {
    CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    pap_playbackSessionSetProxiedProperty(v5, *MEMORY[0x1E6961EE0], a2, Mutable);
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  Mutable = 0;
  if (v5)
  {
LABEL_5:
    CFRelease(v5);
  }

LABEL_6:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_8:

  return FigReadWriteLockUnlockForRead();
}

void playerairplay_setInterstitialEventSkippableStateOnAirPlayController()
{
  OUTLINED_FUNCTION_261();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && !*DerivedStorage && DerivedStorage[241])
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v0)
    {
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionarySetInt32();
      FigCFDictionaryGetValueIfPresent();
      FigCFDictionaryGetValueIfPresent();
      v3 = OUTLINED_FUNCTION_236();
      pap_playbackSessionSetProxiedProperty(v3, v4, v5, 0);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

void __pap_playbackSessionSetRateCompletion_block_invoke()
{
  OUTLINED_FUNCTION_56_9();
  if (!v1)
  {
    v2 = *(*(v0 + 48) + 8);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (v2)
    {
      if (!*DerivedStorage && *(DerivedStorage + 280) == v2)
      {
        v4 = *(v0 + 40);
        v5 = *(v0 + 64);
        v6 = *(v0 + 56);
        v7 = CMBaseObjectGetDerivedStorage();
        v8 = *(v6 + 16);
        v9 = *(CMBaseObjectGetDerivedStorage() + 64) && v8 == 0.0;
        v10 = v9;
        if (!v5 && *(v6 + 32) == *(v7 + 60) - 1 && !v10)
        {
          v11 = *(v6 + 16);
          if (v11 != *(v7 + 56))
          {
            playerairplay_updatePlayerRateToMatch(v4, *(v6 + 24), v11);
          }
        }
      }
    }
  }

  v12 = *(v0 + 48);
  if (v12[1])
  {
    CFRelease(v12[1]);
    v12 = *(v0 + 48);
  }

  if (*v12)
  {
    CFRelease(*v12);
    v12 = *(v0 + 48);
  }

  if (v12[3])
  {
    CFRelease(v12[3]);
    v12 = *(v0 + 48);
  }

  free(v12);
}

uint64_t playerairplay_bufferedAirPlayOutputActiveConfigurationDidBecomeInvalid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 296) == a4)
  {
    v6 = *(result + 8);
    if (v6)
    {

      return FigPlayerReevaluateRouteConfigurationForReason(v6, 0, @"Received kFigBufferedAirPlayOutputNotification_ActiveConfigurationDidBecomeInvalid on AirPlay player -> AirPlay sub-player");
    }

    else
    {

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

void playerairplay_audioSessionMutedDidChangeNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 296))
  {
    v6 = DerivedStorage;
    if (*(DerivedStorage + 392) == a4)
    {
      FigCFDictionaryGetBooleanIfPresent();
      v7 = *MEMORY[0x1E695E4C0];
      v8 = *MEMORY[0x1E695E4C0];
      FigBytePumpGetFigBaseObject(*(v6 + 208));
      v10 = v9;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v11(v10, 0x1F0B34E18, v8);
      }

      CMBaseObject = FigBufferedAirPlayOutputGetCMBaseObject(*(v6 + 296));
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v13)
      {
        v13(CMBaseObject, @"IsPiPMuted", v7);
      }
    }
  }

  OUTLINED_FUNCTION_652();
}

void playerairplay_updateAirPlayRouteInformationAndEndpoint(uint64_t a1, const __CFDictionary *a2, const void *a3)
{
  playerairplay_updateAirPlayRouteInformation(a1, a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*DerivedStorage)
  {
    v5 = DerivedStorage;
    *(DerivedStorage + 272) = 0;
    v6 = *(DerivedStorage + 256);
    *(DerivedStorage + 256) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (a3)
    {
      FigEndpointGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v7 = OUTLINED_FUNCTION_188();
        v8(v7);
      }

      OUTLINED_FUNCTION_496();
      cf = CFDictionaryCreate(v9, v10, v11, v12, v13, v14);
      *(v5 + 241) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      *(v5 + 242) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      *(v5 + 244) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      *(v5 + 243) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      *(v5 + 245) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      FigEndpointGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v15 = OUTLINED_FUNCTION_188();
        v16(v15);
      }

      *(v5 + 272) = 0;
    }

    v17 = *(v5 + 232);
    if (v17)
    {
      CFRelease(v17);
      *(v5 + 232) = 0;
    }

    v18 = *(v5 + 264);
    *(v5 + 264) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (*(v5 + 264) != v18)
    {
      OUTLINED_FUNCTION_270();
      playerairplay_postPlayerNotification();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void playerairplay_switchFromBufferedAirPlayToLocal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 296))
  {
    v3 = DerivedStorage;
    FigPlayerGetFigBaseObject(*(DerivedStorage + 8));
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v4 = OUTLINED_FUNCTION_152_2();
      v5(v4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
    v6 = *(v3 + 296);
    if (v6)
    {
      CFRelease(v6);
      *(v3 + 296) = 0;
    }

    *(v3 + 304) = 0;
    playerairplay_updateShareAndAirPlayEchoMitigation(a1);

    playerairplay_postIsBufferedAirPlayActiveDidChangeNotification();
  }
}

void playerairplay_updateBasedOnAirPlayVideoRouteDeselected()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!*DerivedStorage)
    {
      v1 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_97_4(v1);
      FigCFDictionaryGetBooleanIfPresent();
      if (v5)
      {
        v2 = *(CMBaseObjectGetDerivedStorage() + 216);
        if (v2)
        {
          if (v2 != 10)
          {
            v3 = OUTLINED_FUNCTION_203();
            playerairplay_switchFromAirPlayVideoToLocal(v3, v4);
          }
        }
      }
    }
  }
}

void playerairplay_playbackRouteSelected(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive();
  if (!*DerivedStorage)
  {
    if (*(DerivedStorage + 224))
    {
      v4 = IsAirplayVideoActive;
      v5 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_97_4(v5);
      FigCFDictionaryGetBooleanIfPresent();
      if (v6)
      {
        CFDictionaryGetValue(*(DerivedStorage + 224), @"NewRouteName");
        pap_invalidateEndpointPlaybackSession(a1);
        playerairplay_resetAirPlayVideoState(a1);
        playerairplay_checkStartStopAirPlay(a1, v4);
      }
    }
  }

  playerairplay_checkAndUpdatePlayQueueItems(a1);
}

void playerairplay_bufferedAudioRouteSelected(void *a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_199();
  v5 = *(CMBaseObjectGetDerivedStorage() + 216);
  v6 = v5 == 10 || v5 == 0;
  if (v6 && !*(CMBaseObjectGetDerivedStorage() + 296))
  {
    if (dword_1EAF172E8)
    {
      OUTLINED_FUNCTION_147();
      v7 = OUTLINED_FUNCTION_31_15();
      OUTLINED_FUNCTION_311(v7, v8, v9, v10, v11, v12, v13, v14, v33, v35, v37, v39, SBYTE2(v39), BYTE3(v39), SHIDWORD(v39));
      OUTLINED_FUNCTION_40();
      if (v3)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_12_17();
        OUTLINED_FUNCTION_612();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
    }

    if (*(v1 + 224))
    {
      pap_invalidateEndpointPlaybackSession(a1);
      v15 = *(v1 + 216);
      CMBaseObjectGetDerivedStorage();
      FigCFDictionaryGetBooleanIfPresent();
      pap_setAirPlayState(a1, 0);
      if (dword_1EAF172E8)
      {
        OUTLINED_FUNCTION_147();
        v16 = OUTLINED_FUNCTION_31_15();
        OUTLINED_FUNCTION_311(v16, v17, v18, v19, v20, v21, v22, v23, v33, v35, v37, v39, SBYTE2(v39), BYTE3(v39), SHIDWORD(v39));
        OUTLINED_FUNCTION_40();
        if (v3)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          pap_getDescriptionForAirPlayState(v15);
          OUTLINED_FUNCTION_199();
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          pap_getDescriptionForAirPlayState(*(DerivedStorage + 216));
          OUTLINED_FUNCTION_49_6();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_12_17();
          OUTLINED_FUNCTION_612();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414();
        if (dword_1EAF172E8)
        {
          OUTLINED_FUNCTION_147();
          v25 = OUTLINED_FUNCTION_31_15();
          OUTLINED_FUNCTION_86_2(v25, v26, v27, v28, v29, v30, v31, v32, v34, v36, v38, v40, SBYTE2(v40), BYTE3(v40), SHIDWORD(v40));
          OUTLINED_FUNCTION_7_22();
          if (v2)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_53_10();
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_4_41();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_524();
        }
      }

      playerairplay_switchFromLocalToBufferedAirPlay(a1);
    }
  }
}

void playerairplay_checkStartAPV(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v4 = *(v3 + 16);
  FigSimpleMutexUnlock();
  if (*(CMBaseObjectGetDerivedStorage() + 296))
  {
    goto LABEL_31;
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_55_11();
  if (!v5)
  {
    goto LABEL_31;
  }

  if (*(DerivedStorage + 216) != 12 && *(CMBaseObjectGetDerivedStorage() + 216) <= 0xFu)
  {
    OUTLINED_FUNCTION_140_1();
    if (!v8)
    {
      goto LABEL_31;
    }
  }

  if (!pap_doesCurrentRouteUseScreen())
  {
    if (*(DerivedStorage + 1))
    {
      v12 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_97_4(v12);
      FigCFDictionaryGetBooleanIfPresent();
      if (!v15 || !(playerairplay_switchFromLocalToAirPlayVideo(a1) | *(DerivedStorage + 457)))
      {
        if (*(DerivedStorage + 247))
        {
          v13 = OUTLINED_FUNCTION_198();
          playerairplay_switchToBufferedAirPlay(v13, v14);
        }
      }
    }

    goto LABEL_31;
  }

  v6 = *(DerivedStorage + 408);
  v7 = gIsiOSDeviceWithMedusaSupport_0;
  if (!playerairplay_isAirPlayVideoAllowed() || (v7 ? (v8 = v6 == 0) : (v8 = 0), v8 ? (v9 = 0) : (v9 = 1), !*(DerivedStorage + 52) || !v4 || !v9 || !*(DerivedStorage + 1) || *(DerivedStorage + 200) && pap_isDeviceUnlocked()))
  {
LABEL_31:
    OUTLINED_FUNCTION_652();
    return;
  }

  OUTLINED_FUNCTION_652();

  playerairplay_switchFromLocalToAirPlayVideo(v10);
}

void playerairplay_checkStopAPV()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FigSimpleMutexUnlock();
  if (!*(CMBaseObjectGetDerivedStorage() + 296))
  {
    v1 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_97_4(v1);
    FigCFDictionaryGetBooleanIfPresent();
    if (v8)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_55_11();
      if (!v2 || *(CMBaseObjectGetDerivedStorage() + 216) <= 0xFu && (OUTLINED_FUNCTION_140_1(), !v3))
      {
        if (pap_doesCurrentRouteUseScreen())
        {
          if (playerairplay_isAirPlayVideoAllowed() && DerivedStorage[52] && (!DerivedStorage[200] || !pap_isDeviceUnlocked()))
          {
            return;
          }

LABEL_16:
          v4 = OUTLINED_FUNCTION_198();
          playerairplay_switchFromAirPlayVideoToLocal(v4, v5);
          return;
        }

        if (!DerivedStorage[1])
        {
          goto LABEL_16;
        }

        if (!playerairplay_isAirPlayVideoAllowed())
        {
          if (!DerivedStorage[247])
          {
            goto LABEL_16;
          }

          v6 = OUTLINED_FUNCTION_203();
          if (!playerairplay_switchToBufferedAirPlay(v6, v7))
          {
            goto LABEL_16;
          }
        }
      }
    }
  }
}

void playerairplay_switchFromLocalToBufferedAirPlay(void *a1)
{
  v79 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  url = 0;
  if (qword_1ED4CAC70 != -1)
  {
    dispatch_once(&qword_1ED4CAC70, &__block_literal_global_160);
  }

  v4 = qword_1ED4CAC68;
  cf = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 296))
  {
    FigBytePumpGetFigBaseObject(*(DerivedStorage + 208));
    v6 = v5;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v8 = *MEMORY[0x1E695E480];
      if (!v7(v6, 0x1F0B34E38, *MEMORY[0x1E695E480], &v65))
      {
        v9 = FigBufferedAirPlayOutputCreate(v8, *(DerivedStorage + 256), v65, &v66);
        if (v9)
        {
          v50 = v9;
          OUTLINED_FUNCTION_26_19();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v52 = v60;
          }

          else
          {
            v52 = v60 & 0xFFFFFFFE;
          }

          if (v52)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            v67 = 136315906;
            OUTLINED_FUNCTION_72_5();
            *(v53 + 34) = v50;
            OUTLINED_FUNCTION_66();
            OUTLINED_FUNCTION_4_41();
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_414();
        }

        else
        {
          FigBufferedAirPlayOutputGetCMBaseObject(v66);
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v10 = OUTLINED_FUNCTION_148_2();
            v11(v10);
          }

          FigBufferedAirPlayOutputGetCMBaseObject(v66);
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v12 = OUTLINED_FUNCTION_148_2();
            v13(v12);
          }

          FigBufferedAirPlayOutputGetCMBaseObject(v66);
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v14 = OUTLINED_FUNCTION_148_2();
            v15(v14);
          }

          FigBaseObject = FigPlayerGetFigBaseObject(*(DerivedStorage + 8));
          v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v17 && !v17(FigBaseObject, @"FigAudioSession", v8, &cf))
          {
            FigBufferedAirPlayOutputGetCMBaseObject(v66);
            if (*(*(CMBaseObjectGetVTable() + 8) + 56))
            {
              v27 = OUTLINED_FUNCTION_148_2();
              v28(v27);
            }
          }

          else
          {
            OUTLINED_FUNCTION_26_19();
            v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v18, type);
            OUTLINED_FUNCTION_37();
            if (v1)
            {
              if (a1)
              {
                v19 = (CMBaseObjectGetDerivedStorage() + 459);
              }

              else
              {
                v19 = "";
              }

              v20 = *(DerivedStorage + 8);
              v67 = 136315906;
              v68 = "playerairplay_switchFromLocalToBufferedAirPlay";
              v69 = 2048;
              v70 = a1;
              v71 = 2082;
              v72 = v19;
              v73 = 2048;
              v74 = v20;
              OUTLINED_FUNCTION_66();
              OUTLINED_FUNCTION_27();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_16();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (cf)
          {
            CFRelease(cf);
          }

          v21 = CFStringCreateWithCString(v8, (DerivedStorage + 459), 0x8000100u);
          if (v21)
          {
            v22 = v21;
            CMBaseObject = FigBufferedAirPlayOutputGetCMBaseObject(v66);
            v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v24)
            {
              v24(CMBaseObject, @"LoggingID", v22);
            }

            if (dword_1EAF172E8)
            {
              OUTLINED_FUNCTION_26_19();
              v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v25, type);
              OUTLINED_FUNCTION_37();
              if (v1)
              {
                if (a1)
                {
                  v26 = (CMBaseObjectGetDerivedStorage() + 459);
                }

                else
                {
                  v26 = "";
                }

                v29 = *(DerivedStorage + 8);
                v67 = 136316162;
                v68 = "playerairplay_switchFromLocalToBufferedAirPlay";
                v69 = 2048;
                v70 = a1;
                v71 = 2082;
                v72 = v26;
                v73 = 2048;
                v74 = v66;
                v75 = 2048;
                v76 = v29;
                OUTLINED_FUNCTION_66();
                OUTLINED_FUNCTION_27();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v30 = v66;
            v31 = FigPlayerGetFigBaseObject(*(DerivedStorage + 8));
            v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v32)
            {
              v33 = v32(v31, @"BufferedAirPlayOutput", v30);
              if (!v33)
              {
                if (*(DerivedStorage + 296))
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  FigNotificationCenterRemoveWeakListeners();
                  v34 = *(DerivedStorage + 296);
                  if (v34)
                  {
                    CFRelease(v34);
                    *(DerivedStorage + 296) = 0;
                  }
                }

                *(DerivedStorage + 296) = CFRetain(v66);
                *(DerivedStorage + 304) = 0;
                OUTLINED_FUNCTION_64_8();
                CFDictionaryApplyFunction(v35, v36, a1);
                playerairplay_updateShareAndAirPlayEchoMitigation(a1);
                if (a1)
                {
                  CFRetain(a1);
                }

                OUTLINED_FUNCTION_25_1();
                v55 = 3221225472;
                v56 = __playerairplay_switchFromLocalToBufferedAirPlay_block_invoke;
                v57 = &__block_descriptor_40_e5_v8__0l;
                v58 = a1;
                dispatch_async(v37, block);
                CMNotificationCenterGetDefaultLocalCenter();
                FigNotificationCenterAddWeakListeners();
                playerairplay_postIsBufferedAirPlayActiveDidChangeNotification();
                if (v4 && *(*(CMBaseObjectGetVTable() + 16) + 32))
                {
                  v38 = OUTLINED_FUNCTION_312();
                  v39(v38);
                  v40 = v64;
                  if (!v64)
                  {
LABEL_66:
                    CFRelease(v22);
                    goto LABEL_78;
                  }

                  v41 = *(*(CMBaseObjectGetVTable() + 16) + 152);
                  if (v41)
                  {
                    v41(v40, &v63);
                    if (v63)
                    {
                      FigAssetGetCMBaseObject(v63);
                      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
                      {
                        v42 = OUTLINED_FUNCTION_521();
                        v43(v42);
                        if (url)
                        {
                          if (pap_isLocalFileURL(url, 0))
                          {
                            v40 = CFURLCopyPathExtension(url);
                            CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
                            if (CTGreenTeaOsLogHandle)
                            {
                              v45 = CTGreenTeaOsLogHandle;
                              if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
                              {
                                *buf = 138412290;
                                v78 = v40;
                                _os_log_impl(&dword_1962D5000, v45, OS_LOG_TYPE_INFO, "Transmitting some media data (%@)", buf, 0xCu);
                              }
                            }

                            goto LABEL_66;
                          }
                        }
                      }
                    }
                  }
                }

LABEL_65:
                v40 = 0;
                goto LABEL_66;
              }

              v46 = v33;
            }

            else
            {
              v46 = -12782;
            }

            OUTLINED_FUNCTION_26_19();
            v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            if (os_log_type_enabled(v47, type))
            {
              v48 = v60;
            }

            else
            {
              v48 = v60 & 0xFFFFFFFE;
            }

            if (v48)
            {
              if (a1)
              {
                CMBaseObjectGetDerivedStorage();
              }

              v67 = 136315906;
              OUTLINED_FUNCTION_72_5();
              *(v49 + 34) = v46;
              OUTLINED_FUNCTION_66();
              OUTLINED_FUNCTION_4_41();
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_238_0();
            goto LABEL_65;
          }

          FigSignalErrorAtGM();
        }
      }
    }
  }

  v40 = 0;
LABEL_78:
  if (v66)
  {
    CFRelease(v66);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (url)
  {
    CFRelease(url);
  }

  if (v40)
  {
    CFRelease(v40);
  }
}

void playerairplay_setFigAudioSessionInfoOnBAO(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BOOLean = 0;
  if (*(DerivedStorage + 296))
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 392);
    if (v4)
    {
      v5 = *(CMBaseObjectGetVTable() + 16);
      if (v5)
      {
        v6 = *(v5 + 48);
        if (v6)
        {
          v6(v4, *MEMORY[0x1E69B00A0], *MEMORY[0x1E695E480], &BOOLean);
        }
      }

      FigBufferedAirPlayOutputGetCMBaseObject(*(v3 + 296));
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v7 = OUTLINED_FUNCTION_188();
        v8(v7);
      }
    }

    if (*(v3 + 137))
    {
      v9 = 1;
    }

    else if (BOOLean)
    {
      v9 = CFBooleanGetValue(BOOLean) != 0;
    }

    else
    {
      v9 = 0;
    }

    playerairplay_SetPiPMuteOnBufferedAudio(a1, v9);
    if (BOOLean)
    {
      CFRelease(BOOLean);
    }
  }
}

uint64_t playerairplay_SetPiPMuteOnBufferedAudio(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 296))
  {
    return 0;
  }

  if (dword_1EAF172E8)
  {
    OUTLINED_FUNCTION_147();
    v6 = OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_304(v6, v7, v8, v9, v10, v11, v12, v13, v19, v20, v21, v22, SBYTE2(v22), BYTE3(v22), SHIDWORD(v22));
    OUTLINED_FUNCTION_46();
    if (v2)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_53_10();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_10_3();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  v14 = *(DerivedStorage + 296);
  if (a2)
  {
    v15 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v15 = MEMORY[0x1E695E4C0];
  }

  CMBaseObject = FigBufferedAirPlayOutputGetCMBaseObject(v14);
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v17)
  {
    return v17(CMBaseObject, @"IsPiPMuted", *v15);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t playerairplay_switchToBufferedAirPlay(void *a1, int a2)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 247))
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_97_4(DerivedStorage);
  FigCFDictionaryGetBooleanIfPresent();
  if (a2)
  {
    if (v8)
    {
      v5 = OUTLINED_FUNCTION_198();
      playerairplay_switchFromAirPlayVideoToLocal(v5, v6);
    }
  }

  playerairplay_bufferedAudioRouteSelected(a1);
  return 1;
}

BOOL playerairplay_isPrimaryForNativeInterstitialsInAPVPlayback()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage || !DerivedStorage[241] || !*(CMBaseObjectGetDerivedStorage() + 368))
  {
    return 0;
  }

  v2 = pap_copyPrimaryPlayer();
  if (v2)
  {
    v3 = *(CMBaseObjectGetDerivedStorage() + 216);
    v5 = v3 == 16 || (v3 & 0xFFFFFFFE) == 14;
  }

  else
  {
    v5 = 0;
  }

  if (dword_1EAF172E8 >= 2)
  {
    v6 = OUTLINED_FUNCTION_19_27();
    OUTLINED_FUNCTION_311(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18, SBYTE2(v18), BYTE3(v18), SHIDWORD(v18));
    OUTLINED_FUNCTION_40();
    if (v0)
    {
      if (v2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_53_10();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_612();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v5;
}

uint64_t playerairplay_copyPlayQueueAirPlayItemFromSubPlayer()
{
  OUTLINED_FUNCTION_375_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  key = 0;
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v3 = DerivedStorage;
  if (v1)
  {
    v1 = *(CMBaseObjectGetDerivedStorage() + 8);
  }

  v4 = *(v3 + 1);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v5 && (v5(v4, v1, &key), key))
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(v3 + 2), key);
    v7 = Value;
    if (Value)
    {
      CFRetain(Value);
      v8 = 0;
    }

    else
    {
      v8 = 4294954511;
    }

    FigSimpleMutexUnlock();
    if (v0)
    {
LABEL_10:
      if (!v8)
      {
        *v0 = v7;
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (v0)
    {
      goto LABEL_10;
    }
  }

  if (key)
  {
    CFRelease(key);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

void __playerairplay_switchFromLocalToAirPlayVideo_block_invoke()
{
  OUTLINED_FUNCTION_70_6();
  FigReadWriteLockLockForRead();
  if (!*(*(v0 + 32) + 72) && !**(v0 + 40))
  {
    isUsingCustomMediaSelectionSchemes = itemairplay_isUsingCustomMediaSelectionSchemes();
    v2 = *(*(v0 + 32) + 352);
    if (isUsingCustomMediaSelectionSchemes)
    {
      FigAirPlayMediaSelectionSetProperty(v2, @"MediaPresentationLanguages", *(v0 + 56));
      v2 = *(*(v0 + 32) + 352);
      v3 = kFigAirPlayMediaSelectionProperty_MediaPresentationCharacteristics;
      v4 = 64;
    }

    else
    {
      v3 = kFigAirPlayMediaSelectionProperty_ClientSelectedMediaArray;
      v4 = 72;
    }

    FigAirPlayMediaSelectionSetProperty(v2, *v3, *(v0 + v4));
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v6 = v6 || v5 == 10;
    if (!v6)
    {
      itemairplay_prepareAndCacheSelectedMediaArray();
    }
  }

  OUTLINED_FUNCTION_137_1();
  v7 = *(v0 + 72);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(v0 + 56);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(v0 + 64);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(v0 + 80);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(v0 + 48);
  if (v11)
  {

    CFRelease(v11);
  }
}

BOOL itemairplay_isUsingCustomMediaSelectionSchemes()
{
  theArray = 0;
  v0 = *(CMBaseObjectGetDerivedStorage() + 352);
  if (!v0)
  {
    return 0;
  }

  v1 = FigAirPlayMediaSelectionCopyProperty(v0, @"mediaCharacteristicsForCustomMediaSelectionSchemes", *MEMORY[0x1E695E480], &theArray);
  v2 = theArray;
  if (!v1 && theArray)
  {
    v3 = CFArrayGetCount(theArray) > 0;
    v2 = theArray;
    if (!theArray)
    {
      return v3;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if (theArray)
  {
LABEL_7:
    CFRelease(v2);
  }

  return v3;
}

void __itemairplay_resetTimeToPausePlayback_block_invoke(uint64_t a1)
{
  cf = 0;
  FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 36, &cf);
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 56) = *(a1 + 48);
  playerairplay_postPlayerRateDidChangeNotification(v2, cf);
  v3 = *(a1 + 40);
  v4 = *(a1 + 52);
  v5 = *(a1 + 68);
  playerairplay_setRateAirPlay(v3, 0, &v4, MEMORY[0x1E6960C70], cf);
  CFRelease(*(a1 + 40));
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef playerairplay_copyExternalPlaybackSystemLanguageCode(const void *a1)
{
  cf = 0;
  if (a1)
  {
    v2 = a1;
    v3 = *(CMBaseObjectGetDerivedStorage() + 368);
    if (v3)
    {
      v2 = pap_copyPrimaryPlayer();
    }

    if (!*CMBaseObjectGetDerivedStorage())
    {
      OUTLINED_FUNCTION_199();
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_54_11();
      if (!(!v5 & v4))
      {
        if (*(v1 + 241))
        {
          v6 = *(v1 + 232);
          if (v6)
          {
            cf = CFRetain(v6);
          }

          else
          {
            v7 = OUTLINED_FUNCTION_270();
            if (!playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut(v7, v8, v9, 500000000, v10))
            {
              v11 = *(v1 + 232);
              *(v1 + 232) = 0;
              if (v11)
              {
                CFRelease(v11);
              }
            }
          }
        }
      }
    }

    if (v3 && v2)
    {
      CFRelease(v2);
    }
  }

  return cf;
}

void __playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut_block_invoke(uint64_t a1)
{
  if (!**(a1 + 56))
  {
    OUTLINED_FUNCTION_2_4();
    **(v3 + 24) = v2;
    if (v2)
    {
      CFRetain(v2);
    }

    OUTLINED_FUNCTION_2_4();
    *(*(v5 + 24) + 24) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    *(*(*(*(a1 + 32) + 8) + 24) + 8) = *(*(*(a1 + 40) + 8) + 40);
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (v6)
    {
      dispatch_retain(v6);
    }

    v7 = *(*(*(a1 + 48) + 8) + 24);
    if (v7)
    {
      CFRetain(v7);
      v8 = *(*(*(a1 + 48) + 8) + 24);
    }

    else
    {
      v8 = 0;
    }

    pap_playbackSessionGetProxiedProperty(*(a1 + 64), *(a1 + 72), *(a1 + 80), pap_playbackSessionGetProxiedPropertyCompletion, v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(*(*(a1 + 48) + 8) + 24);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(*(*(a1 + 40) + 8) + 40);
  if (v13)
  {

    dispatch_release(v13);
  }
}

void __playerairplay_handleSetProperty_block_invoke_6(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = playerairplay_SetPiPMuteOnBufferedAudio(*(a1 + 40), *(a1 + 48));
  OUTLINED_FUNCTION_2_4();
  *(v2 + 24) = 0;
  if (v1)
  {

    CFRelease(v1);
  }
}

void __playerairplay_handleSetProperty_block_invoke_7()
{
  OUTLINED_FUNCTION_56_9();
  if (!v1)
  {
    playerairplay_setPropertyOnAllAirPlayMediaSelections();
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v3 = v3 || v2 == 10;
    if (!v3)
    {
      playerairplay_updateAndApplySelectedMediaArrayOnMediaControl(*(v0 + 40));
    }
  }

  v4 = *(v0 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(v0 + 48);
  if (v5)
  {

    CFRelease(v5);
  }
}

void playerairplay_setPropertyOnAllAirPlayMediaSelections()
{
  OUTLINED_FUNCTION_471();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = OUTLINED_FUNCTION_146_2(DerivedStorage);
  PlayQueueSnapshot = playqueue_createPlayQueueSnapshot(v3, v4);
  if (PlayQueueSnapshot)
  {
    v6 = PlayQueueSnapshot;
    if (CFArrayGetCount(PlayQueueSnapshot) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = OUTLINED_FUNCTION_178();
        CFArrayGetValueAtIndex(v8, v9);
        v10 = CMBaseObjectGetDerivedStorage();
        if (*(v10 + 72))
        {
          break;
        }

        v11 = *(v10 + 352);
        if (!v11)
        {
          break;
        }

        FigAirPlayMediaSelectionSetProperty(v11, v1, v0);
        ++v7;
      }

      while (v7 < CFArrayGetCount(v6));
    }

    CFRelease(v6);
  }
}

void __playerairplay_handleSetProperty_block_invoke_8(uint64_t a1)
{
  if (!**(a1 + 40))
  {
    playerairplay_setPropertyOnAllAirPlayMediaSelections();
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v3 = v3 || v2 == 10;
    if (!v3)
    {
      playerairplay_updateAndApplySelectedMediaArrayOnMediaControl(*(a1 + 48));
      OUTLINED_FUNCTION_2_4();
      *(v4 + 24) = 0;
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {

    CFRelease(v6);
  }
}

void __playerairplay_handleSetProperty_block_invoke_9()
{
  OUTLINED_FUNCTION_56_9();
  if (!v1)
  {
    playerairplay_setPropertyOnAllAirPlayMediaSelections();
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v3 = v3 || v2 == 10;
    if (!v3)
    {
      playerairplay_updateAndApplySelectedMediaArrayOnMediaControl(*(v0 + 40));
    }
  }

  v4 = *(v0 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(v0 + 48);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __playerairplay_handleSetProperty_block_invoke_10()
{
  OUTLINED_FUNCTION_56_9();
  if (!v1)
  {
    playerairplay_setPropertyOnAllAirPlayMediaSelections();
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v3 = v3 || v2 == 10;
    if (!v3)
    {
      playerairplay_updateAndApplySelectedMediaArrayOnMediaControl(*(v0 + 40));
    }
  }

  v4 = *(v0 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(v0 + 48);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __playerairplay_handleSetProperty_block_invoke_14(uint64_t a1)
{
  playerairplay_setInterstitialEventSkippableStateOnAirPlayController();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t itemairplay_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_303();
    v18 = FigSignalErrorAtGM();
LABEL_17:
    v6 = 0;
    goto LABEL_11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
    v18 = 0;
    goto LABEL_17;
  }

  v5 = DerivedStorage;
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  v7 = CMBaseObjectGetDerivedStorage();
  if (!v7 || *v7)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
    v18 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_139_1();
    v8 = OUTLINED_FUNCTION_151_1();
    v14 = FPSupport_HandlePlaybackItemSetPropertyAndCopyModification(v8, v9, a3, 0, v10, v11, v12, v13);
    if (v14)
    {
LABEL_9:
      v18 = v14;
      goto LABEL_11;
    }

    v15 = *(v5 + 8);
    if (!v15)
    {
      OUTLINED_FUNCTION_303();
      v14 = FigSignalErrorAtGM();
      goto LABEL_9;
    }

    FigPlaybackItemGetFigBaseObject(v15);
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v16 = OUTLINED_FUNCTION_104_0();
      v14 = v17(v16);
      goto LABEL_9;
    }

    v18 = 4294954514;
  }

LABEL_11:
  if (v6)
  {
    CFRelease(v6);
  }

  return v18;
}

uint64_t itemairplay_assetPropertyLoaded(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_71_4(DerivedStorage);
  FigReadWriteLockLockForRead();
  if (!*(v5 + 72))
  {
    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
    v10 = CMBaseObjectGetDerivedStorage();
    if (v10 && a5 && (v11 = v10, !*v10) && (Value = CFDictionaryGetValue(a5, @"assetPayload_Property"), CFEqual(Value, @"assetProperty_AssetType")))
    {
      if (v9)
      {
        CFRetain(v9);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      OUTLINED_FUNCTION_0_52();
      OUTLINED_FUNCTION_1_44();
      v15[2] = &__itemairplay_assetPropertyLoaded_block_invoke;
      v15[3] = &__block_descriptor_64_e5_v8__0l;
      v15[4] = v11;
      v15[5] = v5;
      v15[6] = a2;
      v15[7] = v9;
      dispatch_async(v14, v15);
      playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v9);
      if (v9)
      {
        goto LABEL_7;
      }
    }

    else if (v9)
    {
LABEL_7:
      CFRelease(v9);
    }
  }

  return FigReadWriteLockUnlockForRead();
}

void itemairplay_assetPropertyFailedToLoad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t block, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, os_log_type_t type, int a25, __int128 a26, int a27, __int16 a28, __int16 a29, uint64_t a30, __int128 a31, __int128 a32, const void *a33, __int128 a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  OUTLINED_FUNCTION_173_2();
  a66 = v68;
  a67 = v69;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  a53 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_71_4(DerivedStorage);
  FigReadWriteLockLockForRead();
  if (*(v67 + 72))
  {
    goto LABEL_33;
  }

  v79 = FigCFWeakReferenceHolderCopyReferencedObject();
  v80 = CMBaseObjectGetDerivedStorage();
  if (v80)
  {
    if (v71)
    {
      v81 = v80;
      if (!*v80)
      {
        LODWORD(a37) = 0;
        if (FigCFDictionaryGetInt32IfPresent())
        {
          v82 = a37;
        }

        else
        {
          v82 = 0;
        }

        if (dword_1EAF172E8)
        {
          v91 = v75;
          a25 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
          OUTLINED_FUNCTION_28();
          if (v73)
          {
            if (v79)
            {
              v84 = (CMBaseObjectGetDerivedStorage() + 459);
            }

            else
            {
              v84 = "";
            }

            if (v77)
            {
              v85 = (CMBaseObjectGetDerivedStorage() + 820);
            }

            else
            {
              v85 = "";
            }

            LODWORD(a26) = 136317186;
            *(&a26 + 4) = "itemairplay_assetPropertyFailedToLoad";
            WORD6(a26) = 2048;
            *(&a26 + 14) = v79;
            a29 = 2048;
            a30 = v77;
            LOWORD(a31) = 2082;
            *(&a31 + 2) = v84;
            WORD5(a31) = 2082;
            *(&a31 + 12) = v85;
            WORD2(a32) = 2114;
            *(&a32 + 6) = v91;
            HIWORD(a32) = 2048;
            a33 = v77;
            LOWORD(a34) = 2048;
            *(&a34 + 2) = v73;
            WORD5(a34) = 2114;
            *(&a34 + 12) = v71;
            OUTLINED_FUNCTION_66();
            OUTLINED_FUNCTION_25();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417();
        }

        CFDictionaryGetValue(v71, @"assetPayload_Property");
        if (FigCFEqual())
        {
          if (*(v67 + 704) == 1)
          {
            if (v82)
            {
              ErrorPayload = iapc_createErrorPayload(v82, 0);
              v86 = ErrorPayload;
              v87 = *(v67 + 680);
              *(v67 + 680) = ErrorPayload;
              if (ErrorPayload)
              {
                CFRetain(ErrorPayload);
                v89 = 0;
                if (!v87)
                {
LABEL_26:
                  if (v89)
                  {
                    if (!v79)
                    {
                      goto LABEL_28;
                    }
                  }

                  else
                  {
                    CFRelease(v86);
                    if (!v79)
                    {
LABEL_28:
                      if (!v77)
                      {
LABEL_30:
                        v90 = *(v81 + 112);
                        block = MEMORY[0x1E69E9820];
                        a15 = 3221225472;
                        a16 = &__itemairplay_assetPropertyFailedToLoad_block_invoke;
                        a17 = &__block_descriptor_64_e5_v8__0l;
                        a18 = v81;
                        a19 = v67;
                        a20 = v79;
                        a21 = v77;
                        dispatch_async(v90, &block);
                        playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v79);
                        goto LABEL_31;
                      }

LABEL_29:
                      CFRetain(v77);
                      goto LABEL_30;
                    }
                  }

                  CFRetain(v79);
                  if (!v77)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_29;
                }

LABEL_25:
                CFRelease(v87);
                goto LABEL_26;
              }
            }

            else
            {
              v86 = 0;
              v87 = *(v67 + 680);
              *(v67 + 680) = 0;
            }

            v89 = 1;
            if (!v87)
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }
        }
      }
    }
  }

LABEL_31:
  if (v79)
  {
    CFRelease(v79);
  }

LABEL_33:
  FigReadWriteLockUnlockForRead();
  OUTLINED_FUNCTION_172_1();
}

uint64_t itemairplay_assetPropertyBatchLoaded()
{
  v1 = OUTLINED_FUNCTION_135_2();
  valuePtr = 0;
  FigReadWriteLockLockForRead();
  if (!*(v1 + 72))
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      if (v0)
      {
        if (!*DerivedStorage)
        {
          Value = CFDictionaryGetValue(v0, @"assetPayload_BatchID");
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
            if (valuePtr)
            {
              if (valuePtr != *(v1 + 672) || *(v1 + 728))
              {
                if (valuePtr != *(v1 + 664) || *(v1 + 709))
                {
                  if (valuePtr == *(v1 + 668) && *(v1 + 710))
                  {
                    *(v1 + 710) = 1;
                  }
                }

                else
                {
                  *(v1 + 709) = 1;
                }
              }

              else
              {
                OUTLINED_FUNCTION_152_2();
                itemairplay_postItemNotification();
                *(v1 + 728) = 1;
              }
            }

            playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v2);
          }
        }
      }
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  return FigReadWriteLockUnlockForRead();
}

void itemairplay_reflectSubItemNotification(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 72))
  {
    v9 = DerivedStorage;
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    v11 = CMBaseObjectGetDerivedStorage();
    if (!v11 || (v12 = v11, *v11))
    {
LABEL_26:
      if (v10)
      {
        CFRelease(v10);
      }

      return;
    }

    if (CFEqual(a3, @"ItemWasRemovedFromPlayQueue"))
    {
      if (!a5 || (v13 = *MEMORY[0x1E695E4D0], v13 != CFDictionaryGetValue(a5, @"AsRequested")))
      {
        v14 = 1;
        playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(*(v12 + 5), a2, 1, 0);
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (CFEqual(a3, @"ReadyForInspection"))
    {
      itemairplay_updateDateTimePivot(v9);
LABEL_10:
      v14 = 1;
      goto LABEL_11;
    }

    if (CFEqual(a3, @"ReadyForPlayback"))
    {
      v14 = 1;
      *(v9 + 705) = 1;
    }

    else
    {
      if (CFEqual(a3, @"HasMultipleEnabledAudioTracks"))
      {
        FigBytePumpGetFigBaseObject(*(v12 + 26));
        v17 = v16;
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v18)
        {
          v18(v17, 0x1F0B34DF8, *MEMORY[0x1E695E4D0]);
        }

        OUTLINED_FUNCTION_25_1();
        v21 = 3221225472;
        v22 = __itemairplay_reflectSubItemNotification_block_invoke;
        v23 = &__block_descriptor_64_e5_v8__0l;
        v24 = v10;
        v25 = a2;
        v26 = v9;
        v27 = v12;
        dispatch_sync(v19, block);
        goto LABEL_10;
      }

      if (CFEqual(a3, @"HasEnabledAudioChanged"))
      {
        if (FigCFDictionaryGetBooleanIfPresent())
        {
          *(v9 + 830) = 0;
        }

        playerairplay_updateRoutingRegistry(v10);
        goto LABEL_10;
      }

      if (CFEqual(a3, @"ItemBecameCurrent"))
      {
        if (*(v9 + 830))
        {
          playerairplay_setBAOConnectionActiveIfNeeded(v10);
        }

        goto LABEL_10;
      }

      if (CFEqual(a3, @"SeekDidComplete") || CFEqual(a3, @"SeekWasCanceled"))
      {
        if (!FigCFDictionaryGetInt32IfPresent())
        {
          goto LABEL_10;
        }

        v14 = 1;
      }

      else
      {
        if (!CFEqual(a3, @"TimebaseChanged"))
        {
          goto LABEL_10;
        }

        v14 = *(v9 + 152) == 0;
      }
    }

LABEL_11:
    if ((!v12[50] && ((v15 = *(CMBaseObjectGetDerivedStorage() + 216)) == 0 || v15 == 10) || !CFEqual(a3, @"ItemWasRemovedFromPlayQueue") && !CFEqual(a3, @"ItemStoppedBeingCurrent") && !CFEqual(a3, @"FailedToPlayToEnd") && !CFEqual(a3, @"FailedToBecomeReadyForPlayback") && !CFEqual(a3, @"TracksChanged") && !CFEqual(a3, @"ReachedTimeToPauseBuffering") && !CFEqual(a3, @"ReachedTimeToPausePlayback") && !CFEqual(a3, @"SnappedTimeToPausePlayback") && !CFEqual(a3, @"AlmostReachedTimeToPausePlayback")) && v14)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    goto LABEL_26;
  }
}

uint64_t playerairplay_copyPredictedFormatDescriptionForBAO()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  mach_absolute_time();
  if (*(DerivedStorage + 296))
  {
    playerairplay_copyPlayQueueAirPlayItemFromSubPlayer();
  }

  return 0;
}

void __itemairplay_handleSetProperty_block_invoke()
{
  OUTLINED_FUNCTION_70_6();
  FigReadWriteLockLockForRead();
  OUTLINED_FUNCTION_121_1();
  if (!v2 && !**(v0 + 40))
  {
    v3 = *(v1 + 352);
    if (v3)
    {
      FigAirPlayMediaSelectionSetProperty(v3, @"ClientSelectedMediaArray", *(v0 + 48));
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_44_13();
      v5 = v5 || v4 == 10;
      if (!v5)
      {
        playerairplay_updateAndApplySelectedMediaArrayOnMediaControl(*(v0 + 56));
      }
    }
  }

  OUTLINED_FUNCTION_137_1();
  v6 = *(v0 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(v0 + 64);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(v0 + 48);
  if (v8)
  {

    CFRelease(v8);
  }
}

void __itemairplay_handleSetProperty_block_invoke_2()
{
  OUTLINED_FUNCTION_70_6();
  FigReadWriteLockLockForRead();
  if (!**(v0 + 40))
  {
    OUTLINED_FUNCTION_121_1();
    if (!v2)
    {
      v3 = *(v1 + 352);
      if (v3)
      {
        FigAirPlayMediaSelectionSetProperty(v3, @"MediaPresentationLanguages", *(v0 + 48));
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_44_13();
        v5 = v5 || v4 == 10;
        if (!v5)
        {
          playerairplay_updateAndApplySelectedMediaArrayOnMediaControl(*(v0 + 56));
        }
      }
    }
  }

  OUTLINED_FUNCTION_137_1();
  v6 = *(v0 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(v0 + 64);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(v0 + 48);
  if (v8)
  {

    CFRelease(v8);
  }
}